; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!290788 () Bool)

(assert start!290788)

(declare-fun b!3030663 () Bool)

(declare-fun e!1900778 () Bool)

(declare-fun tp!960607 () Bool)

(declare-fun tp!960608 () Bool)

(assert (=> b!3030663 (= e!1900778 (and tp!960607 tp!960608))))

(declare-fun b!3030664 () Bool)

(declare-fun e!1900783 () Bool)

(declare-fun e!1900782 () Bool)

(assert (=> b!3030664 (= e!1900783 e!1900782)))

(declare-fun res!1247024 () Bool)

(assert (=> b!3030664 (=> res!1247024 e!1900782)))

(declare-fun lt!1045953 () Bool)

(assert (=> b!3030664 (= res!1247024 (not lt!1045953))))

(declare-fun e!1900781 () Bool)

(assert (=> b!3030664 e!1900781))

(declare-fun res!1247019 () Bool)

(assert (=> b!3030664 (=> res!1247019 e!1900781)))

(assert (=> b!3030664 (= res!1247019 lt!1045953)))

(declare-datatypes ((C!19040 0))(
  ( (C!19041 (val!11556 Int)) )
))
(declare-datatypes ((Regex!9427 0))(
  ( (ElementMatch!9427 (c!500683 C!19040)) (Concat!14748 (regOne!19366 Regex!9427) (regTwo!19366 Regex!9427)) (EmptyExpr!9427) (Star!9427 (reg!9756 Regex!9427)) (EmptyLang!9427) (Union!9427 (regOne!19367 Regex!9427) (regTwo!19367 Regex!9427)) )
))
(declare-fun r!17423 () Regex!9427)

(declare-datatypes ((List!35292 0))(
  ( (Nil!35168) (Cons!35168 (h!40588 C!19040) (t!234357 List!35292)) )
))
(declare-fun s!11993 () List!35292)

(declare-fun matchR!4309 (Regex!9427 List!35292) Bool)

(assert (=> b!3030664 (= lt!1045953 (matchR!4309 (regOne!19367 r!17423) s!11993))))

(declare-datatypes ((Unit!49277 0))(
  ( (Unit!49278) )
))
(declare-fun lt!1045951 () Unit!49277)

(declare-fun lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!304 (Regex!9427 Regex!9427 List!35292) Unit!49277)

(assert (=> b!3030664 (= lt!1045951 (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!304 (regOne!19367 r!17423) (regTwo!19367 r!17423) s!11993))))

(declare-fun b!3030665 () Bool)

(declare-fun e!1900777 () Bool)

(declare-fun tp_is_empty!16417 () Bool)

(declare-fun tp!960604 () Bool)

(assert (=> b!3030665 (= e!1900777 (and tp_is_empty!16417 tp!960604))))

(declare-fun b!3030667 () Bool)

(declare-fun tp!960609 () Bool)

(assert (=> b!3030667 (= e!1900778 tp!960609)))

(declare-fun b!3030668 () Bool)

(declare-fun e!1900780 () Bool)

(assert (=> b!3030668 (= e!1900780 (not e!1900783))))

(declare-fun res!1247022 () Bool)

(assert (=> b!3030668 (=> res!1247022 e!1900783)))

(declare-fun lt!1045955 () Bool)

(get-info :version)

(assert (=> b!3030668 (= res!1247022 (or (not lt!1045955) ((_ is Concat!14748) r!17423) (not ((_ is Union!9427) r!17423))))))

(declare-fun matchRSpec!1564 (Regex!9427 List!35292) Bool)

(assert (=> b!3030668 (= lt!1045955 (matchRSpec!1564 r!17423 s!11993))))

(assert (=> b!3030668 (= lt!1045955 (matchR!4309 r!17423 s!11993))))

(declare-fun lt!1045958 () Unit!49277)

(declare-fun mainMatchTheorem!1564 (Regex!9427 List!35292) Unit!49277)

(assert (=> b!3030668 (= lt!1045958 (mainMatchTheorem!1564 r!17423 s!11993))))

(declare-fun b!3030669 () Bool)

(assert (=> b!3030669 (= e!1900781 (matchR!4309 (regTwo!19367 r!17423) s!11993))))

(declare-fun b!3030670 () Bool)

(assert (=> b!3030670 (= e!1900778 tp_is_empty!16417)))

(declare-fun b!3030671 () Bool)

(declare-fun res!1247023 () Bool)

(declare-fun e!1900779 () Bool)

(assert (=> b!3030671 (=> res!1247023 e!1900779)))

(declare-fun lt!1045954 () Regex!9427)

(declare-fun validRegex!4160 (Regex!9427) Bool)

(assert (=> b!3030671 (= res!1247023 (not (validRegex!4160 lt!1045954)))))

(declare-fun b!3030666 () Bool)

(assert (=> b!3030666 (= e!1900782 e!1900779)))

(declare-fun res!1247021 () Bool)

(assert (=> b!3030666 (=> res!1247021 e!1900779)))

(declare-fun lt!1045957 () Regex!9427)

(assert (=> b!3030666 (= res!1247021 (not (validRegex!4160 lt!1045957)))))

(declare-fun simplify!398 (Regex!9427) Regex!9427)

(assert (=> b!3030666 (= lt!1045954 (simplify!398 (regTwo!19367 r!17423)))))

(assert (=> b!3030666 (matchR!4309 lt!1045957 s!11993)))

(assert (=> b!3030666 (= lt!1045957 (simplify!398 (regOne!19367 r!17423)))))

(declare-fun lt!1045952 () Unit!49277)

(declare-fun lemmaSimplifySound!246 (Regex!9427 List!35292) Unit!49277)

(assert (=> b!3030666 (= lt!1045952 (lemmaSimplifySound!246 (regOne!19367 r!17423) s!11993))))

(declare-fun res!1247020 () Bool)

(assert (=> start!290788 (=> (not res!1247020) (not e!1900780))))

(assert (=> start!290788 (= res!1247020 (validRegex!4160 r!17423))))

(assert (=> start!290788 e!1900780))

(assert (=> start!290788 e!1900778))

(assert (=> start!290788 e!1900777))

(declare-fun b!3030672 () Bool)

(declare-fun tp!960606 () Bool)

(declare-fun tp!960605 () Bool)

(assert (=> b!3030672 (= e!1900778 (and tp!960606 tp!960605))))

(declare-fun b!3030673 () Bool)

(assert (=> b!3030673 (= e!1900779 (matchR!4309 (simplify!398 r!17423) s!11993))))

(assert (=> b!3030673 (matchR!4309 (Union!9427 lt!1045957 lt!1045954) s!11993)))

(declare-fun lt!1045956 () Unit!49277)

(declare-fun lemmaRegexAcceptsStringThenUnionWithAnotherAcceptsToo!74 (Regex!9427 Regex!9427 List!35292) Unit!49277)

(assert (=> b!3030673 (= lt!1045956 (lemmaRegexAcceptsStringThenUnionWithAnotherAcceptsToo!74 lt!1045957 lt!1045954 s!11993))))

(assert (= (and start!290788 res!1247020) b!3030668))

(assert (= (and b!3030668 (not res!1247022)) b!3030664))

(assert (= (and b!3030664 (not res!1247019)) b!3030669))

(assert (= (and b!3030664 (not res!1247024)) b!3030666))

(assert (= (and b!3030666 (not res!1247021)) b!3030671))

(assert (= (and b!3030671 (not res!1247023)) b!3030673))

(assert (= (and start!290788 ((_ is ElementMatch!9427) r!17423)) b!3030670))

(assert (= (and start!290788 ((_ is Concat!14748) r!17423)) b!3030663))

(assert (= (and start!290788 ((_ is Star!9427) r!17423)) b!3030667))

(assert (= (and start!290788 ((_ is Union!9427) r!17423)) b!3030672))

(assert (= (and start!290788 ((_ is Cons!35168) s!11993)) b!3030665))

(declare-fun m!3367663 () Bool)

(assert (=> b!3030673 m!3367663))

(assert (=> b!3030673 m!3367663))

(declare-fun m!3367665 () Bool)

(assert (=> b!3030673 m!3367665))

(declare-fun m!3367667 () Bool)

(assert (=> b!3030673 m!3367667))

(declare-fun m!3367669 () Bool)

(assert (=> b!3030673 m!3367669))

(declare-fun m!3367671 () Bool)

(assert (=> b!3030666 m!3367671))

(declare-fun m!3367673 () Bool)

(assert (=> b!3030666 m!3367673))

(declare-fun m!3367675 () Bool)

(assert (=> b!3030666 m!3367675))

(declare-fun m!3367677 () Bool)

(assert (=> b!3030666 m!3367677))

(declare-fun m!3367679 () Bool)

(assert (=> b!3030666 m!3367679))

(declare-fun m!3367681 () Bool)

(assert (=> b!3030668 m!3367681))

(declare-fun m!3367683 () Bool)

(assert (=> b!3030668 m!3367683))

(declare-fun m!3367685 () Bool)

(assert (=> b!3030668 m!3367685))

(declare-fun m!3367687 () Bool)

(assert (=> b!3030664 m!3367687))

(declare-fun m!3367689 () Bool)

(assert (=> b!3030664 m!3367689))

(declare-fun m!3367691 () Bool)

(assert (=> b!3030669 m!3367691))

(declare-fun m!3367693 () Bool)

(assert (=> start!290788 m!3367693))

(declare-fun m!3367695 () Bool)

(assert (=> b!3030671 m!3367695))

(check-sat (not start!290788) (not b!3030672) (not b!3030663) (not b!3030664) (not b!3030669) (not b!3030667) (not b!3030668) (not b!3030666) tp_is_empty!16417 (not b!3030671) (not b!3030673) (not b!3030665))
(check-sat)
(get-model)

(declare-fun b!3030730 () Bool)

(declare-fun e!1900812 () Bool)

(declare-fun e!1900817 () Bool)

(assert (=> b!3030730 (= e!1900812 e!1900817)))

(declare-fun res!1247062 () Bool)

(assert (=> b!3030730 (=> res!1247062 e!1900817)))

(declare-fun call!206375 () Bool)

(assert (=> b!3030730 (= res!1247062 call!206375)))

(declare-fun b!3030731 () Bool)

(declare-fun head!6733 (List!35292) C!19040)

(assert (=> b!3030731 (= e!1900817 (not (= (head!6733 s!11993) (c!500683 (regOne!19367 r!17423)))))))

(declare-fun b!3030732 () Bool)

(declare-fun res!1247064 () Bool)

(assert (=> b!3030732 (=> res!1247064 e!1900817)))

(declare-fun isEmpty!19468 (List!35292) Bool)

(declare-fun tail!4959 (List!35292) List!35292)

(assert (=> b!3030732 (= res!1247064 (not (isEmpty!19468 (tail!4959 s!11993))))))

(declare-fun b!3030733 () Bool)

(declare-fun res!1247061 () Bool)

(declare-fun e!1900813 () Bool)

(assert (=> b!3030733 (=> (not res!1247061) (not e!1900813))))

(assert (=> b!3030733 (= res!1247061 (not call!206375))))

(declare-fun b!3030734 () Bool)

(declare-fun res!1247059 () Bool)

(assert (=> b!3030734 (=> (not res!1247059) (not e!1900813))))

(assert (=> b!3030734 (= res!1247059 (isEmpty!19468 (tail!4959 s!11993)))))

(declare-fun b!3030735 () Bool)

(declare-fun e!1900816 () Bool)

(declare-fun lt!1045963 () Bool)

(assert (=> b!3030735 (= e!1900816 (= lt!1045963 call!206375))))

(declare-fun b!3030736 () Bool)

(declare-fun res!1247060 () Bool)

(declare-fun e!1900815 () Bool)

(assert (=> b!3030736 (=> res!1247060 e!1900815)))

(assert (=> b!3030736 (= res!1247060 e!1900813)))

(declare-fun res!1247057 () Bool)

(assert (=> b!3030736 (=> (not res!1247057) (not e!1900813))))

(assert (=> b!3030736 (= res!1247057 lt!1045963)))

(declare-fun b!3030737 () Bool)

(declare-fun e!1900814 () Bool)

(assert (=> b!3030737 (= e!1900814 (not lt!1045963))))

(declare-fun b!3030738 () Bool)

(declare-fun e!1900818 () Bool)

(declare-fun derivativeStep!2674 (Regex!9427 C!19040) Regex!9427)

(assert (=> b!3030738 (= e!1900818 (matchR!4309 (derivativeStep!2674 (regOne!19367 r!17423) (head!6733 s!11993)) (tail!4959 s!11993)))))

(declare-fun b!3030739 () Bool)

(declare-fun res!1247063 () Bool)

(assert (=> b!3030739 (=> res!1247063 e!1900815)))

(assert (=> b!3030739 (= res!1247063 (not ((_ is ElementMatch!9427) (regOne!19367 r!17423))))))

(assert (=> b!3030739 (= e!1900814 e!1900815)))

(declare-fun bm!206370 () Bool)

(assert (=> bm!206370 (= call!206375 (isEmpty!19468 s!11993))))

(declare-fun d!851053 () Bool)

(assert (=> d!851053 e!1900816))

(declare-fun c!500696 () Bool)

(assert (=> d!851053 (= c!500696 ((_ is EmptyExpr!9427) (regOne!19367 r!17423)))))

(assert (=> d!851053 (= lt!1045963 e!1900818)))

(declare-fun c!500698 () Bool)

(assert (=> d!851053 (= c!500698 (isEmpty!19468 s!11993))))

(assert (=> d!851053 (validRegex!4160 (regOne!19367 r!17423))))

(assert (=> d!851053 (= (matchR!4309 (regOne!19367 r!17423) s!11993) lt!1045963)))

(declare-fun b!3030740 () Bool)

(declare-fun nullable!3077 (Regex!9427) Bool)

(assert (=> b!3030740 (= e!1900818 (nullable!3077 (regOne!19367 r!17423)))))

(declare-fun b!3030741 () Bool)

(assert (=> b!3030741 (= e!1900813 (= (head!6733 s!11993) (c!500683 (regOne!19367 r!17423))))))

(declare-fun b!3030742 () Bool)

(assert (=> b!3030742 (= e!1900815 e!1900812)))

(declare-fun res!1247058 () Bool)

(assert (=> b!3030742 (=> (not res!1247058) (not e!1900812))))

(assert (=> b!3030742 (= res!1247058 (not lt!1045963))))

(declare-fun b!3030743 () Bool)

(assert (=> b!3030743 (= e!1900816 e!1900814)))

(declare-fun c!500697 () Bool)

(assert (=> b!3030743 (= c!500697 ((_ is EmptyLang!9427) (regOne!19367 r!17423)))))

(assert (= (and d!851053 c!500698) b!3030740))

(assert (= (and d!851053 (not c!500698)) b!3030738))

(assert (= (and d!851053 c!500696) b!3030735))

(assert (= (and d!851053 (not c!500696)) b!3030743))

(assert (= (and b!3030743 c!500697) b!3030737))

(assert (= (and b!3030743 (not c!500697)) b!3030739))

(assert (= (and b!3030739 (not res!1247063)) b!3030736))

(assert (= (and b!3030736 res!1247057) b!3030733))

(assert (= (and b!3030733 res!1247061) b!3030734))

(assert (= (and b!3030734 res!1247059) b!3030741))

(assert (= (and b!3030736 (not res!1247060)) b!3030742))

(assert (= (and b!3030742 res!1247058) b!3030730))

(assert (= (and b!3030730 (not res!1247062)) b!3030732))

(assert (= (and b!3030732 (not res!1247064)) b!3030731))

(assert (= (or b!3030735 b!3030730 b!3030733) bm!206370))

(declare-fun m!3367697 () Bool)

(assert (=> b!3030738 m!3367697))

(assert (=> b!3030738 m!3367697))

(declare-fun m!3367699 () Bool)

(assert (=> b!3030738 m!3367699))

(declare-fun m!3367701 () Bool)

(assert (=> b!3030738 m!3367701))

(assert (=> b!3030738 m!3367699))

(assert (=> b!3030738 m!3367701))

(declare-fun m!3367703 () Bool)

(assert (=> b!3030738 m!3367703))

(assert (=> b!3030732 m!3367701))

(assert (=> b!3030732 m!3367701))

(declare-fun m!3367705 () Bool)

(assert (=> b!3030732 m!3367705))

(declare-fun m!3367707 () Bool)

(assert (=> d!851053 m!3367707))

(declare-fun m!3367709 () Bool)

(assert (=> d!851053 m!3367709))

(assert (=> bm!206370 m!3367707))

(assert (=> b!3030734 m!3367701))

(assert (=> b!3030734 m!3367701))

(assert (=> b!3030734 m!3367705))

(assert (=> b!3030731 m!3367697))

(assert (=> b!3030741 m!3367697))

(declare-fun m!3367711 () Bool)

(assert (=> b!3030740 m!3367711))

(assert (=> b!3030664 d!851053))

(declare-fun d!851057 () Bool)

(declare-fun e!1900831 () Bool)

(assert (=> d!851057 e!1900831))

(declare-fun res!1247078 () Bool)

(assert (=> d!851057 (=> res!1247078 e!1900831)))

(assert (=> d!851057 (= res!1247078 (matchR!4309 (regOne!19367 r!17423) s!11993))))

(declare-fun lt!1045967 () Unit!49277)

(declare-fun choose!17972 (Regex!9427 Regex!9427 List!35292) Unit!49277)

(assert (=> d!851057 (= lt!1045967 (choose!17972 (regOne!19367 r!17423) (regTwo!19367 r!17423) s!11993))))

(declare-fun e!1900830 () Bool)

(assert (=> d!851057 e!1900830))

(declare-fun res!1247077 () Bool)

(assert (=> d!851057 (=> (not res!1247077) (not e!1900830))))

(assert (=> d!851057 (= res!1247077 (validRegex!4160 (regOne!19367 r!17423)))))

(assert (=> d!851057 (= (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!304 (regOne!19367 r!17423) (regTwo!19367 r!17423) s!11993) lt!1045967)))

(declare-fun b!3030762 () Bool)

(assert (=> b!3030762 (= e!1900830 (validRegex!4160 (regTwo!19367 r!17423)))))

(declare-fun b!3030763 () Bool)

(assert (=> b!3030763 (= e!1900831 (matchR!4309 (regTwo!19367 r!17423) s!11993))))

(assert (= (and d!851057 res!1247077) b!3030762))

(assert (= (and d!851057 (not res!1247078)) b!3030763))

(assert (=> d!851057 m!3367687))

(declare-fun m!3367727 () Bool)

(assert (=> d!851057 m!3367727))

(assert (=> d!851057 m!3367709))

(declare-fun m!3367729 () Bool)

(assert (=> b!3030762 m!3367729))

(assert (=> b!3030763 m!3367691))

(assert (=> b!3030664 d!851057))

(declare-fun b!3030809 () Bool)

(declare-fun e!1900869 () Bool)

(declare-fun call!206394 () Bool)

(assert (=> b!3030809 (= e!1900869 call!206394)))

(declare-fun b!3030810 () Bool)

(declare-fun res!1247104 () Bool)

(declare-fun e!1900870 () Bool)

(assert (=> b!3030810 (=> res!1247104 e!1900870)))

(assert (=> b!3030810 (= res!1247104 (not ((_ is Concat!14748) r!17423)))))

(declare-fun e!1900868 () Bool)

(assert (=> b!3030810 (= e!1900868 e!1900870)))

(declare-fun b!3030811 () Bool)

(declare-fun e!1900873 () Bool)

(assert (=> b!3030811 (= e!1900873 e!1900868)))

(declare-fun c!500712 () Bool)

(assert (=> b!3030811 (= c!500712 ((_ is Union!9427) r!17423))))

(declare-fun b!3030812 () Bool)

(declare-fun e!1900867 () Bool)

(assert (=> b!3030812 (= e!1900867 e!1900873)))

(declare-fun c!500713 () Bool)

(assert (=> b!3030812 (= c!500713 ((_ is Star!9427) r!17423))))

(declare-fun b!3030813 () Bool)

(declare-fun res!1247106 () Bool)

(assert (=> b!3030813 (=> (not res!1247106) (not e!1900869))))

(declare-fun call!206393 () Bool)

(assert (=> b!3030813 (= res!1247106 call!206393)))

(assert (=> b!3030813 (= e!1900868 e!1900869)))

(declare-fun b!3030814 () Bool)

(declare-fun e!1900871 () Bool)

(declare-fun call!206392 () Bool)

(assert (=> b!3030814 (= e!1900871 call!206392)))

(declare-fun b!3030815 () Bool)

(assert (=> b!3030815 (= e!1900873 e!1900871)))

(declare-fun res!1247105 () Bool)

(assert (=> b!3030815 (= res!1247105 (not (nullable!3077 (reg!9756 r!17423))))))

(assert (=> b!3030815 (=> (not res!1247105) (not e!1900871))))

(declare-fun bm!206388 () Bool)

(assert (=> bm!206388 (= call!206393 call!206392)))

(declare-fun bm!206389 () Bool)

(assert (=> bm!206389 (= call!206394 (validRegex!4160 (ite c!500712 (regTwo!19367 r!17423) (regOne!19366 r!17423))))))

(declare-fun b!3030816 () Bool)

(declare-fun e!1900872 () Bool)

(assert (=> b!3030816 (= e!1900872 call!206393)))

(declare-fun b!3030817 () Bool)

(assert (=> b!3030817 (= e!1900870 e!1900872)))

(declare-fun res!1247108 () Bool)

(assert (=> b!3030817 (=> (not res!1247108) (not e!1900872))))

(assert (=> b!3030817 (= res!1247108 call!206394)))

(declare-fun bm!206387 () Bool)

(assert (=> bm!206387 (= call!206392 (validRegex!4160 (ite c!500713 (reg!9756 r!17423) (ite c!500712 (regOne!19367 r!17423) (regTwo!19366 r!17423)))))))

(declare-fun d!851061 () Bool)

(declare-fun res!1247107 () Bool)

(assert (=> d!851061 (=> res!1247107 e!1900867)))

(assert (=> d!851061 (= res!1247107 ((_ is ElementMatch!9427) r!17423))))

(assert (=> d!851061 (= (validRegex!4160 r!17423) e!1900867)))

(assert (= (and d!851061 (not res!1247107)) b!3030812))

(assert (= (and b!3030812 c!500713) b!3030815))

(assert (= (and b!3030812 (not c!500713)) b!3030811))

(assert (= (and b!3030815 res!1247105) b!3030814))

(assert (= (and b!3030811 c!500712) b!3030813))

(assert (= (and b!3030811 (not c!500712)) b!3030810))

(assert (= (and b!3030813 res!1247106) b!3030809))

(assert (= (and b!3030810 (not res!1247104)) b!3030817))

(assert (= (and b!3030817 res!1247108) b!3030816))

(assert (= (or b!3030813 b!3030816) bm!206388))

(assert (= (or b!3030809 b!3030817) bm!206389))

(assert (= (or b!3030814 bm!206388) bm!206387))

(declare-fun m!3367737 () Bool)

(assert (=> b!3030815 m!3367737))

(declare-fun m!3367739 () Bool)

(assert (=> bm!206389 m!3367739))

(declare-fun m!3367741 () Bool)

(assert (=> bm!206387 m!3367741))

(assert (=> start!290788 d!851061))

(declare-fun b!3030818 () Bool)

(declare-fun e!1900874 () Bool)

(declare-fun e!1900879 () Bool)

(assert (=> b!3030818 (= e!1900874 e!1900879)))

(declare-fun res!1247114 () Bool)

(assert (=> b!3030818 (=> res!1247114 e!1900879)))

(declare-fun call!206395 () Bool)

(assert (=> b!3030818 (= res!1247114 call!206395)))

(declare-fun b!3030819 () Bool)

(assert (=> b!3030819 (= e!1900879 (not (= (head!6733 s!11993) (c!500683 (regTwo!19367 r!17423)))))))

(declare-fun b!3030820 () Bool)

(declare-fun res!1247116 () Bool)

(assert (=> b!3030820 (=> res!1247116 e!1900879)))

(assert (=> b!3030820 (= res!1247116 (not (isEmpty!19468 (tail!4959 s!11993))))))

(declare-fun b!3030821 () Bool)

(declare-fun res!1247113 () Bool)

(declare-fun e!1900875 () Bool)

(assert (=> b!3030821 (=> (not res!1247113) (not e!1900875))))

(assert (=> b!3030821 (= res!1247113 (not call!206395))))

(declare-fun b!3030822 () Bool)

(declare-fun res!1247111 () Bool)

(assert (=> b!3030822 (=> (not res!1247111) (not e!1900875))))

(assert (=> b!3030822 (= res!1247111 (isEmpty!19468 (tail!4959 s!11993)))))

(declare-fun b!3030823 () Bool)

(declare-fun e!1900878 () Bool)

(declare-fun lt!1045968 () Bool)

(assert (=> b!3030823 (= e!1900878 (= lt!1045968 call!206395))))

(declare-fun b!3030824 () Bool)

(declare-fun res!1247112 () Bool)

(declare-fun e!1900877 () Bool)

(assert (=> b!3030824 (=> res!1247112 e!1900877)))

(assert (=> b!3030824 (= res!1247112 e!1900875)))

(declare-fun res!1247109 () Bool)

(assert (=> b!3030824 (=> (not res!1247109) (not e!1900875))))

(assert (=> b!3030824 (= res!1247109 lt!1045968)))

(declare-fun b!3030825 () Bool)

(declare-fun e!1900876 () Bool)

(assert (=> b!3030825 (= e!1900876 (not lt!1045968))))

(declare-fun b!3030826 () Bool)

(declare-fun e!1900880 () Bool)

(assert (=> b!3030826 (= e!1900880 (matchR!4309 (derivativeStep!2674 (regTwo!19367 r!17423) (head!6733 s!11993)) (tail!4959 s!11993)))))

(declare-fun b!3030827 () Bool)

(declare-fun res!1247115 () Bool)

(assert (=> b!3030827 (=> res!1247115 e!1900877)))

(assert (=> b!3030827 (= res!1247115 (not ((_ is ElementMatch!9427) (regTwo!19367 r!17423))))))

(assert (=> b!3030827 (= e!1900876 e!1900877)))

(declare-fun bm!206390 () Bool)

(assert (=> bm!206390 (= call!206395 (isEmpty!19468 s!11993))))

(declare-fun d!851065 () Bool)

(assert (=> d!851065 e!1900878))

(declare-fun c!500714 () Bool)

(assert (=> d!851065 (= c!500714 ((_ is EmptyExpr!9427) (regTwo!19367 r!17423)))))

(assert (=> d!851065 (= lt!1045968 e!1900880)))

(declare-fun c!500716 () Bool)

(assert (=> d!851065 (= c!500716 (isEmpty!19468 s!11993))))

(assert (=> d!851065 (validRegex!4160 (regTwo!19367 r!17423))))

(assert (=> d!851065 (= (matchR!4309 (regTwo!19367 r!17423) s!11993) lt!1045968)))

(declare-fun b!3030828 () Bool)

(assert (=> b!3030828 (= e!1900880 (nullable!3077 (regTwo!19367 r!17423)))))

(declare-fun b!3030829 () Bool)

(assert (=> b!3030829 (= e!1900875 (= (head!6733 s!11993) (c!500683 (regTwo!19367 r!17423))))))

(declare-fun b!3030830 () Bool)

(assert (=> b!3030830 (= e!1900877 e!1900874)))

(declare-fun res!1247110 () Bool)

(assert (=> b!3030830 (=> (not res!1247110) (not e!1900874))))

(assert (=> b!3030830 (= res!1247110 (not lt!1045968))))

(declare-fun b!3030831 () Bool)

(assert (=> b!3030831 (= e!1900878 e!1900876)))

(declare-fun c!500715 () Bool)

(assert (=> b!3030831 (= c!500715 ((_ is EmptyLang!9427) (regTwo!19367 r!17423)))))

(assert (= (and d!851065 c!500716) b!3030828))

(assert (= (and d!851065 (not c!500716)) b!3030826))

(assert (= (and d!851065 c!500714) b!3030823))

(assert (= (and d!851065 (not c!500714)) b!3030831))

(assert (= (and b!3030831 c!500715) b!3030825))

(assert (= (and b!3030831 (not c!500715)) b!3030827))

(assert (= (and b!3030827 (not res!1247115)) b!3030824))

(assert (= (and b!3030824 res!1247109) b!3030821))

(assert (= (and b!3030821 res!1247113) b!3030822))

(assert (= (and b!3030822 res!1247111) b!3030829))

(assert (= (and b!3030824 (not res!1247112)) b!3030830))

(assert (= (and b!3030830 res!1247110) b!3030818))

(assert (= (and b!3030818 (not res!1247114)) b!3030820))

(assert (= (and b!3030820 (not res!1247116)) b!3030819))

(assert (= (or b!3030823 b!3030818 b!3030821) bm!206390))

(assert (=> b!3030826 m!3367697))

(assert (=> b!3030826 m!3367697))

(declare-fun m!3367743 () Bool)

(assert (=> b!3030826 m!3367743))

(assert (=> b!3030826 m!3367701))

(assert (=> b!3030826 m!3367743))

(assert (=> b!3030826 m!3367701))

(declare-fun m!3367745 () Bool)

(assert (=> b!3030826 m!3367745))

(assert (=> b!3030820 m!3367701))

(assert (=> b!3030820 m!3367701))

(assert (=> b!3030820 m!3367705))

(assert (=> d!851065 m!3367707))

(assert (=> d!851065 m!3367729))

(assert (=> bm!206390 m!3367707))

(assert (=> b!3030822 m!3367701))

(assert (=> b!3030822 m!3367701))

(assert (=> b!3030822 m!3367705))

(assert (=> b!3030819 m!3367697))

(assert (=> b!3030829 m!3367697))

(declare-fun m!3367747 () Bool)

(assert (=> b!3030828 m!3367747))

(assert (=> b!3030669 d!851065))

(declare-fun bm!206434 () Bool)

(declare-fun lt!1046014 () Regex!9427)

(declare-fun c!500787 () Bool)

(declare-fun lt!1046013 () Regex!9427)

(declare-fun call!206443 () Bool)

(declare-fun isEmptyExpr!502 (Regex!9427) Bool)

(assert (=> bm!206434 (= call!206443 (isEmptyExpr!502 (ite c!500787 lt!1046014 lt!1046013)))))

(declare-fun b!3030996 () Bool)

(declare-fun c!500786 () Bool)

(assert (=> b!3030996 (= c!500786 ((_ is EmptyExpr!9427) (regOne!19367 r!17423)))))

(declare-fun e!1900974 () Regex!9427)

(declare-fun e!1900983 () Regex!9427)

(assert (=> b!3030996 (= e!1900974 e!1900983)))

(declare-fun b!3030997 () Bool)

(declare-fun e!1900976 () Regex!9427)

(assert (=> b!3030997 (= e!1900976 e!1900974)))

(declare-fun c!500793 () Bool)

(assert (=> b!3030997 (= c!500793 ((_ is ElementMatch!9427) (regOne!19367 r!17423)))))

(declare-fun b!3030998 () Bool)

(assert (=> b!3030998 (= e!1900976 EmptyLang!9427)))

(declare-fun b!3030999 () Bool)

(declare-fun e!1900972 () Regex!9427)

(declare-fun e!1900979 () Regex!9427)

(assert (=> b!3030999 (= e!1900972 e!1900979)))

(declare-fun lt!1046009 () Regex!9427)

(declare-fun call!206440 () Regex!9427)

(assert (=> b!3030999 (= lt!1046009 call!206440)))

(declare-fun lt!1046010 () Regex!9427)

(declare-fun call!206445 () Regex!9427)

(assert (=> b!3030999 (= lt!1046010 call!206445)))

(declare-fun c!500791 () Bool)

(declare-fun call!206441 () Bool)

(assert (=> b!3030999 (= c!500791 call!206441)))

(declare-fun b!3031000 () Bool)

(declare-fun e!1900973 () Regex!9427)

(assert (=> b!3031000 (= e!1900973 lt!1046009)))

(declare-fun b!3031001 () Bool)

(declare-fun c!500789 () Bool)

(declare-fun e!1900977 () Bool)

(assert (=> b!3031001 (= c!500789 e!1900977)))

(declare-fun res!1247144 () Bool)

(assert (=> b!3031001 (=> res!1247144 e!1900977)))

(declare-fun call!206444 () Bool)

(assert (=> b!3031001 (= res!1247144 call!206444)))

(declare-fun call!206439 () Regex!9427)

(assert (=> b!3031001 (= lt!1046014 call!206439)))

(declare-fun e!1900978 () Regex!9427)

(declare-fun e!1900981 () Regex!9427)

(assert (=> b!3031001 (= e!1900978 e!1900981)))

(declare-fun b!3031002 () Bool)

(declare-fun e!1900975 () Regex!9427)

(assert (=> b!3031002 (= e!1900975 EmptyLang!9427)))

(declare-fun b!3031003 () Bool)

(declare-fun e!1900980 () Bool)

(assert (=> b!3031003 (= e!1900980 call!206441)))

(declare-fun b!3031004 () Bool)

(declare-fun e!1900985 () Bool)

(declare-fun lt!1046011 () Regex!9427)

(assert (=> b!3031004 (= e!1900985 (= (nullable!3077 lt!1046011) (nullable!3077 (regOne!19367 r!17423))))))

(declare-fun b!3031005 () Bool)

(assert (=> b!3031005 (= e!1900981 (Star!9427 lt!1046014))))

(declare-fun b!3031006 () Bool)

(assert (=> b!3031006 (= e!1900983 EmptyExpr!9427)))

(declare-fun b!3031007 () Bool)

(declare-fun e!1900984 () Regex!9427)

(declare-fun lt!1046012 () Regex!9427)

(assert (=> b!3031007 (= e!1900984 lt!1046012)))

(declare-fun bm!206436 () Bool)

(declare-fun c!500794 () Bool)

(declare-fun isEmptyLang!496 (Regex!9427) Bool)

(assert (=> bm!206436 (= call!206441 (isEmptyLang!496 (ite c!500794 lt!1046009 lt!1046013)))))

(declare-fun b!3031008 () Bool)

(assert (=> b!3031008 (= c!500794 ((_ is Union!9427) (regOne!19367 r!17423)))))

(assert (=> b!3031008 (= e!1900978 e!1900972)))

(declare-fun b!3031009 () Bool)

(assert (=> b!3031009 (= e!1900984 (Concat!14748 lt!1046012 lt!1046013))))

(declare-fun bm!206437 () Bool)

(assert (=> bm!206437 (= call!206440 call!206439)))

(declare-fun b!3031010 () Bool)

(declare-fun e!1900982 () Regex!9427)

(assert (=> b!3031010 (= e!1900982 e!1900984)))

(declare-fun c!500795 () Bool)

(assert (=> b!3031010 (= c!500795 call!206443)))

(declare-fun b!3031011 () Bool)

(assert (=> b!3031011 (= e!1900983 e!1900978)))

(assert (=> b!3031011 (= c!500787 ((_ is Star!9427) (regOne!19367 r!17423)))))

(declare-fun b!3031012 () Bool)

(assert (=> b!3031012 (= e!1900972 e!1900975)))

(assert (=> b!3031012 (= lt!1046012 call!206445)))

(assert (=> b!3031012 (= lt!1046013 call!206440)))

(declare-fun res!1247145 () Bool)

(declare-fun call!206442 () Bool)

(assert (=> b!3031012 (= res!1247145 call!206442)))

(assert (=> b!3031012 (=> res!1247145 e!1900980)))

(declare-fun c!500792 () Bool)

(assert (=> b!3031012 (= c!500792 e!1900980)))

(declare-fun b!3031013 () Bool)

(declare-fun c!500796 () Bool)

(assert (=> b!3031013 (= c!500796 call!206442)))

(assert (=> b!3031013 (= e!1900979 e!1900973)))

(declare-fun b!3031014 () Bool)

(assert (=> b!3031014 (= e!1900977 call!206443)))

(declare-fun b!3031015 () Bool)

(assert (=> b!3031015 (= e!1900982 lt!1046013)))

(declare-fun bm!206438 () Bool)

(assert (=> bm!206438 (= call!206442 call!206444)))

(declare-fun b!3031016 () Bool)

(assert (=> b!3031016 (= e!1900974 (regOne!19367 r!17423))))

(declare-fun b!3031017 () Bool)

(assert (=> b!3031017 (= e!1900973 (Union!9427 lt!1046009 lt!1046010))))

(declare-fun b!3031018 () Bool)

(declare-fun c!500790 () Bool)

(assert (=> b!3031018 (= c!500790 (isEmptyExpr!502 lt!1046012))))

(assert (=> b!3031018 (= e!1900975 e!1900982)))

(declare-fun bm!206435 () Bool)

(assert (=> bm!206435 (= call!206444 (isEmptyLang!496 (ite c!500787 lt!1046014 (ite c!500794 lt!1046010 lt!1046012))))))

(declare-fun d!851067 () Bool)

(assert (=> d!851067 e!1900985))

(declare-fun res!1247143 () Bool)

(assert (=> d!851067 (=> (not res!1247143) (not e!1900985))))

(assert (=> d!851067 (= res!1247143 (validRegex!4160 lt!1046011))))

(assert (=> d!851067 (= lt!1046011 e!1900976)))

(declare-fun c!500788 () Bool)

(assert (=> d!851067 (= c!500788 ((_ is EmptyLang!9427) (regOne!19367 r!17423)))))

(assert (=> d!851067 (validRegex!4160 (regOne!19367 r!17423))))

(assert (=> d!851067 (= (simplify!398 (regOne!19367 r!17423)) lt!1046011)))

(declare-fun b!3031019 () Bool)

(assert (=> b!3031019 (= e!1900981 EmptyExpr!9427)))

(declare-fun bm!206439 () Bool)

(assert (=> bm!206439 (= call!206439 (simplify!398 (ite c!500787 (reg!9756 (regOne!19367 r!17423)) (ite c!500794 (regOne!19367 (regOne!19367 r!17423)) (regTwo!19366 (regOne!19367 r!17423))))))))

(declare-fun bm!206440 () Bool)

(assert (=> bm!206440 (= call!206445 (simplify!398 (ite c!500794 (regTwo!19367 (regOne!19367 r!17423)) (regOne!19366 (regOne!19367 r!17423)))))))

(declare-fun b!3031020 () Bool)

(assert (=> b!3031020 (= e!1900979 lt!1046010)))

(assert (= (and d!851067 c!500788) b!3030998))

(assert (= (and d!851067 (not c!500788)) b!3030997))

(assert (= (and b!3030997 c!500793) b!3031016))

(assert (= (and b!3030997 (not c!500793)) b!3030996))

(assert (= (and b!3030996 c!500786) b!3031006))

(assert (= (and b!3030996 (not c!500786)) b!3031011))

(assert (= (and b!3031011 c!500787) b!3031001))

(assert (= (and b!3031011 (not c!500787)) b!3031008))

(assert (= (and b!3031001 (not res!1247144)) b!3031014))

(assert (= (and b!3031001 c!500789) b!3031019))

(assert (= (and b!3031001 (not c!500789)) b!3031005))

(assert (= (and b!3031008 c!500794) b!3030999))

(assert (= (and b!3031008 (not c!500794)) b!3031012))

(assert (= (and b!3030999 c!500791) b!3031020))

(assert (= (and b!3030999 (not c!500791)) b!3031013))

(assert (= (and b!3031013 c!500796) b!3031000))

(assert (= (and b!3031013 (not c!500796)) b!3031017))

(assert (= (and b!3031012 (not res!1247145)) b!3031003))

(assert (= (and b!3031012 c!500792) b!3031002))

(assert (= (and b!3031012 (not c!500792)) b!3031018))

(assert (= (and b!3031018 c!500790) b!3031015))

(assert (= (and b!3031018 (not c!500790)) b!3031010))

(assert (= (and b!3031010 c!500795) b!3031007))

(assert (= (and b!3031010 (not c!500795)) b!3031009))

(assert (= (or b!3030999 b!3031012) bm!206437))

(assert (= (or b!3030999 b!3031012) bm!206440))

(assert (= (or b!3030999 b!3031003) bm!206436))

(assert (= (or b!3031013 b!3031012) bm!206438))

(assert (= (or b!3031014 b!3031010) bm!206434))

(assert (= (or b!3031001 bm!206437) bm!206439))

(assert (= (or b!3031001 bm!206438) bm!206435))

(assert (= (and d!851067 res!1247143) b!3031004))

(declare-fun m!3367803 () Bool)

(assert (=> bm!206435 m!3367803))

(declare-fun m!3367805 () Bool)

(assert (=> b!3031018 m!3367805))

(declare-fun m!3367807 () Bool)

(assert (=> d!851067 m!3367807))

(assert (=> d!851067 m!3367709))

(declare-fun m!3367811 () Bool)

(assert (=> b!3031004 m!3367811))

(assert (=> b!3031004 m!3367711))

(declare-fun m!3367815 () Bool)

(assert (=> bm!206440 m!3367815))

(declare-fun m!3367817 () Bool)

(assert (=> bm!206436 m!3367817))

(declare-fun m!3367819 () Bool)

(assert (=> bm!206439 m!3367819))

(declare-fun m!3367821 () Bool)

(assert (=> bm!206434 m!3367821))

(assert (=> b!3030666 d!851067))

(declare-fun b!3031044 () Bool)

(declare-fun e!1901002 () Bool)

(declare-fun call!206452 () Bool)

(assert (=> b!3031044 (= e!1901002 call!206452)))

(declare-fun b!3031045 () Bool)

(declare-fun res!1247159 () Bool)

(declare-fun e!1901003 () Bool)

(assert (=> b!3031045 (=> res!1247159 e!1901003)))

(assert (=> b!3031045 (= res!1247159 (not ((_ is Concat!14748) lt!1045957)))))

(declare-fun e!1901001 () Bool)

(assert (=> b!3031045 (= e!1901001 e!1901003)))

(declare-fun b!3031046 () Bool)

(declare-fun e!1901006 () Bool)

(assert (=> b!3031046 (= e!1901006 e!1901001)))

(declare-fun c!500802 () Bool)

(assert (=> b!3031046 (= c!500802 ((_ is Union!9427) lt!1045957))))

(declare-fun b!3031047 () Bool)

(declare-fun e!1901000 () Bool)

(assert (=> b!3031047 (= e!1901000 e!1901006)))

(declare-fun c!500803 () Bool)

(assert (=> b!3031047 (= c!500803 ((_ is Star!9427) lt!1045957))))

(declare-fun b!3031048 () Bool)

(declare-fun res!1247161 () Bool)

(assert (=> b!3031048 (=> (not res!1247161) (not e!1901002))))

(declare-fun call!206451 () Bool)

(assert (=> b!3031048 (= res!1247161 call!206451)))

(assert (=> b!3031048 (= e!1901001 e!1901002)))

(declare-fun b!3031049 () Bool)

(declare-fun e!1901004 () Bool)

(declare-fun call!206450 () Bool)

(assert (=> b!3031049 (= e!1901004 call!206450)))

(declare-fun b!3031050 () Bool)

(assert (=> b!3031050 (= e!1901006 e!1901004)))

(declare-fun res!1247160 () Bool)

(assert (=> b!3031050 (= res!1247160 (not (nullable!3077 (reg!9756 lt!1045957))))))

(assert (=> b!3031050 (=> (not res!1247160) (not e!1901004))))

(declare-fun bm!206446 () Bool)

(assert (=> bm!206446 (= call!206451 call!206450)))

(declare-fun bm!206447 () Bool)

(assert (=> bm!206447 (= call!206452 (validRegex!4160 (ite c!500802 (regTwo!19367 lt!1045957) (regOne!19366 lt!1045957))))))

(declare-fun b!3031051 () Bool)

(declare-fun e!1901005 () Bool)

(assert (=> b!3031051 (= e!1901005 call!206451)))

(declare-fun b!3031052 () Bool)

(assert (=> b!3031052 (= e!1901003 e!1901005)))

(declare-fun res!1247163 () Bool)

(assert (=> b!3031052 (=> (not res!1247163) (not e!1901005))))

(assert (=> b!3031052 (= res!1247163 call!206452)))

(declare-fun bm!206445 () Bool)

(assert (=> bm!206445 (= call!206450 (validRegex!4160 (ite c!500803 (reg!9756 lt!1045957) (ite c!500802 (regOne!19367 lt!1045957) (regTwo!19366 lt!1045957)))))))

(declare-fun d!851081 () Bool)

(declare-fun res!1247162 () Bool)

(assert (=> d!851081 (=> res!1247162 e!1901000)))

(assert (=> d!851081 (= res!1247162 ((_ is ElementMatch!9427) lt!1045957))))

(assert (=> d!851081 (= (validRegex!4160 lt!1045957) e!1901000)))

(assert (= (and d!851081 (not res!1247162)) b!3031047))

(assert (= (and b!3031047 c!500803) b!3031050))

(assert (= (and b!3031047 (not c!500803)) b!3031046))

(assert (= (and b!3031050 res!1247160) b!3031049))

(assert (= (and b!3031046 c!500802) b!3031048))

(assert (= (and b!3031046 (not c!500802)) b!3031045))

(assert (= (and b!3031048 res!1247161) b!3031044))

(assert (= (and b!3031045 (not res!1247159)) b!3031052))

(assert (= (and b!3031052 res!1247163) b!3031051))

(assert (= (or b!3031048 b!3031051) bm!206446))

(assert (= (or b!3031044 b!3031052) bm!206447))

(assert (= (or b!3031049 bm!206446) bm!206445))

(declare-fun m!3367823 () Bool)

(assert (=> b!3031050 m!3367823))

(declare-fun m!3367825 () Bool)

(assert (=> bm!206447 m!3367825))

(declare-fun m!3367827 () Bool)

(assert (=> bm!206445 m!3367827))

(assert (=> b!3030666 d!851081))

(declare-fun c!500805 () Bool)

(declare-fun call!206457 () Bool)

(declare-fun lt!1046021 () Regex!9427)

(declare-fun bm!206448 () Bool)

(declare-fun lt!1046020 () Regex!9427)

(assert (=> bm!206448 (= call!206457 (isEmptyExpr!502 (ite c!500805 lt!1046021 lt!1046020)))))

(declare-fun b!3031053 () Bool)

(declare-fun c!500804 () Bool)

(assert (=> b!3031053 (= c!500804 ((_ is EmptyExpr!9427) (regTwo!19367 r!17423)))))

(declare-fun e!1901009 () Regex!9427)

(declare-fun e!1901018 () Regex!9427)

(assert (=> b!3031053 (= e!1901009 e!1901018)))

(declare-fun b!3031054 () Bool)

(declare-fun e!1901011 () Regex!9427)

(assert (=> b!3031054 (= e!1901011 e!1901009)))

(declare-fun c!500811 () Bool)

(assert (=> b!3031054 (= c!500811 ((_ is ElementMatch!9427) (regTwo!19367 r!17423)))))

(declare-fun b!3031055 () Bool)

(assert (=> b!3031055 (= e!1901011 EmptyLang!9427)))

(declare-fun b!3031056 () Bool)

(declare-fun e!1901007 () Regex!9427)

(declare-fun e!1901014 () Regex!9427)

(assert (=> b!3031056 (= e!1901007 e!1901014)))

(declare-fun lt!1046016 () Regex!9427)

(declare-fun call!206454 () Regex!9427)

(assert (=> b!3031056 (= lt!1046016 call!206454)))

(declare-fun lt!1046017 () Regex!9427)

(declare-fun call!206459 () Regex!9427)

(assert (=> b!3031056 (= lt!1046017 call!206459)))

(declare-fun c!500809 () Bool)

(declare-fun call!206455 () Bool)

(assert (=> b!3031056 (= c!500809 call!206455)))

(declare-fun b!3031057 () Bool)

(declare-fun e!1901008 () Regex!9427)

(assert (=> b!3031057 (= e!1901008 lt!1046016)))

(declare-fun b!3031058 () Bool)

(declare-fun c!500807 () Bool)

(declare-fun e!1901012 () Bool)

(assert (=> b!3031058 (= c!500807 e!1901012)))

(declare-fun res!1247165 () Bool)

(assert (=> b!3031058 (=> res!1247165 e!1901012)))

(declare-fun call!206458 () Bool)

(assert (=> b!3031058 (= res!1247165 call!206458)))

(declare-fun call!206453 () Regex!9427)

(assert (=> b!3031058 (= lt!1046021 call!206453)))

(declare-fun e!1901013 () Regex!9427)

(declare-fun e!1901016 () Regex!9427)

(assert (=> b!3031058 (= e!1901013 e!1901016)))

(declare-fun b!3031059 () Bool)

(declare-fun e!1901010 () Regex!9427)

(assert (=> b!3031059 (= e!1901010 EmptyLang!9427)))

(declare-fun b!3031060 () Bool)

(declare-fun e!1901015 () Bool)

(assert (=> b!3031060 (= e!1901015 call!206455)))

(declare-fun b!3031061 () Bool)

(declare-fun e!1901020 () Bool)

(declare-fun lt!1046018 () Regex!9427)

(assert (=> b!3031061 (= e!1901020 (= (nullable!3077 lt!1046018) (nullable!3077 (regTwo!19367 r!17423))))))

(declare-fun b!3031062 () Bool)

(assert (=> b!3031062 (= e!1901016 (Star!9427 lt!1046021))))

(declare-fun b!3031063 () Bool)

(assert (=> b!3031063 (= e!1901018 EmptyExpr!9427)))

(declare-fun b!3031064 () Bool)

(declare-fun e!1901019 () Regex!9427)

(declare-fun lt!1046019 () Regex!9427)

(assert (=> b!3031064 (= e!1901019 lt!1046019)))

(declare-fun c!500812 () Bool)

(declare-fun bm!206450 () Bool)

(assert (=> bm!206450 (= call!206455 (isEmptyLang!496 (ite c!500812 lt!1046016 lt!1046020)))))

(declare-fun b!3031065 () Bool)

(assert (=> b!3031065 (= c!500812 ((_ is Union!9427) (regTwo!19367 r!17423)))))

(assert (=> b!3031065 (= e!1901013 e!1901007)))

(declare-fun b!3031066 () Bool)

(assert (=> b!3031066 (= e!1901019 (Concat!14748 lt!1046019 lt!1046020))))

(declare-fun bm!206451 () Bool)

(assert (=> bm!206451 (= call!206454 call!206453)))

(declare-fun b!3031067 () Bool)

(declare-fun e!1901017 () Regex!9427)

(assert (=> b!3031067 (= e!1901017 e!1901019)))

(declare-fun c!500813 () Bool)

(assert (=> b!3031067 (= c!500813 call!206457)))

(declare-fun b!3031068 () Bool)

(assert (=> b!3031068 (= e!1901018 e!1901013)))

(assert (=> b!3031068 (= c!500805 ((_ is Star!9427) (regTwo!19367 r!17423)))))

(declare-fun b!3031069 () Bool)

(assert (=> b!3031069 (= e!1901007 e!1901010)))

(assert (=> b!3031069 (= lt!1046019 call!206459)))

(assert (=> b!3031069 (= lt!1046020 call!206454)))

(declare-fun res!1247166 () Bool)

(declare-fun call!206456 () Bool)

(assert (=> b!3031069 (= res!1247166 call!206456)))

(assert (=> b!3031069 (=> res!1247166 e!1901015)))

(declare-fun c!500810 () Bool)

(assert (=> b!3031069 (= c!500810 e!1901015)))

(declare-fun b!3031070 () Bool)

(declare-fun c!500814 () Bool)

(assert (=> b!3031070 (= c!500814 call!206456)))

(assert (=> b!3031070 (= e!1901014 e!1901008)))

(declare-fun b!3031071 () Bool)

(assert (=> b!3031071 (= e!1901012 call!206457)))

(declare-fun b!3031072 () Bool)

(assert (=> b!3031072 (= e!1901017 lt!1046020)))

(declare-fun bm!206452 () Bool)

(assert (=> bm!206452 (= call!206456 call!206458)))

(declare-fun b!3031073 () Bool)

(assert (=> b!3031073 (= e!1901009 (regTwo!19367 r!17423))))

(declare-fun b!3031074 () Bool)

(assert (=> b!3031074 (= e!1901008 (Union!9427 lt!1046016 lt!1046017))))

(declare-fun b!3031075 () Bool)

(declare-fun c!500808 () Bool)

(assert (=> b!3031075 (= c!500808 (isEmptyExpr!502 lt!1046019))))

(assert (=> b!3031075 (= e!1901010 e!1901017)))

(declare-fun bm!206449 () Bool)

(assert (=> bm!206449 (= call!206458 (isEmptyLang!496 (ite c!500805 lt!1046021 (ite c!500812 lt!1046017 lt!1046019))))))

(declare-fun d!851083 () Bool)

(assert (=> d!851083 e!1901020))

(declare-fun res!1247164 () Bool)

(assert (=> d!851083 (=> (not res!1247164) (not e!1901020))))

(assert (=> d!851083 (= res!1247164 (validRegex!4160 lt!1046018))))

(assert (=> d!851083 (= lt!1046018 e!1901011)))

(declare-fun c!500806 () Bool)

(assert (=> d!851083 (= c!500806 ((_ is EmptyLang!9427) (regTwo!19367 r!17423)))))

(assert (=> d!851083 (validRegex!4160 (regTwo!19367 r!17423))))

(assert (=> d!851083 (= (simplify!398 (regTwo!19367 r!17423)) lt!1046018)))

(declare-fun b!3031076 () Bool)

(assert (=> b!3031076 (= e!1901016 EmptyExpr!9427)))

(declare-fun bm!206453 () Bool)

(assert (=> bm!206453 (= call!206453 (simplify!398 (ite c!500805 (reg!9756 (regTwo!19367 r!17423)) (ite c!500812 (regOne!19367 (regTwo!19367 r!17423)) (regTwo!19366 (regTwo!19367 r!17423))))))))

(declare-fun bm!206454 () Bool)

(assert (=> bm!206454 (= call!206459 (simplify!398 (ite c!500812 (regTwo!19367 (regTwo!19367 r!17423)) (regOne!19366 (regTwo!19367 r!17423)))))))

(declare-fun b!3031077 () Bool)

(assert (=> b!3031077 (= e!1901014 lt!1046017)))

(assert (= (and d!851083 c!500806) b!3031055))

(assert (= (and d!851083 (not c!500806)) b!3031054))

(assert (= (and b!3031054 c!500811) b!3031073))

(assert (= (and b!3031054 (not c!500811)) b!3031053))

(assert (= (and b!3031053 c!500804) b!3031063))

(assert (= (and b!3031053 (not c!500804)) b!3031068))

(assert (= (and b!3031068 c!500805) b!3031058))

(assert (= (and b!3031068 (not c!500805)) b!3031065))

(assert (= (and b!3031058 (not res!1247165)) b!3031071))

(assert (= (and b!3031058 c!500807) b!3031076))

(assert (= (and b!3031058 (not c!500807)) b!3031062))

(assert (= (and b!3031065 c!500812) b!3031056))

(assert (= (and b!3031065 (not c!500812)) b!3031069))

(assert (= (and b!3031056 c!500809) b!3031077))

(assert (= (and b!3031056 (not c!500809)) b!3031070))

(assert (= (and b!3031070 c!500814) b!3031057))

(assert (= (and b!3031070 (not c!500814)) b!3031074))

(assert (= (and b!3031069 (not res!1247166)) b!3031060))

(assert (= (and b!3031069 c!500810) b!3031059))

(assert (= (and b!3031069 (not c!500810)) b!3031075))

(assert (= (and b!3031075 c!500808) b!3031072))

(assert (= (and b!3031075 (not c!500808)) b!3031067))

(assert (= (and b!3031067 c!500813) b!3031064))

(assert (= (and b!3031067 (not c!500813)) b!3031066))

(assert (= (or b!3031056 b!3031069) bm!206451))

(assert (= (or b!3031056 b!3031069) bm!206454))

(assert (= (or b!3031056 b!3031060) bm!206450))

(assert (= (or b!3031070 b!3031069) bm!206452))

(assert (= (or b!3031071 b!3031067) bm!206448))

(assert (= (or b!3031058 bm!206451) bm!206453))

(assert (= (or b!3031058 bm!206452) bm!206449))

(assert (= (and d!851083 res!1247164) b!3031061))

(declare-fun m!3367829 () Bool)

(assert (=> bm!206449 m!3367829))

(declare-fun m!3367831 () Bool)

(assert (=> b!3031075 m!3367831))

(declare-fun m!3367833 () Bool)

(assert (=> d!851083 m!3367833))

(assert (=> d!851083 m!3367729))

(declare-fun m!3367835 () Bool)

(assert (=> b!3031061 m!3367835))

(assert (=> b!3031061 m!3367747))

(declare-fun m!3367837 () Bool)

(assert (=> bm!206454 m!3367837))

(declare-fun m!3367839 () Bool)

(assert (=> bm!206450 m!3367839))

(declare-fun m!3367841 () Bool)

(assert (=> bm!206453 m!3367841))

(declare-fun m!3367843 () Bool)

(assert (=> bm!206448 m!3367843))

(assert (=> b!3030666 d!851083))

(declare-fun b!3031082 () Bool)

(declare-fun e!1901025 () Bool)

(declare-fun e!1901030 () Bool)

(assert (=> b!3031082 (= e!1901025 e!1901030)))

(declare-fun res!1247176 () Bool)

(assert (=> b!3031082 (=> res!1247176 e!1901030)))

(declare-fun call!206460 () Bool)

(assert (=> b!3031082 (= res!1247176 call!206460)))

(declare-fun b!3031083 () Bool)

(assert (=> b!3031083 (= e!1901030 (not (= (head!6733 s!11993) (c!500683 lt!1045957))))))

(declare-fun b!3031084 () Bool)

(declare-fun res!1247178 () Bool)

(assert (=> b!3031084 (=> res!1247178 e!1901030)))

(assert (=> b!3031084 (= res!1247178 (not (isEmpty!19468 (tail!4959 s!11993))))))

(declare-fun b!3031085 () Bool)

(declare-fun res!1247175 () Bool)

(declare-fun e!1901026 () Bool)

(assert (=> b!3031085 (=> (not res!1247175) (not e!1901026))))

(assert (=> b!3031085 (= res!1247175 (not call!206460))))

(declare-fun b!3031086 () Bool)

(declare-fun res!1247173 () Bool)

(assert (=> b!3031086 (=> (not res!1247173) (not e!1901026))))

(assert (=> b!3031086 (= res!1247173 (isEmpty!19468 (tail!4959 s!11993)))))

(declare-fun b!3031087 () Bool)

(declare-fun e!1901029 () Bool)

(declare-fun lt!1046024 () Bool)

(assert (=> b!3031087 (= e!1901029 (= lt!1046024 call!206460))))

(declare-fun b!3031088 () Bool)

(declare-fun res!1247174 () Bool)

(declare-fun e!1901028 () Bool)

(assert (=> b!3031088 (=> res!1247174 e!1901028)))

(assert (=> b!3031088 (= res!1247174 e!1901026)))

(declare-fun res!1247171 () Bool)

(assert (=> b!3031088 (=> (not res!1247171) (not e!1901026))))

(assert (=> b!3031088 (= res!1247171 lt!1046024)))

(declare-fun b!3031089 () Bool)

(declare-fun e!1901027 () Bool)

(assert (=> b!3031089 (= e!1901027 (not lt!1046024))))

(declare-fun b!3031090 () Bool)

(declare-fun e!1901031 () Bool)

(assert (=> b!3031090 (= e!1901031 (matchR!4309 (derivativeStep!2674 lt!1045957 (head!6733 s!11993)) (tail!4959 s!11993)))))

(declare-fun b!3031091 () Bool)

(declare-fun res!1247177 () Bool)

(assert (=> b!3031091 (=> res!1247177 e!1901028)))

(assert (=> b!3031091 (= res!1247177 (not ((_ is ElementMatch!9427) lt!1045957)))))

(assert (=> b!3031091 (= e!1901027 e!1901028)))

(declare-fun bm!206455 () Bool)

(assert (=> bm!206455 (= call!206460 (isEmpty!19468 s!11993))))

(declare-fun d!851085 () Bool)

(assert (=> d!851085 e!1901029))

(declare-fun c!500815 () Bool)

(assert (=> d!851085 (= c!500815 ((_ is EmptyExpr!9427) lt!1045957))))

(assert (=> d!851085 (= lt!1046024 e!1901031)))

(declare-fun c!500817 () Bool)

(assert (=> d!851085 (= c!500817 (isEmpty!19468 s!11993))))

(assert (=> d!851085 (validRegex!4160 lt!1045957)))

(assert (=> d!851085 (= (matchR!4309 lt!1045957 s!11993) lt!1046024)))

(declare-fun b!3031092 () Bool)

(assert (=> b!3031092 (= e!1901031 (nullable!3077 lt!1045957))))

(declare-fun b!3031093 () Bool)

(assert (=> b!3031093 (= e!1901026 (= (head!6733 s!11993) (c!500683 lt!1045957)))))

(declare-fun b!3031094 () Bool)

(assert (=> b!3031094 (= e!1901028 e!1901025)))

(declare-fun res!1247172 () Bool)

(assert (=> b!3031094 (=> (not res!1247172) (not e!1901025))))

(assert (=> b!3031094 (= res!1247172 (not lt!1046024))))

(declare-fun b!3031095 () Bool)

(assert (=> b!3031095 (= e!1901029 e!1901027)))

(declare-fun c!500816 () Bool)

(assert (=> b!3031095 (= c!500816 ((_ is EmptyLang!9427) lt!1045957))))

(assert (= (and d!851085 c!500817) b!3031092))

(assert (= (and d!851085 (not c!500817)) b!3031090))

(assert (= (and d!851085 c!500815) b!3031087))

(assert (= (and d!851085 (not c!500815)) b!3031095))

(assert (= (and b!3031095 c!500816) b!3031089))

(assert (= (and b!3031095 (not c!500816)) b!3031091))

(assert (= (and b!3031091 (not res!1247177)) b!3031088))

(assert (= (and b!3031088 res!1247171) b!3031085))

(assert (= (and b!3031085 res!1247175) b!3031086))

(assert (= (and b!3031086 res!1247173) b!3031093))

(assert (= (and b!3031088 (not res!1247174)) b!3031094))

(assert (= (and b!3031094 res!1247172) b!3031082))

(assert (= (and b!3031082 (not res!1247176)) b!3031084))

(assert (= (and b!3031084 (not res!1247178)) b!3031083))

(assert (= (or b!3031087 b!3031082 b!3031085) bm!206455))

(assert (=> b!3031090 m!3367697))

(assert (=> b!3031090 m!3367697))

(declare-fun m!3367847 () Bool)

(assert (=> b!3031090 m!3367847))

(assert (=> b!3031090 m!3367701))

(assert (=> b!3031090 m!3367847))

(assert (=> b!3031090 m!3367701))

(declare-fun m!3367849 () Bool)

(assert (=> b!3031090 m!3367849))

(assert (=> b!3031084 m!3367701))

(assert (=> b!3031084 m!3367701))

(assert (=> b!3031084 m!3367705))

(assert (=> d!851085 m!3367707))

(assert (=> d!851085 m!3367673))

(assert (=> bm!206455 m!3367707))

(assert (=> b!3031086 m!3367701))

(assert (=> b!3031086 m!3367701))

(assert (=> b!3031086 m!3367705))

(assert (=> b!3031083 m!3367697))

(assert (=> b!3031093 m!3367697))

(declare-fun m!3367851 () Bool)

(assert (=> b!3031092 m!3367851))

(assert (=> b!3030666 d!851085))

(declare-fun d!851089 () Bool)

(assert (=> d!851089 (= (matchR!4309 (regOne!19367 r!17423) s!11993) (matchR!4309 (simplify!398 (regOne!19367 r!17423)) s!11993))))

(declare-fun lt!1046038 () Unit!49277)

(declare-fun choose!17975 (Regex!9427 List!35292) Unit!49277)

(assert (=> d!851089 (= lt!1046038 (choose!17975 (regOne!19367 r!17423) s!11993))))

(assert (=> d!851089 (validRegex!4160 (regOne!19367 r!17423))))

(assert (=> d!851089 (= (lemmaSimplifySound!246 (regOne!19367 r!17423) s!11993) lt!1046038)))

(declare-fun bs!530831 () Bool)

(assert (= bs!530831 d!851089))

(assert (=> bs!530831 m!3367675))

(declare-fun m!3367887 () Bool)

(assert (=> bs!530831 m!3367887))

(assert (=> bs!530831 m!3367687))

(assert (=> bs!530831 m!3367709))

(declare-fun m!3367889 () Bool)

(assert (=> bs!530831 m!3367889))

(assert (=> bs!530831 m!3367675))

(assert (=> b!3030666 d!851089))

(declare-fun b!3031154 () Bool)

(declare-fun e!1901067 () Bool)

(declare-fun call!206472 () Bool)

(assert (=> b!3031154 (= e!1901067 call!206472)))

(declare-fun b!3031155 () Bool)

(declare-fun res!1247203 () Bool)

(declare-fun e!1901068 () Bool)

(assert (=> b!3031155 (=> res!1247203 e!1901068)))

(assert (=> b!3031155 (= res!1247203 (not ((_ is Concat!14748) lt!1045954)))))

(declare-fun e!1901066 () Bool)

(assert (=> b!3031155 (= e!1901066 e!1901068)))

(declare-fun b!3031156 () Bool)

(declare-fun e!1901071 () Bool)

(assert (=> b!3031156 (= e!1901071 e!1901066)))

(declare-fun c!500835 () Bool)

(assert (=> b!3031156 (= c!500835 ((_ is Union!9427) lt!1045954))))

(declare-fun b!3031157 () Bool)

(declare-fun e!1901065 () Bool)

(assert (=> b!3031157 (= e!1901065 e!1901071)))

(declare-fun c!500836 () Bool)

(assert (=> b!3031157 (= c!500836 ((_ is Star!9427) lt!1045954))))

(declare-fun b!3031158 () Bool)

(declare-fun res!1247205 () Bool)

(assert (=> b!3031158 (=> (not res!1247205) (not e!1901067))))

(declare-fun call!206471 () Bool)

(assert (=> b!3031158 (= res!1247205 call!206471)))

(assert (=> b!3031158 (= e!1901066 e!1901067)))

(declare-fun b!3031159 () Bool)

(declare-fun e!1901069 () Bool)

(declare-fun call!206470 () Bool)

(assert (=> b!3031159 (= e!1901069 call!206470)))

(declare-fun b!3031160 () Bool)

(assert (=> b!3031160 (= e!1901071 e!1901069)))

(declare-fun res!1247204 () Bool)

(assert (=> b!3031160 (= res!1247204 (not (nullable!3077 (reg!9756 lt!1045954))))))

(assert (=> b!3031160 (=> (not res!1247204) (not e!1901069))))

(declare-fun bm!206466 () Bool)

(assert (=> bm!206466 (= call!206471 call!206470)))

(declare-fun bm!206467 () Bool)

(assert (=> bm!206467 (= call!206472 (validRegex!4160 (ite c!500835 (regTwo!19367 lt!1045954) (regOne!19366 lt!1045954))))))

(declare-fun b!3031161 () Bool)

(declare-fun e!1901070 () Bool)

(assert (=> b!3031161 (= e!1901070 call!206471)))

(declare-fun b!3031162 () Bool)

(assert (=> b!3031162 (= e!1901068 e!1901070)))

(declare-fun res!1247207 () Bool)

(assert (=> b!3031162 (=> (not res!1247207) (not e!1901070))))

(assert (=> b!3031162 (= res!1247207 call!206472)))

(declare-fun bm!206465 () Bool)

(assert (=> bm!206465 (= call!206470 (validRegex!4160 (ite c!500836 (reg!9756 lt!1045954) (ite c!500835 (regOne!19367 lt!1045954) (regTwo!19366 lt!1045954)))))))

(declare-fun d!851097 () Bool)

(declare-fun res!1247206 () Bool)

(assert (=> d!851097 (=> res!1247206 e!1901065)))

(assert (=> d!851097 (= res!1247206 ((_ is ElementMatch!9427) lt!1045954))))

(assert (=> d!851097 (= (validRegex!4160 lt!1045954) e!1901065)))

(assert (= (and d!851097 (not res!1247206)) b!3031157))

(assert (= (and b!3031157 c!500836) b!3031160))

(assert (= (and b!3031157 (not c!500836)) b!3031156))

(assert (= (and b!3031160 res!1247204) b!3031159))

(assert (= (and b!3031156 c!500835) b!3031158))

(assert (= (and b!3031156 (not c!500835)) b!3031155))

(assert (= (and b!3031158 res!1247205) b!3031154))

(assert (= (and b!3031155 (not res!1247203)) b!3031162))

(assert (= (and b!3031162 res!1247207) b!3031161))

(assert (= (or b!3031158 b!3031161) bm!206466))

(assert (= (or b!3031154 b!3031162) bm!206467))

(assert (= (or b!3031159 bm!206466) bm!206465))

(declare-fun m!3367899 () Bool)

(assert (=> b!3031160 m!3367899))

(declare-fun m!3367901 () Bool)

(assert (=> bm!206467 m!3367901))

(declare-fun m!3367903 () Bool)

(assert (=> bm!206465 m!3367903))

(assert (=> b!3030671 d!851097))

(declare-fun b!3031308 () Bool)

(assert (=> b!3031308 true))

(assert (=> b!3031308 true))

(declare-fun bs!530834 () Bool)

(declare-fun b!3031300 () Bool)

(assert (= bs!530834 (and b!3031300 b!3031308)))

(declare-fun lambda!113190 () Int)

(declare-fun lambda!113189 () Int)

(assert (=> bs!530834 (not (= lambda!113190 lambda!113189))))

(assert (=> b!3031300 true))

(assert (=> b!3031300 true))

(declare-fun e!1901140 () Bool)

(declare-fun call!206488 () Bool)

(assert (=> b!3031300 (= e!1901140 call!206488)))

(declare-fun b!3031301 () Bool)

(declare-fun c!500864 () Bool)

(assert (=> b!3031301 (= c!500864 ((_ is Union!9427) r!17423))))

(declare-fun e!1901143 () Bool)

(declare-fun e!1901141 () Bool)

(assert (=> b!3031301 (= e!1901143 e!1901141)))

(declare-fun b!3031302 () Bool)

(assert (=> b!3031302 (= e!1901143 (= s!11993 (Cons!35168 (c!500683 r!17423) Nil!35168)))))

(declare-fun b!3031303 () Bool)

(declare-fun e!1901142 () Bool)

(declare-fun e!1901145 () Bool)

(assert (=> b!3031303 (= e!1901142 e!1901145)))

(declare-fun res!1247257 () Bool)

(assert (=> b!3031303 (= res!1247257 (not ((_ is EmptyLang!9427) r!17423)))))

(assert (=> b!3031303 (=> (not res!1247257) (not e!1901145))))

(declare-fun c!500862 () Bool)

(declare-fun bm!206482 () Bool)

(declare-fun Exists!1692 (Int) Bool)

(assert (=> bm!206482 (= call!206488 (Exists!1692 (ite c!500862 lambda!113189 lambda!113190)))))

(declare-fun b!3031304 () Bool)

(declare-fun e!1901144 () Bool)

(assert (=> b!3031304 (= e!1901144 (matchRSpec!1564 (regTwo!19367 r!17423) s!11993))))

(declare-fun b!3031305 () Bool)

(assert (=> b!3031305 (= e!1901141 e!1901140)))

(assert (=> b!3031305 (= c!500862 ((_ is Star!9427) r!17423))))

(declare-fun b!3031306 () Bool)

(declare-fun call!206487 () Bool)

(assert (=> b!3031306 (= e!1901142 call!206487)))

(declare-fun d!851103 () Bool)

(declare-fun c!500865 () Bool)

(assert (=> d!851103 (= c!500865 ((_ is EmptyExpr!9427) r!17423))))

(assert (=> d!851103 (= (matchRSpec!1564 r!17423 s!11993) e!1901142)))

(declare-fun b!3031307 () Bool)

(declare-fun res!1247256 () Bool)

(declare-fun e!1901139 () Bool)

(assert (=> b!3031307 (=> res!1247256 e!1901139)))

(assert (=> b!3031307 (= res!1247256 call!206487)))

(assert (=> b!3031307 (= e!1901140 e!1901139)))

(declare-fun bm!206483 () Bool)

(assert (=> bm!206483 (= call!206487 (isEmpty!19468 s!11993))))

(assert (=> b!3031308 (= e!1901139 call!206488)))

(declare-fun b!3031309 () Bool)

(assert (=> b!3031309 (= e!1901141 e!1901144)))

(declare-fun res!1247258 () Bool)

(assert (=> b!3031309 (= res!1247258 (matchRSpec!1564 (regOne!19367 r!17423) s!11993))))

(assert (=> b!3031309 (=> res!1247258 e!1901144)))

(declare-fun b!3031310 () Bool)

(declare-fun c!500863 () Bool)

(assert (=> b!3031310 (= c!500863 ((_ is ElementMatch!9427) r!17423))))

(assert (=> b!3031310 (= e!1901145 e!1901143)))

(assert (= (and d!851103 c!500865) b!3031306))

(assert (= (and d!851103 (not c!500865)) b!3031303))

(assert (= (and b!3031303 res!1247257) b!3031310))

(assert (= (and b!3031310 c!500863) b!3031302))

(assert (= (and b!3031310 (not c!500863)) b!3031301))

(assert (= (and b!3031301 c!500864) b!3031309))

(assert (= (and b!3031301 (not c!500864)) b!3031305))

(assert (= (and b!3031309 (not res!1247258)) b!3031304))

(assert (= (and b!3031305 c!500862) b!3031307))

(assert (= (and b!3031305 (not c!500862)) b!3031300))

(assert (= (and b!3031307 (not res!1247256)) b!3031308))

(assert (= (or b!3031308 b!3031300) bm!206482))

(assert (= (or b!3031306 b!3031307) bm!206483))

(declare-fun m!3367917 () Bool)

(assert (=> bm!206482 m!3367917))

(declare-fun m!3367919 () Bool)

(assert (=> b!3031304 m!3367919))

(assert (=> bm!206483 m!3367707))

(declare-fun m!3367921 () Bool)

(assert (=> b!3031309 m!3367921))

(assert (=> b!3030668 d!851103))

(declare-fun b!3031315 () Bool)

(declare-fun e!1901146 () Bool)

(declare-fun e!1901151 () Bool)

(assert (=> b!3031315 (= e!1901146 e!1901151)))

(declare-fun res!1247264 () Bool)

(assert (=> b!3031315 (=> res!1247264 e!1901151)))

(declare-fun call!206489 () Bool)

(assert (=> b!3031315 (= res!1247264 call!206489)))

(declare-fun b!3031316 () Bool)

(assert (=> b!3031316 (= e!1901151 (not (= (head!6733 s!11993) (c!500683 r!17423))))))

(declare-fun b!3031317 () Bool)

(declare-fun res!1247266 () Bool)

(assert (=> b!3031317 (=> res!1247266 e!1901151)))

(assert (=> b!3031317 (= res!1247266 (not (isEmpty!19468 (tail!4959 s!11993))))))

(declare-fun b!3031318 () Bool)

(declare-fun res!1247263 () Bool)

(declare-fun e!1901147 () Bool)

(assert (=> b!3031318 (=> (not res!1247263) (not e!1901147))))

(assert (=> b!3031318 (= res!1247263 (not call!206489))))

(declare-fun b!3031319 () Bool)

(declare-fun res!1247261 () Bool)

(assert (=> b!3031319 (=> (not res!1247261) (not e!1901147))))

(assert (=> b!3031319 (= res!1247261 (isEmpty!19468 (tail!4959 s!11993)))))

(declare-fun b!3031320 () Bool)

(declare-fun e!1901150 () Bool)

(declare-fun lt!1046044 () Bool)

(assert (=> b!3031320 (= e!1901150 (= lt!1046044 call!206489))))

(declare-fun b!3031321 () Bool)

(declare-fun res!1247262 () Bool)

(declare-fun e!1901149 () Bool)

(assert (=> b!3031321 (=> res!1247262 e!1901149)))

(assert (=> b!3031321 (= res!1247262 e!1901147)))

(declare-fun res!1247259 () Bool)

(assert (=> b!3031321 (=> (not res!1247259) (not e!1901147))))

(assert (=> b!3031321 (= res!1247259 lt!1046044)))

(declare-fun b!3031322 () Bool)

(declare-fun e!1901148 () Bool)

(assert (=> b!3031322 (= e!1901148 (not lt!1046044))))

(declare-fun b!3031323 () Bool)

(declare-fun e!1901152 () Bool)

(assert (=> b!3031323 (= e!1901152 (matchR!4309 (derivativeStep!2674 r!17423 (head!6733 s!11993)) (tail!4959 s!11993)))))

(declare-fun b!3031324 () Bool)

(declare-fun res!1247265 () Bool)

(assert (=> b!3031324 (=> res!1247265 e!1901149)))

(assert (=> b!3031324 (= res!1247265 (not ((_ is ElementMatch!9427) r!17423)))))

(assert (=> b!3031324 (= e!1901148 e!1901149)))

(declare-fun bm!206484 () Bool)

(assert (=> bm!206484 (= call!206489 (isEmpty!19468 s!11993))))

(declare-fun d!851109 () Bool)

(assert (=> d!851109 e!1901150))

(declare-fun c!500866 () Bool)

(assert (=> d!851109 (= c!500866 ((_ is EmptyExpr!9427) r!17423))))

(assert (=> d!851109 (= lt!1046044 e!1901152)))

(declare-fun c!500868 () Bool)

(assert (=> d!851109 (= c!500868 (isEmpty!19468 s!11993))))

(assert (=> d!851109 (validRegex!4160 r!17423)))

(assert (=> d!851109 (= (matchR!4309 r!17423 s!11993) lt!1046044)))

(declare-fun b!3031325 () Bool)

(assert (=> b!3031325 (= e!1901152 (nullable!3077 r!17423))))

(declare-fun b!3031326 () Bool)

(assert (=> b!3031326 (= e!1901147 (= (head!6733 s!11993) (c!500683 r!17423)))))

(declare-fun b!3031327 () Bool)

(assert (=> b!3031327 (= e!1901149 e!1901146)))

(declare-fun res!1247260 () Bool)

(assert (=> b!3031327 (=> (not res!1247260) (not e!1901146))))

(assert (=> b!3031327 (= res!1247260 (not lt!1046044))))

(declare-fun b!3031328 () Bool)

(assert (=> b!3031328 (= e!1901150 e!1901148)))

(declare-fun c!500867 () Bool)

(assert (=> b!3031328 (= c!500867 ((_ is EmptyLang!9427) r!17423))))

(assert (= (and d!851109 c!500868) b!3031325))

(assert (= (and d!851109 (not c!500868)) b!3031323))

(assert (= (and d!851109 c!500866) b!3031320))

(assert (= (and d!851109 (not c!500866)) b!3031328))

(assert (= (and b!3031328 c!500867) b!3031322))

(assert (= (and b!3031328 (not c!500867)) b!3031324))

(assert (= (and b!3031324 (not res!1247265)) b!3031321))

(assert (= (and b!3031321 res!1247259) b!3031318))

(assert (= (and b!3031318 res!1247263) b!3031319))

(assert (= (and b!3031319 res!1247261) b!3031326))

(assert (= (and b!3031321 (not res!1247262)) b!3031327))

(assert (= (and b!3031327 res!1247260) b!3031315))

(assert (= (and b!3031315 (not res!1247264)) b!3031317))

(assert (= (and b!3031317 (not res!1247266)) b!3031316))

(assert (= (or b!3031320 b!3031315 b!3031318) bm!206484))

(assert (=> b!3031323 m!3367697))

(assert (=> b!3031323 m!3367697))

(declare-fun m!3367923 () Bool)

(assert (=> b!3031323 m!3367923))

(assert (=> b!3031323 m!3367701))

(assert (=> b!3031323 m!3367923))

(assert (=> b!3031323 m!3367701))

(declare-fun m!3367925 () Bool)

(assert (=> b!3031323 m!3367925))

(assert (=> b!3031317 m!3367701))

(assert (=> b!3031317 m!3367701))

(assert (=> b!3031317 m!3367705))

(assert (=> d!851109 m!3367707))

(assert (=> d!851109 m!3367693))

(assert (=> bm!206484 m!3367707))

(assert (=> b!3031319 m!3367701))

(assert (=> b!3031319 m!3367701))

(assert (=> b!3031319 m!3367705))

(assert (=> b!3031316 m!3367697))

(assert (=> b!3031326 m!3367697))

(declare-fun m!3367927 () Bool)

(assert (=> b!3031325 m!3367927))

(assert (=> b!3030668 d!851109))

(declare-fun d!851111 () Bool)

(assert (=> d!851111 (= (matchR!4309 r!17423 s!11993) (matchRSpec!1564 r!17423 s!11993))))

(declare-fun lt!1046047 () Unit!49277)

(declare-fun choose!17977 (Regex!9427 List!35292) Unit!49277)

(assert (=> d!851111 (= lt!1046047 (choose!17977 r!17423 s!11993))))

(assert (=> d!851111 (validRegex!4160 r!17423)))

(assert (=> d!851111 (= (mainMatchTheorem!1564 r!17423 s!11993) lt!1046047)))

(declare-fun bs!530835 () Bool)

(assert (= bs!530835 d!851111))

(assert (=> bs!530835 m!3367683))

(assert (=> bs!530835 m!3367681))

(declare-fun m!3367929 () Bool)

(assert (=> bs!530835 m!3367929))

(assert (=> bs!530835 m!3367693))

(assert (=> b!3030668 d!851111))

(declare-fun b!3031329 () Bool)

(declare-fun e!1901153 () Bool)

(declare-fun e!1901158 () Bool)

(assert (=> b!3031329 (= e!1901153 e!1901158)))

(declare-fun res!1247272 () Bool)

(assert (=> b!3031329 (=> res!1247272 e!1901158)))

(declare-fun call!206490 () Bool)

(assert (=> b!3031329 (= res!1247272 call!206490)))

(declare-fun b!3031330 () Bool)

(assert (=> b!3031330 (= e!1901158 (not (= (head!6733 s!11993) (c!500683 (simplify!398 r!17423)))))))

(declare-fun b!3031331 () Bool)

(declare-fun res!1247274 () Bool)

(assert (=> b!3031331 (=> res!1247274 e!1901158)))

(assert (=> b!3031331 (= res!1247274 (not (isEmpty!19468 (tail!4959 s!11993))))))

(declare-fun b!3031332 () Bool)

(declare-fun res!1247271 () Bool)

(declare-fun e!1901154 () Bool)

(assert (=> b!3031332 (=> (not res!1247271) (not e!1901154))))

(assert (=> b!3031332 (= res!1247271 (not call!206490))))

(declare-fun b!3031333 () Bool)

(declare-fun res!1247269 () Bool)

(assert (=> b!3031333 (=> (not res!1247269) (not e!1901154))))

(assert (=> b!3031333 (= res!1247269 (isEmpty!19468 (tail!4959 s!11993)))))

(declare-fun b!3031334 () Bool)

(declare-fun e!1901157 () Bool)

(declare-fun lt!1046048 () Bool)

(assert (=> b!3031334 (= e!1901157 (= lt!1046048 call!206490))))

(declare-fun b!3031335 () Bool)

(declare-fun res!1247270 () Bool)

(declare-fun e!1901156 () Bool)

(assert (=> b!3031335 (=> res!1247270 e!1901156)))

(assert (=> b!3031335 (= res!1247270 e!1901154)))

(declare-fun res!1247267 () Bool)

(assert (=> b!3031335 (=> (not res!1247267) (not e!1901154))))

(assert (=> b!3031335 (= res!1247267 lt!1046048)))

(declare-fun b!3031336 () Bool)

(declare-fun e!1901155 () Bool)

(assert (=> b!3031336 (= e!1901155 (not lt!1046048))))

(declare-fun b!3031337 () Bool)

(declare-fun e!1901159 () Bool)

(assert (=> b!3031337 (= e!1901159 (matchR!4309 (derivativeStep!2674 (simplify!398 r!17423) (head!6733 s!11993)) (tail!4959 s!11993)))))

(declare-fun b!3031338 () Bool)

(declare-fun res!1247273 () Bool)

(assert (=> b!3031338 (=> res!1247273 e!1901156)))

(assert (=> b!3031338 (= res!1247273 (not ((_ is ElementMatch!9427) (simplify!398 r!17423))))))

(assert (=> b!3031338 (= e!1901155 e!1901156)))

(declare-fun bm!206485 () Bool)

(assert (=> bm!206485 (= call!206490 (isEmpty!19468 s!11993))))

(declare-fun d!851113 () Bool)

(assert (=> d!851113 e!1901157))

(declare-fun c!500869 () Bool)

(assert (=> d!851113 (= c!500869 ((_ is EmptyExpr!9427) (simplify!398 r!17423)))))

(assert (=> d!851113 (= lt!1046048 e!1901159)))

(declare-fun c!500871 () Bool)

(assert (=> d!851113 (= c!500871 (isEmpty!19468 s!11993))))

(assert (=> d!851113 (validRegex!4160 (simplify!398 r!17423))))

(assert (=> d!851113 (= (matchR!4309 (simplify!398 r!17423) s!11993) lt!1046048)))

(declare-fun b!3031339 () Bool)

(assert (=> b!3031339 (= e!1901159 (nullable!3077 (simplify!398 r!17423)))))

(declare-fun b!3031340 () Bool)

(assert (=> b!3031340 (= e!1901154 (= (head!6733 s!11993) (c!500683 (simplify!398 r!17423))))))

(declare-fun b!3031341 () Bool)

(assert (=> b!3031341 (= e!1901156 e!1901153)))

(declare-fun res!1247268 () Bool)

(assert (=> b!3031341 (=> (not res!1247268) (not e!1901153))))

(assert (=> b!3031341 (= res!1247268 (not lt!1046048))))

(declare-fun b!3031342 () Bool)

(assert (=> b!3031342 (= e!1901157 e!1901155)))

(declare-fun c!500870 () Bool)

(assert (=> b!3031342 (= c!500870 ((_ is EmptyLang!9427) (simplify!398 r!17423)))))

(assert (= (and d!851113 c!500871) b!3031339))

(assert (= (and d!851113 (not c!500871)) b!3031337))

(assert (= (and d!851113 c!500869) b!3031334))

(assert (= (and d!851113 (not c!500869)) b!3031342))

(assert (= (and b!3031342 c!500870) b!3031336))

(assert (= (and b!3031342 (not c!500870)) b!3031338))

(assert (= (and b!3031338 (not res!1247273)) b!3031335))

(assert (= (and b!3031335 res!1247267) b!3031332))

(assert (= (and b!3031332 res!1247271) b!3031333))

(assert (= (and b!3031333 res!1247269) b!3031340))

(assert (= (and b!3031335 (not res!1247270)) b!3031341))

(assert (= (and b!3031341 res!1247268) b!3031329))

(assert (= (and b!3031329 (not res!1247272)) b!3031331))

(assert (= (and b!3031331 (not res!1247274)) b!3031330))

(assert (= (or b!3031334 b!3031329 b!3031332) bm!206485))

(assert (=> b!3031337 m!3367697))

(assert (=> b!3031337 m!3367663))

(assert (=> b!3031337 m!3367697))

(declare-fun m!3367931 () Bool)

(assert (=> b!3031337 m!3367931))

(assert (=> b!3031337 m!3367701))

(assert (=> b!3031337 m!3367931))

(assert (=> b!3031337 m!3367701))

(declare-fun m!3367933 () Bool)

(assert (=> b!3031337 m!3367933))

(assert (=> b!3031331 m!3367701))

(assert (=> b!3031331 m!3367701))

(assert (=> b!3031331 m!3367705))

(assert (=> d!851113 m!3367707))

(assert (=> d!851113 m!3367663))

(declare-fun m!3367935 () Bool)

(assert (=> d!851113 m!3367935))

(assert (=> bm!206485 m!3367707))

(assert (=> b!3031333 m!3367701))

(assert (=> b!3031333 m!3367701))

(assert (=> b!3031333 m!3367705))

(assert (=> b!3031330 m!3367697))

(assert (=> b!3031340 m!3367697))

(assert (=> b!3031339 m!3367663))

(declare-fun m!3367937 () Bool)

(assert (=> b!3031339 m!3367937))

(assert (=> b!3030673 d!851113))

(declare-fun lt!1046054 () Regex!9427)

(declare-fun c!500873 () Bool)

(declare-fun lt!1046053 () Regex!9427)

(declare-fun bm!206486 () Bool)

(declare-fun call!206495 () Bool)

(assert (=> bm!206486 (= call!206495 (isEmptyExpr!502 (ite c!500873 lt!1046054 lt!1046053)))))

(declare-fun b!3031343 () Bool)

(declare-fun c!500872 () Bool)

(assert (=> b!3031343 (= c!500872 ((_ is EmptyExpr!9427) r!17423))))

(declare-fun e!1901162 () Regex!9427)

(declare-fun e!1901171 () Regex!9427)

(assert (=> b!3031343 (= e!1901162 e!1901171)))

(declare-fun b!3031344 () Bool)

(declare-fun e!1901164 () Regex!9427)

(assert (=> b!3031344 (= e!1901164 e!1901162)))

(declare-fun c!500879 () Bool)

(assert (=> b!3031344 (= c!500879 ((_ is ElementMatch!9427) r!17423))))

(declare-fun b!3031345 () Bool)

(assert (=> b!3031345 (= e!1901164 EmptyLang!9427)))

(declare-fun b!3031346 () Bool)

(declare-fun e!1901160 () Regex!9427)

(declare-fun e!1901167 () Regex!9427)

(assert (=> b!3031346 (= e!1901160 e!1901167)))

(declare-fun lt!1046049 () Regex!9427)

(declare-fun call!206492 () Regex!9427)

(assert (=> b!3031346 (= lt!1046049 call!206492)))

(declare-fun lt!1046050 () Regex!9427)

(declare-fun call!206497 () Regex!9427)

(assert (=> b!3031346 (= lt!1046050 call!206497)))

(declare-fun c!500877 () Bool)

(declare-fun call!206493 () Bool)

(assert (=> b!3031346 (= c!500877 call!206493)))

(declare-fun b!3031347 () Bool)

(declare-fun e!1901161 () Regex!9427)

(assert (=> b!3031347 (= e!1901161 lt!1046049)))

(declare-fun b!3031348 () Bool)

(declare-fun c!500875 () Bool)

(declare-fun e!1901165 () Bool)

(assert (=> b!3031348 (= c!500875 e!1901165)))

(declare-fun res!1247276 () Bool)

(assert (=> b!3031348 (=> res!1247276 e!1901165)))

(declare-fun call!206496 () Bool)

(assert (=> b!3031348 (= res!1247276 call!206496)))

(declare-fun call!206491 () Regex!9427)

(assert (=> b!3031348 (= lt!1046054 call!206491)))

(declare-fun e!1901166 () Regex!9427)

(declare-fun e!1901169 () Regex!9427)

(assert (=> b!3031348 (= e!1901166 e!1901169)))

(declare-fun b!3031349 () Bool)

(declare-fun e!1901163 () Regex!9427)

(assert (=> b!3031349 (= e!1901163 EmptyLang!9427)))

(declare-fun b!3031350 () Bool)

(declare-fun e!1901168 () Bool)

(assert (=> b!3031350 (= e!1901168 call!206493)))

(declare-fun b!3031351 () Bool)

(declare-fun e!1901173 () Bool)

(declare-fun lt!1046051 () Regex!9427)

(assert (=> b!3031351 (= e!1901173 (= (nullable!3077 lt!1046051) (nullable!3077 r!17423)))))

(declare-fun b!3031352 () Bool)

(assert (=> b!3031352 (= e!1901169 (Star!9427 lt!1046054))))

(declare-fun b!3031353 () Bool)

(assert (=> b!3031353 (= e!1901171 EmptyExpr!9427)))

(declare-fun b!3031354 () Bool)

(declare-fun e!1901172 () Regex!9427)

(declare-fun lt!1046052 () Regex!9427)

(assert (=> b!3031354 (= e!1901172 lt!1046052)))

(declare-fun bm!206488 () Bool)

(declare-fun c!500880 () Bool)

(assert (=> bm!206488 (= call!206493 (isEmptyLang!496 (ite c!500880 lt!1046049 lt!1046053)))))

(declare-fun b!3031355 () Bool)

(assert (=> b!3031355 (= c!500880 ((_ is Union!9427) r!17423))))

(assert (=> b!3031355 (= e!1901166 e!1901160)))

(declare-fun b!3031356 () Bool)

(assert (=> b!3031356 (= e!1901172 (Concat!14748 lt!1046052 lt!1046053))))

(declare-fun bm!206489 () Bool)

(assert (=> bm!206489 (= call!206492 call!206491)))

(declare-fun b!3031357 () Bool)

(declare-fun e!1901170 () Regex!9427)

(assert (=> b!3031357 (= e!1901170 e!1901172)))

(declare-fun c!500881 () Bool)

(assert (=> b!3031357 (= c!500881 call!206495)))

(declare-fun b!3031358 () Bool)

(assert (=> b!3031358 (= e!1901171 e!1901166)))

(assert (=> b!3031358 (= c!500873 ((_ is Star!9427) r!17423))))

(declare-fun b!3031359 () Bool)

(assert (=> b!3031359 (= e!1901160 e!1901163)))

(assert (=> b!3031359 (= lt!1046052 call!206497)))

(assert (=> b!3031359 (= lt!1046053 call!206492)))

(declare-fun res!1247277 () Bool)

(declare-fun call!206494 () Bool)

(assert (=> b!3031359 (= res!1247277 call!206494)))

(assert (=> b!3031359 (=> res!1247277 e!1901168)))

(declare-fun c!500878 () Bool)

(assert (=> b!3031359 (= c!500878 e!1901168)))

(declare-fun b!3031360 () Bool)

(declare-fun c!500882 () Bool)

(assert (=> b!3031360 (= c!500882 call!206494)))

(assert (=> b!3031360 (= e!1901167 e!1901161)))

(declare-fun b!3031361 () Bool)

(assert (=> b!3031361 (= e!1901165 call!206495)))

(declare-fun b!3031362 () Bool)

(assert (=> b!3031362 (= e!1901170 lt!1046053)))

(declare-fun bm!206490 () Bool)

(assert (=> bm!206490 (= call!206494 call!206496)))

(declare-fun b!3031363 () Bool)

(assert (=> b!3031363 (= e!1901162 r!17423)))

(declare-fun b!3031364 () Bool)

(assert (=> b!3031364 (= e!1901161 (Union!9427 lt!1046049 lt!1046050))))

(declare-fun b!3031365 () Bool)

(declare-fun c!500876 () Bool)

(assert (=> b!3031365 (= c!500876 (isEmptyExpr!502 lt!1046052))))

(assert (=> b!3031365 (= e!1901163 e!1901170)))

(declare-fun bm!206487 () Bool)

(assert (=> bm!206487 (= call!206496 (isEmptyLang!496 (ite c!500873 lt!1046054 (ite c!500880 lt!1046050 lt!1046052))))))

(declare-fun d!851115 () Bool)

(assert (=> d!851115 e!1901173))

(declare-fun res!1247275 () Bool)

(assert (=> d!851115 (=> (not res!1247275) (not e!1901173))))

(assert (=> d!851115 (= res!1247275 (validRegex!4160 lt!1046051))))

(assert (=> d!851115 (= lt!1046051 e!1901164)))

(declare-fun c!500874 () Bool)

(assert (=> d!851115 (= c!500874 ((_ is EmptyLang!9427) r!17423))))

(assert (=> d!851115 (validRegex!4160 r!17423)))

(assert (=> d!851115 (= (simplify!398 r!17423) lt!1046051)))

(declare-fun b!3031366 () Bool)

(assert (=> b!3031366 (= e!1901169 EmptyExpr!9427)))

(declare-fun bm!206491 () Bool)

(assert (=> bm!206491 (= call!206491 (simplify!398 (ite c!500873 (reg!9756 r!17423) (ite c!500880 (regOne!19367 r!17423) (regTwo!19366 r!17423)))))))

(declare-fun bm!206492 () Bool)

(assert (=> bm!206492 (= call!206497 (simplify!398 (ite c!500880 (regTwo!19367 r!17423) (regOne!19366 r!17423))))))

(declare-fun b!3031367 () Bool)

(assert (=> b!3031367 (= e!1901167 lt!1046050)))

(assert (= (and d!851115 c!500874) b!3031345))

(assert (= (and d!851115 (not c!500874)) b!3031344))

(assert (= (and b!3031344 c!500879) b!3031363))

(assert (= (and b!3031344 (not c!500879)) b!3031343))

(assert (= (and b!3031343 c!500872) b!3031353))

(assert (= (and b!3031343 (not c!500872)) b!3031358))

(assert (= (and b!3031358 c!500873) b!3031348))

(assert (= (and b!3031358 (not c!500873)) b!3031355))

(assert (= (and b!3031348 (not res!1247276)) b!3031361))

(assert (= (and b!3031348 c!500875) b!3031366))

(assert (= (and b!3031348 (not c!500875)) b!3031352))

(assert (= (and b!3031355 c!500880) b!3031346))

(assert (= (and b!3031355 (not c!500880)) b!3031359))

(assert (= (and b!3031346 c!500877) b!3031367))

(assert (= (and b!3031346 (not c!500877)) b!3031360))

(assert (= (and b!3031360 c!500882) b!3031347))

(assert (= (and b!3031360 (not c!500882)) b!3031364))

(assert (= (and b!3031359 (not res!1247277)) b!3031350))

(assert (= (and b!3031359 c!500878) b!3031349))

(assert (= (and b!3031359 (not c!500878)) b!3031365))

(assert (= (and b!3031365 c!500876) b!3031362))

(assert (= (and b!3031365 (not c!500876)) b!3031357))

(assert (= (and b!3031357 c!500881) b!3031354))

(assert (= (and b!3031357 (not c!500881)) b!3031356))

(assert (= (or b!3031346 b!3031359) bm!206489))

(assert (= (or b!3031346 b!3031359) bm!206492))

(assert (= (or b!3031346 b!3031350) bm!206488))

(assert (= (or b!3031360 b!3031359) bm!206490))

(assert (= (or b!3031361 b!3031357) bm!206486))

(assert (= (or b!3031348 bm!206489) bm!206491))

(assert (= (or b!3031348 bm!206490) bm!206487))

(assert (= (and d!851115 res!1247275) b!3031351))

(declare-fun m!3367939 () Bool)

(assert (=> bm!206487 m!3367939))

(declare-fun m!3367941 () Bool)

(assert (=> b!3031365 m!3367941))

(declare-fun m!3367943 () Bool)

(assert (=> d!851115 m!3367943))

(assert (=> d!851115 m!3367693))

(declare-fun m!3367945 () Bool)

(assert (=> b!3031351 m!3367945))

(assert (=> b!3031351 m!3367927))

(declare-fun m!3367947 () Bool)

(assert (=> bm!206492 m!3367947))

(declare-fun m!3367949 () Bool)

(assert (=> bm!206488 m!3367949))

(declare-fun m!3367951 () Bool)

(assert (=> bm!206491 m!3367951))

(declare-fun m!3367953 () Bool)

(assert (=> bm!206486 m!3367953))

(assert (=> b!3030673 d!851115))

(declare-fun b!3031368 () Bool)

(declare-fun e!1901174 () Bool)

(declare-fun e!1901179 () Bool)

(assert (=> b!3031368 (= e!1901174 e!1901179)))

(declare-fun res!1247283 () Bool)

(assert (=> b!3031368 (=> res!1247283 e!1901179)))

(declare-fun call!206498 () Bool)

(assert (=> b!3031368 (= res!1247283 call!206498)))

(declare-fun b!3031369 () Bool)

(assert (=> b!3031369 (= e!1901179 (not (= (head!6733 s!11993) (c!500683 (Union!9427 lt!1045957 lt!1045954)))))))

(declare-fun b!3031370 () Bool)

(declare-fun res!1247285 () Bool)

(assert (=> b!3031370 (=> res!1247285 e!1901179)))

(assert (=> b!3031370 (= res!1247285 (not (isEmpty!19468 (tail!4959 s!11993))))))

(declare-fun b!3031371 () Bool)

(declare-fun res!1247282 () Bool)

(declare-fun e!1901175 () Bool)

(assert (=> b!3031371 (=> (not res!1247282) (not e!1901175))))

(assert (=> b!3031371 (= res!1247282 (not call!206498))))

(declare-fun b!3031372 () Bool)

(declare-fun res!1247280 () Bool)

(assert (=> b!3031372 (=> (not res!1247280) (not e!1901175))))

(assert (=> b!3031372 (= res!1247280 (isEmpty!19468 (tail!4959 s!11993)))))

(declare-fun b!3031373 () Bool)

(declare-fun e!1901178 () Bool)

(declare-fun lt!1046055 () Bool)

(assert (=> b!3031373 (= e!1901178 (= lt!1046055 call!206498))))

(declare-fun b!3031374 () Bool)

(declare-fun res!1247281 () Bool)

(declare-fun e!1901177 () Bool)

(assert (=> b!3031374 (=> res!1247281 e!1901177)))

(assert (=> b!3031374 (= res!1247281 e!1901175)))

(declare-fun res!1247278 () Bool)

(assert (=> b!3031374 (=> (not res!1247278) (not e!1901175))))

(assert (=> b!3031374 (= res!1247278 lt!1046055)))

(declare-fun b!3031375 () Bool)

(declare-fun e!1901176 () Bool)

(assert (=> b!3031375 (= e!1901176 (not lt!1046055))))

(declare-fun e!1901180 () Bool)

(declare-fun b!3031376 () Bool)

(assert (=> b!3031376 (= e!1901180 (matchR!4309 (derivativeStep!2674 (Union!9427 lt!1045957 lt!1045954) (head!6733 s!11993)) (tail!4959 s!11993)))))

(declare-fun b!3031377 () Bool)

(declare-fun res!1247284 () Bool)

(assert (=> b!3031377 (=> res!1247284 e!1901177)))

(assert (=> b!3031377 (= res!1247284 (not ((_ is ElementMatch!9427) (Union!9427 lt!1045957 lt!1045954))))))

(assert (=> b!3031377 (= e!1901176 e!1901177)))

(declare-fun bm!206493 () Bool)

(assert (=> bm!206493 (= call!206498 (isEmpty!19468 s!11993))))

(declare-fun d!851117 () Bool)

(assert (=> d!851117 e!1901178))

(declare-fun c!500883 () Bool)

(assert (=> d!851117 (= c!500883 ((_ is EmptyExpr!9427) (Union!9427 lt!1045957 lt!1045954)))))

(assert (=> d!851117 (= lt!1046055 e!1901180)))

(declare-fun c!500885 () Bool)

(assert (=> d!851117 (= c!500885 (isEmpty!19468 s!11993))))

(assert (=> d!851117 (validRegex!4160 (Union!9427 lt!1045957 lt!1045954))))

(assert (=> d!851117 (= (matchR!4309 (Union!9427 lt!1045957 lt!1045954) s!11993) lt!1046055)))

(declare-fun b!3031378 () Bool)

(assert (=> b!3031378 (= e!1901180 (nullable!3077 (Union!9427 lt!1045957 lt!1045954)))))

(declare-fun b!3031379 () Bool)

(assert (=> b!3031379 (= e!1901175 (= (head!6733 s!11993) (c!500683 (Union!9427 lt!1045957 lt!1045954))))))

(declare-fun b!3031380 () Bool)

(assert (=> b!3031380 (= e!1901177 e!1901174)))

(declare-fun res!1247279 () Bool)

(assert (=> b!3031380 (=> (not res!1247279) (not e!1901174))))

(assert (=> b!3031380 (= res!1247279 (not lt!1046055))))

(declare-fun b!3031381 () Bool)

(assert (=> b!3031381 (= e!1901178 e!1901176)))

(declare-fun c!500884 () Bool)

(assert (=> b!3031381 (= c!500884 ((_ is EmptyLang!9427) (Union!9427 lt!1045957 lt!1045954)))))

(assert (= (and d!851117 c!500885) b!3031378))

(assert (= (and d!851117 (not c!500885)) b!3031376))

(assert (= (and d!851117 c!500883) b!3031373))

(assert (= (and d!851117 (not c!500883)) b!3031381))

(assert (= (and b!3031381 c!500884) b!3031375))

(assert (= (and b!3031381 (not c!500884)) b!3031377))

(assert (= (and b!3031377 (not res!1247284)) b!3031374))

(assert (= (and b!3031374 res!1247278) b!3031371))

(assert (= (and b!3031371 res!1247282) b!3031372))

(assert (= (and b!3031372 res!1247280) b!3031379))

(assert (= (and b!3031374 (not res!1247281)) b!3031380))

(assert (= (and b!3031380 res!1247279) b!3031368))

(assert (= (and b!3031368 (not res!1247283)) b!3031370))

(assert (= (and b!3031370 (not res!1247285)) b!3031369))

(assert (= (or b!3031373 b!3031368 b!3031371) bm!206493))

(assert (=> b!3031376 m!3367697))

(assert (=> b!3031376 m!3367697))

(declare-fun m!3367955 () Bool)

(assert (=> b!3031376 m!3367955))

(assert (=> b!3031376 m!3367701))

(assert (=> b!3031376 m!3367955))

(assert (=> b!3031376 m!3367701))

(declare-fun m!3367957 () Bool)

(assert (=> b!3031376 m!3367957))

(assert (=> b!3031370 m!3367701))

(assert (=> b!3031370 m!3367701))

(assert (=> b!3031370 m!3367705))

(assert (=> d!851117 m!3367707))

(declare-fun m!3367959 () Bool)

(assert (=> d!851117 m!3367959))

(assert (=> bm!206493 m!3367707))

(assert (=> b!3031372 m!3367701))

(assert (=> b!3031372 m!3367701))

(assert (=> b!3031372 m!3367705))

(assert (=> b!3031369 m!3367697))

(assert (=> b!3031379 m!3367697))

(declare-fun m!3367961 () Bool)

(assert (=> b!3031378 m!3367961))

(assert (=> b!3030673 d!851117))

(declare-fun d!851119 () Bool)

(assert (=> d!851119 (matchR!4309 (Union!9427 lt!1045957 lt!1045954) s!11993)))

(declare-fun lt!1046058 () Unit!49277)

(declare-fun choose!17979 (Regex!9427 Regex!9427 List!35292) Unit!49277)

(assert (=> d!851119 (= lt!1046058 (choose!17979 lt!1045957 lt!1045954 s!11993))))

(declare-fun e!1901183 () Bool)

(assert (=> d!851119 e!1901183))

(declare-fun res!1247288 () Bool)

(assert (=> d!851119 (=> (not res!1247288) (not e!1901183))))

(assert (=> d!851119 (= res!1247288 (validRegex!4160 lt!1045957))))

(assert (=> d!851119 (= (lemmaRegexAcceptsStringThenUnionWithAnotherAcceptsToo!74 lt!1045957 lt!1045954 s!11993) lt!1046058)))

(declare-fun b!3031384 () Bool)

(assert (=> b!3031384 (= e!1901183 (validRegex!4160 lt!1045954))))

(assert (= (and d!851119 res!1247288) b!3031384))

(assert (=> d!851119 m!3367667))

(declare-fun m!3367963 () Bool)

(assert (=> d!851119 m!3367963))

(assert (=> d!851119 m!3367673))

(assert (=> b!3031384 m!3367695))

(assert (=> b!3030673 d!851119))

(declare-fun b!3031398 () Bool)

(declare-fun e!1901186 () Bool)

(declare-fun tp!960659 () Bool)

(declare-fun tp!960658 () Bool)

(assert (=> b!3031398 (= e!1901186 (and tp!960659 tp!960658))))

(declare-fun b!3031397 () Bool)

(declare-fun tp!960662 () Bool)

(assert (=> b!3031397 (= e!1901186 tp!960662)))

(declare-fun b!3031395 () Bool)

(assert (=> b!3031395 (= e!1901186 tp_is_empty!16417)))

(declare-fun b!3031396 () Bool)

(declare-fun tp!960660 () Bool)

(declare-fun tp!960661 () Bool)

(assert (=> b!3031396 (= e!1901186 (and tp!960660 tp!960661))))

(assert (=> b!3030663 (= tp!960607 e!1901186)))

(assert (= (and b!3030663 ((_ is ElementMatch!9427) (regOne!19366 r!17423))) b!3031395))

(assert (= (and b!3030663 ((_ is Concat!14748) (regOne!19366 r!17423))) b!3031396))

(assert (= (and b!3030663 ((_ is Star!9427) (regOne!19366 r!17423))) b!3031397))

(assert (= (and b!3030663 ((_ is Union!9427) (regOne!19366 r!17423))) b!3031398))

(declare-fun b!3031402 () Bool)

(declare-fun e!1901187 () Bool)

(declare-fun tp!960664 () Bool)

(declare-fun tp!960663 () Bool)

(assert (=> b!3031402 (= e!1901187 (and tp!960664 tp!960663))))

(declare-fun b!3031401 () Bool)

(declare-fun tp!960667 () Bool)

(assert (=> b!3031401 (= e!1901187 tp!960667)))

(declare-fun b!3031399 () Bool)

(assert (=> b!3031399 (= e!1901187 tp_is_empty!16417)))

(declare-fun b!3031400 () Bool)

(declare-fun tp!960665 () Bool)

(declare-fun tp!960666 () Bool)

(assert (=> b!3031400 (= e!1901187 (and tp!960665 tp!960666))))

(assert (=> b!3030663 (= tp!960608 e!1901187)))

(assert (= (and b!3030663 ((_ is ElementMatch!9427) (regTwo!19366 r!17423))) b!3031399))

(assert (= (and b!3030663 ((_ is Concat!14748) (regTwo!19366 r!17423))) b!3031400))

(assert (= (and b!3030663 ((_ is Star!9427) (regTwo!19366 r!17423))) b!3031401))

(assert (= (and b!3030663 ((_ is Union!9427) (regTwo!19366 r!17423))) b!3031402))

(declare-fun b!3031407 () Bool)

(declare-fun e!1901190 () Bool)

(declare-fun tp!960670 () Bool)

(assert (=> b!3031407 (= e!1901190 (and tp_is_empty!16417 tp!960670))))

(assert (=> b!3030665 (= tp!960604 e!1901190)))

(assert (= (and b!3030665 ((_ is Cons!35168) (t!234357 s!11993))) b!3031407))

(declare-fun b!3031411 () Bool)

(declare-fun e!1901191 () Bool)

(declare-fun tp!960672 () Bool)

(declare-fun tp!960671 () Bool)

(assert (=> b!3031411 (= e!1901191 (and tp!960672 tp!960671))))

(declare-fun b!3031410 () Bool)

(declare-fun tp!960675 () Bool)

(assert (=> b!3031410 (= e!1901191 tp!960675)))

(declare-fun b!3031408 () Bool)

(assert (=> b!3031408 (= e!1901191 tp_is_empty!16417)))

(declare-fun b!3031409 () Bool)

(declare-fun tp!960673 () Bool)

(declare-fun tp!960674 () Bool)

(assert (=> b!3031409 (= e!1901191 (and tp!960673 tp!960674))))

(assert (=> b!3030672 (= tp!960606 e!1901191)))

(assert (= (and b!3030672 ((_ is ElementMatch!9427) (regOne!19367 r!17423))) b!3031408))

(assert (= (and b!3030672 ((_ is Concat!14748) (regOne!19367 r!17423))) b!3031409))

(assert (= (and b!3030672 ((_ is Star!9427) (regOne!19367 r!17423))) b!3031410))

(assert (= (and b!3030672 ((_ is Union!9427) (regOne!19367 r!17423))) b!3031411))

(declare-fun b!3031415 () Bool)

(declare-fun e!1901192 () Bool)

(declare-fun tp!960677 () Bool)

(declare-fun tp!960676 () Bool)

(assert (=> b!3031415 (= e!1901192 (and tp!960677 tp!960676))))

(declare-fun b!3031414 () Bool)

(declare-fun tp!960680 () Bool)

(assert (=> b!3031414 (= e!1901192 tp!960680)))

(declare-fun b!3031412 () Bool)

(assert (=> b!3031412 (= e!1901192 tp_is_empty!16417)))

(declare-fun b!3031413 () Bool)

(declare-fun tp!960678 () Bool)

(declare-fun tp!960679 () Bool)

(assert (=> b!3031413 (= e!1901192 (and tp!960678 tp!960679))))

(assert (=> b!3030672 (= tp!960605 e!1901192)))

(assert (= (and b!3030672 ((_ is ElementMatch!9427) (regTwo!19367 r!17423))) b!3031412))

(assert (= (and b!3030672 ((_ is Concat!14748) (regTwo!19367 r!17423))) b!3031413))

(assert (= (and b!3030672 ((_ is Star!9427) (regTwo!19367 r!17423))) b!3031414))

(assert (= (and b!3030672 ((_ is Union!9427) (regTwo!19367 r!17423))) b!3031415))

(declare-fun b!3031419 () Bool)

(declare-fun e!1901193 () Bool)

(declare-fun tp!960682 () Bool)

(declare-fun tp!960681 () Bool)

(assert (=> b!3031419 (= e!1901193 (and tp!960682 tp!960681))))

(declare-fun b!3031418 () Bool)

(declare-fun tp!960685 () Bool)

(assert (=> b!3031418 (= e!1901193 tp!960685)))

(declare-fun b!3031416 () Bool)

(assert (=> b!3031416 (= e!1901193 tp_is_empty!16417)))

(declare-fun b!3031417 () Bool)

(declare-fun tp!960683 () Bool)

(declare-fun tp!960684 () Bool)

(assert (=> b!3031417 (= e!1901193 (and tp!960683 tp!960684))))

(assert (=> b!3030667 (= tp!960609 e!1901193)))

(assert (= (and b!3030667 ((_ is ElementMatch!9427) (reg!9756 r!17423))) b!3031416))

(assert (= (and b!3030667 ((_ is Concat!14748) (reg!9756 r!17423))) b!3031417))

(assert (= (and b!3030667 ((_ is Star!9427) (reg!9756 r!17423))) b!3031418))

(assert (= (and b!3030667 ((_ is Union!9427) (reg!9756 r!17423))) b!3031419))

(check-sat (not b!3031370) (not bm!206453) (not bm!206447) (not b!3031401) (not bm!206482) (not bm!206493) (not d!851119) (not bm!206483) (not b!3031415) (not bm!206467) (not b!3031309) (not b!3030763) (not bm!206439) (not b!3031333) (not b!3031398) (not bm!206486) (not d!851083) (not b!3031092) (not b!3030741) (not d!851067) (not b!3030828) (not b!3031400) (not b!3031402) (not d!851085) (not b!3030734) (not bm!206440) (not b!3030826) (not bm!206487) (not b!3030762) (not b!3031061) (not bm!206491) (not bm!206484) (not d!851053) (not b!3031304) (not b!3031337) (not b!3031323) (not b!3031093) (not b!3031326) (not bm!206465) (not b!3031317) tp_is_empty!16417 (not b!3031411) (not b!3031418) (not bm!206387) (not b!3031410) (not b!3030815) (not b!3031084) (not d!851109) (not b!3031369) (not bm!206370) (not b!3031414) (not b!3030732) (not b!3031379) (not bm!206390) (not b!3031372) (not bm!206488) (not b!3031330) (not b!3031365) (not b!3031413) (not d!851089) (not b!3031378) (not b!3030820) (not b!3031339) (not bm!206485) (not bm!206445) (not b!3031325) (not b!3031331) (not b!3031376) (not b!3031409) (not b!3031160) (not d!851117) (not b!3031090) (not bm!206454) (not b!3031075) (not b!3030819) (not d!851057) (not b!3031417) (not b!3030829) (not d!851111) (not b!3031396) (not bm!206492) (not b!3030740) (not b!3030731) (not b!3031340) (not bm!206435) (not b!3031316) (not b!3031086) (not b!3031384) (not b!3031004) (not bm!206389) (not bm!206450) (not d!851113) (not b!3030822) (not bm!206449) (not b!3030738) (not b!3031319) (not bm!206448) (not b!3031018) (not b!3031050) (not bm!206436) (not b!3031419) (not d!851065) (not bm!206455) (not b!3031351) (not b!3031083) (not bm!206434) (not b!3031407) (not b!3031397) (not d!851115))
(check-sat)
(get-model)

(declare-fun d!851121 () Bool)

(assert (=> d!851121 (= (head!6733 s!11993) (h!40588 s!11993))))

(assert (=> b!3031083 d!851121))

(declare-fun b!3031420 () Bool)

(declare-fun e!1901196 () Bool)

(declare-fun call!206501 () Bool)

(assert (=> b!3031420 (= e!1901196 call!206501)))

(declare-fun b!3031421 () Bool)

(declare-fun res!1247289 () Bool)

(declare-fun e!1901197 () Bool)

(assert (=> b!3031421 (=> res!1247289 e!1901197)))

(assert (=> b!3031421 (= res!1247289 (not ((_ is Concat!14748) (ite c!500713 (reg!9756 r!17423) (ite c!500712 (regOne!19367 r!17423) (regTwo!19366 r!17423))))))))

(declare-fun e!1901195 () Bool)

(assert (=> b!3031421 (= e!1901195 e!1901197)))

(declare-fun b!3031422 () Bool)

(declare-fun e!1901200 () Bool)

(assert (=> b!3031422 (= e!1901200 e!1901195)))

(declare-fun c!500886 () Bool)

(assert (=> b!3031422 (= c!500886 ((_ is Union!9427) (ite c!500713 (reg!9756 r!17423) (ite c!500712 (regOne!19367 r!17423) (regTwo!19366 r!17423)))))))

(declare-fun b!3031423 () Bool)

(declare-fun e!1901194 () Bool)

(assert (=> b!3031423 (= e!1901194 e!1901200)))

(declare-fun c!500887 () Bool)

(assert (=> b!3031423 (= c!500887 ((_ is Star!9427) (ite c!500713 (reg!9756 r!17423) (ite c!500712 (regOne!19367 r!17423) (regTwo!19366 r!17423)))))))

(declare-fun b!3031424 () Bool)

(declare-fun res!1247291 () Bool)

(assert (=> b!3031424 (=> (not res!1247291) (not e!1901196))))

(declare-fun call!206500 () Bool)

(assert (=> b!3031424 (= res!1247291 call!206500)))

(assert (=> b!3031424 (= e!1901195 e!1901196)))

(declare-fun b!3031425 () Bool)

(declare-fun e!1901198 () Bool)

(declare-fun call!206499 () Bool)

(assert (=> b!3031425 (= e!1901198 call!206499)))

(declare-fun b!3031426 () Bool)

(assert (=> b!3031426 (= e!1901200 e!1901198)))

(declare-fun res!1247290 () Bool)

(assert (=> b!3031426 (= res!1247290 (not (nullable!3077 (reg!9756 (ite c!500713 (reg!9756 r!17423) (ite c!500712 (regOne!19367 r!17423) (regTwo!19366 r!17423)))))))))

(assert (=> b!3031426 (=> (not res!1247290) (not e!1901198))))

(declare-fun bm!206495 () Bool)

(assert (=> bm!206495 (= call!206500 call!206499)))

(declare-fun bm!206496 () Bool)

(assert (=> bm!206496 (= call!206501 (validRegex!4160 (ite c!500886 (regTwo!19367 (ite c!500713 (reg!9756 r!17423) (ite c!500712 (regOne!19367 r!17423) (regTwo!19366 r!17423)))) (regOne!19366 (ite c!500713 (reg!9756 r!17423) (ite c!500712 (regOne!19367 r!17423) (regTwo!19366 r!17423)))))))))

(declare-fun b!3031427 () Bool)

(declare-fun e!1901199 () Bool)

(assert (=> b!3031427 (= e!1901199 call!206500)))

(declare-fun b!3031428 () Bool)

(assert (=> b!3031428 (= e!1901197 e!1901199)))

(declare-fun res!1247293 () Bool)

(assert (=> b!3031428 (=> (not res!1247293) (not e!1901199))))

(assert (=> b!3031428 (= res!1247293 call!206501)))

(declare-fun bm!206494 () Bool)

(assert (=> bm!206494 (= call!206499 (validRegex!4160 (ite c!500887 (reg!9756 (ite c!500713 (reg!9756 r!17423) (ite c!500712 (regOne!19367 r!17423) (regTwo!19366 r!17423)))) (ite c!500886 (regOne!19367 (ite c!500713 (reg!9756 r!17423) (ite c!500712 (regOne!19367 r!17423) (regTwo!19366 r!17423)))) (regTwo!19366 (ite c!500713 (reg!9756 r!17423) (ite c!500712 (regOne!19367 r!17423) (regTwo!19366 r!17423))))))))))

(declare-fun d!851123 () Bool)

(declare-fun res!1247292 () Bool)

(assert (=> d!851123 (=> res!1247292 e!1901194)))

(assert (=> d!851123 (= res!1247292 ((_ is ElementMatch!9427) (ite c!500713 (reg!9756 r!17423) (ite c!500712 (regOne!19367 r!17423) (regTwo!19366 r!17423)))))))

(assert (=> d!851123 (= (validRegex!4160 (ite c!500713 (reg!9756 r!17423) (ite c!500712 (regOne!19367 r!17423) (regTwo!19366 r!17423)))) e!1901194)))

(assert (= (and d!851123 (not res!1247292)) b!3031423))

(assert (= (and b!3031423 c!500887) b!3031426))

(assert (= (and b!3031423 (not c!500887)) b!3031422))

(assert (= (and b!3031426 res!1247290) b!3031425))

(assert (= (and b!3031422 c!500886) b!3031424))

(assert (= (and b!3031422 (not c!500886)) b!3031421))

(assert (= (and b!3031424 res!1247291) b!3031420))

(assert (= (and b!3031421 (not res!1247289)) b!3031428))

(assert (= (and b!3031428 res!1247293) b!3031427))

(assert (= (or b!3031424 b!3031427) bm!206495))

(assert (= (or b!3031420 b!3031428) bm!206496))

(assert (= (or b!3031425 bm!206495) bm!206494))

(declare-fun m!3367965 () Bool)

(assert (=> b!3031426 m!3367965))

(declare-fun m!3367967 () Bool)

(assert (=> bm!206496 m!3367967))

(declare-fun m!3367969 () Bool)

(assert (=> bm!206494 m!3367969))

(assert (=> bm!206387 d!851123))

(declare-fun d!851125 () Bool)

(assert (=> d!851125 (= (isEmptyExpr!502 lt!1046019) ((_ is EmptyExpr!9427) lt!1046019))))

(assert (=> b!3031075 d!851125))

(declare-fun d!851127 () Bool)

(assert (=> d!851127 (= (isEmpty!19468 s!11993) ((_ is Nil!35168) s!11993))))

(assert (=> d!851053 d!851127))

(declare-fun b!3031429 () Bool)

(declare-fun e!1901203 () Bool)

(declare-fun call!206504 () Bool)

(assert (=> b!3031429 (= e!1901203 call!206504)))

(declare-fun b!3031430 () Bool)

(declare-fun res!1247294 () Bool)

(declare-fun e!1901204 () Bool)

(assert (=> b!3031430 (=> res!1247294 e!1901204)))

(assert (=> b!3031430 (= res!1247294 (not ((_ is Concat!14748) (regOne!19367 r!17423))))))

(declare-fun e!1901202 () Bool)

(assert (=> b!3031430 (= e!1901202 e!1901204)))

(declare-fun b!3031431 () Bool)

(declare-fun e!1901207 () Bool)

(assert (=> b!3031431 (= e!1901207 e!1901202)))

(declare-fun c!500888 () Bool)

(assert (=> b!3031431 (= c!500888 ((_ is Union!9427) (regOne!19367 r!17423)))))

(declare-fun b!3031432 () Bool)

(declare-fun e!1901201 () Bool)

(assert (=> b!3031432 (= e!1901201 e!1901207)))

(declare-fun c!500889 () Bool)

(assert (=> b!3031432 (= c!500889 ((_ is Star!9427) (regOne!19367 r!17423)))))

(declare-fun b!3031433 () Bool)

(declare-fun res!1247296 () Bool)

(assert (=> b!3031433 (=> (not res!1247296) (not e!1901203))))

(declare-fun call!206503 () Bool)

(assert (=> b!3031433 (= res!1247296 call!206503)))

(assert (=> b!3031433 (= e!1901202 e!1901203)))

(declare-fun b!3031434 () Bool)

(declare-fun e!1901205 () Bool)

(declare-fun call!206502 () Bool)

(assert (=> b!3031434 (= e!1901205 call!206502)))

(declare-fun b!3031435 () Bool)

(assert (=> b!3031435 (= e!1901207 e!1901205)))

(declare-fun res!1247295 () Bool)

(assert (=> b!3031435 (= res!1247295 (not (nullable!3077 (reg!9756 (regOne!19367 r!17423)))))))

(assert (=> b!3031435 (=> (not res!1247295) (not e!1901205))))

(declare-fun bm!206498 () Bool)

(assert (=> bm!206498 (= call!206503 call!206502)))

(declare-fun bm!206499 () Bool)

(assert (=> bm!206499 (= call!206504 (validRegex!4160 (ite c!500888 (regTwo!19367 (regOne!19367 r!17423)) (regOne!19366 (regOne!19367 r!17423)))))))

(declare-fun b!3031436 () Bool)

(declare-fun e!1901206 () Bool)

(assert (=> b!3031436 (= e!1901206 call!206503)))

(declare-fun b!3031437 () Bool)

(assert (=> b!3031437 (= e!1901204 e!1901206)))

(declare-fun res!1247298 () Bool)

(assert (=> b!3031437 (=> (not res!1247298) (not e!1901206))))

(assert (=> b!3031437 (= res!1247298 call!206504)))

(declare-fun bm!206497 () Bool)

(assert (=> bm!206497 (= call!206502 (validRegex!4160 (ite c!500889 (reg!9756 (regOne!19367 r!17423)) (ite c!500888 (regOne!19367 (regOne!19367 r!17423)) (regTwo!19366 (regOne!19367 r!17423))))))))

(declare-fun d!851129 () Bool)

(declare-fun res!1247297 () Bool)

(assert (=> d!851129 (=> res!1247297 e!1901201)))

(assert (=> d!851129 (= res!1247297 ((_ is ElementMatch!9427) (regOne!19367 r!17423)))))

(assert (=> d!851129 (= (validRegex!4160 (regOne!19367 r!17423)) e!1901201)))

(assert (= (and d!851129 (not res!1247297)) b!3031432))

(assert (= (and b!3031432 c!500889) b!3031435))

(assert (= (and b!3031432 (not c!500889)) b!3031431))

(assert (= (and b!3031435 res!1247295) b!3031434))

(assert (= (and b!3031431 c!500888) b!3031433))

(assert (= (and b!3031431 (not c!500888)) b!3031430))

(assert (= (and b!3031433 res!1247296) b!3031429))

(assert (= (and b!3031430 (not res!1247294)) b!3031437))

(assert (= (and b!3031437 res!1247298) b!3031436))

(assert (= (or b!3031433 b!3031436) bm!206498))

(assert (= (or b!3031429 b!3031437) bm!206499))

(assert (= (or b!3031434 bm!206498) bm!206497))

(declare-fun m!3367971 () Bool)

(assert (=> b!3031435 m!3367971))

(declare-fun m!3367973 () Bool)

(assert (=> bm!206499 m!3367973))

(declare-fun m!3367975 () Bool)

(assert (=> bm!206497 m!3367975))

(assert (=> d!851053 d!851129))

(assert (=> d!851109 d!851127))

(assert (=> d!851109 d!851061))

(declare-fun d!851131 () Bool)

(assert (=> d!851131 (= (isEmptyLang!496 (ite c!500873 lt!1046054 (ite c!500880 lt!1046050 lt!1046052))) ((_ is EmptyLang!9427) (ite c!500873 lt!1046054 (ite c!500880 lt!1046050 lt!1046052))))))

(assert (=> bm!206487 d!851131))

(assert (=> d!851117 d!851127))

(declare-fun b!3031438 () Bool)

(declare-fun e!1901210 () Bool)

(declare-fun call!206507 () Bool)

(assert (=> b!3031438 (= e!1901210 call!206507)))

(declare-fun b!3031439 () Bool)

(declare-fun res!1247299 () Bool)

(declare-fun e!1901211 () Bool)

(assert (=> b!3031439 (=> res!1247299 e!1901211)))

(assert (=> b!3031439 (= res!1247299 (not ((_ is Concat!14748) (Union!9427 lt!1045957 lt!1045954))))))

(declare-fun e!1901209 () Bool)

(assert (=> b!3031439 (= e!1901209 e!1901211)))

(declare-fun b!3031440 () Bool)

(declare-fun e!1901214 () Bool)

(assert (=> b!3031440 (= e!1901214 e!1901209)))

(declare-fun c!500890 () Bool)

(assert (=> b!3031440 (= c!500890 ((_ is Union!9427) (Union!9427 lt!1045957 lt!1045954)))))

(declare-fun b!3031441 () Bool)

(declare-fun e!1901208 () Bool)

(assert (=> b!3031441 (= e!1901208 e!1901214)))

(declare-fun c!500891 () Bool)

(assert (=> b!3031441 (= c!500891 ((_ is Star!9427) (Union!9427 lt!1045957 lt!1045954)))))

(declare-fun b!3031442 () Bool)

(declare-fun res!1247301 () Bool)

(assert (=> b!3031442 (=> (not res!1247301) (not e!1901210))))

(declare-fun call!206506 () Bool)

(assert (=> b!3031442 (= res!1247301 call!206506)))

(assert (=> b!3031442 (= e!1901209 e!1901210)))

(declare-fun b!3031443 () Bool)

(declare-fun e!1901212 () Bool)

(declare-fun call!206505 () Bool)

(assert (=> b!3031443 (= e!1901212 call!206505)))

(declare-fun b!3031444 () Bool)

(assert (=> b!3031444 (= e!1901214 e!1901212)))

(declare-fun res!1247300 () Bool)

(assert (=> b!3031444 (= res!1247300 (not (nullable!3077 (reg!9756 (Union!9427 lt!1045957 lt!1045954)))))))

(assert (=> b!3031444 (=> (not res!1247300) (not e!1901212))))

(declare-fun bm!206501 () Bool)

(assert (=> bm!206501 (= call!206506 call!206505)))

(declare-fun bm!206502 () Bool)

(assert (=> bm!206502 (= call!206507 (validRegex!4160 (ite c!500890 (regTwo!19367 (Union!9427 lt!1045957 lt!1045954)) (regOne!19366 (Union!9427 lt!1045957 lt!1045954)))))))

(declare-fun b!3031445 () Bool)

(declare-fun e!1901213 () Bool)

(assert (=> b!3031445 (= e!1901213 call!206506)))

(declare-fun b!3031446 () Bool)

(assert (=> b!3031446 (= e!1901211 e!1901213)))

(declare-fun res!1247303 () Bool)

(assert (=> b!3031446 (=> (not res!1247303) (not e!1901213))))

(assert (=> b!3031446 (= res!1247303 call!206507)))

(declare-fun bm!206500 () Bool)

(assert (=> bm!206500 (= call!206505 (validRegex!4160 (ite c!500891 (reg!9756 (Union!9427 lt!1045957 lt!1045954)) (ite c!500890 (regOne!19367 (Union!9427 lt!1045957 lt!1045954)) (regTwo!19366 (Union!9427 lt!1045957 lt!1045954))))))))

(declare-fun d!851133 () Bool)

(declare-fun res!1247302 () Bool)

(assert (=> d!851133 (=> res!1247302 e!1901208)))

(assert (=> d!851133 (= res!1247302 ((_ is ElementMatch!9427) (Union!9427 lt!1045957 lt!1045954)))))

(assert (=> d!851133 (= (validRegex!4160 (Union!9427 lt!1045957 lt!1045954)) e!1901208)))

(assert (= (and d!851133 (not res!1247302)) b!3031441))

(assert (= (and b!3031441 c!500891) b!3031444))

(assert (= (and b!3031441 (not c!500891)) b!3031440))

(assert (= (and b!3031444 res!1247300) b!3031443))

(assert (= (and b!3031440 c!500890) b!3031442))

(assert (= (and b!3031440 (not c!500890)) b!3031439))

(assert (= (and b!3031442 res!1247301) b!3031438))

(assert (= (and b!3031439 (not res!1247299)) b!3031446))

(assert (= (and b!3031446 res!1247303) b!3031445))

(assert (= (or b!3031442 b!3031445) bm!206501))

(assert (= (or b!3031438 b!3031446) bm!206502))

(assert (= (or b!3031443 bm!206501) bm!206500))

(declare-fun m!3367977 () Bool)

(assert (=> b!3031444 m!3367977))

(declare-fun m!3367979 () Bool)

(assert (=> bm!206502 m!3367979))

(declare-fun m!3367981 () Bool)

(assert (=> bm!206500 m!3367981))

(assert (=> d!851117 d!851133))

(declare-fun b!3031447 () Bool)

(declare-fun e!1901215 () Bool)

(declare-fun e!1901220 () Bool)

(assert (=> b!3031447 (= e!1901215 e!1901220)))

(declare-fun res!1247309 () Bool)

(assert (=> b!3031447 (=> res!1247309 e!1901220)))

(declare-fun call!206508 () Bool)

(assert (=> b!3031447 (= res!1247309 call!206508)))

(declare-fun b!3031448 () Bool)

(assert (=> b!3031448 (= e!1901220 (not (= (head!6733 (tail!4959 s!11993)) (c!500683 (derivativeStep!2674 (simplify!398 r!17423) (head!6733 s!11993))))))))

(declare-fun b!3031449 () Bool)

(declare-fun res!1247311 () Bool)

(assert (=> b!3031449 (=> res!1247311 e!1901220)))

(assert (=> b!3031449 (= res!1247311 (not (isEmpty!19468 (tail!4959 (tail!4959 s!11993)))))))

(declare-fun b!3031450 () Bool)

(declare-fun res!1247308 () Bool)

(declare-fun e!1901216 () Bool)

(assert (=> b!3031450 (=> (not res!1247308) (not e!1901216))))

(assert (=> b!3031450 (= res!1247308 (not call!206508))))

(declare-fun b!3031451 () Bool)

(declare-fun res!1247306 () Bool)

(assert (=> b!3031451 (=> (not res!1247306) (not e!1901216))))

(assert (=> b!3031451 (= res!1247306 (isEmpty!19468 (tail!4959 (tail!4959 s!11993))))))

(declare-fun b!3031452 () Bool)

(declare-fun e!1901219 () Bool)

(declare-fun lt!1046059 () Bool)

(assert (=> b!3031452 (= e!1901219 (= lt!1046059 call!206508))))

(declare-fun b!3031453 () Bool)

(declare-fun res!1247307 () Bool)

(declare-fun e!1901218 () Bool)

(assert (=> b!3031453 (=> res!1247307 e!1901218)))

(assert (=> b!3031453 (= res!1247307 e!1901216)))

(declare-fun res!1247304 () Bool)

(assert (=> b!3031453 (=> (not res!1247304) (not e!1901216))))

(assert (=> b!3031453 (= res!1247304 lt!1046059)))

(declare-fun b!3031454 () Bool)

(declare-fun e!1901217 () Bool)

(assert (=> b!3031454 (= e!1901217 (not lt!1046059))))

(declare-fun b!3031455 () Bool)

(declare-fun e!1901221 () Bool)

(assert (=> b!3031455 (= e!1901221 (matchR!4309 (derivativeStep!2674 (derivativeStep!2674 (simplify!398 r!17423) (head!6733 s!11993)) (head!6733 (tail!4959 s!11993))) (tail!4959 (tail!4959 s!11993))))))

(declare-fun b!3031456 () Bool)

(declare-fun res!1247310 () Bool)

(assert (=> b!3031456 (=> res!1247310 e!1901218)))

(assert (=> b!3031456 (= res!1247310 (not ((_ is ElementMatch!9427) (derivativeStep!2674 (simplify!398 r!17423) (head!6733 s!11993)))))))

(assert (=> b!3031456 (= e!1901217 e!1901218)))

(declare-fun bm!206503 () Bool)

(assert (=> bm!206503 (= call!206508 (isEmpty!19468 (tail!4959 s!11993)))))

(declare-fun d!851135 () Bool)

(assert (=> d!851135 e!1901219))

(declare-fun c!500892 () Bool)

(assert (=> d!851135 (= c!500892 ((_ is EmptyExpr!9427) (derivativeStep!2674 (simplify!398 r!17423) (head!6733 s!11993))))))

(assert (=> d!851135 (= lt!1046059 e!1901221)))

(declare-fun c!500894 () Bool)

(assert (=> d!851135 (= c!500894 (isEmpty!19468 (tail!4959 s!11993)))))

(assert (=> d!851135 (validRegex!4160 (derivativeStep!2674 (simplify!398 r!17423) (head!6733 s!11993)))))

(assert (=> d!851135 (= (matchR!4309 (derivativeStep!2674 (simplify!398 r!17423) (head!6733 s!11993)) (tail!4959 s!11993)) lt!1046059)))

(declare-fun b!3031457 () Bool)

(assert (=> b!3031457 (= e!1901221 (nullable!3077 (derivativeStep!2674 (simplify!398 r!17423) (head!6733 s!11993))))))

(declare-fun b!3031458 () Bool)

(assert (=> b!3031458 (= e!1901216 (= (head!6733 (tail!4959 s!11993)) (c!500683 (derivativeStep!2674 (simplify!398 r!17423) (head!6733 s!11993)))))))

(declare-fun b!3031459 () Bool)

(assert (=> b!3031459 (= e!1901218 e!1901215)))

(declare-fun res!1247305 () Bool)

(assert (=> b!3031459 (=> (not res!1247305) (not e!1901215))))

(assert (=> b!3031459 (= res!1247305 (not lt!1046059))))

(declare-fun b!3031460 () Bool)

(assert (=> b!3031460 (= e!1901219 e!1901217)))

(declare-fun c!500893 () Bool)

(assert (=> b!3031460 (= c!500893 ((_ is EmptyLang!9427) (derivativeStep!2674 (simplify!398 r!17423) (head!6733 s!11993))))))

(assert (= (and d!851135 c!500894) b!3031457))

(assert (= (and d!851135 (not c!500894)) b!3031455))

(assert (= (and d!851135 c!500892) b!3031452))

(assert (= (and d!851135 (not c!500892)) b!3031460))

(assert (= (and b!3031460 c!500893) b!3031454))

(assert (= (and b!3031460 (not c!500893)) b!3031456))

(assert (= (and b!3031456 (not res!1247310)) b!3031453))

(assert (= (and b!3031453 res!1247304) b!3031450))

(assert (= (and b!3031450 res!1247308) b!3031451))

(assert (= (and b!3031451 res!1247306) b!3031458))

(assert (= (and b!3031453 (not res!1247307)) b!3031459))

(assert (= (and b!3031459 res!1247305) b!3031447))

(assert (= (and b!3031447 (not res!1247309)) b!3031449))

(assert (= (and b!3031449 (not res!1247311)) b!3031448))

(assert (= (or b!3031452 b!3031447 b!3031450) bm!206503))

(assert (=> b!3031455 m!3367701))

(declare-fun m!3367983 () Bool)

(assert (=> b!3031455 m!3367983))

(assert (=> b!3031455 m!3367931))

(assert (=> b!3031455 m!3367983))

(declare-fun m!3367985 () Bool)

(assert (=> b!3031455 m!3367985))

(assert (=> b!3031455 m!3367701))

(declare-fun m!3367987 () Bool)

(assert (=> b!3031455 m!3367987))

(assert (=> b!3031455 m!3367985))

(assert (=> b!3031455 m!3367987))

(declare-fun m!3367989 () Bool)

(assert (=> b!3031455 m!3367989))

(assert (=> b!3031449 m!3367701))

(assert (=> b!3031449 m!3367987))

(assert (=> b!3031449 m!3367987))

(declare-fun m!3367991 () Bool)

(assert (=> b!3031449 m!3367991))

(assert (=> d!851135 m!3367701))

(assert (=> d!851135 m!3367705))

(assert (=> d!851135 m!3367931))

(declare-fun m!3367993 () Bool)

(assert (=> d!851135 m!3367993))

(assert (=> bm!206503 m!3367701))

(assert (=> bm!206503 m!3367705))

(assert (=> b!3031451 m!3367701))

(assert (=> b!3031451 m!3367987))

(assert (=> b!3031451 m!3367987))

(assert (=> b!3031451 m!3367991))

(assert (=> b!3031448 m!3367701))

(assert (=> b!3031448 m!3367983))

(assert (=> b!3031458 m!3367701))

(assert (=> b!3031458 m!3367983))

(assert (=> b!3031457 m!3367931))

(declare-fun m!3367995 () Bool)

(assert (=> b!3031457 m!3367995))

(assert (=> b!3031337 d!851135))

(declare-fun b!3031481 () Bool)

(declare-fun e!1901235 () Regex!9427)

(declare-fun e!1901234 () Regex!9427)

(assert (=> b!3031481 (= e!1901235 e!1901234)))

(declare-fun c!500906 () Bool)

(assert (=> b!3031481 (= c!500906 ((_ is ElementMatch!9427) (simplify!398 r!17423)))))

(declare-fun call!206518 () Regex!9427)

(declare-fun c!500908 () Bool)

(declare-fun c!500905 () Bool)

(declare-fun bm!206512 () Bool)

(assert (=> bm!206512 (= call!206518 (derivativeStep!2674 (ite c!500905 (regTwo!19367 (simplify!398 r!17423)) (ite c!500908 (reg!9756 (simplify!398 r!17423)) (regOne!19366 (simplify!398 r!17423)))) (head!6733 s!11993)))))

(declare-fun bm!206513 () Bool)

(declare-fun call!206517 () Regex!9427)

(assert (=> bm!206513 (= call!206517 (derivativeStep!2674 (ite c!500905 (regOne!19367 (simplify!398 r!17423)) (regTwo!19366 (simplify!398 r!17423))) (head!6733 s!11993)))))

(declare-fun b!3031482 () Bool)

(declare-fun e!1901233 () Regex!9427)

(declare-fun call!206519 () Regex!9427)

(assert (=> b!3031482 (= e!1901233 (Concat!14748 call!206519 (simplify!398 r!17423)))))

(declare-fun bm!206514 () Bool)

(assert (=> bm!206514 (= call!206519 call!206518)))

(declare-fun b!3031483 () Bool)

(declare-fun c!500909 () Bool)

(assert (=> b!3031483 (= c!500909 (nullable!3077 (regOne!19366 (simplify!398 r!17423))))))

(declare-fun e!1901236 () Regex!9427)

(assert (=> b!3031483 (= e!1901233 e!1901236)))

(declare-fun b!3031484 () Bool)

(assert (=> b!3031484 (= c!500905 ((_ is Union!9427) (simplify!398 r!17423)))))

(declare-fun e!1901232 () Regex!9427)

(assert (=> b!3031484 (= e!1901234 e!1901232)))

(declare-fun b!3031485 () Bool)

(assert (=> b!3031485 (= e!1901235 EmptyLang!9427)))

(declare-fun b!3031486 () Bool)

(declare-fun call!206520 () Regex!9427)

(assert (=> b!3031486 (= e!1901236 (Union!9427 (Concat!14748 call!206520 (regTwo!19366 (simplify!398 r!17423))) EmptyLang!9427))))

(declare-fun d!851137 () Bool)

(declare-fun lt!1046062 () Regex!9427)

(assert (=> d!851137 (validRegex!4160 lt!1046062)))

(assert (=> d!851137 (= lt!1046062 e!1901235)))

(declare-fun c!500907 () Bool)

(assert (=> d!851137 (= c!500907 (or ((_ is EmptyExpr!9427) (simplify!398 r!17423)) ((_ is EmptyLang!9427) (simplify!398 r!17423))))))

(assert (=> d!851137 (validRegex!4160 (simplify!398 r!17423))))

(assert (=> d!851137 (= (derivativeStep!2674 (simplify!398 r!17423) (head!6733 s!11993)) lt!1046062)))

(declare-fun b!3031487 () Bool)

(assert (=> b!3031487 (= e!1901236 (Union!9427 (Concat!14748 call!206520 (regTwo!19366 (simplify!398 r!17423))) call!206517))))

(declare-fun b!3031488 () Bool)

(assert (=> b!3031488 (= e!1901232 e!1901233)))

(assert (=> b!3031488 (= c!500908 ((_ is Star!9427) (simplify!398 r!17423)))))

(declare-fun b!3031489 () Bool)

(assert (=> b!3031489 (= e!1901234 (ite (= (head!6733 s!11993) (c!500683 (simplify!398 r!17423))) EmptyExpr!9427 EmptyLang!9427))))

(declare-fun b!3031490 () Bool)

(assert (=> b!3031490 (= e!1901232 (Union!9427 call!206517 call!206518))))

(declare-fun bm!206515 () Bool)

(assert (=> bm!206515 (= call!206520 call!206519)))

(assert (= (and d!851137 c!500907) b!3031485))

(assert (= (and d!851137 (not c!500907)) b!3031481))

(assert (= (and b!3031481 c!500906) b!3031489))

(assert (= (and b!3031481 (not c!500906)) b!3031484))

(assert (= (and b!3031484 c!500905) b!3031490))

(assert (= (and b!3031484 (not c!500905)) b!3031488))

(assert (= (and b!3031488 c!500908) b!3031482))

(assert (= (and b!3031488 (not c!500908)) b!3031483))

(assert (= (and b!3031483 c!500909) b!3031487))

(assert (= (and b!3031483 (not c!500909)) b!3031486))

(assert (= (or b!3031487 b!3031486) bm!206515))

(assert (= (or b!3031482 bm!206515) bm!206514))

(assert (= (or b!3031490 bm!206514) bm!206512))

(assert (= (or b!3031490 b!3031487) bm!206513))

(assert (=> bm!206512 m!3367697))

(declare-fun m!3367997 () Bool)

(assert (=> bm!206512 m!3367997))

(assert (=> bm!206513 m!3367697))

(declare-fun m!3367999 () Bool)

(assert (=> bm!206513 m!3367999))

(declare-fun m!3368001 () Bool)

(assert (=> b!3031483 m!3368001))

(declare-fun m!3368003 () Bool)

(assert (=> d!851137 m!3368003))

(assert (=> d!851137 m!3367663))

(assert (=> d!851137 m!3367935))

(assert (=> b!3031337 d!851137))

(assert (=> b!3031337 d!851121))

(declare-fun d!851139 () Bool)

(assert (=> d!851139 (= (tail!4959 s!11993) (t!234357 s!11993))))

(assert (=> b!3031337 d!851139))

(assert (=> b!3031384 d!851097))

(declare-fun d!851141 () Bool)

(declare-fun nullableFct!876 (Regex!9427) Bool)

(assert (=> d!851141 (= (nullable!3077 lt!1046018) (nullableFct!876 lt!1046018))))

(declare-fun bs!530836 () Bool)

(assert (= bs!530836 d!851141))

(declare-fun m!3368005 () Bool)

(assert (=> bs!530836 m!3368005))

(assert (=> b!3031061 d!851141))

(declare-fun d!851143 () Bool)

(assert (=> d!851143 (= (nullable!3077 (regTwo!19367 r!17423)) (nullableFct!876 (regTwo!19367 r!17423)))))

(declare-fun bs!530837 () Bool)

(assert (= bs!530837 d!851143))

(declare-fun m!3368007 () Bool)

(assert (=> bs!530837 m!3368007))

(assert (=> b!3031061 d!851143))

(declare-fun d!851145 () Bool)

(assert (=> d!851145 (= (isEmpty!19468 (tail!4959 s!11993)) ((_ is Nil!35168) (tail!4959 s!11993)))))

(assert (=> b!3031372 d!851145))

(assert (=> b!3031372 d!851139))

(assert (=> b!3031340 d!851121))

(declare-fun call!206525 () Bool)

(declare-fun lt!1046068 () Regex!9427)

(declare-fun lt!1046067 () Regex!9427)

(declare-fun c!500911 () Bool)

(declare-fun bm!206516 () Bool)

(assert (=> bm!206516 (= call!206525 (isEmptyExpr!502 (ite c!500911 lt!1046068 lt!1046067)))))

(declare-fun c!500910 () Bool)

(declare-fun b!3031491 () Bool)

(assert (=> b!3031491 (= c!500910 ((_ is EmptyExpr!9427) (ite c!500787 (reg!9756 (regOne!19367 r!17423)) (ite c!500794 (regOne!19367 (regOne!19367 r!17423)) (regTwo!19366 (regOne!19367 r!17423))))))))

(declare-fun e!1901239 () Regex!9427)

(declare-fun e!1901248 () Regex!9427)

(assert (=> b!3031491 (= e!1901239 e!1901248)))

(declare-fun b!3031492 () Bool)

(declare-fun e!1901241 () Regex!9427)

(assert (=> b!3031492 (= e!1901241 e!1901239)))

(declare-fun c!500917 () Bool)

(assert (=> b!3031492 (= c!500917 ((_ is ElementMatch!9427) (ite c!500787 (reg!9756 (regOne!19367 r!17423)) (ite c!500794 (regOne!19367 (regOne!19367 r!17423)) (regTwo!19366 (regOne!19367 r!17423))))))))

(declare-fun b!3031493 () Bool)

(assert (=> b!3031493 (= e!1901241 EmptyLang!9427)))

(declare-fun b!3031494 () Bool)

(declare-fun e!1901237 () Regex!9427)

(declare-fun e!1901244 () Regex!9427)

(assert (=> b!3031494 (= e!1901237 e!1901244)))

(declare-fun lt!1046063 () Regex!9427)

(declare-fun call!206522 () Regex!9427)

(assert (=> b!3031494 (= lt!1046063 call!206522)))

(declare-fun lt!1046064 () Regex!9427)

(declare-fun call!206527 () Regex!9427)

(assert (=> b!3031494 (= lt!1046064 call!206527)))

(declare-fun c!500915 () Bool)

(declare-fun call!206523 () Bool)

(assert (=> b!3031494 (= c!500915 call!206523)))

(declare-fun b!3031495 () Bool)

(declare-fun e!1901238 () Regex!9427)

(assert (=> b!3031495 (= e!1901238 lt!1046063)))

(declare-fun b!3031496 () Bool)

(declare-fun c!500913 () Bool)

(declare-fun e!1901242 () Bool)

(assert (=> b!3031496 (= c!500913 e!1901242)))

(declare-fun res!1247313 () Bool)

(assert (=> b!3031496 (=> res!1247313 e!1901242)))

(declare-fun call!206526 () Bool)

(assert (=> b!3031496 (= res!1247313 call!206526)))

(declare-fun call!206521 () Regex!9427)

(assert (=> b!3031496 (= lt!1046068 call!206521)))

(declare-fun e!1901243 () Regex!9427)

(declare-fun e!1901246 () Regex!9427)

(assert (=> b!3031496 (= e!1901243 e!1901246)))

(declare-fun b!3031497 () Bool)

(declare-fun e!1901240 () Regex!9427)

(assert (=> b!3031497 (= e!1901240 EmptyLang!9427)))

(declare-fun b!3031498 () Bool)

(declare-fun e!1901245 () Bool)

(assert (=> b!3031498 (= e!1901245 call!206523)))

(declare-fun e!1901250 () Bool)

(declare-fun b!3031499 () Bool)

(declare-fun lt!1046065 () Regex!9427)

(assert (=> b!3031499 (= e!1901250 (= (nullable!3077 lt!1046065) (nullable!3077 (ite c!500787 (reg!9756 (regOne!19367 r!17423)) (ite c!500794 (regOne!19367 (regOne!19367 r!17423)) (regTwo!19366 (regOne!19367 r!17423)))))))))

(declare-fun b!3031500 () Bool)

(assert (=> b!3031500 (= e!1901246 (Star!9427 lt!1046068))))

(declare-fun b!3031501 () Bool)

(assert (=> b!3031501 (= e!1901248 EmptyExpr!9427)))

(declare-fun b!3031502 () Bool)

(declare-fun e!1901249 () Regex!9427)

(declare-fun lt!1046066 () Regex!9427)

(assert (=> b!3031502 (= e!1901249 lt!1046066)))

(declare-fun c!500918 () Bool)

(declare-fun bm!206518 () Bool)

(assert (=> bm!206518 (= call!206523 (isEmptyLang!496 (ite c!500918 lt!1046063 lt!1046067)))))

(declare-fun b!3031503 () Bool)

(assert (=> b!3031503 (= c!500918 ((_ is Union!9427) (ite c!500787 (reg!9756 (regOne!19367 r!17423)) (ite c!500794 (regOne!19367 (regOne!19367 r!17423)) (regTwo!19366 (regOne!19367 r!17423))))))))

(assert (=> b!3031503 (= e!1901243 e!1901237)))

(declare-fun b!3031504 () Bool)

(assert (=> b!3031504 (= e!1901249 (Concat!14748 lt!1046066 lt!1046067))))

(declare-fun bm!206519 () Bool)

(assert (=> bm!206519 (= call!206522 call!206521)))

(declare-fun b!3031505 () Bool)

(declare-fun e!1901247 () Regex!9427)

(assert (=> b!3031505 (= e!1901247 e!1901249)))

(declare-fun c!500919 () Bool)

(assert (=> b!3031505 (= c!500919 call!206525)))

(declare-fun b!3031506 () Bool)

(assert (=> b!3031506 (= e!1901248 e!1901243)))

(assert (=> b!3031506 (= c!500911 ((_ is Star!9427) (ite c!500787 (reg!9756 (regOne!19367 r!17423)) (ite c!500794 (regOne!19367 (regOne!19367 r!17423)) (regTwo!19366 (regOne!19367 r!17423))))))))

(declare-fun b!3031507 () Bool)

(assert (=> b!3031507 (= e!1901237 e!1901240)))

(assert (=> b!3031507 (= lt!1046066 call!206527)))

(assert (=> b!3031507 (= lt!1046067 call!206522)))

(declare-fun res!1247314 () Bool)

(declare-fun call!206524 () Bool)

(assert (=> b!3031507 (= res!1247314 call!206524)))

(assert (=> b!3031507 (=> res!1247314 e!1901245)))

(declare-fun c!500916 () Bool)

(assert (=> b!3031507 (= c!500916 e!1901245)))

(declare-fun b!3031508 () Bool)

(declare-fun c!500920 () Bool)

(assert (=> b!3031508 (= c!500920 call!206524)))

(assert (=> b!3031508 (= e!1901244 e!1901238)))

(declare-fun b!3031509 () Bool)

(assert (=> b!3031509 (= e!1901242 call!206525)))

(declare-fun b!3031510 () Bool)

(assert (=> b!3031510 (= e!1901247 lt!1046067)))

(declare-fun bm!206520 () Bool)

(assert (=> bm!206520 (= call!206524 call!206526)))

(declare-fun b!3031511 () Bool)

(assert (=> b!3031511 (= e!1901239 (ite c!500787 (reg!9756 (regOne!19367 r!17423)) (ite c!500794 (regOne!19367 (regOne!19367 r!17423)) (regTwo!19366 (regOne!19367 r!17423)))))))

(declare-fun b!3031512 () Bool)

(assert (=> b!3031512 (= e!1901238 (Union!9427 lt!1046063 lt!1046064))))

(declare-fun b!3031513 () Bool)

(declare-fun c!500914 () Bool)

(assert (=> b!3031513 (= c!500914 (isEmptyExpr!502 lt!1046066))))

(assert (=> b!3031513 (= e!1901240 e!1901247)))

(declare-fun bm!206517 () Bool)

(assert (=> bm!206517 (= call!206526 (isEmptyLang!496 (ite c!500911 lt!1046068 (ite c!500918 lt!1046064 lt!1046066))))))

(declare-fun d!851147 () Bool)

(assert (=> d!851147 e!1901250))

(declare-fun res!1247312 () Bool)

(assert (=> d!851147 (=> (not res!1247312) (not e!1901250))))

(assert (=> d!851147 (= res!1247312 (validRegex!4160 lt!1046065))))

(assert (=> d!851147 (= lt!1046065 e!1901241)))

(declare-fun c!500912 () Bool)

(assert (=> d!851147 (= c!500912 ((_ is EmptyLang!9427) (ite c!500787 (reg!9756 (regOne!19367 r!17423)) (ite c!500794 (regOne!19367 (regOne!19367 r!17423)) (regTwo!19366 (regOne!19367 r!17423))))))))

(assert (=> d!851147 (validRegex!4160 (ite c!500787 (reg!9756 (regOne!19367 r!17423)) (ite c!500794 (regOne!19367 (regOne!19367 r!17423)) (regTwo!19366 (regOne!19367 r!17423)))))))

(assert (=> d!851147 (= (simplify!398 (ite c!500787 (reg!9756 (regOne!19367 r!17423)) (ite c!500794 (regOne!19367 (regOne!19367 r!17423)) (regTwo!19366 (regOne!19367 r!17423))))) lt!1046065)))

(declare-fun b!3031514 () Bool)

(assert (=> b!3031514 (= e!1901246 EmptyExpr!9427)))

(declare-fun bm!206521 () Bool)

(assert (=> bm!206521 (= call!206521 (simplify!398 (ite c!500911 (reg!9756 (ite c!500787 (reg!9756 (regOne!19367 r!17423)) (ite c!500794 (regOne!19367 (regOne!19367 r!17423)) (regTwo!19366 (regOne!19367 r!17423))))) (ite c!500918 (regOne!19367 (ite c!500787 (reg!9756 (regOne!19367 r!17423)) (ite c!500794 (regOne!19367 (regOne!19367 r!17423)) (regTwo!19366 (regOne!19367 r!17423))))) (regTwo!19366 (ite c!500787 (reg!9756 (regOne!19367 r!17423)) (ite c!500794 (regOne!19367 (regOne!19367 r!17423)) (regTwo!19366 (regOne!19367 r!17423)))))))))))

(declare-fun bm!206522 () Bool)

(assert (=> bm!206522 (= call!206527 (simplify!398 (ite c!500918 (regTwo!19367 (ite c!500787 (reg!9756 (regOne!19367 r!17423)) (ite c!500794 (regOne!19367 (regOne!19367 r!17423)) (regTwo!19366 (regOne!19367 r!17423))))) (regOne!19366 (ite c!500787 (reg!9756 (regOne!19367 r!17423)) (ite c!500794 (regOne!19367 (regOne!19367 r!17423)) (regTwo!19366 (regOne!19367 r!17423))))))))))

(declare-fun b!3031515 () Bool)

(assert (=> b!3031515 (= e!1901244 lt!1046064)))

(assert (= (and d!851147 c!500912) b!3031493))

(assert (= (and d!851147 (not c!500912)) b!3031492))

(assert (= (and b!3031492 c!500917) b!3031511))

(assert (= (and b!3031492 (not c!500917)) b!3031491))

(assert (= (and b!3031491 c!500910) b!3031501))

(assert (= (and b!3031491 (not c!500910)) b!3031506))

(assert (= (and b!3031506 c!500911) b!3031496))

(assert (= (and b!3031506 (not c!500911)) b!3031503))

(assert (= (and b!3031496 (not res!1247313)) b!3031509))

(assert (= (and b!3031496 c!500913) b!3031514))

(assert (= (and b!3031496 (not c!500913)) b!3031500))

(assert (= (and b!3031503 c!500918) b!3031494))

(assert (= (and b!3031503 (not c!500918)) b!3031507))

(assert (= (and b!3031494 c!500915) b!3031515))

(assert (= (and b!3031494 (not c!500915)) b!3031508))

(assert (= (and b!3031508 c!500920) b!3031495))

(assert (= (and b!3031508 (not c!500920)) b!3031512))

(assert (= (and b!3031507 (not res!1247314)) b!3031498))

(assert (= (and b!3031507 c!500916) b!3031497))

(assert (= (and b!3031507 (not c!500916)) b!3031513))

(assert (= (and b!3031513 c!500914) b!3031510))

(assert (= (and b!3031513 (not c!500914)) b!3031505))

(assert (= (and b!3031505 c!500919) b!3031502))

(assert (= (and b!3031505 (not c!500919)) b!3031504))

(assert (= (or b!3031494 b!3031507) bm!206519))

(assert (= (or b!3031494 b!3031507) bm!206522))

(assert (= (or b!3031494 b!3031498) bm!206518))

(assert (= (or b!3031508 b!3031507) bm!206520))

(assert (= (or b!3031509 b!3031505) bm!206516))

(assert (= (or b!3031496 bm!206519) bm!206521))

(assert (= (or b!3031496 bm!206520) bm!206517))

(assert (= (and d!851147 res!1247312) b!3031499))

(declare-fun m!3368009 () Bool)

(assert (=> bm!206517 m!3368009))

(declare-fun m!3368011 () Bool)

(assert (=> b!3031513 m!3368011))

(declare-fun m!3368013 () Bool)

(assert (=> d!851147 m!3368013))

(declare-fun m!3368015 () Bool)

(assert (=> d!851147 m!3368015))

(declare-fun m!3368017 () Bool)

(assert (=> b!3031499 m!3368017))

(declare-fun m!3368019 () Bool)

(assert (=> b!3031499 m!3368019))

(declare-fun m!3368021 () Bool)

(assert (=> bm!206522 m!3368021))

(declare-fun m!3368023 () Bool)

(assert (=> bm!206518 m!3368023))

(declare-fun m!3368025 () Bool)

(assert (=> bm!206521 m!3368025))

(declare-fun m!3368027 () Bool)

(assert (=> bm!206516 m!3368027))

(assert (=> bm!206439 d!851147))

(assert (=> b!3031317 d!851145))

(assert (=> b!3031317 d!851139))

(declare-fun d!851149 () Bool)

(assert (=> d!851149 (= (nullable!3077 lt!1046011) (nullableFct!876 lt!1046011))))

(declare-fun bs!530838 () Bool)

(assert (= bs!530838 d!851149))

(declare-fun m!3368029 () Bool)

(assert (=> bs!530838 m!3368029))

(assert (=> b!3031004 d!851149))

(declare-fun d!851151 () Bool)

(assert (=> d!851151 (= (nullable!3077 (regOne!19367 r!17423)) (nullableFct!876 (regOne!19367 r!17423)))))

(declare-fun bs!530839 () Bool)

(assert (= bs!530839 d!851151))

(declare-fun m!3368031 () Bool)

(assert (=> bs!530839 m!3368031))

(assert (=> b!3031004 d!851151))

(declare-fun d!851153 () Bool)

(assert (=> d!851153 (= (matchR!4309 (regOne!19367 r!17423) s!11993) (matchR!4309 (simplify!398 (regOne!19367 r!17423)) s!11993))))

(assert (=> d!851153 true))

(declare-fun _$95!573 () Unit!49277)

(assert (=> d!851153 (= (choose!17975 (regOne!19367 r!17423) s!11993) _$95!573)))

(declare-fun bs!530840 () Bool)

(assert (= bs!530840 d!851153))

(assert (=> bs!530840 m!3367687))

(assert (=> bs!530840 m!3367675))

(assert (=> bs!530840 m!3367675))

(assert (=> bs!530840 m!3367887))

(assert (=> d!851089 d!851153))

(declare-fun b!3031516 () Bool)

(declare-fun e!1901251 () Bool)

(declare-fun e!1901256 () Bool)

(assert (=> b!3031516 (= e!1901251 e!1901256)))

(declare-fun res!1247320 () Bool)

(assert (=> b!3031516 (=> res!1247320 e!1901256)))

(declare-fun call!206528 () Bool)

(assert (=> b!3031516 (= res!1247320 call!206528)))

(declare-fun b!3031517 () Bool)

(assert (=> b!3031517 (= e!1901256 (not (= (head!6733 s!11993) (c!500683 (simplify!398 (regOne!19367 r!17423))))))))

(declare-fun b!3031518 () Bool)

(declare-fun res!1247322 () Bool)

(assert (=> b!3031518 (=> res!1247322 e!1901256)))

(assert (=> b!3031518 (= res!1247322 (not (isEmpty!19468 (tail!4959 s!11993))))))

(declare-fun b!3031519 () Bool)

(declare-fun res!1247319 () Bool)

(declare-fun e!1901252 () Bool)

(assert (=> b!3031519 (=> (not res!1247319) (not e!1901252))))

(assert (=> b!3031519 (= res!1247319 (not call!206528))))

(declare-fun b!3031520 () Bool)

(declare-fun res!1247317 () Bool)

(assert (=> b!3031520 (=> (not res!1247317) (not e!1901252))))

(assert (=> b!3031520 (= res!1247317 (isEmpty!19468 (tail!4959 s!11993)))))

(declare-fun b!3031521 () Bool)

(declare-fun e!1901255 () Bool)

(declare-fun lt!1046069 () Bool)

(assert (=> b!3031521 (= e!1901255 (= lt!1046069 call!206528))))

(declare-fun b!3031522 () Bool)

(declare-fun res!1247318 () Bool)

(declare-fun e!1901254 () Bool)

(assert (=> b!3031522 (=> res!1247318 e!1901254)))

(assert (=> b!3031522 (= res!1247318 e!1901252)))

(declare-fun res!1247315 () Bool)

(assert (=> b!3031522 (=> (not res!1247315) (not e!1901252))))

(assert (=> b!3031522 (= res!1247315 lt!1046069)))

(declare-fun b!3031523 () Bool)

(declare-fun e!1901253 () Bool)

(assert (=> b!3031523 (= e!1901253 (not lt!1046069))))

(declare-fun b!3031524 () Bool)

(declare-fun e!1901257 () Bool)

(assert (=> b!3031524 (= e!1901257 (matchR!4309 (derivativeStep!2674 (simplify!398 (regOne!19367 r!17423)) (head!6733 s!11993)) (tail!4959 s!11993)))))

(declare-fun b!3031525 () Bool)

(declare-fun res!1247321 () Bool)

(assert (=> b!3031525 (=> res!1247321 e!1901254)))

(assert (=> b!3031525 (= res!1247321 (not ((_ is ElementMatch!9427) (simplify!398 (regOne!19367 r!17423)))))))

(assert (=> b!3031525 (= e!1901253 e!1901254)))

(declare-fun bm!206523 () Bool)

(assert (=> bm!206523 (= call!206528 (isEmpty!19468 s!11993))))

(declare-fun d!851155 () Bool)

(assert (=> d!851155 e!1901255))

(declare-fun c!500921 () Bool)

(assert (=> d!851155 (= c!500921 ((_ is EmptyExpr!9427) (simplify!398 (regOne!19367 r!17423))))))

(assert (=> d!851155 (= lt!1046069 e!1901257)))

(declare-fun c!500923 () Bool)

(assert (=> d!851155 (= c!500923 (isEmpty!19468 s!11993))))

(assert (=> d!851155 (validRegex!4160 (simplify!398 (regOne!19367 r!17423)))))

(assert (=> d!851155 (= (matchR!4309 (simplify!398 (regOne!19367 r!17423)) s!11993) lt!1046069)))

(declare-fun b!3031526 () Bool)

(assert (=> b!3031526 (= e!1901257 (nullable!3077 (simplify!398 (regOne!19367 r!17423))))))

(declare-fun b!3031527 () Bool)

(assert (=> b!3031527 (= e!1901252 (= (head!6733 s!11993) (c!500683 (simplify!398 (regOne!19367 r!17423)))))))

(declare-fun b!3031528 () Bool)

(assert (=> b!3031528 (= e!1901254 e!1901251)))

(declare-fun res!1247316 () Bool)

(assert (=> b!3031528 (=> (not res!1247316) (not e!1901251))))

(assert (=> b!3031528 (= res!1247316 (not lt!1046069))))

(declare-fun b!3031529 () Bool)

(assert (=> b!3031529 (= e!1901255 e!1901253)))

(declare-fun c!500922 () Bool)

(assert (=> b!3031529 (= c!500922 ((_ is EmptyLang!9427) (simplify!398 (regOne!19367 r!17423))))))

(assert (= (and d!851155 c!500923) b!3031526))

(assert (= (and d!851155 (not c!500923)) b!3031524))

(assert (= (and d!851155 c!500921) b!3031521))

(assert (= (and d!851155 (not c!500921)) b!3031529))

(assert (= (and b!3031529 c!500922) b!3031523))

(assert (= (and b!3031529 (not c!500922)) b!3031525))

(assert (= (and b!3031525 (not res!1247321)) b!3031522))

(assert (= (and b!3031522 res!1247315) b!3031519))

(assert (= (and b!3031519 res!1247319) b!3031520))

(assert (= (and b!3031520 res!1247317) b!3031527))

(assert (= (and b!3031522 (not res!1247318)) b!3031528))

(assert (= (and b!3031528 res!1247316) b!3031516))

(assert (= (and b!3031516 (not res!1247320)) b!3031518))

(assert (= (and b!3031518 (not res!1247322)) b!3031517))

(assert (= (or b!3031521 b!3031516 b!3031519) bm!206523))

(assert (=> b!3031524 m!3367697))

(assert (=> b!3031524 m!3367675))

(assert (=> b!3031524 m!3367697))

(declare-fun m!3368033 () Bool)

(assert (=> b!3031524 m!3368033))

(assert (=> b!3031524 m!3367701))

(assert (=> b!3031524 m!3368033))

(assert (=> b!3031524 m!3367701))

(declare-fun m!3368035 () Bool)

(assert (=> b!3031524 m!3368035))

(assert (=> b!3031518 m!3367701))

(assert (=> b!3031518 m!3367701))

(assert (=> b!3031518 m!3367705))

(assert (=> d!851155 m!3367707))

(assert (=> d!851155 m!3367675))

(declare-fun m!3368037 () Bool)

(assert (=> d!851155 m!3368037))

(assert (=> bm!206523 m!3367707))

(assert (=> b!3031520 m!3367701))

(assert (=> b!3031520 m!3367701))

(assert (=> b!3031520 m!3367705))

(assert (=> b!3031517 m!3367697))

(assert (=> b!3031527 m!3367697))

(assert (=> b!3031526 m!3367675))

(declare-fun m!3368039 () Bool)

(assert (=> b!3031526 m!3368039))

(assert (=> d!851089 d!851155))

(assert (=> d!851089 d!851067))

(assert (=> d!851089 d!851129))

(assert (=> d!851089 d!851053))

(declare-fun lt!1046075 () Regex!9427)

(declare-fun lt!1046074 () Regex!9427)

(declare-fun call!206533 () Bool)

(declare-fun bm!206524 () Bool)

(declare-fun c!500925 () Bool)

(assert (=> bm!206524 (= call!206533 (isEmptyExpr!502 (ite c!500925 lt!1046075 lt!1046074)))))

(declare-fun b!3031530 () Bool)

(declare-fun c!500924 () Bool)

(assert (=> b!3031530 (= c!500924 ((_ is EmptyExpr!9427) (ite c!500880 (regTwo!19367 r!17423) (regOne!19366 r!17423))))))

(declare-fun e!1901260 () Regex!9427)

(declare-fun e!1901269 () Regex!9427)

(assert (=> b!3031530 (= e!1901260 e!1901269)))

(declare-fun b!3031531 () Bool)

(declare-fun e!1901262 () Regex!9427)

(assert (=> b!3031531 (= e!1901262 e!1901260)))

(declare-fun c!500931 () Bool)

(assert (=> b!3031531 (= c!500931 ((_ is ElementMatch!9427) (ite c!500880 (regTwo!19367 r!17423) (regOne!19366 r!17423))))))

(declare-fun b!3031532 () Bool)

(assert (=> b!3031532 (= e!1901262 EmptyLang!9427)))

(declare-fun b!3031533 () Bool)

(declare-fun e!1901258 () Regex!9427)

(declare-fun e!1901265 () Regex!9427)

(assert (=> b!3031533 (= e!1901258 e!1901265)))

(declare-fun lt!1046070 () Regex!9427)

(declare-fun call!206530 () Regex!9427)

(assert (=> b!3031533 (= lt!1046070 call!206530)))

(declare-fun lt!1046071 () Regex!9427)

(declare-fun call!206535 () Regex!9427)

(assert (=> b!3031533 (= lt!1046071 call!206535)))

(declare-fun c!500929 () Bool)

(declare-fun call!206531 () Bool)

(assert (=> b!3031533 (= c!500929 call!206531)))

(declare-fun b!3031534 () Bool)

(declare-fun e!1901259 () Regex!9427)

(assert (=> b!3031534 (= e!1901259 lt!1046070)))

(declare-fun b!3031535 () Bool)

(declare-fun c!500927 () Bool)

(declare-fun e!1901263 () Bool)

(assert (=> b!3031535 (= c!500927 e!1901263)))

(declare-fun res!1247324 () Bool)

(assert (=> b!3031535 (=> res!1247324 e!1901263)))

(declare-fun call!206534 () Bool)

(assert (=> b!3031535 (= res!1247324 call!206534)))

(declare-fun call!206529 () Regex!9427)

(assert (=> b!3031535 (= lt!1046075 call!206529)))

(declare-fun e!1901264 () Regex!9427)

(declare-fun e!1901267 () Regex!9427)

(assert (=> b!3031535 (= e!1901264 e!1901267)))

(declare-fun b!3031536 () Bool)

(declare-fun e!1901261 () Regex!9427)

(assert (=> b!3031536 (= e!1901261 EmptyLang!9427)))

(declare-fun b!3031537 () Bool)

(declare-fun e!1901266 () Bool)

(assert (=> b!3031537 (= e!1901266 call!206531)))

(declare-fun e!1901271 () Bool)

(declare-fun b!3031538 () Bool)

(declare-fun lt!1046072 () Regex!9427)

(assert (=> b!3031538 (= e!1901271 (= (nullable!3077 lt!1046072) (nullable!3077 (ite c!500880 (regTwo!19367 r!17423) (regOne!19366 r!17423)))))))

(declare-fun b!3031539 () Bool)

(assert (=> b!3031539 (= e!1901267 (Star!9427 lt!1046075))))

(declare-fun b!3031540 () Bool)

(assert (=> b!3031540 (= e!1901269 EmptyExpr!9427)))

(declare-fun b!3031541 () Bool)

(declare-fun e!1901270 () Regex!9427)

(declare-fun lt!1046073 () Regex!9427)

(assert (=> b!3031541 (= e!1901270 lt!1046073)))

(declare-fun bm!206526 () Bool)

(declare-fun c!500932 () Bool)

(assert (=> bm!206526 (= call!206531 (isEmptyLang!496 (ite c!500932 lt!1046070 lt!1046074)))))

(declare-fun b!3031542 () Bool)

(assert (=> b!3031542 (= c!500932 ((_ is Union!9427) (ite c!500880 (regTwo!19367 r!17423) (regOne!19366 r!17423))))))

(assert (=> b!3031542 (= e!1901264 e!1901258)))

(declare-fun b!3031543 () Bool)

(assert (=> b!3031543 (= e!1901270 (Concat!14748 lt!1046073 lt!1046074))))

(declare-fun bm!206527 () Bool)

(assert (=> bm!206527 (= call!206530 call!206529)))

(declare-fun b!3031544 () Bool)

(declare-fun e!1901268 () Regex!9427)

(assert (=> b!3031544 (= e!1901268 e!1901270)))

(declare-fun c!500933 () Bool)

(assert (=> b!3031544 (= c!500933 call!206533)))

(declare-fun b!3031545 () Bool)

(assert (=> b!3031545 (= e!1901269 e!1901264)))

(assert (=> b!3031545 (= c!500925 ((_ is Star!9427) (ite c!500880 (regTwo!19367 r!17423) (regOne!19366 r!17423))))))

(declare-fun b!3031546 () Bool)

(assert (=> b!3031546 (= e!1901258 e!1901261)))

(assert (=> b!3031546 (= lt!1046073 call!206535)))

(assert (=> b!3031546 (= lt!1046074 call!206530)))

(declare-fun res!1247325 () Bool)

(declare-fun call!206532 () Bool)

(assert (=> b!3031546 (= res!1247325 call!206532)))

(assert (=> b!3031546 (=> res!1247325 e!1901266)))

(declare-fun c!500930 () Bool)

(assert (=> b!3031546 (= c!500930 e!1901266)))

(declare-fun b!3031547 () Bool)

(declare-fun c!500934 () Bool)

(assert (=> b!3031547 (= c!500934 call!206532)))

(assert (=> b!3031547 (= e!1901265 e!1901259)))

(declare-fun b!3031548 () Bool)

(assert (=> b!3031548 (= e!1901263 call!206533)))

(declare-fun b!3031549 () Bool)

(assert (=> b!3031549 (= e!1901268 lt!1046074)))

(declare-fun bm!206528 () Bool)

(assert (=> bm!206528 (= call!206532 call!206534)))

(declare-fun b!3031550 () Bool)

(assert (=> b!3031550 (= e!1901260 (ite c!500880 (regTwo!19367 r!17423) (regOne!19366 r!17423)))))

(declare-fun b!3031551 () Bool)

(assert (=> b!3031551 (= e!1901259 (Union!9427 lt!1046070 lt!1046071))))

(declare-fun b!3031552 () Bool)

(declare-fun c!500928 () Bool)

(assert (=> b!3031552 (= c!500928 (isEmptyExpr!502 lt!1046073))))

(assert (=> b!3031552 (= e!1901261 e!1901268)))

(declare-fun bm!206525 () Bool)

(assert (=> bm!206525 (= call!206534 (isEmptyLang!496 (ite c!500925 lt!1046075 (ite c!500932 lt!1046071 lt!1046073))))))

(declare-fun d!851157 () Bool)

(assert (=> d!851157 e!1901271))

(declare-fun res!1247323 () Bool)

(assert (=> d!851157 (=> (not res!1247323) (not e!1901271))))

(assert (=> d!851157 (= res!1247323 (validRegex!4160 lt!1046072))))

(assert (=> d!851157 (= lt!1046072 e!1901262)))

(declare-fun c!500926 () Bool)

(assert (=> d!851157 (= c!500926 ((_ is EmptyLang!9427) (ite c!500880 (regTwo!19367 r!17423) (regOne!19366 r!17423))))))

(assert (=> d!851157 (validRegex!4160 (ite c!500880 (regTwo!19367 r!17423) (regOne!19366 r!17423)))))

(assert (=> d!851157 (= (simplify!398 (ite c!500880 (regTwo!19367 r!17423) (regOne!19366 r!17423))) lt!1046072)))

(declare-fun b!3031553 () Bool)

(assert (=> b!3031553 (= e!1901267 EmptyExpr!9427)))

(declare-fun bm!206529 () Bool)

(assert (=> bm!206529 (= call!206529 (simplify!398 (ite c!500925 (reg!9756 (ite c!500880 (regTwo!19367 r!17423) (regOne!19366 r!17423))) (ite c!500932 (regOne!19367 (ite c!500880 (regTwo!19367 r!17423) (regOne!19366 r!17423))) (regTwo!19366 (ite c!500880 (regTwo!19367 r!17423) (regOne!19366 r!17423)))))))))

(declare-fun bm!206530 () Bool)

(assert (=> bm!206530 (= call!206535 (simplify!398 (ite c!500932 (regTwo!19367 (ite c!500880 (regTwo!19367 r!17423) (regOne!19366 r!17423))) (regOne!19366 (ite c!500880 (regTwo!19367 r!17423) (regOne!19366 r!17423))))))))

(declare-fun b!3031554 () Bool)

(assert (=> b!3031554 (= e!1901265 lt!1046071)))

(assert (= (and d!851157 c!500926) b!3031532))

(assert (= (and d!851157 (not c!500926)) b!3031531))

(assert (= (and b!3031531 c!500931) b!3031550))

(assert (= (and b!3031531 (not c!500931)) b!3031530))

(assert (= (and b!3031530 c!500924) b!3031540))

(assert (= (and b!3031530 (not c!500924)) b!3031545))

(assert (= (and b!3031545 c!500925) b!3031535))

(assert (= (and b!3031545 (not c!500925)) b!3031542))

(assert (= (and b!3031535 (not res!1247324)) b!3031548))

(assert (= (and b!3031535 c!500927) b!3031553))

(assert (= (and b!3031535 (not c!500927)) b!3031539))

(assert (= (and b!3031542 c!500932) b!3031533))

(assert (= (and b!3031542 (not c!500932)) b!3031546))

(assert (= (and b!3031533 c!500929) b!3031554))

(assert (= (and b!3031533 (not c!500929)) b!3031547))

(assert (= (and b!3031547 c!500934) b!3031534))

(assert (= (and b!3031547 (not c!500934)) b!3031551))

(assert (= (and b!3031546 (not res!1247325)) b!3031537))

(assert (= (and b!3031546 c!500930) b!3031536))

(assert (= (and b!3031546 (not c!500930)) b!3031552))

(assert (= (and b!3031552 c!500928) b!3031549))

(assert (= (and b!3031552 (not c!500928)) b!3031544))

(assert (= (and b!3031544 c!500933) b!3031541))

(assert (= (and b!3031544 (not c!500933)) b!3031543))

(assert (= (or b!3031533 b!3031546) bm!206527))

(assert (= (or b!3031533 b!3031546) bm!206530))

(assert (= (or b!3031533 b!3031537) bm!206526))

(assert (= (or b!3031547 b!3031546) bm!206528))

(assert (= (or b!3031548 b!3031544) bm!206524))

(assert (= (or b!3031535 bm!206527) bm!206529))

(assert (= (or b!3031535 bm!206528) bm!206525))

(assert (= (and d!851157 res!1247323) b!3031538))

(declare-fun m!3368041 () Bool)

(assert (=> bm!206525 m!3368041))

(declare-fun m!3368043 () Bool)

(assert (=> b!3031552 m!3368043))

(declare-fun m!3368045 () Bool)

(assert (=> d!851157 m!3368045))

(declare-fun m!3368047 () Bool)

(assert (=> d!851157 m!3368047))

(declare-fun m!3368049 () Bool)

(assert (=> b!3031538 m!3368049))

(declare-fun m!3368051 () Bool)

(assert (=> b!3031538 m!3368051))

(declare-fun m!3368053 () Bool)

(assert (=> bm!206530 m!3368053))

(declare-fun m!3368055 () Bool)

(assert (=> bm!206526 m!3368055))

(declare-fun m!3368057 () Bool)

(assert (=> bm!206529 m!3368057))

(declare-fun m!3368059 () Bool)

(assert (=> bm!206524 m!3368059))

(assert (=> bm!206492 d!851157))

(assert (=> b!3031370 d!851145))

(assert (=> b!3031370 d!851139))

(assert (=> bm!206485 d!851127))

(declare-fun d!851159 () Bool)

(assert (=> d!851159 (= (nullable!3077 (reg!9756 r!17423)) (nullableFct!876 (reg!9756 r!17423)))))

(declare-fun bs!530841 () Bool)

(assert (= bs!530841 d!851159))

(declare-fun m!3368061 () Bool)

(assert (=> bs!530841 m!3368061))

(assert (=> b!3030815 d!851159))

(assert (=> b!3030731 d!851121))

(declare-fun call!206540 () Bool)

(declare-fun c!500936 () Bool)

(declare-fun lt!1046080 () Regex!9427)

(declare-fun lt!1046081 () Regex!9427)

(declare-fun bm!206531 () Bool)

(assert (=> bm!206531 (= call!206540 (isEmptyExpr!502 (ite c!500936 lt!1046081 lt!1046080)))))

(declare-fun c!500935 () Bool)

(declare-fun b!3031555 () Bool)

(assert (=> b!3031555 (= c!500935 ((_ is EmptyExpr!9427) (ite c!500805 (reg!9756 (regTwo!19367 r!17423)) (ite c!500812 (regOne!19367 (regTwo!19367 r!17423)) (regTwo!19366 (regTwo!19367 r!17423))))))))

(declare-fun e!1901274 () Regex!9427)

(declare-fun e!1901283 () Regex!9427)

(assert (=> b!3031555 (= e!1901274 e!1901283)))

(declare-fun b!3031556 () Bool)

(declare-fun e!1901276 () Regex!9427)

(assert (=> b!3031556 (= e!1901276 e!1901274)))

(declare-fun c!500942 () Bool)

(assert (=> b!3031556 (= c!500942 ((_ is ElementMatch!9427) (ite c!500805 (reg!9756 (regTwo!19367 r!17423)) (ite c!500812 (regOne!19367 (regTwo!19367 r!17423)) (regTwo!19366 (regTwo!19367 r!17423))))))))

(declare-fun b!3031557 () Bool)

(assert (=> b!3031557 (= e!1901276 EmptyLang!9427)))

(declare-fun b!3031558 () Bool)

(declare-fun e!1901272 () Regex!9427)

(declare-fun e!1901279 () Regex!9427)

(assert (=> b!3031558 (= e!1901272 e!1901279)))

(declare-fun lt!1046076 () Regex!9427)

(declare-fun call!206537 () Regex!9427)

(assert (=> b!3031558 (= lt!1046076 call!206537)))

(declare-fun lt!1046077 () Regex!9427)

(declare-fun call!206542 () Regex!9427)

(assert (=> b!3031558 (= lt!1046077 call!206542)))

(declare-fun c!500940 () Bool)

(declare-fun call!206538 () Bool)

(assert (=> b!3031558 (= c!500940 call!206538)))

(declare-fun b!3031559 () Bool)

(declare-fun e!1901273 () Regex!9427)

(assert (=> b!3031559 (= e!1901273 lt!1046076)))

(declare-fun b!3031560 () Bool)

(declare-fun c!500938 () Bool)

(declare-fun e!1901277 () Bool)

(assert (=> b!3031560 (= c!500938 e!1901277)))

(declare-fun res!1247327 () Bool)

(assert (=> b!3031560 (=> res!1247327 e!1901277)))

(declare-fun call!206541 () Bool)

(assert (=> b!3031560 (= res!1247327 call!206541)))

(declare-fun call!206536 () Regex!9427)

(assert (=> b!3031560 (= lt!1046081 call!206536)))

(declare-fun e!1901278 () Regex!9427)

(declare-fun e!1901281 () Regex!9427)

(assert (=> b!3031560 (= e!1901278 e!1901281)))

(declare-fun b!3031561 () Bool)

(declare-fun e!1901275 () Regex!9427)

(assert (=> b!3031561 (= e!1901275 EmptyLang!9427)))

(declare-fun b!3031562 () Bool)

(declare-fun e!1901280 () Bool)

(assert (=> b!3031562 (= e!1901280 call!206538)))

(declare-fun lt!1046078 () Regex!9427)

(declare-fun e!1901285 () Bool)

(declare-fun b!3031563 () Bool)

(assert (=> b!3031563 (= e!1901285 (= (nullable!3077 lt!1046078) (nullable!3077 (ite c!500805 (reg!9756 (regTwo!19367 r!17423)) (ite c!500812 (regOne!19367 (regTwo!19367 r!17423)) (regTwo!19366 (regTwo!19367 r!17423)))))))))

(declare-fun b!3031564 () Bool)

(assert (=> b!3031564 (= e!1901281 (Star!9427 lt!1046081))))

(declare-fun b!3031565 () Bool)

(assert (=> b!3031565 (= e!1901283 EmptyExpr!9427)))

(declare-fun b!3031566 () Bool)

(declare-fun e!1901284 () Regex!9427)

(declare-fun lt!1046079 () Regex!9427)

(assert (=> b!3031566 (= e!1901284 lt!1046079)))

(declare-fun bm!206533 () Bool)

(declare-fun c!500943 () Bool)

(assert (=> bm!206533 (= call!206538 (isEmptyLang!496 (ite c!500943 lt!1046076 lt!1046080)))))

(declare-fun b!3031567 () Bool)

(assert (=> b!3031567 (= c!500943 ((_ is Union!9427) (ite c!500805 (reg!9756 (regTwo!19367 r!17423)) (ite c!500812 (regOne!19367 (regTwo!19367 r!17423)) (regTwo!19366 (regTwo!19367 r!17423))))))))

(assert (=> b!3031567 (= e!1901278 e!1901272)))

(declare-fun b!3031568 () Bool)

(assert (=> b!3031568 (= e!1901284 (Concat!14748 lt!1046079 lt!1046080))))

(declare-fun bm!206534 () Bool)

(assert (=> bm!206534 (= call!206537 call!206536)))

(declare-fun b!3031569 () Bool)

(declare-fun e!1901282 () Regex!9427)

(assert (=> b!3031569 (= e!1901282 e!1901284)))

(declare-fun c!500944 () Bool)

(assert (=> b!3031569 (= c!500944 call!206540)))

(declare-fun b!3031570 () Bool)

(assert (=> b!3031570 (= e!1901283 e!1901278)))

(assert (=> b!3031570 (= c!500936 ((_ is Star!9427) (ite c!500805 (reg!9756 (regTwo!19367 r!17423)) (ite c!500812 (regOne!19367 (regTwo!19367 r!17423)) (regTwo!19366 (regTwo!19367 r!17423))))))))

(declare-fun b!3031571 () Bool)

(assert (=> b!3031571 (= e!1901272 e!1901275)))

(assert (=> b!3031571 (= lt!1046079 call!206542)))

(assert (=> b!3031571 (= lt!1046080 call!206537)))

(declare-fun res!1247328 () Bool)

(declare-fun call!206539 () Bool)

(assert (=> b!3031571 (= res!1247328 call!206539)))

(assert (=> b!3031571 (=> res!1247328 e!1901280)))

(declare-fun c!500941 () Bool)

(assert (=> b!3031571 (= c!500941 e!1901280)))

(declare-fun b!3031572 () Bool)

(declare-fun c!500945 () Bool)

(assert (=> b!3031572 (= c!500945 call!206539)))

(assert (=> b!3031572 (= e!1901279 e!1901273)))

(declare-fun b!3031573 () Bool)

(assert (=> b!3031573 (= e!1901277 call!206540)))

(declare-fun b!3031574 () Bool)

(assert (=> b!3031574 (= e!1901282 lt!1046080)))

(declare-fun bm!206535 () Bool)

(assert (=> bm!206535 (= call!206539 call!206541)))

(declare-fun b!3031575 () Bool)

(assert (=> b!3031575 (= e!1901274 (ite c!500805 (reg!9756 (regTwo!19367 r!17423)) (ite c!500812 (regOne!19367 (regTwo!19367 r!17423)) (regTwo!19366 (regTwo!19367 r!17423)))))))

(declare-fun b!3031576 () Bool)

(assert (=> b!3031576 (= e!1901273 (Union!9427 lt!1046076 lt!1046077))))

(declare-fun b!3031577 () Bool)

(declare-fun c!500939 () Bool)

(assert (=> b!3031577 (= c!500939 (isEmptyExpr!502 lt!1046079))))

(assert (=> b!3031577 (= e!1901275 e!1901282)))

(declare-fun bm!206532 () Bool)

(assert (=> bm!206532 (= call!206541 (isEmptyLang!496 (ite c!500936 lt!1046081 (ite c!500943 lt!1046077 lt!1046079))))))

(declare-fun d!851161 () Bool)

(assert (=> d!851161 e!1901285))

(declare-fun res!1247326 () Bool)

(assert (=> d!851161 (=> (not res!1247326) (not e!1901285))))

(assert (=> d!851161 (= res!1247326 (validRegex!4160 lt!1046078))))

(assert (=> d!851161 (= lt!1046078 e!1901276)))

(declare-fun c!500937 () Bool)

(assert (=> d!851161 (= c!500937 ((_ is EmptyLang!9427) (ite c!500805 (reg!9756 (regTwo!19367 r!17423)) (ite c!500812 (regOne!19367 (regTwo!19367 r!17423)) (regTwo!19366 (regTwo!19367 r!17423))))))))

(assert (=> d!851161 (validRegex!4160 (ite c!500805 (reg!9756 (regTwo!19367 r!17423)) (ite c!500812 (regOne!19367 (regTwo!19367 r!17423)) (regTwo!19366 (regTwo!19367 r!17423)))))))

(assert (=> d!851161 (= (simplify!398 (ite c!500805 (reg!9756 (regTwo!19367 r!17423)) (ite c!500812 (regOne!19367 (regTwo!19367 r!17423)) (regTwo!19366 (regTwo!19367 r!17423))))) lt!1046078)))

(declare-fun b!3031578 () Bool)

(assert (=> b!3031578 (= e!1901281 EmptyExpr!9427)))

(declare-fun bm!206536 () Bool)

(assert (=> bm!206536 (= call!206536 (simplify!398 (ite c!500936 (reg!9756 (ite c!500805 (reg!9756 (regTwo!19367 r!17423)) (ite c!500812 (regOne!19367 (regTwo!19367 r!17423)) (regTwo!19366 (regTwo!19367 r!17423))))) (ite c!500943 (regOne!19367 (ite c!500805 (reg!9756 (regTwo!19367 r!17423)) (ite c!500812 (regOne!19367 (regTwo!19367 r!17423)) (regTwo!19366 (regTwo!19367 r!17423))))) (regTwo!19366 (ite c!500805 (reg!9756 (regTwo!19367 r!17423)) (ite c!500812 (regOne!19367 (regTwo!19367 r!17423)) (regTwo!19366 (regTwo!19367 r!17423)))))))))))

(declare-fun bm!206537 () Bool)

(assert (=> bm!206537 (= call!206542 (simplify!398 (ite c!500943 (regTwo!19367 (ite c!500805 (reg!9756 (regTwo!19367 r!17423)) (ite c!500812 (regOne!19367 (regTwo!19367 r!17423)) (regTwo!19366 (regTwo!19367 r!17423))))) (regOne!19366 (ite c!500805 (reg!9756 (regTwo!19367 r!17423)) (ite c!500812 (regOne!19367 (regTwo!19367 r!17423)) (regTwo!19366 (regTwo!19367 r!17423))))))))))

(declare-fun b!3031579 () Bool)

(assert (=> b!3031579 (= e!1901279 lt!1046077)))

(assert (= (and d!851161 c!500937) b!3031557))

(assert (= (and d!851161 (not c!500937)) b!3031556))

(assert (= (and b!3031556 c!500942) b!3031575))

(assert (= (and b!3031556 (not c!500942)) b!3031555))

(assert (= (and b!3031555 c!500935) b!3031565))

(assert (= (and b!3031555 (not c!500935)) b!3031570))

(assert (= (and b!3031570 c!500936) b!3031560))

(assert (= (and b!3031570 (not c!500936)) b!3031567))

(assert (= (and b!3031560 (not res!1247327)) b!3031573))

(assert (= (and b!3031560 c!500938) b!3031578))

(assert (= (and b!3031560 (not c!500938)) b!3031564))

(assert (= (and b!3031567 c!500943) b!3031558))

(assert (= (and b!3031567 (not c!500943)) b!3031571))

(assert (= (and b!3031558 c!500940) b!3031579))

(assert (= (and b!3031558 (not c!500940)) b!3031572))

(assert (= (and b!3031572 c!500945) b!3031559))

(assert (= (and b!3031572 (not c!500945)) b!3031576))

(assert (= (and b!3031571 (not res!1247328)) b!3031562))

(assert (= (and b!3031571 c!500941) b!3031561))

(assert (= (and b!3031571 (not c!500941)) b!3031577))

(assert (= (and b!3031577 c!500939) b!3031574))

(assert (= (and b!3031577 (not c!500939)) b!3031569))

(assert (= (and b!3031569 c!500944) b!3031566))

(assert (= (and b!3031569 (not c!500944)) b!3031568))

(assert (= (or b!3031558 b!3031571) bm!206534))

(assert (= (or b!3031558 b!3031571) bm!206537))

(assert (= (or b!3031558 b!3031562) bm!206533))

(assert (= (or b!3031572 b!3031571) bm!206535))

(assert (= (or b!3031573 b!3031569) bm!206531))

(assert (= (or b!3031560 bm!206534) bm!206536))

(assert (= (or b!3031560 bm!206535) bm!206532))

(assert (= (and d!851161 res!1247326) b!3031563))

(declare-fun m!3368063 () Bool)

(assert (=> bm!206532 m!3368063))

(declare-fun m!3368065 () Bool)

(assert (=> b!3031577 m!3368065))

(declare-fun m!3368067 () Bool)

(assert (=> d!851161 m!3368067))

(declare-fun m!3368069 () Bool)

(assert (=> d!851161 m!3368069))

(declare-fun m!3368071 () Bool)

(assert (=> b!3031563 m!3368071))

(declare-fun m!3368073 () Bool)

(assert (=> b!3031563 m!3368073))

(declare-fun m!3368075 () Bool)

(assert (=> bm!206537 m!3368075))

(declare-fun m!3368077 () Bool)

(assert (=> bm!206533 m!3368077))

(declare-fun m!3368079 () Bool)

(assert (=> bm!206536 m!3368079))

(declare-fun m!3368081 () Bool)

(assert (=> bm!206531 m!3368081))

(assert (=> bm!206453 d!851161))

(declare-fun b!3031580 () Bool)

(declare-fun e!1901288 () Bool)

(declare-fun call!206545 () Bool)

(assert (=> b!3031580 (= e!1901288 call!206545)))

(declare-fun b!3031581 () Bool)

(declare-fun res!1247329 () Bool)

(declare-fun e!1901289 () Bool)

(assert (=> b!3031581 (=> res!1247329 e!1901289)))

(assert (=> b!3031581 (= res!1247329 (not ((_ is Concat!14748) (regTwo!19367 r!17423))))))

(declare-fun e!1901287 () Bool)

(assert (=> b!3031581 (= e!1901287 e!1901289)))

(declare-fun b!3031582 () Bool)

(declare-fun e!1901292 () Bool)

(assert (=> b!3031582 (= e!1901292 e!1901287)))

(declare-fun c!500946 () Bool)

(assert (=> b!3031582 (= c!500946 ((_ is Union!9427) (regTwo!19367 r!17423)))))

(declare-fun b!3031583 () Bool)

(declare-fun e!1901286 () Bool)

(assert (=> b!3031583 (= e!1901286 e!1901292)))

(declare-fun c!500947 () Bool)

(assert (=> b!3031583 (= c!500947 ((_ is Star!9427) (regTwo!19367 r!17423)))))

(declare-fun b!3031584 () Bool)

(declare-fun res!1247331 () Bool)

(assert (=> b!3031584 (=> (not res!1247331) (not e!1901288))))

(declare-fun call!206544 () Bool)

(assert (=> b!3031584 (= res!1247331 call!206544)))

(assert (=> b!3031584 (= e!1901287 e!1901288)))

(declare-fun b!3031585 () Bool)

(declare-fun e!1901290 () Bool)

(declare-fun call!206543 () Bool)

(assert (=> b!3031585 (= e!1901290 call!206543)))

(declare-fun b!3031586 () Bool)

(assert (=> b!3031586 (= e!1901292 e!1901290)))

(declare-fun res!1247330 () Bool)

(assert (=> b!3031586 (= res!1247330 (not (nullable!3077 (reg!9756 (regTwo!19367 r!17423)))))))

(assert (=> b!3031586 (=> (not res!1247330) (not e!1901290))))

(declare-fun bm!206539 () Bool)

(assert (=> bm!206539 (= call!206544 call!206543)))

(declare-fun bm!206540 () Bool)

(assert (=> bm!206540 (= call!206545 (validRegex!4160 (ite c!500946 (regTwo!19367 (regTwo!19367 r!17423)) (regOne!19366 (regTwo!19367 r!17423)))))))

(declare-fun b!3031587 () Bool)

(declare-fun e!1901291 () Bool)

(assert (=> b!3031587 (= e!1901291 call!206544)))

(declare-fun b!3031588 () Bool)

(assert (=> b!3031588 (= e!1901289 e!1901291)))

(declare-fun res!1247333 () Bool)

(assert (=> b!3031588 (=> (not res!1247333) (not e!1901291))))

(assert (=> b!3031588 (= res!1247333 call!206545)))

(declare-fun bm!206538 () Bool)

(assert (=> bm!206538 (= call!206543 (validRegex!4160 (ite c!500947 (reg!9756 (regTwo!19367 r!17423)) (ite c!500946 (regOne!19367 (regTwo!19367 r!17423)) (regTwo!19366 (regTwo!19367 r!17423))))))))

(declare-fun d!851163 () Bool)

(declare-fun res!1247332 () Bool)

(assert (=> d!851163 (=> res!1247332 e!1901286)))

(assert (=> d!851163 (= res!1247332 ((_ is ElementMatch!9427) (regTwo!19367 r!17423)))))

(assert (=> d!851163 (= (validRegex!4160 (regTwo!19367 r!17423)) e!1901286)))

(assert (= (and d!851163 (not res!1247332)) b!3031583))

(assert (= (and b!3031583 c!500947) b!3031586))

(assert (= (and b!3031583 (not c!500947)) b!3031582))

(assert (= (and b!3031586 res!1247330) b!3031585))

(assert (= (and b!3031582 c!500946) b!3031584))

(assert (= (and b!3031582 (not c!500946)) b!3031581))

(assert (= (and b!3031584 res!1247331) b!3031580))

(assert (= (and b!3031581 (not res!1247329)) b!3031588))

(assert (= (and b!3031588 res!1247333) b!3031587))

(assert (= (or b!3031584 b!3031587) bm!206539))

(assert (= (or b!3031580 b!3031588) bm!206540))

(assert (= (or b!3031585 bm!206539) bm!206538))

(declare-fun m!3368083 () Bool)

(assert (=> b!3031586 m!3368083))

(declare-fun m!3368085 () Bool)

(assert (=> bm!206540 m!3368085))

(declare-fun m!3368087 () Bool)

(assert (=> bm!206538 m!3368087))

(assert (=> b!3030762 d!851163))

(assert (=> b!3030828 d!851143))

(declare-fun d!851165 () Bool)

(assert (=> d!851165 (= (isEmptyExpr!502 lt!1046012) ((_ is EmptyExpr!9427) lt!1046012))))

(assert (=> b!3031018 d!851165))

(assert (=> b!3031319 d!851145))

(assert (=> b!3031319 d!851139))

(declare-fun b!3031589 () Bool)

(declare-fun e!1901295 () Bool)

(declare-fun call!206548 () Bool)

(assert (=> b!3031589 (= e!1901295 call!206548)))

(declare-fun b!3031590 () Bool)

(declare-fun res!1247334 () Bool)

(declare-fun e!1901296 () Bool)

(assert (=> b!3031590 (=> res!1247334 e!1901296)))

(assert (=> b!3031590 (= res!1247334 (not ((_ is Concat!14748) (ite c!500712 (regTwo!19367 r!17423) (regOne!19366 r!17423)))))))

(declare-fun e!1901294 () Bool)

(assert (=> b!3031590 (= e!1901294 e!1901296)))

(declare-fun b!3031591 () Bool)

(declare-fun e!1901299 () Bool)

(assert (=> b!3031591 (= e!1901299 e!1901294)))

(declare-fun c!500948 () Bool)

(assert (=> b!3031591 (= c!500948 ((_ is Union!9427) (ite c!500712 (regTwo!19367 r!17423) (regOne!19366 r!17423))))))

(declare-fun b!3031592 () Bool)

(declare-fun e!1901293 () Bool)

(assert (=> b!3031592 (= e!1901293 e!1901299)))

(declare-fun c!500949 () Bool)

(assert (=> b!3031592 (= c!500949 ((_ is Star!9427) (ite c!500712 (regTwo!19367 r!17423) (regOne!19366 r!17423))))))

(declare-fun b!3031593 () Bool)

(declare-fun res!1247336 () Bool)

(assert (=> b!3031593 (=> (not res!1247336) (not e!1901295))))

(declare-fun call!206547 () Bool)

(assert (=> b!3031593 (= res!1247336 call!206547)))

(assert (=> b!3031593 (= e!1901294 e!1901295)))

(declare-fun b!3031594 () Bool)

(declare-fun e!1901297 () Bool)

(declare-fun call!206546 () Bool)

(assert (=> b!3031594 (= e!1901297 call!206546)))

(declare-fun b!3031595 () Bool)

(assert (=> b!3031595 (= e!1901299 e!1901297)))

(declare-fun res!1247335 () Bool)

(assert (=> b!3031595 (= res!1247335 (not (nullable!3077 (reg!9756 (ite c!500712 (regTwo!19367 r!17423) (regOne!19366 r!17423))))))))

(assert (=> b!3031595 (=> (not res!1247335) (not e!1901297))))

(declare-fun bm!206542 () Bool)

(assert (=> bm!206542 (= call!206547 call!206546)))

(declare-fun bm!206543 () Bool)

(assert (=> bm!206543 (= call!206548 (validRegex!4160 (ite c!500948 (regTwo!19367 (ite c!500712 (regTwo!19367 r!17423) (regOne!19366 r!17423))) (regOne!19366 (ite c!500712 (regTwo!19367 r!17423) (regOne!19366 r!17423))))))))

(declare-fun b!3031596 () Bool)

(declare-fun e!1901298 () Bool)

(assert (=> b!3031596 (= e!1901298 call!206547)))

(declare-fun b!3031597 () Bool)

(assert (=> b!3031597 (= e!1901296 e!1901298)))

(declare-fun res!1247338 () Bool)

(assert (=> b!3031597 (=> (not res!1247338) (not e!1901298))))

(assert (=> b!3031597 (= res!1247338 call!206548)))

(declare-fun bm!206541 () Bool)

(assert (=> bm!206541 (= call!206546 (validRegex!4160 (ite c!500949 (reg!9756 (ite c!500712 (regTwo!19367 r!17423) (regOne!19366 r!17423))) (ite c!500948 (regOne!19367 (ite c!500712 (regTwo!19367 r!17423) (regOne!19366 r!17423))) (regTwo!19366 (ite c!500712 (regTwo!19367 r!17423) (regOne!19366 r!17423)))))))))

(declare-fun d!851167 () Bool)

(declare-fun res!1247337 () Bool)

(assert (=> d!851167 (=> res!1247337 e!1901293)))

(assert (=> d!851167 (= res!1247337 ((_ is ElementMatch!9427) (ite c!500712 (regTwo!19367 r!17423) (regOne!19366 r!17423))))))

(assert (=> d!851167 (= (validRegex!4160 (ite c!500712 (regTwo!19367 r!17423) (regOne!19366 r!17423))) e!1901293)))

(assert (= (and d!851167 (not res!1247337)) b!3031592))

(assert (= (and b!3031592 c!500949) b!3031595))

(assert (= (and b!3031592 (not c!500949)) b!3031591))

(assert (= (and b!3031595 res!1247335) b!3031594))

(assert (= (and b!3031591 c!500948) b!3031593))

(assert (= (and b!3031591 (not c!500948)) b!3031590))

(assert (= (and b!3031593 res!1247336) b!3031589))

(assert (= (and b!3031590 (not res!1247334)) b!3031597))

(assert (= (and b!3031597 res!1247338) b!3031596))

(assert (= (or b!3031593 b!3031596) bm!206542))

(assert (= (or b!3031589 b!3031597) bm!206543))

(assert (= (or b!3031594 bm!206542) bm!206541))

(declare-fun m!3368089 () Bool)

(assert (=> b!3031595 m!3368089))

(declare-fun m!3368091 () Bool)

(assert (=> bm!206543 m!3368091))

(declare-fun m!3368093 () Bool)

(assert (=> bm!206541 m!3368093))

(assert (=> bm!206389 d!851167))

(declare-fun b!3031598 () Bool)

(declare-fun e!1901300 () Bool)

(declare-fun e!1901305 () Bool)

(assert (=> b!3031598 (= e!1901300 e!1901305)))

(declare-fun res!1247344 () Bool)

(assert (=> b!3031598 (=> res!1247344 e!1901305)))

(declare-fun call!206549 () Bool)

(assert (=> b!3031598 (= res!1247344 call!206549)))

(declare-fun b!3031599 () Bool)

(assert (=> b!3031599 (= e!1901305 (not (= (head!6733 (tail!4959 s!11993)) (c!500683 (derivativeStep!2674 (regOne!19367 r!17423) (head!6733 s!11993))))))))

(declare-fun b!3031600 () Bool)

(declare-fun res!1247346 () Bool)

(assert (=> b!3031600 (=> res!1247346 e!1901305)))

(assert (=> b!3031600 (= res!1247346 (not (isEmpty!19468 (tail!4959 (tail!4959 s!11993)))))))

(declare-fun b!3031601 () Bool)

(declare-fun res!1247343 () Bool)

(declare-fun e!1901301 () Bool)

(assert (=> b!3031601 (=> (not res!1247343) (not e!1901301))))

(assert (=> b!3031601 (= res!1247343 (not call!206549))))

(declare-fun b!3031602 () Bool)

(declare-fun res!1247341 () Bool)

(assert (=> b!3031602 (=> (not res!1247341) (not e!1901301))))

(assert (=> b!3031602 (= res!1247341 (isEmpty!19468 (tail!4959 (tail!4959 s!11993))))))

(declare-fun b!3031603 () Bool)

(declare-fun e!1901304 () Bool)

(declare-fun lt!1046082 () Bool)

(assert (=> b!3031603 (= e!1901304 (= lt!1046082 call!206549))))

(declare-fun b!3031604 () Bool)

(declare-fun res!1247342 () Bool)

(declare-fun e!1901303 () Bool)

(assert (=> b!3031604 (=> res!1247342 e!1901303)))

(assert (=> b!3031604 (= res!1247342 e!1901301)))

(declare-fun res!1247339 () Bool)

(assert (=> b!3031604 (=> (not res!1247339) (not e!1901301))))

(assert (=> b!3031604 (= res!1247339 lt!1046082)))

(declare-fun b!3031605 () Bool)

(declare-fun e!1901302 () Bool)

(assert (=> b!3031605 (= e!1901302 (not lt!1046082))))

(declare-fun b!3031606 () Bool)

(declare-fun e!1901306 () Bool)

(assert (=> b!3031606 (= e!1901306 (matchR!4309 (derivativeStep!2674 (derivativeStep!2674 (regOne!19367 r!17423) (head!6733 s!11993)) (head!6733 (tail!4959 s!11993))) (tail!4959 (tail!4959 s!11993))))))

(declare-fun b!3031607 () Bool)

(declare-fun res!1247345 () Bool)

(assert (=> b!3031607 (=> res!1247345 e!1901303)))

(assert (=> b!3031607 (= res!1247345 (not ((_ is ElementMatch!9427) (derivativeStep!2674 (regOne!19367 r!17423) (head!6733 s!11993)))))))

(assert (=> b!3031607 (= e!1901302 e!1901303)))

(declare-fun bm!206544 () Bool)

(assert (=> bm!206544 (= call!206549 (isEmpty!19468 (tail!4959 s!11993)))))

(declare-fun d!851169 () Bool)

(assert (=> d!851169 e!1901304))

(declare-fun c!500950 () Bool)

(assert (=> d!851169 (= c!500950 ((_ is EmptyExpr!9427) (derivativeStep!2674 (regOne!19367 r!17423) (head!6733 s!11993))))))

(assert (=> d!851169 (= lt!1046082 e!1901306)))

(declare-fun c!500952 () Bool)

(assert (=> d!851169 (= c!500952 (isEmpty!19468 (tail!4959 s!11993)))))

(assert (=> d!851169 (validRegex!4160 (derivativeStep!2674 (regOne!19367 r!17423) (head!6733 s!11993)))))

(assert (=> d!851169 (= (matchR!4309 (derivativeStep!2674 (regOne!19367 r!17423) (head!6733 s!11993)) (tail!4959 s!11993)) lt!1046082)))

(declare-fun b!3031608 () Bool)

(assert (=> b!3031608 (= e!1901306 (nullable!3077 (derivativeStep!2674 (regOne!19367 r!17423) (head!6733 s!11993))))))

(declare-fun b!3031609 () Bool)

(assert (=> b!3031609 (= e!1901301 (= (head!6733 (tail!4959 s!11993)) (c!500683 (derivativeStep!2674 (regOne!19367 r!17423) (head!6733 s!11993)))))))

(declare-fun b!3031610 () Bool)

(assert (=> b!3031610 (= e!1901303 e!1901300)))

(declare-fun res!1247340 () Bool)

(assert (=> b!3031610 (=> (not res!1247340) (not e!1901300))))

(assert (=> b!3031610 (= res!1247340 (not lt!1046082))))

(declare-fun b!3031611 () Bool)

(assert (=> b!3031611 (= e!1901304 e!1901302)))

(declare-fun c!500951 () Bool)

(assert (=> b!3031611 (= c!500951 ((_ is EmptyLang!9427) (derivativeStep!2674 (regOne!19367 r!17423) (head!6733 s!11993))))))

(assert (= (and d!851169 c!500952) b!3031608))

(assert (= (and d!851169 (not c!500952)) b!3031606))

(assert (= (and d!851169 c!500950) b!3031603))

(assert (= (and d!851169 (not c!500950)) b!3031611))

(assert (= (and b!3031611 c!500951) b!3031605))

(assert (= (and b!3031611 (not c!500951)) b!3031607))

(assert (= (and b!3031607 (not res!1247345)) b!3031604))

(assert (= (and b!3031604 res!1247339) b!3031601))

(assert (= (and b!3031601 res!1247343) b!3031602))

(assert (= (and b!3031602 res!1247341) b!3031609))

(assert (= (and b!3031604 (not res!1247342)) b!3031610))

(assert (= (and b!3031610 res!1247340) b!3031598))

(assert (= (and b!3031598 (not res!1247344)) b!3031600))

(assert (= (and b!3031600 (not res!1247346)) b!3031599))

(assert (= (or b!3031603 b!3031598 b!3031601) bm!206544))

(assert (=> b!3031606 m!3367701))

(assert (=> b!3031606 m!3367983))

(assert (=> b!3031606 m!3367699))

(assert (=> b!3031606 m!3367983))

(declare-fun m!3368095 () Bool)

(assert (=> b!3031606 m!3368095))

(assert (=> b!3031606 m!3367701))

(assert (=> b!3031606 m!3367987))

(assert (=> b!3031606 m!3368095))

(assert (=> b!3031606 m!3367987))

(declare-fun m!3368097 () Bool)

(assert (=> b!3031606 m!3368097))

(assert (=> b!3031600 m!3367701))

(assert (=> b!3031600 m!3367987))

(assert (=> b!3031600 m!3367987))

(assert (=> b!3031600 m!3367991))

(assert (=> d!851169 m!3367701))

(assert (=> d!851169 m!3367705))

(assert (=> d!851169 m!3367699))

(declare-fun m!3368099 () Bool)

(assert (=> d!851169 m!3368099))

(assert (=> bm!206544 m!3367701))

(assert (=> bm!206544 m!3367705))

(assert (=> b!3031602 m!3367701))

(assert (=> b!3031602 m!3367987))

(assert (=> b!3031602 m!3367987))

(assert (=> b!3031602 m!3367991))

(assert (=> b!3031599 m!3367701))

(assert (=> b!3031599 m!3367983))

(assert (=> b!3031609 m!3367701))

(assert (=> b!3031609 m!3367983))

(assert (=> b!3031608 m!3367699))

(declare-fun m!3368101 () Bool)

(assert (=> b!3031608 m!3368101))

(assert (=> b!3030738 d!851169))

(declare-fun b!3031612 () Bool)

(declare-fun e!1901310 () Regex!9427)

(declare-fun e!1901309 () Regex!9427)

(assert (=> b!3031612 (= e!1901310 e!1901309)))

(declare-fun c!500954 () Bool)

(assert (=> b!3031612 (= c!500954 ((_ is ElementMatch!9427) (regOne!19367 r!17423)))))

(declare-fun c!500956 () Bool)

(declare-fun bm!206545 () Bool)

(declare-fun call!206551 () Regex!9427)

(declare-fun c!500953 () Bool)

(assert (=> bm!206545 (= call!206551 (derivativeStep!2674 (ite c!500953 (regTwo!19367 (regOne!19367 r!17423)) (ite c!500956 (reg!9756 (regOne!19367 r!17423)) (regOne!19366 (regOne!19367 r!17423)))) (head!6733 s!11993)))))

(declare-fun bm!206546 () Bool)

(declare-fun call!206550 () Regex!9427)

(assert (=> bm!206546 (= call!206550 (derivativeStep!2674 (ite c!500953 (regOne!19367 (regOne!19367 r!17423)) (regTwo!19366 (regOne!19367 r!17423))) (head!6733 s!11993)))))

(declare-fun b!3031613 () Bool)

(declare-fun e!1901308 () Regex!9427)

(declare-fun call!206552 () Regex!9427)

(assert (=> b!3031613 (= e!1901308 (Concat!14748 call!206552 (regOne!19367 r!17423)))))

(declare-fun bm!206547 () Bool)

(assert (=> bm!206547 (= call!206552 call!206551)))

(declare-fun b!3031614 () Bool)

(declare-fun c!500957 () Bool)

(assert (=> b!3031614 (= c!500957 (nullable!3077 (regOne!19366 (regOne!19367 r!17423))))))

(declare-fun e!1901311 () Regex!9427)

(assert (=> b!3031614 (= e!1901308 e!1901311)))

(declare-fun b!3031615 () Bool)

(assert (=> b!3031615 (= c!500953 ((_ is Union!9427) (regOne!19367 r!17423)))))

(declare-fun e!1901307 () Regex!9427)

(assert (=> b!3031615 (= e!1901309 e!1901307)))

(declare-fun b!3031616 () Bool)

(assert (=> b!3031616 (= e!1901310 EmptyLang!9427)))

(declare-fun b!3031617 () Bool)

(declare-fun call!206553 () Regex!9427)

(assert (=> b!3031617 (= e!1901311 (Union!9427 (Concat!14748 call!206553 (regTwo!19366 (regOne!19367 r!17423))) EmptyLang!9427))))

(declare-fun d!851171 () Bool)

(declare-fun lt!1046083 () Regex!9427)

(assert (=> d!851171 (validRegex!4160 lt!1046083)))

(assert (=> d!851171 (= lt!1046083 e!1901310)))

(declare-fun c!500955 () Bool)

(assert (=> d!851171 (= c!500955 (or ((_ is EmptyExpr!9427) (regOne!19367 r!17423)) ((_ is EmptyLang!9427) (regOne!19367 r!17423))))))

(assert (=> d!851171 (validRegex!4160 (regOne!19367 r!17423))))

(assert (=> d!851171 (= (derivativeStep!2674 (regOne!19367 r!17423) (head!6733 s!11993)) lt!1046083)))

(declare-fun b!3031618 () Bool)

(assert (=> b!3031618 (= e!1901311 (Union!9427 (Concat!14748 call!206553 (regTwo!19366 (regOne!19367 r!17423))) call!206550))))

(declare-fun b!3031619 () Bool)

(assert (=> b!3031619 (= e!1901307 e!1901308)))

(assert (=> b!3031619 (= c!500956 ((_ is Star!9427) (regOne!19367 r!17423)))))

(declare-fun b!3031620 () Bool)

(assert (=> b!3031620 (= e!1901309 (ite (= (head!6733 s!11993) (c!500683 (regOne!19367 r!17423))) EmptyExpr!9427 EmptyLang!9427))))

(declare-fun b!3031621 () Bool)

(assert (=> b!3031621 (= e!1901307 (Union!9427 call!206550 call!206551))))

(declare-fun bm!206548 () Bool)

(assert (=> bm!206548 (= call!206553 call!206552)))

(assert (= (and d!851171 c!500955) b!3031616))

(assert (= (and d!851171 (not c!500955)) b!3031612))

(assert (= (and b!3031612 c!500954) b!3031620))

(assert (= (and b!3031612 (not c!500954)) b!3031615))

(assert (= (and b!3031615 c!500953) b!3031621))

(assert (= (and b!3031615 (not c!500953)) b!3031619))

(assert (= (and b!3031619 c!500956) b!3031613))

(assert (= (and b!3031619 (not c!500956)) b!3031614))

(assert (= (and b!3031614 c!500957) b!3031618))

(assert (= (and b!3031614 (not c!500957)) b!3031617))

(assert (= (or b!3031618 b!3031617) bm!206548))

(assert (= (or b!3031613 bm!206548) bm!206547))

(assert (= (or b!3031621 bm!206547) bm!206545))

(assert (= (or b!3031621 b!3031618) bm!206546))

(assert (=> bm!206545 m!3367697))

(declare-fun m!3368103 () Bool)

(assert (=> bm!206545 m!3368103))

(assert (=> bm!206546 m!3367697))

(declare-fun m!3368105 () Bool)

(assert (=> bm!206546 m!3368105))

(declare-fun m!3368107 () Bool)

(assert (=> b!3031614 m!3368107))

(declare-fun m!3368109 () Bool)

(assert (=> d!851171 m!3368109))

(assert (=> d!851171 m!3367709))

(assert (=> b!3030738 d!851171))

(assert (=> b!3030738 d!851121))

(assert (=> b!3030738 d!851139))

(assert (=> b!3031093 d!851121))

(declare-fun d!851173 () Bool)

(declare-fun choose!17980 (Int) Bool)

(assert (=> d!851173 (= (Exists!1692 (ite c!500862 lambda!113189 lambda!113190)) (choose!17980 (ite c!500862 lambda!113189 lambda!113190)))))

(declare-fun bs!530842 () Bool)

(assert (= bs!530842 d!851173))

(declare-fun m!3368111 () Bool)

(assert (=> bs!530842 m!3368111))

(assert (=> bm!206482 d!851173))

(declare-fun d!851175 () Bool)

(assert (=> d!851175 (= (isEmptyLang!496 (ite c!500880 lt!1046049 lt!1046053)) ((_ is EmptyLang!9427) (ite c!500880 lt!1046049 lt!1046053)))))

(assert (=> bm!206488 d!851175))

(assert (=> bm!206370 d!851127))

(declare-fun d!851177 () Bool)

(assert (=> d!851177 (= (nullable!3077 r!17423) (nullableFct!876 r!17423))))

(declare-fun bs!530843 () Bool)

(assert (= bs!530843 d!851177))

(declare-fun m!3368113 () Bool)

(assert (=> bs!530843 m!3368113))

(assert (=> b!3031325 d!851177))

(assert (=> bm!206455 d!851127))

(declare-fun d!851179 () Bool)

(assert (=> d!851179 (= (nullable!3077 (Union!9427 lt!1045957 lt!1045954)) (nullableFct!876 (Union!9427 lt!1045957 lt!1045954)))))

(declare-fun bs!530844 () Bool)

(assert (= bs!530844 d!851179))

(declare-fun m!3368115 () Bool)

(assert (=> bs!530844 m!3368115))

(assert (=> b!3031378 d!851179))

(declare-fun d!851181 () Bool)

(assert (=> d!851181 (= (nullable!3077 (reg!9756 lt!1045954)) (nullableFct!876 (reg!9756 lt!1045954)))))

(declare-fun bs!530845 () Bool)

(assert (= bs!530845 d!851181))

(declare-fun m!3368117 () Bool)

(assert (=> bs!530845 m!3368117))

(assert (=> b!3031160 d!851181))

(declare-fun d!851183 () Bool)

(assert (=> d!851183 (= (isEmptyExpr!502 (ite c!500805 lt!1046021 lt!1046020)) ((_ is EmptyExpr!9427) (ite c!500805 lt!1046021 lt!1046020)))))

(assert (=> bm!206448 d!851183))

(assert (=> d!851113 d!851127))

(declare-fun b!3031622 () Bool)

(declare-fun e!1901314 () Bool)

(declare-fun call!206556 () Bool)

(assert (=> b!3031622 (= e!1901314 call!206556)))

(declare-fun b!3031623 () Bool)

(declare-fun res!1247347 () Bool)

(declare-fun e!1901315 () Bool)

(assert (=> b!3031623 (=> res!1247347 e!1901315)))

(assert (=> b!3031623 (= res!1247347 (not ((_ is Concat!14748) (simplify!398 r!17423))))))

(declare-fun e!1901313 () Bool)

(assert (=> b!3031623 (= e!1901313 e!1901315)))

(declare-fun b!3031624 () Bool)

(declare-fun e!1901318 () Bool)

(assert (=> b!3031624 (= e!1901318 e!1901313)))

(declare-fun c!500958 () Bool)

(assert (=> b!3031624 (= c!500958 ((_ is Union!9427) (simplify!398 r!17423)))))

(declare-fun b!3031625 () Bool)

(declare-fun e!1901312 () Bool)

(assert (=> b!3031625 (= e!1901312 e!1901318)))

(declare-fun c!500959 () Bool)

(assert (=> b!3031625 (= c!500959 ((_ is Star!9427) (simplify!398 r!17423)))))

(declare-fun b!3031626 () Bool)

(declare-fun res!1247349 () Bool)

(assert (=> b!3031626 (=> (not res!1247349) (not e!1901314))))

(declare-fun call!206555 () Bool)

(assert (=> b!3031626 (= res!1247349 call!206555)))

(assert (=> b!3031626 (= e!1901313 e!1901314)))

(declare-fun b!3031627 () Bool)

(declare-fun e!1901316 () Bool)

(declare-fun call!206554 () Bool)

(assert (=> b!3031627 (= e!1901316 call!206554)))

(declare-fun b!3031628 () Bool)

(assert (=> b!3031628 (= e!1901318 e!1901316)))

(declare-fun res!1247348 () Bool)

(assert (=> b!3031628 (= res!1247348 (not (nullable!3077 (reg!9756 (simplify!398 r!17423)))))))

(assert (=> b!3031628 (=> (not res!1247348) (not e!1901316))))

(declare-fun bm!206550 () Bool)

(assert (=> bm!206550 (= call!206555 call!206554)))

(declare-fun bm!206551 () Bool)

(assert (=> bm!206551 (= call!206556 (validRegex!4160 (ite c!500958 (regTwo!19367 (simplify!398 r!17423)) (regOne!19366 (simplify!398 r!17423)))))))

(declare-fun b!3031629 () Bool)

(declare-fun e!1901317 () Bool)

(assert (=> b!3031629 (= e!1901317 call!206555)))

(declare-fun b!3031630 () Bool)

(assert (=> b!3031630 (= e!1901315 e!1901317)))

(declare-fun res!1247351 () Bool)

(assert (=> b!3031630 (=> (not res!1247351) (not e!1901317))))

(assert (=> b!3031630 (= res!1247351 call!206556)))

(declare-fun bm!206549 () Bool)

(assert (=> bm!206549 (= call!206554 (validRegex!4160 (ite c!500959 (reg!9756 (simplify!398 r!17423)) (ite c!500958 (regOne!19367 (simplify!398 r!17423)) (regTwo!19366 (simplify!398 r!17423))))))))

(declare-fun d!851185 () Bool)

(declare-fun res!1247350 () Bool)

(assert (=> d!851185 (=> res!1247350 e!1901312)))

(assert (=> d!851185 (= res!1247350 ((_ is ElementMatch!9427) (simplify!398 r!17423)))))

(assert (=> d!851185 (= (validRegex!4160 (simplify!398 r!17423)) e!1901312)))

(assert (= (and d!851185 (not res!1247350)) b!3031625))

(assert (= (and b!3031625 c!500959) b!3031628))

(assert (= (and b!3031625 (not c!500959)) b!3031624))

(assert (= (and b!3031628 res!1247348) b!3031627))

(assert (= (and b!3031624 c!500958) b!3031626))

(assert (= (and b!3031624 (not c!500958)) b!3031623))

(assert (= (and b!3031626 res!1247349) b!3031622))

(assert (= (and b!3031623 (not res!1247347)) b!3031630))

(assert (= (and b!3031630 res!1247351) b!3031629))

(assert (= (or b!3031626 b!3031629) bm!206550))

(assert (= (or b!3031622 b!3031630) bm!206551))

(assert (= (or b!3031627 bm!206550) bm!206549))

(declare-fun m!3368119 () Bool)

(assert (=> b!3031628 m!3368119))

(declare-fun m!3368121 () Bool)

(assert (=> bm!206551 m!3368121))

(declare-fun m!3368123 () Bool)

(assert (=> bm!206549 m!3368123))

(assert (=> d!851113 d!851185))

(declare-fun b!3031631 () Bool)

(declare-fun e!1901321 () Bool)

(declare-fun call!206559 () Bool)

(assert (=> b!3031631 (= e!1901321 call!206559)))

(declare-fun b!3031632 () Bool)

(declare-fun res!1247352 () Bool)

(declare-fun e!1901322 () Bool)

(assert (=> b!3031632 (=> res!1247352 e!1901322)))

(assert (=> b!3031632 (= res!1247352 (not ((_ is Concat!14748) lt!1046018)))))

(declare-fun e!1901320 () Bool)

(assert (=> b!3031632 (= e!1901320 e!1901322)))

(declare-fun b!3031633 () Bool)

(declare-fun e!1901325 () Bool)

(assert (=> b!3031633 (= e!1901325 e!1901320)))

(declare-fun c!500960 () Bool)

(assert (=> b!3031633 (= c!500960 ((_ is Union!9427) lt!1046018))))

(declare-fun b!3031634 () Bool)

(declare-fun e!1901319 () Bool)

(assert (=> b!3031634 (= e!1901319 e!1901325)))

(declare-fun c!500961 () Bool)

(assert (=> b!3031634 (= c!500961 ((_ is Star!9427) lt!1046018))))

(declare-fun b!3031635 () Bool)

(declare-fun res!1247354 () Bool)

(assert (=> b!3031635 (=> (not res!1247354) (not e!1901321))))

(declare-fun call!206558 () Bool)

(assert (=> b!3031635 (= res!1247354 call!206558)))

(assert (=> b!3031635 (= e!1901320 e!1901321)))

(declare-fun b!3031636 () Bool)

(declare-fun e!1901323 () Bool)

(declare-fun call!206557 () Bool)

(assert (=> b!3031636 (= e!1901323 call!206557)))

(declare-fun b!3031637 () Bool)

(assert (=> b!3031637 (= e!1901325 e!1901323)))

(declare-fun res!1247353 () Bool)

(assert (=> b!3031637 (= res!1247353 (not (nullable!3077 (reg!9756 lt!1046018))))))

(assert (=> b!3031637 (=> (not res!1247353) (not e!1901323))))

(declare-fun bm!206553 () Bool)

(assert (=> bm!206553 (= call!206558 call!206557)))

(declare-fun bm!206554 () Bool)

(assert (=> bm!206554 (= call!206559 (validRegex!4160 (ite c!500960 (regTwo!19367 lt!1046018) (regOne!19366 lt!1046018))))))

(declare-fun b!3031638 () Bool)

(declare-fun e!1901324 () Bool)

(assert (=> b!3031638 (= e!1901324 call!206558)))

(declare-fun b!3031639 () Bool)

(assert (=> b!3031639 (= e!1901322 e!1901324)))

(declare-fun res!1247356 () Bool)

(assert (=> b!3031639 (=> (not res!1247356) (not e!1901324))))

(assert (=> b!3031639 (= res!1247356 call!206559)))

(declare-fun bm!206552 () Bool)

(assert (=> bm!206552 (= call!206557 (validRegex!4160 (ite c!500961 (reg!9756 lt!1046018) (ite c!500960 (regOne!19367 lt!1046018) (regTwo!19366 lt!1046018)))))))

(declare-fun d!851187 () Bool)

(declare-fun res!1247355 () Bool)

(assert (=> d!851187 (=> res!1247355 e!1901319)))

(assert (=> d!851187 (= res!1247355 ((_ is ElementMatch!9427) lt!1046018))))

(assert (=> d!851187 (= (validRegex!4160 lt!1046018) e!1901319)))

(assert (= (and d!851187 (not res!1247355)) b!3031634))

(assert (= (and b!3031634 c!500961) b!3031637))

(assert (= (and b!3031634 (not c!500961)) b!3031633))

(assert (= (and b!3031637 res!1247353) b!3031636))

(assert (= (and b!3031633 c!500960) b!3031635))

(assert (= (and b!3031633 (not c!500960)) b!3031632))

(assert (= (and b!3031635 res!1247354) b!3031631))

(assert (= (and b!3031632 (not res!1247352)) b!3031639))

(assert (= (and b!3031639 res!1247356) b!3031638))

(assert (= (or b!3031635 b!3031638) bm!206553))

(assert (= (or b!3031631 b!3031639) bm!206554))

(assert (= (or b!3031636 bm!206553) bm!206552))

(declare-fun m!3368125 () Bool)

(assert (=> b!3031637 m!3368125))

(declare-fun m!3368127 () Bool)

(assert (=> bm!206554 m!3368127))

(declare-fun m!3368129 () Bool)

(assert (=> bm!206552 m!3368129))

(assert (=> d!851083 d!851187))

(assert (=> d!851083 d!851163))

(declare-fun d!851189 () Bool)

(assert (=> d!851189 (= (isEmptyExpr!502 (ite c!500787 lt!1046014 lt!1046013)) ((_ is EmptyExpr!9427) (ite c!500787 lt!1046014 lt!1046013)))))

(assert (=> bm!206434 d!851189))

(declare-fun b!3031640 () Bool)

(declare-fun e!1901328 () Bool)

(declare-fun call!206562 () Bool)

(assert (=> b!3031640 (= e!1901328 call!206562)))

(declare-fun b!3031641 () Bool)

(declare-fun res!1247357 () Bool)

(declare-fun e!1901329 () Bool)

(assert (=> b!3031641 (=> res!1247357 e!1901329)))

(assert (=> b!3031641 (= res!1247357 (not ((_ is Concat!14748) (ite c!500836 (reg!9756 lt!1045954) (ite c!500835 (regOne!19367 lt!1045954) (regTwo!19366 lt!1045954))))))))

(declare-fun e!1901327 () Bool)

(assert (=> b!3031641 (= e!1901327 e!1901329)))

(declare-fun b!3031642 () Bool)

(declare-fun e!1901332 () Bool)

(assert (=> b!3031642 (= e!1901332 e!1901327)))

(declare-fun c!500962 () Bool)

(assert (=> b!3031642 (= c!500962 ((_ is Union!9427) (ite c!500836 (reg!9756 lt!1045954) (ite c!500835 (regOne!19367 lt!1045954) (regTwo!19366 lt!1045954)))))))

(declare-fun b!3031643 () Bool)

(declare-fun e!1901326 () Bool)

(assert (=> b!3031643 (= e!1901326 e!1901332)))

(declare-fun c!500963 () Bool)

(assert (=> b!3031643 (= c!500963 ((_ is Star!9427) (ite c!500836 (reg!9756 lt!1045954) (ite c!500835 (regOne!19367 lt!1045954) (regTwo!19366 lt!1045954)))))))

(declare-fun b!3031644 () Bool)

(declare-fun res!1247359 () Bool)

(assert (=> b!3031644 (=> (not res!1247359) (not e!1901328))))

(declare-fun call!206561 () Bool)

(assert (=> b!3031644 (= res!1247359 call!206561)))

(assert (=> b!3031644 (= e!1901327 e!1901328)))

(declare-fun b!3031645 () Bool)

(declare-fun e!1901330 () Bool)

(declare-fun call!206560 () Bool)

(assert (=> b!3031645 (= e!1901330 call!206560)))

(declare-fun b!3031646 () Bool)

(assert (=> b!3031646 (= e!1901332 e!1901330)))

(declare-fun res!1247358 () Bool)

(assert (=> b!3031646 (= res!1247358 (not (nullable!3077 (reg!9756 (ite c!500836 (reg!9756 lt!1045954) (ite c!500835 (regOne!19367 lt!1045954) (regTwo!19366 lt!1045954)))))))))

(assert (=> b!3031646 (=> (not res!1247358) (not e!1901330))))

(declare-fun bm!206556 () Bool)

(assert (=> bm!206556 (= call!206561 call!206560)))

(declare-fun bm!206557 () Bool)

(assert (=> bm!206557 (= call!206562 (validRegex!4160 (ite c!500962 (regTwo!19367 (ite c!500836 (reg!9756 lt!1045954) (ite c!500835 (regOne!19367 lt!1045954) (regTwo!19366 lt!1045954)))) (regOne!19366 (ite c!500836 (reg!9756 lt!1045954) (ite c!500835 (regOne!19367 lt!1045954) (regTwo!19366 lt!1045954)))))))))

(declare-fun b!3031647 () Bool)

(declare-fun e!1901331 () Bool)

(assert (=> b!3031647 (= e!1901331 call!206561)))

(declare-fun b!3031648 () Bool)

(assert (=> b!3031648 (= e!1901329 e!1901331)))

(declare-fun res!1247361 () Bool)

(assert (=> b!3031648 (=> (not res!1247361) (not e!1901331))))

(assert (=> b!3031648 (= res!1247361 call!206562)))

(declare-fun bm!206555 () Bool)

(assert (=> bm!206555 (= call!206560 (validRegex!4160 (ite c!500963 (reg!9756 (ite c!500836 (reg!9756 lt!1045954) (ite c!500835 (regOne!19367 lt!1045954) (regTwo!19366 lt!1045954)))) (ite c!500962 (regOne!19367 (ite c!500836 (reg!9756 lt!1045954) (ite c!500835 (regOne!19367 lt!1045954) (regTwo!19366 lt!1045954)))) (regTwo!19366 (ite c!500836 (reg!9756 lt!1045954) (ite c!500835 (regOne!19367 lt!1045954) (regTwo!19366 lt!1045954))))))))))

(declare-fun d!851191 () Bool)

(declare-fun res!1247360 () Bool)

(assert (=> d!851191 (=> res!1247360 e!1901326)))

(assert (=> d!851191 (= res!1247360 ((_ is ElementMatch!9427) (ite c!500836 (reg!9756 lt!1045954) (ite c!500835 (regOne!19367 lt!1045954) (regTwo!19366 lt!1045954)))))))

(assert (=> d!851191 (= (validRegex!4160 (ite c!500836 (reg!9756 lt!1045954) (ite c!500835 (regOne!19367 lt!1045954) (regTwo!19366 lt!1045954)))) e!1901326)))

(assert (= (and d!851191 (not res!1247360)) b!3031643))

(assert (= (and b!3031643 c!500963) b!3031646))

(assert (= (and b!3031643 (not c!500963)) b!3031642))

(assert (= (and b!3031646 res!1247358) b!3031645))

(assert (= (and b!3031642 c!500962) b!3031644))

(assert (= (and b!3031642 (not c!500962)) b!3031641))

(assert (= (and b!3031644 res!1247359) b!3031640))

(assert (= (and b!3031641 (not res!1247357)) b!3031648))

(assert (= (and b!3031648 res!1247361) b!3031647))

(assert (= (or b!3031644 b!3031647) bm!206556))

(assert (= (or b!3031640 b!3031648) bm!206557))

(assert (= (or b!3031645 bm!206556) bm!206555))

(declare-fun m!3368131 () Bool)

(assert (=> b!3031646 m!3368131))

(declare-fun m!3368133 () Bool)

(assert (=> bm!206557 m!3368133))

(declare-fun m!3368135 () Bool)

(assert (=> bm!206555 m!3368135))

(assert (=> bm!206465 d!851191))

(assert (=> b!3031333 d!851145))

(assert (=> b!3031333 d!851139))

(declare-fun b!3031649 () Bool)

(declare-fun e!1901335 () Bool)

(declare-fun call!206565 () Bool)

(assert (=> b!3031649 (= e!1901335 call!206565)))

(declare-fun b!3031650 () Bool)

(declare-fun res!1247362 () Bool)

(declare-fun e!1901336 () Bool)

(assert (=> b!3031650 (=> res!1247362 e!1901336)))

(assert (=> b!3031650 (= res!1247362 (not ((_ is Concat!14748) (ite c!500835 (regTwo!19367 lt!1045954) (regOne!19366 lt!1045954)))))))

(declare-fun e!1901334 () Bool)

(assert (=> b!3031650 (= e!1901334 e!1901336)))

(declare-fun b!3031651 () Bool)

(declare-fun e!1901339 () Bool)

(assert (=> b!3031651 (= e!1901339 e!1901334)))

(declare-fun c!500964 () Bool)

(assert (=> b!3031651 (= c!500964 ((_ is Union!9427) (ite c!500835 (regTwo!19367 lt!1045954) (regOne!19366 lt!1045954))))))

(declare-fun b!3031652 () Bool)

(declare-fun e!1901333 () Bool)

(assert (=> b!3031652 (= e!1901333 e!1901339)))

(declare-fun c!500965 () Bool)

(assert (=> b!3031652 (= c!500965 ((_ is Star!9427) (ite c!500835 (regTwo!19367 lt!1045954) (regOne!19366 lt!1045954))))))

(declare-fun b!3031653 () Bool)

(declare-fun res!1247364 () Bool)

(assert (=> b!3031653 (=> (not res!1247364) (not e!1901335))))

(declare-fun call!206564 () Bool)

(assert (=> b!3031653 (= res!1247364 call!206564)))

(assert (=> b!3031653 (= e!1901334 e!1901335)))

(declare-fun b!3031654 () Bool)

(declare-fun e!1901337 () Bool)

(declare-fun call!206563 () Bool)

(assert (=> b!3031654 (= e!1901337 call!206563)))

(declare-fun b!3031655 () Bool)

(assert (=> b!3031655 (= e!1901339 e!1901337)))

(declare-fun res!1247363 () Bool)

(assert (=> b!3031655 (= res!1247363 (not (nullable!3077 (reg!9756 (ite c!500835 (regTwo!19367 lt!1045954) (regOne!19366 lt!1045954))))))))

(assert (=> b!3031655 (=> (not res!1247363) (not e!1901337))))

(declare-fun bm!206559 () Bool)

(assert (=> bm!206559 (= call!206564 call!206563)))

(declare-fun bm!206560 () Bool)

(assert (=> bm!206560 (= call!206565 (validRegex!4160 (ite c!500964 (regTwo!19367 (ite c!500835 (regTwo!19367 lt!1045954) (regOne!19366 lt!1045954))) (regOne!19366 (ite c!500835 (regTwo!19367 lt!1045954) (regOne!19366 lt!1045954))))))))

(declare-fun b!3031656 () Bool)

(declare-fun e!1901338 () Bool)

(assert (=> b!3031656 (= e!1901338 call!206564)))

(declare-fun b!3031657 () Bool)

(assert (=> b!3031657 (= e!1901336 e!1901338)))

(declare-fun res!1247366 () Bool)

(assert (=> b!3031657 (=> (not res!1247366) (not e!1901338))))

(assert (=> b!3031657 (= res!1247366 call!206565)))

(declare-fun bm!206558 () Bool)

(assert (=> bm!206558 (= call!206563 (validRegex!4160 (ite c!500965 (reg!9756 (ite c!500835 (regTwo!19367 lt!1045954) (regOne!19366 lt!1045954))) (ite c!500964 (regOne!19367 (ite c!500835 (regTwo!19367 lt!1045954) (regOne!19366 lt!1045954))) (regTwo!19366 (ite c!500835 (regTwo!19367 lt!1045954) (regOne!19366 lt!1045954)))))))))

(declare-fun d!851193 () Bool)

(declare-fun res!1247365 () Bool)

(assert (=> d!851193 (=> res!1247365 e!1901333)))

(assert (=> d!851193 (= res!1247365 ((_ is ElementMatch!9427) (ite c!500835 (regTwo!19367 lt!1045954) (regOne!19366 lt!1045954))))))

(assert (=> d!851193 (= (validRegex!4160 (ite c!500835 (regTwo!19367 lt!1045954) (regOne!19366 lt!1045954))) e!1901333)))

(assert (= (and d!851193 (not res!1247365)) b!3031652))

(assert (= (and b!3031652 c!500965) b!3031655))

(assert (= (and b!3031652 (not c!500965)) b!3031651))

(assert (= (and b!3031655 res!1247363) b!3031654))

(assert (= (and b!3031651 c!500964) b!3031653))

(assert (= (and b!3031651 (not c!500964)) b!3031650))

(assert (= (and b!3031653 res!1247364) b!3031649))

(assert (= (and b!3031650 (not res!1247362)) b!3031657))

(assert (= (and b!3031657 res!1247366) b!3031656))

(assert (= (or b!3031653 b!3031656) bm!206559))

(assert (= (or b!3031649 b!3031657) bm!206560))

(assert (= (or b!3031654 bm!206559) bm!206558))

(declare-fun m!3368137 () Bool)

(assert (=> b!3031655 m!3368137))

(declare-fun m!3368139 () Bool)

(assert (=> bm!206560 m!3368139))

(declare-fun m!3368141 () Bool)

(assert (=> bm!206558 m!3368141))

(assert (=> bm!206467 d!851193))

(assert (=> b!3030741 d!851121))

(declare-fun b!3031658 () Bool)

(declare-fun e!1901342 () Bool)

(declare-fun call!206568 () Bool)

(assert (=> b!3031658 (= e!1901342 call!206568)))

(declare-fun b!3031659 () Bool)

(declare-fun res!1247367 () Bool)

(declare-fun e!1901343 () Bool)

(assert (=> b!3031659 (=> res!1247367 e!1901343)))

(assert (=> b!3031659 (= res!1247367 (not ((_ is Concat!14748) lt!1046011)))))

(declare-fun e!1901341 () Bool)

(assert (=> b!3031659 (= e!1901341 e!1901343)))

(declare-fun b!3031660 () Bool)

(declare-fun e!1901346 () Bool)

(assert (=> b!3031660 (= e!1901346 e!1901341)))

(declare-fun c!500966 () Bool)

(assert (=> b!3031660 (= c!500966 ((_ is Union!9427) lt!1046011))))

(declare-fun b!3031661 () Bool)

(declare-fun e!1901340 () Bool)

(assert (=> b!3031661 (= e!1901340 e!1901346)))

(declare-fun c!500967 () Bool)

(assert (=> b!3031661 (= c!500967 ((_ is Star!9427) lt!1046011))))

(declare-fun b!3031662 () Bool)

(declare-fun res!1247369 () Bool)

(assert (=> b!3031662 (=> (not res!1247369) (not e!1901342))))

(declare-fun call!206567 () Bool)

(assert (=> b!3031662 (= res!1247369 call!206567)))

(assert (=> b!3031662 (= e!1901341 e!1901342)))

(declare-fun b!3031663 () Bool)

(declare-fun e!1901344 () Bool)

(declare-fun call!206566 () Bool)

(assert (=> b!3031663 (= e!1901344 call!206566)))

(declare-fun b!3031664 () Bool)

(assert (=> b!3031664 (= e!1901346 e!1901344)))

(declare-fun res!1247368 () Bool)

(assert (=> b!3031664 (= res!1247368 (not (nullable!3077 (reg!9756 lt!1046011))))))

(assert (=> b!3031664 (=> (not res!1247368) (not e!1901344))))

(declare-fun bm!206562 () Bool)

(assert (=> bm!206562 (= call!206567 call!206566)))

(declare-fun bm!206563 () Bool)

(assert (=> bm!206563 (= call!206568 (validRegex!4160 (ite c!500966 (regTwo!19367 lt!1046011) (regOne!19366 lt!1046011))))))

(declare-fun b!3031665 () Bool)

(declare-fun e!1901345 () Bool)

(assert (=> b!3031665 (= e!1901345 call!206567)))

(declare-fun b!3031666 () Bool)

(assert (=> b!3031666 (= e!1901343 e!1901345)))

(declare-fun res!1247371 () Bool)

(assert (=> b!3031666 (=> (not res!1247371) (not e!1901345))))

(assert (=> b!3031666 (= res!1247371 call!206568)))

(declare-fun bm!206561 () Bool)

(assert (=> bm!206561 (= call!206566 (validRegex!4160 (ite c!500967 (reg!9756 lt!1046011) (ite c!500966 (regOne!19367 lt!1046011) (regTwo!19366 lt!1046011)))))))

(declare-fun d!851195 () Bool)

(declare-fun res!1247370 () Bool)

(assert (=> d!851195 (=> res!1247370 e!1901340)))

(assert (=> d!851195 (= res!1247370 ((_ is ElementMatch!9427) lt!1046011))))

(assert (=> d!851195 (= (validRegex!4160 lt!1046011) e!1901340)))

(assert (= (and d!851195 (not res!1247370)) b!3031661))

(assert (= (and b!3031661 c!500967) b!3031664))

(assert (= (and b!3031661 (not c!500967)) b!3031660))

(assert (= (and b!3031664 res!1247368) b!3031663))

(assert (= (and b!3031660 c!500966) b!3031662))

(assert (= (and b!3031660 (not c!500966)) b!3031659))

(assert (= (and b!3031662 res!1247369) b!3031658))

(assert (= (and b!3031659 (not res!1247367)) b!3031666))

(assert (= (and b!3031666 res!1247371) b!3031665))

(assert (= (or b!3031662 b!3031665) bm!206562))

(assert (= (or b!3031658 b!3031666) bm!206563))

(assert (= (or b!3031663 bm!206562) bm!206561))

(declare-fun m!3368143 () Bool)

(assert (=> b!3031664 m!3368143))

(declare-fun m!3368145 () Bool)

(assert (=> bm!206563 m!3368145))

(declare-fun m!3368147 () Bool)

(assert (=> bm!206561 m!3368147))

(assert (=> d!851067 d!851195))

(assert (=> d!851067 d!851129))

(assert (=> b!3030819 d!851121))

(assert (=> b!3031331 d!851145))

(assert (=> b!3031331 d!851139))

(declare-fun b!3031667 () Bool)

(declare-fun e!1901347 () Bool)

(declare-fun e!1901352 () Bool)

(assert (=> b!3031667 (= e!1901347 e!1901352)))

(declare-fun res!1247377 () Bool)

(assert (=> b!3031667 (=> res!1247377 e!1901352)))

(declare-fun call!206569 () Bool)

(assert (=> b!3031667 (= res!1247377 call!206569)))

(declare-fun b!3031668 () Bool)

(assert (=> b!3031668 (= e!1901352 (not (= (head!6733 (tail!4959 s!11993)) (c!500683 (derivativeStep!2674 (regTwo!19367 r!17423) (head!6733 s!11993))))))))

(declare-fun b!3031669 () Bool)

(declare-fun res!1247379 () Bool)

(assert (=> b!3031669 (=> res!1247379 e!1901352)))

(assert (=> b!3031669 (= res!1247379 (not (isEmpty!19468 (tail!4959 (tail!4959 s!11993)))))))

(declare-fun b!3031670 () Bool)

(declare-fun res!1247376 () Bool)

(declare-fun e!1901348 () Bool)

(assert (=> b!3031670 (=> (not res!1247376) (not e!1901348))))

(assert (=> b!3031670 (= res!1247376 (not call!206569))))

(declare-fun b!3031671 () Bool)

(declare-fun res!1247374 () Bool)

(assert (=> b!3031671 (=> (not res!1247374) (not e!1901348))))

(assert (=> b!3031671 (= res!1247374 (isEmpty!19468 (tail!4959 (tail!4959 s!11993))))))

(declare-fun b!3031672 () Bool)

(declare-fun e!1901351 () Bool)

(declare-fun lt!1046084 () Bool)

(assert (=> b!3031672 (= e!1901351 (= lt!1046084 call!206569))))

(declare-fun b!3031673 () Bool)

(declare-fun res!1247375 () Bool)

(declare-fun e!1901350 () Bool)

(assert (=> b!3031673 (=> res!1247375 e!1901350)))

(assert (=> b!3031673 (= res!1247375 e!1901348)))

(declare-fun res!1247372 () Bool)

(assert (=> b!3031673 (=> (not res!1247372) (not e!1901348))))

(assert (=> b!3031673 (= res!1247372 lt!1046084)))

(declare-fun b!3031674 () Bool)

(declare-fun e!1901349 () Bool)

(assert (=> b!3031674 (= e!1901349 (not lt!1046084))))

(declare-fun b!3031675 () Bool)

(declare-fun e!1901353 () Bool)

(assert (=> b!3031675 (= e!1901353 (matchR!4309 (derivativeStep!2674 (derivativeStep!2674 (regTwo!19367 r!17423) (head!6733 s!11993)) (head!6733 (tail!4959 s!11993))) (tail!4959 (tail!4959 s!11993))))))

(declare-fun b!3031676 () Bool)

(declare-fun res!1247378 () Bool)

(assert (=> b!3031676 (=> res!1247378 e!1901350)))

(assert (=> b!3031676 (= res!1247378 (not ((_ is ElementMatch!9427) (derivativeStep!2674 (regTwo!19367 r!17423) (head!6733 s!11993)))))))

(assert (=> b!3031676 (= e!1901349 e!1901350)))

(declare-fun bm!206564 () Bool)

(assert (=> bm!206564 (= call!206569 (isEmpty!19468 (tail!4959 s!11993)))))

(declare-fun d!851197 () Bool)

(assert (=> d!851197 e!1901351))

(declare-fun c!500968 () Bool)

(assert (=> d!851197 (= c!500968 ((_ is EmptyExpr!9427) (derivativeStep!2674 (regTwo!19367 r!17423) (head!6733 s!11993))))))

(assert (=> d!851197 (= lt!1046084 e!1901353)))

(declare-fun c!500970 () Bool)

(assert (=> d!851197 (= c!500970 (isEmpty!19468 (tail!4959 s!11993)))))

(assert (=> d!851197 (validRegex!4160 (derivativeStep!2674 (regTwo!19367 r!17423) (head!6733 s!11993)))))

(assert (=> d!851197 (= (matchR!4309 (derivativeStep!2674 (regTwo!19367 r!17423) (head!6733 s!11993)) (tail!4959 s!11993)) lt!1046084)))

(declare-fun b!3031677 () Bool)

(assert (=> b!3031677 (= e!1901353 (nullable!3077 (derivativeStep!2674 (regTwo!19367 r!17423) (head!6733 s!11993))))))

(declare-fun b!3031678 () Bool)

(assert (=> b!3031678 (= e!1901348 (= (head!6733 (tail!4959 s!11993)) (c!500683 (derivativeStep!2674 (regTwo!19367 r!17423) (head!6733 s!11993)))))))

(declare-fun b!3031679 () Bool)

(assert (=> b!3031679 (= e!1901350 e!1901347)))

(declare-fun res!1247373 () Bool)

(assert (=> b!3031679 (=> (not res!1247373) (not e!1901347))))

(assert (=> b!3031679 (= res!1247373 (not lt!1046084))))

(declare-fun b!3031680 () Bool)

(assert (=> b!3031680 (= e!1901351 e!1901349)))

(declare-fun c!500969 () Bool)

(assert (=> b!3031680 (= c!500969 ((_ is EmptyLang!9427) (derivativeStep!2674 (regTwo!19367 r!17423) (head!6733 s!11993))))))

(assert (= (and d!851197 c!500970) b!3031677))

(assert (= (and d!851197 (not c!500970)) b!3031675))

(assert (= (and d!851197 c!500968) b!3031672))

(assert (= (and d!851197 (not c!500968)) b!3031680))

(assert (= (and b!3031680 c!500969) b!3031674))

(assert (= (and b!3031680 (not c!500969)) b!3031676))

(assert (= (and b!3031676 (not res!1247378)) b!3031673))

(assert (= (and b!3031673 res!1247372) b!3031670))

(assert (= (and b!3031670 res!1247376) b!3031671))

(assert (= (and b!3031671 res!1247374) b!3031678))

(assert (= (and b!3031673 (not res!1247375)) b!3031679))

(assert (= (and b!3031679 res!1247373) b!3031667))

(assert (= (and b!3031667 (not res!1247377)) b!3031669))

(assert (= (and b!3031669 (not res!1247379)) b!3031668))

(assert (= (or b!3031672 b!3031667 b!3031670) bm!206564))

(assert (=> b!3031675 m!3367701))

(assert (=> b!3031675 m!3367983))

(assert (=> b!3031675 m!3367743))

(assert (=> b!3031675 m!3367983))

(declare-fun m!3368149 () Bool)

(assert (=> b!3031675 m!3368149))

(assert (=> b!3031675 m!3367701))

(assert (=> b!3031675 m!3367987))

(assert (=> b!3031675 m!3368149))

(assert (=> b!3031675 m!3367987))

(declare-fun m!3368151 () Bool)

(assert (=> b!3031675 m!3368151))

(assert (=> b!3031669 m!3367701))

(assert (=> b!3031669 m!3367987))

(assert (=> b!3031669 m!3367987))

(assert (=> b!3031669 m!3367991))

(assert (=> d!851197 m!3367701))

(assert (=> d!851197 m!3367705))

(assert (=> d!851197 m!3367743))

(declare-fun m!3368153 () Bool)

(assert (=> d!851197 m!3368153))

(assert (=> bm!206564 m!3367701))

(assert (=> bm!206564 m!3367705))

(assert (=> b!3031671 m!3367701))

(assert (=> b!3031671 m!3367987))

(assert (=> b!3031671 m!3367987))

(assert (=> b!3031671 m!3367991))

(assert (=> b!3031668 m!3367701))

(assert (=> b!3031668 m!3367983))

(assert (=> b!3031678 m!3367701))

(assert (=> b!3031678 m!3367983))

(assert (=> b!3031677 m!3367743))

(declare-fun m!3368155 () Bool)

(assert (=> b!3031677 m!3368155))

(assert (=> b!3030826 d!851197))

(declare-fun b!3031681 () Bool)

(declare-fun e!1901357 () Regex!9427)

(declare-fun e!1901356 () Regex!9427)

(assert (=> b!3031681 (= e!1901357 e!1901356)))

(declare-fun c!500972 () Bool)

(assert (=> b!3031681 (= c!500972 ((_ is ElementMatch!9427) (regTwo!19367 r!17423)))))

(declare-fun c!500974 () Bool)

(declare-fun bm!206565 () Bool)

(declare-fun call!206571 () Regex!9427)

(declare-fun c!500971 () Bool)

(assert (=> bm!206565 (= call!206571 (derivativeStep!2674 (ite c!500971 (regTwo!19367 (regTwo!19367 r!17423)) (ite c!500974 (reg!9756 (regTwo!19367 r!17423)) (regOne!19366 (regTwo!19367 r!17423)))) (head!6733 s!11993)))))

(declare-fun call!206570 () Regex!9427)

(declare-fun bm!206566 () Bool)

(assert (=> bm!206566 (= call!206570 (derivativeStep!2674 (ite c!500971 (regOne!19367 (regTwo!19367 r!17423)) (regTwo!19366 (regTwo!19367 r!17423))) (head!6733 s!11993)))))

(declare-fun b!3031682 () Bool)

(declare-fun e!1901355 () Regex!9427)

(declare-fun call!206572 () Regex!9427)

(assert (=> b!3031682 (= e!1901355 (Concat!14748 call!206572 (regTwo!19367 r!17423)))))

(declare-fun bm!206567 () Bool)

(assert (=> bm!206567 (= call!206572 call!206571)))

(declare-fun b!3031683 () Bool)

(declare-fun c!500975 () Bool)

(assert (=> b!3031683 (= c!500975 (nullable!3077 (regOne!19366 (regTwo!19367 r!17423))))))

(declare-fun e!1901358 () Regex!9427)

(assert (=> b!3031683 (= e!1901355 e!1901358)))

(declare-fun b!3031684 () Bool)

(assert (=> b!3031684 (= c!500971 ((_ is Union!9427) (regTwo!19367 r!17423)))))

(declare-fun e!1901354 () Regex!9427)

(assert (=> b!3031684 (= e!1901356 e!1901354)))

(declare-fun b!3031685 () Bool)

(assert (=> b!3031685 (= e!1901357 EmptyLang!9427)))

(declare-fun b!3031686 () Bool)

(declare-fun call!206573 () Regex!9427)

(assert (=> b!3031686 (= e!1901358 (Union!9427 (Concat!14748 call!206573 (regTwo!19366 (regTwo!19367 r!17423))) EmptyLang!9427))))

(declare-fun d!851199 () Bool)

(declare-fun lt!1046085 () Regex!9427)

(assert (=> d!851199 (validRegex!4160 lt!1046085)))

(assert (=> d!851199 (= lt!1046085 e!1901357)))

(declare-fun c!500973 () Bool)

(assert (=> d!851199 (= c!500973 (or ((_ is EmptyExpr!9427) (regTwo!19367 r!17423)) ((_ is EmptyLang!9427) (regTwo!19367 r!17423))))))

(assert (=> d!851199 (validRegex!4160 (regTwo!19367 r!17423))))

(assert (=> d!851199 (= (derivativeStep!2674 (regTwo!19367 r!17423) (head!6733 s!11993)) lt!1046085)))

(declare-fun b!3031687 () Bool)

(assert (=> b!3031687 (= e!1901358 (Union!9427 (Concat!14748 call!206573 (regTwo!19366 (regTwo!19367 r!17423))) call!206570))))

(declare-fun b!3031688 () Bool)

(assert (=> b!3031688 (= e!1901354 e!1901355)))

(assert (=> b!3031688 (= c!500974 ((_ is Star!9427) (regTwo!19367 r!17423)))))

(declare-fun b!3031689 () Bool)

(assert (=> b!3031689 (= e!1901356 (ite (= (head!6733 s!11993) (c!500683 (regTwo!19367 r!17423))) EmptyExpr!9427 EmptyLang!9427))))

(declare-fun b!3031690 () Bool)

(assert (=> b!3031690 (= e!1901354 (Union!9427 call!206570 call!206571))))

(declare-fun bm!206568 () Bool)

(assert (=> bm!206568 (= call!206573 call!206572)))

(assert (= (and d!851199 c!500973) b!3031685))

(assert (= (and d!851199 (not c!500973)) b!3031681))

(assert (= (and b!3031681 c!500972) b!3031689))

(assert (= (and b!3031681 (not c!500972)) b!3031684))

(assert (= (and b!3031684 c!500971) b!3031690))

(assert (= (and b!3031684 (not c!500971)) b!3031688))

(assert (= (and b!3031688 c!500974) b!3031682))

(assert (= (and b!3031688 (not c!500974)) b!3031683))

(assert (= (and b!3031683 c!500975) b!3031687))

(assert (= (and b!3031683 (not c!500975)) b!3031686))

(assert (= (or b!3031687 b!3031686) bm!206568))

(assert (= (or b!3031682 bm!206568) bm!206567))

(assert (= (or b!3031690 bm!206567) bm!206565))

(assert (= (or b!3031690 b!3031687) bm!206566))

(assert (=> bm!206565 m!3367697))

(declare-fun m!3368157 () Bool)

(assert (=> bm!206565 m!3368157))

(assert (=> bm!206566 m!3367697))

(declare-fun m!3368159 () Bool)

(assert (=> bm!206566 m!3368159))

(declare-fun m!3368161 () Bool)

(assert (=> b!3031683 m!3368161))

(declare-fun m!3368163 () Bool)

(assert (=> d!851199 m!3368163))

(assert (=> d!851199 m!3367729))

(assert (=> b!3030826 d!851199))

(assert (=> b!3030826 d!851121))

(assert (=> b!3030826 d!851139))

(assert (=> b!3031084 d!851145))

(assert (=> b!3031084 d!851139))

(assert (=> b!3030822 d!851145))

(assert (=> b!3030822 d!851139))

(declare-fun call!206578 () Bool)

(declare-fun lt!1046090 () Regex!9427)

(declare-fun lt!1046091 () Regex!9427)

(declare-fun c!500977 () Bool)

(declare-fun bm!206569 () Bool)

(assert (=> bm!206569 (= call!206578 (isEmptyExpr!502 (ite c!500977 lt!1046091 lt!1046090)))))

(declare-fun b!3031691 () Bool)

(declare-fun c!500976 () Bool)

(assert (=> b!3031691 (= c!500976 ((_ is EmptyExpr!9427) (ite c!500873 (reg!9756 r!17423) (ite c!500880 (regOne!19367 r!17423) (regTwo!19366 r!17423)))))))

(declare-fun e!1901361 () Regex!9427)

(declare-fun e!1901370 () Regex!9427)

(assert (=> b!3031691 (= e!1901361 e!1901370)))

(declare-fun b!3031692 () Bool)

(declare-fun e!1901363 () Regex!9427)

(assert (=> b!3031692 (= e!1901363 e!1901361)))

(declare-fun c!500983 () Bool)

(assert (=> b!3031692 (= c!500983 ((_ is ElementMatch!9427) (ite c!500873 (reg!9756 r!17423) (ite c!500880 (regOne!19367 r!17423) (regTwo!19366 r!17423)))))))

(declare-fun b!3031693 () Bool)

(assert (=> b!3031693 (= e!1901363 EmptyLang!9427)))

(declare-fun b!3031694 () Bool)

(declare-fun e!1901359 () Regex!9427)

(declare-fun e!1901366 () Regex!9427)

(assert (=> b!3031694 (= e!1901359 e!1901366)))

(declare-fun lt!1046086 () Regex!9427)

(declare-fun call!206575 () Regex!9427)

(assert (=> b!3031694 (= lt!1046086 call!206575)))

(declare-fun lt!1046087 () Regex!9427)

(declare-fun call!206580 () Regex!9427)

(assert (=> b!3031694 (= lt!1046087 call!206580)))

(declare-fun c!500981 () Bool)

(declare-fun call!206576 () Bool)

(assert (=> b!3031694 (= c!500981 call!206576)))

(declare-fun b!3031695 () Bool)

(declare-fun e!1901360 () Regex!9427)

(assert (=> b!3031695 (= e!1901360 lt!1046086)))

(declare-fun b!3031696 () Bool)

(declare-fun c!500979 () Bool)

(declare-fun e!1901364 () Bool)

(assert (=> b!3031696 (= c!500979 e!1901364)))

(declare-fun res!1247381 () Bool)

(assert (=> b!3031696 (=> res!1247381 e!1901364)))

(declare-fun call!206579 () Bool)

(assert (=> b!3031696 (= res!1247381 call!206579)))

(declare-fun call!206574 () Regex!9427)

(assert (=> b!3031696 (= lt!1046091 call!206574)))

(declare-fun e!1901365 () Regex!9427)

(declare-fun e!1901368 () Regex!9427)

(assert (=> b!3031696 (= e!1901365 e!1901368)))

(declare-fun b!3031697 () Bool)

(declare-fun e!1901362 () Regex!9427)

(assert (=> b!3031697 (= e!1901362 EmptyLang!9427)))

(declare-fun b!3031698 () Bool)

(declare-fun e!1901367 () Bool)

(assert (=> b!3031698 (= e!1901367 call!206576)))

(declare-fun lt!1046088 () Regex!9427)

(declare-fun b!3031699 () Bool)

(declare-fun e!1901372 () Bool)

(assert (=> b!3031699 (= e!1901372 (= (nullable!3077 lt!1046088) (nullable!3077 (ite c!500873 (reg!9756 r!17423) (ite c!500880 (regOne!19367 r!17423) (regTwo!19366 r!17423))))))))

(declare-fun b!3031700 () Bool)

(assert (=> b!3031700 (= e!1901368 (Star!9427 lt!1046091))))

(declare-fun b!3031701 () Bool)

(assert (=> b!3031701 (= e!1901370 EmptyExpr!9427)))

(declare-fun b!3031702 () Bool)

(declare-fun e!1901371 () Regex!9427)

(declare-fun lt!1046089 () Regex!9427)

(assert (=> b!3031702 (= e!1901371 lt!1046089)))

(declare-fun bm!206571 () Bool)

(declare-fun c!500984 () Bool)

(assert (=> bm!206571 (= call!206576 (isEmptyLang!496 (ite c!500984 lt!1046086 lt!1046090)))))

(declare-fun b!3031703 () Bool)

(assert (=> b!3031703 (= c!500984 ((_ is Union!9427) (ite c!500873 (reg!9756 r!17423) (ite c!500880 (regOne!19367 r!17423) (regTwo!19366 r!17423)))))))

(assert (=> b!3031703 (= e!1901365 e!1901359)))

(declare-fun b!3031704 () Bool)

(assert (=> b!3031704 (= e!1901371 (Concat!14748 lt!1046089 lt!1046090))))

(declare-fun bm!206572 () Bool)

(assert (=> bm!206572 (= call!206575 call!206574)))

(declare-fun b!3031705 () Bool)

(declare-fun e!1901369 () Regex!9427)

(assert (=> b!3031705 (= e!1901369 e!1901371)))

(declare-fun c!500985 () Bool)

(assert (=> b!3031705 (= c!500985 call!206578)))

(declare-fun b!3031706 () Bool)

(assert (=> b!3031706 (= e!1901370 e!1901365)))

(assert (=> b!3031706 (= c!500977 ((_ is Star!9427) (ite c!500873 (reg!9756 r!17423) (ite c!500880 (regOne!19367 r!17423) (regTwo!19366 r!17423)))))))

(declare-fun b!3031707 () Bool)

(assert (=> b!3031707 (= e!1901359 e!1901362)))

(assert (=> b!3031707 (= lt!1046089 call!206580)))

(assert (=> b!3031707 (= lt!1046090 call!206575)))

(declare-fun res!1247382 () Bool)

(declare-fun call!206577 () Bool)

(assert (=> b!3031707 (= res!1247382 call!206577)))

(assert (=> b!3031707 (=> res!1247382 e!1901367)))

(declare-fun c!500982 () Bool)

(assert (=> b!3031707 (= c!500982 e!1901367)))

(declare-fun b!3031708 () Bool)

(declare-fun c!500986 () Bool)

(assert (=> b!3031708 (= c!500986 call!206577)))

(assert (=> b!3031708 (= e!1901366 e!1901360)))

(declare-fun b!3031709 () Bool)

(assert (=> b!3031709 (= e!1901364 call!206578)))

(declare-fun b!3031710 () Bool)

(assert (=> b!3031710 (= e!1901369 lt!1046090)))

(declare-fun bm!206573 () Bool)

(assert (=> bm!206573 (= call!206577 call!206579)))

(declare-fun b!3031711 () Bool)

(assert (=> b!3031711 (= e!1901361 (ite c!500873 (reg!9756 r!17423) (ite c!500880 (regOne!19367 r!17423) (regTwo!19366 r!17423))))))

(declare-fun b!3031712 () Bool)

(assert (=> b!3031712 (= e!1901360 (Union!9427 lt!1046086 lt!1046087))))

(declare-fun b!3031713 () Bool)

(declare-fun c!500980 () Bool)

(assert (=> b!3031713 (= c!500980 (isEmptyExpr!502 lt!1046089))))

(assert (=> b!3031713 (= e!1901362 e!1901369)))

(declare-fun bm!206570 () Bool)

(assert (=> bm!206570 (= call!206579 (isEmptyLang!496 (ite c!500977 lt!1046091 (ite c!500984 lt!1046087 lt!1046089))))))

(declare-fun d!851201 () Bool)

(assert (=> d!851201 e!1901372))

(declare-fun res!1247380 () Bool)

(assert (=> d!851201 (=> (not res!1247380) (not e!1901372))))

(assert (=> d!851201 (= res!1247380 (validRegex!4160 lt!1046088))))

(assert (=> d!851201 (= lt!1046088 e!1901363)))

(declare-fun c!500978 () Bool)

(assert (=> d!851201 (= c!500978 ((_ is EmptyLang!9427) (ite c!500873 (reg!9756 r!17423) (ite c!500880 (regOne!19367 r!17423) (regTwo!19366 r!17423)))))))

(assert (=> d!851201 (validRegex!4160 (ite c!500873 (reg!9756 r!17423) (ite c!500880 (regOne!19367 r!17423) (regTwo!19366 r!17423))))))

(assert (=> d!851201 (= (simplify!398 (ite c!500873 (reg!9756 r!17423) (ite c!500880 (regOne!19367 r!17423) (regTwo!19366 r!17423)))) lt!1046088)))

(declare-fun b!3031714 () Bool)

(assert (=> b!3031714 (= e!1901368 EmptyExpr!9427)))

(declare-fun bm!206574 () Bool)

(assert (=> bm!206574 (= call!206574 (simplify!398 (ite c!500977 (reg!9756 (ite c!500873 (reg!9756 r!17423) (ite c!500880 (regOne!19367 r!17423) (regTwo!19366 r!17423)))) (ite c!500984 (regOne!19367 (ite c!500873 (reg!9756 r!17423) (ite c!500880 (regOne!19367 r!17423) (regTwo!19366 r!17423)))) (regTwo!19366 (ite c!500873 (reg!9756 r!17423) (ite c!500880 (regOne!19367 r!17423) (regTwo!19366 r!17423))))))))))

(declare-fun bm!206575 () Bool)

(assert (=> bm!206575 (= call!206580 (simplify!398 (ite c!500984 (regTwo!19367 (ite c!500873 (reg!9756 r!17423) (ite c!500880 (regOne!19367 r!17423) (regTwo!19366 r!17423)))) (regOne!19366 (ite c!500873 (reg!9756 r!17423) (ite c!500880 (regOne!19367 r!17423) (regTwo!19366 r!17423)))))))))

(declare-fun b!3031715 () Bool)

(assert (=> b!3031715 (= e!1901366 lt!1046087)))

(assert (= (and d!851201 c!500978) b!3031693))

(assert (= (and d!851201 (not c!500978)) b!3031692))

(assert (= (and b!3031692 c!500983) b!3031711))

(assert (= (and b!3031692 (not c!500983)) b!3031691))

(assert (= (and b!3031691 c!500976) b!3031701))

(assert (= (and b!3031691 (not c!500976)) b!3031706))

(assert (= (and b!3031706 c!500977) b!3031696))

(assert (= (and b!3031706 (not c!500977)) b!3031703))

(assert (= (and b!3031696 (not res!1247381)) b!3031709))

(assert (= (and b!3031696 c!500979) b!3031714))

(assert (= (and b!3031696 (not c!500979)) b!3031700))

(assert (= (and b!3031703 c!500984) b!3031694))

(assert (= (and b!3031703 (not c!500984)) b!3031707))

(assert (= (and b!3031694 c!500981) b!3031715))

(assert (= (and b!3031694 (not c!500981)) b!3031708))

(assert (= (and b!3031708 c!500986) b!3031695))

(assert (= (and b!3031708 (not c!500986)) b!3031712))

(assert (= (and b!3031707 (not res!1247382)) b!3031698))

(assert (= (and b!3031707 c!500982) b!3031697))

(assert (= (and b!3031707 (not c!500982)) b!3031713))

(assert (= (and b!3031713 c!500980) b!3031710))

(assert (= (and b!3031713 (not c!500980)) b!3031705))

(assert (= (and b!3031705 c!500985) b!3031702))

(assert (= (and b!3031705 (not c!500985)) b!3031704))

(assert (= (or b!3031694 b!3031707) bm!206572))

(assert (= (or b!3031694 b!3031707) bm!206575))

(assert (= (or b!3031694 b!3031698) bm!206571))

(assert (= (or b!3031708 b!3031707) bm!206573))

(assert (= (or b!3031709 b!3031705) bm!206569))

(assert (= (or b!3031696 bm!206572) bm!206574))

(assert (= (or b!3031696 bm!206573) bm!206570))

(assert (= (and d!851201 res!1247380) b!3031699))

(declare-fun m!3368165 () Bool)

(assert (=> bm!206570 m!3368165))

(declare-fun m!3368167 () Bool)

(assert (=> b!3031713 m!3368167))

(declare-fun m!3368169 () Bool)

(assert (=> d!851201 m!3368169))

(declare-fun m!3368171 () Bool)

(assert (=> d!851201 m!3368171))

(declare-fun m!3368173 () Bool)

(assert (=> b!3031699 m!3368173))

(declare-fun m!3368175 () Bool)

(assert (=> b!3031699 m!3368175))

(declare-fun m!3368177 () Bool)

(assert (=> bm!206575 m!3368177))

(declare-fun m!3368179 () Bool)

(assert (=> bm!206571 m!3368179))

(declare-fun m!3368181 () Bool)

(assert (=> bm!206574 m!3368181))

(declare-fun m!3368183 () Bool)

(assert (=> bm!206569 m!3368183))

(assert (=> bm!206491 d!851201))

(assert (=> d!851111 d!851109))

(assert (=> d!851111 d!851103))

(declare-fun d!851203 () Bool)

(assert (=> d!851203 (= (matchR!4309 r!17423 s!11993) (matchRSpec!1564 r!17423 s!11993))))

(assert (=> d!851203 true))

(declare-fun _$88!3369 () Unit!49277)

(assert (=> d!851203 (= (choose!17977 r!17423 s!11993) _$88!3369)))

(declare-fun bs!530846 () Bool)

(assert (= bs!530846 d!851203))

(assert (=> bs!530846 m!3367683))

(assert (=> bs!530846 m!3367681))

(assert (=> d!851111 d!851203))

(assert (=> d!851111 d!851061))

(assert (=> b!3031369 d!851121))

(declare-fun d!851205 () Bool)

(assert (=> d!851205 (= (isEmptyExpr!502 lt!1046052) ((_ is EmptyExpr!9427) lt!1046052))))

(assert (=> b!3031365 d!851205))

(assert (=> d!851085 d!851127))

(assert (=> d!851085 d!851081))

(assert (=> b!3030829 d!851121))

(declare-fun d!851207 () Bool)

(assert (=> d!851207 (= (nullable!3077 (reg!9756 lt!1045957)) (nullableFct!876 (reg!9756 lt!1045957)))))

(declare-fun bs!530847 () Bool)

(assert (= bs!530847 d!851207))

(declare-fun m!3368185 () Bool)

(assert (=> bs!530847 m!3368185))

(assert (=> b!3031050 d!851207))

(declare-fun d!851209 () Bool)

(assert (=> d!851209 (= (nullable!3077 lt!1046051) (nullableFct!876 lt!1046051))))

(declare-fun bs!530848 () Bool)

(assert (= bs!530848 d!851209))

(declare-fun m!3368187 () Bool)

(assert (=> bs!530848 m!3368187))

(assert (=> b!3031351 d!851209))

(assert (=> b!3031351 d!851177))

(declare-fun d!851211 () Bool)

(assert (=> d!851211 (= (nullable!3077 (simplify!398 r!17423)) (nullableFct!876 (simplify!398 r!17423)))))

(declare-fun bs!530849 () Bool)

(assert (= bs!530849 d!851211))

(assert (=> bs!530849 m!3367663))

(declare-fun m!3368189 () Bool)

(assert (=> bs!530849 m!3368189))

(assert (=> b!3031339 d!851211))

(assert (=> b!3030734 d!851145))

(assert (=> b!3030734 d!851139))

(assert (=> d!851119 d!851117))

(declare-fun d!851213 () Bool)

(assert (=> d!851213 (matchR!4309 (Union!9427 lt!1045957 lt!1045954) s!11993)))

(assert (=> d!851213 true))

(declare-fun _$115!501 () Unit!49277)

(assert (=> d!851213 (= (choose!17979 lt!1045957 lt!1045954 s!11993) _$115!501)))

(declare-fun bs!530850 () Bool)

(assert (= bs!530850 d!851213))

(assert (=> bs!530850 m!3367667))

(assert (=> d!851119 d!851213))

(assert (=> d!851119 d!851081))

(declare-fun b!3031716 () Bool)

(declare-fun e!1901373 () Bool)

(declare-fun e!1901378 () Bool)

(assert (=> b!3031716 (= e!1901373 e!1901378)))

(declare-fun res!1247388 () Bool)

(assert (=> b!3031716 (=> res!1247388 e!1901378)))

(declare-fun call!206581 () Bool)

(assert (=> b!3031716 (= res!1247388 call!206581)))

(declare-fun b!3031717 () Bool)

(assert (=> b!3031717 (= e!1901378 (not (= (head!6733 (tail!4959 s!11993)) (c!500683 (derivativeStep!2674 lt!1045957 (head!6733 s!11993))))))))

(declare-fun b!3031718 () Bool)

(declare-fun res!1247390 () Bool)

(assert (=> b!3031718 (=> res!1247390 e!1901378)))

(assert (=> b!3031718 (= res!1247390 (not (isEmpty!19468 (tail!4959 (tail!4959 s!11993)))))))

(declare-fun b!3031719 () Bool)

(declare-fun res!1247387 () Bool)

(declare-fun e!1901374 () Bool)

(assert (=> b!3031719 (=> (not res!1247387) (not e!1901374))))

(assert (=> b!3031719 (= res!1247387 (not call!206581))))

(declare-fun b!3031720 () Bool)

(declare-fun res!1247385 () Bool)

(assert (=> b!3031720 (=> (not res!1247385) (not e!1901374))))

(assert (=> b!3031720 (= res!1247385 (isEmpty!19468 (tail!4959 (tail!4959 s!11993))))))

(declare-fun b!3031721 () Bool)

(declare-fun e!1901377 () Bool)

(declare-fun lt!1046092 () Bool)

(assert (=> b!3031721 (= e!1901377 (= lt!1046092 call!206581))))

(declare-fun b!3031722 () Bool)

(declare-fun res!1247386 () Bool)

(declare-fun e!1901376 () Bool)

(assert (=> b!3031722 (=> res!1247386 e!1901376)))

(assert (=> b!3031722 (= res!1247386 e!1901374)))

(declare-fun res!1247383 () Bool)

(assert (=> b!3031722 (=> (not res!1247383) (not e!1901374))))

(assert (=> b!3031722 (= res!1247383 lt!1046092)))

(declare-fun b!3031723 () Bool)

(declare-fun e!1901375 () Bool)

(assert (=> b!3031723 (= e!1901375 (not lt!1046092))))

(declare-fun b!3031724 () Bool)

(declare-fun e!1901379 () Bool)

(assert (=> b!3031724 (= e!1901379 (matchR!4309 (derivativeStep!2674 (derivativeStep!2674 lt!1045957 (head!6733 s!11993)) (head!6733 (tail!4959 s!11993))) (tail!4959 (tail!4959 s!11993))))))

(declare-fun b!3031725 () Bool)

(declare-fun res!1247389 () Bool)

(assert (=> b!3031725 (=> res!1247389 e!1901376)))

(assert (=> b!3031725 (= res!1247389 (not ((_ is ElementMatch!9427) (derivativeStep!2674 lt!1045957 (head!6733 s!11993)))))))

(assert (=> b!3031725 (= e!1901375 e!1901376)))

(declare-fun bm!206576 () Bool)

(assert (=> bm!206576 (= call!206581 (isEmpty!19468 (tail!4959 s!11993)))))

(declare-fun d!851215 () Bool)

(assert (=> d!851215 e!1901377))

(declare-fun c!500987 () Bool)

(assert (=> d!851215 (= c!500987 ((_ is EmptyExpr!9427) (derivativeStep!2674 lt!1045957 (head!6733 s!11993))))))

(assert (=> d!851215 (= lt!1046092 e!1901379)))

(declare-fun c!500989 () Bool)

(assert (=> d!851215 (= c!500989 (isEmpty!19468 (tail!4959 s!11993)))))

(assert (=> d!851215 (validRegex!4160 (derivativeStep!2674 lt!1045957 (head!6733 s!11993)))))

(assert (=> d!851215 (= (matchR!4309 (derivativeStep!2674 lt!1045957 (head!6733 s!11993)) (tail!4959 s!11993)) lt!1046092)))

(declare-fun b!3031726 () Bool)

(assert (=> b!3031726 (= e!1901379 (nullable!3077 (derivativeStep!2674 lt!1045957 (head!6733 s!11993))))))

(declare-fun b!3031727 () Bool)

(assert (=> b!3031727 (= e!1901374 (= (head!6733 (tail!4959 s!11993)) (c!500683 (derivativeStep!2674 lt!1045957 (head!6733 s!11993)))))))

(declare-fun b!3031728 () Bool)

(assert (=> b!3031728 (= e!1901376 e!1901373)))

(declare-fun res!1247384 () Bool)

(assert (=> b!3031728 (=> (not res!1247384) (not e!1901373))))

(assert (=> b!3031728 (= res!1247384 (not lt!1046092))))

(declare-fun b!3031729 () Bool)

(assert (=> b!3031729 (= e!1901377 e!1901375)))

(declare-fun c!500988 () Bool)

(assert (=> b!3031729 (= c!500988 ((_ is EmptyLang!9427) (derivativeStep!2674 lt!1045957 (head!6733 s!11993))))))

(assert (= (and d!851215 c!500989) b!3031726))

(assert (= (and d!851215 (not c!500989)) b!3031724))

(assert (= (and d!851215 c!500987) b!3031721))

(assert (= (and d!851215 (not c!500987)) b!3031729))

(assert (= (and b!3031729 c!500988) b!3031723))

(assert (= (and b!3031729 (not c!500988)) b!3031725))

(assert (= (and b!3031725 (not res!1247389)) b!3031722))

(assert (= (and b!3031722 res!1247383) b!3031719))

(assert (= (and b!3031719 res!1247387) b!3031720))

(assert (= (and b!3031720 res!1247385) b!3031727))

(assert (= (and b!3031722 (not res!1247386)) b!3031728))

(assert (= (and b!3031728 res!1247384) b!3031716))

(assert (= (and b!3031716 (not res!1247388)) b!3031718))

(assert (= (and b!3031718 (not res!1247390)) b!3031717))

(assert (= (or b!3031721 b!3031716 b!3031719) bm!206576))

(assert (=> b!3031724 m!3367701))

(assert (=> b!3031724 m!3367983))

(assert (=> b!3031724 m!3367847))

(assert (=> b!3031724 m!3367983))

(declare-fun m!3368191 () Bool)

(assert (=> b!3031724 m!3368191))

(assert (=> b!3031724 m!3367701))

(assert (=> b!3031724 m!3367987))

(assert (=> b!3031724 m!3368191))

(assert (=> b!3031724 m!3367987))

(declare-fun m!3368193 () Bool)

(assert (=> b!3031724 m!3368193))

(assert (=> b!3031718 m!3367701))

(assert (=> b!3031718 m!3367987))

(assert (=> b!3031718 m!3367987))

(assert (=> b!3031718 m!3367991))

(assert (=> d!851215 m!3367701))

(assert (=> d!851215 m!3367705))

(assert (=> d!851215 m!3367847))

(declare-fun m!3368195 () Bool)

(assert (=> d!851215 m!3368195))

(assert (=> bm!206576 m!3367701))

(assert (=> bm!206576 m!3367705))

(assert (=> b!3031720 m!3367701))

(assert (=> b!3031720 m!3367987))

(assert (=> b!3031720 m!3367987))

(assert (=> b!3031720 m!3367991))

(assert (=> b!3031717 m!3367701))

(assert (=> b!3031717 m!3367983))

(assert (=> b!3031727 m!3367701))

(assert (=> b!3031727 m!3367983))

(assert (=> b!3031726 m!3367847))

(declare-fun m!3368197 () Bool)

(assert (=> b!3031726 m!3368197))

(assert (=> b!3031090 d!851215))

(declare-fun b!3031730 () Bool)

(declare-fun e!1901383 () Regex!9427)

(declare-fun e!1901382 () Regex!9427)

(assert (=> b!3031730 (= e!1901383 e!1901382)))

(declare-fun c!500991 () Bool)

(assert (=> b!3031730 (= c!500991 ((_ is ElementMatch!9427) lt!1045957))))

(declare-fun c!500993 () Bool)

(declare-fun call!206583 () Regex!9427)

(declare-fun c!500990 () Bool)

(declare-fun bm!206577 () Bool)

(assert (=> bm!206577 (= call!206583 (derivativeStep!2674 (ite c!500990 (regTwo!19367 lt!1045957) (ite c!500993 (reg!9756 lt!1045957) (regOne!19366 lt!1045957))) (head!6733 s!11993)))))

(declare-fun bm!206578 () Bool)

(declare-fun call!206582 () Regex!9427)

(assert (=> bm!206578 (= call!206582 (derivativeStep!2674 (ite c!500990 (regOne!19367 lt!1045957) (regTwo!19366 lt!1045957)) (head!6733 s!11993)))))

(declare-fun b!3031731 () Bool)

(declare-fun e!1901381 () Regex!9427)

(declare-fun call!206584 () Regex!9427)

(assert (=> b!3031731 (= e!1901381 (Concat!14748 call!206584 lt!1045957))))

(declare-fun bm!206579 () Bool)

(assert (=> bm!206579 (= call!206584 call!206583)))

(declare-fun b!3031732 () Bool)

(declare-fun c!500994 () Bool)

(assert (=> b!3031732 (= c!500994 (nullable!3077 (regOne!19366 lt!1045957)))))

(declare-fun e!1901384 () Regex!9427)

(assert (=> b!3031732 (= e!1901381 e!1901384)))

(declare-fun b!3031733 () Bool)

(assert (=> b!3031733 (= c!500990 ((_ is Union!9427) lt!1045957))))

(declare-fun e!1901380 () Regex!9427)

(assert (=> b!3031733 (= e!1901382 e!1901380)))

(declare-fun b!3031734 () Bool)

(assert (=> b!3031734 (= e!1901383 EmptyLang!9427)))

(declare-fun b!3031735 () Bool)

(declare-fun call!206585 () Regex!9427)

(assert (=> b!3031735 (= e!1901384 (Union!9427 (Concat!14748 call!206585 (regTwo!19366 lt!1045957)) EmptyLang!9427))))

(declare-fun d!851217 () Bool)

(declare-fun lt!1046093 () Regex!9427)

(assert (=> d!851217 (validRegex!4160 lt!1046093)))

(assert (=> d!851217 (= lt!1046093 e!1901383)))

(declare-fun c!500992 () Bool)

(assert (=> d!851217 (= c!500992 (or ((_ is EmptyExpr!9427) lt!1045957) ((_ is EmptyLang!9427) lt!1045957)))))

(assert (=> d!851217 (validRegex!4160 lt!1045957)))

(assert (=> d!851217 (= (derivativeStep!2674 lt!1045957 (head!6733 s!11993)) lt!1046093)))

(declare-fun b!3031736 () Bool)

(assert (=> b!3031736 (= e!1901384 (Union!9427 (Concat!14748 call!206585 (regTwo!19366 lt!1045957)) call!206582))))

(declare-fun b!3031737 () Bool)

(assert (=> b!3031737 (= e!1901380 e!1901381)))

(assert (=> b!3031737 (= c!500993 ((_ is Star!9427) lt!1045957))))

(declare-fun b!3031738 () Bool)

(assert (=> b!3031738 (= e!1901382 (ite (= (head!6733 s!11993) (c!500683 lt!1045957)) EmptyExpr!9427 EmptyLang!9427))))

(declare-fun b!3031739 () Bool)

(assert (=> b!3031739 (= e!1901380 (Union!9427 call!206582 call!206583))))

(declare-fun bm!206580 () Bool)

(assert (=> bm!206580 (= call!206585 call!206584)))

(assert (= (and d!851217 c!500992) b!3031734))

(assert (= (and d!851217 (not c!500992)) b!3031730))

(assert (= (and b!3031730 c!500991) b!3031738))

(assert (= (and b!3031730 (not c!500991)) b!3031733))

(assert (= (and b!3031733 c!500990) b!3031739))

(assert (= (and b!3031733 (not c!500990)) b!3031737))

(assert (= (and b!3031737 c!500993) b!3031731))

(assert (= (and b!3031737 (not c!500993)) b!3031732))

(assert (= (and b!3031732 c!500994) b!3031736))

(assert (= (and b!3031732 (not c!500994)) b!3031735))

(assert (= (or b!3031736 b!3031735) bm!206580))

(assert (= (or b!3031731 bm!206580) bm!206579))

(assert (= (or b!3031739 bm!206579) bm!206577))

(assert (= (or b!3031739 b!3031736) bm!206578))

(assert (=> bm!206577 m!3367697))

(declare-fun m!3368199 () Bool)

(assert (=> bm!206577 m!3368199))

(assert (=> bm!206578 m!3367697))

(declare-fun m!3368201 () Bool)

(assert (=> bm!206578 m!3368201))

(declare-fun m!3368203 () Bool)

(assert (=> b!3031732 m!3368203))

(declare-fun m!3368205 () Bool)

(assert (=> d!851217 m!3368205))

(assert (=> d!851217 m!3367673))

(assert (=> b!3031090 d!851217))

(assert (=> b!3031090 d!851121))

(assert (=> b!3031090 d!851139))

(declare-fun lt!1046098 () Regex!9427)

(declare-fun lt!1046099 () Regex!9427)

(declare-fun call!206590 () Bool)

(declare-fun c!500996 () Bool)

(declare-fun bm!206581 () Bool)

(assert (=> bm!206581 (= call!206590 (isEmptyExpr!502 (ite c!500996 lt!1046099 lt!1046098)))))

(declare-fun b!3031740 () Bool)

(declare-fun c!500995 () Bool)

(assert (=> b!3031740 (= c!500995 ((_ is EmptyExpr!9427) (ite c!500794 (regTwo!19367 (regOne!19367 r!17423)) (regOne!19366 (regOne!19367 r!17423)))))))

(declare-fun e!1901387 () Regex!9427)

(declare-fun e!1901396 () Regex!9427)

(assert (=> b!3031740 (= e!1901387 e!1901396)))

(declare-fun b!3031741 () Bool)

(declare-fun e!1901389 () Regex!9427)

(assert (=> b!3031741 (= e!1901389 e!1901387)))

(declare-fun c!501002 () Bool)

(assert (=> b!3031741 (= c!501002 ((_ is ElementMatch!9427) (ite c!500794 (regTwo!19367 (regOne!19367 r!17423)) (regOne!19366 (regOne!19367 r!17423)))))))

(declare-fun b!3031742 () Bool)

(assert (=> b!3031742 (= e!1901389 EmptyLang!9427)))

(declare-fun b!3031743 () Bool)

(declare-fun e!1901385 () Regex!9427)

(declare-fun e!1901392 () Regex!9427)

(assert (=> b!3031743 (= e!1901385 e!1901392)))

(declare-fun lt!1046094 () Regex!9427)

(declare-fun call!206587 () Regex!9427)

(assert (=> b!3031743 (= lt!1046094 call!206587)))

(declare-fun lt!1046095 () Regex!9427)

(declare-fun call!206592 () Regex!9427)

(assert (=> b!3031743 (= lt!1046095 call!206592)))

(declare-fun c!501000 () Bool)

(declare-fun call!206588 () Bool)

(assert (=> b!3031743 (= c!501000 call!206588)))

(declare-fun b!3031744 () Bool)

(declare-fun e!1901386 () Regex!9427)

(assert (=> b!3031744 (= e!1901386 lt!1046094)))

(declare-fun b!3031745 () Bool)

(declare-fun c!500998 () Bool)

(declare-fun e!1901390 () Bool)

(assert (=> b!3031745 (= c!500998 e!1901390)))

(declare-fun res!1247392 () Bool)

(assert (=> b!3031745 (=> res!1247392 e!1901390)))

(declare-fun call!206591 () Bool)

(assert (=> b!3031745 (= res!1247392 call!206591)))

(declare-fun call!206586 () Regex!9427)

(assert (=> b!3031745 (= lt!1046099 call!206586)))

(declare-fun e!1901391 () Regex!9427)

(declare-fun e!1901394 () Regex!9427)

(assert (=> b!3031745 (= e!1901391 e!1901394)))

(declare-fun b!3031746 () Bool)

(declare-fun e!1901388 () Regex!9427)

(assert (=> b!3031746 (= e!1901388 EmptyLang!9427)))

(declare-fun b!3031747 () Bool)

(declare-fun e!1901393 () Bool)

(assert (=> b!3031747 (= e!1901393 call!206588)))

(declare-fun e!1901398 () Bool)

(declare-fun b!3031748 () Bool)

(declare-fun lt!1046096 () Regex!9427)

(assert (=> b!3031748 (= e!1901398 (= (nullable!3077 lt!1046096) (nullable!3077 (ite c!500794 (regTwo!19367 (regOne!19367 r!17423)) (regOne!19366 (regOne!19367 r!17423))))))))

(declare-fun b!3031749 () Bool)

(assert (=> b!3031749 (= e!1901394 (Star!9427 lt!1046099))))

(declare-fun b!3031750 () Bool)

(assert (=> b!3031750 (= e!1901396 EmptyExpr!9427)))

(declare-fun b!3031751 () Bool)

(declare-fun e!1901397 () Regex!9427)

(declare-fun lt!1046097 () Regex!9427)

(assert (=> b!3031751 (= e!1901397 lt!1046097)))

(declare-fun c!501003 () Bool)

(declare-fun bm!206583 () Bool)

(assert (=> bm!206583 (= call!206588 (isEmptyLang!496 (ite c!501003 lt!1046094 lt!1046098)))))

(declare-fun b!3031752 () Bool)

(assert (=> b!3031752 (= c!501003 ((_ is Union!9427) (ite c!500794 (regTwo!19367 (regOne!19367 r!17423)) (regOne!19366 (regOne!19367 r!17423)))))))

(assert (=> b!3031752 (= e!1901391 e!1901385)))

(declare-fun b!3031753 () Bool)

(assert (=> b!3031753 (= e!1901397 (Concat!14748 lt!1046097 lt!1046098))))

(declare-fun bm!206584 () Bool)

(assert (=> bm!206584 (= call!206587 call!206586)))

(declare-fun b!3031754 () Bool)

(declare-fun e!1901395 () Regex!9427)

(assert (=> b!3031754 (= e!1901395 e!1901397)))

(declare-fun c!501004 () Bool)

(assert (=> b!3031754 (= c!501004 call!206590)))

(declare-fun b!3031755 () Bool)

(assert (=> b!3031755 (= e!1901396 e!1901391)))

(assert (=> b!3031755 (= c!500996 ((_ is Star!9427) (ite c!500794 (regTwo!19367 (regOne!19367 r!17423)) (regOne!19366 (regOne!19367 r!17423)))))))

(declare-fun b!3031756 () Bool)

(assert (=> b!3031756 (= e!1901385 e!1901388)))

(assert (=> b!3031756 (= lt!1046097 call!206592)))

(assert (=> b!3031756 (= lt!1046098 call!206587)))

(declare-fun res!1247393 () Bool)

(declare-fun call!206589 () Bool)

(assert (=> b!3031756 (= res!1247393 call!206589)))

(assert (=> b!3031756 (=> res!1247393 e!1901393)))

(declare-fun c!501001 () Bool)

(assert (=> b!3031756 (= c!501001 e!1901393)))

(declare-fun b!3031757 () Bool)

(declare-fun c!501005 () Bool)

(assert (=> b!3031757 (= c!501005 call!206589)))

(assert (=> b!3031757 (= e!1901392 e!1901386)))

(declare-fun b!3031758 () Bool)

(assert (=> b!3031758 (= e!1901390 call!206590)))

(declare-fun b!3031759 () Bool)

(assert (=> b!3031759 (= e!1901395 lt!1046098)))

(declare-fun bm!206585 () Bool)

(assert (=> bm!206585 (= call!206589 call!206591)))

(declare-fun b!3031760 () Bool)

(assert (=> b!3031760 (= e!1901387 (ite c!500794 (regTwo!19367 (regOne!19367 r!17423)) (regOne!19366 (regOne!19367 r!17423))))))

(declare-fun b!3031761 () Bool)

(assert (=> b!3031761 (= e!1901386 (Union!9427 lt!1046094 lt!1046095))))

(declare-fun b!3031762 () Bool)

(declare-fun c!500999 () Bool)

(assert (=> b!3031762 (= c!500999 (isEmptyExpr!502 lt!1046097))))

(assert (=> b!3031762 (= e!1901388 e!1901395)))

(declare-fun bm!206582 () Bool)

(assert (=> bm!206582 (= call!206591 (isEmptyLang!496 (ite c!500996 lt!1046099 (ite c!501003 lt!1046095 lt!1046097))))))

(declare-fun d!851219 () Bool)

(assert (=> d!851219 e!1901398))

(declare-fun res!1247391 () Bool)

(assert (=> d!851219 (=> (not res!1247391) (not e!1901398))))

(assert (=> d!851219 (= res!1247391 (validRegex!4160 lt!1046096))))

(assert (=> d!851219 (= lt!1046096 e!1901389)))

(declare-fun c!500997 () Bool)

(assert (=> d!851219 (= c!500997 ((_ is EmptyLang!9427) (ite c!500794 (regTwo!19367 (regOne!19367 r!17423)) (regOne!19366 (regOne!19367 r!17423)))))))

(assert (=> d!851219 (validRegex!4160 (ite c!500794 (regTwo!19367 (regOne!19367 r!17423)) (regOne!19366 (regOne!19367 r!17423))))))

(assert (=> d!851219 (= (simplify!398 (ite c!500794 (regTwo!19367 (regOne!19367 r!17423)) (regOne!19366 (regOne!19367 r!17423)))) lt!1046096)))

(declare-fun b!3031763 () Bool)

(assert (=> b!3031763 (= e!1901394 EmptyExpr!9427)))

(declare-fun bm!206586 () Bool)

(assert (=> bm!206586 (= call!206586 (simplify!398 (ite c!500996 (reg!9756 (ite c!500794 (regTwo!19367 (regOne!19367 r!17423)) (regOne!19366 (regOne!19367 r!17423)))) (ite c!501003 (regOne!19367 (ite c!500794 (regTwo!19367 (regOne!19367 r!17423)) (regOne!19366 (regOne!19367 r!17423)))) (regTwo!19366 (ite c!500794 (regTwo!19367 (regOne!19367 r!17423)) (regOne!19366 (regOne!19367 r!17423))))))))))

(declare-fun bm!206587 () Bool)

(assert (=> bm!206587 (= call!206592 (simplify!398 (ite c!501003 (regTwo!19367 (ite c!500794 (regTwo!19367 (regOne!19367 r!17423)) (regOne!19366 (regOne!19367 r!17423)))) (regOne!19366 (ite c!500794 (regTwo!19367 (regOne!19367 r!17423)) (regOne!19366 (regOne!19367 r!17423)))))))))

(declare-fun b!3031764 () Bool)

(assert (=> b!3031764 (= e!1901392 lt!1046095)))

(assert (= (and d!851219 c!500997) b!3031742))

(assert (= (and d!851219 (not c!500997)) b!3031741))

(assert (= (and b!3031741 c!501002) b!3031760))

(assert (= (and b!3031741 (not c!501002)) b!3031740))

(assert (= (and b!3031740 c!500995) b!3031750))

(assert (= (and b!3031740 (not c!500995)) b!3031755))

(assert (= (and b!3031755 c!500996) b!3031745))

(assert (= (and b!3031755 (not c!500996)) b!3031752))

(assert (= (and b!3031745 (not res!1247392)) b!3031758))

(assert (= (and b!3031745 c!500998) b!3031763))

(assert (= (and b!3031745 (not c!500998)) b!3031749))

(assert (= (and b!3031752 c!501003) b!3031743))

(assert (= (and b!3031752 (not c!501003)) b!3031756))

(assert (= (and b!3031743 c!501000) b!3031764))

(assert (= (and b!3031743 (not c!501000)) b!3031757))

(assert (= (and b!3031757 c!501005) b!3031744))

(assert (= (and b!3031757 (not c!501005)) b!3031761))

(assert (= (and b!3031756 (not res!1247393)) b!3031747))

(assert (= (and b!3031756 c!501001) b!3031746))

(assert (= (and b!3031756 (not c!501001)) b!3031762))

(assert (= (and b!3031762 c!500999) b!3031759))

(assert (= (and b!3031762 (not c!500999)) b!3031754))

(assert (= (and b!3031754 c!501004) b!3031751))

(assert (= (and b!3031754 (not c!501004)) b!3031753))

(assert (= (or b!3031743 b!3031756) bm!206584))

(assert (= (or b!3031743 b!3031756) bm!206587))

(assert (= (or b!3031743 b!3031747) bm!206583))

(assert (= (or b!3031757 b!3031756) bm!206585))

(assert (= (or b!3031758 b!3031754) bm!206581))

(assert (= (or b!3031745 bm!206584) bm!206586))

(assert (= (or b!3031745 bm!206585) bm!206582))

(assert (= (and d!851219 res!1247391) b!3031748))

(declare-fun m!3368207 () Bool)

(assert (=> bm!206582 m!3368207))

(declare-fun m!3368209 () Bool)

(assert (=> b!3031762 m!3368209))

(declare-fun m!3368211 () Bool)

(assert (=> d!851219 m!3368211))

(declare-fun m!3368213 () Bool)

(assert (=> d!851219 m!3368213))

(declare-fun m!3368215 () Bool)

(assert (=> b!3031748 m!3368215))

(declare-fun m!3368217 () Bool)

(assert (=> b!3031748 m!3368217))

(declare-fun m!3368219 () Bool)

(assert (=> bm!206587 m!3368219))

(declare-fun m!3368221 () Bool)

(assert (=> bm!206583 m!3368221))

(declare-fun m!3368223 () Bool)

(assert (=> bm!206586 m!3368223))

(declare-fun m!3368225 () Bool)

(assert (=> bm!206581 m!3368225))

(assert (=> bm!206440 d!851219))

(declare-fun b!3031765 () Bool)

(declare-fun e!1901401 () Bool)

(declare-fun call!206595 () Bool)

(assert (=> b!3031765 (= e!1901401 call!206595)))

(declare-fun b!3031766 () Bool)

(declare-fun res!1247394 () Bool)

(declare-fun e!1901402 () Bool)

(assert (=> b!3031766 (=> res!1247394 e!1901402)))

(assert (=> b!3031766 (= res!1247394 (not ((_ is Concat!14748) (ite c!500802 (regTwo!19367 lt!1045957) (regOne!19366 lt!1045957)))))))

(declare-fun e!1901400 () Bool)

(assert (=> b!3031766 (= e!1901400 e!1901402)))

(declare-fun b!3031767 () Bool)

(declare-fun e!1901405 () Bool)

(assert (=> b!3031767 (= e!1901405 e!1901400)))

(declare-fun c!501006 () Bool)

(assert (=> b!3031767 (= c!501006 ((_ is Union!9427) (ite c!500802 (regTwo!19367 lt!1045957) (regOne!19366 lt!1045957))))))

(declare-fun b!3031768 () Bool)

(declare-fun e!1901399 () Bool)

(assert (=> b!3031768 (= e!1901399 e!1901405)))

(declare-fun c!501007 () Bool)

(assert (=> b!3031768 (= c!501007 ((_ is Star!9427) (ite c!500802 (regTwo!19367 lt!1045957) (regOne!19366 lt!1045957))))))

(declare-fun b!3031769 () Bool)

(declare-fun res!1247396 () Bool)

(assert (=> b!3031769 (=> (not res!1247396) (not e!1901401))))

(declare-fun call!206594 () Bool)

(assert (=> b!3031769 (= res!1247396 call!206594)))

(assert (=> b!3031769 (= e!1901400 e!1901401)))

(declare-fun b!3031770 () Bool)

(declare-fun e!1901403 () Bool)

(declare-fun call!206593 () Bool)

(assert (=> b!3031770 (= e!1901403 call!206593)))

(declare-fun b!3031771 () Bool)

(assert (=> b!3031771 (= e!1901405 e!1901403)))

(declare-fun res!1247395 () Bool)

(assert (=> b!3031771 (= res!1247395 (not (nullable!3077 (reg!9756 (ite c!500802 (regTwo!19367 lt!1045957) (regOne!19366 lt!1045957))))))))

(assert (=> b!3031771 (=> (not res!1247395) (not e!1901403))))

(declare-fun bm!206589 () Bool)

(assert (=> bm!206589 (= call!206594 call!206593)))

(declare-fun bm!206590 () Bool)

(assert (=> bm!206590 (= call!206595 (validRegex!4160 (ite c!501006 (regTwo!19367 (ite c!500802 (regTwo!19367 lt!1045957) (regOne!19366 lt!1045957))) (regOne!19366 (ite c!500802 (regTwo!19367 lt!1045957) (regOne!19366 lt!1045957))))))))

(declare-fun b!3031772 () Bool)

(declare-fun e!1901404 () Bool)

(assert (=> b!3031772 (= e!1901404 call!206594)))

(declare-fun b!3031773 () Bool)

(assert (=> b!3031773 (= e!1901402 e!1901404)))

(declare-fun res!1247398 () Bool)

(assert (=> b!3031773 (=> (not res!1247398) (not e!1901404))))

(assert (=> b!3031773 (= res!1247398 call!206595)))

(declare-fun bm!206588 () Bool)

(assert (=> bm!206588 (= call!206593 (validRegex!4160 (ite c!501007 (reg!9756 (ite c!500802 (regTwo!19367 lt!1045957) (regOne!19366 lt!1045957))) (ite c!501006 (regOne!19367 (ite c!500802 (regTwo!19367 lt!1045957) (regOne!19366 lt!1045957))) (regTwo!19366 (ite c!500802 (regTwo!19367 lt!1045957) (regOne!19366 lt!1045957)))))))))

(declare-fun d!851221 () Bool)

(declare-fun res!1247397 () Bool)

(assert (=> d!851221 (=> res!1247397 e!1901399)))

(assert (=> d!851221 (= res!1247397 ((_ is ElementMatch!9427) (ite c!500802 (regTwo!19367 lt!1045957) (regOne!19366 lt!1045957))))))

(assert (=> d!851221 (= (validRegex!4160 (ite c!500802 (regTwo!19367 lt!1045957) (regOne!19366 lt!1045957))) e!1901399)))

(assert (= (and d!851221 (not res!1247397)) b!3031768))

(assert (= (and b!3031768 c!501007) b!3031771))

(assert (= (and b!3031768 (not c!501007)) b!3031767))

(assert (= (and b!3031771 res!1247395) b!3031770))

(assert (= (and b!3031767 c!501006) b!3031769))

(assert (= (and b!3031767 (not c!501006)) b!3031766))

(assert (= (and b!3031769 res!1247396) b!3031765))

(assert (= (and b!3031766 (not res!1247394)) b!3031773))

(assert (= (and b!3031773 res!1247398) b!3031772))

(assert (= (or b!3031769 b!3031772) bm!206589))

(assert (= (or b!3031765 b!3031773) bm!206590))

(assert (= (or b!3031770 bm!206589) bm!206588))

(declare-fun m!3368227 () Bool)

(assert (=> b!3031771 m!3368227))

(declare-fun m!3368229 () Bool)

(assert (=> bm!206590 m!3368229))

(declare-fun m!3368231 () Bool)

(assert (=> bm!206588 m!3368231))

(assert (=> bm!206447 d!851221))

(assert (=> b!3031316 d!851121))

(declare-fun d!851223 () Bool)

(assert (=> d!851223 (= (isEmptyLang!496 (ite c!500805 lt!1046021 (ite c!500812 lt!1046017 lt!1046019))) ((_ is EmptyLang!9427) (ite c!500805 lt!1046021 (ite c!500812 lt!1046017 lt!1046019))))))

(assert (=> bm!206449 d!851223))

(assert (=> bm!206390 d!851127))

(assert (=> b!3031086 d!851145))

(assert (=> b!3031086 d!851139))

(declare-fun b!3031774 () Bool)

(declare-fun e!1901408 () Bool)

(declare-fun call!206598 () Bool)

(assert (=> b!3031774 (= e!1901408 call!206598)))

(declare-fun b!3031775 () Bool)

(declare-fun res!1247399 () Bool)

(declare-fun e!1901409 () Bool)

(assert (=> b!3031775 (=> res!1247399 e!1901409)))

(assert (=> b!3031775 (= res!1247399 (not ((_ is Concat!14748) (ite c!500803 (reg!9756 lt!1045957) (ite c!500802 (regOne!19367 lt!1045957) (regTwo!19366 lt!1045957))))))))

(declare-fun e!1901407 () Bool)

(assert (=> b!3031775 (= e!1901407 e!1901409)))

(declare-fun b!3031776 () Bool)

(declare-fun e!1901412 () Bool)

(assert (=> b!3031776 (= e!1901412 e!1901407)))

(declare-fun c!501008 () Bool)

(assert (=> b!3031776 (= c!501008 ((_ is Union!9427) (ite c!500803 (reg!9756 lt!1045957) (ite c!500802 (regOne!19367 lt!1045957) (regTwo!19366 lt!1045957)))))))

(declare-fun b!3031777 () Bool)

(declare-fun e!1901406 () Bool)

(assert (=> b!3031777 (= e!1901406 e!1901412)))

(declare-fun c!501009 () Bool)

(assert (=> b!3031777 (= c!501009 ((_ is Star!9427) (ite c!500803 (reg!9756 lt!1045957) (ite c!500802 (regOne!19367 lt!1045957) (regTwo!19366 lt!1045957)))))))

(declare-fun b!3031778 () Bool)

(declare-fun res!1247401 () Bool)

(assert (=> b!3031778 (=> (not res!1247401) (not e!1901408))))

(declare-fun call!206597 () Bool)

(assert (=> b!3031778 (= res!1247401 call!206597)))

(assert (=> b!3031778 (= e!1901407 e!1901408)))

(declare-fun b!3031779 () Bool)

(declare-fun e!1901410 () Bool)

(declare-fun call!206596 () Bool)

(assert (=> b!3031779 (= e!1901410 call!206596)))

(declare-fun b!3031780 () Bool)

(assert (=> b!3031780 (= e!1901412 e!1901410)))

(declare-fun res!1247400 () Bool)

(assert (=> b!3031780 (= res!1247400 (not (nullable!3077 (reg!9756 (ite c!500803 (reg!9756 lt!1045957) (ite c!500802 (regOne!19367 lt!1045957) (regTwo!19366 lt!1045957)))))))))

(assert (=> b!3031780 (=> (not res!1247400) (not e!1901410))))

(declare-fun bm!206592 () Bool)

(assert (=> bm!206592 (= call!206597 call!206596)))

(declare-fun bm!206593 () Bool)

(assert (=> bm!206593 (= call!206598 (validRegex!4160 (ite c!501008 (regTwo!19367 (ite c!500803 (reg!9756 lt!1045957) (ite c!500802 (regOne!19367 lt!1045957) (regTwo!19366 lt!1045957)))) (regOne!19366 (ite c!500803 (reg!9756 lt!1045957) (ite c!500802 (regOne!19367 lt!1045957) (regTwo!19366 lt!1045957)))))))))

(declare-fun b!3031781 () Bool)

(declare-fun e!1901411 () Bool)

(assert (=> b!3031781 (= e!1901411 call!206597)))

(declare-fun b!3031782 () Bool)

(assert (=> b!3031782 (= e!1901409 e!1901411)))

(declare-fun res!1247403 () Bool)

(assert (=> b!3031782 (=> (not res!1247403) (not e!1901411))))

(assert (=> b!3031782 (= res!1247403 call!206598)))

(declare-fun bm!206591 () Bool)

(assert (=> bm!206591 (= call!206596 (validRegex!4160 (ite c!501009 (reg!9756 (ite c!500803 (reg!9756 lt!1045957) (ite c!500802 (regOne!19367 lt!1045957) (regTwo!19366 lt!1045957)))) (ite c!501008 (regOne!19367 (ite c!500803 (reg!9756 lt!1045957) (ite c!500802 (regOne!19367 lt!1045957) (regTwo!19366 lt!1045957)))) (regTwo!19366 (ite c!500803 (reg!9756 lt!1045957) (ite c!500802 (regOne!19367 lt!1045957) (regTwo!19366 lt!1045957))))))))))

(declare-fun d!851225 () Bool)

(declare-fun res!1247402 () Bool)

(assert (=> d!851225 (=> res!1247402 e!1901406)))

(assert (=> d!851225 (= res!1247402 ((_ is ElementMatch!9427) (ite c!500803 (reg!9756 lt!1045957) (ite c!500802 (regOne!19367 lt!1045957) (regTwo!19366 lt!1045957)))))))

(assert (=> d!851225 (= (validRegex!4160 (ite c!500803 (reg!9756 lt!1045957) (ite c!500802 (regOne!19367 lt!1045957) (regTwo!19366 lt!1045957)))) e!1901406)))

(assert (= (and d!851225 (not res!1247402)) b!3031777))

(assert (= (and b!3031777 c!501009) b!3031780))

(assert (= (and b!3031777 (not c!501009)) b!3031776))

(assert (= (and b!3031780 res!1247400) b!3031779))

(assert (= (and b!3031776 c!501008) b!3031778))

(assert (= (and b!3031776 (not c!501008)) b!3031775))

(assert (= (and b!3031778 res!1247401) b!3031774))

(assert (= (and b!3031775 (not res!1247399)) b!3031782))

(assert (= (and b!3031782 res!1247403) b!3031781))

(assert (= (or b!3031778 b!3031781) bm!206592))

(assert (= (or b!3031774 b!3031782) bm!206593))

(assert (= (or b!3031779 bm!206592) bm!206591))

(declare-fun m!3368233 () Bool)

(assert (=> b!3031780 m!3368233))

(declare-fun m!3368235 () Bool)

(assert (=> bm!206593 m!3368235))

(declare-fun m!3368237 () Bool)

(assert (=> bm!206591 m!3368237))

(assert (=> bm!206445 d!851225))

(declare-fun d!851227 () Bool)

(assert (=> d!851227 (= (isEmptyLang!496 (ite c!500787 lt!1046014 (ite c!500794 lt!1046010 lt!1046012))) ((_ is EmptyLang!9427) (ite c!500787 lt!1046014 (ite c!500794 lt!1046010 lt!1046012))))))

(assert (=> bm!206435 d!851227))

(declare-fun lt!1046105 () Regex!9427)

(declare-fun c!501011 () Bool)

(declare-fun lt!1046104 () Regex!9427)

(declare-fun bm!206594 () Bool)

(declare-fun call!206603 () Bool)

(assert (=> bm!206594 (= call!206603 (isEmptyExpr!502 (ite c!501011 lt!1046105 lt!1046104)))))

(declare-fun b!3031783 () Bool)

(declare-fun c!501010 () Bool)

(assert (=> b!3031783 (= c!501010 ((_ is EmptyExpr!9427) (ite c!500812 (regTwo!19367 (regTwo!19367 r!17423)) (regOne!19366 (regTwo!19367 r!17423)))))))

(declare-fun e!1901415 () Regex!9427)

(declare-fun e!1901424 () Regex!9427)

(assert (=> b!3031783 (= e!1901415 e!1901424)))

(declare-fun b!3031784 () Bool)

(declare-fun e!1901417 () Regex!9427)

(assert (=> b!3031784 (= e!1901417 e!1901415)))

(declare-fun c!501017 () Bool)

(assert (=> b!3031784 (= c!501017 ((_ is ElementMatch!9427) (ite c!500812 (regTwo!19367 (regTwo!19367 r!17423)) (regOne!19366 (regTwo!19367 r!17423)))))))

(declare-fun b!3031785 () Bool)

(assert (=> b!3031785 (= e!1901417 EmptyLang!9427)))

(declare-fun b!3031786 () Bool)

(declare-fun e!1901413 () Regex!9427)

(declare-fun e!1901420 () Regex!9427)

(assert (=> b!3031786 (= e!1901413 e!1901420)))

(declare-fun lt!1046100 () Regex!9427)

(declare-fun call!206600 () Regex!9427)

(assert (=> b!3031786 (= lt!1046100 call!206600)))

(declare-fun lt!1046101 () Regex!9427)

(declare-fun call!206605 () Regex!9427)

(assert (=> b!3031786 (= lt!1046101 call!206605)))

(declare-fun c!501015 () Bool)

(declare-fun call!206601 () Bool)

(assert (=> b!3031786 (= c!501015 call!206601)))

(declare-fun b!3031787 () Bool)

(declare-fun e!1901414 () Regex!9427)

(assert (=> b!3031787 (= e!1901414 lt!1046100)))

(declare-fun b!3031788 () Bool)

(declare-fun c!501013 () Bool)

(declare-fun e!1901418 () Bool)

(assert (=> b!3031788 (= c!501013 e!1901418)))

(declare-fun res!1247405 () Bool)

(assert (=> b!3031788 (=> res!1247405 e!1901418)))

(declare-fun call!206604 () Bool)

(assert (=> b!3031788 (= res!1247405 call!206604)))

(declare-fun call!206599 () Regex!9427)

(assert (=> b!3031788 (= lt!1046105 call!206599)))

(declare-fun e!1901419 () Regex!9427)

(declare-fun e!1901422 () Regex!9427)

(assert (=> b!3031788 (= e!1901419 e!1901422)))

(declare-fun b!3031789 () Bool)

(declare-fun e!1901416 () Regex!9427)

(assert (=> b!3031789 (= e!1901416 EmptyLang!9427)))

(declare-fun b!3031790 () Bool)

(declare-fun e!1901421 () Bool)

(assert (=> b!3031790 (= e!1901421 call!206601)))

(declare-fun e!1901426 () Bool)

(declare-fun b!3031791 () Bool)

(declare-fun lt!1046102 () Regex!9427)

(assert (=> b!3031791 (= e!1901426 (= (nullable!3077 lt!1046102) (nullable!3077 (ite c!500812 (regTwo!19367 (regTwo!19367 r!17423)) (regOne!19366 (regTwo!19367 r!17423))))))))

(declare-fun b!3031792 () Bool)

(assert (=> b!3031792 (= e!1901422 (Star!9427 lt!1046105))))

(declare-fun b!3031793 () Bool)

(assert (=> b!3031793 (= e!1901424 EmptyExpr!9427)))

(declare-fun b!3031794 () Bool)

(declare-fun e!1901425 () Regex!9427)

(declare-fun lt!1046103 () Regex!9427)

(assert (=> b!3031794 (= e!1901425 lt!1046103)))

(declare-fun c!501018 () Bool)

(declare-fun bm!206596 () Bool)

(assert (=> bm!206596 (= call!206601 (isEmptyLang!496 (ite c!501018 lt!1046100 lt!1046104)))))

(declare-fun b!3031795 () Bool)

(assert (=> b!3031795 (= c!501018 ((_ is Union!9427) (ite c!500812 (regTwo!19367 (regTwo!19367 r!17423)) (regOne!19366 (regTwo!19367 r!17423)))))))

(assert (=> b!3031795 (= e!1901419 e!1901413)))

(declare-fun b!3031796 () Bool)

(assert (=> b!3031796 (= e!1901425 (Concat!14748 lt!1046103 lt!1046104))))

(declare-fun bm!206597 () Bool)

(assert (=> bm!206597 (= call!206600 call!206599)))

(declare-fun b!3031797 () Bool)

(declare-fun e!1901423 () Regex!9427)

(assert (=> b!3031797 (= e!1901423 e!1901425)))

(declare-fun c!501019 () Bool)

(assert (=> b!3031797 (= c!501019 call!206603)))

(declare-fun b!3031798 () Bool)

(assert (=> b!3031798 (= e!1901424 e!1901419)))

(assert (=> b!3031798 (= c!501011 ((_ is Star!9427) (ite c!500812 (regTwo!19367 (regTwo!19367 r!17423)) (regOne!19366 (regTwo!19367 r!17423)))))))

(declare-fun b!3031799 () Bool)

(assert (=> b!3031799 (= e!1901413 e!1901416)))

(assert (=> b!3031799 (= lt!1046103 call!206605)))

(assert (=> b!3031799 (= lt!1046104 call!206600)))

(declare-fun res!1247406 () Bool)

(declare-fun call!206602 () Bool)

(assert (=> b!3031799 (= res!1247406 call!206602)))

(assert (=> b!3031799 (=> res!1247406 e!1901421)))

(declare-fun c!501016 () Bool)

(assert (=> b!3031799 (= c!501016 e!1901421)))

(declare-fun b!3031800 () Bool)

(declare-fun c!501020 () Bool)

(assert (=> b!3031800 (= c!501020 call!206602)))

(assert (=> b!3031800 (= e!1901420 e!1901414)))

(declare-fun b!3031801 () Bool)

(assert (=> b!3031801 (= e!1901418 call!206603)))

(declare-fun b!3031802 () Bool)

(assert (=> b!3031802 (= e!1901423 lt!1046104)))

(declare-fun bm!206598 () Bool)

(assert (=> bm!206598 (= call!206602 call!206604)))

(declare-fun b!3031803 () Bool)

(assert (=> b!3031803 (= e!1901415 (ite c!500812 (regTwo!19367 (regTwo!19367 r!17423)) (regOne!19366 (regTwo!19367 r!17423))))))

(declare-fun b!3031804 () Bool)

(assert (=> b!3031804 (= e!1901414 (Union!9427 lt!1046100 lt!1046101))))

(declare-fun b!3031805 () Bool)

(declare-fun c!501014 () Bool)

(assert (=> b!3031805 (= c!501014 (isEmptyExpr!502 lt!1046103))))

(assert (=> b!3031805 (= e!1901416 e!1901423)))

(declare-fun bm!206595 () Bool)

(assert (=> bm!206595 (= call!206604 (isEmptyLang!496 (ite c!501011 lt!1046105 (ite c!501018 lt!1046101 lt!1046103))))))

(declare-fun d!851229 () Bool)

(assert (=> d!851229 e!1901426))

(declare-fun res!1247404 () Bool)

(assert (=> d!851229 (=> (not res!1247404) (not e!1901426))))

(assert (=> d!851229 (= res!1247404 (validRegex!4160 lt!1046102))))

(assert (=> d!851229 (= lt!1046102 e!1901417)))

(declare-fun c!501012 () Bool)

(assert (=> d!851229 (= c!501012 ((_ is EmptyLang!9427) (ite c!500812 (regTwo!19367 (regTwo!19367 r!17423)) (regOne!19366 (regTwo!19367 r!17423)))))))

(assert (=> d!851229 (validRegex!4160 (ite c!500812 (regTwo!19367 (regTwo!19367 r!17423)) (regOne!19366 (regTwo!19367 r!17423))))))

(assert (=> d!851229 (= (simplify!398 (ite c!500812 (regTwo!19367 (regTwo!19367 r!17423)) (regOne!19366 (regTwo!19367 r!17423)))) lt!1046102)))

(declare-fun b!3031806 () Bool)

(assert (=> b!3031806 (= e!1901422 EmptyExpr!9427)))

(declare-fun bm!206599 () Bool)

(assert (=> bm!206599 (= call!206599 (simplify!398 (ite c!501011 (reg!9756 (ite c!500812 (regTwo!19367 (regTwo!19367 r!17423)) (regOne!19366 (regTwo!19367 r!17423)))) (ite c!501018 (regOne!19367 (ite c!500812 (regTwo!19367 (regTwo!19367 r!17423)) (regOne!19366 (regTwo!19367 r!17423)))) (regTwo!19366 (ite c!500812 (regTwo!19367 (regTwo!19367 r!17423)) (regOne!19366 (regTwo!19367 r!17423))))))))))

(declare-fun bm!206600 () Bool)

(assert (=> bm!206600 (= call!206605 (simplify!398 (ite c!501018 (regTwo!19367 (ite c!500812 (regTwo!19367 (regTwo!19367 r!17423)) (regOne!19366 (regTwo!19367 r!17423)))) (regOne!19366 (ite c!500812 (regTwo!19367 (regTwo!19367 r!17423)) (regOne!19366 (regTwo!19367 r!17423)))))))))

(declare-fun b!3031807 () Bool)

(assert (=> b!3031807 (= e!1901420 lt!1046101)))

(assert (= (and d!851229 c!501012) b!3031785))

(assert (= (and d!851229 (not c!501012)) b!3031784))

(assert (= (and b!3031784 c!501017) b!3031803))

(assert (= (and b!3031784 (not c!501017)) b!3031783))

(assert (= (and b!3031783 c!501010) b!3031793))

(assert (= (and b!3031783 (not c!501010)) b!3031798))

(assert (= (and b!3031798 c!501011) b!3031788))

(assert (= (and b!3031798 (not c!501011)) b!3031795))

(assert (= (and b!3031788 (not res!1247405)) b!3031801))

(assert (= (and b!3031788 c!501013) b!3031806))

(assert (= (and b!3031788 (not c!501013)) b!3031792))

(assert (= (and b!3031795 c!501018) b!3031786))

(assert (= (and b!3031795 (not c!501018)) b!3031799))

(assert (= (and b!3031786 c!501015) b!3031807))

(assert (= (and b!3031786 (not c!501015)) b!3031800))

(assert (= (and b!3031800 c!501020) b!3031787))

(assert (= (and b!3031800 (not c!501020)) b!3031804))

(assert (= (and b!3031799 (not res!1247406)) b!3031790))

(assert (= (and b!3031799 c!501016) b!3031789))

(assert (= (and b!3031799 (not c!501016)) b!3031805))

(assert (= (and b!3031805 c!501014) b!3031802))

(assert (= (and b!3031805 (not c!501014)) b!3031797))

(assert (= (and b!3031797 c!501019) b!3031794))

(assert (= (and b!3031797 (not c!501019)) b!3031796))

(assert (= (or b!3031786 b!3031799) bm!206597))

(assert (= (or b!3031786 b!3031799) bm!206600))

(assert (= (or b!3031786 b!3031790) bm!206596))

(assert (= (or b!3031800 b!3031799) bm!206598))

(assert (= (or b!3031801 b!3031797) bm!206594))

(assert (= (or b!3031788 bm!206597) bm!206599))

(assert (= (or b!3031788 bm!206598) bm!206595))

(assert (= (and d!851229 res!1247404) b!3031791))

(declare-fun m!3368239 () Bool)

(assert (=> bm!206595 m!3368239))

(declare-fun m!3368241 () Bool)

(assert (=> b!3031805 m!3368241))

(declare-fun m!3368243 () Bool)

(assert (=> d!851229 m!3368243))

(declare-fun m!3368245 () Bool)

(assert (=> d!851229 m!3368245))

(declare-fun m!3368247 () Bool)

(assert (=> b!3031791 m!3368247))

(declare-fun m!3368249 () Bool)

(assert (=> b!3031791 m!3368249))

(declare-fun m!3368251 () Bool)

(assert (=> bm!206600 m!3368251))

(declare-fun m!3368253 () Bool)

(assert (=> bm!206596 m!3368253))

(declare-fun m!3368255 () Bool)

(assert (=> bm!206599 m!3368255))

(declare-fun m!3368257 () Bool)

(assert (=> bm!206594 m!3368257))

(assert (=> bm!206454 d!851229))

(assert (=> b!3030763 d!851065))

(assert (=> b!3030732 d!851145))

(assert (=> b!3030732 d!851139))

(declare-fun d!851231 () Bool)

(assert (=> d!851231 (= (isEmptyLang!496 (ite c!500794 lt!1046009 lt!1046013)) ((_ is EmptyLang!9427) (ite c!500794 lt!1046009 lt!1046013)))))

(assert (=> bm!206436 d!851231))

(declare-fun b!3031808 () Bool)

(declare-fun e!1901427 () Bool)

(declare-fun e!1901432 () Bool)

(assert (=> b!3031808 (= e!1901427 e!1901432)))

(declare-fun res!1247412 () Bool)

(assert (=> b!3031808 (=> res!1247412 e!1901432)))

(declare-fun call!206606 () Bool)

(assert (=> b!3031808 (= res!1247412 call!206606)))

(declare-fun b!3031809 () Bool)

(assert (=> b!3031809 (= e!1901432 (not (= (head!6733 (tail!4959 s!11993)) (c!500683 (derivativeStep!2674 r!17423 (head!6733 s!11993))))))))

(declare-fun b!3031810 () Bool)

(declare-fun res!1247414 () Bool)

(assert (=> b!3031810 (=> res!1247414 e!1901432)))

(assert (=> b!3031810 (= res!1247414 (not (isEmpty!19468 (tail!4959 (tail!4959 s!11993)))))))

(declare-fun b!3031811 () Bool)

(declare-fun res!1247411 () Bool)

(declare-fun e!1901428 () Bool)

(assert (=> b!3031811 (=> (not res!1247411) (not e!1901428))))

(assert (=> b!3031811 (= res!1247411 (not call!206606))))

(declare-fun b!3031812 () Bool)

(declare-fun res!1247409 () Bool)

(assert (=> b!3031812 (=> (not res!1247409) (not e!1901428))))

(assert (=> b!3031812 (= res!1247409 (isEmpty!19468 (tail!4959 (tail!4959 s!11993))))))

(declare-fun b!3031813 () Bool)

(declare-fun e!1901431 () Bool)

(declare-fun lt!1046106 () Bool)

(assert (=> b!3031813 (= e!1901431 (= lt!1046106 call!206606))))

(declare-fun b!3031814 () Bool)

(declare-fun res!1247410 () Bool)

(declare-fun e!1901430 () Bool)

(assert (=> b!3031814 (=> res!1247410 e!1901430)))

(assert (=> b!3031814 (= res!1247410 e!1901428)))

(declare-fun res!1247407 () Bool)

(assert (=> b!3031814 (=> (not res!1247407) (not e!1901428))))

(assert (=> b!3031814 (= res!1247407 lt!1046106)))

(declare-fun b!3031815 () Bool)

(declare-fun e!1901429 () Bool)

(assert (=> b!3031815 (= e!1901429 (not lt!1046106))))

(declare-fun b!3031816 () Bool)

(declare-fun e!1901433 () Bool)

(assert (=> b!3031816 (= e!1901433 (matchR!4309 (derivativeStep!2674 (derivativeStep!2674 r!17423 (head!6733 s!11993)) (head!6733 (tail!4959 s!11993))) (tail!4959 (tail!4959 s!11993))))))

(declare-fun b!3031817 () Bool)

(declare-fun res!1247413 () Bool)

(assert (=> b!3031817 (=> res!1247413 e!1901430)))

(assert (=> b!3031817 (= res!1247413 (not ((_ is ElementMatch!9427) (derivativeStep!2674 r!17423 (head!6733 s!11993)))))))

(assert (=> b!3031817 (= e!1901429 e!1901430)))

(declare-fun bm!206601 () Bool)

(assert (=> bm!206601 (= call!206606 (isEmpty!19468 (tail!4959 s!11993)))))

(declare-fun d!851233 () Bool)

(assert (=> d!851233 e!1901431))

(declare-fun c!501021 () Bool)

(assert (=> d!851233 (= c!501021 ((_ is EmptyExpr!9427) (derivativeStep!2674 r!17423 (head!6733 s!11993))))))

(assert (=> d!851233 (= lt!1046106 e!1901433)))

(declare-fun c!501023 () Bool)

(assert (=> d!851233 (= c!501023 (isEmpty!19468 (tail!4959 s!11993)))))

(assert (=> d!851233 (validRegex!4160 (derivativeStep!2674 r!17423 (head!6733 s!11993)))))

(assert (=> d!851233 (= (matchR!4309 (derivativeStep!2674 r!17423 (head!6733 s!11993)) (tail!4959 s!11993)) lt!1046106)))

(declare-fun b!3031818 () Bool)

(assert (=> b!3031818 (= e!1901433 (nullable!3077 (derivativeStep!2674 r!17423 (head!6733 s!11993))))))

(declare-fun b!3031819 () Bool)

(assert (=> b!3031819 (= e!1901428 (= (head!6733 (tail!4959 s!11993)) (c!500683 (derivativeStep!2674 r!17423 (head!6733 s!11993)))))))

(declare-fun b!3031820 () Bool)

(assert (=> b!3031820 (= e!1901430 e!1901427)))

(declare-fun res!1247408 () Bool)

(assert (=> b!3031820 (=> (not res!1247408) (not e!1901427))))

(assert (=> b!3031820 (= res!1247408 (not lt!1046106))))

(declare-fun b!3031821 () Bool)

(assert (=> b!3031821 (= e!1901431 e!1901429)))

(declare-fun c!501022 () Bool)

(assert (=> b!3031821 (= c!501022 ((_ is EmptyLang!9427) (derivativeStep!2674 r!17423 (head!6733 s!11993))))))

(assert (= (and d!851233 c!501023) b!3031818))

(assert (= (and d!851233 (not c!501023)) b!3031816))

(assert (= (and d!851233 c!501021) b!3031813))

(assert (= (and d!851233 (not c!501021)) b!3031821))

(assert (= (and b!3031821 c!501022) b!3031815))

(assert (= (and b!3031821 (not c!501022)) b!3031817))

(assert (= (and b!3031817 (not res!1247413)) b!3031814))

(assert (= (and b!3031814 res!1247407) b!3031811))

(assert (= (and b!3031811 res!1247411) b!3031812))

(assert (= (and b!3031812 res!1247409) b!3031819))

(assert (= (and b!3031814 (not res!1247410)) b!3031820))

(assert (= (and b!3031820 res!1247408) b!3031808))

(assert (= (and b!3031808 (not res!1247412)) b!3031810))

(assert (= (and b!3031810 (not res!1247414)) b!3031809))

(assert (= (or b!3031813 b!3031808 b!3031811) bm!206601))

(assert (=> b!3031816 m!3367701))

(assert (=> b!3031816 m!3367983))

(assert (=> b!3031816 m!3367923))

(assert (=> b!3031816 m!3367983))

(declare-fun m!3368259 () Bool)

(assert (=> b!3031816 m!3368259))

(assert (=> b!3031816 m!3367701))

(assert (=> b!3031816 m!3367987))

(assert (=> b!3031816 m!3368259))

(assert (=> b!3031816 m!3367987))

(declare-fun m!3368261 () Bool)

(assert (=> b!3031816 m!3368261))

(assert (=> b!3031810 m!3367701))

(assert (=> b!3031810 m!3367987))

(assert (=> b!3031810 m!3367987))

(assert (=> b!3031810 m!3367991))

(assert (=> d!851233 m!3367701))

(assert (=> d!851233 m!3367705))

(assert (=> d!851233 m!3367923))

(declare-fun m!3368263 () Bool)

(assert (=> d!851233 m!3368263))

(assert (=> bm!206601 m!3367701))

(assert (=> bm!206601 m!3367705))

(assert (=> b!3031812 m!3367701))

(assert (=> b!3031812 m!3367987))

(assert (=> b!3031812 m!3367987))

(assert (=> b!3031812 m!3367991))

(assert (=> b!3031809 m!3367701))

(assert (=> b!3031809 m!3367983))

(assert (=> b!3031819 m!3367701))

(assert (=> b!3031819 m!3367983))

(assert (=> b!3031818 m!3367923))

(declare-fun m!3368265 () Bool)

(assert (=> b!3031818 m!3368265))

(assert (=> b!3031323 d!851233))

(declare-fun b!3031822 () Bool)

(declare-fun e!1901437 () Regex!9427)

(declare-fun e!1901436 () Regex!9427)

(assert (=> b!3031822 (= e!1901437 e!1901436)))

(declare-fun c!501025 () Bool)

(assert (=> b!3031822 (= c!501025 ((_ is ElementMatch!9427) r!17423))))

(declare-fun c!501024 () Bool)

(declare-fun call!206608 () Regex!9427)

(declare-fun bm!206602 () Bool)

(declare-fun c!501027 () Bool)

(assert (=> bm!206602 (= call!206608 (derivativeStep!2674 (ite c!501024 (regTwo!19367 r!17423) (ite c!501027 (reg!9756 r!17423) (regOne!19366 r!17423))) (head!6733 s!11993)))))

(declare-fun bm!206603 () Bool)

(declare-fun call!206607 () Regex!9427)

(assert (=> bm!206603 (= call!206607 (derivativeStep!2674 (ite c!501024 (regOne!19367 r!17423) (regTwo!19366 r!17423)) (head!6733 s!11993)))))

(declare-fun b!3031823 () Bool)

(declare-fun e!1901435 () Regex!9427)

(declare-fun call!206609 () Regex!9427)

(assert (=> b!3031823 (= e!1901435 (Concat!14748 call!206609 r!17423))))

(declare-fun bm!206604 () Bool)

(assert (=> bm!206604 (= call!206609 call!206608)))

(declare-fun b!3031824 () Bool)

(declare-fun c!501028 () Bool)

(assert (=> b!3031824 (= c!501028 (nullable!3077 (regOne!19366 r!17423)))))

(declare-fun e!1901438 () Regex!9427)

(assert (=> b!3031824 (= e!1901435 e!1901438)))

(declare-fun b!3031825 () Bool)

(assert (=> b!3031825 (= c!501024 ((_ is Union!9427) r!17423))))

(declare-fun e!1901434 () Regex!9427)

(assert (=> b!3031825 (= e!1901436 e!1901434)))

(declare-fun b!3031826 () Bool)

(assert (=> b!3031826 (= e!1901437 EmptyLang!9427)))

(declare-fun b!3031827 () Bool)

(declare-fun call!206610 () Regex!9427)

(assert (=> b!3031827 (= e!1901438 (Union!9427 (Concat!14748 call!206610 (regTwo!19366 r!17423)) EmptyLang!9427))))

(declare-fun d!851235 () Bool)

(declare-fun lt!1046107 () Regex!9427)

(assert (=> d!851235 (validRegex!4160 lt!1046107)))

(assert (=> d!851235 (= lt!1046107 e!1901437)))

(declare-fun c!501026 () Bool)

(assert (=> d!851235 (= c!501026 (or ((_ is EmptyExpr!9427) r!17423) ((_ is EmptyLang!9427) r!17423)))))

(assert (=> d!851235 (validRegex!4160 r!17423)))

(assert (=> d!851235 (= (derivativeStep!2674 r!17423 (head!6733 s!11993)) lt!1046107)))

(declare-fun b!3031828 () Bool)

(assert (=> b!3031828 (= e!1901438 (Union!9427 (Concat!14748 call!206610 (regTwo!19366 r!17423)) call!206607))))

(declare-fun b!3031829 () Bool)

(assert (=> b!3031829 (= e!1901434 e!1901435)))

(assert (=> b!3031829 (= c!501027 ((_ is Star!9427) r!17423))))

(declare-fun b!3031830 () Bool)

(assert (=> b!3031830 (= e!1901436 (ite (= (head!6733 s!11993) (c!500683 r!17423)) EmptyExpr!9427 EmptyLang!9427))))

(declare-fun b!3031831 () Bool)

(assert (=> b!3031831 (= e!1901434 (Union!9427 call!206607 call!206608))))

(declare-fun bm!206605 () Bool)

(assert (=> bm!206605 (= call!206610 call!206609)))

(assert (= (and d!851235 c!501026) b!3031826))

(assert (= (and d!851235 (not c!501026)) b!3031822))

(assert (= (and b!3031822 c!501025) b!3031830))

(assert (= (and b!3031822 (not c!501025)) b!3031825))

(assert (= (and b!3031825 c!501024) b!3031831))

(assert (= (and b!3031825 (not c!501024)) b!3031829))

(assert (= (and b!3031829 c!501027) b!3031823))

(assert (= (and b!3031829 (not c!501027)) b!3031824))

(assert (= (and b!3031824 c!501028) b!3031828))

(assert (= (and b!3031824 (not c!501028)) b!3031827))

(assert (= (or b!3031828 b!3031827) bm!206605))

(assert (= (or b!3031823 bm!206605) bm!206604))

(assert (= (or b!3031831 bm!206604) bm!206602))

(assert (= (or b!3031831 b!3031828) bm!206603))

(assert (=> bm!206602 m!3367697))

(declare-fun m!3368267 () Bool)

(assert (=> bm!206602 m!3368267))

(assert (=> bm!206603 m!3367697))

(declare-fun m!3368269 () Bool)

(assert (=> bm!206603 m!3368269))

(declare-fun m!3368271 () Bool)

(assert (=> b!3031824 m!3368271))

(declare-fun m!3368273 () Bool)

(assert (=> d!851235 m!3368273))

(assert (=> d!851235 m!3367693))

(assert (=> b!3031323 d!851235))

(assert (=> b!3031323 d!851121))

(assert (=> b!3031323 d!851139))

(declare-fun b!3031832 () Bool)

(declare-fun e!1901439 () Bool)

(declare-fun e!1901444 () Bool)

(assert (=> b!3031832 (= e!1901439 e!1901444)))

(declare-fun res!1247420 () Bool)

(assert (=> b!3031832 (=> res!1247420 e!1901444)))

(declare-fun call!206611 () Bool)

(assert (=> b!3031832 (= res!1247420 call!206611)))

(declare-fun b!3031833 () Bool)

(assert (=> b!3031833 (= e!1901444 (not (= (head!6733 (tail!4959 s!11993)) (c!500683 (derivativeStep!2674 (Union!9427 lt!1045957 lt!1045954) (head!6733 s!11993))))))))

(declare-fun b!3031834 () Bool)

(declare-fun res!1247422 () Bool)

(assert (=> b!3031834 (=> res!1247422 e!1901444)))

(assert (=> b!3031834 (= res!1247422 (not (isEmpty!19468 (tail!4959 (tail!4959 s!11993)))))))

(declare-fun b!3031835 () Bool)

(declare-fun res!1247419 () Bool)

(declare-fun e!1901440 () Bool)

(assert (=> b!3031835 (=> (not res!1247419) (not e!1901440))))

(assert (=> b!3031835 (= res!1247419 (not call!206611))))

(declare-fun b!3031836 () Bool)

(declare-fun res!1247417 () Bool)

(assert (=> b!3031836 (=> (not res!1247417) (not e!1901440))))

(assert (=> b!3031836 (= res!1247417 (isEmpty!19468 (tail!4959 (tail!4959 s!11993))))))

(declare-fun b!3031837 () Bool)

(declare-fun e!1901443 () Bool)

(declare-fun lt!1046108 () Bool)

(assert (=> b!3031837 (= e!1901443 (= lt!1046108 call!206611))))

(declare-fun b!3031838 () Bool)

(declare-fun res!1247418 () Bool)

(declare-fun e!1901442 () Bool)

(assert (=> b!3031838 (=> res!1247418 e!1901442)))

(assert (=> b!3031838 (= res!1247418 e!1901440)))

(declare-fun res!1247415 () Bool)

(assert (=> b!3031838 (=> (not res!1247415) (not e!1901440))))

(assert (=> b!3031838 (= res!1247415 lt!1046108)))

(declare-fun b!3031839 () Bool)

(declare-fun e!1901441 () Bool)

(assert (=> b!3031839 (= e!1901441 (not lt!1046108))))

(declare-fun e!1901445 () Bool)

(declare-fun b!3031840 () Bool)

(assert (=> b!3031840 (= e!1901445 (matchR!4309 (derivativeStep!2674 (derivativeStep!2674 (Union!9427 lt!1045957 lt!1045954) (head!6733 s!11993)) (head!6733 (tail!4959 s!11993))) (tail!4959 (tail!4959 s!11993))))))

(declare-fun b!3031841 () Bool)

(declare-fun res!1247421 () Bool)

(assert (=> b!3031841 (=> res!1247421 e!1901442)))

(assert (=> b!3031841 (= res!1247421 (not ((_ is ElementMatch!9427) (derivativeStep!2674 (Union!9427 lt!1045957 lt!1045954) (head!6733 s!11993)))))))

(assert (=> b!3031841 (= e!1901441 e!1901442)))

(declare-fun bm!206606 () Bool)

(assert (=> bm!206606 (= call!206611 (isEmpty!19468 (tail!4959 s!11993)))))

(declare-fun d!851237 () Bool)

(assert (=> d!851237 e!1901443))

(declare-fun c!501029 () Bool)

(assert (=> d!851237 (= c!501029 ((_ is EmptyExpr!9427) (derivativeStep!2674 (Union!9427 lt!1045957 lt!1045954) (head!6733 s!11993))))))

(assert (=> d!851237 (= lt!1046108 e!1901445)))

(declare-fun c!501031 () Bool)

(assert (=> d!851237 (= c!501031 (isEmpty!19468 (tail!4959 s!11993)))))

(assert (=> d!851237 (validRegex!4160 (derivativeStep!2674 (Union!9427 lt!1045957 lt!1045954) (head!6733 s!11993)))))

(assert (=> d!851237 (= (matchR!4309 (derivativeStep!2674 (Union!9427 lt!1045957 lt!1045954) (head!6733 s!11993)) (tail!4959 s!11993)) lt!1046108)))

(declare-fun b!3031842 () Bool)

(assert (=> b!3031842 (= e!1901445 (nullable!3077 (derivativeStep!2674 (Union!9427 lt!1045957 lt!1045954) (head!6733 s!11993))))))

(declare-fun b!3031843 () Bool)

(assert (=> b!3031843 (= e!1901440 (= (head!6733 (tail!4959 s!11993)) (c!500683 (derivativeStep!2674 (Union!9427 lt!1045957 lt!1045954) (head!6733 s!11993)))))))

(declare-fun b!3031844 () Bool)

(assert (=> b!3031844 (= e!1901442 e!1901439)))

(declare-fun res!1247416 () Bool)

(assert (=> b!3031844 (=> (not res!1247416) (not e!1901439))))

(assert (=> b!3031844 (= res!1247416 (not lt!1046108))))

(declare-fun b!3031845 () Bool)

(assert (=> b!3031845 (= e!1901443 e!1901441)))

(declare-fun c!501030 () Bool)

(assert (=> b!3031845 (= c!501030 ((_ is EmptyLang!9427) (derivativeStep!2674 (Union!9427 lt!1045957 lt!1045954) (head!6733 s!11993))))))

(assert (= (and d!851237 c!501031) b!3031842))

(assert (= (and d!851237 (not c!501031)) b!3031840))

(assert (= (and d!851237 c!501029) b!3031837))

(assert (= (and d!851237 (not c!501029)) b!3031845))

(assert (= (and b!3031845 c!501030) b!3031839))

(assert (= (and b!3031845 (not c!501030)) b!3031841))

(assert (= (and b!3031841 (not res!1247421)) b!3031838))

(assert (= (and b!3031838 res!1247415) b!3031835))

(assert (= (and b!3031835 res!1247419) b!3031836))

(assert (= (and b!3031836 res!1247417) b!3031843))

(assert (= (and b!3031838 (not res!1247418)) b!3031844))

(assert (= (and b!3031844 res!1247416) b!3031832))

(assert (= (and b!3031832 (not res!1247420)) b!3031834))

(assert (= (and b!3031834 (not res!1247422)) b!3031833))

(assert (= (or b!3031837 b!3031832 b!3031835) bm!206606))

(assert (=> b!3031840 m!3367701))

(assert (=> b!3031840 m!3367983))

(assert (=> b!3031840 m!3367955))

(assert (=> b!3031840 m!3367983))

(declare-fun m!3368275 () Bool)

(assert (=> b!3031840 m!3368275))

(assert (=> b!3031840 m!3367701))

(assert (=> b!3031840 m!3367987))

(assert (=> b!3031840 m!3368275))

(assert (=> b!3031840 m!3367987))

(declare-fun m!3368277 () Bool)

(assert (=> b!3031840 m!3368277))

(assert (=> b!3031834 m!3367701))

(assert (=> b!3031834 m!3367987))

(assert (=> b!3031834 m!3367987))

(assert (=> b!3031834 m!3367991))

(assert (=> d!851237 m!3367701))

(assert (=> d!851237 m!3367705))

(assert (=> d!851237 m!3367955))

(declare-fun m!3368279 () Bool)

(assert (=> d!851237 m!3368279))

(assert (=> bm!206606 m!3367701))

(assert (=> bm!206606 m!3367705))

(assert (=> b!3031836 m!3367701))

(assert (=> b!3031836 m!3367987))

(assert (=> b!3031836 m!3367987))

(assert (=> b!3031836 m!3367991))

(assert (=> b!3031833 m!3367701))

(assert (=> b!3031833 m!3367983))

(assert (=> b!3031843 m!3367701))

(assert (=> b!3031843 m!3367983))

(assert (=> b!3031842 m!3367955))

(declare-fun m!3368281 () Bool)

(assert (=> b!3031842 m!3368281))

(assert (=> b!3031376 d!851237))

(declare-fun b!3031846 () Bool)

(declare-fun e!1901449 () Regex!9427)

(declare-fun e!1901448 () Regex!9427)

(assert (=> b!3031846 (= e!1901449 e!1901448)))

(declare-fun c!501033 () Bool)

(assert (=> b!3031846 (= c!501033 ((_ is ElementMatch!9427) (Union!9427 lt!1045957 lt!1045954)))))

(declare-fun c!501035 () Bool)

(declare-fun bm!206607 () Bool)

(declare-fun call!206613 () Regex!9427)

(declare-fun c!501032 () Bool)

(assert (=> bm!206607 (= call!206613 (derivativeStep!2674 (ite c!501032 (regTwo!19367 (Union!9427 lt!1045957 lt!1045954)) (ite c!501035 (reg!9756 (Union!9427 lt!1045957 lt!1045954)) (regOne!19366 (Union!9427 lt!1045957 lt!1045954)))) (head!6733 s!11993)))))

(declare-fun call!206612 () Regex!9427)

(declare-fun bm!206608 () Bool)

(assert (=> bm!206608 (= call!206612 (derivativeStep!2674 (ite c!501032 (regOne!19367 (Union!9427 lt!1045957 lt!1045954)) (regTwo!19366 (Union!9427 lt!1045957 lt!1045954))) (head!6733 s!11993)))))

(declare-fun call!206614 () Regex!9427)

(declare-fun e!1901447 () Regex!9427)

(declare-fun b!3031847 () Bool)

(assert (=> b!3031847 (= e!1901447 (Concat!14748 call!206614 (Union!9427 lt!1045957 lt!1045954)))))

(declare-fun bm!206609 () Bool)

(assert (=> bm!206609 (= call!206614 call!206613)))

(declare-fun b!3031848 () Bool)

(declare-fun c!501036 () Bool)

(assert (=> b!3031848 (= c!501036 (nullable!3077 (regOne!19366 (Union!9427 lt!1045957 lt!1045954))))))

(declare-fun e!1901450 () Regex!9427)

(assert (=> b!3031848 (= e!1901447 e!1901450)))

(declare-fun b!3031849 () Bool)

(assert (=> b!3031849 (= c!501032 ((_ is Union!9427) (Union!9427 lt!1045957 lt!1045954)))))

(declare-fun e!1901446 () Regex!9427)

(assert (=> b!3031849 (= e!1901448 e!1901446)))

(declare-fun b!3031850 () Bool)

(assert (=> b!3031850 (= e!1901449 EmptyLang!9427)))

(declare-fun b!3031851 () Bool)

(declare-fun call!206615 () Regex!9427)

(assert (=> b!3031851 (= e!1901450 (Union!9427 (Concat!14748 call!206615 (regTwo!19366 (Union!9427 lt!1045957 lt!1045954))) EmptyLang!9427))))

(declare-fun d!851239 () Bool)

(declare-fun lt!1046109 () Regex!9427)

(assert (=> d!851239 (validRegex!4160 lt!1046109)))

(assert (=> d!851239 (= lt!1046109 e!1901449)))

(declare-fun c!501034 () Bool)

(assert (=> d!851239 (= c!501034 (or ((_ is EmptyExpr!9427) (Union!9427 lt!1045957 lt!1045954)) ((_ is EmptyLang!9427) (Union!9427 lt!1045957 lt!1045954))))))

(assert (=> d!851239 (validRegex!4160 (Union!9427 lt!1045957 lt!1045954))))

(assert (=> d!851239 (= (derivativeStep!2674 (Union!9427 lt!1045957 lt!1045954) (head!6733 s!11993)) lt!1046109)))

(declare-fun b!3031852 () Bool)

(assert (=> b!3031852 (= e!1901450 (Union!9427 (Concat!14748 call!206615 (regTwo!19366 (Union!9427 lt!1045957 lt!1045954))) call!206612))))

(declare-fun b!3031853 () Bool)

(assert (=> b!3031853 (= e!1901446 e!1901447)))

(assert (=> b!3031853 (= c!501035 ((_ is Star!9427) (Union!9427 lt!1045957 lt!1045954)))))

(declare-fun b!3031854 () Bool)

(assert (=> b!3031854 (= e!1901448 (ite (= (head!6733 s!11993) (c!500683 (Union!9427 lt!1045957 lt!1045954))) EmptyExpr!9427 EmptyLang!9427))))

(declare-fun b!3031855 () Bool)

(assert (=> b!3031855 (= e!1901446 (Union!9427 call!206612 call!206613))))

(declare-fun bm!206610 () Bool)

(assert (=> bm!206610 (= call!206615 call!206614)))

(assert (= (and d!851239 c!501034) b!3031850))

(assert (= (and d!851239 (not c!501034)) b!3031846))

(assert (= (and b!3031846 c!501033) b!3031854))

(assert (= (and b!3031846 (not c!501033)) b!3031849))

(assert (= (and b!3031849 c!501032) b!3031855))

(assert (= (and b!3031849 (not c!501032)) b!3031853))

(assert (= (and b!3031853 c!501035) b!3031847))

(assert (= (and b!3031853 (not c!501035)) b!3031848))

(assert (= (and b!3031848 c!501036) b!3031852))

(assert (= (and b!3031848 (not c!501036)) b!3031851))

(assert (= (or b!3031852 b!3031851) bm!206610))

(assert (= (or b!3031847 bm!206610) bm!206609))

(assert (= (or b!3031855 bm!206609) bm!206607))

(assert (= (or b!3031855 b!3031852) bm!206608))

(assert (=> bm!206607 m!3367697))

(declare-fun m!3368283 () Bool)

(assert (=> bm!206607 m!3368283))

(assert (=> bm!206608 m!3367697))

(declare-fun m!3368285 () Bool)

(assert (=> bm!206608 m!3368285))

(declare-fun m!3368287 () Bool)

(assert (=> b!3031848 m!3368287))

(declare-fun m!3368289 () Bool)

(assert (=> d!851239 m!3368289))

(assert (=> d!851239 m!3367959))

(assert (=> b!3031376 d!851239))

(assert (=> b!3031376 d!851121))

(assert (=> b!3031376 d!851139))

(assert (=> b!3031379 d!851121))

(assert (=> bm!206484 d!851127))

(declare-fun d!851241 () Bool)

(assert (=> d!851241 (= (isEmptyLang!496 (ite c!500812 lt!1046016 lt!1046020)) ((_ is EmptyLang!9427) (ite c!500812 lt!1046016 lt!1046020)))))

(assert (=> bm!206450 d!851241))

(declare-fun d!851243 () Bool)

(assert (=> d!851243 (= (nullable!3077 lt!1045957) (nullableFct!876 lt!1045957))))

(declare-fun bs!530851 () Bool)

(assert (= bs!530851 d!851243))

(declare-fun m!3368291 () Bool)

(assert (=> bs!530851 m!3368291))

(assert (=> b!3031092 d!851243))

(declare-fun bs!530852 () Bool)

(declare-fun b!3031864 () Bool)

(assert (= bs!530852 (and b!3031864 b!3031308)))

(declare-fun lambda!113191 () Int)

(assert (=> bs!530852 (= (and (= (reg!9756 (regTwo!19367 r!17423)) (reg!9756 r!17423)) (= (regTwo!19367 r!17423) r!17423)) (= lambda!113191 lambda!113189))))

(declare-fun bs!530853 () Bool)

(assert (= bs!530853 (and b!3031864 b!3031300)))

(assert (=> bs!530853 (not (= lambda!113191 lambda!113190))))

(assert (=> b!3031864 true))

(assert (=> b!3031864 true))

(declare-fun bs!530854 () Bool)

(declare-fun b!3031856 () Bool)

(assert (= bs!530854 (and b!3031856 b!3031308)))

(declare-fun lambda!113192 () Int)

(assert (=> bs!530854 (not (= lambda!113192 lambda!113189))))

(declare-fun bs!530855 () Bool)

(assert (= bs!530855 (and b!3031856 b!3031300)))

(assert (=> bs!530855 (= (and (= (regOne!19366 (regTwo!19367 r!17423)) (regOne!19366 r!17423)) (= (regTwo!19366 (regTwo!19367 r!17423)) (regTwo!19366 r!17423))) (= lambda!113192 lambda!113190))))

(declare-fun bs!530856 () Bool)

(assert (= bs!530856 (and b!3031856 b!3031864)))

(assert (=> bs!530856 (not (= lambda!113192 lambda!113191))))

(assert (=> b!3031856 true))

(assert (=> b!3031856 true))

(declare-fun e!1901452 () Bool)

(declare-fun call!206617 () Bool)

(assert (=> b!3031856 (= e!1901452 call!206617)))

(declare-fun b!3031857 () Bool)

(declare-fun c!501039 () Bool)

(assert (=> b!3031857 (= c!501039 ((_ is Union!9427) (regTwo!19367 r!17423)))))

(declare-fun e!1901455 () Bool)

(declare-fun e!1901453 () Bool)

(assert (=> b!3031857 (= e!1901455 e!1901453)))

(declare-fun b!3031858 () Bool)

(assert (=> b!3031858 (= e!1901455 (= s!11993 (Cons!35168 (c!500683 (regTwo!19367 r!17423)) Nil!35168)))))

(declare-fun b!3031859 () Bool)

(declare-fun e!1901454 () Bool)

(declare-fun e!1901457 () Bool)

(assert (=> b!3031859 (= e!1901454 e!1901457)))

(declare-fun res!1247424 () Bool)

(assert (=> b!3031859 (= res!1247424 (not ((_ is EmptyLang!9427) (regTwo!19367 r!17423))))))

(assert (=> b!3031859 (=> (not res!1247424) (not e!1901457))))

(declare-fun c!501037 () Bool)

(declare-fun bm!206611 () Bool)

(assert (=> bm!206611 (= call!206617 (Exists!1692 (ite c!501037 lambda!113191 lambda!113192)))))

(declare-fun b!3031860 () Bool)

(declare-fun e!1901456 () Bool)

(assert (=> b!3031860 (= e!1901456 (matchRSpec!1564 (regTwo!19367 (regTwo!19367 r!17423)) s!11993))))

(declare-fun b!3031861 () Bool)

(assert (=> b!3031861 (= e!1901453 e!1901452)))

(assert (=> b!3031861 (= c!501037 ((_ is Star!9427) (regTwo!19367 r!17423)))))

(declare-fun b!3031862 () Bool)

(declare-fun call!206616 () Bool)

(assert (=> b!3031862 (= e!1901454 call!206616)))

(declare-fun d!851245 () Bool)

(declare-fun c!501040 () Bool)

(assert (=> d!851245 (= c!501040 ((_ is EmptyExpr!9427) (regTwo!19367 r!17423)))))

(assert (=> d!851245 (= (matchRSpec!1564 (regTwo!19367 r!17423) s!11993) e!1901454)))

(declare-fun b!3031863 () Bool)

(declare-fun res!1247423 () Bool)

(declare-fun e!1901451 () Bool)

(assert (=> b!3031863 (=> res!1247423 e!1901451)))

(assert (=> b!3031863 (= res!1247423 call!206616)))

(assert (=> b!3031863 (= e!1901452 e!1901451)))

(declare-fun bm!206612 () Bool)

(assert (=> bm!206612 (= call!206616 (isEmpty!19468 s!11993))))

(assert (=> b!3031864 (= e!1901451 call!206617)))

(declare-fun b!3031865 () Bool)

(assert (=> b!3031865 (= e!1901453 e!1901456)))

(declare-fun res!1247425 () Bool)

(assert (=> b!3031865 (= res!1247425 (matchRSpec!1564 (regOne!19367 (regTwo!19367 r!17423)) s!11993))))

(assert (=> b!3031865 (=> res!1247425 e!1901456)))

(declare-fun b!3031866 () Bool)

(declare-fun c!501038 () Bool)

(assert (=> b!3031866 (= c!501038 ((_ is ElementMatch!9427) (regTwo!19367 r!17423)))))

(assert (=> b!3031866 (= e!1901457 e!1901455)))

(assert (= (and d!851245 c!501040) b!3031862))

(assert (= (and d!851245 (not c!501040)) b!3031859))

(assert (= (and b!3031859 res!1247424) b!3031866))

(assert (= (and b!3031866 c!501038) b!3031858))

(assert (= (and b!3031866 (not c!501038)) b!3031857))

(assert (= (and b!3031857 c!501039) b!3031865))

(assert (= (and b!3031857 (not c!501039)) b!3031861))

(assert (= (and b!3031865 (not res!1247425)) b!3031860))

(assert (= (and b!3031861 c!501037) b!3031863))

(assert (= (and b!3031861 (not c!501037)) b!3031856))

(assert (= (and b!3031863 (not res!1247423)) b!3031864))

(assert (= (or b!3031864 b!3031856) bm!206611))

(assert (= (or b!3031862 b!3031863) bm!206612))

(declare-fun m!3368293 () Bool)

(assert (=> bm!206611 m!3368293))

(declare-fun m!3368295 () Bool)

(assert (=> b!3031860 m!3368295))

(assert (=> bm!206612 m!3367707))

(declare-fun m!3368297 () Bool)

(assert (=> b!3031865 m!3368297))

(assert (=> b!3031304 d!851245))

(assert (=> bm!206493 d!851127))

(assert (=> b!3030820 d!851145))

(assert (=> b!3030820 d!851139))

(assert (=> b!3031330 d!851121))

(assert (=> bm!206483 d!851127))

(assert (=> b!3031326 d!851121))

(assert (=> b!3030740 d!851151))

(assert (=> d!851057 d!851053))

(declare-fun d!851247 () Bool)

(declare-fun e!1901460 () Bool)

(assert (=> d!851247 e!1901460))

(declare-fun res!1247428 () Bool)

(assert (=> d!851247 (=> res!1247428 e!1901460)))

(assert (=> d!851247 (= res!1247428 (matchR!4309 (regOne!19367 r!17423) s!11993))))

(assert (=> d!851247 true))

(declare-fun _$116!376 () Unit!49277)

(assert (=> d!851247 (= (choose!17972 (regOne!19367 r!17423) (regTwo!19367 r!17423) s!11993) _$116!376)))

(declare-fun b!3031869 () Bool)

(assert (=> b!3031869 (= e!1901460 (matchR!4309 (regTwo!19367 r!17423) s!11993))))

(assert (= (and d!851247 (not res!1247428)) b!3031869))

(assert (=> d!851247 m!3367687))

(assert (=> b!3031869 m!3367691))

(assert (=> d!851057 d!851247))

(assert (=> d!851057 d!851129))

(assert (=> d!851065 d!851127))

(assert (=> d!851065 d!851163))

(declare-fun bs!530857 () Bool)

(declare-fun b!3031878 () Bool)

(assert (= bs!530857 (and b!3031878 b!3031308)))

(declare-fun lambda!113193 () Int)

(assert (=> bs!530857 (= (and (= (reg!9756 (regOne!19367 r!17423)) (reg!9756 r!17423)) (= (regOne!19367 r!17423) r!17423)) (= lambda!113193 lambda!113189))))

(declare-fun bs!530858 () Bool)

(assert (= bs!530858 (and b!3031878 b!3031300)))

(assert (=> bs!530858 (not (= lambda!113193 lambda!113190))))

(declare-fun bs!530859 () Bool)

(assert (= bs!530859 (and b!3031878 b!3031864)))

(assert (=> bs!530859 (= (and (= (reg!9756 (regOne!19367 r!17423)) (reg!9756 (regTwo!19367 r!17423))) (= (regOne!19367 r!17423) (regTwo!19367 r!17423))) (= lambda!113193 lambda!113191))))

(declare-fun bs!530860 () Bool)

(assert (= bs!530860 (and b!3031878 b!3031856)))

(assert (=> bs!530860 (not (= lambda!113193 lambda!113192))))

(assert (=> b!3031878 true))

(assert (=> b!3031878 true))

(declare-fun bs!530861 () Bool)

(declare-fun b!3031870 () Bool)

(assert (= bs!530861 (and b!3031870 b!3031308)))

(declare-fun lambda!113194 () Int)

(assert (=> bs!530861 (not (= lambda!113194 lambda!113189))))

(declare-fun bs!530862 () Bool)

(assert (= bs!530862 (and b!3031870 b!3031856)))

(assert (=> bs!530862 (= (and (= (regOne!19366 (regOne!19367 r!17423)) (regOne!19366 (regTwo!19367 r!17423))) (= (regTwo!19366 (regOne!19367 r!17423)) (regTwo!19366 (regTwo!19367 r!17423)))) (= lambda!113194 lambda!113192))))

(declare-fun bs!530863 () Bool)

(assert (= bs!530863 (and b!3031870 b!3031864)))

(assert (=> bs!530863 (not (= lambda!113194 lambda!113191))))

(declare-fun bs!530864 () Bool)

(assert (= bs!530864 (and b!3031870 b!3031300)))

(assert (=> bs!530864 (= (and (= (regOne!19366 (regOne!19367 r!17423)) (regOne!19366 r!17423)) (= (regTwo!19366 (regOne!19367 r!17423)) (regTwo!19366 r!17423))) (= lambda!113194 lambda!113190))))

(declare-fun bs!530865 () Bool)

(assert (= bs!530865 (and b!3031870 b!3031878)))

(assert (=> bs!530865 (not (= lambda!113194 lambda!113193))))

(assert (=> b!3031870 true))

(assert (=> b!3031870 true))

(declare-fun e!1901462 () Bool)

(declare-fun call!206619 () Bool)

(assert (=> b!3031870 (= e!1901462 call!206619)))

(declare-fun b!3031871 () Bool)

(declare-fun c!501043 () Bool)

(assert (=> b!3031871 (= c!501043 ((_ is Union!9427) (regOne!19367 r!17423)))))

(declare-fun e!1901465 () Bool)

(declare-fun e!1901463 () Bool)

(assert (=> b!3031871 (= e!1901465 e!1901463)))

(declare-fun b!3031872 () Bool)

(assert (=> b!3031872 (= e!1901465 (= s!11993 (Cons!35168 (c!500683 (regOne!19367 r!17423)) Nil!35168)))))

(declare-fun b!3031873 () Bool)

(declare-fun e!1901464 () Bool)

(declare-fun e!1901467 () Bool)

(assert (=> b!3031873 (= e!1901464 e!1901467)))

(declare-fun res!1247430 () Bool)

(assert (=> b!3031873 (= res!1247430 (not ((_ is EmptyLang!9427) (regOne!19367 r!17423))))))

(assert (=> b!3031873 (=> (not res!1247430) (not e!1901467))))

(declare-fun bm!206613 () Bool)

(declare-fun c!501041 () Bool)

(assert (=> bm!206613 (= call!206619 (Exists!1692 (ite c!501041 lambda!113193 lambda!113194)))))

(declare-fun b!3031874 () Bool)

(declare-fun e!1901466 () Bool)

(assert (=> b!3031874 (= e!1901466 (matchRSpec!1564 (regTwo!19367 (regOne!19367 r!17423)) s!11993))))

(declare-fun b!3031875 () Bool)

(assert (=> b!3031875 (= e!1901463 e!1901462)))

(assert (=> b!3031875 (= c!501041 ((_ is Star!9427) (regOne!19367 r!17423)))))

(declare-fun b!3031876 () Bool)

(declare-fun call!206618 () Bool)

(assert (=> b!3031876 (= e!1901464 call!206618)))

(declare-fun d!851249 () Bool)

(declare-fun c!501044 () Bool)

(assert (=> d!851249 (= c!501044 ((_ is EmptyExpr!9427) (regOne!19367 r!17423)))))

(assert (=> d!851249 (= (matchRSpec!1564 (regOne!19367 r!17423) s!11993) e!1901464)))

(declare-fun b!3031877 () Bool)

(declare-fun res!1247429 () Bool)

(declare-fun e!1901461 () Bool)

(assert (=> b!3031877 (=> res!1247429 e!1901461)))

(assert (=> b!3031877 (= res!1247429 call!206618)))

(assert (=> b!3031877 (= e!1901462 e!1901461)))

(declare-fun bm!206614 () Bool)

(assert (=> bm!206614 (= call!206618 (isEmpty!19468 s!11993))))

(assert (=> b!3031878 (= e!1901461 call!206619)))

(declare-fun b!3031879 () Bool)

(assert (=> b!3031879 (= e!1901463 e!1901466)))

(declare-fun res!1247431 () Bool)

(assert (=> b!3031879 (= res!1247431 (matchRSpec!1564 (regOne!19367 (regOne!19367 r!17423)) s!11993))))

(assert (=> b!3031879 (=> res!1247431 e!1901466)))

(declare-fun b!3031880 () Bool)

(declare-fun c!501042 () Bool)

(assert (=> b!3031880 (= c!501042 ((_ is ElementMatch!9427) (regOne!19367 r!17423)))))

(assert (=> b!3031880 (= e!1901467 e!1901465)))

(assert (= (and d!851249 c!501044) b!3031876))

(assert (= (and d!851249 (not c!501044)) b!3031873))

(assert (= (and b!3031873 res!1247430) b!3031880))

(assert (= (and b!3031880 c!501042) b!3031872))

(assert (= (and b!3031880 (not c!501042)) b!3031871))

(assert (= (and b!3031871 c!501043) b!3031879))

(assert (= (and b!3031871 (not c!501043)) b!3031875))

(assert (= (and b!3031879 (not res!1247431)) b!3031874))

(assert (= (and b!3031875 c!501041) b!3031877))

(assert (= (and b!3031875 (not c!501041)) b!3031870))

(assert (= (and b!3031877 (not res!1247429)) b!3031878))

(assert (= (or b!3031878 b!3031870) bm!206613))

(assert (= (or b!3031876 b!3031877) bm!206614))

(declare-fun m!3368299 () Bool)

(assert (=> bm!206613 m!3368299))

(declare-fun m!3368301 () Bool)

(assert (=> b!3031874 m!3368301))

(assert (=> bm!206614 m!3367707))

(declare-fun m!3368303 () Bool)

(assert (=> b!3031879 m!3368303))

(assert (=> b!3031309 d!851249))

(declare-fun b!3031881 () Bool)

(declare-fun e!1901470 () Bool)

(declare-fun call!206622 () Bool)

(assert (=> b!3031881 (= e!1901470 call!206622)))

(declare-fun b!3031882 () Bool)

(declare-fun res!1247432 () Bool)

(declare-fun e!1901471 () Bool)

(assert (=> b!3031882 (=> res!1247432 e!1901471)))

(assert (=> b!3031882 (= res!1247432 (not ((_ is Concat!14748) lt!1046051)))))

(declare-fun e!1901469 () Bool)

(assert (=> b!3031882 (= e!1901469 e!1901471)))

(declare-fun b!3031883 () Bool)

(declare-fun e!1901474 () Bool)

(assert (=> b!3031883 (= e!1901474 e!1901469)))

(declare-fun c!501045 () Bool)

(assert (=> b!3031883 (= c!501045 ((_ is Union!9427) lt!1046051))))

(declare-fun b!3031884 () Bool)

(declare-fun e!1901468 () Bool)

(assert (=> b!3031884 (= e!1901468 e!1901474)))

(declare-fun c!501046 () Bool)

(assert (=> b!3031884 (= c!501046 ((_ is Star!9427) lt!1046051))))

(declare-fun b!3031885 () Bool)

(declare-fun res!1247434 () Bool)

(assert (=> b!3031885 (=> (not res!1247434) (not e!1901470))))

(declare-fun call!206621 () Bool)

(assert (=> b!3031885 (= res!1247434 call!206621)))

(assert (=> b!3031885 (= e!1901469 e!1901470)))

(declare-fun b!3031886 () Bool)

(declare-fun e!1901472 () Bool)

(declare-fun call!206620 () Bool)

(assert (=> b!3031886 (= e!1901472 call!206620)))

(declare-fun b!3031887 () Bool)

(assert (=> b!3031887 (= e!1901474 e!1901472)))

(declare-fun res!1247433 () Bool)

(assert (=> b!3031887 (= res!1247433 (not (nullable!3077 (reg!9756 lt!1046051))))))

(assert (=> b!3031887 (=> (not res!1247433) (not e!1901472))))

(declare-fun bm!206616 () Bool)

(assert (=> bm!206616 (= call!206621 call!206620)))

(declare-fun bm!206617 () Bool)

(assert (=> bm!206617 (= call!206622 (validRegex!4160 (ite c!501045 (regTwo!19367 lt!1046051) (regOne!19366 lt!1046051))))))

(declare-fun b!3031888 () Bool)

(declare-fun e!1901473 () Bool)

(assert (=> b!3031888 (= e!1901473 call!206621)))

(declare-fun b!3031889 () Bool)

(assert (=> b!3031889 (= e!1901471 e!1901473)))

(declare-fun res!1247436 () Bool)

(assert (=> b!3031889 (=> (not res!1247436) (not e!1901473))))

(assert (=> b!3031889 (= res!1247436 call!206622)))

(declare-fun bm!206615 () Bool)

(assert (=> bm!206615 (= call!206620 (validRegex!4160 (ite c!501046 (reg!9756 lt!1046051) (ite c!501045 (regOne!19367 lt!1046051) (regTwo!19366 lt!1046051)))))))

(declare-fun d!851251 () Bool)

(declare-fun res!1247435 () Bool)

(assert (=> d!851251 (=> res!1247435 e!1901468)))

(assert (=> d!851251 (= res!1247435 ((_ is ElementMatch!9427) lt!1046051))))

(assert (=> d!851251 (= (validRegex!4160 lt!1046051) e!1901468)))

(assert (= (and d!851251 (not res!1247435)) b!3031884))

(assert (= (and b!3031884 c!501046) b!3031887))

(assert (= (and b!3031884 (not c!501046)) b!3031883))

(assert (= (and b!3031887 res!1247433) b!3031886))

(assert (= (and b!3031883 c!501045) b!3031885))

(assert (= (and b!3031883 (not c!501045)) b!3031882))

(assert (= (and b!3031885 res!1247434) b!3031881))

(assert (= (and b!3031882 (not res!1247432)) b!3031889))

(assert (= (and b!3031889 res!1247436) b!3031888))

(assert (= (or b!3031885 b!3031888) bm!206616))

(assert (= (or b!3031881 b!3031889) bm!206617))

(assert (= (or b!3031886 bm!206616) bm!206615))

(declare-fun m!3368305 () Bool)

(assert (=> b!3031887 m!3368305))

(declare-fun m!3368307 () Bool)

(assert (=> bm!206617 m!3368307))

(declare-fun m!3368309 () Bool)

(assert (=> bm!206615 m!3368309))

(assert (=> d!851115 d!851251))

(assert (=> d!851115 d!851061))

(declare-fun d!851253 () Bool)

(assert (=> d!851253 (= (isEmptyExpr!502 (ite c!500873 lt!1046054 lt!1046053)) ((_ is EmptyExpr!9427) (ite c!500873 lt!1046054 lt!1046053)))))

(assert (=> bm!206486 d!851253))

(declare-fun b!3031890 () Bool)

(declare-fun e!1901475 () Bool)

(declare-fun tp!960686 () Bool)

(assert (=> b!3031890 (= e!1901475 (and tp_is_empty!16417 tp!960686))))

(assert (=> b!3031407 (= tp!960670 e!1901475)))

(assert (= (and b!3031407 ((_ is Cons!35168) (t!234357 (t!234357 s!11993)))) b!3031890))

(declare-fun b!3031894 () Bool)

(declare-fun e!1901476 () Bool)

(declare-fun tp!960688 () Bool)

(declare-fun tp!960687 () Bool)

(assert (=> b!3031894 (= e!1901476 (and tp!960688 tp!960687))))

(declare-fun b!3031893 () Bool)

(declare-fun tp!960691 () Bool)

(assert (=> b!3031893 (= e!1901476 tp!960691)))

(declare-fun b!3031891 () Bool)

(assert (=> b!3031891 (= e!1901476 tp_is_empty!16417)))

(declare-fun b!3031892 () Bool)

(declare-fun tp!960689 () Bool)

(declare-fun tp!960690 () Bool)

(assert (=> b!3031892 (= e!1901476 (and tp!960689 tp!960690))))

(assert (=> b!3031411 (= tp!960672 e!1901476)))

(assert (= (and b!3031411 ((_ is ElementMatch!9427) (regOne!19367 (regOne!19367 r!17423)))) b!3031891))

(assert (= (and b!3031411 ((_ is Concat!14748) (regOne!19367 (regOne!19367 r!17423)))) b!3031892))

(assert (= (and b!3031411 ((_ is Star!9427) (regOne!19367 (regOne!19367 r!17423)))) b!3031893))

(assert (= (and b!3031411 ((_ is Union!9427) (regOne!19367 (regOne!19367 r!17423)))) b!3031894))

(declare-fun b!3031898 () Bool)

(declare-fun e!1901477 () Bool)

(declare-fun tp!960693 () Bool)

(declare-fun tp!960692 () Bool)

(assert (=> b!3031898 (= e!1901477 (and tp!960693 tp!960692))))

(declare-fun b!3031897 () Bool)

(declare-fun tp!960696 () Bool)

(assert (=> b!3031897 (= e!1901477 tp!960696)))

(declare-fun b!3031895 () Bool)

(assert (=> b!3031895 (= e!1901477 tp_is_empty!16417)))

(declare-fun b!3031896 () Bool)

(declare-fun tp!960694 () Bool)

(declare-fun tp!960695 () Bool)

(assert (=> b!3031896 (= e!1901477 (and tp!960694 tp!960695))))

(assert (=> b!3031411 (= tp!960671 e!1901477)))

(assert (= (and b!3031411 ((_ is ElementMatch!9427) (regTwo!19367 (regOne!19367 r!17423)))) b!3031895))

(assert (= (and b!3031411 ((_ is Concat!14748) (regTwo!19367 (regOne!19367 r!17423)))) b!3031896))

(assert (= (and b!3031411 ((_ is Star!9427) (regTwo!19367 (regOne!19367 r!17423)))) b!3031897))

(assert (= (and b!3031411 ((_ is Union!9427) (regTwo!19367 (regOne!19367 r!17423)))) b!3031898))

(declare-fun b!3031902 () Bool)

(declare-fun e!1901478 () Bool)

(declare-fun tp!960698 () Bool)

(declare-fun tp!960697 () Bool)

(assert (=> b!3031902 (= e!1901478 (and tp!960698 tp!960697))))

(declare-fun b!3031901 () Bool)

(declare-fun tp!960701 () Bool)

(assert (=> b!3031901 (= e!1901478 tp!960701)))

(declare-fun b!3031899 () Bool)

(assert (=> b!3031899 (= e!1901478 tp_is_empty!16417)))

(declare-fun b!3031900 () Bool)

(declare-fun tp!960699 () Bool)

(declare-fun tp!960700 () Bool)

(assert (=> b!3031900 (= e!1901478 (and tp!960699 tp!960700))))

(assert (=> b!3031410 (= tp!960675 e!1901478)))

(assert (= (and b!3031410 ((_ is ElementMatch!9427) (reg!9756 (regOne!19367 r!17423)))) b!3031899))

(assert (= (and b!3031410 ((_ is Concat!14748) (reg!9756 (regOne!19367 r!17423)))) b!3031900))

(assert (= (and b!3031410 ((_ is Star!9427) (reg!9756 (regOne!19367 r!17423)))) b!3031901))

(assert (= (and b!3031410 ((_ is Union!9427) (reg!9756 (regOne!19367 r!17423)))) b!3031902))

(declare-fun b!3031906 () Bool)

(declare-fun e!1901479 () Bool)

(declare-fun tp!960703 () Bool)

(declare-fun tp!960702 () Bool)

(assert (=> b!3031906 (= e!1901479 (and tp!960703 tp!960702))))

(declare-fun b!3031905 () Bool)

(declare-fun tp!960706 () Bool)

(assert (=> b!3031905 (= e!1901479 tp!960706)))

(declare-fun b!3031903 () Bool)

(assert (=> b!3031903 (= e!1901479 tp_is_empty!16417)))

(declare-fun b!3031904 () Bool)

(declare-fun tp!960704 () Bool)

(declare-fun tp!960705 () Bool)

(assert (=> b!3031904 (= e!1901479 (and tp!960704 tp!960705))))

(assert (=> b!3031415 (= tp!960677 e!1901479)))

(assert (= (and b!3031415 ((_ is ElementMatch!9427) (regOne!19367 (regTwo!19367 r!17423)))) b!3031903))

(assert (= (and b!3031415 ((_ is Concat!14748) (regOne!19367 (regTwo!19367 r!17423)))) b!3031904))

(assert (= (and b!3031415 ((_ is Star!9427) (regOne!19367 (regTwo!19367 r!17423)))) b!3031905))

(assert (= (and b!3031415 ((_ is Union!9427) (regOne!19367 (regTwo!19367 r!17423)))) b!3031906))

(declare-fun b!3031910 () Bool)

(declare-fun e!1901480 () Bool)

(declare-fun tp!960708 () Bool)

(declare-fun tp!960707 () Bool)

(assert (=> b!3031910 (= e!1901480 (and tp!960708 tp!960707))))

(declare-fun b!3031909 () Bool)

(declare-fun tp!960711 () Bool)

(assert (=> b!3031909 (= e!1901480 tp!960711)))

(declare-fun b!3031907 () Bool)

(assert (=> b!3031907 (= e!1901480 tp_is_empty!16417)))

(declare-fun b!3031908 () Bool)

(declare-fun tp!960709 () Bool)

(declare-fun tp!960710 () Bool)

(assert (=> b!3031908 (= e!1901480 (and tp!960709 tp!960710))))

(assert (=> b!3031415 (= tp!960676 e!1901480)))

(assert (= (and b!3031415 ((_ is ElementMatch!9427) (regTwo!19367 (regTwo!19367 r!17423)))) b!3031907))

(assert (= (and b!3031415 ((_ is Concat!14748) (regTwo!19367 (regTwo!19367 r!17423)))) b!3031908))

(assert (= (and b!3031415 ((_ is Star!9427) (regTwo!19367 (regTwo!19367 r!17423)))) b!3031909))

(assert (= (and b!3031415 ((_ is Union!9427) (regTwo!19367 (regTwo!19367 r!17423)))) b!3031910))

(declare-fun b!3031914 () Bool)

(declare-fun e!1901481 () Bool)

(declare-fun tp!960713 () Bool)

(declare-fun tp!960712 () Bool)

(assert (=> b!3031914 (= e!1901481 (and tp!960713 tp!960712))))

(declare-fun b!3031913 () Bool)

(declare-fun tp!960716 () Bool)

(assert (=> b!3031913 (= e!1901481 tp!960716)))

(declare-fun b!3031911 () Bool)

(assert (=> b!3031911 (= e!1901481 tp_is_empty!16417)))

(declare-fun b!3031912 () Bool)

(declare-fun tp!960714 () Bool)

(declare-fun tp!960715 () Bool)

(assert (=> b!3031912 (= e!1901481 (and tp!960714 tp!960715))))

(assert (=> b!3031397 (= tp!960662 e!1901481)))

(assert (= (and b!3031397 ((_ is ElementMatch!9427) (reg!9756 (regOne!19366 r!17423)))) b!3031911))

(assert (= (and b!3031397 ((_ is Concat!14748) (reg!9756 (regOne!19366 r!17423)))) b!3031912))

(assert (= (and b!3031397 ((_ is Star!9427) (reg!9756 (regOne!19366 r!17423)))) b!3031913))

(assert (= (and b!3031397 ((_ is Union!9427) (reg!9756 (regOne!19366 r!17423)))) b!3031914))

(declare-fun b!3031918 () Bool)

(declare-fun e!1901482 () Bool)

(declare-fun tp!960718 () Bool)

(declare-fun tp!960717 () Bool)

(assert (=> b!3031918 (= e!1901482 (and tp!960718 tp!960717))))

(declare-fun b!3031917 () Bool)

(declare-fun tp!960721 () Bool)

(assert (=> b!3031917 (= e!1901482 tp!960721)))

(declare-fun b!3031915 () Bool)

(assert (=> b!3031915 (= e!1901482 tp_is_empty!16417)))

(declare-fun b!3031916 () Bool)

(declare-fun tp!960719 () Bool)

(declare-fun tp!960720 () Bool)

(assert (=> b!3031916 (= e!1901482 (and tp!960719 tp!960720))))

(assert (=> b!3031401 (= tp!960667 e!1901482)))

(assert (= (and b!3031401 ((_ is ElementMatch!9427) (reg!9756 (regTwo!19366 r!17423)))) b!3031915))

(assert (= (and b!3031401 ((_ is Concat!14748) (reg!9756 (regTwo!19366 r!17423)))) b!3031916))

(assert (= (and b!3031401 ((_ is Star!9427) (reg!9756 (regTwo!19366 r!17423)))) b!3031917))

(assert (= (and b!3031401 ((_ is Union!9427) (reg!9756 (regTwo!19366 r!17423)))) b!3031918))

(declare-fun b!3031922 () Bool)

(declare-fun e!1901483 () Bool)

(declare-fun tp!960723 () Bool)

(declare-fun tp!960722 () Bool)

(assert (=> b!3031922 (= e!1901483 (and tp!960723 tp!960722))))

(declare-fun b!3031921 () Bool)

(declare-fun tp!960726 () Bool)

(assert (=> b!3031921 (= e!1901483 tp!960726)))

(declare-fun b!3031919 () Bool)

(assert (=> b!3031919 (= e!1901483 tp_is_empty!16417)))

(declare-fun b!3031920 () Bool)

(declare-fun tp!960724 () Bool)

(declare-fun tp!960725 () Bool)

(assert (=> b!3031920 (= e!1901483 (and tp!960724 tp!960725))))

(assert (=> b!3031396 (= tp!960660 e!1901483)))

(assert (= (and b!3031396 ((_ is ElementMatch!9427) (regOne!19366 (regOne!19366 r!17423)))) b!3031919))

(assert (= (and b!3031396 ((_ is Concat!14748) (regOne!19366 (regOne!19366 r!17423)))) b!3031920))

(assert (= (and b!3031396 ((_ is Star!9427) (regOne!19366 (regOne!19366 r!17423)))) b!3031921))

(assert (= (and b!3031396 ((_ is Union!9427) (regOne!19366 (regOne!19366 r!17423)))) b!3031922))

(declare-fun b!3031926 () Bool)

(declare-fun e!1901484 () Bool)

(declare-fun tp!960728 () Bool)

(declare-fun tp!960727 () Bool)

(assert (=> b!3031926 (= e!1901484 (and tp!960728 tp!960727))))

(declare-fun b!3031925 () Bool)

(declare-fun tp!960731 () Bool)

(assert (=> b!3031925 (= e!1901484 tp!960731)))

(declare-fun b!3031923 () Bool)

(assert (=> b!3031923 (= e!1901484 tp_is_empty!16417)))

(declare-fun b!3031924 () Bool)

(declare-fun tp!960729 () Bool)

(declare-fun tp!960730 () Bool)

(assert (=> b!3031924 (= e!1901484 (and tp!960729 tp!960730))))

(assert (=> b!3031396 (= tp!960661 e!1901484)))

(assert (= (and b!3031396 ((_ is ElementMatch!9427) (regTwo!19366 (regOne!19366 r!17423)))) b!3031923))

(assert (= (and b!3031396 ((_ is Concat!14748) (regTwo!19366 (regOne!19366 r!17423)))) b!3031924))

(assert (= (and b!3031396 ((_ is Star!9427) (regTwo!19366 (regOne!19366 r!17423)))) b!3031925))

(assert (= (and b!3031396 ((_ is Union!9427) (regTwo!19366 (regOne!19366 r!17423)))) b!3031926))

(declare-fun b!3031930 () Bool)

(declare-fun e!1901485 () Bool)

(declare-fun tp!960733 () Bool)

(declare-fun tp!960732 () Bool)

(assert (=> b!3031930 (= e!1901485 (and tp!960733 tp!960732))))

(declare-fun b!3031929 () Bool)

(declare-fun tp!960736 () Bool)

(assert (=> b!3031929 (= e!1901485 tp!960736)))

(declare-fun b!3031927 () Bool)

(assert (=> b!3031927 (= e!1901485 tp_is_empty!16417)))

(declare-fun b!3031928 () Bool)

(declare-fun tp!960734 () Bool)

(declare-fun tp!960735 () Bool)

(assert (=> b!3031928 (= e!1901485 (and tp!960734 tp!960735))))

(assert (=> b!3031400 (= tp!960665 e!1901485)))

(assert (= (and b!3031400 ((_ is ElementMatch!9427) (regOne!19366 (regTwo!19366 r!17423)))) b!3031927))

(assert (= (and b!3031400 ((_ is Concat!14748) (regOne!19366 (regTwo!19366 r!17423)))) b!3031928))

(assert (= (and b!3031400 ((_ is Star!9427) (regOne!19366 (regTwo!19366 r!17423)))) b!3031929))

(assert (= (and b!3031400 ((_ is Union!9427) (regOne!19366 (regTwo!19366 r!17423)))) b!3031930))

(declare-fun b!3031934 () Bool)

(declare-fun e!1901486 () Bool)

(declare-fun tp!960738 () Bool)

(declare-fun tp!960737 () Bool)

(assert (=> b!3031934 (= e!1901486 (and tp!960738 tp!960737))))

(declare-fun b!3031933 () Bool)

(declare-fun tp!960741 () Bool)

(assert (=> b!3031933 (= e!1901486 tp!960741)))

(declare-fun b!3031931 () Bool)

(assert (=> b!3031931 (= e!1901486 tp_is_empty!16417)))

(declare-fun b!3031932 () Bool)

(declare-fun tp!960739 () Bool)

(declare-fun tp!960740 () Bool)

(assert (=> b!3031932 (= e!1901486 (and tp!960739 tp!960740))))

(assert (=> b!3031400 (= tp!960666 e!1901486)))

(assert (= (and b!3031400 ((_ is ElementMatch!9427) (regTwo!19366 (regTwo!19366 r!17423)))) b!3031931))

(assert (= (and b!3031400 ((_ is Concat!14748) (regTwo!19366 (regTwo!19366 r!17423)))) b!3031932))

(assert (= (and b!3031400 ((_ is Star!9427) (regTwo!19366 (regTwo!19366 r!17423)))) b!3031933))

(assert (= (and b!3031400 ((_ is Union!9427) (regTwo!19366 (regTwo!19366 r!17423)))) b!3031934))

(declare-fun b!3031938 () Bool)

(declare-fun e!1901487 () Bool)

(declare-fun tp!960743 () Bool)

(declare-fun tp!960742 () Bool)

(assert (=> b!3031938 (= e!1901487 (and tp!960743 tp!960742))))

(declare-fun b!3031937 () Bool)

(declare-fun tp!960746 () Bool)

(assert (=> b!3031937 (= e!1901487 tp!960746)))

(declare-fun b!3031935 () Bool)

(assert (=> b!3031935 (= e!1901487 tp_is_empty!16417)))

(declare-fun b!3031936 () Bool)

(declare-fun tp!960744 () Bool)

(declare-fun tp!960745 () Bool)

(assert (=> b!3031936 (= e!1901487 (and tp!960744 tp!960745))))

(assert (=> b!3031414 (= tp!960680 e!1901487)))

(assert (= (and b!3031414 ((_ is ElementMatch!9427) (reg!9756 (regTwo!19367 r!17423)))) b!3031935))

(assert (= (and b!3031414 ((_ is Concat!14748) (reg!9756 (regTwo!19367 r!17423)))) b!3031936))

(assert (= (and b!3031414 ((_ is Star!9427) (reg!9756 (regTwo!19367 r!17423)))) b!3031937))

(assert (= (and b!3031414 ((_ is Union!9427) (reg!9756 (regTwo!19367 r!17423)))) b!3031938))

(declare-fun b!3031942 () Bool)

(declare-fun e!1901488 () Bool)

(declare-fun tp!960748 () Bool)

(declare-fun tp!960747 () Bool)

(assert (=> b!3031942 (= e!1901488 (and tp!960748 tp!960747))))

(declare-fun b!3031941 () Bool)

(declare-fun tp!960751 () Bool)

(assert (=> b!3031941 (= e!1901488 tp!960751)))

(declare-fun b!3031939 () Bool)

(assert (=> b!3031939 (= e!1901488 tp_is_empty!16417)))

(declare-fun b!3031940 () Bool)

(declare-fun tp!960749 () Bool)

(declare-fun tp!960750 () Bool)

(assert (=> b!3031940 (= e!1901488 (and tp!960749 tp!960750))))

(assert (=> b!3031419 (= tp!960682 e!1901488)))

(assert (= (and b!3031419 ((_ is ElementMatch!9427) (regOne!19367 (reg!9756 r!17423)))) b!3031939))

(assert (= (and b!3031419 ((_ is Concat!14748) (regOne!19367 (reg!9756 r!17423)))) b!3031940))

(assert (= (and b!3031419 ((_ is Star!9427) (regOne!19367 (reg!9756 r!17423)))) b!3031941))

(assert (= (and b!3031419 ((_ is Union!9427) (regOne!19367 (reg!9756 r!17423)))) b!3031942))

(declare-fun b!3031946 () Bool)

(declare-fun e!1901489 () Bool)

(declare-fun tp!960753 () Bool)

(declare-fun tp!960752 () Bool)

(assert (=> b!3031946 (= e!1901489 (and tp!960753 tp!960752))))

(declare-fun b!3031945 () Bool)

(declare-fun tp!960756 () Bool)

(assert (=> b!3031945 (= e!1901489 tp!960756)))

(declare-fun b!3031943 () Bool)

(assert (=> b!3031943 (= e!1901489 tp_is_empty!16417)))

(declare-fun b!3031944 () Bool)

(declare-fun tp!960754 () Bool)

(declare-fun tp!960755 () Bool)

(assert (=> b!3031944 (= e!1901489 (and tp!960754 tp!960755))))

(assert (=> b!3031419 (= tp!960681 e!1901489)))

(assert (= (and b!3031419 ((_ is ElementMatch!9427) (regTwo!19367 (reg!9756 r!17423)))) b!3031943))

(assert (= (and b!3031419 ((_ is Concat!14748) (regTwo!19367 (reg!9756 r!17423)))) b!3031944))

(assert (= (and b!3031419 ((_ is Star!9427) (regTwo!19367 (reg!9756 r!17423)))) b!3031945))

(assert (= (and b!3031419 ((_ is Union!9427) (regTwo!19367 (reg!9756 r!17423)))) b!3031946))

(declare-fun b!3031950 () Bool)

(declare-fun e!1901490 () Bool)

(declare-fun tp!960758 () Bool)

(declare-fun tp!960757 () Bool)

(assert (=> b!3031950 (= e!1901490 (and tp!960758 tp!960757))))

(declare-fun b!3031949 () Bool)

(declare-fun tp!960761 () Bool)

(assert (=> b!3031949 (= e!1901490 tp!960761)))

(declare-fun b!3031947 () Bool)

(assert (=> b!3031947 (= e!1901490 tp_is_empty!16417)))

(declare-fun b!3031948 () Bool)

(declare-fun tp!960759 () Bool)

(declare-fun tp!960760 () Bool)

(assert (=> b!3031948 (= e!1901490 (and tp!960759 tp!960760))))

(assert (=> b!3031418 (= tp!960685 e!1901490)))

(assert (= (and b!3031418 ((_ is ElementMatch!9427) (reg!9756 (reg!9756 r!17423)))) b!3031947))

(assert (= (and b!3031418 ((_ is Concat!14748) (reg!9756 (reg!9756 r!17423)))) b!3031948))

(assert (= (and b!3031418 ((_ is Star!9427) (reg!9756 (reg!9756 r!17423)))) b!3031949))

(assert (= (and b!3031418 ((_ is Union!9427) (reg!9756 (reg!9756 r!17423)))) b!3031950))

(declare-fun b!3031954 () Bool)

(declare-fun e!1901491 () Bool)

(declare-fun tp!960763 () Bool)

(declare-fun tp!960762 () Bool)

(assert (=> b!3031954 (= e!1901491 (and tp!960763 tp!960762))))

(declare-fun b!3031953 () Bool)

(declare-fun tp!960766 () Bool)

(assert (=> b!3031953 (= e!1901491 tp!960766)))

(declare-fun b!3031951 () Bool)

(assert (=> b!3031951 (= e!1901491 tp_is_empty!16417)))

(declare-fun b!3031952 () Bool)

(declare-fun tp!960764 () Bool)

(declare-fun tp!960765 () Bool)

(assert (=> b!3031952 (= e!1901491 (and tp!960764 tp!960765))))

(assert (=> b!3031409 (= tp!960673 e!1901491)))

(assert (= (and b!3031409 ((_ is ElementMatch!9427) (regOne!19366 (regOne!19367 r!17423)))) b!3031951))

(assert (= (and b!3031409 ((_ is Concat!14748) (regOne!19366 (regOne!19367 r!17423)))) b!3031952))

(assert (= (and b!3031409 ((_ is Star!9427) (regOne!19366 (regOne!19367 r!17423)))) b!3031953))

(assert (= (and b!3031409 ((_ is Union!9427) (regOne!19366 (regOne!19367 r!17423)))) b!3031954))

(declare-fun b!3031958 () Bool)

(declare-fun e!1901492 () Bool)

(declare-fun tp!960768 () Bool)

(declare-fun tp!960767 () Bool)

(assert (=> b!3031958 (= e!1901492 (and tp!960768 tp!960767))))

(declare-fun b!3031957 () Bool)

(declare-fun tp!960771 () Bool)

(assert (=> b!3031957 (= e!1901492 tp!960771)))

(declare-fun b!3031955 () Bool)

(assert (=> b!3031955 (= e!1901492 tp_is_empty!16417)))

(declare-fun b!3031956 () Bool)

(declare-fun tp!960769 () Bool)

(declare-fun tp!960770 () Bool)

(assert (=> b!3031956 (= e!1901492 (and tp!960769 tp!960770))))

(assert (=> b!3031409 (= tp!960674 e!1901492)))

(assert (= (and b!3031409 ((_ is ElementMatch!9427) (regTwo!19366 (regOne!19367 r!17423)))) b!3031955))

(assert (= (and b!3031409 ((_ is Concat!14748) (regTwo!19366 (regOne!19367 r!17423)))) b!3031956))

(assert (= (and b!3031409 ((_ is Star!9427) (regTwo!19366 (regOne!19367 r!17423)))) b!3031957))

(assert (= (and b!3031409 ((_ is Union!9427) (regTwo!19366 (regOne!19367 r!17423)))) b!3031958))

(declare-fun b!3031962 () Bool)

(declare-fun e!1901493 () Bool)

(declare-fun tp!960773 () Bool)

(declare-fun tp!960772 () Bool)

(assert (=> b!3031962 (= e!1901493 (and tp!960773 tp!960772))))

(declare-fun b!3031961 () Bool)

(declare-fun tp!960776 () Bool)

(assert (=> b!3031961 (= e!1901493 tp!960776)))

(declare-fun b!3031959 () Bool)

(assert (=> b!3031959 (= e!1901493 tp_is_empty!16417)))

(declare-fun b!3031960 () Bool)

(declare-fun tp!960774 () Bool)

(declare-fun tp!960775 () Bool)

(assert (=> b!3031960 (= e!1901493 (and tp!960774 tp!960775))))

(assert (=> b!3031398 (= tp!960659 e!1901493)))

(assert (= (and b!3031398 ((_ is ElementMatch!9427) (regOne!19367 (regOne!19366 r!17423)))) b!3031959))

(assert (= (and b!3031398 ((_ is Concat!14748) (regOne!19367 (regOne!19366 r!17423)))) b!3031960))

(assert (= (and b!3031398 ((_ is Star!9427) (regOne!19367 (regOne!19366 r!17423)))) b!3031961))

(assert (= (and b!3031398 ((_ is Union!9427) (regOne!19367 (regOne!19366 r!17423)))) b!3031962))

(declare-fun b!3031966 () Bool)

(declare-fun e!1901494 () Bool)

(declare-fun tp!960778 () Bool)

(declare-fun tp!960777 () Bool)

(assert (=> b!3031966 (= e!1901494 (and tp!960778 tp!960777))))

(declare-fun b!3031965 () Bool)

(declare-fun tp!960781 () Bool)

(assert (=> b!3031965 (= e!1901494 tp!960781)))

(declare-fun b!3031963 () Bool)

(assert (=> b!3031963 (= e!1901494 tp_is_empty!16417)))

(declare-fun b!3031964 () Bool)

(declare-fun tp!960779 () Bool)

(declare-fun tp!960780 () Bool)

(assert (=> b!3031964 (= e!1901494 (and tp!960779 tp!960780))))

(assert (=> b!3031398 (= tp!960658 e!1901494)))

(assert (= (and b!3031398 ((_ is ElementMatch!9427) (regTwo!19367 (regOne!19366 r!17423)))) b!3031963))

(assert (= (and b!3031398 ((_ is Concat!14748) (regTwo!19367 (regOne!19366 r!17423)))) b!3031964))

(assert (= (and b!3031398 ((_ is Star!9427) (regTwo!19367 (regOne!19366 r!17423)))) b!3031965))

(assert (= (and b!3031398 ((_ is Union!9427) (regTwo!19367 (regOne!19366 r!17423)))) b!3031966))

(declare-fun b!3031970 () Bool)

(declare-fun e!1901495 () Bool)

(declare-fun tp!960783 () Bool)

(declare-fun tp!960782 () Bool)

(assert (=> b!3031970 (= e!1901495 (and tp!960783 tp!960782))))

(declare-fun b!3031969 () Bool)

(declare-fun tp!960786 () Bool)

(assert (=> b!3031969 (= e!1901495 tp!960786)))

(declare-fun b!3031967 () Bool)

(assert (=> b!3031967 (= e!1901495 tp_is_empty!16417)))

(declare-fun b!3031968 () Bool)

(declare-fun tp!960784 () Bool)

(declare-fun tp!960785 () Bool)

(assert (=> b!3031968 (= e!1901495 (and tp!960784 tp!960785))))

(assert (=> b!3031413 (= tp!960678 e!1901495)))

(assert (= (and b!3031413 ((_ is ElementMatch!9427) (regOne!19366 (regTwo!19367 r!17423)))) b!3031967))

(assert (= (and b!3031413 ((_ is Concat!14748) (regOne!19366 (regTwo!19367 r!17423)))) b!3031968))

(assert (= (and b!3031413 ((_ is Star!9427) (regOne!19366 (regTwo!19367 r!17423)))) b!3031969))

(assert (= (and b!3031413 ((_ is Union!9427) (regOne!19366 (regTwo!19367 r!17423)))) b!3031970))

(declare-fun b!3031974 () Bool)

(declare-fun e!1901496 () Bool)

(declare-fun tp!960788 () Bool)

(declare-fun tp!960787 () Bool)

(assert (=> b!3031974 (= e!1901496 (and tp!960788 tp!960787))))

(declare-fun b!3031973 () Bool)

(declare-fun tp!960791 () Bool)

(assert (=> b!3031973 (= e!1901496 tp!960791)))

(declare-fun b!3031971 () Bool)

(assert (=> b!3031971 (= e!1901496 tp_is_empty!16417)))

(declare-fun b!3031972 () Bool)

(declare-fun tp!960789 () Bool)

(declare-fun tp!960790 () Bool)

(assert (=> b!3031972 (= e!1901496 (and tp!960789 tp!960790))))

(assert (=> b!3031413 (= tp!960679 e!1901496)))

(assert (= (and b!3031413 ((_ is ElementMatch!9427) (regTwo!19366 (regTwo!19367 r!17423)))) b!3031971))

(assert (= (and b!3031413 ((_ is Concat!14748) (regTwo!19366 (regTwo!19367 r!17423)))) b!3031972))

(assert (= (and b!3031413 ((_ is Star!9427) (regTwo!19366 (regTwo!19367 r!17423)))) b!3031973))

(assert (= (and b!3031413 ((_ is Union!9427) (regTwo!19366 (regTwo!19367 r!17423)))) b!3031974))

(declare-fun b!3031978 () Bool)

(declare-fun e!1901497 () Bool)

(declare-fun tp!960793 () Bool)

(declare-fun tp!960792 () Bool)

(assert (=> b!3031978 (= e!1901497 (and tp!960793 tp!960792))))

(declare-fun b!3031977 () Bool)

(declare-fun tp!960796 () Bool)

(assert (=> b!3031977 (= e!1901497 tp!960796)))

(declare-fun b!3031975 () Bool)

(assert (=> b!3031975 (= e!1901497 tp_is_empty!16417)))

(declare-fun b!3031976 () Bool)

(declare-fun tp!960794 () Bool)

(declare-fun tp!960795 () Bool)

(assert (=> b!3031976 (= e!1901497 (and tp!960794 tp!960795))))

(assert (=> b!3031402 (= tp!960664 e!1901497)))

(assert (= (and b!3031402 ((_ is ElementMatch!9427) (regOne!19367 (regTwo!19366 r!17423)))) b!3031975))

(assert (= (and b!3031402 ((_ is Concat!14748) (regOne!19367 (regTwo!19366 r!17423)))) b!3031976))

(assert (= (and b!3031402 ((_ is Star!9427) (regOne!19367 (regTwo!19366 r!17423)))) b!3031977))

(assert (= (and b!3031402 ((_ is Union!9427) (regOne!19367 (regTwo!19366 r!17423)))) b!3031978))

(declare-fun b!3031982 () Bool)

(declare-fun e!1901498 () Bool)

(declare-fun tp!960798 () Bool)

(declare-fun tp!960797 () Bool)

(assert (=> b!3031982 (= e!1901498 (and tp!960798 tp!960797))))

(declare-fun b!3031981 () Bool)

(declare-fun tp!960801 () Bool)

(assert (=> b!3031981 (= e!1901498 tp!960801)))

(declare-fun b!3031979 () Bool)

(assert (=> b!3031979 (= e!1901498 tp_is_empty!16417)))

(declare-fun b!3031980 () Bool)

(declare-fun tp!960799 () Bool)

(declare-fun tp!960800 () Bool)

(assert (=> b!3031980 (= e!1901498 (and tp!960799 tp!960800))))

(assert (=> b!3031402 (= tp!960663 e!1901498)))

(assert (= (and b!3031402 ((_ is ElementMatch!9427) (regTwo!19367 (regTwo!19366 r!17423)))) b!3031979))

(assert (= (and b!3031402 ((_ is Concat!14748) (regTwo!19367 (regTwo!19366 r!17423)))) b!3031980))

(assert (= (and b!3031402 ((_ is Star!9427) (regTwo!19367 (regTwo!19366 r!17423)))) b!3031981))

(assert (= (and b!3031402 ((_ is Union!9427) (regTwo!19367 (regTwo!19366 r!17423)))) b!3031982))

(declare-fun b!3031986 () Bool)

(declare-fun e!1901499 () Bool)

(declare-fun tp!960803 () Bool)

(declare-fun tp!960802 () Bool)

(assert (=> b!3031986 (= e!1901499 (and tp!960803 tp!960802))))

(declare-fun b!3031985 () Bool)

(declare-fun tp!960806 () Bool)

(assert (=> b!3031985 (= e!1901499 tp!960806)))

(declare-fun b!3031983 () Bool)

(assert (=> b!3031983 (= e!1901499 tp_is_empty!16417)))

(declare-fun b!3031984 () Bool)

(declare-fun tp!960804 () Bool)

(declare-fun tp!960805 () Bool)

(assert (=> b!3031984 (= e!1901499 (and tp!960804 tp!960805))))

(assert (=> b!3031417 (= tp!960683 e!1901499)))

(assert (= (and b!3031417 ((_ is ElementMatch!9427) (regOne!19366 (reg!9756 r!17423)))) b!3031983))

(assert (= (and b!3031417 ((_ is Concat!14748) (regOne!19366 (reg!9756 r!17423)))) b!3031984))

(assert (= (and b!3031417 ((_ is Star!9427) (regOne!19366 (reg!9756 r!17423)))) b!3031985))

(assert (= (and b!3031417 ((_ is Union!9427) (regOne!19366 (reg!9756 r!17423)))) b!3031986))

(declare-fun b!3031990 () Bool)

(declare-fun e!1901500 () Bool)

(declare-fun tp!960808 () Bool)

(declare-fun tp!960807 () Bool)

(assert (=> b!3031990 (= e!1901500 (and tp!960808 tp!960807))))

(declare-fun b!3031989 () Bool)

(declare-fun tp!960811 () Bool)

(assert (=> b!3031989 (= e!1901500 tp!960811)))

(declare-fun b!3031987 () Bool)

(assert (=> b!3031987 (= e!1901500 tp_is_empty!16417)))

(declare-fun b!3031988 () Bool)

(declare-fun tp!960809 () Bool)

(declare-fun tp!960810 () Bool)

(assert (=> b!3031988 (= e!1901500 (and tp!960809 tp!960810))))

(assert (=> b!3031417 (= tp!960684 e!1901500)))

(assert (= (and b!3031417 ((_ is ElementMatch!9427) (regTwo!19366 (reg!9756 r!17423)))) b!3031987))

(assert (= (and b!3031417 ((_ is Concat!14748) (regTwo!19366 (reg!9756 r!17423)))) b!3031988))

(assert (= (and b!3031417 ((_ is Star!9427) (regTwo!19366 (reg!9756 r!17423)))) b!3031989))

(assert (= (and b!3031417 ((_ is Union!9427) (regTwo!19366 (reg!9756 r!17423)))) b!3031990))

(check-sat (not b!3031527) (not b!3031902) (not b!3031896) (not d!851135) (not b!3031980) (not b!3031600) (not b!3031628) (not d!851199) (not bm!206617) (not bm!206582) (not bm!206563) (not d!851155) (not bm!206496) (not b!3031893) (not b!3031805) (not b!3031840) (not b!3031954) (not bm!206543) (not b!3031918) (not b!3031771) (not bm!206497) (not d!851149) (not d!851181) (not b!3031455) (not bm!206541) (not b!3031718) (not b!3031960) (not b!3031699) (not bm!206570) (not b!3031824) (not b!3031879) (not b!3031990) (not bm!206513) (not b!3031901) (not b!3031513) (not b!3031945) (not b!3031942) (not b!3031946) (not b!3031595) (not b!3031937) (not b!3031898) (not b!3031982) (not b!3031924) (not d!851173) (not b!3031920) (not bm!206524) (not b!3031913) (not b!3031966) (not b!3031988) (not bm!206557) (not b!3031435) (not b!3031810) (not b!3031930) (not d!851243) (not bm!206574) (not b!3031449) (not b!3031727) (not b!3031809) (not d!851147) (not bm!206500) (not b!3031905) (not bm!206555) (not bm!206546) (not b!3031914) (not b!3031874) (not d!851237) (not b!3031904) (not d!851201) (not d!851177) (not bm!206569) (not bm!206583) (not bm!206560) (not d!851169) (not b!3031726) (not bm!206566) (not b!3031655) (not bm!206596) (not bm!206561) (not bm!206551) (not bm!206494) tp_is_empty!16417 (not d!851197) (not b!3031917) (not b!3031552) (not bm!206529) (not b!3031887) (not bm!206521) (not b!3031448) (not b!3031608) (not b!3031683) (not b!3031941) (not bm!206576) (not b!3031444) (not b!3031970) (not b!3031599) (not b!3031748) (not bm!206606) (not b!3031457) (not d!851215) (not d!851247) (not bm!206532) (not b!3031921) (not b!3031609) (not bm!206512) (not b!3031842) (not b!3031860) (not b!3031836) (not b!3031978) (not b!3031906) (not b!3031678) (not b!3031985) (not bm!206554) (not d!851235) (not bm!206565) (not b!3031812) (not bm!206537) (not bm!206595) (not d!851203) (not bm!206601) (not d!851207) (not bm!206571) (not b!3031671) (not b!3031977) (not b!3031944) (not b!3031518) (not b!3031910) (not b!3031897) (not b!3031926) (not bm!206600) (not b!3031934) (not b!3031833) (not bm!206540) (not b!3031948) (not bm!206549) (not b!3031668) (not bm!206502) (not b!3031526) (not b!3031952) (not b!3031675) (not b!3031961) (not b!3031517) (not bm!206536) (not bm!206531) (not b!3031962) (not b!3031577) (not b!3031720) (not b!3031933) (not b!3031602) (not b!3031957) (not b!3031916) (not b!3031499) (not bm!206526) (not d!851239) (not b!3031483) (not b!3031949) (not bm!206603) (not b!3031908) (not b!3031843) (not b!3031890) (not b!3031669) (not b!3031929) (not bm!206522) (not bm!206544) (not d!851159) (not d!851229) (not b!3031818) (not b!3031717) (not d!851153) (not bm!206530) (not bm!206602) (not b!3031932) (not bm!206608) (not d!851161) (not b!3031940) (not b!3031426) (not b!3031925) (not bm!206503) (not b!3031974) (not bm!206564) (not d!851219) (not d!851143) (not b!3031819) (not bm!206578) (not b!3031834) (not bm!206614) (not bm!206613) (not b!3031713) (not b!3031969) (not bm!206581) (not b!3031538) (not bm!206607) (not b!3031586) (not b!3031964) (not b!3031816) (not b!3031950) (not b!3031664) (not b!3031938) (not d!851217) (not b!3031637) (not bm!206523) (not b!3031922) (not b!3031956) (not b!3031791) (not d!851157) (not bm!206594) (not b!3031869) (not bm!206533) (not b!3031953) (not bm!206588) (not bm!206587) (not bm!206590) (not b!3031458) (not b!3031900) (not d!851179) (not b!3031909) (not bm!206599) (not b!3031762) (not b!3031986) (not bm!206545) (not b!3031606) (not b!3031912) (not d!851211) (not b!3031972) (not b!3031894) (not b!3031614) (not bm!206516) (not b!3031780) (not b!3031677) (not b!3031965) (not b!3031958) (not d!851233) (not bm!206611) (not b!3031936) (not bm!206499) (not b!3031848) (not b!3031865) (not bm!206591) (not b!3031520) (not bm!206593) (not bm!206586) (not b!3031984) (not b!3031724) (not d!851137) (not bm!206552) (not b!3031646) (not bm!206615) (not d!851171) (not b!3031976) (not d!851209) (not b!3031981) (not bm!206538) (not b!3031563) (not bm!206575) (not d!851151) (not b!3031732) (not bm!206518) (not b!3031968) (not b!3031973) (not bm!206525) (not b!3031524) (not b!3031989) (not bm!206517) (not d!851213) (not bm!206577) (not b!3031451) (not b!3031892) (not d!851141) (not bm!206558) (not bm!206612) (not b!3031928))
(check-sat)
