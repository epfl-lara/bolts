; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!246668 () Bool)

(assert start!246668)

(declare-fun b!2536874 () Bool)

(declare-fun res!1069872 () Bool)

(declare-fun e!1604629 () Bool)

(assert (=> b!2536874 (=> (not res!1069872) (not e!1604629))))

(declare-datatypes ((C!15272 0))(
  ( (C!15273 (val!9288 Int)) )
))
(declare-datatypes ((List!29622 0))(
  ( (Nil!29522) (Cons!29522 (h!34942 C!15272) (t!211321 List!29622)) )
))
(declare-fun tl!4068 () List!29622)

(declare-datatypes ((Regex!7557 0))(
  ( (ElementMatch!7557 (c!405655 C!15272)) (Concat!12253 (regOne!15626 Regex!7557) (regTwo!15626 Regex!7557)) (EmptyExpr!7557) (Star!7557 (reg!7886 Regex!7557)) (EmptyLang!7557) (Union!7557 (regOne!15627 Regex!7557) (regTwo!15627 Regex!7557)) )
))
(declare-fun r!27340 () Regex!7557)

(declare-fun c!14016 () C!15272)

(declare-fun nullable!2474 (Regex!7557) Bool)

(declare-fun derivative!252 (Regex!7557 List!29622) Regex!7557)

(declare-fun derivativeStep!2126 (Regex!7557 C!15272) Regex!7557)

(assert (=> b!2536874 (= res!1069872 (nullable!2474 (derivative!252 (derivativeStep!2126 (regTwo!15627 r!27340) c!14016) tl!4068)))))

(declare-fun b!2536875 () Bool)

(declare-fun e!1604630 () Bool)

(declare-fun tp!810494 () Bool)

(declare-fun tp!810492 () Bool)

(assert (=> b!2536875 (= e!1604630 (and tp!810494 tp!810492))))

(declare-fun b!2536876 () Bool)

(declare-fun res!1069871 () Bool)

(assert (=> b!2536876 (=> (not res!1069871) (not e!1604629))))

(assert (=> b!2536876 (= res!1069871 (nullable!2474 (derivative!252 (derivativeStep!2126 r!27340 c!14016) tl!4068)))))

(declare-fun b!2536877 () Bool)

(declare-fun tp!810489 () Bool)

(declare-fun tp!810493 () Bool)

(assert (=> b!2536877 (= e!1604630 (and tp!810489 tp!810493))))

(declare-fun res!1069874 () Bool)

(assert (=> start!246668 (=> (not res!1069874) (not e!1604629))))

(declare-fun validRegex!3183 (Regex!7557) Bool)

(assert (=> start!246668 (= res!1069874 (validRegex!3183 r!27340))))

(assert (=> start!246668 e!1604629))

(assert (=> start!246668 e!1604630))

(declare-fun tp_is_empty!12969 () Bool)

(assert (=> start!246668 tp_is_empty!12969))

(declare-fun e!1604628 () Bool)

(assert (=> start!246668 e!1604628))

(declare-fun b!2536878 () Bool)

(declare-fun contains!5299 (List!29622 C!15272) Bool)

(declare-fun firstChars!90 (Regex!7557) List!29622)

(assert (=> b!2536878 (= e!1604629 (not (contains!5299 (firstChars!90 r!27340) c!14016)))))

(assert (=> b!2536878 (contains!5299 (firstChars!90 (regTwo!15627 r!27340)) c!14016)))

(declare-datatypes ((Unit!43315 0))(
  ( (Unit!43316) )
))
(declare-fun lt!901570 () Unit!43315)

(declare-fun lemmaDerivAfterDerivStepIsNullableThenFirstCharsContainsHead!6 (Regex!7557 C!15272 List!29622) Unit!43315)

(assert (=> b!2536878 (= lt!901570 (lemmaDerivAfterDerivStepIsNullableThenFirstCharsContainsHead!6 (regTwo!15627 r!27340) c!14016 tl!4068))))

(declare-fun b!2536879 () Bool)

(declare-fun res!1069876 () Bool)

(assert (=> b!2536879 (=> (not res!1069876) (not e!1604629))))

(assert (=> b!2536879 (= res!1069876 (validRegex!3183 (regTwo!15627 r!27340)))))

(declare-fun b!2536880 () Bool)

(assert (=> b!2536880 (= e!1604630 tp_is_empty!12969)))

(declare-fun b!2536881 () Bool)

(declare-fun res!1069873 () Bool)

(assert (=> b!2536881 (=> (not res!1069873) (not e!1604629))))

(get-info :version)

(assert (=> b!2536881 (= res!1069873 (and (not ((_ is EmptyExpr!7557) r!27340)) (not ((_ is EmptyLang!7557) r!27340)) (not ((_ is ElementMatch!7557) r!27340)) ((_ is Union!7557) r!27340)))))

(declare-fun b!2536882 () Bool)

(declare-fun tp!810490 () Bool)

(assert (=> b!2536882 (= e!1604630 tp!810490)))

(declare-fun b!2536883 () Bool)

(declare-fun res!1069875 () Bool)

(assert (=> b!2536883 (=> (not res!1069875) (not e!1604629))))

(assert (=> b!2536883 (= res!1069875 (not (nullable!2474 (derivative!252 (derivativeStep!2126 (regOne!15627 r!27340) c!14016) tl!4068))))))

(declare-fun b!2536884 () Bool)

(declare-fun tp!810491 () Bool)

(assert (=> b!2536884 (= e!1604628 (and tp_is_empty!12969 tp!810491))))

(assert (= (and start!246668 res!1069874) b!2536876))

(assert (= (and b!2536876 res!1069871) b!2536881))

(assert (= (and b!2536881 res!1069873) b!2536883))

(assert (= (and b!2536883 res!1069875) b!2536874))

(assert (= (and b!2536874 res!1069872) b!2536879))

(assert (= (and b!2536879 res!1069876) b!2536878))

(assert (= (and start!246668 ((_ is ElementMatch!7557) r!27340)) b!2536880))

(assert (= (and start!246668 ((_ is Concat!12253) r!27340)) b!2536877))

(assert (= (and start!246668 ((_ is Star!7557) r!27340)) b!2536882))

(assert (= (and start!246668 ((_ is Union!7557) r!27340)) b!2536875))

(assert (= (and start!246668 ((_ is Cons!29522) tl!4068)) b!2536884))

(declare-fun m!2885081 () Bool)

(assert (=> b!2536876 m!2885081))

(assert (=> b!2536876 m!2885081))

(declare-fun m!2885083 () Bool)

(assert (=> b!2536876 m!2885083))

(assert (=> b!2536876 m!2885083))

(declare-fun m!2885085 () Bool)

(assert (=> b!2536876 m!2885085))

(declare-fun m!2885087 () Bool)

(assert (=> b!2536878 m!2885087))

(declare-fun m!2885089 () Bool)

(assert (=> b!2536878 m!2885089))

(declare-fun m!2885091 () Bool)

(assert (=> b!2536878 m!2885091))

(declare-fun m!2885093 () Bool)

(assert (=> b!2536878 m!2885093))

(declare-fun m!2885095 () Bool)

(assert (=> b!2536878 m!2885095))

(assert (=> b!2536878 m!2885089))

(assert (=> b!2536878 m!2885093))

(declare-fun m!2885097 () Bool)

(assert (=> b!2536874 m!2885097))

(assert (=> b!2536874 m!2885097))

(declare-fun m!2885099 () Bool)

(assert (=> b!2536874 m!2885099))

(assert (=> b!2536874 m!2885099))

(declare-fun m!2885101 () Bool)

(assert (=> b!2536874 m!2885101))

(declare-fun m!2885103 () Bool)

(assert (=> b!2536879 m!2885103))

(declare-fun m!2885105 () Bool)

(assert (=> start!246668 m!2885105))

(declare-fun m!2885107 () Bool)

(assert (=> b!2536883 m!2885107))

(assert (=> b!2536883 m!2885107))

(declare-fun m!2885109 () Bool)

(assert (=> b!2536883 m!2885109))

(assert (=> b!2536883 m!2885109))

(declare-fun m!2885111 () Bool)

(assert (=> b!2536883 m!2885111))

(check-sat (not b!2536882) (not start!246668) (not b!2536876) (not b!2536883) (not b!2536879) (not b!2536878) (not b!2536877) (not b!2536875) tp_is_empty!12969 (not b!2536884) (not b!2536874))
(check-sat)
(get-model)

(declare-fun d!720756 () Bool)

(declare-fun lt!901573 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!4053 (List!29622) (InoxSet C!15272))

(assert (=> d!720756 (= lt!901573 (select (content!4053 (firstChars!90 (regTwo!15627 r!27340))) c!14016))))

(declare-fun e!1604635 () Bool)

(assert (=> d!720756 (= lt!901573 e!1604635)))

(declare-fun res!1069882 () Bool)

(assert (=> d!720756 (=> (not res!1069882) (not e!1604635))))

(assert (=> d!720756 (= res!1069882 ((_ is Cons!29522) (firstChars!90 (regTwo!15627 r!27340))))))

(assert (=> d!720756 (= (contains!5299 (firstChars!90 (regTwo!15627 r!27340)) c!14016) lt!901573)))

(declare-fun b!2536889 () Bool)

(declare-fun e!1604636 () Bool)

(assert (=> b!2536889 (= e!1604635 e!1604636)))

(declare-fun res!1069881 () Bool)

(assert (=> b!2536889 (=> res!1069881 e!1604636)))

(assert (=> b!2536889 (= res!1069881 (= (h!34942 (firstChars!90 (regTwo!15627 r!27340))) c!14016))))

(declare-fun b!2536890 () Bool)

(assert (=> b!2536890 (= e!1604636 (contains!5299 (t!211321 (firstChars!90 (regTwo!15627 r!27340))) c!14016))))

(assert (= (and d!720756 res!1069882) b!2536889))

(assert (= (and b!2536889 (not res!1069881)) b!2536890))

(assert (=> d!720756 m!2885089))

(declare-fun m!2885113 () Bool)

(assert (=> d!720756 m!2885113))

(declare-fun m!2885115 () Bool)

(assert (=> d!720756 m!2885115))

(declare-fun m!2885117 () Bool)

(assert (=> b!2536890 m!2885117))

(assert (=> b!2536878 d!720756))

(declare-fun b!2536942 () Bool)

(declare-fun e!1604673 () List!29622)

(declare-fun e!1604672 () List!29622)

(assert (=> b!2536942 (= e!1604673 e!1604672)))

(declare-fun c!405676 () Bool)

(assert (=> b!2536942 (= c!405676 ((_ is ElementMatch!7557) r!27340))))

(declare-fun bm!159816 () Bool)

(declare-fun c!405674 () Bool)

(declare-fun c!405677 () Bool)

(declare-fun c!405678 () Bool)

(declare-fun call!159825 () List!29622)

(assert (=> bm!159816 (= call!159825 (firstChars!90 (ite c!405677 (reg!7886 r!27340) (ite c!405674 (regTwo!15627 r!27340) (ite c!405678 (regTwo!15626 r!27340) (regOne!15626 r!27340))))))))

(declare-fun bm!159817 () Bool)

(declare-fun call!159824 () List!29622)

(declare-fun call!159823 () List!29622)

(assert (=> bm!159817 (= call!159824 call!159823)))

(declare-fun b!2536943 () Bool)

(assert (=> b!2536943 (= c!405678 (nullable!2474 (regOne!15626 r!27340)))))

(declare-fun e!1604674 () List!29622)

(declare-fun e!1604671 () List!29622)

(assert (=> b!2536943 (= e!1604674 e!1604671)))

(declare-fun call!159822 () List!29622)

(declare-fun call!159821 () List!29622)

(declare-fun bm!159818 () Bool)

(declare-fun ++!7247 (List!29622 List!29622) List!29622)

(assert (=> bm!159818 (= call!159822 (++!7247 call!159821 (ite c!405674 call!159823 call!159824)))))

(declare-fun d!720760 () Bool)

(declare-fun c!405675 () Bool)

(assert (=> d!720760 (= c!405675 (or ((_ is EmptyExpr!7557) r!27340) ((_ is EmptyLang!7557) r!27340)))))

(assert (=> d!720760 (= (firstChars!90 r!27340) e!1604673)))

(declare-fun b!2536944 () Bool)

(assert (=> b!2536944 (= e!1604673 Nil!29522)))

(declare-fun b!2536945 () Bool)

(declare-fun e!1604670 () List!29622)

(assert (=> b!2536945 (= e!1604670 call!159825)))

(declare-fun b!2536946 () Bool)

(assert (=> b!2536946 (= c!405677 ((_ is Star!7557) r!27340))))

(assert (=> b!2536946 (= e!1604672 e!1604670)))

(declare-fun b!2536947 () Bool)

(assert (=> b!2536947 (= e!1604671 call!159822)))

(declare-fun b!2536948 () Bool)

(assert (=> b!2536948 (= e!1604672 (Cons!29522 (c!405655 r!27340) Nil!29522))))

(declare-fun b!2536949 () Bool)

(assert (=> b!2536949 (= e!1604671 call!159824)))

(declare-fun bm!159819 () Bool)

(assert (=> bm!159819 (= call!159823 call!159825)))

(declare-fun b!2536950 () Bool)

(assert (=> b!2536950 (= e!1604670 e!1604674)))

(assert (=> b!2536950 (= c!405674 ((_ is Union!7557) r!27340))))

(declare-fun b!2536951 () Bool)

(assert (=> b!2536951 (= e!1604674 call!159822)))

(declare-fun bm!159820 () Bool)

(assert (=> bm!159820 (= call!159821 (firstChars!90 (ite c!405674 (regOne!15627 r!27340) (regOne!15626 r!27340))))))

(assert (= (and d!720760 c!405675) b!2536944))

(assert (= (and d!720760 (not c!405675)) b!2536942))

(assert (= (and b!2536942 c!405676) b!2536948))

(assert (= (and b!2536942 (not c!405676)) b!2536946))

(assert (= (and b!2536946 c!405677) b!2536945))

(assert (= (and b!2536946 (not c!405677)) b!2536950))

(assert (= (and b!2536950 c!405674) b!2536951))

(assert (= (and b!2536950 (not c!405674)) b!2536943))

(assert (= (and b!2536943 c!405678) b!2536947))

(assert (= (and b!2536943 (not c!405678)) b!2536949))

(assert (= (or b!2536947 b!2536949) bm!159817))

(assert (= (or b!2536951 b!2536947) bm!159820))

(assert (= (or b!2536951 bm!159817) bm!159819))

(assert (= (or b!2536951 b!2536947) bm!159818))

(assert (= (or b!2536945 bm!159819) bm!159816))

(declare-fun m!2885127 () Bool)

(assert (=> bm!159816 m!2885127))

(declare-fun m!2885129 () Bool)

(assert (=> b!2536943 m!2885129))

(declare-fun m!2885131 () Bool)

(assert (=> bm!159818 m!2885131))

(declare-fun m!2885133 () Bool)

(assert (=> bm!159820 m!2885133))

(assert (=> b!2536878 d!720760))

(declare-fun b!2536954 () Bool)

(declare-fun e!1604679 () List!29622)

(declare-fun e!1604678 () List!29622)

(assert (=> b!2536954 (= e!1604679 e!1604678)))

(declare-fun c!405682 () Bool)

(assert (=> b!2536954 (= c!405682 ((_ is ElementMatch!7557) (regTwo!15627 r!27340)))))

(declare-fun c!405680 () Bool)

(declare-fun c!405683 () Bool)

(declare-fun call!159830 () List!29622)

(declare-fun c!405684 () Bool)

(declare-fun bm!159821 () Bool)

(assert (=> bm!159821 (= call!159830 (firstChars!90 (ite c!405683 (reg!7886 (regTwo!15627 r!27340)) (ite c!405680 (regTwo!15627 (regTwo!15627 r!27340)) (ite c!405684 (regTwo!15626 (regTwo!15627 r!27340)) (regOne!15626 (regTwo!15627 r!27340)))))))))

(declare-fun bm!159822 () Bool)

(declare-fun call!159829 () List!29622)

(declare-fun call!159828 () List!29622)

(assert (=> bm!159822 (= call!159829 call!159828)))

(declare-fun b!2536955 () Bool)

(assert (=> b!2536955 (= c!405684 (nullable!2474 (regOne!15626 (regTwo!15627 r!27340))))))

(declare-fun e!1604680 () List!29622)

(declare-fun e!1604677 () List!29622)

(assert (=> b!2536955 (= e!1604680 e!1604677)))

(declare-fun call!159827 () List!29622)

(declare-fun bm!159823 () Bool)

(declare-fun call!159826 () List!29622)

(assert (=> bm!159823 (= call!159827 (++!7247 call!159826 (ite c!405680 call!159828 call!159829)))))

(declare-fun d!720766 () Bool)

(declare-fun c!405681 () Bool)

(assert (=> d!720766 (= c!405681 (or ((_ is EmptyExpr!7557) (regTwo!15627 r!27340)) ((_ is EmptyLang!7557) (regTwo!15627 r!27340))))))

(assert (=> d!720766 (= (firstChars!90 (regTwo!15627 r!27340)) e!1604679)))

(declare-fun b!2536956 () Bool)

(assert (=> b!2536956 (= e!1604679 Nil!29522)))

(declare-fun b!2536957 () Bool)

(declare-fun e!1604676 () List!29622)

(assert (=> b!2536957 (= e!1604676 call!159830)))

(declare-fun b!2536958 () Bool)

(assert (=> b!2536958 (= c!405683 ((_ is Star!7557) (regTwo!15627 r!27340)))))

(assert (=> b!2536958 (= e!1604678 e!1604676)))

(declare-fun b!2536959 () Bool)

(assert (=> b!2536959 (= e!1604677 call!159827)))

(declare-fun b!2536960 () Bool)

(assert (=> b!2536960 (= e!1604678 (Cons!29522 (c!405655 (regTwo!15627 r!27340)) Nil!29522))))

(declare-fun b!2536961 () Bool)

(assert (=> b!2536961 (= e!1604677 call!159829)))

(declare-fun bm!159824 () Bool)

(assert (=> bm!159824 (= call!159828 call!159830)))

(declare-fun b!2536962 () Bool)

(assert (=> b!2536962 (= e!1604676 e!1604680)))

(assert (=> b!2536962 (= c!405680 ((_ is Union!7557) (regTwo!15627 r!27340)))))

(declare-fun b!2536963 () Bool)

(assert (=> b!2536963 (= e!1604680 call!159827)))

(declare-fun bm!159825 () Bool)

(assert (=> bm!159825 (= call!159826 (firstChars!90 (ite c!405680 (regOne!15627 (regTwo!15627 r!27340)) (regOne!15626 (regTwo!15627 r!27340)))))))

(assert (= (and d!720766 c!405681) b!2536956))

(assert (= (and d!720766 (not c!405681)) b!2536954))

(assert (= (and b!2536954 c!405682) b!2536960))

(assert (= (and b!2536954 (not c!405682)) b!2536958))

(assert (= (and b!2536958 c!405683) b!2536957))

(assert (= (and b!2536958 (not c!405683)) b!2536962))

(assert (= (and b!2536962 c!405680) b!2536963))

(assert (= (and b!2536962 (not c!405680)) b!2536955))

(assert (= (and b!2536955 c!405684) b!2536959))

(assert (= (and b!2536955 (not c!405684)) b!2536961))

(assert (= (or b!2536959 b!2536961) bm!159822))

(assert (= (or b!2536963 b!2536959) bm!159825))

(assert (= (or b!2536963 bm!159822) bm!159824))

(assert (= (or b!2536963 b!2536959) bm!159823))

(assert (= (or b!2536957 bm!159824) bm!159821))

(declare-fun m!2885143 () Bool)

(assert (=> bm!159821 m!2885143))

(declare-fun m!2885145 () Bool)

(assert (=> b!2536955 m!2885145))

(declare-fun m!2885147 () Bool)

(assert (=> bm!159823 m!2885147))

(declare-fun m!2885149 () Bool)

(assert (=> bm!159825 m!2885149))

(assert (=> b!2536878 d!720766))

(declare-fun d!720770 () Bool)

(declare-fun lt!901577 () Bool)

(assert (=> d!720770 (= lt!901577 (select (content!4053 (firstChars!90 r!27340)) c!14016))))

(declare-fun e!1604681 () Bool)

(assert (=> d!720770 (= lt!901577 e!1604681)))

(declare-fun res!1069899 () Bool)

(assert (=> d!720770 (=> (not res!1069899) (not e!1604681))))

(assert (=> d!720770 (= res!1069899 ((_ is Cons!29522) (firstChars!90 r!27340)))))

(assert (=> d!720770 (= (contains!5299 (firstChars!90 r!27340) c!14016) lt!901577)))

(declare-fun b!2536964 () Bool)

(declare-fun e!1604682 () Bool)

(assert (=> b!2536964 (= e!1604681 e!1604682)))

(declare-fun res!1069898 () Bool)

(assert (=> b!2536964 (=> res!1069898 e!1604682)))

(assert (=> b!2536964 (= res!1069898 (= (h!34942 (firstChars!90 r!27340)) c!14016))))

(declare-fun b!2536965 () Bool)

(assert (=> b!2536965 (= e!1604682 (contains!5299 (t!211321 (firstChars!90 r!27340)) c!14016))))

(assert (= (and d!720770 res!1069899) b!2536964))

(assert (= (and b!2536964 (not res!1069898)) b!2536965))

(assert (=> d!720770 m!2885093))

(declare-fun m!2885151 () Bool)

(assert (=> d!720770 m!2885151))

(declare-fun m!2885153 () Bool)

(assert (=> d!720770 m!2885153))

(declare-fun m!2885155 () Bool)

(assert (=> b!2536965 m!2885155))

(assert (=> b!2536878 d!720770))

(declare-fun d!720772 () Bool)

(assert (=> d!720772 (contains!5299 (firstChars!90 (regTwo!15627 r!27340)) c!14016)))

(declare-fun lt!901580 () Unit!43315)

(declare-fun choose!15014 (Regex!7557 C!15272 List!29622) Unit!43315)

(assert (=> d!720772 (= lt!901580 (choose!15014 (regTwo!15627 r!27340) c!14016 tl!4068))))

(assert (=> d!720772 (validRegex!3183 (regTwo!15627 r!27340))))

(assert (=> d!720772 (= (lemmaDerivAfterDerivStepIsNullableThenFirstCharsContainsHead!6 (regTwo!15627 r!27340) c!14016 tl!4068) lt!901580)))

(declare-fun bs!469305 () Bool)

(assert (= bs!469305 d!720772))

(assert (=> bs!469305 m!2885089))

(assert (=> bs!469305 m!2885089))

(assert (=> bs!469305 m!2885091))

(declare-fun m!2885157 () Bool)

(assert (=> bs!469305 m!2885157))

(assert (=> bs!469305 m!2885103))

(assert (=> b!2536878 d!720772))

(declare-fun d!720774 () Bool)

(declare-fun nullableFct!706 (Regex!7557) Bool)

(assert (=> d!720774 (= (nullable!2474 (derivative!252 (derivativeStep!2126 (regOne!15627 r!27340) c!14016) tl!4068)) (nullableFct!706 (derivative!252 (derivativeStep!2126 (regOne!15627 r!27340) c!14016) tl!4068)))))

(declare-fun bs!469306 () Bool)

(assert (= bs!469306 d!720774))

(assert (=> bs!469306 m!2885109))

(declare-fun m!2885159 () Bool)

(assert (=> bs!469306 m!2885159))

(assert (=> b!2536883 d!720774))

(declare-fun d!720776 () Bool)

(declare-fun lt!901585 () Regex!7557)

(assert (=> d!720776 (validRegex!3183 lt!901585)))

(declare-fun e!1604695 () Regex!7557)

(assert (=> d!720776 (= lt!901585 e!1604695)))

(declare-fun c!405698 () Bool)

(assert (=> d!720776 (= c!405698 ((_ is Cons!29522) tl!4068))))

(assert (=> d!720776 (validRegex!3183 (derivativeStep!2126 (regOne!15627 r!27340) c!14016))))

(assert (=> d!720776 (= (derivative!252 (derivativeStep!2126 (regOne!15627 r!27340) c!14016) tl!4068) lt!901585)))

(declare-fun b!2536990 () Bool)

(assert (=> b!2536990 (= e!1604695 (derivative!252 (derivativeStep!2126 (derivativeStep!2126 (regOne!15627 r!27340) c!14016) (h!34942 tl!4068)) (t!211321 tl!4068)))))

(declare-fun b!2536991 () Bool)

(assert (=> b!2536991 (= e!1604695 (derivativeStep!2126 (regOne!15627 r!27340) c!14016))))

(assert (= (and d!720776 c!405698) b!2536990))

(assert (= (and d!720776 (not c!405698)) b!2536991))

(declare-fun m!2885161 () Bool)

(assert (=> d!720776 m!2885161))

(assert (=> d!720776 m!2885107))

(declare-fun m!2885163 () Bool)

(assert (=> d!720776 m!2885163))

(assert (=> b!2536990 m!2885107))

(declare-fun m!2885165 () Bool)

(assert (=> b!2536990 m!2885165))

(assert (=> b!2536990 m!2885165))

(declare-fun m!2885167 () Bool)

(assert (=> b!2536990 m!2885167))

(assert (=> b!2536883 d!720776))

(declare-fun bm!159856 () Bool)

(declare-fun call!159861 () Regex!7557)

(declare-fun call!159863 () Regex!7557)

(assert (=> bm!159856 (= call!159861 call!159863)))

(declare-fun b!2537048 () Bool)

(declare-fun e!1604730 () Regex!7557)

(assert (=> b!2537048 (= e!1604730 EmptyLang!7557)))

(declare-fun call!159862 () Regex!7557)

(declare-fun c!405724 () Bool)

(declare-fun bm!159857 () Bool)

(declare-fun c!405727 () Bool)

(assert (=> bm!159857 (= call!159862 (derivativeStep!2126 (ite c!405727 (regTwo!15627 (regOne!15627 r!27340)) (ite c!405724 (reg!7886 (regOne!15627 r!27340)) (regOne!15626 (regOne!15627 r!27340)))) c!14016))))

(declare-fun b!2537049 () Bool)

(declare-fun e!1604727 () Regex!7557)

(assert (=> b!2537049 (= e!1604727 (Union!7557 (Concat!12253 call!159861 (regTwo!15626 (regOne!15627 r!27340))) EmptyLang!7557))))

(declare-fun b!2537050 () Bool)

(declare-fun c!405728 () Bool)

(assert (=> b!2537050 (= c!405728 (nullable!2474 (regOne!15626 (regOne!15627 r!27340))))))

(declare-fun e!1604731 () Regex!7557)

(assert (=> b!2537050 (= e!1604731 e!1604727)))

(declare-fun b!2537051 () Bool)

(declare-fun e!1604728 () Regex!7557)

(assert (=> b!2537051 (= e!1604728 (ite (= c!14016 (c!405655 (regOne!15627 r!27340))) EmptyExpr!7557 EmptyLang!7557))))

(declare-fun b!2537052 () Bool)

(assert (=> b!2537052 (= e!1604730 e!1604728)))

(declare-fun c!405725 () Bool)

(assert (=> b!2537052 (= c!405725 ((_ is ElementMatch!7557) (regOne!15627 r!27340)))))

(declare-fun b!2537053 () Bool)

(assert (=> b!2537053 (= c!405727 ((_ is Union!7557) (regOne!15627 r!27340)))))

(declare-fun e!1604729 () Regex!7557)

(assert (=> b!2537053 (= e!1604728 e!1604729)))

(declare-fun d!720778 () Bool)

(declare-fun lt!901592 () Regex!7557)

(assert (=> d!720778 (validRegex!3183 lt!901592)))

(assert (=> d!720778 (= lt!901592 e!1604730)))

(declare-fun c!405726 () Bool)

(assert (=> d!720778 (= c!405726 (or ((_ is EmptyExpr!7557) (regOne!15627 r!27340)) ((_ is EmptyLang!7557) (regOne!15627 r!27340))))))

(assert (=> d!720778 (validRegex!3183 (regOne!15627 r!27340))))

(assert (=> d!720778 (= (derivativeStep!2126 (regOne!15627 r!27340) c!14016) lt!901592)))

(declare-fun b!2537054 () Bool)

(assert (=> b!2537054 (= e!1604731 (Concat!12253 call!159863 (regOne!15627 r!27340)))))

(declare-fun bm!159858 () Bool)

(assert (=> bm!159858 (= call!159863 call!159862)))

(declare-fun b!2537055 () Bool)

(assert (=> b!2537055 (= e!1604729 e!1604731)))

(assert (=> b!2537055 (= c!405724 ((_ is Star!7557) (regOne!15627 r!27340)))))

(declare-fun b!2537056 () Bool)

(declare-fun call!159864 () Regex!7557)

(assert (=> b!2537056 (= e!1604727 (Union!7557 (Concat!12253 call!159861 (regTwo!15626 (regOne!15627 r!27340))) call!159864))))

(declare-fun bm!159859 () Bool)

(assert (=> bm!159859 (= call!159864 (derivativeStep!2126 (ite c!405727 (regOne!15627 (regOne!15627 r!27340)) (regTwo!15626 (regOne!15627 r!27340))) c!14016))))

(declare-fun b!2537057 () Bool)

(assert (=> b!2537057 (= e!1604729 (Union!7557 call!159864 call!159862))))

(assert (= (and d!720778 c!405726) b!2537048))

(assert (= (and d!720778 (not c!405726)) b!2537052))

(assert (= (and b!2537052 c!405725) b!2537051))

(assert (= (and b!2537052 (not c!405725)) b!2537053))

(assert (= (and b!2537053 c!405727) b!2537057))

(assert (= (and b!2537053 (not c!405727)) b!2537055))

(assert (= (and b!2537055 c!405724) b!2537054))

(assert (= (and b!2537055 (not c!405724)) b!2537050))

(assert (= (and b!2537050 c!405728) b!2537056))

(assert (= (and b!2537050 (not c!405728)) b!2537049))

(assert (= (or b!2537056 b!2537049) bm!159856))

(assert (= (or b!2537054 bm!159856) bm!159858))

(assert (= (or b!2537057 bm!159858) bm!159857))

(assert (= (or b!2537057 b!2537056) bm!159859))

(declare-fun m!2885183 () Bool)

(assert (=> bm!159857 m!2885183))

(declare-fun m!2885185 () Bool)

(assert (=> b!2537050 m!2885185))

(declare-fun m!2885187 () Bool)

(assert (=> d!720778 m!2885187))

(declare-fun m!2885189 () Bool)

(assert (=> d!720778 m!2885189))

(declare-fun m!2885191 () Bool)

(assert (=> bm!159859 m!2885191))

(assert (=> b!2536883 d!720778))

(declare-fun d!720784 () Bool)

(assert (=> d!720784 (= (nullable!2474 (derivative!252 (derivativeStep!2126 r!27340 c!14016) tl!4068)) (nullableFct!706 (derivative!252 (derivativeStep!2126 r!27340 c!14016) tl!4068)))))

(declare-fun bs!469307 () Bool)

(assert (= bs!469307 d!720784))

(assert (=> bs!469307 m!2885083))

(declare-fun m!2885193 () Bool)

(assert (=> bs!469307 m!2885193))

(assert (=> b!2536876 d!720784))

(declare-fun d!720786 () Bool)

(declare-fun lt!901593 () Regex!7557)

(assert (=> d!720786 (validRegex!3183 lt!901593)))

(declare-fun e!1604732 () Regex!7557)

(assert (=> d!720786 (= lt!901593 e!1604732)))

(declare-fun c!405729 () Bool)

(assert (=> d!720786 (= c!405729 ((_ is Cons!29522) tl!4068))))

(assert (=> d!720786 (validRegex!3183 (derivativeStep!2126 r!27340 c!14016))))

(assert (=> d!720786 (= (derivative!252 (derivativeStep!2126 r!27340 c!14016) tl!4068) lt!901593)))

(declare-fun b!2537058 () Bool)

(assert (=> b!2537058 (= e!1604732 (derivative!252 (derivativeStep!2126 (derivativeStep!2126 r!27340 c!14016) (h!34942 tl!4068)) (t!211321 tl!4068)))))

(declare-fun b!2537059 () Bool)

(assert (=> b!2537059 (= e!1604732 (derivativeStep!2126 r!27340 c!14016))))

(assert (= (and d!720786 c!405729) b!2537058))

(assert (= (and d!720786 (not c!405729)) b!2537059))

(declare-fun m!2885195 () Bool)

(assert (=> d!720786 m!2885195))

(assert (=> d!720786 m!2885081))

(declare-fun m!2885197 () Bool)

(assert (=> d!720786 m!2885197))

(assert (=> b!2537058 m!2885081))

(declare-fun m!2885199 () Bool)

(assert (=> b!2537058 m!2885199))

(assert (=> b!2537058 m!2885199))

(declare-fun m!2885201 () Bool)

(assert (=> b!2537058 m!2885201))

(assert (=> b!2536876 d!720786))

(declare-fun bm!159860 () Bool)

(declare-fun call!159865 () Regex!7557)

(declare-fun call!159867 () Regex!7557)

(assert (=> bm!159860 (= call!159865 call!159867)))

(declare-fun b!2537060 () Bool)

(declare-fun e!1604736 () Regex!7557)

(assert (=> b!2537060 (= e!1604736 EmptyLang!7557)))

(declare-fun c!405730 () Bool)

(declare-fun c!405733 () Bool)

(declare-fun call!159866 () Regex!7557)

(declare-fun bm!159861 () Bool)

(assert (=> bm!159861 (= call!159866 (derivativeStep!2126 (ite c!405733 (regTwo!15627 r!27340) (ite c!405730 (reg!7886 r!27340) (regOne!15626 r!27340))) c!14016))))

(declare-fun b!2537061 () Bool)

(declare-fun e!1604733 () Regex!7557)

(assert (=> b!2537061 (= e!1604733 (Union!7557 (Concat!12253 call!159865 (regTwo!15626 r!27340)) EmptyLang!7557))))

(declare-fun b!2537062 () Bool)

(declare-fun c!405734 () Bool)

(assert (=> b!2537062 (= c!405734 (nullable!2474 (regOne!15626 r!27340)))))

(declare-fun e!1604737 () Regex!7557)

(assert (=> b!2537062 (= e!1604737 e!1604733)))

(declare-fun b!2537063 () Bool)

(declare-fun e!1604734 () Regex!7557)

(assert (=> b!2537063 (= e!1604734 (ite (= c!14016 (c!405655 r!27340)) EmptyExpr!7557 EmptyLang!7557))))

(declare-fun b!2537064 () Bool)

(assert (=> b!2537064 (= e!1604736 e!1604734)))

(declare-fun c!405731 () Bool)

(assert (=> b!2537064 (= c!405731 ((_ is ElementMatch!7557) r!27340))))

(declare-fun b!2537065 () Bool)

(assert (=> b!2537065 (= c!405733 ((_ is Union!7557) r!27340))))

(declare-fun e!1604735 () Regex!7557)

(assert (=> b!2537065 (= e!1604734 e!1604735)))

(declare-fun d!720788 () Bool)

(declare-fun lt!901594 () Regex!7557)

(assert (=> d!720788 (validRegex!3183 lt!901594)))

(assert (=> d!720788 (= lt!901594 e!1604736)))

(declare-fun c!405732 () Bool)

(assert (=> d!720788 (= c!405732 (or ((_ is EmptyExpr!7557) r!27340) ((_ is EmptyLang!7557) r!27340)))))

(assert (=> d!720788 (validRegex!3183 r!27340)))

(assert (=> d!720788 (= (derivativeStep!2126 r!27340 c!14016) lt!901594)))

(declare-fun b!2537066 () Bool)

(assert (=> b!2537066 (= e!1604737 (Concat!12253 call!159867 r!27340))))

(declare-fun bm!159862 () Bool)

(assert (=> bm!159862 (= call!159867 call!159866)))

(declare-fun b!2537067 () Bool)

(assert (=> b!2537067 (= e!1604735 e!1604737)))

(assert (=> b!2537067 (= c!405730 ((_ is Star!7557) r!27340))))

(declare-fun call!159868 () Regex!7557)

(declare-fun b!2537068 () Bool)

(assert (=> b!2537068 (= e!1604733 (Union!7557 (Concat!12253 call!159865 (regTwo!15626 r!27340)) call!159868))))

(declare-fun bm!159863 () Bool)

(assert (=> bm!159863 (= call!159868 (derivativeStep!2126 (ite c!405733 (regOne!15627 r!27340) (regTwo!15626 r!27340)) c!14016))))

(declare-fun b!2537069 () Bool)

(assert (=> b!2537069 (= e!1604735 (Union!7557 call!159868 call!159866))))

(assert (= (and d!720788 c!405732) b!2537060))

(assert (= (and d!720788 (not c!405732)) b!2537064))

(assert (= (and b!2537064 c!405731) b!2537063))

(assert (= (and b!2537064 (not c!405731)) b!2537065))

(assert (= (and b!2537065 c!405733) b!2537069))

(assert (= (and b!2537065 (not c!405733)) b!2537067))

(assert (= (and b!2537067 c!405730) b!2537066))

(assert (= (and b!2537067 (not c!405730)) b!2537062))

(assert (= (and b!2537062 c!405734) b!2537068))

(assert (= (and b!2537062 (not c!405734)) b!2537061))

(assert (= (or b!2537068 b!2537061) bm!159860))

(assert (= (or b!2537066 bm!159860) bm!159862))

(assert (= (or b!2537069 bm!159862) bm!159861))

(assert (= (or b!2537069 b!2537068) bm!159863))

(declare-fun m!2885203 () Bool)

(assert (=> bm!159861 m!2885203))

(assert (=> b!2537062 m!2885129))

(declare-fun m!2885205 () Bool)

(assert (=> d!720788 m!2885205))

(assert (=> d!720788 m!2885105))

(declare-fun m!2885207 () Bool)

(assert (=> bm!159863 m!2885207))

(assert (=> b!2536876 d!720788))

(declare-fun c!405758 () Bool)

(declare-fun c!405757 () Bool)

(declare-fun call!159889 () Bool)

(declare-fun bm!159884 () Bool)

(assert (=> bm!159884 (= call!159889 (validRegex!3183 (ite c!405757 (reg!7886 r!27340) (ite c!405758 (regOne!15627 r!27340) (regTwo!15626 r!27340)))))))

(declare-fun b!2537124 () Bool)

(declare-fun res!1069919 () Bool)

(declare-fun e!1604772 () Bool)

(assert (=> b!2537124 (=> (not res!1069919) (not e!1604772))))

(declare-fun call!159890 () Bool)

(assert (=> b!2537124 (= res!1069919 call!159890)))

(declare-fun e!1604777 () Bool)

(assert (=> b!2537124 (= e!1604777 e!1604772)))

(declare-fun b!2537125 () Bool)

(declare-fun e!1604776 () Bool)

(assert (=> b!2537125 (= e!1604776 call!159889)))

(declare-fun b!2537126 () Bool)

(declare-fun e!1604771 () Bool)

(assert (=> b!2537126 (= e!1604771 call!159890)))

(declare-fun b!2537127 () Bool)

(declare-fun e!1604775 () Bool)

(declare-fun e!1604774 () Bool)

(assert (=> b!2537127 (= e!1604775 e!1604774)))

(assert (=> b!2537127 (= c!405757 ((_ is Star!7557) r!27340))))

(declare-fun b!2537128 () Bool)

(declare-fun call!159891 () Bool)

(assert (=> b!2537128 (= e!1604772 call!159891)))

(declare-fun bm!159885 () Bool)

(assert (=> bm!159885 (= call!159891 (validRegex!3183 (ite c!405758 (regTwo!15627 r!27340) (regOne!15626 r!27340))))))

(declare-fun bm!159886 () Bool)

(assert (=> bm!159886 (= call!159890 call!159889)))

(declare-fun d!720790 () Bool)

(declare-fun res!1069921 () Bool)

(assert (=> d!720790 (=> res!1069921 e!1604775)))

(assert (=> d!720790 (= res!1069921 ((_ is ElementMatch!7557) r!27340))))

(assert (=> d!720790 (= (validRegex!3183 r!27340) e!1604775)))

(declare-fun b!2537129 () Bool)

(assert (=> b!2537129 (= e!1604774 e!1604777)))

(assert (=> b!2537129 (= c!405758 ((_ is Union!7557) r!27340))))

(declare-fun b!2537130 () Bool)

(declare-fun res!1069922 () Bool)

(declare-fun e!1604773 () Bool)

(assert (=> b!2537130 (=> res!1069922 e!1604773)))

(assert (=> b!2537130 (= res!1069922 (not ((_ is Concat!12253) r!27340)))))

(assert (=> b!2537130 (= e!1604777 e!1604773)))

(declare-fun b!2537131 () Bool)

(assert (=> b!2537131 (= e!1604774 e!1604776)))

(declare-fun res!1069918 () Bool)

(assert (=> b!2537131 (= res!1069918 (not (nullable!2474 (reg!7886 r!27340))))))

(assert (=> b!2537131 (=> (not res!1069918) (not e!1604776))))

(declare-fun b!2537132 () Bool)

(assert (=> b!2537132 (= e!1604773 e!1604771)))

(declare-fun res!1069920 () Bool)

(assert (=> b!2537132 (=> (not res!1069920) (not e!1604771))))

(assert (=> b!2537132 (= res!1069920 call!159891)))

(assert (= (and d!720790 (not res!1069921)) b!2537127))

(assert (= (and b!2537127 c!405757) b!2537131))

(assert (= (and b!2537127 (not c!405757)) b!2537129))

(assert (= (and b!2537131 res!1069918) b!2537125))

(assert (= (and b!2537129 c!405758) b!2537124))

(assert (= (and b!2537129 (not c!405758)) b!2537130))

(assert (= (and b!2537124 res!1069919) b!2537128))

(assert (= (and b!2537130 (not res!1069922)) b!2537132))

(assert (= (and b!2537132 res!1069920) b!2537126))

(assert (= (or b!2537124 b!2537126) bm!159886))

(assert (= (or b!2537128 b!2537132) bm!159885))

(assert (= (or b!2537125 bm!159886) bm!159884))

(declare-fun m!2885257 () Bool)

(assert (=> bm!159884 m!2885257))

(declare-fun m!2885259 () Bool)

(assert (=> bm!159885 m!2885259))

(declare-fun m!2885261 () Bool)

(assert (=> b!2537131 m!2885261))

(assert (=> start!246668 d!720790))

(declare-fun d!720810 () Bool)

(assert (=> d!720810 (= (nullable!2474 (derivative!252 (derivativeStep!2126 (regTwo!15627 r!27340) c!14016) tl!4068)) (nullableFct!706 (derivative!252 (derivativeStep!2126 (regTwo!15627 r!27340) c!14016) tl!4068)))))

(declare-fun bs!469311 () Bool)

(assert (= bs!469311 d!720810))

(assert (=> bs!469311 m!2885099))

(declare-fun m!2885273 () Bool)

(assert (=> bs!469311 m!2885273))

(assert (=> b!2536874 d!720810))

(declare-fun d!720814 () Bool)

(declare-fun lt!901603 () Regex!7557)

(assert (=> d!720814 (validRegex!3183 lt!901603)))

(declare-fun e!1604790 () Regex!7557)

(assert (=> d!720814 (= lt!901603 e!1604790)))

(declare-fun c!405766 () Bool)

(assert (=> d!720814 (= c!405766 ((_ is Cons!29522) tl!4068))))

(assert (=> d!720814 (validRegex!3183 (derivativeStep!2126 (regTwo!15627 r!27340) c!14016))))

(assert (=> d!720814 (= (derivative!252 (derivativeStep!2126 (regTwo!15627 r!27340) c!14016) tl!4068) lt!901603)))

(declare-fun b!2537152 () Bool)

(assert (=> b!2537152 (= e!1604790 (derivative!252 (derivativeStep!2126 (derivativeStep!2126 (regTwo!15627 r!27340) c!14016) (h!34942 tl!4068)) (t!211321 tl!4068)))))

(declare-fun b!2537153 () Bool)

(assert (=> b!2537153 (= e!1604790 (derivativeStep!2126 (regTwo!15627 r!27340) c!14016))))

(assert (= (and d!720814 c!405766) b!2537152))

(assert (= (and d!720814 (not c!405766)) b!2537153))

(declare-fun m!2885275 () Bool)

(assert (=> d!720814 m!2885275))

(assert (=> d!720814 m!2885097))

(declare-fun m!2885277 () Bool)

(assert (=> d!720814 m!2885277))

(assert (=> b!2537152 m!2885097))

(declare-fun m!2885279 () Bool)

(assert (=> b!2537152 m!2885279))

(assert (=> b!2537152 m!2885279))

(declare-fun m!2885281 () Bool)

(assert (=> b!2537152 m!2885281))

(assert (=> b!2536874 d!720814))

(declare-fun bm!159894 () Bool)

(declare-fun call!159899 () Regex!7557)

(declare-fun call!159901 () Regex!7557)

(assert (=> bm!159894 (= call!159899 call!159901)))

(declare-fun b!2537154 () Bool)

(declare-fun e!1604794 () Regex!7557)

(assert (=> b!2537154 (= e!1604794 EmptyLang!7557)))

(declare-fun bm!159895 () Bool)

(declare-fun c!405767 () Bool)

(declare-fun c!405770 () Bool)

(declare-fun call!159900 () Regex!7557)

(assert (=> bm!159895 (= call!159900 (derivativeStep!2126 (ite c!405770 (regTwo!15627 (regTwo!15627 r!27340)) (ite c!405767 (reg!7886 (regTwo!15627 r!27340)) (regOne!15626 (regTwo!15627 r!27340)))) c!14016))))

(declare-fun b!2537155 () Bool)

(declare-fun e!1604791 () Regex!7557)

(assert (=> b!2537155 (= e!1604791 (Union!7557 (Concat!12253 call!159899 (regTwo!15626 (regTwo!15627 r!27340))) EmptyLang!7557))))

(declare-fun b!2537156 () Bool)

(declare-fun c!405771 () Bool)

(assert (=> b!2537156 (= c!405771 (nullable!2474 (regOne!15626 (regTwo!15627 r!27340))))))

(declare-fun e!1604795 () Regex!7557)

(assert (=> b!2537156 (= e!1604795 e!1604791)))

(declare-fun b!2537157 () Bool)

(declare-fun e!1604792 () Regex!7557)

(assert (=> b!2537157 (= e!1604792 (ite (= c!14016 (c!405655 (regTwo!15627 r!27340))) EmptyExpr!7557 EmptyLang!7557))))

(declare-fun b!2537158 () Bool)

(assert (=> b!2537158 (= e!1604794 e!1604792)))

(declare-fun c!405768 () Bool)

(assert (=> b!2537158 (= c!405768 ((_ is ElementMatch!7557) (regTwo!15627 r!27340)))))

(declare-fun b!2537159 () Bool)

(assert (=> b!2537159 (= c!405770 ((_ is Union!7557) (regTwo!15627 r!27340)))))

(declare-fun e!1604793 () Regex!7557)

(assert (=> b!2537159 (= e!1604792 e!1604793)))

(declare-fun d!720816 () Bool)

(declare-fun lt!901604 () Regex!7557)

(assert (=> d!720816 (validRegex!3183 lt!901604)))

(assert (=> d!720816 (= lt!901604 e!1604794)))

(declare-fun c!405769 () Bool)

(assert (=> d!720816 (= c!405769 (or ((_ is EmptyExpr!7557) (regTwo!15627 r!27340)) ((_ is EmptyLang!7557) (regTwo!15627 r!27340))))))

(assert (=> d!720816 (validRegex!3183 (regTwo!15627 r!27340))))

(assert (=> d!720816 (= (derivativeStep!2126 (regTwo!15627 r!27340) c!14016) lt!901604)))

(declare-fun b!2537160 () Bool)

(assert (=> b!2537160 (= e!1604795 (Concat!12253 call!159901 (regTwo!15627 r!27340)))))

(declare-fun bm!159896 () Bool)

(assert (=> bm!159896 (= call!159901 call!159900)))

(declare-fun b!2537161 () Bool)

(assert (=> b!2537161 (= e!1604793 e!1604795)))

(assert (=> b!2537161 (= c!405767 ((_ is Star!7557) (regTwo!15627 r!27340)))))

(declare-fun call!159902 () Regex!7557)

(declare-fun b!2537162 () Bool)

(assert (=> b!2537162 (= e!1604791 (Union!7557 (Concat!12253 call!159899 (regTwo!15626 (regTwo!15627 r!27340))) call!159902))))

(declare-fun bm!159897 () Bool)

(assert (=> bm!159897 (= call!159902 (derivativeStep!2126 (ite c!405770 (regOne!15627 (regTwo!15627 r!27340)) (regTwo!15626 (regTwo!15627 r!27340))) c!14016))))

(declare-fun b!2537163 () Bool)

(assert (=> b!2537163 (= e!1604793 (Union!7557 call!159902 call!159900))))

(assert (= (and d!720816 c!405769) b!2537154))

(assert (= (and d!720816 (not c!405769)) b!2537158))

(assert (= (and b!2537158 c!405768) b!2537157))

(assert (= (and b!2537158 (not c!405768)) b!2537159))

(assert (= (and b!2537159 c!405770) b!2537163))

(assert (= (and b!2537159 (not c!405770)) b!2537161))

(assert (= (and b!2537161 c!405767) b!2537160))

(assert (= (and b!2537161 (not c!405767)) b!2537156))

(assert (= (and b!2537156 c!405771) b!2537162))

(assert (= (and b!2537156 (not c!405771)) b!2537155))

(assert (= (or b!2537162 b!2537155) bm!159894))

(assert (= (or b!2537160 bm!159894) bm!159896))

(assert (= (or b!2537163 bm!159896) bm!159895))

(assert (= (or b!2537163 b!2537162) bm!159897))

(declare-fun m!2885289 () Bool)

(assert (=> bm!159895 m!2885289))

(assert (=> b!2537156 m!2885145))

(declare-fun m!2885291 () Bool)

(assert (=> d!720816 m!2885291))

(assert (=> d!720816 m!2885103))

(declare-fun m!2885293 () Bool)

(assert (=> bm!159897 m!2885293))

(assert (=> b!2536874 d!720816))

(declare-fun c!405773 () Bool)

(declare-fun call!159903 () Bool)

(declare-fun bm!159898 () Bool)

(declare-fun c!405772 () Bool)

(assert (=> bm!159898 (= call!159903 (validRegex!3183 (ite c!405772 (reg!7886 (regTwo!15627 r!27340)) (ite c!405773 (regOne!15627 (regTwo!15627 r!27340)) (regTwo!15626 (regTwo!15627 r!27340))))))))

(declare-fun b!2537179 () Bool)

(declare-fun res!1069929 () Bool)

(declare-fun e!1604802 () Bool)

(assert (=> b!2537179 (=> (not res!1069929) (not e!1604802))))

(declare-fun call!159904 () Bool)

(assert (=> b!2537179 (= res!1069929 call!159904)))

(declare-fun e!1604807 () Bool)

(assert (=> b!2537179 (= e!1604807 e!1604802)))

(declare-fun b!2537180 () Bool)

(declare-fun e!1604806 () Bool)

(assert (=> b!2537180 (= e!1604806 call!159903)))

(declare-fun b!2537181 () Bool)

(declare-fun e!1604801 () Bool)

(assert (=> b!2537181 (= e!1604801 call!159904)))

(declare-fun b!2537182 () Bool)

(declare-fun e!1604805 () Bool)

(declare-fun e!1604804 () Bool)

(assert (=> b!2537182 (= e!1604805 e!1604804)))

(assert (=> b!2537182 (= c!405772 ((_ is Star!7557) (regTwo!15627 r!27340)))))

(declare-fun b!2537183 () Bool)

(declare-fun call!159905 () Bool)

(assert (=> b!2537183 (= e!1604802 call!159905)))

(declare-fun bm!159899 () Bool)

(assert (=> bm!159899 (= call!159905 (validRegex!3183 (ite c!405773 (regTwo!15627 (regTwo!15627 r!27340)) (regOne!15626 (regTwo!15627 r!27340)))))))

(declare-fun bm!159900 () Bool)

(assert (=> bm!159900 (= call!159904 call!159903)))

(declare-fun d!720818 () Bool)

(declare-fun res!1069931 () Bool)

(assert (=> d!720818 (=> res!1069931 e!1604805)))

(assert (=> d!720818 (= res!1069931 ((_ is ElementMatch!7557) (regTwo!15627 r!27340)))))

(assert (=> d!720818 (= (validRegex!3183 (regTwo!15627 r!27340)) e!1604805)))

(declare-fun b!2537184 () Bool)

(assert (=> b!2537184 (= e!1604804 e!1604807)))

(assert (=> b!2537184 (= c!405773 ((_ is Union!7557) (regTwo!15627 r!27340)))))

(declare-fun b!2537185 () Bool)

(declare-fun res!1069932 () Bool)

(declare-fun e!1604803 () Bool)

(assert (=> b!2537185 (=> res!1069932 e!1604803)))

(assert (=> b!2537185 (= res!1069932 (not ((_ is Concat!12253) (regTwo!15627 r!27340))))))

(assert (=> b!2537185 (= e!1604807 e!1604803)))

(declare-fun b!2537186 () Bool)

(assert (=> b!2537186 (= e!1604804 e!1604806)))

(declare-fun res!1069928 () Bool)

(assert (=> b!2537186 (= res!1069928 (not (nullable!2474 (reg!7886 (regTwo!15627 r!27340)))))))

(assert (=> b!2537186 (=> (not res!1069928) (not e!1604806))))

(declare-fun b!2537187 () Bool)

(assert (=> b!2537187 (= e!1604803 e!1604801)))

(declare-fun res!1069930 () Bool)

(assert (=> b!2537187 (=> (not res!1069930) (not e!1604801))))

(assert (=> b!2537187 (= res!1069930 call!159905)))

(assert (= (and d!720818 (not res!1069931)) b!2537182))

(assert (= (and b!2537182 c!405772) b!2537186))

(assert (= (and b!2537182 (not c!405772)) b!2537184))

(assert (= (and b!2537186 res!1069928) b!2537180))

(assert (= (and b!2537184 c!405773) b!2537179))

(assert (= (and b!2537184 (not c!405773)) b!2537185))

(assert (= (and b!2537179 res!1069929) b!2537183))

(assert (= (and b!2537185 (not res!1069932)) b!2537187))

(assert (= (and b!2537187 res!1069930) b!2537181))

(assert (= (or b!2537179 b!2537181) bm!159900))

(assert (= (or b!2537183 b!2537187) bm!159899))

(assert (= (or b!2537180 bm!159900) bm!159898))

(declare-fun m!2885295 () Bool)

(assert (=> bm!159898 m!2885295))

(declare-fun m!2885297 () Bool)

(assert (=> bm!159899 m!2885297))

(declare-fun m!2885299 () Bool)

(assert (=> b!2537186 m!2885299))

(assert (=> b!2536879 d!720818))

(declare-fun b!2537208 () Bool)

(declare-fun e!1604814 () Bool)

(declare-fun tp!810530 () Bool)

(assert (=> b!2537208 (= e!1604814 (and tp_is_empty!12969 tp!810530))))

(assert (=> b!2536884 (= tp!810491 e!1604814)))

(assert (= (and b!2536884 ((_ is Cons!29522) (t!211321 tl!4068))) b!2537208))

(declare-fun b!2537226 () Bool)

(declare-fun e!1604818 () Bool)

(declare-fun tp!810546 () Bool)

(declare-fun tp!810547 () Bool)

(assert (=> b!2537226 (= e!1604818 (and tp!810546 tp!810547))))

(declare-fun b!2537225 () Bool)

(declare-fun tp!810550 () Bool)

(assert (=> b!2537225 (= e!1604818 tp!810550)))

(declare-fun b!2537224 () Bool)

(declare-fun tp!810549 () Bool)

(declare-fun tp!810548 () Bool)

(assert (=> b!2537224 (= e!1604818 (and tp!810549 tp!810548))))

(declare-fun b!2537223 () Bool)

(assert (=> b!2537223 (= e!1604818 tp_is_empty!12969)))

(assert (=> b!2536882 (= tp!810490 e!1604818)))

(assert (= (and b!2536882 ((_ is ElementMatch!7557) (reg!7886 r!27340))) b!2537223))

(assert (= (and b!2536882 ((_ is Concat!12253) (reg!7886 r!27340))) b!2537224))

(assert (= (and b!2536882 ((_ is Star!7557) (reg!7886 r!27340))) b!2537225))

(assert (= (and b!2536882 ((_ is Union!7557) (reg!7886 r!27340))) b!2537226))

(declare-fun b!2537230 () Bool)

(declare-fun e!1604819 () Bool)

(declare-fun tp!810551 () Bool)

(declare-fun tp!810552 () Bool)

(assert (=> b!2537230 (= e!1604819 (and tp!810551 tp!810552))))

(declare-fun b!2537229 () Bool)

(declare-fun tp!810555 () Bool)

(assert (=> b!2537229 (= e!1604819 tp!810555)))

(declare-fun b!2537228 () Bool)

(declare-fun tp!810554 () Bool)

(declare-fun tp!810553 () Bool)

(assert (=> b!2537228 (= e!1604819 (and tp!810554 tp!810553))))

(declare-fun b!2537227 () Bool)

(assert (=> b!2537227 (= e!1604819 tp_is_empty!12969)))

(assert (=> b!2536877 (= tp!810489 e!1604819)))

(assert (= (and b!2536877 ((_ is ElementMatch!7557) (regOne!15626 r!27340))) b!2537227))

(assert (= (and b!2536877 ((_ is Concat!12253) (regOne!15626 r!27340))) b!2537228))

(assert (= (and b!2536877 ((_ is Star!7557) (regOne!15626 r!27340))) b!2537229))

(assert (= (and b!2536877 ((_ is Union!7557) (regOne!15626 r!27340))) b!2537230))

(declare-fun b!2537234 () Bool)

(declare-fun e!1604820 () Bool)

(declare-fun tp!810556 () Bool)

(declare-fun tp!810557 () Bool)

(assert (=> b!2537234 (= e!1604820 (and tp!810556 tp!810557))))

(declare-fun b!2537233 () Bool)

(declare-fun tp!810560 () Bool)

(assert (=> b!2537233 (= e!1604820 tp!810560)))

(declare-fun b!2537232 () Bool)

(declare-fun tp!810559 () Bool)

(declare-fun tp!810558 () Bool)

(assert (=> b!2537232 (= e!1604820 (and tp!810559 tp!810558))))

(declare-fun b!2537231 () Bool)

(assert (=> b!2537231 (= e!1604820 tp_is_empty!12969)))

(assert (=> b!2536877 (= tp!810493 e!1604820)))

(assert (= (and b!2536877 ((_ is ElementMatch!7557) (regTwo!15626 r!27340))) b!2537231))

(assert (= (and b!2536877 ((_ is Concat!12253) (regTwo!15626 r!27340))) b!2537232))

(assert (= (and b!2536877 ((_ is Star!7557) (regTwo!15626 r!27340))) b!2537233))

(assert (= (and b!2536877 ((_ is Union!7557) (regTwo!15626 r!27340))) b!2537234))

(declare-fun b!2537238 () Bool)

(declare-fun e!1604821 () Bool)

(declare-fun tp!810561 () Bool)

(declare-fun tp!810562 () Bool)

(assert (=> b!2537238 (= e!1604821 (and tp!810561 tp!810562))))

(declare-fun b!2537237 () Bool)

(declare-fun tp!810565 () Bool)

(assert (=> b!2537237 (= e!1604821 tp!810565)))

(declare-fun b!2537236 () Bool)

(declare-fun tp!810564 () Bool)

(declare-fun tp!810563 () Bool)

(assert (=> b!2537236 (= e!1604821 (and tp!810564 tp!810563))))

(declare-fun b!2537235 () Bool)

(assert (=> b!2537235 (= e!1604821 tp_is_empty!12969)))

(assert (=> b!2536875 (= tp!810494 e!1604821)))

(assert (= (and b!2536875 ((_ is ElementMatch!7557) (regOne!15627 r!27340))) b!2537235))

(assert (= (and b!2536875 ((_ is Concat!12253) (regOne!15627 r!27340))) b!2537236))

(assert (= (and b!2536875 ((_ is Star!7557) (regOne!15627 r!27340))) b!2537237))

(assert (= (and b!2536875 ((_ is Union!7557) (regOne!15627 r!27340))) b!2537238))

(declare-fun b!2537242 () Bool)

(declare-fun e!1604822 () Bool)

(declare-fun tp!810566 () Bool)

(declare-fun tp!810567 () Bool)

(assert (=> b!2537242 (= e!1604822 (and tp!810566 tp!810567))))

(declare-fun b!2537241 () Bool)

(declare-fun tp!810570 () Bool)

(assert (=> b!2537241 (= e!1604822 tp!810570)))

(declare-fun b!2537240 () Bool)

(declare-fun tp!810569 () Bool)

(declare-fun tp!810568 () Bool)

(assert (=> b!2537240 (= e!1604822 (and tp!810569 tp!810568))))

(declare-fun b!2537239 () Bool)

(assert (=> b!2537239 (= e!1604822 tp_is_empty!12969)))

(assert (=> b!2536875 (= tp!810492 e!1604822)))

(assert (= (and b!2536875 ((_ is ElementMatch!7557) (regTwo!15627 r!27340))) b!2537239))

(assert (= (and b!2536875 ((_ is Concat!12253) (regTwo!15627 r!27340))) b!2537240))

(assert (= (and b!2536875 ((_ is Star!7557) (regTwo!15627 r!27340))) b!2537241))

(assert (= (and b!2536875 ((_ is Union!7557) (regTwo!15627 r!27340))) b!2537242))

(check-sat (not b!2537241) (not b!2536965) (not b!2537232) (not bm!159884) (not d!720786) (not b!2537229) (not d!720814) (not b!2537228) (not bm!159899) (not bm!159863) (not b!2536890) (not b!2537225) (not bm!159823) (not d!720756) (not b!2537224) (not b!2537240) (not b!2537131) (not bm!159821) (not d!720788) (not bm!159859) (not d!720772) (not b!2537236) (not bm!159825) (not b!2537234) (not d!720770) (not b!2537238) (not bm!159820) (not bm!159885) (not bm!159895) (not bm!159898) (not b!2537233) (not bm!159816) (not b!2537062) (not b!2537152) (not b!2536990) (not d!720778) (not bm!159861) (not b!2536955) (not d!720776) (not b!2537186) (not d!720810) (not bm!159897) tp_is_empty!12969 (not b!2537050) (not b!2537058) (not b!2537242) (not b!2537237) (not b!2536943) (not b!2537230) (not b!2537208) (not d!720784) (not b!2537226) (not d!720774) (not d!720816) (not bm!159818) (not bm!159857) (not b!2537156))
(check-sat)
(get-model)

(declare-fun d!720820 () Bool)

(declare-fun lt!901605 () Regex!7557)

(assert (=> d!720820 (validRegex!3183 lt!901605)))

(declare-fun e!1604823 () Regex!7557)

(assert (=> d!720820 (= lt!901605 e!1604823)))

(declare-fun c!405774 () Bool)

(assert (=> d!720820 (= c!405774 ((_ is Cons!29522) (t!211321 tl!4068)))))

(assert (=> d!720820 (validRegex!3183 (derivativeStep!2126 (derivativeStep!2126 r!27340 c!14016) (h!34942 tl!4068)))))

(assert (=> d!720820 (= (derivative!252 (derivativeStep!2126 (derivativeStep!2126 r!27340 c!14016) (h!34942 tl!4068)) (t!211321 tl!4068)) lt!901605)))

(declare-fun b!2537243 () Bool)

(assert (=> b!2537243 (= e!1604823 (derivative!252 (derivativeStep!2126 (derivativeStep!2126 (derivativeStep!2126 r!27340 c!14016) (h!34942 tl!4068)) (h!34942 (t!211321 tl!4068))) (t!211321 (t!211321 tl!4068))))))

(declare-fun b!2537244 () Bool)

(assert (=> b!2537244 (= e!1604823 (derivativeStep!2126 (derivativeStep!2126 r!27340 c!14016) (h!34942 tl!4068)))))

(assert (= (and d!720820 c!405774) b!2537243))

(assert (= (and d!720820 (not c!405774)) b!2537244))

(declare-fun m!2885301 () Bool)

(assert (=> d!720820 m!2885301))

(assert (=> d!720820 m!2885199))

(declare-fun m!2885303 () Bool)

(assert (=> d!720820 m!2885303))

(assert (=> b!2537243 m!2885199))

(declare-fun m!2885305 () Bool)

(assert (=> b!2537243 m!2885305))

(assert (=> b!2537243 m!2885305))

(declare-fun m!2885307 () Bool)

(assert (=> b!2537243 m!2885307))

(assert (=> b!2537058 d!720820))

(declare-fun bm!159901 () Bool)

(declare-fun call!159906 () Regex!7557)

(declare-fun call!159908 () Regex!7557)

(assert (=> bm!159901 (= call!159906 call!159908)))

(declare-fun b!2537245 () Bool)

(declare-fun e!1604827 () Regex!7557)

(assert (=> b!2537245 (= e!1604827 EmptyLang!7557)))

(declare-fun call!159907 () Regex!7557)

(declare-fun c!405775 () Bool)

(declare-fun bm!159902 () Bool)

(declare-fun c!405778 () Bool)

(assert (=> bm!159902 (= call!159907 (derivativeStep!2126 (ite c!405778 (regTwo!15627 (derivativeStep!2126 r!27340 c!14016)) (ite c!405775 (reg!7886 (derivativeStep!2126 r!27340 c!14016)) (regOne!15626 (derivativeStep!2126 r!27340 c!14016)))) (h!34942 tl!4068)))))

(declare-fun b!2537246 () Bool)

(declare-fun e!1604824 () Regex!7557)

(assert (=> b!2537246 (= e!1604824 (Union!7557 (Concat!12253 call!159906 (regTwo!15626 (derivativeStep!2126 r!27340 c!14016))) EmptyLang!7557))))

(declare-fun b!2537247 () Bool)

(declare-fun c!405779 () Bool)

(assert (=> b!2537247 (= c!405779 (nullable!2474 (regOne!15626 (derivativeStep!2126 r!27340 c!14016))))))

(declare-fun e!1604828 () Regex!7557)

(assert (=> b!2537247 (= e!1604828 e!1604824)))

(declare-fun b!2537248 () Bool)

(declare-fun e!1604825 () Regex!7557)

(assert (=> b!2537248 (= e!1604825 (ite (= (h!34942 tl!4068) (c!405655 (derivativeStep!2126 r!27340 c!14016))) EmptyExpr!7557 EmptyLang!7557))))

(declare-fun b!2537249 () Bool)

(assert (=> b!2537249 (= e!1604827 e!1604825)))

(declare-fun c!405776 () Bool)

(assert (=> b!2537249 (= c!405776 ((_ is ElementMatch!7557) (derivativeStep!2126 r!27340 c!14016)))))

(declare-fun b!2537250 () Bool)

(assert (=> b!2537250 (= c!405778 ((_ is Union!7557) (derivativeStep!2126 r!27340 c!14016)))))

(declare-fun e!1604826 () Regex!7557)

(assert (=> b!2537250 (= e!1604825 e!1604826)))

(declare-fun d!720822 () Bool)

(declare-fun lt!901606 () Regex!7557)

(assert (=> d!720822 (validRegex!3183 lt!901606)))

(assert (=> d!720822 (= lt!901606 e!1604827)))

(declare-fun c!405777 () Bool)

(assert (=> d!720822 (= c!405777 (or ((_ is EmptyExpr!7557) (derivativeStep!2126 r!27340 c!14016)) ((_ is EmptyLang!7557) (derivativeStep!2126 r!27340 c!14016))))))

(assert (=> d!720822 (validRegex!3183 (derivativeStep!2126 r!27340 c!14016))))

(assert (=> d!720822 (= (derivativeStep!2126 (derivativeStep!2126 r!27340 c!14016) (h!34942 tl!4068)) lt!901606)))

(declare-fun b!2537251 () Bool)

(assert (=> b!2537251 (= e!1604828 (Concat!12253 call!159908 (derivativeStep!2126 r!27340 c!14016)))))

(declare-fun bm!159903 () Bool)

(assert (=> bm!159903 (= call!159908 call!159907)))

(declare-fun b!2537252 () Bool)

(assert (=> b!2537252 (= e!1604826 e!1604828)))

(assert (=> b!2537252 (= c!405775 ((_ is Star!7557) (derivativeStep!2126 r!27340 c!14016)))))

(declare-fun call!159909 () Regex!7557)

(declare-fun b!2537253 () Bool)

(assert (=> b!2537253 (= e!1604824 (Union!7557 (Concat!12253 call!159906 (regTwo!15626 (derivativeStep!2126 r!27340 c!14016))) call!159909))))

(declare-fun bm!159904 () Bool)

(assert (=> bm!159904 (= call!159909 (derivativeStep!2126 (ite c!405778 (regOne!15627 (derivativeStep!2126 r!27340 c!14016)) (regTwo!15626 (derivativeStep!2126 r!27340 c!14016))) (h!34942 tl!4068)))))

(declare-fun b!2537254 () Bool)

(assert (=> b!2537254 (= e!1604826 (Union!7557 call!159909 call!159907))))

(assert (= (and d!720822 c!405777) b!2537245))

(assert (= (and d!720822 (not c!405777)) b!2537249))

(assert (= (and b!2537249 c!405776) b!2537248))

(assert (= (and b!2537249 (not c!405776)) b!2537250))

(assert (= (and b!2537250 c!405778) b!2537254))

(assert (= (and b!2537250 (not c!405778)) b!2537252))

(assert (= (and b!2537252 c!405775) b!2537251))

(assert (= (and b!2537252 (not c!405775)) b!2537247))

(assert (= (and b!2537247 c!405779) b!2537253))

(assert (= (and b!2537247 (not c!405779)) b!2537246))

(assert (= (or b!2537253 b!2537246) bm!159901))

(assert (= (or b!2537251 bm!159901) bm!159903))

(assert (= (or b!2537254 bm!159903) bm!159902))

(assert (= (or b!2537254 b!2537253) bm!159904))

(declare-fun m!2885309 () Bool)

(assert (=> bm!159902 m!2885309))

(declare-fun m!2885311 () Bool)

(assert (=> b!2537247 m!2885311))

(declare-fun m!2885313 () Bool)

(assert (=> d!720822 m!2885313))

(assert (=> d!720822 m!2885081))

(assert (=> d!720822 m!2885197))

(declare-fun m!2885315 () Bool)

(assert (=> bm!159904 m!2885315))

(assert (=> b!2537058 d!720822))

(declare-fun d!720824 () Bool)

(assert (=> d!720824 (= (nullable!2474 (regOne!15626 (regTwo!15627 r!27340))) (nullableFct!706 (regOne!15626 (regTwo!15627 r!27340))))))

(declare-fun bs!469312 () Bool)

(assert (= bs!469312 d!720824))

(declare-fun m!2885317 () Bool)

(assert (=> bs!469312 m!2885317))

(assert (=> b!2536955 d!720824))

(declare-fun bm!159905 () Bool)

(declare-fun call!159910 () Regex!7557)

(declare-fun call!159912 () Regex!7557)

(assert (=> bm!159905 (= call!159910 call!159912)))

(declare-fun b!2537255 () Bool)

(declare-fun e!1604832 () Regex!7557)

(assert (=> b!2537255 (= e!1604832 EmptyLang!7557)))

(declare-fun bm!159906 () Bool)

(declare-fun call!159911 () Regex!7557)

(declare-fun c!405783 () Bool)

(declare-fun c!405780 () Bool)

(assert (=> bm!159906 (= call!159911 (derivativeStep!2126 (ite c!405783 (regTwo!15627 (ite c!405770 (regOne!15627 (regTwo!15627 r!27340)) (regTwo!15626 (regTwo!15627 r!27340)))) (ite c!405780 (reg!7886 (ite c!405770 (regOne!15627 (regTwo!15627 r!27340)) (regTwo!15626 (regTwo!15627 r!27340)))) (regOne!15626 (ite c!405770 (regOne!15627 (regTwo!15627 r!27340)) (regTwo!15626 (regTwo!15627 r!27340)))))) c!14016))))

(declare-fun b!2537256 () Bool)

(declare-fun e!1604829 () Regex!7557)

(assert (=> b!2537256 (= e!1604829 (Union!7557 (Concat!12253 call!159910 (regTwo!15626 (ite c!405770 (regOne!15627 (regTwo!15627 r!27340)) (regTwo!15626 (regTwo!15627 r!27340))))) EmptyLang!7557))))

(declare-fun b!2537257 () Bool)

(declare-fun c!405784 () Bool)

(assert (=> b!2537257 (= c!405784 (nullable!2474 (regOne!15626 (ite c!405770 (regOne!15627 (regTwo!15627 r!27340)) (regTwo!15626 (regTwo!15627 r!27340))))))))

(declare-fun e!1604833 () Regex!7557)

(assert (=> b!2537257 (= e!1604833 e!1604829)))

(declare-fun b!2537258 () Bool)

(declare-fun e!1604830 () Regex!7557)

(assert (=> b!2537258 (= e!1604830 (ite (= c!14016 (c!405655 (ite c!405770 (regOne!15627 (regTwo!15627 r!27340)) (regTwo!15626 (regTwo!15627 r!27340))))) EmptyExpr!7557 EmptyLang!7557))))

(declare-fun b!2537259 () Bool)

(assert (=> b!2537259 (= e!1604832 e!1604830)))

(declare-fun c!405781 () Bool)

(assert (=> b!2537259 (= c!405781 ((_ is ElementMatch!7557) (ite c!405770 (regOne!15627 (regTwo!15627 r!27340)) (regTwo!15626 (regTwo!15627 r!27340)))))))

(declare-fun b!2537260 () Bool)

(assert (=> b!2537260 (= c!405783 ((_ is Union!7557) (ite c!405770 (regOne!15627 (regTwo!15627 r!27340)) (regTwo!15626 (regTwo!15627 r!27340)))))))

(declare-fun e!1604831 () Regex!7557)

(assert (=> b!2537260 (= e!1604830 e!1604831)))

(declare-fun d!720826 () Bool)

(declare-fun lt!901607 () Regex!7557)

(assert (=> d!720826 (validRegex!3183 lt!901607)))

(assert (=> d!720826 (= lt!901607 e!1604832)))

(declare-fun c!405782 () Bool)

(assert (=> d!720826 (= c!405782 (or ((_ is EmptyExpr!7557) (ite c!405770 (regOne!15627 (regTwo!15627 r!27340)) (regTwo!15626 (regTwo!15627 r!27340)))) ((_ is EmptyLang!7557) (ite c!405770 (regOne!15627 (regTwo!15627 r!27340)) (regTwo!15626 (regTwo!15627 r!27340))))))))

(assert (=> d!720826 (validRegex!3183 (ite c!405770 (regOne!15627 (regTwo!15627 r!27340)) (regTwo!15626 (regTwo!15627 r!27340))))))

(assert (=> d!720826 (= (derivativeStep!2126 (ite c!405770 (regOne!15627 (regTwo!15627 r!27340)) (regTwo!15626 (regTwo!15627 r!27340))) c!14016) lt!901607)))

(declare-fun b!2537261 () Bool)

(assert (=> b!2537261 (= e!1604833 (Concat!12253 call!159912 (ite c!405770 (regOne!15627 (regTwo!15627 r!27340)) (regTwo!15626 (regTwo!15627 r!27340)))))))

(declare-fun bm!159907 () Bool)

(assert (=> bm!159907 (= call!159912 call!159911)))

(declare-fun b!2537262 () Bool)

(assert (=> b!2537262 (= e!1604831 e!1604833)))

(assert (=> b!2537262 (= c!405780 ((_ is Star!7557) (ite c!405770 (regOne!15627 (regTwo!15627 r!27340)) (regTwo!15626 (regTwo!15627 r!27340)))))))

(declare-fun b!2537263 () Bool)

(declare-fun call!159913 () Regex!7557)

(assert (=> b!2537263 (= e!1604829 (Union!7557 (Concat!12253 call!159910 (regTwo!15626 (ite c!405770 (regOne!15627 (regTwo!15627 r!27340)) (regTwo!15626 (regTwo!15627 r!27340))))) call!159913))))

(declare-fun bm!159908 () Bool)

(assert (=> bm!159908 (= call!159913 (derivativeStep!2126 (ite c!405783 (regOne!15627 (ite c!405770 (regOne!15627 (regTwo!15627 r!27340)) (regTwo!15626 (regTwo!15627 r!27340)))) (regTwo!15626 (ite c!405770 (regOne!15627 (regTwo!15627 r!27340)) (regTwo!15626 (regTwo!15627 r!27340))))) c!14016))))

(declare-fun b!2537264 () Bool)

(assert (=> b!2537264 (= e!1604831 (Union!7557 call!159913 call!159911))))

(assert (= (and d!720826 c!405782) b!2537255))

(assert (= (and d!720826 (not c!405782)) b!2537259))

(assert (= (and b!2537259 c!405781) b!2537258))

(assert (= (and b!2537259 (not c!405781)) b!2537260))

(assert (= (and b!2537260 c!405783) b!2537264))

(assert (= (and b!2537260 (not c!405783)) b!2537262))

(assert (= (and b!2537262 c!405780) b!2537261))

(assert (= (and b!2537262 (not c!405780)) b!2537257))

(assert (= (and b!2537257 c!405784) b!2537263))

(assert (= (and b!2537257 (not c!405784)) b!2537256))

(assert (= (or b!2537263 b!2537256) bm!159905))

(assert (= (or b!2537261 bm!159905) bm!159907))

(assert (= (or b!2537264 bm!159907) bm!159906))

(assert (= (or b!2537264 b!2537263) bm!159908))

(declare-fun m!2885319 () Bool)

(assert (=> bm!159906 m!2885319))

(declare-fun m!2885321 () Bool)

(assert (=> b!2537257 m!2885321))

(declare-fun m!2885323 () Bool)

(assert (=> d!720826 m!2885323))

(declare-fun m!2885325 () Bool)

(assert (=> d!720826 m!2885325))

(declare-fun m!2885327 () Bool)

(assert (=> bm!159908 m!2885327))

(assert (=> bm!159897 d!720826))

(declare-fun b!2537275 () Bool)

(declare-fun res!1069937 () Bool)

(declare-fun e!1604839 () Bool)

(assert (=> b!2537275 (=> (not res!1069937) (not e!1604839))))

(declare-fun lt!901610 () List!29622)

(declare-fun size!22935 (List!29622) Int)

(assert (=> b!2537275 (= res!1069937 (= (size!22935 lt!901610) (+ (size!22935 call!159821) (size!22935 (ite c!405674 call!159823 call!159824)))))))

(declare-fun e!1604838 () List!29622)

(declare-fun b!2537274 () Bool)

(assert (=> b!2537274 (= e!1604838 (Cons!29522 (h!34942 call!159821) (++!7247 (t!211321 call!159821) (ite c!405674 call!159823 call!159824))))))

(declare-fun b!2537273 () Bool)

(assert (=> b!2537273 (= e!1604838 (ite c!405674 call!159823 call!159824))))

(declare-fun b!2537276 () Bool)

(assert (=> b!2537276 (= e!1604839 (or (not (= (ite c!405674 call!159823 call!159824) Nil!29522)) (= lt!901610 call!159821)))))

(declare-fun d!720828 () Bool)

(assert (=> d!720828 e!1604839))

(declare-fun res!1069938 () Bool)

(assert (=> d!720828 (=> (not res!1069938) (not e!1604839))))

(assert (=> d!720828 (= res!1069938 (= (content!4053 lt!901610) ((_ map or) (content!4053 call!159821) (content!4053 (ite c!405674 call!159823 call!159824)))))))

(assert (=> d!720828 (= lt!901610 e!1604838)))

(declare-fun c!405787 () Bool)

(assert (=> d!720828 (= c!405787 ((_ is Nil!29522) call!159821))))

(assert (=> d!720828 (= (++!7247 call!159821 (ite c!405674 call!159823 call!159824)) lt!901610)))

(assert (= (and d!720828 c!405787) b!2537273))

(assert (= (and d!720828 (not c!405787)) b!2537274))

(assert (= (and d!720828 res!1069938) b!2537275))

(assert (= (and b!2537275 res!1069937) b!2537276))

(declare-fun m!2885329 () Bool)

(assert (=> b!2537275 m!2885329))

(declare-fun m!2885331 () Bool)

(assert (=> b!2537275 m!2885331))

(declare-fun m!2885333 () Bool)

(assert (=> b!2537275 m!2885333))

(declare-fun m!2885335 () Bool)

(assert (=> b!2537274 m!2885335))

(declare-fun m!2885337 () Bool)

(assert (=> d!720828 m!2885337))

(declare-fun m!2885339 () Bool)

(assert (=> d!720828 m!2885339))

(declare-fun m!2885341 () Bool)

(assert (=> d!720828 m!2885341))

(assert (=> bm!159818 d!720828))

(declare-fun bm!159909 () Bool)

(declare-fun call!159914 () Regex!7557)

(declare-fun call!159916 () Regex!7557)

(assert (=> bm!159909 (= call!159914 call!159916)))

(declare-fun b!2537277 () Bool)

(declare-fun e!1604843 () Regex!7557)

(assert (=> b!2537277 (= e!1604843 EmptyLang!7557)))

(declare-fun bm!159910 () Bool)

(declare-fun c!405788 () Bool)

(declare-fun call!159915 () Regex!7557)

(declare-fun c!405791 () Bool)

(assert (=> bm!159910 (= call!159915 (derivativeStep!2126 (ite c!405791 (regTwo!15627 (ite c!405727 (regOne!15627 (regOne!15627 r!27340)) (regTwo!15626 (regOne!15627 r!27340)))) (ite c!405788 (reg!7886 (ite c!405727 (regOne!15627 (regOne!15627 r!27340)) (regTwo!15626 (regOne!15627 r!27340)))) (regOne!15626 (ite c!405727 (regOne!15627 (regOne!15627 r!27340)) (regTwo!15626 (regOne!15627 r!27340)))))) c!14016))))

(declare-fun b!2537278 () Bool)

(declare-fun e!1604840 () Regex!7557)

(assert (=> b!2537278 (= e!1604840 (Union!7557 (Concat!12253 call!159914 (regTwo!15626 (ite c!405727 (regOne!15627 (regOne!15627 r!27340)) (regTwo!15626 (regOne!15627 r!27340))))) EmptyLang!7557))))

(declare-fun b!2537279 () Bool)

(declare-fun c!405792 () Bool)

(assert (=> b!2537279 (= c!405792 (nullable!2474 (regOne!15626 (ite c!405727 (regOne!15627 (regOne!15627 r!27340)) (regTwo!15626 (regOne!15627 r!27340))))))))

(declare-fun e!1604844 () Regex!7557)

(assert (=> b!2537279 (= e!1604844 e!1604840)))

(declare-fun e!1604841 () Regex!7557)

(declare-fun b!2537280 () Bool)

(assert (=> b!2537280 (= e!1604841 (ite (= c!14016 (c!405655 (ite c!405727 (regOne!15627 (regOne!15627 r!27340)) (regTwo!15626 (regOne!15627 r!27340))))) EmptyExpr!7557 EmptyLang!7557))))

(declare-fun b!2537281 () Bool)

(assert (=> b!2537281 (= e!1604843 e!1604841)))

(declare-fun c!405789 () Bool)

(assert (=> b!2537281 (= c!405789 ((_ is ElementMatch!7557) (ite c!405727 (regOne!15627 (regOne!15627 r!27340)) (regTwo!15626 (regOne!15627 r!27340)))))))

(declare-fun b!2537282 () Bool)

(assert (=> b!2537282 (= c!405791 ((_ is Union!7557) (ite c!405727 (regOne!15627 (regOne!15627 r!27340)) (regTwo!15626 (regOne!15627 r!27340)))))))

(declare-fun e!1604842 () Regex!7557)

(assert (=> b!2537282 (= e!1604841 e!1604842)))

(declare-fun d!720830 () Bool)

(declare-fun lt!901611 () Regex!7557)

(assert (=> d!720830 (validRegex!3183 lt!901611)))

(assert (=> d!720830 (= lt!901611 e!1604843)))

(declare-fun c!405790 () Bool)

(assert (=> d!720830 (= c!405790 (or ((_ is EmptyExpr!7557) (ite c!405727 (regOne!15627 (regOne!15627 r!27340)) (regTwo!15626 (regOne!15627 r!27340)))) ((_ is EmptyLang!7557) (ite c!405727 (regOne!15627 (regOne!15627 r!27340)) (regTwo!15626 (regOne!15627 r!27340))))))))

(assert (=> d!720830 (validRegex!3183 (ite c!405727 (regOne!15627 (regOne!15627 r!27340)) (regTwo!15626 (regOne!15627 r!27340))))))

(assert (=> d!720830 (= (derivativeStep!2126 (ite c!405727 (regOne!15627 (regOne!15627 r!27340)) (regTwo!15626 (regOne!15627 r!27340))) c!14016) lt!901611)))

(declare-fun b!2537283 () Bool)

(assert (=> b!2537283 (= e!1604844 (Concat!12253 call!159916 (ite c!405727 (regOne!15627 (regOne!15627 r!27340)) (regTwo!15626 (regOne!15627 r!27340)))))))

(declare-fun bm!159911 () Bool)

(assert (=> bm!159911 (= call!159916 call!159915)))

(declare-fun b!2537284 () Bool)

(assert (=> b!2537284 (= e!1604842 e!1604844)))

(assert (=> b!2537284 (= c!405788 ((_ is Star!7557) (ite c!405727 (regOne!15627 (regOne!15627 r!27340)) (regTwo!15626 (regOne!15627 r!27340)))))))

(declare-fun b!2537285 () Bool)

(declare-fun call!159917 () Regex!7557)

(assert (=> b!2537285 (= e!1604840 (Union!7557 (Concat!12253 call!159914 (regTwo!15626 (ite c!405727 (regOne!15627 (regOne!15627 r!27340)) (regTwo!15626 (regOne!15627 r!27340))))) call!159917))))

(declare-fun bm!159912 () Bool)

(assert (=> bm!159912 (= call!159917 (derivativeStep!2126 (ite c!405791 (regOne!15627 (ite c!405727 (regOne!15627 (regOne!15627 r!27340)) (regTwo!15626 (regOne!15627 r!27340)))) (regTwo!15626 (ite c!405727 (regOne!15627 (regOne!15627 r!27340)) (regTwo!15626 (regOne!15627 r!27340))))) c!14016))))

(declare-fun b!2537286 () Bool)

(assert (=> b!2537286 (= e!1604842 (Union!7557 call!159917 call!159915))))

(assert (= (and d!720830 c!405790) b!2537277))

(assert (= (and d!720830 (not c!405790)) b!2537281))

(assert (= (and b!2537281 c!405789) b!2537280))

(assert (= (and b!2537281 (not c!405789)) b!2537282))

(assert (= (and b!2537282 c!405791) b!2537286))

(assert (= (and b!2537282 (not c!405791)) b!2537284))

(assert (= (and b!2537284 c!405788) b!2537283))

(assert (= (and b!2537284 (not c!405788)) b!2537279))

(assert (= (and b!2537279 c!405792) b!2537285))

(assert (= (and b!2537279 (not c!405792)) b!2537278))

(assert (= (or b!2537285 b!2537278) bm!159909))

(assert (= (or b!2537283 bm!159909) bm!159911))

(assert (= (or b!2537286 bm!159911) bm!159910))

(assert (= (or b!2537286 b!2537285) bm!159912))

(declare-fun m!2885343 () Bool)

(assert (=> bm!159910 m!2885343))

(declare-fun m!2885345 () Bool)

(assert (=> b!2537279 m!2885345))

(declare-fun m!2885347 () Bool)

(assert (=> d!720830 m!2885347))

(declare-fun m!2885349 () Bool)

(assert (=> d!720830 m!2885349))

(declare-fun m!2885351 () Bool)

(assert (=> bm!159912 m!2885351))

(assert (=> bm!159859 d!720830))

(declare-fun bm!159913 () Bool)

(declare-fun call!159918 () Bool)

(declare-fun c!405793 () Bool)

(declare-fun c!405794 () Bool)

(assert (=> bm!159913 (= call!159918 (validRegex!3183 (ite c!405793 (reg!7886 lt!901585) (ite c!405794 (regOne!15627 lt!901585) (regTwo!15626 lt!901585)))))))

(declare-fun b!2537287 () Bool)

(declare-fun res!1069940 () Bool)

(declare-fun e!1604846 () Bool)

(assert (=> b!2537287 (=> (not res!1069940) (not e!1604846))))

(declare-fun call!159919 () Bool)

(assert (=> b!2537287 (= res!1069940 call!159919)))

(declare-fun e!1604851 () Bool)

(assert (=> b!2537287 (= e!1604851 e!1604846)))

(declare-fun b!2537288 () Bool)

(declare-fun e!1604850 () Bool)

(assert (=> b!2537288 (= e!1604850 call!159918)))

(declare-fun b!2537289 () Bool)

(declare-fun e!1604845 () Bool)

(assert (=> b!2537289 (= e!1604845 call!159919)))

(declare-fun b!2537290 () Bool)

(declare-fun e!1604849 () Bool)

(declare-fun e!1604848 () Bool)

(assert (=> b!2537290 (= e!1604849 e!1604848)))

(assert (=> b!2537290 (= c!405793 ((_ is Star!7557) lt!901585))))

(declare-fun b!2537291 () Bool)

(declare-fun call!159920 () Bool)

(assert (=> b!2537291 (= e!1604846 call!159920)))

(declare-fun bm!159914 () Bool)

(assert (=> bm!159914 (= call!159920 (validRegex!3183 (ite c!405794 (regTwo!15627 lt!901585) (regOne!15626 lt!901585))))))

(declare-fun bm!159915 () Bool)

(assert (=> bm!159915 (= call!159919 call!159918)))

(declare-fun d!720832 () Bool)

(declare-fun res!1069942 () Bool)

(assert (=> d!720832 (=> res!1069942 e!1604849)))

(assert (=> d!720832 (= res!1069942 ((_ is ElementMatch!7557) lt!901585))))

(assert (=> d!720832 (= (validRegex!3183 lt!901585) e!1604849)))

(declare-fun b!2537292 () Bool)

(assert (=> b!2537292 (= e!1604848 e!1604851)))

(assert (=> b!2537292 (= c!405794 ((_ is Union!7557) lt!901585))))

(declare-fun b!2537293 () Bool)

(declare-fun res!1069943 () Bool)

(declare-fun e!1604847 () Bool)

(assert (=> b!2537293 (=> res!1069943 e!1604847)))

(assert (=> b!2537293 (= res!1069943 (not ((_ is Concat!12253) lt!901585)))))

(assert (=> b!2537293 (= e!1604851 e!1604847)))

(declare-fun b!2537294 () Bool)

(assert (=> b!2537294 (= e!1604848 e!1604850)))

(declare-fun res!1069939 () Bool)

(assert (=> b!2537294 (= res!1069939 (not (nullable!2474 (reg!7886 lt!901585))))))

(assert (=> b!2537294 (=> (not res!1069939) (not e!1604850))))

(declare-fun b!2537295 () Bool)

(assert (=> b!2537295 (= e!1604847 e!1604845)))

(declare-fun res!1069941 () Bool)

(assert (=> b!2537295 (=> (not res!1069941) (not e!1604845))))

(assert (=> b!2537295 (= res!1069941 call!159920)))

(assert (= (and d!720832 (not res!1069942)) b!2537290))

(assert (= (and b!2537290 c!405793) b!2537294))

(assert (= (and b!2537290 (not c!405793)) b!2537292))

(assert (= (and b!2537294 res!1069939) b!2537288))

(assert (= (and b!2537292 c!405794) b!2537287))

(assert (= (and b!2537292 (not c!405794)) b!2537293))

(assert (= (and b!2537287 res!1069940) b!2537291))

(assert (= (and b!2537293 (not res!1069943)) b!2537295))

(assert (= (and b!2537295 res!1069941) b!2537289))

(assert (= (or b!2537287 b!2537289) bm!159915))

(assert (= (or b!2537291 b!2537295) bm!159914))

(assert (= (or b!2537288 bm!159915) bm!159913))

(declare-fun m!2885353 () Bool)

(assert (=> bm!159913 m!2885353))

(declare-fun m!2885355 () Bool)

(assert (=> bm!159914 m!2885355))

(declare-fun m!2885357 () Bool)

(assert (=> b!2537294 m!2885357))

(assert (=> d!720776 d!720832))

(declare-fun c!405795 () Bool)

(declare-fun c!405796 () Bool)

(declare-fun bm!159916 () Bool)

(declare-fun call!159921 () Bool)

(assert (=> bm!159916 (= call!159921 (validRegex!3183 (ite c!405795 (reg!7886 (derivativeStep!2126 (regOne!15627 r!27340) c!14016)) (ite c!405796 (regOne!15627 (derivativeStep!2126 (regOne!15627 r!27340) c!14016)) (regTwo!15626 (derivativeStep!2126 (regOne!15627 r!27340) c!14016))))))))

(declare-fun b!2537296 () Bool)

(declare-fun res!1069945 () Bool)

(declare-fun e!1604853 () Bool)

(assert (=> b!2537296 (=> (not res!1069945) (not e!1604853))))

(declare-fun call!159922 () Bool)

(assert (=> b!2537296 (= res!1069945 call!159922)))

(declare-fun e!1604858 () Bool)

(assert (=> b!2537296 (= e!1604858 e!1604853)))

(declare-fun b!2537297 () Bool)

(declare-fun e!1604857 () Bool)

(assert (=> b!2537297 (= e!1604857 call!159921)))

(declare-fun b!2537298 () Bool)

(declare-fun e!1604852 () Bool)

(assert (=> b!2537298 (= e!1604852 call!159922)))

(declare-fun b!2537299 () Bool)

(declare-fun e!1604856 () Bool)

(declare-fun e!1604855 () Bool)

(assert (=> b!2537299 (= e!1604856 e!1604855)))

(assert (=> b!2537299 (= c!405795 ((_ is Star!7557) (derivativeStep!2126 (regOne!15627 r!27340) c!14016)))))

(declare-fun b!2537300 () Bool)

(declare-fun call!159923 () Bool)

(assert (=> b!2537300 (= e!1604853 call!159923)))

(declare-fun bm!159917 () Bool)

(assert (=> bm!159917 (= call!159923 (validRegex!3183 (ite c!405796 (regTwo!15627 (derivativeStep!2126 (regOne!15627 r!27340) c!14016)) (regOne!15626 (derivativeStep!2126 (regOne!15627 r!27340) c!14016)))))))

(declare-fun bm!159918 () Bool)

(assert (=> bm!159918 (= call!159922 call!159921)))

(declare-fun d!720834 () Bool)

(declare-fun res!1069947 () Bool)

(assert (=> d!720834 (=> res!1069947 e!1604856)))

(assert (=> d!720834 (= res!1069947 ((_ is ElementMatch!7557) (derivativeStep!2126 (regOne!15627 r!27340) c!14016)))))

(assert (=> d!720834 (= (validRegex!3183 (derivativeStep!2126 (regOne!15627 r!27340) c!14016)) e!1604856)))

(declare-fun b!2537301 () Bool)

(assert (=> b!2537301 (= e!1604855 e!1604858)))

(assert (=> b!2537301 (= c!405796 ((_ is Union!7557) (derivativeStep!2126 (regOne!15627 r!27340) c!14016)))))

(declare-fun b!2537302 () Bool)

(declare-fun res!1069948 () Bool)

(declare-fun e!1604854 () Bool)

(assert (=> b!2537302 (=> res!1069948 e!1604854)))

(assert (=> b!2537302 (= res!1069948 (not ((_ is Concat!12253) (derivativeStep!2126 (regOne!15627 r!27340) c!14016))))))

(assert (=> b!2537302 (= e!1604858 e!1604854)))

(declare-fun b!2537303 () Bool)

(assert (=> b!2537303 (= e!1604855 e!1604857)))

(declare-fun res!1069944 () Bool)

(assert (=> b!2537303 (= res!1069944 (not (nullable!2474 (reg!7886 (derivativeStep!2126 (regOne!15627 r!27340) c!14016)))))))

(assert (=> b!2537303 (=> (not res!1069944) (not e!1604857))))

(declare-fun b!2537304 () Bool)

(assert (=> b!2537304 (= e!1604854 e!1604852)))

(declare-fun res!1069946 () Bool)

(assert (=> b!2537304 (=> (not res!1069946) (not e!1604852))))

(assert (=> b!2537304 (= res!1069946 call!159923)))

(assert (= (and d!720834 (not res!1069947)) b!2537299))

(assert (= (and b!2537299 c!405795) b!2537303))

(assert (= (and b!2537299 (not c!405795)) b!2537301))

(assert (= (and b!2537303 res!1069944) b!2537297))

(assert (= (and b!2537301 c!405796) b!2537296))

(assert (= (and b!2537301 (not c!405796)) b!2537302))

(assert (= (and b!2537296 res!1069945) b!2537300))

(assert (= (and b!2537302 (not res!1069948)) b!2537304))

(assert (= (and b!2537304 res!1069946) b!2537298))

(assert (= (or b!2537296 b!2537298) bm!159918))

(assert (= (or b!2537300 b!2537304) bm!159917))

(assert (= (or b!2537297 bm!159918) bm!159916))

(declare-fun m!2885359 () Bool)

(assert (=> bm!159916 m!2885359))

(declare-fun m!2885361 () Bool)

(assert (=> bm!159917 m!2885361))

(declare-fun m!2885363 () Bool)

(assert (=> b!2537303 m!2885363))

(assert (=> d!720776 d!720834))

(assert (=> d!720772 d!720756))

(assert (=> d!720772 d!720766))

(declare-fun d!720838 () Bool)

(assert (=> d!720838 (contains!5299 (firstChars!90 (regTwo!15627 r!27340)) c!14016)))

(assert (=> d!720838 true))

(declare-fun _$136!103 () Unit!43315)

(assert (=> d!720838 (= (choose!15014 (regTwo!15627 r!27340) c!14016 tl!4068) _$136!103)))

(declare-fun bs!469313 () Bool)

(assert (= bs!469313 d!720838))

(assert (=> bs!469313 m!2885089))

(assert (=> bs!469313 m!2885089))

(assert (=> bs!469313 m!2885091))

(assert (=> d!720772 d!720838))

(assert (=> d!720772 d!720818))

(declare-fun d!720844 () Bool)

(declare-fun lt!901612 () Bool)

(assert (=> d!720844 (= lt!901612 (select (content!4053 (t!211321 (firstChars!90 (regTwo!15627 r!27340)))) c!14016))))

(declare-fun e!1604880 () Bool)

(assert (=> d!720844 (= lt!901612 e!1604880)))

(declare-fun res!1069965 () Bool)

(assert (=> d!720844 (=> (not res!1069965) (not e!1604880))))

(assert (=> d!720844 (= res!1069965 ((_ is Cons!29522) (t!211321 (firstChars!90 (regTwo!15627 r!27340)))))))

(assert (=> d!720844 (= (contains!5299 (t!211321 (firstChars!90 (regTwo!15627 r!27340))) c!14016) lt!901612)))

(declare-fun b!2537332 () Bool)

(declare-fun e!1604881 () Bool)

(assert (=> b!2537332 (= e!1604880 e!1604881)))

(declare-fun res!1069964 () Bool)

(assert (=> b!2537332 (=> res!1069964 e!1604881)))

(assert (=> b!2537332 (= res!1069964 (= (h!34942 (t!211321 (firstChars!90 (regTwo!15627 r!27340)))) c!14016))))

(declare-fun b!2537333 () Bool)

(assert (=> b!2537333 (= e!1604881 (contains!5299 (t!211321 (t!211321 (firstChars!90 (regTwo!15627 r!27340)))) c!14016))))

(assert (= (and d!720844 res!1069965) b!2537332))

(assert (= (and b!2537332 (not res!1069964)) b!2537333))

(declare-fun m!2885383 () Bool)

(assert (=> d!720844 m!2885383))

(declare-fun m!2885385 () Bool)

(assert (=> d!720844 m!2885385))

(declare-fun m!2885387 () Bool)

(assert (=> b!2537333 m!2885387))

(assert (=> b!2536890 d!720844))

(declare-fun b!2537338 () Bool)

(declare-fun res!1069966 () Bool)

(declare-fun e!1604884 () Bool)

(assert (=> b!2537338 (=> (not res!1069966) (not e!1604884))))

(declare-fun lt!901614 () List!29622)

(assert (=> b!2537338 (= res!1069966 (= (size!22935 lt!901614) (+ (size!22935 call!159826) (size!22935 (ite c!405680 call!159828 call!159829)))))))

(declare-fun e!1604883 () List!29622)

(declare-fun b!2537337 () Bool)

(assert (=> b!2537337 (= e!1604883 (Cons!29522 (h!34942 call!159826) (++!7247 (t!211321 call!159826) (ite c!405680 call!159828 call!159829))))))

(declare-fun b!2537336 () Bool)

(assert (=> b!2537336 (= e!1604883 (ite c!405680 call!159828 call!159829))))

(declare-fun b!2537339 () Bool)

(assert (=> b!2537339 (= e!1604884 (or (not (= (ite c!405680 call!159828 call!159829) Nil!29522)) (= lt!901614 call!159826)))))

(declare-fun d!720848 () Bool)

(assert (=> d!720848 e!1604884))

(declare-fun res!1069967 () Bool)

(assert (=> d!720848 (=> (not res!1069967) (not e!1604884))))

(assert (=> d!720848 (= res!1069967 (= (content!4053 lt!901614) ((_ map or) (content!4053 call!159826) (content!4053 (ite c!405680 call!159828 call!159829)))))))

(assert (=> d!720848 (= lt!901614 e!1604883)))

(declare-fun c!405805 () Bool)

(assert (=> d!720848 (= c!405805 ((_ is Nil!29522) call!159826))))

(assert (=> d!720848 (= (++!7247 call!159826 (ite c!405680 call!159828 call!159829)) lt!901614)))

(assert (= (and d!720848 c!405805) b!2537336))

(assert (= (and d!720848 (not c!405805)) b!2537337))

(assert (= (and d!720848 res!1069967) b!2537338))

(assert (= (and b!2537338 res!1069966) b!2537339))

(declare-fun m!2885395 () Bool)

(assert (=> b!2537338 m!2885395))

(declare-fun m!2885397 () Bool)

(assert (=> b!2537338 m!2885397))

(declare-fun m!2885399 () Bool)

(assert (=> b!2537338 m!2885399))

(declare-fun m!2885403 () Bool)

(assert (=> b!2537337 m!2885403))

(declare-fun m!2885405 () Bool)

(assert (=> d!720848 m!2885405))

(declare-fun m!2885407 () Bool)

(assert (=> d!720848 m!2885407))

(declare-fun m!2885409 () Bool)

(assert (=> d!720848 m!2885409))

(assert (=> bm!159823 d!720848))

(declare-fun c!405812 () Bool)

(declare-fun call!159937 () Bool)

(declare-fun c!405811 () Bool)

(declare-fun bm!159932 () Bool)

(assert (=> bm!159932 (= call!159937 (validRegex!3183 (ite c!405811 (reg!7886 (ite c!405757 (reg!7886 r!27340) (ite c!405758 (regOne!15627 r!27340) (regTwo!15626 r!27340)))) (ite c!405812 (regOne!15627 (ite c!405757 (reg!7886 r!27340) (ite c!405758 (regOne!15627 r!27340) (regTwo!15626 r!27340)))) (regTwo!15626 (ite c!405757 (reg!7886 r!27340) (ite c!405758 (regOne!15627 r!27340) (regTwo!15626 r!27340))))))))))

(declare-fun b!2537350 () Bool)

(declare-fun res!1069969 () Bool)

(declare-fun e!1604891 () Bool)

(assert (=> b!2537350 (=> (not res!1069969) (not e!1604891))))

(declare-fun call!159938 () Bool)

(assert (=> b!2537350 (= res!1069969 call!159938)))

(declare-fun e!1604896 () Bool)

(assert (=> b!2537350 (= e!1604896 e!1604891)))

(declare-fun b!2537351 () Bool)

(declare-fun e!1604895 () Bool)

(assert (=> b!2537351 (= e!1604895 call!159937)))

(declare-fun b!2537352 () Bool)

(declare-fun e!1604890 () Bool)

(assert (=> b!2537352 (= e!1604890 call!159938)))

(declare-fun b!2537353 () Bool)

(declare-fun e!1604894 () Bool)

(declare-fun e!1604893 () Bool)

(assert (=> b!2537353 (= e!1604894 e!1604893)))

(assert (=> b!2537353 (= c!405811 ((_ is Star!7557) (ite c!405757 (reg!7886 r!27340) (ite c!405758 (regOne!15627 r!27340) (regTwo!15626 r!27340)))))))

(declare-fun b!2537354 () Bool)

(declare-fun call!159939 () Bool)

(assert (=> b!2537354 (= e!1604891 call!159939)))

(declare-fun bm!159933 () Bool)

(assert (=> bm!159933 (= call!159939 (validRegex!3183 (ite c!405812 (regTwo!15627 (ite c!405757 (reg!7886 r!27340) (ite c!405758 (regOne!15627 r!27340) (regTwo!15626 r!27340)))) (regOne!15626 (ite c!405757 (reg!7886 r!27340) (ite c!405758 (regOne!15627 r!27340) (regTwo!15626 r!27340)))))))))

(declare-fun bm!159934 () Bool)

(assert (=> bm!159934 (= call!159938 call!159937)))

(declare-fun d!720852 () Bool)

(declare-fun res!1069971 () Bool)

(assert (=> d!720852 (=> res!1069971 e!1604894)))

(assert (=> d!720852 (= res!1069971 ((_ is ElementMatch!7557) (ite c!405757 (reg!7886 r!27340) (ite c!405758 (regOne!15627 r!27340) (regTwo!15626 r!27340)))))))

(assert (=> d!720852 (= (validRegex!3183 (ite c!405757 (reg!7886 r!27340) (ite c!405758 (regOne!15627 r!27340) (regTwo!15626 r!27340)))) e!1604894)))

(declare-fun b!2537355 () Bool)

(assert (=> b!2537355 (= e!1604893 e!1604896)))

(assert (=> b!2537355 (= c!405812 ((_ is Union!7557) (ite c!405757 (reg!7886 r!27340) (ite c!405758 (regOne!15627 r!27340) (regTwo!15626 r!27340)))))))

(declare-fun b!2537356 () Bool)

(declare-fun res!1069972 () Bool)

(declare-fun e!1604892 () Bool)

(assert (=> b!2537356 (=> res!1069972 e!1604892)))

(assert (=> b!2537356 (= res!1069972 (not ((_ is Concat!12253) (ite c!405757 (reg!7886 r!27340) (ite c!405758 (regOne!15627 r!27340) (regTwo!15626 r!27340))))))))

(assert (=> b!2537356 (= e!1604896 e!1604892)))

(declare-fun b!2537357 () Bool)

(assert (=> b!2537357 (= e!1604893 e!1604895)))

(declare-fun res!1069968 () Bool)

(assert (=> b!2537357 (= res!1069968 (not (nullable!2474 (reg!7886 (ite c!405757 (reg!7886 r!27340) (ite c!405758 (regOne!15627 r!27340) (regTwo!15626 r!27340)))))))))

(assert (=> b!2537357 (=> (not res!1069968) (not e!1604895))))

(declare-fun b!2537358 () Bool)

(assert (=> b!2537358 (= e!1604892 e!1604890)))

(declare-fun res!1069970 () Bool)

(assert (=> b!2537358 (=> (not res!1069970) (not e!1604890))))

(assert (=> b!2537358 (= res!1069970 call!159939)))

(assert (= (and d!720852 (not res!1069971)) b!2537353))

(assert (= (and b!2537353 c!405811) b!2537357))

(assert (= (and b!2537353 (not c!405811)) b!2537355))

(assert (= (and b!2537357 res!1069968) b!2537351))

(assert (= (and b!2537355 c!405812) b!2537350))

(assert (= (and b!2537355 (not c!405812)) b!2537356))

(assert (= (and b!2537350 res!1069969) b!2537354))

(assert (= (and b!2537356 (not res!1069972)) b!2537358))

(assert (= (and b!2537358 res!1069970) b!2537352))

(assert (= (or b!2537350 b!2537352) bm!159934))

(assert (= (or b!2537354 b!2537358) bm!159933))

(assert (= (or b!2537351 bm!159934) bm!159932))

(declare-fun m!2885411 () Bool)

(assert (=> bm!159932 m!2885411))

(declare-fun m!2885413 () Bool)

(assert (=> bm!159933 m!2885413))

(declare-fun m!2885415 () Bool)

(assert (=> b!2537357 m!2885415))

(assert (=> bm!159884 d!720852))

(declare-fun d!720854 () Bool)

(declare-fun lt!901616 () Regex!7557)

(assert (=> d!720854 (validRegex!3183 lt!901616)))

(declare-fun e!1604897 () Regex!7557)

(assert (=> d!720854 (= lt!901616 e!1604897)))

(declare-fun c!405813 () Bool)

(assert (=> d!720854 (= c!405813 ((_ is Cons!29522) (t!211321 tl!4068)))))

(assert (=> d!720854 (validRegex!3183 (derivativeStep!2126 (derivativeStep!2126 (regTwo!15627 r!27340) c!14016) (h!34942 tl!4068)))))

(assert (=> d!720854 (= (derivative!252 (derivativeStep!2126 (derivativeStep!2126 (regTwo!15627 r!27340) c!14016) (h!34942 tl!4068)) (t!211321 tl!4068)) lt!901616)))

(declare-fun b!2537359 () Bool)

(assert (=> b!2537359 (= e!1604897 (derivative!252 (derivativeStep!2126 (derivativeStep!2126 (derivativeStep!2126 (regTwo!15627 r!27340) c!14016) (h!34942 tl!4068)) (h!34942 (t!211321 tl!4068))) (t!211321 (t!211321 tl!4068))))))

(declare-fun b!2537360 () Bool)

(assert (=> b!2537360 (= e!1604897 (derivativeStep!2126 (derivativeStep!2126 (regTwo!15627 r!27340) c!14016) (h!34942 tl!4068)))))

(assert (= (and d!720854 c!405813) b!2537359))

(assert (= (and d!720854 (not c!405813)) b!2537360))

(declare-fun m!2885423 () Bool)

(assert (=> d!720854 m!2885423))

(assert (=> d!720854 m!2885279))

(declare-fun m!2885427 () Bool)

(assert (=> d!720854 m!2885427))

(assert (=> b!2537359 m!2885279))

(declare-fun m!2885429 () Bool)

(assert (=> b!2537359 m!2885429))

(assert (=> b!2537359 m!2885429))

(declare-fun m!2885431 () Bool)

(assert (=> b!2537359 m!2885431))

(assert (=> b!2537152 d!720854))

(declare-fun bm!159938 () Bool)

(declare-fun call!159943 () Regex!7557)

(declare-fun call!159945 () Regex!7557)

(assert (=> bm!159938 (= call!159943 call!159945)))

(declare-fun b!2537370 () Bool)

(declare-fun e!1604908 () Regex!7557)

(assert (=> b!2537370 (= e!1604908 EmptyLang!7557)))

(declare-fun bm!159939 () Bool)

(declare-fun call!159944 () Regex!7557)

(declare-fun c!405816 () Bool)

(declare-fun c!405819 () Bool)

(assert (=> bm!159939 (= call!159944 (derivativeStep!2126 (ite c!405819 (regTwo!15627 (derivativeStep!2126 (regTwo!15627 r!27340) c!14016)) (ite c!405816 (reg!7886 (derivativeStep!2126 (regTwo!15627 r!27340) c!14016)) (regOne!15626 (derivativeStep!2126 (regTwo!15627 r!27340) c!14016)))) (h!34942 tl!4068)))))

(declare-fun b!2537371 () Bool)

(declare-fun e!1604905 () Regex!7557)

(assert (=> b!2537371 (= e!1604905 (Union!7557 (Concat!12253 call!159943 (regTwo!15626 (derivativeStep!2126 (regTwo!15627 r!27340) c!14016))) EmptyLang!7557))))

(declare-fun b!2537372 () Bool)

(declare-fun c!405820 () Bool)

(assert (=> b!2537372 (= c!405820 (nullable!2474 (regOne!15626 (derivativeStep!2126 (regTwo!15627 r!27340) c!14016))))))

(declare-fun e!1604909 () Regex!7557)

(assert (=> b!2537372 (= e!1604909 e!1604905)))

(declare-fun b!2537373 () Bool)

(declare-fun e!1604906 () Regex!7557)

(assert (=> b!2537373 (= e!1604906 (ite (= (h!34942 tl!4068) (c!405655 (derivativeStep!2126 (regTwo!15627 r!27340) c!14016))) EmptyExpr!7557 EmptyLang!7557))))

(declare-fun b!2537374 () Bool)

(assert (=> b!2537374 (= e!1604908 e!1604906)))

(declare-fun c!405817 () Bool)

(assert (=> b!2537374 (= c!405817 ((_ is ElementMatch!7557) (derivativeStep!2126 (regTwo!15627 r!27340) c!14016)))))

(declare-fun b!2537375 () Bool)

(assert (=> b!2537375 (= c!405819 ((_ is Union!7557) (derivativeStep!2126 (regTwo!15627 r!27340) c!14016)))))

(declare-fun e!1604907 () Regex!7557)

(assert (=> b!2537375 (= e!1604906 e!1604907)))

(declare-fun d!720858 () Bool)

(declare-fun lt!901617 () Regex!7557)

(assert (=> d!720858 (validRegex!3183 lt!901617)))

(assert (=> d!720858 (= lt!901617 e!1604908)))

(declare-fun c!405818 () Bool)

(assert (=> d!720858 (= c!405818 (or ((_ is EmptyExpr!7557) (derivativeStep!2126 (regTwo!15627 r!27340) c!14016)) ((_ is EmptyLang!7557) (derivativeStep!2126 (regTwo!15627 r!27340) c!14016))))))

(assert (=> d!720858 (validRegex!3183 (derivativeStep!2126 (regTwo!15627 r!27340) c!14016))))

(assert (=> d!720858 (= (derivativeStep!2126 (derivativeStep!2126 (regTwo!15627 r!27340) c!14016) (h!34942 tl!4068)) lt!901617)))

(declare-fun b!2537376 () Bool)

(assert (=> b!2537376 (= e!1604909 (Concat!12253 call!159945 (derivativeStep!2126 (regTwo!15627 r!27340) c!14016)))))

(declare-fun bm!159940 () Bool)

(assert (=> bm!159940 (= call!159945 call!159944)))

(declare-fun b!2537377 () Bool)

(assert (=> b!2537377 (= e!1604907 e!1604909)))

(assert (=> b!2537377 (= c!405816 ((_ is Star!7557) (derivativeStep!2126 (regTwo!15627 r!27340) c!14016)))))

(declare-fun call!159946 () Regex!7557)

(declare-fun b!2537378 () Bool)

(assert (=> b!2537378 (= e!1604905 (Union!7557 (Concat!12253 call!159943 (regTwo!15626 (derivativeStep!2126 (regTwo!15627 r!27340) c!14016))) call!159946))))

(declare-fun bm!159941 () Bool)

(assert (=> bm!159941 (= call!159946 (derivativeStep!2126 (ite c!405819 (regOne!15627 (derivativeStep!2126 (regTwo!15627 r!27340) c!14016)) (regTwo!15626 (derivativeStep!2126 (regTwo!15627 r!27340) c!14016))) (h!34942 tl!4068)))))

(declare-fun b!2537379 () Bool)

(assert (=> b!2537379 (= e!1604907 (Union!7557 call!159946 call!159944))))

(assert (= (and d!720858 c!405818) b!2537370))

(assert (= (and d!720858 (not c!405818)) b!2537374))

(assert (= (and b!2537374 c!405817) b!2537373))

(assert (= (and b!2537374 (not c!405817)) b!2537375))

(assert (= (and b!2537375 c!405819) b!2537379))

(assert (= (and b!2537375 (not c!405819)) b!2537377))

(assert (= (and b!2537377 c!405816) b!2537376))

(assert (= (and b!2537377 (not c!405816)) b!2537372))

(assert (= (and b!2537372 c!405820) b!2537378))

(assert (= (and b!2537372 (not c!405820)) b!2537371))

(assert (= (or b!2537378 b!2537371) bm!159938))

(assert (= (or b!2537376 bm!159938) bm!159940))

(assert (= (or b!2537379 bm!159940) bm!159939))

(assert (= (or b!2537379 b!2537378) bm!159941))

(declare-fun m!2885439 () Bool)

(assert (=> bm!159939 m!2885439))

(declare-fun m!2885441 () Bool)

(assert (=> b!2537372 m!2885441))

(declare-fun m!2885443 () Bool)

(assert (=> d!720858 m!2885443))

(assert (=> d!720858 m!2885097))

(assert (=> d!720858 m!2885277))

(declare-fun m!2885445 () Bool)

(assert (=> bm!159941 m!2885445))

(assert (=> b!2537152 d!720858))

(declare-fun c!405823 () Bool)

(declare-fun c!405824 () Bool)

(declare-fun call!159950 () Bool)

(declare-fun bm!159945 () Bool)

(assert (=> bm!159945 (= call!159950 (validRegex!3183 (ite c!405823 (reg!7886 lt!901592) (ite c!405824 (regOne!15627 lt!901592) (regTwo!15626 lt!901592)))))))

(declare-fun b!2537389 () Bool)

(declare-fun res!1069984 () Bool)

(declare-fun e!1604918 () Bool)

(assert (=> b!2537389 (=> (not res!1069984) (not e!1604918))))

(declare-fun call!159951 () Bool)

(assert (=> b!2537389 (= res!1069984 call!159951)))

(declare-fun e!1604923 () Bool)

(assert (=> b!2537389 (= e!1604923 e!1604918)))

(declare-fun b!2537390 () Bool)

(declare-fun e!1604922 () Bool)

(assert (=> b!2537390 (= e!1604922 call!159950)))

(declare-fun b!2537391 () Bool)

(declare-fun e!1604917 () Bool)

(assert (=> b!2537391 (= e!1604917 call!159951)))

(declare-fun b!2537392 () Bool)

(declare-fun e!1604921 () Bool)

(declare-fun e!1604920 () Bool)

(assert (=> b!2537392 (= e!1604921 e!1604920)))

(assert (=> b!2537392 (= c!405823 ((_ is Star!7557) lt!901592))))

(declare-fun b!2537393 () Bool)

(declare-fun call!159952 () Bool)

(assert (=> b!2537393 (= e!1604918 call!159952)))

(declare-fun bm!159946 () Bool)

(assert (=> bm!159946 (= call!159952 (validRegex!3183 (ite c!405824 (regTwo!15627 lt!901592) (regOne!15626 lt!901592))))))

(declare-fun bm!159947 () Bool)

(assert (=> bm!159947 (= call!159951 call!159950)))

(declare-fun d!720862 () Bool)

(declare-fun res!1069986 () Bool)

(assert (=> d!720862 (=> res!1069986 e!1604921)))

(assert (=> d!720862 (= res!1069986 ((_ is ElementMatch!7557) lt!901592))))

(assert (=> d!720862 (= (validRegex!3183 lt!901592) e!1604921)))

(declare-fun b!2537394 () Bool)

(assert (=> b!2537394 (= e!1604920 e!1604923)))

(assert (=> b!2537394 (= c!405824 ((_ is Union!7557) lt!901592))))

(declare-fun b!2537395 () Bool)

(declare-fun res!1069987 () Bool)

(declare-fun e!1604919 () Bool)

(assert (=> b!2537395 (=> res!1069987 e!1604919)))

(assert (=> b!2537395 (= res!1069987 (not ((_ is Concat!12253) lt!901592)))))

(assert (=> b!2537395 (= e!1604923 e!1604919)))

(declare-fun b!2537396 () Bool)

(assert (=> b!2537396 (= e!1604920 e!1604922)))

(declare-fun res!1069983 () Bool)

(assert (=> b!2537396 (= res!1069983 (not (nullable!2474 (reg!7886 lt!901592))))))

(assert (=> b!2537396 (=> (not res!1069983) (not e!1604922))))

(declare-fun b!2537397 () Bool)

(assert (=> b!2537397 (= e!1604919 e!1604917)))

(declare-fun res!1069985 () Bool)

(assert (=> b!2537397 (=> (not res!1069985) (not e!1604917))))

(assert (=> b!2537397 (= res!1069985 call!159952)))

(assert (= (and d!720862 (not res!1069986)) b!2537392))

(assert (= (and b!2537392 c!405823) b!2537396))

(assert (= (and b!2537392 (not c!405823)) b!2537394))

(assert (= (and b!2537396 res!1069983) b!2537390))

(assert (= (and b!2537394 c!405824) b!2537389))

(assert (= (and b!2537394 (not c!405824)) b!2537395))

(assert (= (and b!2537389 res!1069984) b!2537393))

(assert (= (and b!2537395 (not res!1069987)) b!2537397))

(assert (= (and b!2537397 res!1069985) b!2537391))

(assert (= (or b!2537389 b!2537391) bm!159947))

(assert (= (or b!2537393 b!2537397) bm!159946))

(assert (= (or b!2537390 bm!159947) bm!159945))

(declare-fun m!2885453 () Bool)

(assert (=> bm!159945 m!2885453))

(declare-fun m!2885455 () Bool)

(assert (=> bm!159946 m!2885455))

(declare-fun m!2885457 () Bool)

(assert (=> b!2537396 m!2885457))

(assert (=> d!720778 d!720862))

(declare-fun c!405825 () Bool)

(declare-fun bm!159948 () Bool)

(declare-fun call!159953 () Bool)

(declare-fun c!405826 () Bool)

(assert (=> bm!159948 (= call!159953 (validRegex!3183 (ite c!405825 (reg!7886 (regOne!15627 r!27340)) (ite c!405826 (regOne!15627 (regOne!15627 r!27340)) (regTwo!15626 (regOne!15627 r!27340))))))))

(declare-fun b!2537398 () Bool)

(declare-fun res!1069989 () Bool)

(declare-fun e!1604925 () Bool)

(assert (=> b!2537398 (=> (not res!1069989) (not e!1604925))))

(declare-fun call!159954 () Bool)

(assert (=> b!2537398 (= res!1069989 call!159954)))

(declare-fun e!1604930 () Bool)

(assert (=> b!2537398 (= e!1604930 e!1604925)))

(declare-fun b!2537399 () Bool)

(declare-fun e!1604929 () Bool)

(assert (=> b!2537399 (= e!1604929 call!159953)))

(declare-fun b!2537400 () Bool)

(declare-fun e!1604924 () Bool)

(assert (=> b!2537400 (= e!1604924 call!159954)))

(declare-fun b!2537401 () Bool)

(declare-fun e!1604928 () Bool)

(declare-fun e!1604927 () Bool)

(assert (=> b!2537401 (= e!1604928 e!1604927)))

(assert (=> b!2537401 (= c!405825 ((_ is Star!7557) (regOne!15627 r!27340)))))

(declare-fun b!2537402 () Bool)

(declare-fun call!159955 () Bool)

(assert (=> b!2537402 (= e!1604925 call!159955)))

(declare-fun bm!159949 () Bool)

(assert (=> bm!159949 (= call!159955 (validRegex!3183 (ite c!405826 (regTwo!15627 (regOne!15627 r!27340)) (regOne!15626 (regOne!15627 r!27340)))))))

(declare-fun bm!159950 () Bool)

(assert (=> bm!159950 (= call!159954 call!159953)))

(declare-fun d!720866 () Bool)

(declare-fun res!1069991 () Bool)

(assert (=> d!720866 (=> res!1069991 e!1604928)))

(assert (=> d!720866 (= res!1069991 ((_ is ElementMatch!7557) (regOne!15627 r!27340)))))

(assert (=> d!720866 (= (validRegex!3183 (regOne!15627 r!27340)) e!1604928)))

(declare-fun b!2537403 () Bool)

(assert (=> b!2537403 (= e!1604927 e!1604930)))

(assert (=> b!2537403 (= c!405826 ((_ is Union!7557) (regOne!15627 r!27340)))))

(declare-fun b!2537404 () Bool)

(declare-fun res!1069992 () Bool)

(declare-fun e!1604926 () Bool)

(assert (=> b!2537404 (=> res!1069992 e!1604926)))

(assert (=> b!2537404 (= res!1069992 (not ((_ is Concat!12253) (regOne!15627 r!27340))))))

(assert (=> b!2537404 (= e!1604930 e!1604926)))

(declare-fun b!2537405 () Bool)

(assert (=> b!2537405 (= e!1604927 e!1604929)))

(declare-fun res!1069988 () Bool)

(assert (=> b!2537405 (= res!1069988 (not (nullable!2474 (reg!7886 (regOne!15627 r!27340)))))))

(assert (=> b!2537405 (=> (not res!1069988) (not e!1604929))))

(declare-fun b!2537406 () Bool)

(assert (=> b!2537406 (= e!1604926 e!1604924)))

(declare-fun res!1069990 () Bool)

(assert (=> b!2537406 (=> (not res!1069990) (not e!1604924))))

(assert (=> b!2537406 (= res!1069990 call!159955)))

(assert (= (and d!720866 (not res!1069991)) b!2537401))

(assert (= (and b!2537401 c!405825) b!2537405))

(assert (= (and b!2537401 (not c!405825)) b!2537403))

(assert (= (and b!2537405 res!1069988) b!2537399))

(assert (= (and b!2537403 c!405826) b!2537398))

(assert (= (and b!2537403 (not c!405826)) b!2537404))

(assert (= (and b!2537398 res!1069989) b!2537402))

(assert (= (and b!2537404 (not res!1069992)) b!2537406))

(assert (= (and b!2537406 res!1069990) b!2537400))

(assert (= (or b!2537398 b!2537400) bm!159950))

(assert (= (or b!2537402 b!2537406) bm!159949))

(assert (= (or b!2537399 bm!159950) bm!159948))

(declare-fun m!2885467 () Bool)

(assert (=> bm!159948 m!2885467))

(declare-fun m!2885469 () Bool)

(assert (=> bm!159949 m!2885469))

(declare-fun m!2885471 () Bool)

(assert (=> b!2537405 m!2885471))

(assert (=> d!720778 d!720866))

(declare-fun b!2537419 () Bool)

(declare-fun e!1604941 () List!29622)

(declare-fun e!1604940 () List!29622)

(assert (=> b!2537419 (= e!1604941 e!1604940)))

(declare-fun c!405834 () Bool)

(assert (=> b!2537419 (= c!405834 ((_ is ElementMatch!7557) (ite c!405674 (regOne!15627 r!27340) (regOne!15626 r!27340))))))

(declare-fun c!405836 () Bool)

(declare-fun c!405832 () Bool)

(declare-fun c!405835 () Bool)

(declare-fun call!159964 () List!29622)

(declare-fun bm!159955 () Bool)

(assert (=> bm!159955 (= call!159964 (firstChars!90 (ite c!405835 (reg!7886 (ite c!405674 (regOne!15627 r!27340) (regOne!15626 r!27340))) (ite c!405832 (regTwo!15627 (ite c!405674 (regOne!15627 r!27340) (regOne!15626 r!27340))) (ite c!405836 (regTwo!15626 (ite c!405674 (regOne!15627 r!27340) (regOne!15626 r!27340))) (regOne!15626 (ite c!405674 (regOne!15627 r!27340) (regOne!15626 r!27340))))))))))

(declare-fun bm!159956 () Bool)

(declare-fun call!159963 () List!29622)

(declare-fun call!159962 () List!29622)

(assert (=> bm!159956 (= call!159963 call!159962)))

(declare-fun b!2537420 () Bool)

(assert (=> b!2537420 (= c!405836 (nullable!2474 (regOne!15626 (ite c!405674 (regOne!15627 r!27340) (regOne!15626 r!27340)))))))

(declare-fun e!1604942 () List!29622)

(declare-fun e!1604939 () List!29622)

(assert (=> b!2537420 (= e!1604942 e!1604939)))

(declare-fun call!159961 () List!29622)

(declare-fun call!159960 () List!29622)

(declare-fun bm!159957 () Bool)

(assert (=> bm!159957 (= call!159961 (++!7247 call!159960 (ite c!405832 call!159962 call!159963)))))

(declare-fun d!720872 () Bool)

(declare-fun c!405833 () Bool)

(assert (=> d!720872 (= c!405833 (or ((_ is EmptyExpr!7557) (ite c!405674 (regOne!15627 r!27340) (regOne!15626 r!27340))) ((_ is EmptyLang!7557) (ite c!405674 (regOne!15627 r!27340) (regOne!15626 r!27340)))))))

(assert (=> d!720872 (= (firstChars!90 (ite c!405674 (regOne!15627 r!27340) (regOne!15626 r!27340))) e!1604941)))

(declare-fun b!2537421 () Bool)

(assert (=> b!2537421 (= e!1604941 Nil!29522)))

(declare-fun b!2537422 () Bool)

(declare-fun e!1604938 () List!29622)

(assert (=> b!2537422 (= e!1604938 call!159964)))

(declare-fun b!2537423 () Bool)

(assert (=> b!2537423 (= c!405835 ((_ is Star!7557) (ite c!405674 (regOne!15627 r!27340) (regOne!15626 r!27340))))))

(assert (=> b!2537423 (= e!1604940 e!1604938)))

(declare-fun b!2537424 () Bool)

(assert (=> b!2537424 (= e!1604939 call!159961)))

(declare-fun b!2537425 () Bool)

(assert (=> b!2537425 (= e!1604940 (Cons!29522 (c!405655 (ite c!405674 (regOne!15627 r!27340) (regOne!15626 r!27340))) Nil!29522))))

(declare-fun b!2537426 () Bool)

(assert (=> b!2537426 (= e!1604939 call!159963)))

(declare-fun bm!159958 () Bool)

(assert (=> bm!159958 (= call!159962 call!159964)))

(declare-fun b!2537427 () Bool)

(assert (=> b!2537427 (= e!1604938 e!1604942)))

(assert (=> b!2537427 (= c!405832 ((_ is Union!7557) (ite c!405674 (regOne!15627 r!27340) (regOne!15626 r!27340))))))

(declare-fun b!2537428 () Bool)

(assert (=> b!2537428 (= e!1604942 call!159961)))

(declare-fun bm!159959 () Bool)

(assert (=> bm!159959 (= call!159960 (firstChars!90 (ite c!405832 (regOne!15627 (ite c!405674 (regOne!15627 r!27340) (regOne!15626 r!27340))) (regOne!15626 (ite c!405674 (regOne!15627 r!27340) (regOne!15626 r!27340))))))))

(assert (= (and d!720872 c!405833) b!2537421))

(assert (= (and d!720872 (not c!405833)) b!2537419))

(assert (= (and b!2537419 c!405834) b!2537425))

(assert (= (and b!2537419 (not c!405834)) b!2537423))

(assert (= (and b!2537423 c!405835) b!2537422))

(assert (= (and b!2537423 (not c!405835)) b!2537427))

(assert (= (and b!2537427 c!405832) b!2537428))

(assert (= (and b!2537427 (not c!405832)) b!2537420))

(assert (= (and b!2537420 c!405836) b!2537424))

(assert (= (and b!2537420 (not c!405836)) b!2537426))

(assert (= (or b!2537424 b!2537426) bm!159956))

(assert (= (or b!2537428 b!2537424) bm!159959))

(assert (= (or b!2537428 bm!159956) bm!159958))

(assert (= (or b!2537428 b!2537424) bm!159957))

(assert (= (or b!2537422 bm!159958) bm!159955))

(declare-fun m!2885477 () Bool)

(assert (=> bm!159955 m!2885477))

(declare-fun m!2885481 () Bool)

(assert (=> b!2537420 m!2885481))

(declare-fun m!2885485 () Bool)

(assert (=> bm!159957 m!2885485))

(declare-fun m!2885489 () Bool)

(assert (=> bm!159959 m!2885489))

(assert (=> bm!159820 d!720872))

(declare-fun call!159965 () Bool)

(declare-fun bm!159960 () Bool)

(declare-fun c!405842 () Bool)

(declare-fun c!405837 () Bool)

(assert (=> bm!159960 (= call!159965 (validRegex!3183 (ite c!405837 (reg!7886 (ite c!405772 (reg!7886 (regTwo!15627 r!27340)) (ite c!405773 (regOne!15627 (regTwo!15627 r!27340)) (regTwo!15626 (regTwo!15627 r!27340))))) (ite c!405842 (regOne!15627 (ite c!405772 (reg!7886 (regTwo!15627 r!27340)) (ite c!405773 (regOne!15627 (regTwo!15627 r!27340)) (regTwo!15626 (regTwo!15627 r!27340))))) (regTwo!15626 (ite c!405772 (reg!7886 (regTwo!15627 r!27340)) (ite c!405773 (regOne!15627 (regTwo!15627 r!27340)) (regTwo!15626 (regTwo!15627 r!27340)))))))))))

(declare-fun b!2537429 () Bool)

(declare-fun res!1069996 () Bool)

(declare-fun e!1604944 () Bool)

(assert (=> b!2537429 (=> (not res!1069996) (not e!1604944))))

(declare-fun call!159968 () Bool)

(assert (=> b!2537429 (= res!1069996 call!159968)))

(declare-fun e!1604953 () Bool)

(assert (=> b!2537429 (= e!1604953 e!1604944)))

(declare-fun b!2537431 () Bool)

(declare-fun e!1604952 () Bool)

(assert (=> b!2537431 (= e!1604952 call!159965)))

(declare-fun b!2537432 () Bool)

(declare-fun e!1604943 () Bool)

(assert (=> b!2537432 (= e!1604943 call!159968)))

(declare-fun b!2537433 () Bool)

(declare-fun e!1604951 () Bool)

(declare-fun e!1604948 () Bool)

(assert (=> b!2537433 (= e!1604951 e!1604948)))

(assert (=> b!2537433 (= c!405837 ((_ is Star!7557) (ite c!405772 (reg!7886 (regTwo!15627 r!27340)) (ite c!405773 (regOne!15627 (regTwo!15627 r!27340)) (regTwo!15626 (regTwo!15627 r!27340))))))))

(declare-fun b!2537435 () Bool)

(declare-fun call!159969 () Bool)

(assert (=> b!2537435 (= e!1604944 call!159969)))

(declare-fun bm!159964 () Bool)

(assert (=> bm!159964 (= call!159969 (validRegex!3183 (ite c!405842 (regTwo!15627 (ite c!405772 (reg!7886 (regTwo!15627 r!27340)) (ite c!405773 (regOne!15627 (regTwo!15627 r!27340)) (regTwo!15626 (regTwo!15627 r!27340))))) (regOne!15626 (ite c!405772 (reg!7886 (regTwo!15627 r!27340)) (ite c!405773 (regOne!15627 (regTwo!15627 r!27340)) (regTwo!15626 (regTwo!15627 r!27340))))))))))

(declare-fun bm!159966 () Bool)

(assert (=> bm!159966 (= call!159968 call!159965)))

(declare-fun d!720876 () Bool)

(declare-fun res!1069998 () Bool)

(assert (=> d!720876 (=> res!1069998 e!1604951)))

(assert (=> d!720876 (= res!1069998 ((_ is ElementMatch!7557) (ite c!405772 (reg!7886 (regTwo!15627 r!27340)) (ite c!405773 (regOne!15627 (regTwo!15627 r!27340)) (regTwo!15626 (regTwo!15627 r!27340))))))))

(assert (=> d!720876 (= (validRegex!3183 (ite c!405772 (reg!7886 (regTwo!15627 r!27340)) (ite c!405773 (regOne!15627 (regTwo!15627 r!27340)) (regTwo!15626 (regTwo!15627 r!27340))))) e!1604951)))

(declare-fun b!2537437 () Bool)

(assert (=> b!2537437 (= e!1604948 e!1604953)))

(assert (=> b!2537437 (= c!405842 ((_ is Union!7557) (ite c!405772 (reg!7886 (regTwo!15627 r!27340)) (ite c!405773 (regOne!15627 (regTwo!15627 r!27340)) (regTwo!15626 (regTwo!15627 r!27340))))))))

(declare-fun b!2537439 () Bool)

(declare-fun res!1069999 () Bool)

(declare-fun e!1604947 () Bool)

(assert (=> b!2537439 (=> res!1069999 e!1604947)))

(assert (=> b!2537439 (= res!1069999 (not ((_ is Concat!12253) (ite c!405772 (reg!7886 (regTwo!15627 r!27340)) (ite c!405773 (regOne!15627 (regTwo!15627 r!27340)) (regTwo!15626 (regTwo!15627 r!27340)))))))))

(assert (=> b!2537439 (= e!1604953 e!1604947)))

(declare-fun b!2537441 () Bool)

(assert (=> b!2537441 (= e!1604948 e!1604952)))

(declare-fun res!1069995 () Bool)

(assert (=> b!2537441 (= res!1069995 (not (nullable!2474 (reg!7886 (ite c!405772 (reg!7886 (regTwo!15627 r!27340)) (ite c!405773 (regOne!15627 (regTwo!15627 r!27340)) (regTwo!15626 (regTwo!15627 r!27340))))))))))

(assert (=> b!2537441 (=> (not res!1069995) (not e!1604952))))

(declare-fun b!2537443 () Bool)

(assert (=> b!2537443 (= e!1604947 e!1604943)))

(declare-fun res!1069997 () Bool)

(assert (=> b!2537443 (=> (not res!1069997) (not e!1604943))))

(assert (=> b!2537443 (= res!1069997 call!159969)))

(assert (= (and d!720876 (not res!1069998)) b!2537433))

(assert (= (and b!2537433 c!405837) b!2537441))

(assert (= (and b!2537433 (not c!405837)) b!2537437))

(assert (= (and b!2537441 res!1069995) b!2537431))

(assert (= (and b!2537437 c!405842) b!2537429))

(assert (= (and b!2537437 (not c!405842)) b!2537439))

(assert (= (and b!2537429 res!1069996) b!2537435))

(assert (= (and b!2537439 (not res!1069999)) b!2537443))

(assert (= (and b!2537443 res!1069997) b!2537432))

(assert (= (or b!2537429 b!2537432) bm!159966))

(assert (= (or b!2537435 b!2537443) bm!159964))

(assert (= (or b!2537431 bm!159966) bm!159960))

(declare-fun m!2885491 () Bool)

(assert (=> bm!159960 m!2885491))

(declare-fun m!2885493 () Bool)

(assert (=> bm!159964 m!2885493))

(declare-fun m!2885495 () Bool)

(assert (=> b!2537441 m!2885495))

(assert (=> bm!159898 d!720876))

(declare-fun c!405845 () Bool)

(declare-fun c!405844 () Bool)

(declare-fun call!159973 () Bool)

(declare-fun bm!159968 () Bool)

(assert (=> bm!159968 (= call!159973 (validRegex!3183 (ite c!405844 (reg!7886 (ite c!405758 (regTwo!15627 r!27340) (regOne!15626 r!27340))) (ite c!405845 (regOne!15627 (ite c!405758 (regTwo!15627 r!27340) (regOne!15626 r!27340))) (regTwo!15626 (ite c!405758 (regTwo!15627 r!27340) (regOne!15626 r!27340)))))))))

(declare-fun b!2537448 () Bool)

(declare-fun res!1070001 () Bool)

(declare-fun e!1604956 () Bool)

(assert (=> b!2537448 (=> (not res!1070001) (not e!1604956))))

(declare-fun call!159974 () Bool)

(assert (=> b!2537448 (= res!1070001 call!159974)))

(declare-fun e!1604961 () Bool)

(assert (=> b!2537448 (= e!1604961 e!1604956)))

(declare-fun b!2537449 () Bool)

(declare-fun e!1604960 () Bool)

(assert (=> b!2537449 (= e!1604960 call!159973)))

(declare-fun b!2537450 () Bool)

(declare-fun e!1604955 () Bool)

(assert (=> b!2537450 (= e!1604955 call!159974)))

(declare-fun b!2537451 () Bool)

(declare-fun e!1604959 () Bool)

(declare-fun e!1604958 () Bool)

(assert (=> b!2537451 (= e!1604959 e!1604958)))

(assert (=> b!2537451 (= c!405844 ((_ is Star!7557) (ite c!405758 (regTwo!15627 r!27340) (regOne!15626 r!27340))))))

(declare-fun b!2537452 () Bool)

(declare-fun call!159975 () Bool)

(assert (=> b!2537452 (= e!1604956 call!159975)))

(declare-fun bm!159969 () Bool)

(assert (=> bm!159969 (= call!159975 (validRegex!3183 (ite c!405845 (regTwo!15627 (ite c!405758 (regTwo!15627 r!27340) (regOne!15626 r!27340))) (regOne!15626 (ite c!405758 (regTwo!15627 r!27340) (regOne!15626 r!27340))))))))

(declare-fun bm!159970 () Bool)

(assert (=> bm!159970 (= call!159974 call!159973)))

(declare-fun d!720878 () Bool)

(declare-fun res!1070003 () Bool)

(assert (=> d!720878 (=> res!1070003 e!1604959)))

(assert (=> d!720878 (= res!1070003 ((_ is ElementMatch!7557) (ite c!405758 (regTwo!15627 r!27340) (regOne!15626 r!27340))))))

(assert (=> d!720878 (= (validRegex!3183 (ite c!405758 (regTwo!15627 r!27340) (regOne!15626 r!27340))) e!1604959)))

(declare-fun b!2537453 () Bool)

(assert (=> b!2537453 (= e!1604958 e!1604961)))

(assert (=> b!2537453 (= c!405845 ((_ is Union!7557) (ite c!405758 (regTwo!15627 r!27340) (regOne!15626 r!27340))))))

(declare-fun b!2537454 () Bool)

(declare-fun res!1070004 () Bool)

(declare-fun e!1604957 () Bool)

(assert (=> b!2537454 (=> res!1070004 e!1604957)))

(assert (=> b!2537454 (= res!1070004 (not ((_ is Concat!12253) (ite c!405758 (regTwo!15627 r!27340) (regOne!15626 r!27340)))))))

(assert (=> b!2537454 (= e!1604961 e!1604957)))

(declare-fun b!2537455 () Bool)

(assert (=> b!2537455 (= e!1604958 e!1604960)))

(declare-fun res!1070000 () Bool)

(assert (=> b!2537455 (= res!1070000 (not (nullable!2474 (reg!7886 (ite c!405758 (regTwo!15627 r!27340) (regOne!15626 r!27340))))))))

(assert (=> b!2537455 (=> (not res!1070000) (not e!1604960))))

(declare-fun b!2537456 () Bool)

(assert (=> b!2537456 (= e!1604957 e!1604955)))

(declare-fun res!1070002 () Bool)

(assert (=> b!2537456 (=> (not res!1070002) (not e!1604955))))

(assert (=> b!2537456 (= res!1070002 call!159975)))

(assert (= (and d!720878 (not res!1070003)) b!2537451))

(assert (= (and b!2537451 c!405844) b!2537455))

(assert (= (and b!2537451 (not c!405844)) b!2537453))

(assert (= (and b!2537455 res!1070000) b!2537449))

(assert (= (and b!2537453 c!405845) b!2537448))

(assert (= (and b!2537453 (not c!405845)) b!2537454))

(assert (= (and b!2537448 res!1070001) b!2537452))

(assert (= (and b!2537454 (not res!1070004)) b!2537456))

(assert (= (and b!2537456 res!1070002) b!2537450))

(assert (= (or b!2537448 b!2537450) bm!159970))

(assert (= (or b!2537452 b!2537456) bm!159969))

(assert (= (or b!2537449 bm!159970) bm!159968))

(declare-fun m!2885505 () Bool)

(assert (=> bm!159968 m!2885505))

(declare-fun m!2885507 () Bool)

(assert (=> bm!159969 m!2885507))

(declare-fun m!2885509 () Bool)

(assert (=> b!2537455 m!2885509))

(assert (=> bm!159885 d!720878))

(declare-fun bm!159971 () Bool)

(declare-fun call!159976 () Regex!7557)

(declare-fun call!159978 () Regex!7557)

(assert (=> bm!159971 (= call!159976 call!159978)))

(declare-fun b!2537457 () Bool)

(declare-fun e!1604965 () Regex!7557)

(assert (=> b!2537457 (= e!1604965 EmptyLang!7557)))

(declare-fun c!405849 () Bool)

(declare-fun bm!159972 () Bool)

(declare-fun c!405846 () Bool)

(declare-fun call!159977 () Regex!7557)

(assert (=> bm!159972 (= call!159977 (derivativeStep!2126 (ite c!405849 (regTwo!15627 (ite c!405733 (regTwo!15627 r!27340) (ite c!405730 (reg!7886 r!27340) (regOne!15626 r!27340)))) (ite c!405846 (reg!7886 (ite c!405733 (regTwo!15627 r!27340) (ite c!405730 (reg!7886 r!27340) (regOne!15626 r!27340)))) (regOne!15626 (ite c!405733 (regTwo!15627 r!27340) (ite c!405730 (reg!7886 r!27340) (regOne!15626 r!27340)))))) c!14016))))

(declare-fun e!1604962 () Regex!7557)

(declare-fun b!2537458 () Bool)

(assert (=> b!2537458 (= e!1604962 (Union!7557 (Concat!12253 call!159976 (regTwo!15626 (ite c!405733 (regTwo!15627 r!27340) (ite c!405730 (reg!7886 r!27340) (regOne!15626 r!27340))))) EmptyLang!7557))))

(declare-fun b!2537459 () Bool)

(declare-fun c!405850 () Bool)

(assert (=> b!2537459 (= c!405850 (nullable!2474 (regOne!15626 (ite c!405733 (regTwo!15627 r!27340) (ite c!405730 (reg!7886 r!27340) (regOne!15626 r!27340))))))))

(declare-fun e!1604966 () Regex!7557)

(assert (=> b!2537459 (= e!1604966 e!1604962)))

(declare-fun e!1604963 () Regex!7557)

(declare-fun b!2537460 () Bool)

(assert (=> b!2537460 (= e!1604963 (ite (= c!14016 (c!405655 (ite c!405733 (regTwo!15627 r!27340) (ite c!405730 (reg!7886 r!27340) (regOne!15626 r!27340))))) EmptyExpr!7557 EmptyLang!7557))))

(declare-fun b!2537461 () Bool)

(assert (=> b!2537461 (= e!1604965 e!1604963)))

(declare-fun c!405847 () Bool)

(assert (=> b!2537461 (= c!405847 ((_ is ElementMatch!7557) (ite c!405733 (regTwo!15627 r!27340) (ite c!405730 (reg!7886 r!27340) (regOne!15626 r!27340)))))))

(declare-fun b!2537462 () Bool)

(assert (=> b!2537462 (= c!405849 ((_ is Union!7557) (ite c!405733 (regTwo!15627 r!27340) (ite c!405730 (reg!7886 r!27340) (regOne!15626 r!27340)))))))

(declare-fun e!1604964 () Regex!7557)

(assert (=> b!2537462 (= e!1604963 e!1604964)))

(declare-fun d!720882 () Bool)

(declare-fun lt!901620 () Regex!7557)

(assert (=> d!720882 (validRegex!3183 lt!901620)))

(assert (=> d!720882 (= lt!901620 e!1604965)))

(declare-fun c!405848 () Bool)

(assert (=> d!720882 (= c!405848 (or ((_ is EmptyExpr!7557) (ite c!405733 (regTwo!15627 r!27340) (ite c!405730 (reg!7886 r!27340) (regOne!15626 r!27340)))) ((_ is EmptyLang!7557) (ite c!405733 (regTwo!15627 r!27340) (ite c!405730 (reg!7886 r!27340) (regOne!15626 r!27340))))))))

(assert (=> d!720882 (validRegex!3183 (ite c!405733 (regTwo!15627 r!27340) (ite c!405730 (reg!7886 r!27340) (regOne!15626 r!27340))))))

(assert (=> d!720882 (= (derivativeStep!2126 (ite c!405733 (regTwo!15627 r!27340) (ite c!405730 (reg!7886 r!27340) (regOne!15626 r!27340))) c!14016) lt!901620)))

(declare-fun b!2537463 () Bool)

(assert (=> b!2537463 (= e!1604966 (Concat!12253 call!159978 (ite c!405733 (regTwo!15627 r!27340) (ite c!405730 (reg!7886 r!27340) (regOne!15626 r!27340)))))))

(declare-fun bm!159973 () Bool)

(assert (=> bm!159973 (= call!159978 call!159977)))

(declare-fun b!2537464 () Bool)

(assert (=> b!2537464 (= e!1604964 e!1604966)))

(assert (=> b!2537464 (= c!405846 ((_ is Star!7557) (ite c!405733 (regTwo!15627 r!27340) (ite c!405730 (reg!7886 r!27340) (regOne!15626 r!27340)))))))

(declare-fun call!159979 () Regex!7557)

(declare-fun b!2537465 () Bool)

(assert (=> b!2537465 (= e!1604962 (Union!7557 (Concat!12253 call!159976 (regTwo!15626 (ite c!405733 (regTwo!15627 r!27340) (ite c!405730 (reg!7886 r!27340) (regOne!15626 r!27340))))) call!159979))))

(declare-fun bm!159974 () Bool)

(assert (=> bm!159974 (= call!159979 (derivativeStep!2126 (ite c!405849 (regOne!15627 (ite c!405733 (regTwo!15627 r!27340) (ite c!405730 (reg!7886 r!27340) (regOne!15626 r!27340)))) (regTwo!15626 (ite c!405733 (regTwo!15627 r!27340) (ite c!405730 (reg!7886 r!27340) (regOne!15626 r!27340))))) c!14016))))

(declare-fun b!2537466 () Bool)

(assert (=> b!2537466 (= e!1604964 (Union!7557 call!159979 call!159977))))

(assert (= (and d!720882 c!405848) b!2537457))

(assert (= (and d!720882 (not c!405848)) b!2537461))

(assert (= (and b!2537461 c!405847) b!2537460))

(assert (= (and b!2537461 (not c!405847)) b!2537462))

(assert (= (and b!2537462 c!405849) b!2537466))

(assert (= (and b!2537462 (not c!405849)) b!2537464))

(assert (= (and b!2537464 c!405846) b!2537463))

(assert (= (and b!2537464 (not c!405846)) b!2537459))

(assert (= (and b!2537459 c!405850) b!2537465))

(assert (= (and b!2537459 (not c!405850)) b!2537458))

(assert (= (or b!2537465 b!2537458) bm!159971))

(assert (= (or b!2537463 bm!159971) bm!159973))

(assert (= (or b!2537466 bm!159973) bm!159972))

(assert (= (or b!2537466 b!2537465) bm!159974))

(declare-fun m!2885511 () Bool)

(assert (=> bm!159972 m!2885511))

(declare-fun m!2885513 () Bool)

(assert (=> b!2537459 m!2885513))

(declare-fun m!2885515 () Bool)

(assert (=> d!720882 m!2885515))

(declare-fun m!2885517 () Bool)

(assert (=> d!720882 m!2885517))

(declare-fun m!2885519 () Bool)

(assert (=> bm!159974 m!2885519))

(assert (=> bm!159861 d!720882))

(declare-fun bm!159975 () Bool)

(declare-fun call!159980 () Regex!7557)

(declare-fun call!159982 () Regex!7557)

(assert (=> bm!159975 (= call!159980 call!159982)))

(declare-fun b!2537467 () Bool)

(declare-fun e!1604970 () Regex!7557)

(assert (=> b!2537467 (= e!1604970 EmptyLang!7557)))

(declare-fun call!159981 () Regex!7557)

(declare-fun c!405851 () Bool)

(declare-fun bm!159976 () Bool)

(declare-fun c!405854 () Bool)

(assert (=> bm!159976 (= call!159981 (derivativeStep!2126 (ite c!405854 (regTwo!15627 (ite c!405727 (regTwo!15627 (regOne!15627 r!27340)) (ite c!405724 (reg!7886 (regOne!15627 r!27340)) (regOne!15626 (regOne!15627 r!27340))))) (ite c!405851 (reg!7886 (ite c!405727 (regTwo!15627 (regOne!15627 r!27340)) (ite c!405724 (reg!7886 (regOne!15627 r!27340)) (regOne!15626 (regOne!15627 r!27340))))) (regOne!15626 (ite c!405727 (regTwo!15627 (regOne!15627 r!27340)) (ite c!405724 (reg!7886 (regOne!15627 r!27340)) (regOne!15626 (regOne!15627 r!27340))))))) c!14016))))

(declare-fun b!2537468 () Bool)

(declare-fun e!1604967 () Regex!7557)

(assert (=> b!2537468 (= e!1604967 (Union!7557 (Concat!12253 call!159980 (regTwo!15626 (ite c!405727 (regTwo!15627 (regOne!15627 r!27340)) (ite c!405724 (reg!7886 (regOne!15627 r!27340)) (regOne!15626 (regOne!15627 r!27340)))))) EmptyLang!7557))))

(declare-fun b!2537469 () Bool)

(declare-fun c!405855 () Bool)

(assert (=> b!2537469 (= c!405855 (nullable!2474 (regOne!15626 (ite c!405727 (regTwo!15627 (regOne!15627 r!27340)) (ite c!405724 (reg!7886 (regOne!15627 r!27340)) (regOne!15626 (regOne!15627 r!27340)))))))))

(declare-fun e!1604971 () Regex!7557)

(assert (=> b!2537469 (= e!1604971 e!1604967)))

(declare-fun b!2537470 () Bool)

(declare-fun e!1604968 () Regex!7557)

(assert (=> b!2537470 (= e!1604968 (ite (= c!14016 (c!405655 (ite c!405727 (regTwo!15627 (regOne!15627 r!27340)) (ite c!405724 (reg!7886 (regOne!15627 r!27340)) (regOne!15626 (regOne!15627 r!27340)))))) EmptyExpr!7557 EmptyLang!7557))))

(declare-fun b!2537471 () Bool)

(assert (=> b!2537471 (= e!1604970 e!1604968)))

(declare-fun c!405852 () Bool)

(assert (=> b!2537471 (= c!405852 ((_ is ElementMatch!7557) (ite c!405727 (regTwo!15627 (regOne!15627 r!27340)) (ite c!405724 (reg!7886 (regOne!15627 r!27340)) (regOne!15626 (regOne!15627 r!27340))))))))

(declare-fun b!2537472 () Bool)

(assert (=> b!2537472 (= c!405854 ((_ is Union!7557) (ite c!405727 (regTwo!15627 (regOne!15627 r!27340)) (ite c!405724 (reg!7886 (regOne!15627 r!27340)) (regOne!15626 (regOne!15627 r!27340))))))))

(declare-fun e!1604969 () Regex!7557)

(assert (=> b!2537472 (= e!1604968 e!1604969)))

(declare-fun d!720884 () Bool)

(declare-fun lt!901621 () Regex!7557)

(assert (=> d!720884 (validRegex!3183 lt!901621)))

(assert (=> d!720884 (= lt!901621 e!1604970)))

(declare-fun c!405853 () Bool)

(assert (=> d!720884 (= c!405853 (or ((_ is EmptyExpr!7557) (ite c!405727 (regTwo!15627 (regOne!15627 r!27340)) (ite c!405724 (reg!7886 (regOne!15627 r!27340)) (regOne!15626 (regOne!15627 r!27340))))) ((_ is EmptyLang!7557) (ite c!405727 (regTwo!15627 (regOne!15627 r!27340)) (ite c!405724 (reg!7886 (regOne!15627 r!27340)) (regOne!15626 (regOne!15627 r!27340)))))))))

(assert (=> d!720884 (validRegex!3183 (ite c!405727 (regTwo!15627 (regOne!15627 r!27340)) (ite c!405724 (reg!7886 (regOne!15627 r!27340)) (regOne!15626 (regOne!15627 r!27340)))))))

(assert (=> d!720884 (= (derivativeStep!2126 (ite c!405727 (regTwo!15627 (regOne!15627 r!27340)) (ite c!405724 (reg!7886 (regOne!15627 r!27340)) (regOne!15626 (regOne!15627 r!27340)))) c!14016) lt!901621)))

(declare-fun b!2537473 () Bool)

(assert (=> b!2537473 (= e!1604971 (Concat!12253 call!159982 (ite c!405727 (regTwo!15627 (regOne!15627 r!27340)) (ite c!405724 (reg!7886 (regOne!15627 r!27340)) (regOne!15626 (regOne!15627 r!27340))))))))

(declare-fun bm!159977 () Bool)

(assert (=> bm!159977 (= call!159982 call!159981)))

(declare-fun b!2537474 () Bool)

(assert (=> b!2537474 (= e!1604969 e!1604971)))

(assert (=> b!2537474 (= c!405851 ((_ is Star!7557) (ite c!405727 (regTwo!15627 (regOne!15627 r!27340)) (ite c!405724 (reg!7886 (regOne!15627 r!27340)) (regOne!15626 (regOne!15627 r!27340))))))))

(declare-fun call!159983 () Regex!7557)

(declare-fun b!2537475 () Bool)

(assert (=> b!2537475 (= e!1604967 (Union!7557 (Concat!12253 call!159980 (regTwo!15626 (ite c!405727 (regTwo!15627 (regOne!15627 r!27340)) (ite c!405724 (reg!7886 (regOne!15627 r!27340)) (regOne!15626 (regOne!15627 r!27340)))))) call!159983))))

(declare-fun bm!159978 () Bool)

(assert (=> bm!159978 (= call!159983 (derivativeStep!2126 (ite c!405854 (regOne!15627 (ite c!405727 (regTwo!15627 (regOne!15627 r!27340)) (ite c!405724 (reg!7886 (regOne!15627 r!27340)) (regOne!15626 (regOne!15627 r!27340))))) (regTwo!15626 (ite c!405727 (regTwo!15627 (regOne!15627 r!27340)) (ite c!405724 (reg!7886 (regOne!15627 r!27340)) (regOne!15626 (regOne!15627 r!27340)))))) c!14016))))

(declare-fun b!2537476 () Bool)

(assert (=> b!2537476 (= e!1604969 (Union!7557 call!159983 call!159981))))

(assert (= (and d!720884 c!405853) b!2537467))

(assert (= (and d!720884 (not c!405853)) b!2537471))

(assert (= (and b!2537471 c!405852) b!2537470))

(assert (= (and b!2537471 (not c!405852)) b!2537472))

(assert (= (and b!2537472 c!405854) b!2537476))

(assert (= (and b!2537472 (not c!405854)) b!2537474))

(assert (= (and b!2537474 c!405851) b!2537473))

(assert (= (and b!2537474 (not c!405851)) b!2537469))

(assert (= (and b!2537469 c!405855) b!2537475))

(assert (= (and b!2537469 (not c!405855)) b!2537468))

(assert (= (or b!2537475 b!2537468) bm!159975))

(assert (= (or b!2537473 bm!159975) bm!159977))

(assert (= (or b!2537476 bm!159977) bm!159976))

(assert (= (or b!2537476 b!2537475) bm!159978))

(declare-fun m!2885521 () Bool)

(assert (=> bm!159976 m!2885521))

(declare-fun m!2885523 () Bool)

(assert (=> b!2537469 m!2885523))

(declare-fun m!2885525 () Bool)

(assert (=> d!720884 m!2885525))

(declare-fun m!2885527 () Bool)

(assert (=> d!720884 m!2885527))

(declare-fun m!2885529 () Bool)

(assert (=> bm!159978 m!2885529))

(assert (=> bm!159857 d!720884))

(declare-fun bm!159979 () Bool)

(declare-fun call!159984 () Bool)

(declare-fun c!405857 () Bool)

(declare-fun c!405856 () Bool)

(assert (=> bm!159979 (= call!159984 (validRegex!3183 (ite c!405856 (reg!7886 lt!901594) (ite c!405857 (regOne!15627 lt!901594) (regTwo!15626 lt!901594)))))))

(declare-fun b!2537477 () Bool)

(declare-fun res!1070006 () Bool)

(declare-fun e!1604973 () Bool)

(assert (=> b!2537477 (=> (not res!1070006) (not e!1604973))))

(declare-fun call!159985 () Bool)

(assert (=> b!2537477 (= res!1070006 call!159985)))

(declare-fun e!1604978 () Bool)

(assert (=> b!2537477 (= e!1604978 e!1604973)))

(declare-fun b!2537478 () Bool)

(declare-fun e!1604977 () Bool)

(assert (=> b!2537478 (= e!1604977 call!159984)))

(declare-fun b!2537479 () Bool)

(declare-fun e!1604972 () Bool)

(assert (=> b!2537479 (= e!1604972 call!159985)))

(declare-fun b!2537480 () Bool)

(declare-fun e!1604976 () Bool)

(declare-fun e!1604975 () Bool)

(assert (=> b!2537480 (= e!1604976 e!1604975)))

(assert (=> b!2537480 (= c!405856 ((_ is Star!7557) lt!901594))))

(declare-fun b!2537481 () Bool)

(declare-fun call!159986 () Bool)

(assert (=> b!2537481 (= e!1604973 call!159986)))

(declare-fun bm!159980 () Bool)

(assert (=> bm!159980 (= call!159986 (validRegex!3183 (ite c!405857 (regTwo!15627 lt!901594) (regOne!15626 lt!901594))))))

(declare-fun bm!159981 () Bool)

(assert (=> bm!159981 (= call!159985 call!159984)))

(declare-fun d!720886 () Bool)

(declare-fun res!1070008 () Bool)

(assert (=> d!720886 (=> res!1070008 e!1604976)))

(assert (=> d!720886 (= res!1070008 ((_ is ElementMatch!7557) lt!901594))))

(assert (=> d!720886 (= (validRegex!3183 lt!901594) e!1604976)))

(declare-fun b!2537482 () Bool)

(assert (=> b!2537482 (= e!1604975 e!1604978)))

(assert (=> b!2537482 (= c!405857 ((_ is Union!7557) lt!901594))))

(declare-fun b!2537483 () Bool)

(declare-fun res!1070009 () Bool)

(declare-fun e!1604974 () Bool)

(assert (=> b!2537483 (=> res!1070009 e!1604974)))

(assert (=> b!2537483 (= res!1070009 (not ((_ is Concat!12253) lt!901594)))))

(assert (=> b!2537483 (= e!1604978 e!1604974)))

(declare-fun b!2537484 () Bool)

(assert (=> b!2537484 (= e!1604975 e!1604977)))

(declare-fun res!1070005 () Bool)

(assert (=> b!2537484 (= res!1070005 (not (nullable!2474 (reg!7886 lt!901594))))))

(assert (=> b!2537484 (=> (not res!1070005) (not e!1604977))))

(declare-fun b!2537485 () Bool)

(assert (=> b!2537485 (= e!1604974 e!1604972)))

(declare-fun res!1070007 () Bool)

(assert (=> b!2537485 (=> (not res!1070007) (not e!1604972))))

(assert (=> b!2537485 (= res!1070007 call!159986)))

(assert (= (and d!720886 (not res!1070008)) b!2537480))

(assert (= (and b!2537480 c!405856) b!2537484))

(assert (= (and b!2537480 (not c!405856)) b!2537482))

(assert (= (and b!2537484 res!1070005) b!2537478))

(assert (= (and b!2537482 c!405857) b!2537477))

(assert (= (and b!2537482 (not c!405857)) b!2537483))

(assert (= (and b!2537477 res!1070006) b!2537481))

(assert (= (and b!2537483 (not res!1070009)) b!2537485))

(assert (= (and b!2537485 res!1070007) b!2537479))

(assert (= (or b!2537477 b!2537479) bm!159981))

(assert (= (or b!2537481 b!2537485) bm!159980))

(assert (= (or b!2537478 bm!159981) bm!159979))

(declare-fun m!2885531 () Bool)

(assert (=> bm!159979 m!2885531))

(declare-fun m!2885533 () Bool)

(assert (=> bm!159980 m!2885533))

(declare-fun m!2885535 () Bool)

(assert (=> b!2537484 m!2885535))

(assert (=> d!720788 d!720886))

(assert (=> d!720788 d!720790))

(declare-fun b!2537500 () Bool)

(declare-fun e!1604994 () List!29622)

(declare-fun e!1604993 () List!29622)

(assert (=> b!2537500 (= e!1604994 e!1604993)))

(declare-fun c!405862 () Bool)

(assert (=> b!2537500 (= c!405862 ((_ is ElementMatch!7557) (ite c!405680 (regOne!15627 (regTwo!15627 r!27340)) (regOne!15626 (regTwo!15627 r!27340)))))))

(declare-fun bm!159982 () Bool)

(declare-fun c!405864 () Bool)

(declare-fun c!405863 () Bool)

(declare-fun c!405860 () Bool)

(declare-fun call!159991 () List!29622)

(assert (=> bm!159982 (= call!159991 (firstChars!90 (ite c!405863 (reg!7886 (ite c!405680 (regOne!15627 (regTwo!15627 r!27340)) (regOne!15626 (regTwo!15627 r!27340)))) (ite c!405860 (regTwo!15627 (ite c!405680 (regOne!15627 (regTwo!15627 r!27340)) (regOne!15626 (regTwo!15627 r!27340)))) (ite c!405864 (regTwo!15626 (ite c!405680 (regOne!15627 (regTwo!15627 r!27340)) (regOne!15626 (regTwo!15627 r!27340)))) (regOne!15626 (ite c!405680 (regOne!15627 (regTwo!15627 r!27340)) (regOne!15626 (regTwo!15627 r!27340)))))))))))

(declare-fun bm!159983 () Bool)

(declare-fun call!159990 () List!29622)

(declare-fun call!159989 () List!29622)

(assert (=> bm!159983 (= call!159990 call!159989)))

(declare-fun b!2537501 () Bool)

(assert (=> b!2537501 (= c!405864 (nullable!2474 (regOne!15626 (ite c!405680 (regOne!15627 (regTwo!15627 r!27340)) (regOne!15626 (regTwo!15627 r!27340))))))))

(declare-fun e!1604995 () List!29622)

(declare-fun e!1604992 () List!29622)

(assert (=> b!2537501 (= e!1604995 e!1604992)))

(declare-fun call!159988 () List!29622)

(declare-fun call!159987 () List!29622)

(declare-fun bm!159984 () Bool)

(assert (=> bm!159984 (= call!159988 (++!7247 call!159987 (ite c!405860 call!159989 call!159990)))))

(declare-fun d!720888 () Bool)

(declare-fun c!405861 () Bool)

(assert (=> d!720888 (= c!405861 (or ((_ is EmptyExpr!7557) (ite c!405680 (regOne!15627 (regTwo!15627 r!27340)) (regOne!15626 (regTwo!15627 r!27340)))) ((_ is EmptyLang!7557) (ite c!405680 (regOne!15627 (regTwo!15627 r!27340)) (regOne!15626 (regTwo!15627 r!27340))))))))

(assert (=> d!720888 (= (firstChars!90 (ite c!405680 (regOne!15627 (regTwo!15627 r!27340)) (regOne!15626 (regTwo!15627 r!27340)))) e!1604994)))

(declare-fun b!2537502 () Bool)

(assert (=> b!2537502 (= e!1604994 Nil!29522)))

(declare-fun b!2537503 () Bool)

(declare-fun e!1604991 () List!29622)

(assert (=> b!2537503 (= e!1604991 call!159991)))

(declare-fun b!2537504 () Bool)

(assert (=> b!2537504 (= c!405863 ((_ is Star!7557) (ite c!405680 (regOne!15627 (regTwo!15627 r!27340)) (regOne!15626 (regTwo!15627 r!27340)))))))

(assert (=> b!2537504 (= e!1604993 e!1604991)))

(declare-fun b!2537505 () Bool)

(assert (=> b!2537505 (= e!1604992 call!159988)))

(declare-fun b!2537506 () Bool)

(assert (=> b!2537506 (= e!1604993 (Cons!29522 (c!405655 (ite c!405680 (regOne!15627 (regTwo!15627 r!27340)) (regOne!15626 (regTwo!15627 r!27340)))) Nil!29522))))

(declare-fun b!2537507 () Bool)

(assert (=> b!2537507 (= e!1604992 call!159990)))

(declare-fun bm!159985 () Bool)

(assert (=> bm!159985 (= call!159989 call!159991)))

(declare-fun b!2537508 () Bool)

(assert (=> b!2537508 (= e!1604991 e!1604995)))

(assert (=> b!2537508 (= c!405860 ((_ is Union!7557) (ite c!405680 (regOne!15627 (regTwo!15627 r!27340)) (regOne!15626 (regTwo!15627 r!27340)))))))

(declare-fun b!2537509 () Bool)

(assert (=> b!2537509 (= e!1604995 call!159988)))

(declare-fun bm!159986 () Bool)

(assert (=> bm!159986 (= call!159987 (firstChars!90 (ite c!405860 (regOne!15627 (ite c!405680 (regOne!15627 (regTwo!15627 r!27340)) (regOne!15626 (regTwo!15627 r!27340)))) (regOne!15626 (ite c!405680 (regOne!15627 (regTwo!15627 r!27340)) (regOne!15626 (regTwo!15627 r!27340)))))))))

(assert (= (and d!720888 c!405861) b!2537502))

(assert (= (and d!720888 (not c!405861)) b!2537500))

(assert (= (and b!2537500 c!405862) b!2537506))

(assert (= (and b!2537500 (not c!405862)) b!2537504))

(assert (= (and b!2537504 c!405863) b!2537503))

(assert (= (and b!2537504 (not c!405863)) b!2537508))

(assert (= (and b!2537508 c!405860) b!2537509))

(assert (= (and b!2537508 (not c!405860)) b!2537501))

(assert (= (and b!2537501 c!405864) b!2537505))

(assert (= (and b!2537501 (not c!405864)) b!2537507))

(assert (= (or b!2537505 b!2537507) bm!159983))

(assert (= (or b!2537509 b!2537505) bm!159986))

(assert (= (or b!2537509 bm!159983) bm!159985))

(assert (= (or b!2537509 b!2537505) bm!159984))

(assert (= (or b!2537503 bm!159985) bm!159982))

(declare-fun m!2885537 () Bool)

(assert (=> bm!159982 m!2885537))

(declare-fun m!2885539 () Bool)

(assert (=> b!2537501 m!2885539))

(declare-fun m!2885541 () Bool)

(assert (=> bm!159984 m!2885541))

(declare-fun m!2885543 () Bool)

(assert (=> bm!159986 m!2885543))

(assert (=> bm!159825 d!720888))

(declare-fun d!720890 () Bool)

(assert (=> d!720890 (= (nullable!2474 (reg!7886 r!27340)) (nullableFct!706 (reg!7886 r!27340)))))

(declare-fun bs!469315 () Bool)

(assert (= bs!469315 d!720890))

(declare-fun m!2885545 () Bool)

(assert (=> bs!469315 m!2885545))

(assert (=> b!2537131 d!720890))

(declare-fun d!720892 () Bool)

(assert (=> d!720892 (= (nullable!2474 (regOne!15626 r!27340)) (nullableFct!706 (regOne!15626 r!27340)))))

(declare-fun bs!469316 () Bool)

(assert (= bs!469316 d!720892))

(declare-fun m!2885547 () Bool)

(assert (=> bs!469316 m!2885547))

(assert (=> b!2537062 d!720892))

(declare-fun d!720894 () Bool)

(declare-fun c!405867 () Bool)

(assert (=> d!720894 (= c!405867 ((_ is Nil!29522) (firstChars!90 r!27340)))))

(declare-fun e!1604998 () (InoxSet C!15272))

(assert (=> d!720894 (= (content!4053 (firstChars!90 r!27340)) e!1604998)))

(declare-fun b!2537514 () Bool)

(assert (=> b!2537514 (= e!1604998 ((as const (Array C!15272 Bool)) false))))

(declare-fun b!2537515 () Bool)

(assert (=> b!2537515 (= e!1604998 ((_ map or) (store ((as const (Array C!15272 Bool)) false) (h!34942 (firstChars!90 r!27340)) true) (content!4053 (t!211321 (firstChars!90 r!27340)))))))

(assert (= (and d!720894 c!405867) b!2537514))

(assert (= (and d!720894 (not c!405867)) b!2537515))

(declare-fun m!2885549 () Bool)

(assert (=> b!2537515 m!2885549))

(declare-fun m!2885551 () Bool)

(assert (=> b!2537515 m!2885551))

(assert (=> d!720770 d!720894))

(declare-fun bm!159991 () Bool)

(declare-fun call!159996 () Regex!7557)

(declare-fun call!159998 () Regex!7557)

(assert (=> bm!159991 (= call!159996 call!159998)))

(declare-fun b!2537516 () Bool)

(declare-fun e!1605002 () Regex!7557)

(assert (=> b!2537516 (= e!1605002 EmptyLang!7557)))

(declare-fun c!405871 () Bool)

(declare-fun bm!159992 () Bool)

(declare-fun c!405868 () Bool)

(declare-fun call!159997 () Regex!7557)

(assert (=> bm!159992 (= call!159997 (derivativeStep!2126 (ite c!405871 (regTwo!15627 (ite c!405770 (regTwo!15627 (regTwo!15627 r!27340)) (ite c!405767 (reg!7886 (regTwo!15627 r!27340)) (regOne!15626 (regTwo!15627 r!27340))))) (ite c!405868 (reg!7886 (ite c!405770 (regTwo!15627 (regTwo!15627 r!27340)) (ite c!405767 (reg!7886 (regTwo!15627 r!27340)) (regOne!15626 (regTwo!15627 r!27340))))) (regOne!15626 (ite c!405770 (regTwo!15627 (regTwo!15627 r!27340)) (ite c!405767 (reg!7886 (regTwo!15627 r!27340)) (regOne!15626 (regTwo!15627 r!27340))))))) c!14016))))

(declare-fun e!1604999 () Regex!7557)

(declare-fun b!2537517 () Bool)

(assert (=> b!2537517 (= e!1604999 (Union!7557 (Concat!12253 call!159996 (regTwo!15626 (ite c!405770 (regTwo!15627 (regTwo!15627 r!27340)) (ite c!405767 (reg!7886 (regTwo!15627 r!27340)) (regOne!15626 (regTwo!15627 r!27340)))))) EmptyLang!7557))))

(declare-fun c!405872 () Bool)

(declare-fun b!2537518 () Bool)

(assert (=> b!2537518 (= c!405872 (nullable!2474 (regOne!15626 (ite c!405770 (regTwo!15627 (regTwo!15627 r!27340)) (ite c!405767 (reg!7886 (regTwo!15627 r!27340)) (regOne!15626 (regTwo!15627 r!27340)))))))))

(declare-fun e!1605003 () Regex!7557)

(assert (=> b!2537518 (= e!1605003 e!1604999)))

(declare-fun e!1605000 () Regex!7557)

(declare-fun b!2537519 () Bool)

(assert (=> b!2537519 (= e!1605000 (ite (= c!14016 (c!405655 (ite c!405770 (regTwo!15627 (regTwo!15627 r!27340)) (ite c!405767 (reg!7886 (regTwo!15627 r!27340)) (regOne!15626 (regTwo!15627 r!27340)))))) EmptyExpr!7557 EmptyLang!7557))))

(declare-fun b!2537520 () Bool)

(assert (=> b!2537520 (= e!1605002 e!1605000)))

(declare-fun c!405869 () Bool)

(assert (=> b!2537520 (= c!405869 ((_ is ElementMatch!7557) (ite c!405770 (regTwo!15627 (regTwo!15627 r!27340)) (ite c!405767 (reg!7886 (regTwo!15627 r!27340)) (regOne!15626 (regTwo!15627 r!27340))))))))

(declare-fun b!2537521 () Bool)

(assert (=> b!2537521 (= c!405871 ((_ is Union!7557) (ite c!405770 (regTwo!15627 (regTwo!15627 r!27340)) (ite c!405767 (reg!7886 (regTwo!15627 r!27340)) (regOne!15626 (regTwo!15627 r!27340))))))))

(declare-fun e!1605001 () Regex!7557)

(assert (=> b!2537521 (= e!1605000 e!1605001)))

(declare-fun d!720896 () Bool)

(declare-fun lt!901622 () Regex!7557)

(assert (=> d!720896 (validRegex!3183 lt!901622)))

(assert (=> d!720896 (= lt!901622 e!1605002)))

(declare-fun c!405870 () Bool)

(assert (=> d!720896 (= c!405870 (or ((_ is EmptyExpr!7557) (ite c!405770 (regTwo!15627 (regTwo!15627 r!27340)) (ite c!405767 (reg!7886 (regTwo!15627 r!27340)) (regOne!15626 (regTwo!15627 r!27340))))) ((_ is EmptyLang!7557) (ite c!405770 (regTwo!15627 (regTwo!15627 r!27340)) (ite c!405767 (reg!7886 (regTwo!15627 r!27340)) (regOne!15626 (regTwo!15627 r!27340)))))))))

(assert (=> d!720896 (validRegex!3183 (ite c!405770 (regTwo!15627 (regTwo!15627 r!27340)) (ite c!405767 (reg!7886 (regTwo!15627 r!27340)) (regOne!15626 (regTwo!15627 r!27340)))))))

(assert (=> d!720896 (= (derivativeStep!2126 (ite c!405770 (regTwo!15627 (regTwo!15627 r!27340)) (ite c!405767 (reg!7886 (regTwo!15627 r!27340)) (regOne!15626 (regTwo!15627 r!27340)))) c!14016) lt!901622)))

(declare-fun b!2537522 () Bool)

(assert (=> b!2537522 (= e!1605003 (Concat!12253 call!159998 (ite c!405770 (regTwo!15627 (regTwo!15627 r!27340)) (ite c!405767 (reg!7886 (regTwo!15627 r!27340)) (regOne!15626 (regTwo!15627 r!27340))))))))

(declare-fun bm!159993 () Bool)

(assert (=> bm!159993 (= call!159998 call!159997)))

(declare-fun b!2537523 () Bool)

(assert (=> b!2537523 (= e!1605001 e!1605003)))

(assert (=> b!2537523 (= c!405868 ((_ is Star!7557) (ite c!405770 (regTwo!15627 (regTwo!15627 r!27340)) (ite c!405767 (reg!7886 (regTwo!15627 r!27340)) (regOne!15626 (regTwo!15627 r!27340))))))))

(declare-fun b!2537524 () Bool)

(declare-fun call!159999 () Regex!7557)

(assert (=> b!2537524 (= e!1604999 (Union!7557 (Concat!12253 call!159996 (regTwo!15626 (ite c!405770 (regTwo!15627 (regTwo!15627 r!27340)) (ite c!405767 (reg!7886 (regTwo!15627 r!27340)) (regOne!15626 (regTwo!15627 r!27340)))))) call!159999))))

(declare-fun bm!159994 () Bool)

(assert (=> bm!159994 (= call!159999 (derivativeStep!2126 (ite c!405871 (regOne!15627 (ite c!405770 (regTwo!15627 (regTwo!15627 r!27340)) (ite c!405767 (reg!7886 (regTwo!15627 r!27340)) (regOne!15626 (regTwo!15627 r!27340))))) (regTwo!15626 (ite c!405770 (regTwo!15627 (regTwo!15627 r!27340)) (ite c!405767 (reg!7886 (regTwo!15627 r!27340)) (regOne!15626 (regTwo!15627 r!27340)))))) c!14016))))

(declare-fun b!2537525 () Bool)

(assert (=> b!2537525 (= e!1605001 (Union!7557 call!159999 call!159997))))

(assert (= (and d!720896 c!405870) b!2537516))

(assert (= (and d!720896 (not c!405870)) b!2537520))

(assert (= (and b!2537520 c!405869) b!2537519))

(assert (= (and b!2537520 (not c!405869)) b!2537521))

(assert (= (and b!2537521 c!405871) b!2537525))

(assert (= (and b!2537521 (not c!405871)) b!2537523))

(assert (= (and b!2537523 c!405868) b!2537522))

(assert (= (and b!2537523 (not c!405868)) b!2537518))

(assert (= (and b!2537518 c!405872) b!2537524))

(assert (= (and b!2537518 (not c!405872)) b!2537517))

(assert (= (or b!2537524 b!2537517) bm!159991))

(assert (= (or b!2537522 bm!159991) bm!159993))

(assert (= (or b!2537525 bm!159993) bm!159992))

(assert (= (or b!2537525 b!2537524) bm!159994))

(declare-fun m!2885553 () Bool)

(assert (=> bm!159992 m!2885553))

(declare-fun m!2885555 () Bool)

(assert (=> b!2537518 m!2885555))

(declare-fun m!2885557 () Bool)

(assert (=> d!720896 m!2885557))

(declare-fun m!2885559 () Bool)

(assert (=> d!720896 m!2885559))

(declare-fun m!2885561 () Bool)

(assert (=> bm!159994 m!2885561))

(assert (=> bm!159895 d!720896))

(assert (=> b!2537156 d!720824))

(declare-fun b!2537581 () Bool)

(declare-fun e!1605049 () Bool)

(declare-fun call!160016 () Bool)

(assert (=> b!2537581 (= e!1605049 call!160016)))

(declare-fun d!720898 () Bool)

(declare-fun res!1070045 () Bool)

(declare-fun e!1605044 () Bool)

(assert (=> d!720898 (=> res!1070045 e!1605044)))

(assert (=> d!720898 (= res!1070045 ((_ is EmptyExpr!7557) (derivative!252 (derivativeStep!2126 r!27340 c!14016) tl!4068)))))

(assert (=> d!720898 (= (nullableFct!706 (derivative!252 (derivativeStep!2126 r!27340 c!14016) tl!4068)) e!1605044)))

(declare-fun b!2537582 () Bool)

(declare-fun e!1605047 () Bool)

(assert (=> b!2537582 (= e!1605044 e!1605047)))

(declare-fun res!1070046 () Bool)

(assert (=> b!2537582 (=> (not res!1070046) (not e!1605047))))

(assert (=> b!2537582 (= res!1070046 (and (not ((_ is EmptyLang!7557) (derivative!252 (derivativeStep!2126 r!27340 c!14016) tl!4068))) (not ((_ is ElementMatch!7557) (derivative!252 (derivativeStep!2126 r!27340 c!14016) tl!4068)))))))

(declare-fun b!2537583 () Bool)

(declare-fun e!1605045 () Bool)

(declare-fun call!160017 () Bool)

(assert (=> b!2537583 (= e!1605045 call!160017)))

(declare-fun b!2537584 () Bool)

(declare-fun e!1605048 () Bool)

(assert (=> b!2537584 (= e!1605048 e!1605049)))

(declare-fun res!1070049 () Bool)

(assert (=> b!2537584 (= res!1070049 call!160017)))

(assert (=> b!2537584 (=> res!1070049 e!1605049)))

(declare-fun b!2537585 () Bool)

(declare-fun e!1605046 () Bool)

(assert (=> b!2537585 (= e!1605047 e!1605046)))

(declare-fun res!1070048 () Bool)

(assert (=> b!2537585 (=> res!1070048 e!1605046)))

(assert (=> b!2537585 (= res!1070048 ((_ is Star!7557) (derivative!252 (derivativeStep!2126 r!27340 c!14016) tl!4068)))))

(declare-fun b!2537586 () Bool)

(assert (=> b!2537586 (= e!1605046 e!1605048)))

(declare-fun c!405888 () Bool)

(assert (=> b!2537586 (= c!405888 ((_ is Union!7557) (derivative!252 (derivativeStep!2126 r!27340 c!14016) tl!4068)))))

(declare-fun b!2537587 () Bool)

(assert (=> b!2537587 (= e!1605048 e!1605045)))

(declare-fun res!1070047 () Bool)

(assert (=> b!2537587 (= res!1070047 call!160016)))

(assert (=> b!2537587 (=> (not res!1070047) (not e!1605045))))

(declare-fun bm!160011 () Bool)

(assert (=> bm!160011 (= call!160017 (nullable!2474 (ite c!405888 (regOne!15627 (derivative!252 (derivativeStep!2126 r!27340 c!14016) tl!4068)) (regTwo!15626 (derivative!252 (derivativeStep!2126 r!27340 c!14016) tl!4068)))))))

(declare-fun bm!160012 () Bool)

(assert (=> bm!160012 (= call!160016 (nullable!2474 (ite c!405888 (regTwo!15627 (derivative!252 (derivativeStep!2126 r!27340 c!14016) tl!4068)) (regOne!15626 (derivative!252 (derivativeStep!2126 r!27340 c!14016) tl!4068)))))))

(assert (= (and d!720898 (not res!1070045)) b!2537582))

(assert (= (and b!2537582 res!1070046) b!2537585))

(assert (= (and b!2537585 (not res!1070048)) b!2537586))

(assert (= (and b!2537586 c!405888) b!2537584))

(assert (= (and b!2537586 (not c!405888)) b!2537587))

(assert (= (and b!2537584 (not res!1070049)) b!2537581))

(assert (= (and b!2537587 res!1070047) b!2537583))

(assert (= (or b!2537581 b!2537587) bm!160012))

(assert (= (or b!2537584 b!2537583) bm!160011))

(declare-fun m!2885593 () Bool)

(assert (=> bm!160011 m!2885593))

(declare-fun m!2885595 () Bool)

(assert (=> bm!160012 m!2885595))

(assert (=> d!720784 d!720898))

(declare-fun d!720910 () Bool)

(assert (=> d!720910 (= (nullable!2474 (regOne!15626 (regOne!15627 r!27340))) (nullableFct!706 (regOne!15626 (regOne!15627 r!27340))))))

(declare-fun bs!469317 () Bool)

(assert (= bs!469317 d!720910))

(declare-fun m!2885599 () Bool)

(assert (=> bs!469317 m!2885599))

(assert (=> b!2537050 d!720910))

(declare-fun bm!160016 () Bool)

(declare-fun c!405891 () Bool)

(declare-fun c!405892 () Bool)

(declare-fun call!160021 () Bool)

(assert (=> bm!160016 (= call!160021 (validRegex!3183 (ite c!405891 (reg!7886 lt!901604) (ite c!405892 (regOne!15627 lt!901604) (regTwo!15626 lt!901604)))))))

(declare-fun b!2537597 () Bool)

(declare-fun res!1070056 () Bool)

(declare-fun e!1605058 () Bool)

(assert (=> b!2537597 (=> (not res!1070056) (not e!1605058))))

(declare-fun call!160022 () Bool)

(assert (=> b!2537597 (= res!1070056 call!160022)))

(declare-fun e!1605063 () Bool)

(assert (=> b!2537597 (= e!1605063 e!1605058)))

(declare-fun b!2537598 () Bool)

(declare-fun e!1605062 () Bool)

(assert (=> b!2537598 (= e!1605062 call!160021)))

(declare-fun b!2537599 () Bool)

(declare-fun e!1605057 () Bool)

(assert (=> b!2537599 (= e!1605057 call!160022)))

(declare-fun b!2537600 () Bool)

(declare-fun e!1605061 () Bool)

(declare-fun e!1605060 () Bool)

(assert (=> b!2537600 (= e!1605061 e!1605060)))

(assert (=> b!2537600 (= c!405891 ((_ is Star!7557) lt!901604))))

(declare-fun b!2537601 () Bool)

(declare-fun call!160023 () Bool)

(assert (=> b!2537601 (= e!1605058 call!160023)))

(declare-fun bm!160017 () Bool)

(assert (=> bm!160017 (= call!160023 (validRegex!3183 (ite c!405892 (regTwo!15627 lt!901604) (regOne!15626 lt!901604))))))

(declare-fun bm!160018 () Bool)

(assert (=> bm!160018 (= call!160022 call!160021)))

(declare-fun d!720912 () Bool)

(declare-fun res!1070058 () Bool)

(assert (=> d!720912 (=> res!1070058 e!1605061)))

(assert (=> d!720912 (= res!1070058 ((_ is ElementMatch!7557) lt!901604))))

(assert (=> d!720912 (= (validRegex!3183 lt!901604) e!1605061)))

(declare-fun b!2537602 () Bool)

(assert (=> b!2537602 (= e!1605060 e!1605063)))

(assert (=> b!2537602 (= c!405892 ((_ is Union!7557) lt!901604))))

(declare-fun b!2537603 () Bool)

(declare-fun res!1070059 () Bool)

(declare-fun e!1605059 () Bool)

(assert (=> b!2537603 (=> res!1070059 e!1605059)))

(assert (=> b!2537603 (= res!1070059 (not ((_ is Concat!12253) lt!901604)))))

(assert (=> b!2537603 (= e!1605063 e!1605059)))

(declare-fun b!2537604 () Bool)

(assert (=> b!2537604 (= e!1605060 e!1605062)))

(declare-fun res!1070055 () Bool)

(assert (=> b!2537604 (= res!1070055 (not (nullable!2474 (reg!7886 lt!901604))))))

(assert (=> b!2537604 (=> (not res!1070055) (not e!1605062))))

(declare-fun b!2537605 () Bool)

(assert (=> b!2537605 (= e!1605059 e!1605057)))

(declare-fun res!1070057 () Bool)

(assert (=> b!2537605 (=> (not res!1070057) (not e!1605057))))

(assert (=> b!2537605 (= res!1070057 call!160023)))

(assert (= (and d!720912 (not res!1070058)) b!2537600))

(assert (= (and b!2537600 c!405891) b!2537604))

(assert (= (and b!2537600 (not c!405891)) b!2537602))

(assert (= (and b!2537604 res!1070055) b!2537598))

(assert (= (and b!2537602 c!405892) b!2537597))

(assert (= (and b!2537602 (not c!405892)) b!2537603))

(assert (= (and b!2537597 res!1070056) b!2537601))

(assert (= (and b!2537603 (not res!1070059)) b!2537605))

(assert (= (and b!2537605 res!1070057) b!2537599))

(assert (= (or b!2537597 b!2537599) bm!160018))

(assert (= (or b!2537601 b!2537605) bm!160017))

(assert (= (or b!2537598 bm!160018) bm!160016))

(declare-fun m!2885605 () Bool)

(assert (=> bm!160016 m!2885605))

(declare-fun m!2885607 () Bool)

(assert (=> bm!160017 m!2885607))

(declare-fun m!2885609 () Bool)

(assert (=> b!2537604 m!2885609))

(assert (=> d!720816 d!720912))

(assert (=> d!720816 d!720818))

(declare-fun c!405899 () Bool)

(declare-fun call!160028 () Bool)

(declare-fun bm!160023 () Bool)

(declare-fun c!405898 () Bool)

(assert (=> bm!160023 (= call!160028 (validRegex!3183 (ite c!405898 (reg!7886 lt!901603) (ite c!405899 (regOne!15627 lt!901603) (regTwo!15626 lt!901603)))))))

(declare-fun b!2537616 () Bool)

(declare-fun res!1070061 () Bool)

(declare-fun e!1605070 () Bool)

(assert (=> b!2537616 (=> (not res!1070061) (not e!1605070))))

(declare-fun call!160029 () Bool)

(assert (=> b!2537616 (= res!1070061 call!160029)))

(declare-fun e!1605075 () Bool)

(assert (=> b!2537616 (= e!1605075 e!1605070)))

(declare-fun b!2537617 () Bool)

(declare-fun e!1605074 () Bool)

(assert (=> b!2537617 (= e!1605074 call!160028)))

(declare-fun b!2537618 () Bool)

(declare-fun e!1605069 () Bool)

(assert (=> b!2537618 (= e!1605069 call!160029)))

(declare-fun b!2537619 () Bool)

(declare-fun e!1605073 () Bool)

(declare-fun e!1605072 () Bool)

(assert (=> b!2537619 (= e!1605073 e!1605072)))

(assert (=> b!2537619 (= c!405898 ((_ is Star!7557) lt!901603))))

(declare-fun b!2537620 () Bool)

(declare-fun call!160030 () Bool)

(assert (=> b!2537620 (= e!1605070 call!160030)))

(declare-fun bm!160024 () Bool)

(assert (=> bm!160024 (= call!160030 (validRegex!3183 (ite c!405899 (regTwo!15627 lt!901603) (regOne!15626 lt!901603))))))

(declare-fun bm!160025 () Bool)

(assert (=> bm!160025 (= call!160029 call!160028)))

(declare-fun d!720916 () Bool)

(declare-fun res!1070063 () Bool)

(assert (=> d!720916 (=> res!1070063 e!1605073)))

(assert (=> d!720916 (= res!1070063 ((_ is ElementMatch!7557) lt!901603))))

(assert (=> d!720916 (= (validRegex!3183 lt!901603) e!1605073)))

(declare-fun b!2537621 () Bool)

(assert (=> b!2537621 (= e!1605072 e!1605075)))

(assert (=> b!2537621 (= c!405899 ((_ is Union!7557) lt!901603))))

(declare-fun b!2537622 () Bool)

(declare-fun res!1070064 () Bool)

(declare-fun e!1605071 () Bool)

(assert (=> b!2537622 (=> res!1070064 e!1605071)))

(assert (=> b!2537622 (= res!1070064 (not ((_ is Concat!12253) lt!901603)))))

(assert (=> b!2537622 (= e!1605075 e!1605071)))

(declare-fun b!2537623 () Bool)

(assert (=> b!2537623 (= e!1605072 e!1605074)))

(declare-fun res!1070060 () Bool)

(assert (=> b!2537623 (= res!1070060 (not (nullable!2474 (reg!7886 lt!901603))))))

(assert (=> b!2537623 (=> (not res!1070060) (not e!1605074))))

(declare-fun b!2537624 () Bool)

(assert (=> b!2537624 (= e!1605071 e!1605069)))

(declare-fun res!1070062 () Bool)

(assert (=> b!2537624 (=> (not res!1070062) (not e!1605069))))

(assert (=> b!2537624 (= res!1070062 call!160030)))

(assert (= (and d!720916 (not res!1070063)) b!2537619))

(assert (= (and b!2537619 c!405898) b!2537623))

(assert (= (and b!2537619 (not c!405898)) b!2537621))

(assert (= (and b!2537623 res!1070060) b!2537617))

(assert (= (and b!2537621 c!405899) b!2537616))

(assert (= (and b!2537621 (not c!405899)) b!2537622))

(assert (= (and b!2537616 res!1070061) b!2537620))

(assert (= (and b!2537622 (not res!1070064)) b!2537624))

(assert (= (and b!2537624 res!1070062) b!2537618))

(assert (= (or b!2537616 b!2537618) bm!160025))

(assert (= (or b!2537620 b!2537624) bm!160024))

(assert (= (or b!2537617 bm!160025) bm!160023))

(declare-fun m!2885621 () Bool)

(assert (=> bm!160023 m!2885621))

(declare-fun m!2885623 () Bool)

(assert (=> bm!160024 m!2885623))

(declare-fun m!2885625 () Bool)

(assert (=> b!2537623 m!2885625))

(assert (=> d!720814 d!720916))

(declare-fun c!405902 () Bool)

(declare-fun call!160031 () Bool)

(declare-fun bm!160026 () Bool)

(declare-fun c!405901 () Bool)

(assert (=> bm!160026 (= call!160031 (validRegex!3183 (ite c!405901 (reg!7886 (derivativeStep!2126 (regTwo!15627 r!27340) c!14016)) (ite c!405902 (regOne!15627 (derivativeStep!2126 (regTwo!15627 r!27340) c!14016)) (regTwo!15626 (derivativeStep!2126 (regTwo!15627 r!27340) c!14016))))))))

(declare-fun b!2537627 () Bool)

(declare-fun res!1070066 () Bool)

(declare-fun e!1605078 () Bool)

(assert (=> b!2537627 (=> (not res!1070066) (not e!1605078))))

(declare-fun call!160032 () Bool)

(assert (=> b!2537627 (= res!1070066 call!160032)))

(declare-fun e!1605083 () Bool)

(assert (=> b!2537627 (= e!1605083 e!1605078)))

(declare-fun b!2537628 () Bool)

(declare-fun e!1605082 () Bool)

(assert (=> b!2537628 (= e!1605082 call!160031)))

(declare-fun b!2537629 () Bool)

(declare-fun e!1605077 () Bool)

(assert (=> b!2537629 (= e!1605077 call!160032)))

(declare-fun b!2537630 () Bool)

(declare-fun e!1605081 () Bool)

(declare-fun e!1605080 () Bool)

(assert (=> b!2537630 (= e!1605081 e!1605080)))

(assert (=> b!2537630 (= c!405901 ((_ is Star!7557) (derivativeStep!2126 (regTwo!15627 r!27340) c!14016)))))

(declare-fun b!2537631 () Bool)

(declare-fun call!160033 () Bool)

(assert (=> b!2537631 (= e!1605078 call!160033)))

(declare-fun bm!160027 () Bool)

(assert (=> bm!160027 (= call!160033 (validRegex!3183 (ite c!405902 (regTwo!15627 (derivativeStep!2126 (regTwo!15627 r!27340) c!14016)) (regOne!15626 (derivativeStep!2126 (regTwo!15627 r!27340) c!14016)))))))

(declare-fun bm!160028 () Bool)

(assert (=> bm!160028 (= call!160032 call!160031)))

(declare-fun d!720920 () Bool)

(declare-fun res!1070068 () Bool)

(assert (=> d!720920 (=> res!1070068 e!1605081)))

(assert (=> d!720920 (= res!1070068 ((_ is ElementMatch!7557) (derivativeStep!2126 (regTwo!15627 r!27340) c!14016)))))

(assert (=> d!720920 (= (validRegex!3183 (derivativeStep!2126 (regTwo!15627 r!27340) c!14016)) e!1605081)))

(declare-fun b!2537632 () Bool)

(assert (=> b!2537632 (= e!1605080 e!1605083)))

(assert (=> b!2537632 (= c!405902 ((_ is Union!7557) (derivativeStep!2126 (regTwo!15627 r!27340) c!14016)))))

(declare-fun b!2537633 () Bool)

(declare-fun res!1070069 () Bool)

(declare-fun e!1605079 () Bool)

(assert (=> b!2537633 (=> res!1070069 e!1605079)))

(assert (=> b!2537633 (= res!1070069 (not ((_ is Concat!12253) (derivativeStep!2126 (regTwo!15627 r!27340) c!14016))))))

(assert (=> b!2537633 (= e!1605083 e!1605079)))

(declare-fun b!2537634 () Bool)

(assert (=> b!2537634 (= e!1605080 e!1605082)))

(declare-fun res!1070065 () Bool)

(assert (=> b!2537634 (= res!1070065 (not (nullable!2474 (reg!7886 (derivativeStep!2126 (regTwo!15627 r!27340) c!14016)))))))

(assert (=> b!2537634 (=> (not res!1070065) (not e!1605082))))

(declare-fun b!2537635 () Bool)

(assert (=> b!2537635 (= e!1605079 e!1605077)))

(declare-fun res!1070067 () Bool)

(assert (=> b!2537635 (=> (not res!1070067) (not e!1605077))))

(assert (=> b!2537635 (= res!1070067 call!160033)))

(assert (= (and d!720920 (not res!1070068)) b!2537630))

(assert (= (and b!2537630 c!405901) b!2537634))

(assert (= (and b!2537630 (not c!405901)) b!2537632))

(assert (= (and b!2537634 res!1070065) b!2537628))

(assert (= (and b!2537632 c!405902) b!2537627))

(assert (= (and b!2537632 (not c!405902)) b!2537633))

(assert (= (and b!2537627 res!1070066) b!2537631))

(assert (= (and b!2537633 (not res!1070069)) b!2537635))

(assert (= (and b!2537635 res!1070067) b!2537629))

(assert (= (or b!2537627 b!2537629) bm!160028))

(assert (= (or b!2537631 b!2537635) bm!160027))

(assert (= (or b!2537628 bm!160028) bm!160026))

(declare-fun m!2885635 () Bool)

(assert (=> bm!160026 m!2885635))

(declare-fun m!2885637 () Bool)

(assert (=> bm!160027 m!2885637))

(declare-fun m!2885639 () Bool)

(assert (=> b!2537634 m!2885639))

(assert (=> d!720814 d!720920))

(declare-fun b!2537646 () Bool)

(declare-fun e!1605094 () Bool)

(declare-fun call!160038 () Bool)

(assert (=> b!2537646 (= e!1605094 call!160038)))

(declare-fun d!720924 () Bool)

(declare-fun res!1070070 () Bool)

(declare-fun e!1605089 () Bool)

(assert (=> d!720924 (=> res!1070070 e!1605089)))

(assert (=> d!720924 (= res!1070070 ((_ is EmptyExpr!7557) (derivative!252 (derivativeStep!2126 (regOne!15627 r!27340) c!14016) tl!4068)))))

(assert (=> d!720924 (= (nullableFct!706 (derivative!252 (derivativeStep!2126 (regOne!15627 r!27340) c!14016) tl!4068)) e!1605089)))

(declare-fun b!2537647 () Bool)

(declare-fun e!1605092 () Bool)

(assert (=> b!2537647 (= e!1605089 e!1605092)))

(declare-fun res!1070071 () Bool)

(assert (=> b!2537647 (=> (not res!1070071) (not e!1605092))))

(assert (=> b!2537647 (= res!1070071 (and (not ((_ is EmptyLang!7557) (derivative!252 (derivativeStep!2126 (regOne!15627 r!27340) c!14016) tl!4068))) (not ((_ is ElementMatch!7557) (derivative!252 (derivativeStep!2126 (regOne!15627 r!27340) c!14016) tl!4068)))))))

(declare-fun b!2537648 () Bool)

(declare-fun e!1605090 () Bool)

(declare-fun call!160039 () Bool)

(assert (=> b!2537648 (= e!1605090 call!160039)))

(declare-fun b!2537649 () Bool)

(declare-fun e!1605093 () Bool)

(assert (=> b!2537649 (= e!1605093 e!1605094)))

(declare-fun res!1070074 () Bool)

(assert (=> b!2537649 (= res!1070074 call!160039)))

(assert (=> b!2537649 (=> res!1070074 e!1605094)))

(declare-fun b!2537650 () Bool)

(declare-fun e!1605091 () Bool)

(assert (=> b!2537650 (= e!1605092 e!1605091)))

(declare-fun res!1070073 () Bool)

(assert (=> b!2537650 (=> res!1070073 e!1605091)))

(assert (=> b!2537650 (= res!1070073 ((_ is Star!7557) (derivative!252 (derivativeStep!2126 (regOne!15627 r!27340) c!14016) tl!4068)))))

(declare-fun b!2537651 () Bool)

(assert (=> b!2537651 (= e!1605091 e!1605093)))

(declare-fun c!405908 () Bool)

(assert (=> b!2537651 (= c!405908 ((_ is Union!7557) (derivative!252 (derivativeStep!2126 (regOne!15627 r!27340) c!14016) tl!4068)))))

(declare-fun b!2537652 () Bool)

(assert (=> b!2537652 (= e!1605093 e!1605090)))

(declare-fun res!1070072 () Bool)

(assert (=> b!2537652 (= res!1070072 call!160038)))

(assert (=> b!2537652 (=> (not res!1070072) (not e!1605090))))

(declare-fun bm!160033 () Bool)

(assert (=> bm!160033 (= call!160039 (nullable!2474 (ite c!405908 (regOne!15627 (derivative!252 (derivativeStep!2126 (regOne!15627 r!27340) c!14016) tl!4068)) (regTwo!15626 (derivative!252 (derivativeStep!2126 (regOne!15627 r!27340) c!14016) tl!4068)))))))

(declare-fun bm!160034 () Bool)

(assert (=> bm!160034 (= call!160038 (nullable!2474 (ite c!405908 (regTwo!15627 (derivative!252 (derivativeStep!2126 (regOne!15627 r!27340) c!14016) tl!4068)) (regOne!15626 (derivative!252 (derivativeStep!2126 (regOne!15627 r!27340) c!14016) tl!4068)))))))

(assert (= (and d!720924 (not res!1070070)) b!2537647))

(assert (= (and b!2537647 res!1070071) b!2537650))

(assert (= (and b!2537650 (not res!1070073)) b!2537651))

(assert (= (and b!2537651 c!405908) b!2537649))

(assert (= (and b!2537651 (not c!405908)) b!2537652))

(assert (= (and b!2537649 (not res!1070074)) b!2537646))

(assert (= (and b!2537652 res!1070072) b!2537648))

(assert (= (or b!2537646 b!2537652) bm!160034))

(assert (= (or b!2537649 b!2537648) bm!160033))

(declare-fun m!2885649 () Bool)

(assert (=> bm!160033 m!2885649))

(declare-fun m!2885651 () Bool)

(assert (=> bm!160034 m!2885651))

(assert (=> d!720774 d!720924))

(declare-fun call!160042 () Bool)

(declare-fun c!405911 () Bool)

(declare-fun c!405910 () Bool)

(declare-fun bm!160037 () Bool)

(assert (=> bm!160037 (= call!160042 (validRegex!3183 (ite c!405910 (reg!7886 (ite c!405773 (regTwo!15627 (regTwo!15627 r!27340)) (regOne!15626 (regTwo!15627 r!27340)))) (ite c!405911 (regOne!15627 (ite c!405773 (regTwo!15627 (regTwo!15627 r!27340)) (regOne!15626 (regTwo!15627 r!27340)))) (regTwo!15626 (ite c!405773 (regTwo!15627 (regTwo!15627 r!27340)) (regOne!15626 (regTwo!15627 r!27340))))))))))

(declare-fun b!2537660 () Bool)

(declare-fun res!1070081 () Bool)

(declare-fun e!1605102 () Bool)

(assert (=> b!2537660 (=> (not res!1070081) (not e!1605102))))

(declare-fun call!160043 () Bool)

(assert (=> b!2537660 (= res!1070081 call!160043)))

(declare-fun e!1605107 () Bool)

(assert (=> b!2537660 (= e!1605107 e!1605102)))

(declare-fun b!2537661 () Bool)

(declare-fun e!1605106 () Bool)

(assert (=> b!2537661 (= e!1605106 call!160042)))

(declare-fun b!2537662 () Bool)

(declare-fun e!1605101 () Bool)

(assert (=> b!2537662 (= e!1605101 call!160043)))

(declare-fun b!2537663 () Bool)

(declare-fun e!1605105 () Bool)

(declare-fun e!1605104 () Bool)

(assert (=> b!2537663 (= e!1605105 e!1605104)))

(assert (=> b!2537663 (= c!405910 ((_ is Star!7557) (ite c!405773 (regTwo!15627 (regTwo!15627 r!27340)) (regOne!15626 (regTwo!15627 r!27340)))))))

(declare-fun b!2537664 () Bool)

(declare-fun call!160044 () Bool)

(assert (=> b!2537664 (= e!1605102 call!160044)))

(declare-fun bm!160038 () Bool)

(assert (=> bm!160038 (= call!160044 (validRegex!3183 (ite c!405911 (regTwo!15627 (ite c!405773 (regTwo!15627 (regTwo!15627 r!27340)) (regOne!15626 (regTwo!15627 r!27340)))) (regOne!15626 (ite c!405773 (regTwo!15627 (regTwo!15627 r!27340)) (regOne!15626 (regTwo!15627 r!27340)))))))))

(declare-fun bm!160039 () Bool)

(assert (=> bm!160039 (= call!160043 call!160042)))

(declare-fun d!720928 () Bool)

(declare-fun res!1070083 () Bool)

(assert (=> d!720928 (=> res!1070083 e!1605105)))

(assert (=> d!720928 (= res!1070083 ((_ is ElementMatch!7557) (ite c!405773 (regTwo!15627 (regTwo!15627 r!27340)) (regOne!15626 (regTwo!15627 r!27340)))))))

(assert (=> d!720928 (= (validRegex!3183 (ite c!405773 (regTwo!15627 (regTwo!15627 r!27340)) (regOne!15626 (regTwo!15627 r!27340)))) e!1605105)))

(declare-fun b!2537665 () Bool)

(assert (=> b!2537665 (= e!1605104 e!1605107)))

(assert (=> b!2537665 (= c!405911 ((_ is Union!7557) (ite c!405773 (regTwo!15627 (regTwo!15627 r!27340)) (regOne!15626 (regTwo!15627 r!27340)))))))

(declare-fun b!2537666 () Bool)

(declare-fun res!1070084 () Bool)

(declare-fun e!1605103 () Bool)

(assert (=> b!2537666 (=> res!1070084 e!1605103)))

(assert (=> b!2537666 (= res!1070084 (not ((_ is Concat!12253) (ite c!405773 (regTwo!15627 (regTwo!15627 r!27340)) (regOne!15626 (regTwo!15627 r!27340))))))))

(assert (=> b!2537666 (= e!1605107 e!1605103)))

(declare-fun b!2537667 () Bool)

(assert (=> b!2537667 (= e!1605104 e!1605106)))

(declare-fun res!1070080 () Bool)

(assert (=> b!2537667 (= res!1070080 (not (nullable!2474 (reg!7886 (ite c!405773 (regTwo!15627 (regTwo!15627 r!27340)) (regOne!15626 (regTwo!15627 r!27340)))))))))

(assert (=> b!2537667 (=> (not res!1070080) (not e!1605106))))

(declare-fun b!2537668 () Bool)

(assert (=> b!2537668 (= e!1605103 e!1605101)))

(declare-fun res!1070082 () Bool)

(assert (=> b!2537668 (=> (not res!1070082) (not e!1605101))))

(assert (=> b!2537668 (= res!1070082 call!160044)))

(assert (= (and d!720928 (not res!1070083)) b!2537663))

(assert (= (and b!2537663 c!405910) b!2537667))

(assert (= (and b!2537663 (not c!405910)) b!2537665))

(assert (= (and b!2537667 res!1070080) b!2537661))

(assert (= (and b!2537665 c!405911) b!2537660))

(assert (= (and b!2537665 (not c!405911)) b!2537666))

(assert (= (and b!2537660 res!1070081) b!2537664))

(assert (= (and b!2537666 (not res!1070084)) b!2537668))

(assert (= (and b!2537668 res!1070082) b!2537662))

(assert (= (or b!2537660 b!2537662) bm!160039))

(assert (= (or b!2537664 b!2537668) bm!160038))

(assert (= (or b!2537661 bm!160039) bm!160037))

(declare-fun m!2885657 () Bool)

(assert (=> bm!160037 m!2885657))

(declare-fun m!2885659 () Bool)

(assert (=> bm!160038 m!2885659))

(declare-fun m!2885661 () Bool)

(assert (=> b!2537667 m!2885661))

(assert (=> bm!159899 d!720928))

(declare-fun d!720932 () Bool)

(declare-fun c!405917 () Bool)

(assert (=> d!720932 (= c!405917 ((_ is Nil!29522) (firstChars!90 (regTwo!15627 r!27340))))))

(declare-fun e!1605113 () (InoxSet C!15272))

(assert (=> d!720932 (= (content!4053 (firstChars!90 (regTwo!15627 r!27340))) e!1605113)))

(declare-fun b!2537679 () Bool)

(assert (=> b!2537679 (= e!1605113 ((as const (Array C!15272 Bool)) false))))

(declare-fun b!2537680 () Bool)

(assert (=> b!2537680 (= e!1605113 ((_ map or) (store ((as const (Array C!15272 Bool)) false) (h!34942 (firstChars!90 (regTwo!15627 r!27340))) true) (content!4053 (t!211321 (firstChars!90 (regTwo!15627 r!27340))))))))

(assert (= (and d!720932 c!405917) b!2537679))

(assert (= (and d!720932 (not c!405917)) b!2537680))

(declare-fun m!2885663 () Bool)

(assert (=> b!2537680 m!2885663))

(assert (=> b!2537680 m!2885383))

(assert (=> d!720756 d!720932))

(declare-fun d!720934 () Bool)

(declare-fun lt!901627 () Bool)

(assert (=> d!720934 (= lt!901627 (select (content!4053 (t!211321 (firstChars!90 r!27340))) c!14016))))

(declare-fun e!1605114 () Bool)

(assert (=> d!720934 (= lt!901627 e!1605114)))

(declare-fun res!1070086 () Bool)

(assert (=> d!720934 (=> (not res!1070086) (not e!1605114))))

(assert (=> d!720934 (= res!1070086 ((_ is Cons!29522) (t!211321 (firstChars!90 r!27340))))))

(assert (=> d!720934 (= (contains!5299 (t!211321 (firstChars!90 r!27340)) c!14016) lt!901627)))

(declare-fun b!2537681 () Bool)

(declare-fun e!1605115 () Bool)

(assert (=> b!2537681 (= e!1605114 e!1605115)))

(declare-fun res!1070085 () Bool)

(assert (=> b!2537681 (=> res!1070085 e!1605115)))

(assert (=> b!2537681 (= res!1070085 (= (h!34942 (t!211321 (firstChars!90 r!27340))) c!14016))))

(declare-fun b!2537682 () Bool)

(assert (=> b!2537682 (= e!1605115 (contains!5299 (t!211321 (t!211321 (firstChars!90 r!27340))) c!14016))))

(assert (= (and d!720934 res!1070086) b!2537681))

(assert (= (and b!2537681 (not res!1070085)) b!2537682))

(assert (=> d!720934 m!2885551))

(declare-fun m!2885669 () Bool)

(assert (=> d!720934 m!2885669))

(declare-fun m!2885673 () Bool)

(assert (=> b!2537682 m!2885673))

(assert (=> b!2536965 d!720934))

(declare-fun b!2537683 () Bool)

(declare-fun e!1605121 () Bool)

(declare-fun call!160050 () Bool)

(assert (=> b!2537683 (= e!1605121 call!160050)))

(declare-fun d!720936 () Bool)

(declare-fun res!1070087 () Bool)

(declare-fun e!1605116 () Bool)

(assert (=> d!720936 (=> res!1070087 e!1605116)))

(assert (=> d!720936 (= res!1070087 ((_ is EmptyExpr!7557) (derivative!252 (derivativeStep!2126 (regTwo!15627 r!27340) c!14016) tl!4068)))))

(assert (=> d!720936 (= (nullableFct!706 (derivative!252 (derivativeStep!2126 (regTwo!15627 r!27340) c!14016) tl!4068)) e!1605116)))

(declare-fun b!2537684 () Bool)

(declare-fun e!1605119 () Bool)

(assert (=> b!2537684 (= e!1605116 e!1605119)))

(declare-fun res!1070088 () Bool)

(assert (=> b!2537684 (=> (not res!1070088) (not e!1605119))))

(assert (=> b!2537684 (= res!1070088 (and (not ((_ is EmptyLang!7557) (derivative!252 (derivativeStep!2126 (regTwo!15627 r!27340) c!14016) tl!4068))) (not ((_ is ElementMatch!7557) (derivative!252 (derivativeStep!2126 (regTwo!15627 r!27340) c!14016) tl!4068)))))))

(declare-fun b!2537685 () Bool)

(declare-fun e!1605117 () Bool)

(declare-fun call!160051 () Bool)

(assert (=> b!2537685 (= e!1605117 call!160051)))

(declare-fun b!2537686 () Bool)

(declare-fun e!1605120 () Bool)

(assert (=> b!2537686 (= e!1605120 e!1605121)))

(declare-fun res!1070091 () Bool)

(assert (=> b!2537686 (= res!1070091 call!160051)))

(assert (=> b!2537686 (=> res!1070091 e!1605121)))

(declare-fun b!2537687 () Bool)

(declare-fun e!1605118 () Bool)

(assert (=> b!2537687 (= e!1605119 e!1605118)))

(declare-fun res!1070090 () Bool)

(assert (=> b!2537687 (=> res!1070090 e!1605118)))

(assert (=> b!2537687 (= res!1070090 ((_ is Star!7557) (derivative!252 (derivativeStep!2126 (regTwo!15627 r!27340) c!14016) tl!4068)))))

(declare-fun b!2537688 () Bool)

(assert (=> b!2537688 (= e!1605118 e!1605120)))

(declare-fun c!405918 () Bool)

(assert (=> b!2537688 (= c!405918 ((_ is Union!7557) (derivative!252 (derivativeStep!2126 (regTwo!15627 r!27340) c!14016) tl!4068)))))

(declare-fun b!2537689 () Bool)

(assert (=> b!2537689 (= e!1605120 e!1605117)))

(declare-fun res!1070089 () Bool)

(assert (=> b!2537689 (= res!1070089 call!160050)))

(assert (=> b!2537689 (=> (not res!1070089) (not e!1605117))))

(declare-fun bm!160045 () Bool)

(assert (=> bm!160045 (= call!160051 (nullable!2474 (ite c!405918 (regOne!15627 (derivative!252 (derivativeStep!2126 (regTwo!15627 r!27340) c!14016) tl!4068)) (regTwo!15626 (derivative!252 (derivativeStep!2126 (regTwo!15627 r!27340) c!14016) tl!4068)))))))

(declare-fun bm!160046 () Bool)

(assert (=> bm!160046 (= call!160050 (nullable!2474 (ite c!405918 (regTwo!15627 (derivative!252 (derivativeStep!2126 (regTwo!15627 r!27340) c!14016) tl!4068)) (regOne!15626 (derivative!252 (derivativeStep!2126 (regTwo!15627 r!27340) c!14016) tl!4068)))))))

(assert (= (and d!720936 (not res!1070087)) b!2537684))

(assert (= (and b!2537684 res!1070088) b!2537687))

(assert (= (and b!2537687 (not res!1070090)) b!2537688))

(assert (= (and b!2537688 c!405918) b!2537686))

(assert (= (and b!2537688 (not c!405918)) b!2537689))

(assert (= (and b!2537686 (not res!1070091)) b!2537683))

(assert (= (and b!2537689 res!1070089) b!2537685))

(assert (= (or b!2537683 b!2537689) bm!160046))

(assert (= (or b!2537686 b!2537685) bm!160045))

(declare-fun m!2885681 () Bool)

(assert (=> bm!160045 m!2885681))

(declare-fun m!2885683 () Bool)

(assert (=> bm!160046 m!2885683))

(assert (=> d!720810 d!720936))

(declare-fun d!720944 () Bool)

(declare-fun lt!901628 () Regex!7557)

(assert (=> d!720944 (validRegex!3183 lt!901628)))

(declare-fun e!1605128 () Regex!7557)

(assert (=> d!720944 (= lt!901628 e!1605128)))

(declare-fun c!405925 () Bool)

(assert (=> d!720944 (= c!405925 ((_ is Cons!29522) (t!211321 tl!4068)))))

(assert (=> d!720944 (validRegex!3183 (derivativeStep!2126 (derivativeStep!2126 (regOne!15627 r!27340) c!14016) (h!34942 tl!4068)))))

(assert (=> d!720944 (= (derivative!252 (derivativeStep!2126 (derivativeStep!2126 (regOne!15627 r!27340) c!14016) (h!34942 tl!4068)) (t!211321 tl!4068)) lt!901628)))

(declare-fun b!2537702 () Bool)

(assert (=> b!2537702 (= e!1605128 (derivative!252 (derivativeStep!2126 (derivativeStep!2126 (derivativeStep!2126 (regOne!15627 r!27340) c!14016) (h!34942 tl!4068)) (h!34942 (t!211321 tl!4068))) (t!211321 (t!211321 tl!4068))))))

(declare-fun b!2537703 () Bool)

(assert (=> b!2537703 (= e!1605128 (derivativeStep!2126 (derivativeStep!2126 (regOne!15627 r!27340) c!14016) (h!34942 tl!4068)))))

(assert (= (and d!720944 c!405925) b!2537702))

(assert (= (and d!720944 (not c!405925)) b!2537703))

(declare-fun m!2885685 () Bool)

(assert (=> d!720944 m!2885685))

(assert (=> d!720944 m!2885165))

(declare-fun m!2885687 () Bool)

(assert (=> d!720944 m!2885687))

(assert (=> b!2537702 m!2885165))

(declare-fun m!2885689 () Bool)

(assert (=> b!2537702 m!2885689))

(assert (=> b!2537702 m!2885689))

(declare-fun m!2885691 () Bool)

(assert (=> b!2537702 m!2885691))

(assert (=> b!2536990 d!720944))

(declare-fun bm!160052 () Bool)

(declare-fun call!160057 () Regex!7557)

(declare-fun call!160059 () Regex!7557)

(assert (=> bm!160052 (= call!160057 call!160059)))

(declare-fun b!2537704 () Bool)

(declare-fun e!1605132 () Regex!7557)

(assert (=> b!2537704 (= e!1605132 EmptyLang!7557)))

(declare-fun c!405929 () Bool)

(declare-fun call!160058 () Regex!7557)

(declare-fun bm!160053 () Bool)

(declare-fun c!405926 () Bool)

(assert (=> bm!160053 (= call!160058 (derivativeStep!2126 (ite c!405929 (regTwo!15627 (derivativeStep!2126 (regOne!15627 r!27340) c!14016)) (ite c!405926 (reg!7886 (derivativeStep!2126 (regOne!15627 r!27340) c!14016)) (regOne!15626 (derivativeStep!2126 (regOne!15627 r!27340) c!14016)))) (h!34942 tl!4068)))))

(declare-fun b!2537705 () Bool)

(declare-fun e!1605129 () Regex!7557)

(assert (=> b!2537705 (= e!1605129 (Union!7557 (Concat!12253 call!160057 (regTwo!15626 (derivativeStep!2126 (regOne!15627 r!27340) c!14016))) EmptyLang!7557))))

(declare-fun b!2537706 () Bool)

(declare-fun c!405930 () Bool)

(assert (=> b!2537706 (= c!405930 (nullable!2474 (regOne!15626 (derivativeStep!2126 (regOne!15627 r!27340) c!14016))))))

(declare-fun e!1605133 () Regex!7557)

(assert (=> b!2537706 (= e!1605133 e!1605129)))

(declare-fun b!2537707 () Bool)

(declare-fun e!1605130 () Regex!7557)

(assert (=> b!2537707 (= e!1605130 (ite (= (h!34942 tl!4068) (c!405655 (derivativeStep!2126 (regOne!15627 r!27340) c!14016))) EmptyExpr!7557 EmptyLang!7557))))

(declare-fun b!2537708 () Bool)

(assert (=> b!2537708 (= e!1605132 e!1605130)))

(declare-fun c!405927 () Bool)

(assert (=> b!2537708 (= c!405927 ((_ is ElementMatch!7557) (derivativeStep!2126 (regOne!15627 r!27340) c!14016)))))

(declare-fun b!2537709 () Bool)

(assert (=> b!2537709 (= c!405929 ((_ is Union!7557) (derivativeStep!2126 (regOne!15627 r!27340) c!14016)))))

(declare-fun e!1605131 () Regex!7557)

(assert (=> b!2537709 (= e!1605130 e!1605131)))

(declare-fun d!720946 () Bool)

(declare-fun lt!901629 () Regex!7557)

(assert (=> d!720946 (validRegex!3183 lt!901629)))

(assert (=> d!720946 (= lt!901629 e!1605132)))

(declare-fun c!405928 () Bool)

(assert (=> d!720946 (= c!405928 (or ((_ is EmptyExpr!7557) (derivativeStep!2126 (regOne!15627 r!27340) c!14016)) ((_ is EmptyLang!7557) (derivativeStep!2126 (regOne!15627 r!27340) c!14016))))))

(assert (=> d!720946 (validRegex!3183 (derivativeStep!2126 (regOne!15627 r!27340) c!14016))))

(assert (=> d!720946 (= (derivativeStep!2126 (derivativeStep!2126 (regOne!15627 r!27340) c!14016) (h!34942 tl!4068)) lt!901629)))

(declare-fun b!2537710 () Bool)

(assert (=> b!2537710 (= e!1605133 (Concat!12253 call!160059 (derivativeStep!2126 (regOne!15627 r!27340) c!14016)))))

(declare-fun bm!160054 () Bool)

(assert (=> bm!160054 (= call!160059 call!160058)))

(declare-fun b!2537711 () Bool)

(assert (=> b!2537711 (= e!1605131 e!1605133)))

(assert (=> b!2537711 (= c!405926 ((_ is Star!7557) (derivativeStep!2126 (regOne!15627 r!27340) c!14016)))))

(declare-fun call!160060 () Regex!7557)

(declare-fun b!2537712 () Bool)

(assert (=> b!2537712 (= e!1605129 (Union!7557 (Concat!12253 call!160057 (regTwo!15626 (derivativeStep!2126 (regOne!15627 r!27340) c!14016))) call!160060))))

(declare-fun bm!160055 () Bool)

(assert (=> bm!160055 (= call!160060 (derivativeStep!2126 (ite c!405929 (regOne!15627 (derivativeStep!2126 (regOne!15627 r!27340) c!14016)) (regTwo!15626 (derivativeStep!2126 (regOne!15627 r!27340) c!14016))) (h!34942 tl!4068)))))

(declare-fun b!2537713 () Bool)

(assert (=> b!2537713 (= e!1605131 (Union!7557 call!160060 call!160058))))

(assert (= (and d!720946 c!405928) b!2537704))

(assert (= (and d!720946 (not c!405928)) b!2537708))

(assert (= (and b!2537708 c!405927) b!2537707))

(assert (= (and b!2537708 (not c!405927)) b!2537709))

(assert (= (and b!2537709 c!405929) b!2537713))

(assert (= (and b!2537709 (not c!405929)) b!2537711))

(assert (= (and b!2537711 c!405926) b!2537710))

(assert (= (and b!2537711 (not c!405926)) b!2537706))

(assert (= (and b!2537706 c!405930) b!2537712))

(assert (= (and b!2537706 (not c!405930)) b!2537705))

(assert (= (or b!2537712 b!2537705) bm!160052))

(assert (= (or b!2537710 bm!160052) bm!160054))

(assert (= (or b!2537713 bm!160054) bm!160053))

(assert (= (or b!2537713 b!2537712) bm!160055))

(declare-fun m!2885705 () Bool)

(assert (=> bm!160053 m!2885705))

(declare-fun m!2885707 () Bool)

(assert (=> b!2537706 m!2885707))

(declare-fun m!2885709 () Bool)

(assert (=> d!720946 m!2885709))

(assert (=> d!720946 m!2885107))

(assert (=> d!720946 m!2885163))

(declare-fun m!2885711 () Bool)

(assert (=> bm!160055 m!2885711))

(assert (=> b!2536990 d!720946))

(assert (=> b!2536943 d!720892))

(declare-fun b!2537723 () Bool)

(declare-fun e!1605144 () List!29622)

(declare-fun e!1605143 () List!29622)

(assert (=> b!2537723 (= e!1605144 e!1605143)))

(declare-fun c!405935 () Bool)

(assert (=> b!2537723 (= c!405935 ((_ is ElementMatch!7557) (ite c!405683 (reg!7886 (regTwo!15627 r!27340)) (ite c!405680 (regTwo!15627 (regTwo!15627 r!27340)) (ite c!405684 (regTwo!15626 (regTwo!15627 r!27340)) (regOne!15626 (regTwo!15627 r!27340)))))))))

(declare-fun c!405933 () Bool)

(declare-fun c!405937 () Bool)

(declare-fun bm!160059 () Bool)

(declare-fun call!160068 () List!29622)

(declare-fun c!405936 () Bool)

(assert (=> bm!160059 (= call!160068 (firstChars!90 (ite c!405936 (reg!7886 (ite c!405683 (reg!7886 (regTwo!15627 r!27340)) (ite c!405680 (regTwo!15627 (regTwo!15627 r!27340)) (ite c!405684 (regTwo!15626 (regTwo!15627 r!27340)) (regOne!15626 (regTwo!15627 r!27340)))))) (ite c!405933 (regTwo!15627 (ite c!405683 (reg!7886 (regTwo!15627 r!27340)) (ite c!405680 (regTwo!15627 (regTwo!15627 r!27340)) (ite c!405684 (regTwo!15626 (regTwo!15627 r!27340)) (regOne!15626 (regTwo!15627 r!27340)))))) (ite c!405937 (regTwo!15626 (ite c!405683 (reg!7886 (regTwo!15627 r!27340)) (ite c!405680 (regTwo!15627 (regTwo!15627 r!27340)) (ite c!405684 (regTwo!15626 (regTwo!15627 r!27340)) (regOne!15626 (regTwo!15627 r!27340)))))) (regOne!15626 (ite c!405683 (reg!7886 (regTwo!15627 r!27340)) (ite c!405680 (regTwo!15627 (regTwo!15627 r!27340)) (ite c!405684 (regTwo!15626 (regTwo!15627 r!27340)) (regOne!15626 (regTwo!15627 r!27340)))))))))))))

(declare-fun bm!160060 () Bool)

(declare-fun call!160067 () List!29622)

(declare-fun call!160066 () List!29622)

(assert (=> bm!160060 (= call!160067 call!160066)))

(declare-fun b!2537724 () Bool)

(assert (=> b!2537724 (= c!405937 (nullable!2474 (regOne!15626 (ite c!405683 (reg!7886 (regTwo!15627 r!27340)) (ite c!405680 (regTwo!15627 (regTwo!15627 r!27340)) (ite c!405684 (regTwo!15626 (regTwo!15627 r!27340)) (regOne!15626 (regTwo!15627 r!27340))))))))))

(declare-fun e!1605145 () List!29622)

(declare-fun e!1605142 () List!29622)

(assert (=> b!2537724 (= e!1605145 e!1605142)))

(declare-fun bm!160061 () Bool)

(declare-fun call!160064 () List!29622)

(declare-fun call!160065 () List!29622)

(assert (=> bm!160061 (= call!160065 (++!7247 call!160064 (ite c!405933 call!160066 call!160067)))))

(declare-fun d!720954 () Bool)

(declare-fun c!405934 () Bool)

(assert (=> d!720954 (= c!405934 (or ((_ is EmptyExpr!7557) (ite c!405683 (reg!7886 (regTwo!15627 r!27340)) (ite c!405680 (regTwo!15627 (regTwo!15627 r!27340)) (ite c!405684 (regTwo!15626 (regTwo!15627 r!27340)) (regOne!15626 (regTwo!15627 r!27340)))))) ((_ is EmptyLang!7557) (ite c!405683 (reg!7886 (regTwo!15627 r!27340)) (ite c!405680 (regTwo!15627 (regTwo!15627 r!27340)) (ite c!405684 (regTwo!15626 (regTwo!15627 r!27340)) (regOne!15626 (regTwo!15627 r!27340))))))))))

(assert (=> d!720954 (= (firstChars!90 (ite c!405683 (reg!7886 (regTwo!15627 r!27340)) (ite c!405680 (regTwo!15627 (regTwo!15627 r!27340)) (ite c!405684 (regTwo!15626 (regTwo!15627 r!27340)) (regOne!15626 (regTwo!15627 r!27340)))))) e!1605144)))

(declare-fun b!2537725 () Bool)

(assert (=> b!2537725 (= e!1605144 Nil!29522)))

(declare-fun b!2537726 () Bool)

(declare-fun e!1605141 () List!29622)

(assert (=> b!2537726 (= e!1605141 call!160068)))

(declare-fun b!2537727 () Bool)

(assert (=> b!2537727 (= c!405936 ((_ is Star!7557) (ite c!405683 (reg!7886 (regTwo!15627 r!27340)) (ite c!405680 (regTwo!15627 (regTwo!15627 r!27340)) (ite c!405684 (regTwo!15626 (regTwo!15627 r!27340)) (regOne!15626 (regTwo!15627 r!27340)))))))))

(assert (=> b!2537727 (= e!1605143 e!1605141)))

(declare-fun b!2537728 () Bool)

(assert (=> b!2537728 (= e!1605142 call!160065)))

(declare-fun b!2537729 () Bool)

(assert (=> b!2537729 (= e!1605143 (Cons!29522 (c!405655 (ite c!405683 (reg!7886 (regTwo!15627 r!27340)) (ite c!405680 (regTwo!15627 (regTwo!15627 r!27340)) (ite c!405684 (regTwo!15626 (regTwo!15627 r!27340)) (regOne!15626 (regTwo!15627 r!27340)))))) Nil!29522))))

(declare-fun b!2537730 () Bool)

(assert (=> b!2537730 (= e!1605142 call!160067)))

(declare-fun bm!160062 () Bool)

(assert (=> bm!160062 (= call!160066 call!160068)))

(declare-fun b!2537731 () Bool)

(assert (=> b!2537731 (= e!1605141 e!1605145)))

(assert (=> b!2537731 (= c!405933 ((_ is Union!7557) (ite c!405683 (reg!7886 (regTwo!15627 r!27340)) (ite c!405680 (regTwo!15627 (regTwo!15627 r!27340)) (ite c!405684 (regTwo!15626 (regTwo!15627 r!27340)) (regOne!15626 (regTwo!15627 r!27340)))))))))

(declare-fun b!2537732 () Bool)

(assert (=> b!2537732 (= e!1605145 call!160065)))

(declare-fun bm!160063 () Bool)

(assert (=> bm!160063 (= call!160064 (firstChars!90 (ite c!405933 (regOne!15627 (ite c!405683 (reg!7886 (regTwo!15627 r!27340)) (ite c!405680 (regTwo!15627 (regTwo!15627 r!27340)) (ite c!405684 (regTwo!15626 (regTwo!15627 r!27340)) (regOne!15626 (regTwo!15627 r!27340)))))) (regOne!15626 (ite c!405683 (reg!7886 (regTwo!15627 r!27340)) (ite c!405680 (regTwo!15627 (regTwo!15627 r!27340)) (ite c!405684 (regTwo!15626 (regTwo!15627 r!27340)) (regOne!15626 (regTwo!15627 r!27340)))))))))))

(assert (= (and d!720954 c!405934) b!2537725))

(assert (= (and d!720954 (not c!405934)) b!2537723))

(assert (= (and b!2537723 c!405935) b!2537729))

(assert (= (and b!2537723 (not c!405935)) b!2537727))

(assert (= (and b!2537727 c!405936) b!2537726))

(assert (= (and b!2537727 (not c!405936)) b!2537731))

(assert (= (and b!2537731 c!405933) b!2537732))

(assert (= (and b!2537731 (not c!405933)) b!2537724))

(assert (= (and b!2537724 c!405937) b!2537728))

(assert (= (and b!2537724 (not c!405937)) b!2537730))

(assert (= (or b!2537728 b!2537730) bm!160060))

(assert (= (or b!2537732 b!2537728) bm!160063))

(assert (= (or b!2537732 bm!160060) bm!160062))

(assert (= (or b!2537732 b!2537728) bm!160061))

(assert (= (or b!2537726 bm!160062) bm!160059))

(declare-fun m!2885725 () Bool)

(assert (=> bm!160059 m!2885725))

(declare-fun m!2885727 () Bool)

(assert (=> b!2537724 m!2885727))

(declare-fun m!2885729 () Bool)

(assert (=> bm!160061 m!2885729))

(declare-fun m!2885731 () Bool)

(assert (=> bm!160063 m!2885731))

(assert (=> bm!159821 d!720954))

(declare-fun b!2537751 () Bool)

(declare-fun e!1605163 () List!29622)

(declare-fun e!1605162 () List!29622)

(assert (=> b!2537751 (= e!1605163 e!1605162)))

(declare-fun c!405944 () Bool)

(assert (=> b!2537751 (= c!405944 ((_ is ElementMatch!7557) (ite c!405677 (reg!7886 r!27340) (ite c!405674 (regTwo!15627 r!27340) (ite c!405678 (regTwo!15626 r!27340) (regOne!15626 r!27340))))))))

(declare-fun c!405945 () Bool)

(declare-fun c!405946 () Bool)

(declare-fun call!160079 () List!29622)

(declare-fun c!405942 () Bool)

(declare-fun bm!160070 () Bool)

(assert (=> bm!160070 (= call!160079 (firstChars!90 (ite c!405945 (reg!7886 (ite c!405677 (reg!7886 r!27340) (ite c!405674 (regTwo!15627 r!27340) (ite c!405678 (regTwo!15626 r!27340) (regOne!15626 r!27340))))) (ite c!405942 (regTwo!15627 (ite c!405677 (reg!7886 r!27340) (ite c!405674 (regTwo!15627 r!27340) (ite c!405678 (regTwo!15626 r!27340) (regOne!15626 r!27340))))) (ite c!405946 (regTwo!15626 (ite c!405677 (reg!7886 r!27340) (ite c!405674 (regTwo!15627 r!27340) (ite c!405678 (regTwo!15626 r!27340) (regOne!15626 r!27340))))) (regOne!15626 (ite c!405677 (reg!7886 r!27340) (ite c!405674 (regTwo!15627 r!27340) (ite c!405678 (regTwo!15626 r!27340) (regOne!15626 r!27340))))))))))))

(declare-fun bm!160071 () Bool)

(declare-fun call!160078 () List!29622)

(declare-fun call!160077 () List!29622)

(assert (=> bm!160071 (= call!160078 call!160077)))

(declare-fun b!2537752 () Bool)

(assert (=> b!2537752 (= c!405946 (nullable!2474 (regOne!15626 (ite c!405677 (reg!7886 r!27340) (ite c!405674 (regTwo!15627 r!27340) (ite c!405678 (regTwo!15626 r!27340) (regOne!15626 r!27340)))))))))

(declare-fun e!1605164 () List!29622)

(declare-fun e!1605161 () List!29622)

(assert (=> b!2537752 (= e!1605164 e!1605161)))

(declare-fun call!160075 () List!29622)

(declare-fun call!160076 () List!29622)

(declare-fun bm!160072 () Bool)

(assert (=> bm!160072 (= call!160076 (++!7247 call!160075 (ite c!405942 call!160077 call!160078)))))

(declare-fun d!720960 () Bool)

(declare-fun c!405943 () Bool)

(assert (=> d!720960 (= c!405943 (or ((_ is EmptyExpr!7557) (ite c!405677 (reg!7886 r!27340) (ite c!405674 (regTwo!15627 r!27340) (ite c!405678 (regTwo!15626 r!27340) (regOne!15626 r!27340))))) ((_ is EmptyLang!7557) (ite c!405677 (reg!7886 r!27340) (ite c!405674 (regTwo!15627 r!27340) (ite c!405678 (regTwo!15626 r!27340) (regOne!15626 r!27340)))))))))

(assert (=> d!720960 (= (firstChars!90 (ite c!405677 (reg!7886 r!27340) (ite c!405674 (regTwo!15627 r!27340) (ite c!405678 (regTwo!15626 r!27340) (regOne!15626 r!27340))))) e!1605163)))

(declare-fun b!2537753 () Bool)

(assert (=> b!2537753 (= e!1605163 Nil!29522)))

(declare-fun b!2537754 () Bool)

(declare-fun e!1605160 () List!29622)

(assert (=> b!2537754 (= e!1605160 call!160079)))

(declare-fun b!2537755 () Bool)

(assert (=> b!2537755 (= c!405945 ((_ is Star!7557) (ite c!405677 (reg!7886 r!27340) (ite c!405674 (regTwo!15627 r!27340) (ite c!405678 (regTwo!15626 r!27340) (regOne!15626 r!27340))))))))

(assert (=> b!2537755 (= e!1605162 e!1605160)))

(declare-fun b!2537756 () Bool)

(assert (=> b!2537756 (= e!1605161 call!160076)))

(declare-fun b!2537757 () Bool)

(assert (=> b!2537757 (= e!1605162 (Cons!29522 (c!405655 (ite c!405677 (reg!7886 r!27340) (ite c!405674 (regTwo!15627 r!27340) (ite c!405678 (regTwo!15626 r!27340) (regOne!15626 r!27340))))) Nil!29522))))

(declare-fun b!2537758 () Bool)

(assert (=> b!2537758 (= e!1605161 call!160078)))

(declare-fun bm!160073 () Bool)

(assert (=> bm!160073 (= call!160077 call!160079)))

(declare-fun b!2537759 () Bool)

(assert (=> b!2537759 (= e!1605160 e!1605164)))

(assert (=> b!2537759 (= c!405942 ((_ is Union!7557) (ite c!405677 (reg!7886 r!27340) (ite c!405674 (regTwo!15627 r!27340) (ite c!405678 (regTwo!15626 r!27340) (regOne!15626 r!27340))))))))

(declare-fun b!2537760 () Bool)

(assert (=> b!2537760 (= e!1605164 call!160076)))

(declare-fun bm!160074 () Bool)

(assert (=> bm!160074 (= call!160075 (firstChars!90 (ite c!405942 (regOne!15627 (ite c!405677 (reg!7886 r!27340) (ite c!405674 (regTwo!15627 r!27340) (ite c!405678 (regTwo!15626 r!27340) (regOne!15626 r!27340))))) (regOne!15626 (ite c!405677 (reg!7886 r!27340) (ite c!405674 (regTwo!15627 r!27340) (ite c!405678 (regTwo!15626 r!27340) (regOne!15626 r!27340))))))))))

(assert (= (and d!720960 c!405943) b!2537753))

(assert (= (and d!720960 (not c!405943)) b!2537751))

(assert (= (and b!2537751 c!405944) b!2537757))

(assert (= (and b!2537751 (not c!405944)) b!2537755))

(assert (= (and b!2537755 c!405945) b!2537754))

(assert (= (and b!2537755 (not c!405945)) b!2537759))

(assert (= (and b!2537759 c!405942) b!2537760))

(assert (= (and b!2537759 (not c!405942)) b!2537752))

(assert (= (and b!2537752 c!405946) b!2537756))

(assert (= (and b!2537752 (not c!405946)) b!2537758))

(assert (= (or b!2537756 b!2537758) bm!160071))

(assert (= (or b!2537760 b!2537756) bm!160074))

(assert (= (or b!2537760 bm!160071) bm!160073))

(assert (= (or b!2537760 b!2537756) bm!160072))

(assert (= (or b!2537754 bm!160073) bm!160070))

(declare-fun m!2885739 () Bool)

(assert (=> bm!160070 m!2885739))

(declare-fun m!2885741 () Bool)

(assert (=> b!2537752 m!2885741))

(declare-fun m!2885743 () Bool)

(assert (=> bm!160072 m!2885743))

(declare-fun m!2885745 () Bool)

(assert (=> bm!160074 m!2885745))

(assert (=> bm!159816 d!720960))

(declare-fun c!405947 () Bool)

(declare-fun bm!160075 () Bool)

(declare-fun call!160080 () Bool)

(declare-fun c!405948 () Bool)

(assert (=> bm!160075 (= call!160080 (validRegex!3183 (ite c!405947 (reg!7886 lt!901593) (ite c!405948 (regOne!15627 lt!901593) (regTwo!15626 lt!901593)))))))

(declare-fun b!2537761 () Bool)

(declare-fun res!1070108 () Bool)

(declare-fun e!1605166 () Bool)

(assert (=> b!2537761 (=> (not res!1070108) (not e!1605166))))

(declare-fun call!160081 () Bool)

(assert (=> b!2537761 (= res!1070108 call!160081)))

(declare-fun e!1605171 () Bool)

(assert (=> b!2537761 (= e!1605171 e!1605166)))

(declare-fun b!2537762 () Bool)

(declare-fun e!1605170 () Bool)

(assert (=> b!2537762 (= e!1605170 call!160080)))

(declare-fun b!2537763 () Bool)

(declare-fun e!1605165 () Bool)

(assert (=> b!2537763 (= e!1605165 call!160081)))

(declare-fun b!2537764 () Bool)

(declare-fun e!1605169 () Bool)

(declare-fun e!1605168 () Bool)

(assert (=> b!2537764 (= e!1605169 e!1605168)))

(assert (=> b!2537764 (= c!405947 ((_ is Star!7557) lt!901593))))

(declare-fun b!2537765 () Bool)

(declare-fun call!160082 () Bool)

(assert (=> b!2537765 (= e!1605166 call!160082)))

(declare-fun bm!160076 () Bool)

(assert (=> bm!160076 (= call!160082 (validRegex!3183 (ite c!405948 (regTwo!15627 lt!901593) (regOne!15626 lt!901593))))))

(declare-fun bm!160077 () Bool)

(assert (=> bm!160077 (= call!160081 call!160080)))

(declare-fun d!720964 () Bool)

(declare-fun res!1070110 () Bool)

(assert (=> d!720964 (=> res!1070110 e!1605169)))

(assert (=> d!720964 (= res!1070110 ((_ is ElementMatch!7557) lt!901593))))

(assert (=> d!720964 (= (validRegex!3183 lt!901593) e!1605169)))

(declare-fun b!2537766 () Bool)

(assert (=> b!2537766 (= e!1605168 e!1605171)))

(assert (=> b!2537766 (= c!405948 ((_ is Union!7557) lt!901593))))

(declare-fun b!2537767 () Bool)

(declare-fun res!1070111 () Bool)

(declare-fun e!1605167 () Bool)

(assert (=> b!2537767 (=> res!1070111 e!1605167)))

(assert (=> b!2537767 (= res!1070111 (not ((_ is Concat!12253) lt!901593)))))

(assert (=> b!2537767 (= e!1605171 e!1605167)))

(declare-fun b!2537768 () Bool)

(assert (=> b!2537768 (= e!1605168 e!1605170)))

(declare-fun res!1070107 () Bool)

(assert (=> b!2537768 (= res!1070107 (not (nullable!2474 (reg!7886 lt!901593))))))

(assert (=> b!2537768 (=> (not res!1070107) (not e!1605170))))

(declare-fun b!2537769 () Bool)

(assert (=> b!2537769 (= e!1605167 e!1605165)))

(declare-fun res!1070109 () Bool)

(assert (=> b!2537769 (=> (not res!1070109) (not e!1605165))))

(assert (=> b!2537769 (= res!1070109 call!160082)))

(assert (= (and d!720964 (not res!1070110)) b!2537764))

(assert (= (and b!2537764 c!405947) b!2537768))

(assert (= (and b!2537764 (not c!405947)) b!2537766))

(assert (= (and b!2537768 res!1070107) b!2537762))

(assert (= (and b!2537766 c!405948) b!2537761))

(assert (= (and b!2537766 (not c!405948)) b!2537767))

(assert (= (and b!2537761 res!1070108) b!2537765))

(assert (= (and b!2537767 (not res!1070111)) b!2537769))

(assert (= (and b!2537769 res!1070109) b!2537763))

(assert (= (or b!2537761 b!2537763) bm!160077))

(assert (= (or b!2537765 b!2537769) bm!160076))

(assert (= (or b!2537762 bm!160077) bm!160075))

(declare-fun m!2885747 () Bool)

(assert (=> bm!160075 m!2885747))

(declare-fun m!2885749 () Bool)

(assert (=> bm!160076 m!2885749))

(declare-fun m!2885751 () Bool)

(assert (=> b!2537768 m!2885751))

(assert (=> d!720786 d!720964))

(declare-fun c!405950 () Bool)

(declare-fun c!405949 () Bool)

(declare-fun call!160083 () Bool)

(declare-fun bm!160078 () Bool)

(assert (=> bm!160078 (= call!160083 (validRegex!3183 (ite c!405949 (reg!7886 (derivativeStep!2126 r!27340 c!14016)) (ite c!405950 (regOne!15627 (derivativeStep!2126 r!27340 c!14016)) (regTwo!15626 (derivativeStep!2126 r!27340 c!14016))))))))

(declare-fun b!2537770 () Bool)

(declare-fun res!1070113 () Bool)

(declare-fun e!1605173 () Bool)

(assert (=> b!2537770 (=> (not res!1070113) (not e!1605173))))

(declare-fun call!160084 () Bool)

(assert (=> b!2537770 (= res!1070113 call!160084)))

(declare-fun e!1605178 () Bool)

(assert (=> b!2537770 (= e!1605178 e!1605173)))

(declare-fun b!2537771 () Bool)

(declare-fun e!1605177 () Bool)

(assert (=> b!2537771 (= e!1605177 call!160083)))

(declare-fun b!2537772 () Bool)

(declare-fun e!1605172 () Bool)

(assert (=> b!2537772 (= e!1605172 call!160084)))

(declare-fun b!2537773 () Bool)

(declare-fun e!1605176 () Bool)

(declare-fun e!1605175 () Bool)

(assert (=> b!2537773 (= e!1605176 e!1605175)))

(assert (=> b!2537773 (= c!405949 ((_ is Star!7557) (derivativeStep!2126 r!27340 c!14016)))))

(declare-fun b!2537774 () Bool)

(declare-fun call!160085 () Bool)

(assert (=> b!2537774 (= e!1605173 call!160085)))

(declare-fun bm!160079 () Bool)

(assert (=> bm!160079 (= call!160085 (validRegex!3183 (ite c!405950 (regTwo!15627 (derivativeStep!2126 r!27340 c!14016)) (regOne!15626 (derivativeStep!2126 r!27340 c!14016)))))))

(declare-fun bm!160080 () Bool)

(assert (=> bm!160080 (= call!160084 call!160083)))

(declare-fun d!720966 () Bool)

(declare-fun res!1070115 () Bool)

(assert (=> d!720966 (=> res!1070115 e!1605176)))

(assert (=> d!720966 (= res!1070115 ((_ is ElementMatch!7557) (derivativeStep!2126 r!27340 c!14016)))))

(assert (=> d!720966 (= (validRegex!3183 (derivativeStep!2126 r!27340 c!14016)) e!1605176)))

(declare-fun b!2537775 () Bool)

(assert (=> b!2537775 (= e!1605175 e!1605178)))

(assert (=> b!2537775 (= c!405950 ((_ is Union!7557) (derivativeStep!2126 r!27340 c!14016)))))

(declare-fun b!2537776 () Bool)

(declare-fun res!1070116 () Bool)

(declare-fun e!1605174 () Bool)

(assert (=> b!2537776 (=> res!1070116 e!1605174)))

(assert (=> b!2537776 (= res!1070116 (not ((_ is Concat!12253) (derivativeStep!2126 r!27340 c!14016))))))

(assert (=> b!2537776 (= e!1605178 e!1605174)))

(declare-fun b!2537777 () Bool)

(assert (=> b!2537777 (= e!1605175 e!1605177)))

(declare-fun res!1070112 () Bool)

(assert (=> b!2537777 (= res!1070112 (not (nullable!2474 (reg!7886 (derivativeStep!2126 r!27340 c!14016)))))))

(assert (=> b!2537777 (=> (not res!1070112) (not e!1605177))))

(declare-fun b!2537778 () Bool)

(assert (=> b!2537778 (= e!1605174 e!1605172)))

(declare-fun res!1070114 () Bool)

(assert (=> b!2537778 (=> (not res!1070114) (not e!1605172))))

(assert (=> b!2537778 (= res!1070114 call!160085)))

(assert (= (and d!720966 (not res!1070115)) b!2537773))

(assert (= (and b!2537773 c!405949) b!2537777))

(assert (= (and b!2537773 (not c!405949)) b!2537775))

(assert (= (and b!2537777 res!1070112) b!2537771))

(assert (= (and b!2537775 c!405950) b!2537770))

(assert (= (and b!2537775 (not c!405950)) b!2537776))

(assert (= (and b!2537770 res!1070113) b!2537774))

(assert (= (and b!2537776 (not res!1070116)) b!2537778))

(assert (= (and b!2537778 res!1070114) b!2537772))

(assert (= (or b!2537770 b!2537772) bm!160080))

(assert (= (or b!2537774 b!2537778) bm!160079))

(assert (= (or b!2537771 bm!160080) bm!160078))

(declare-fun m!2885753 () Bool)

(assert (=> bm!160078 m!2885753))

(declare-fun m!2885755 () Bool)

(assert (=> bm!160079 m!2885755))

(declare-fun m!2885757 () Bool)

(assert (=> b!2537777 m!2885757))

(assert (=> d!720786 d!720966))

(declare-fun bm!160081 () Bool)

(declare-fun call!160086 () Regex!7557)

(declare-fun call!160088 () Regex!7557)

(assert (=> bm!160081 (= call!160086 call!160088)))

(declare-fun b!2537779 () Bool)

(declare-fun e!1605182 () Regex!7557)

(assert (=> b!2537779 (= e!1605182 EmptyLang!7557)))

(declare-fun bm!160082 () Bool)

(declare-fun call!160087 () Regex!7557)

(declare-fun c!405951 () Bool)

(declare-fun c!405954 () Bool)

(assert (=> bm!160082 (= call!160087 (derivativeStep!2126 (ite c!405954 (regTwo!15627 (ite c!405733 (regOne!15627 r!27340) (regTwo!15626 r!27340))) (ite c!405951 (reg!7886 (ite c!405733 (regOne!15627 r!27340) (regTwo!15626 r!27340))) (regOne!15626 (ite c!405733 (regOne!15627 r!27340) (regTwo!15626 r!27340))))) c!14016))))

(declare-fun b!2537780 () Bool)

(declare-fun e!1605179 () Regex!7557)

(assert (=> b!2537780 (= e!1605179 (Union!7557 (Concat!12253 call!160086 (regTwo!15626 (ite c!405733 (regOne!15627 r!27340) (regTwo!15626 r!27340)))) EmptyLang!7557))))

(declare-fun b!2537781 () Bool)

(declare-fun c!405955 () Bool)

(assert (=> b!2537781 (= c!405955 (nullable!2474 (regOne!15626 (ite c!405733 (regOne!15627 r!27340) (regTwo!15626 r!27340)))))))

(declare-fun e!1605183 () Regex!7557)

(assert (=> b!2537781 (= e!1605183 e!1605179)))

(declare-fun e!1605180 () Regex!7557)

(declare-fun b!2537782 () Bool)

(assert (=> b!2537782 (= e!1605180 (ite (= c!14016 (c!405655 (ite c!405733 (regOne!15627 r!27340) (regTwo!15626 r!27340)))) EmptyExpr!7557 EmptyLang!7557))))

(declare-fun b!2537783 () Bool)

(assert (=> b!2537783 (= e!1605182 e!1605180)))

(declare-fun c!405952 () Bool)

(assert (=> b!2537783 (= c!405952 ((_ is ElementMatch!7557) (ite c!405733 (regOne!15627 r!27340) (regTwo!15626 r!27340))))))

(declare-fun b!2537784 () Bool)

(assert (=> b!2537784 (= c!405954 ((_ is Union!7557) (ite c!405733 (regOne!15627 r!27340) (regTwo!15626 r!27340))))))

(declare-fun e!1605181 () Regex!7557)

(assert (=> b!2537784 (= e!1605180 e!1605181)))

(declare-fun d!720968 () Bool)

(declare-fun lt!901630 () Regex!7557)

(assert (=> d!720968 (validRegex!3183 lt!901630)))

(assert (=> d!720968 (= lt!901630 e!1605182)))

(declare-fun c!405953 () Bool)

(assert (=> d!720968 (= c!405953 (or ((_ is EmptyExpr!7557) (ite c!405733 (regOne!15627 r!27340) (regTwo!15626 r!27340))) ((_ is EmptyLang!7557) (ite c!405733 (regOne!15627 r!27340) (regTwo!15626 r!27340)))))))

(assert (=> d!720968 (validRegex!3183 (ite c!405733 (regOne!15627 r!27340) (regTwo!15626 r!27340)))))

(assert (=> d!720968 (= (derivativeStep!2126 (ite c!405733 (regOne!15627 r!27340) (regTwo!15626 r!27340)) c!14016) lt!901630)))

(declare-fun b!2537785 () Bool)

(assert (=> b!2537785 (= e!1605183 (Concat!12253 call!160088 (ite c!405733 (regOne!15627 r!27340) (regTwo!15626 r!27340))))))

(declare-fun bm!160083 () Bool)

(assert (=> bm!160083 (= call!160088 call!160087)))

(declare-fun b!2537786 () Bool)

(assert (=> b!2537786 (= e!1605181 e!1605183)))

(assert (=> b!2537786 (= c!405951 ((_ is Star!7557) (ite c!405733 (regOne!15627 r!27340) (regTwo!15626 r!27340))))))

(declare-fun call!160089 () Regex!7557)

(declare-fun b!2537787 () Bool)

(assert (=> b!2537787 (= e!1605179 (Union!7557 (Concat!12253 call!160086 (regTwo!15626 (ite c!405733 (regOne!15627 r!27340) (regTwo!15626 r!27340)))) call!160089))))

(declare-fun bm!160084 () Bool)

(assert (=> bm!160084 (= call!160089 (derivativeStep!2126 (ite c!405954 (regOne!15627 (ite c!405733 (regOne!15627 r!27340) (regTwo!15626 r!27340))) (regTwo!15626 (ite c!405733 (regOne!15627 r!27340) (regTwo!15626 r!27340)))) c!14016))))

(declare-fun b!2537788 () Bool)

(assert (=> b!2537788 (= e!1605181 (Union!7557 call!160089 call!160087))))

(assert (= (and d!720968 c!405953) b!2537779))

(assert (= (and d!720968 (not c!405953)) b!2537783))

(assert (= (and b!2537783 c!405952) b!2537782))

(assert (= (and b!2537783 (not c!405952)) b!2537784))

(assert (= (and b!2537784 c!405954) b!2537788))

(assert (= (and b!2537784 (not c!405954)) b!2537786))

(assert (= (and b!2537786 c!405951) b!2537785))

(assert (= (and b!2537786 (not c!405951)) b!2537781))

(assert (= (and b!2537781 c!405955) b!2537787))

(assert (= (and b!2537781 (not c!405955)) b!2537780))

(assert (= (or b!2537787 b!2537780) bm!160081))

(assert (= (or b!2537785 bm!160081) bm!160083))

(assert (= (or b!2537788 bm!160083) bm!160082))

(assert (= (or b!2537788 b!2537787) bm!160084))

(declare-fun m!2885759 () Bool)

(assert (=> bm!160082 m!2885759))

(declare-fun m!2885761 () Bool)

(assert (=> b!2537781 m!2885761))

(declare-fun m!2885763 () Bool)

(assert (=> d!720968 m!2885763))

(declare-fun m!2885765 () Bool)

(assert (=> d!720968 m!2885765))

(declare-fun m!2885767 () Bool)

(assert (=> bm!160084 m!2885767))

(assert (=> bm!159863 d!720968))

(declare-fun d!720970 () Bool)

(assert (=> d!720970 (= (nullable!2474 (reg!7886 (regTwo!15627 r!27340))) (nullableFct!706 (reg!7886 (regTwo!15627 r!27340))))))

(declare-fun bs!469321 () Bool)

(assert (= bs!469321 d!720970))

(declare-fun m!2885769 () Bool)

(assert (=> bs!469321 m!2885769))

(assert (=> b!2537186 d!720970))

(declare-fun b!2537800 () Bool)

(declare-fun e!1605188 () Bool)

(declare-fun tp!810571 () Bool)

(declare-fun tp!810572 () Bool)

(assert (=> b!2537800 (= e!1605188 (and tp!810571 tp!810572))))

(declare-fun b!2537799 () Bool)

(declare-fun tp!810575 () Bool)

(assert (=> b!2537799 (= e!1605188 tp!810575)))

(declare-fun b!2537798 () Bool)

(declare-fun tp!810574 () Bool)

(declare-fun tp!810573 () Bool)

(assert (=> b!2537798 (= e!1605188 (and tp!810574 tp!810573))))

(declare-fun b!2537797 () Bool)

(assert (=> b!2537797 (= e!1605188 tp_is_empty!12969)))

(assert (=> b!2537226 (= tp!810546 e!1605188)))

(assert (= (and b!2537226 ((_ is ElementMatch!7557) (regOne!15627 (reg!7886 r!27340)))) b!2537797))

(assert (= (and b!2537226 ((_ is Concat!12253) (regOne!15627 (reg!7886 r!27340)))) b!2537798))

(assert (= (and b!2537226 ((_ is Star!7557) (regOne!15627 (reg!7886 r!27340)))) b!2537799))

(assert (= (and b!2537226 ((_ is Union!7557) (regOne!15627 (reg!7886 r!27340)))) b!2537800))

(declare-fun b!2537804 () Bool)

(declare-fun e!1605189 () Bool)

(declare-fun tp!810576 () Bool)

(declare-fun tp!810577 () Bool)

(assert (=> b!2537804 (= e!1605189 (and tp!810576 tp!810577))))

(declare-fun b!2537803 () Bool)

(declare-fun tp!810580 () Bool)

(assert (=> b!2537803 (= e!1605189 tp!810580)))

(declare-fun b!2537802 () Bool)

(declare-fun tp!810579 () Bool)

(declare-fun tp!810578 () Bool)

(assert (=> b!2537802 (= e!1605189 (and tp!810579 tp!810578))))

(declare-fun b!2537801 () Bool)

(assert (=> b!2537801 (= e!1605189 tp_is_empty!12969)))

(assert (=> b!2537226 (= tp!810547 e!1605189)))

(assert (= (and b!2537226 ((_ is ElementMatch!7557) (regTwo!15627 (reg!7886 r!27340)))) b!2537801))

(assert (= (and b!2537226 ((_ is Concat!12253) (regTwo!15627 (reg!7886 r!27340)))) b!2537802))

(assert (= (and b!2537226 ((_ is Star!7557) (regTwo!15627 (reg!7886 r!27340)))) b!2537803))

(assert (= (and b!2537226 ((_ is Union!7557) (regTwo!15627 (reg!7886 r!27340)))) b!2537804))

(declare-fun b!2537808 () Bool)

(declare-fun e!1605190 () Bool)

(declare-fun tp!810581 () Bool)

(declare-fun tp!810582 () Bool)

(assert (=> b!2537808 (= e!1605190 (and tp!810581 tp!810582))))

(declare-fun b!2537807 () Bool)

(declare-fun tp!810585 () Bool)

(assert (=> b!2537807 (= e!1605190 tp!810585)))

(declare-fun b!2537806 () Bool)

(declare-fun tp!810584 () Bool)

(declare-fun tp!810583 () Bool)

(assert (=> b!2537806 (= e!1605190 (and tp!810584 tp!810583))))

(declare-fun b!2537805 () Bool)

(assert (=> b!2537805 (= e!1605190 tp_is_empty!12969)))

(assert (=> b!2537240 (= tp!810569 e!1605190)))

(assert (= (and b!2537240 ((_ is ElementMatch!7557) (regOne!15626 (regTwo!15627 r!27340)))) b!2537805))

(assert (= (and b!2537240 ((_ is Concat!12253) (regOne!15626 (regTwo!15627 r!27340)))) b!2537806))

(assert (= (and b!2537240 ((_ is Star!7557) (regOne!15626 (regTwo!15627 r!27340)))) b!2537807))

(assert (= (and b!2537240 ((_ is Union!7557) (regOne!15626 (regTwo!15627 r!27340)))) b!2537808))

(declare-fun b!2537812 () Bool)

(declare-fun e!1605191 () Bool)

(declare-fun tp!810586 () Bool)

(declare-fun tp!810587 () Bool)

(assert (=> b!2537812 (= e!1605191 (and tp!810586 tp!810587))))

(declare-fun b!2537811 () Bool)

(declare-fun tp!810590 () Bool)

(assert (=> b!2537811 (= e!1605191 tp!810590)))

(declare-fun b!2537810 () Bool)

(declare-fun tp!810589 () Bool)

(declare-fun tp!810588 () Bool)

(assert (=> b!2537810 (= e!1605191 (and tp!810589 tp!810588))))

(declare-fun b!2537809 () Bool)

(assert (=> b!2537809 (= e!1605191 tp_is_empty!12969)))

(assert (=> b!2537240 (= tp!810568 e!1605191)))

(assert (= (and b!2537240 ((_ is ElementMatch!7557) (regTwo!15626 (regTwo!15627 r!27340)))) b!2537809))

(assert (= (and b!2537240 ((_ is Concat!12253) (regTwo!15626 (regTwo!15627 r!27340)))) b!2537810))

(assert (= (and b!2537240 ((_ is Star!7557) (regTwo!15626 (regTwo!15627 r!27340)))) b!2537811))

(assert (= (and b!2537240 ((_ is Union!7557) (regTwo!15626 (regTwo!15627 r!27340)))) b!2537812))

(declare-fun b!2537813 () Bool)

(declare-fun e!1605192 () Bool)

(declare-fun tp!810591 () Bool)

(assert (=> b!2537813 (= e!1605192 (and tp_is_empty!12969 tp!810591))))

(assert (=> b!2537208 (= tp!810530 e!1605192)))

(assert (= (and b!2537208 ((_ is Cons!29522) (t!211321 (t!211321 tl!4068)))) b!2537813))

(declare-fun b!2537817 () Bool)

(declare-fun e!1605193 () Bool)

(declare-fun tp!810592 () Bool)

(declare-fun tp!810593 () Bool)

(assert (=> b!2537817 (= e!1605193 (and tp!810592 tp!810593))))

(declare-fun b!2537816 () Bool)

(declare-fun tp!810596 () Bool)

(assert (=> b!2537816 (= e!1605193 tp!810596)))

(declare-fun b!2537815 () Bool)

(declare-fun tp!810595 () Bool)

(declare-fun tp!810594 () Bool)

(assert (=> b!2537815 (= e!1605193 (and tp!810595 tp!810594))))

(declare-fun b!2537814 () Bool)

(assert (=> b!2537814 (= e!1605193 tp_is_empty!12969)))

(assert (=> b!2537232 (= tp!810559 e!1605193)))

(assert (= (and b!2537232 ((_ is ElementMatch!7557) (regOne!15626 (regTwo!15626 r!27340)))) b!2537814))

(assert (= (and b!2537232 ((_ is Concat!12253) (regOne!15626 (regTwo!15626 r!27340)))) b!2537815))

(assert (= (and b!2537232 ((_ is Star!7557) (regOne!15626 (regTwo!15626 r!27340)))) b!2537816))

(assert (= (and b!2537232 ((_ is Union!7557) (regOne!15626 (regTwo!15626 r!27340)))) b!2537817))

(declare-fun b!2537821 () Bool)

(declare-fun e!1605194 () Bool)

(declare-fun tp!810597 () Bool)

(declare-fun tp!810598 () Bool)

(assert (=> b!2537821 (= e!1605194 (and tp!810597 tp!810598))))

(declare-fun b!2537820 () Bool)

(declare-fun tp!810601 () Bool)

(assert (=> b!2537820 (= e!1605194 tp!810601)))

(declare-fun b!2537819 () Bool)

(declare-fun tp!810600 () Bool)

(declare-fun tp!810599 () Bool)

(assert (=> b!2537819 (= e!1605194 (and tp!810600 tp!810599))))

(declare-fun b!2537818 () Bool)

(assert (=> b!2537818 (= e!1605194 tp_is_empty!12969)))

(assert (=> b!2537232 (= tp!810558 e!1605194)))

(assert (= (and b!2537232 ((_ is ElementMatch!7557) (regTwo!15626 (regTwo!15626 r!27340)))) b!2537818))

(assert (= (and b!2537232 ((_ is Concat!12253) (regTwo!15626 (regTwo!15626 r!27340)))) b!2537819))

(assert (= (and b!2537232 ((_ is Star!7557) (regTwo!15626 (regTwo!15626 r!27340)))) b!2537820))

(assert (= (and b!2537232 ((_ is Union!7557) (regTwo!15626 (regTwo!15626 r!27340)))) b!2537821))

(declare-fun b!2537825 () Bool)

(declare-fun e!1605195 () Bool)

(declare-fun tp!810602 () Bool)

(declare-fun tp!810603 () Bool)

(assert (=> b!2537825 (= e!1605195 (and tp!810602 tp!810603))))

(declare-fun b!2537824 () Bool)

(declare-fun tp!810606 () Bool)

(assert (=> b!2537824 (= e!1605195 tp!810606)))

(declare-fun b!2537823 () Bool)

(declare-fun tp!810605 () Bool)

(declare-fun tp!810604 () Bool)

(assert (=> b!2537823 (= e!1605195 (and tp!810605 tp!810604))))

(declare-fun b!2537822 () Bool)

(assert (=> b!2537822 (= e!1605195 tp_is_empty!12969)))

(assert (=> b!2537241 (= tp!810570 e!1605195)))

(assert (= (and b!2537241 ((_ is ElementMatch!7557) (reg!7886 (regTwo!15627 r!27340)))) b!2537822))

(assert (= (and b!2537241 ((_ is Concat!12253) (reg!7886 (regTwo!15627 r!27340)))) b!2537823))

(assert (= (and b!2537241 ((_ is Star!7557) (reg!7886 (regTwo!15627 r!27340)))) b!2537824))

(assert (= (and b!2537241 ((_ is Union!7557) (reg!7886 (regTwo!15627 r!27340)))) b!2537825))

(declare-fun b!2537833 () Bool)

(declare-fun e!1605198 () Bool)

(declare-fun tp!810607 () Bool)

(declare-fun tp!810608 () Bool)

(assert (=> b!2537833 (= e!1605198 (and tp!810607 tp!810608))))

(declare-fun b!2537832 () Bool)

(declare-fun tp!810611 () Bool)

(assert (=> b!2537832 (= e!1605198 tp!810611)))

(declare-fun b!2537831 () Bool)

(declare-fun tp!810610 () Bool)

(declare-fun tp!810609 () Bool)

(assert (=> b!2537831 (= e!1605198 (and tp!810610 tp!810609))))

(declare-fun b!2537830 () Bool)

(assert (=> b!2537830 (= e!1605198 tp_is_empty!12969)))

(assert (=> b!2537236 (= tp!810564 e!1605198)))

(assert (= (and b!2537236 ((_ is ElementMatch!7557) (regOne!15626 (regOne!15627 r!27340)))) b!2537830))

(assert (= (and b!2537236 ((_ is Concat!12253) (regOne!15626 (regOne!15627 r!27340)))) b!2537831))

(assert (= (and b!2537236 ((_ is Star!7557) (regOne!15626 (regOne!15627 r!27340)))) b!2537832))

(assert (= (and b!2537236 ((_ is Union!7557) (regOne!15626 (regOne!15627 r!27340)))) b!2537833))

(declare-fun b!2537837 () Bool)

(declare-fun e!1605199 () Bool)

(declare-fun tp!810612 () Bool)

(declare-fun tp!810613 () Bool)

(assert (=> b!2537837 (= e!1605199 (and tp!810612 tp!810613))))

(declare-fun b!2537836 () Bool)

(declare-fun tp!810616 () Bool)

(assert (=> b!2537836 (= e!1605199 tp!810616)))

(declare-fun b!2537835 () Bool)

(declare-fun tp!810615 () Bool)

(declare-fun tp!810614 () Bool)

(assert (=> b!2537835 (= e!1605199 (and tp!810615 tp!810614))))

(declare-fun b!2537834 () Bool)

(assert (=> b!2537834 (= e!1605199 tp_is_empty!12969)))

(assert (=> b!2537236 (= tp!810563 e!1605199)))

(assert (= (and b!2537236 ((_ is ElementMatch!7557) (regTwo!15626 (regOne!15627 r!27340)))) b!2537834))

(assert (= (and b!2537236 ((_ is Concat!12253) (regTwo!15626 (regOne!15627 r!27340)))) b!2537835))

(assert (= (and b!2537236 ((_ is Star!7557) (regTwo!15626 (regOne!15627 r!27340)))) b!2537836))

(assert (= (and b!2537236 ((_ is Union!7557) (regTwo!15626 (regOne!15627 r!27340)))) b!2537837))

(declare-fun b!2537841 () Bool)

(declare-fun e!1605200 () Bool)

(declare-fun tp!810617 () Bool)

(declare-fun tp!810618 () Bool)

(assert (=> b!2537841 (= e!1605200 (and tp!810617 tp!810618))))

(declare-fun b!2537840 () Bool)

(declare-fun tp!810621 () Bool)

(assert (=> b!2537840 (= e!1605200 tp!810621)))

(declare-fun b!2537839 () Bool)

(declare-fun tp!810620 () Bool)

(declare-fun tp!810619 () Bool)

(assert (=> b!2537839 (= e!1605200 (and tp!810620 tp!810619))))

(declare-fun b!2537838 () Bool)

(assert (=> b!2537838 (= e!1605200 tp_is_empty!12969)))

(assert (=> b!2537224 (= tp!810549 e!1605200)))

(assert (= (and b!2537224 ((_ is ElementMatch!7557) (regOne!15626 (reg!7886 r!27340)))) b!2537838))

(assert (= (and b!2537224 ((_ is Concat!12253) (regOne!15626 (reg!7886 r!27340)))) b!2537839))

(assert (= (and b!2537224 ((_ is Star!7557) (regOne!15626 (reg!7886 r!27340)))) b!2537840))

(assert (= (and b!2537224 ((_ is Union!7557) (regOne!15626 (reg!7886 r!27340)))) b!2537841))

(declare-fun b!2537854 () Bool)

(declare-fun e!1605208 () Bool)

(declare-fun tp!810622 () Bool)

(declare-fun tp!810623 () Bool)

(assert (=> b!2537854 (= e!1605208 (and tp!810622 tp!810623))))

(declare-fun b!2537853 () Bool)

(declare-fun tp!810626 () Bool)

(assert (=> b!2537853 (= e!1605208 tp!810626)))

(declare-fun b!2537852 () Bool)

(declare-fun tp!810625 () Bool)

(declare-fun tp!810624 () Bool)

(assert (=> b!2537852 (= e!1605208 (and tp!810625 tp!810624))))

(declare-fun b!2537851 () Bool)

(assert (=> b!2537851 (= e!1605208 tp_is_empty!12969)))

(assert (=> b!2537224 (= tp!810548 e!1605208)))

(assert (= (and b!2537224 ((_ is ElementMatch!7557) (regTwo!15626 (reg!7886 r!27340)))) b!2537851))

(assert (= (and b!2537224 ((_ is Concat!12253) (regTwo!15626 (reg!7886 r!27340)))) b!2537852))

(assert (= (and b!2537224 ((_ is Star!7557) (regTwo!15626 (reg!7886 r!27340)))) b!2537853))

(assert (= (and b!2537224 ((_ is Union!7557) (regTwo!15626 (reg!7886 r!27340)))) b!2537854))

(declare-fun b!2537858 () Bool)

(declare-fun e!1605209 () Bool)

(declare-fun tp!810627 () Bool)

(declare-fun tp!810628 () Bool)

(assert (=> b!2537858 (= e!1605209 (and tp!810627 tp!810628))))

(declare-fun b!2537857 () Bool)

(declare-fun tp!810631 () Bool)

(assert (=> b!2537857 (= e!1605209 tp!810631)))

(declare-fun b!2537856 () Bool)

(declare-fun tp!810630 () Bool)

(declare-fun tp!810629 () Bool)

(assert (=> b!2537856 (= e!1605209 (and tp!810630 tp!810629))))

(declare-fun b!2537855 () Bool)

(assert (=> b!2537855 (= e!1605209 tp_is_empty!12969)))

(assert (=> b!2537238 (= tp!810561 e!1605209)))

(assert (= (and b!2537238 ((_ is ElementMatch!7557) (regOne!15627 (regOne!15627 r!27340)))) b!2537855))

(assert (= (and b!2537238 ((_ is Concat!12253) (regOne!15627 (regOne!15627 r!27340)))) b!2537856))

(assert (= (and b!2537238 ((_ is Star!7557) (regOne!15627 (regOne!15627 r!27340)))) b!2537857))

(assert (= (and b!2537238 ((_ is Union!7557) (regOne!15627 (regOne!15627 r!27340)))) b!2537858))

(declare-fun b!2537862 () Bool)

(declare-fun e!1605210 () Bool)

(declare-fun tp!810632 () Bool)

(declare-fun tp!810633 () Bool)

(assert (=> b!2537862 (= e!1605210 (and tp!810632 tp!810633))))

(declare-fun b!2537861 () Bool)

(declare-fun tp!810636 () Bool)

(assert (=> b!2537861 (= e!1605210 tp!810636)))

(declare-fun b!2537860 () Bool)

(declare-fun tp!810635 () Bool)

(declare-fun tp!810634 () Bool)

(assert (=> b!2537860 (= e!1605210 (and tp!810635 tp!810634))))

(declare-fun b!2537859 () Bool)

(assert (=> b!2537859 (= e!1605210 tp_is_empty!12969)))

(assert (=> b!2537238 (= tp!810562 e!1605210)))

(assert (= (and b!2537238 ((_ is ElementMatch!7557) (regTwo!15627 (regOne!15627 r!27340)))) b!2537859))

(assert (= (and b!2537238 ((_ is Concat!12253) (regTwo!15627 (regOne!15627 r!27340)))) b!2537860))

(assert (= (and b!2537238 ((_ is Star!7557) (regTwo!15627 (regOne!15627 r!27340)))) b!2537861))

(assert (= (and b!2537238 ((_ is Union!7557) (regTwo!15627 (regOne!15627 r!27340)))) b!2537862))

(declare-fun b!2537866 () Bool)

(declare-fun e!1605211 () Bool)

(declare-fun tp!810637 () Bool)

(declare-fun tp!810638 () Bool)

(assert (=> b!2537866 (= e!1605211 (and tp!810637 tp!810638))))

(declare-fun b!2537865 () Bool)

(declare-fun tp!810641 () Bool)

(assert (=> b!2537865 (= e!1605211 tp!810641)))

(declare-fun b!2537864 () Bool)

(declare-fun tp!810640 () Bool)

(declare-fun tp!810639 () Bool)

(assert (=> b!2537864 (= e!1605211 (and tp!810640 tp!810639))))

(declare-fun b!2537863 () Bool)

(assert (=> b!2537863 (= e!1605211 tp_is_empty!12969)))

(assert (=> b!2537233 (= tp!810560 e!1605211)))

(assert (= (and b!2537233 ((_ is ElementMatch!7557) (reg!7886 (regTwo!15626 r!27340)))) b!2537863))

(assert (= (and b!2537233 ((_ is Concat!12253) (reg!7886 (regTwo!15626 r!27340)))) b!2537864))

(assert (= (and b!2537233 ((_ is Star!7557) (reg!7886 (regTwo!15626 r!27340)))) b!2537865))

(assert (= (and b!2537233 ((_ is Union!7557) (reg!7886 (regTwo!15626 r!27340)))) b!2537866))

(declare-fun b!2537870 () Bool)

(declare-fun e!1605212 () Bool)

(declare-fun tp!810642 () Bool)

(declare-fun tp!810643 () Bool)

(assert (=> b!2537870 (= e!1605212 (and tp!810642 tp!810643))))

(declare-fun b!2537869 () Bool)

(declare-fun tp!810646 () Bool)

(assert (=> b!2537869 (= e!1605212 tp!810646)))

(declare-fun b!2537868 () Bool)

(declare-fun tp!810645 () Bool)

(declare-fun tp!810644 () Bool)

(assert (=> b!2537868 (= e!1605212 (and tp!810645 tp!810644))))

(declare-fun b!2537867 () Bool)

(assert (=> b!2537867 (= e!1605212 tp_is_empty!12969)))

(assert (=> b!2537228 (= tp!810554 e!1605212)))

(assert (= (and b!2537228 ((_ is ElementMatch!7557) (regOne!15626 (regOne!15626 r!27340)))) b!2537867))

(assert (= (and b!2537228 ((_ is Concat!12253) (regOne!15626 (regOne!15626 r!27340)))) b!2537868))

(assert (= (and b!2537228 ((_ is Star!7557) (regOne!15626 (regOne!15626 r!27340)))) b!2537869))

(assert (= (and b!2537228 ((_ is Union!7557) (regOne!15626 (regOne!15626 r!27340)))) b!2537870))

(declare-fun b!2537883 () Bool)

(declare-fun e!1605220 () Bool)

(declare-fun tp!810647 () Bool)

(declare-fun tp!810648 () Bool)

(assert (=> b!2537883 (= e!1605220 (and tp!810647 tp!810648))))

(declare-fun b!2537882 () Bool)

(declare-fun tp!810651 () Bool)

(assert (=> b!2537882 (= e!1605220 tp!810651)))

(declare-fun b!2537881 () Bool)

(declare-fun tp!810650 () Bool)

(declare-fun tp!810649 () Bool)

(assert (=> b!2537881 (= e!1605220 (and tp!810650 tp!810649))))

(declare-fun b!2537880 () Bool)

(assert (=> b!2537880 (= e!1605220 tp_is_empty!12969)))

(assert (=> b!2537228 (= tp!810553 e!1605220)))

(assert (= (and b!2537228 ((_ is ElementMatch!7557) (regTwo!15626 (regOne!15626 r!27340)))) b!2537880))

(assert (= (and b!2537228 ((_ is Concat!12253) (regTwo!15626 (regOne!15626 r!27340)))) b!2537881))

(assert (= (and b!2537228 ((_ is Star!7557) (regTwo!15626 (regOne!15626 r!27340)))) b!2537882))

(assert (= (and b!2537228 ((_ is Union!7557) (regTwo!15626 (regOne!15626 r!27340)))) b!2537883))

(declare-fun b!2537887 () Bool)

(declare-fun e!1605221 () Bool)

(declare-fun tp!810652 () Bool)

(declare-fun tp!810653 () Bool)

(assert (=> b!2537887 (= e!1605221 (and tp!810652 tp!810653))))

(declare-fun b!2537886 () Bool)

(declare-fun tp!810656 () Bool)

(assert (=> b!2537886 (= e!1605221 tp!810656)))

(declare-fun b!2537885 () Bool)

(declare-fun tp!810655 () Bool)

(declare-fun tp!810654 () Bool)

(assert (=> b!2537885 (= e!1605221 (and tp!810655 tp!810654))))

(declare-fun b!2537884 () Bool)

(assert (=> b!2537884 (= e!1605221 tp_is_empty!12969)))

(assert (=> b!2537242 (= tp!810566 e!1605221)))

(assert (= (and b!2537242 ((_ is ElementMatch!7557) (regOne!15627 (regTwo!15627 r!27340)))) b!2537884))

(assert (= (and b!2537242 ((_ is Concat!12253) (regOne!15627 (regTwo!15627 r!27340)))) b!2537885))

(assert (= (and b!2537242 ((_ is Star!7557) (regOne!15627 (regTwo!15627 r!27340)))) b!2537886))

(assert (= (and b!2537242 ((_ is Union!7557) (regOne!15627 (regTwo!15627 r!27340)))) b!2537887))

(declare-fun b!2537891 () Bool)

(declare-fun e!1605222 () Bool)

(declare-fun tp!810657 () Bool)

(declare-fun tp!810658 () Bool)

(assert (=> b!2537891 (= e!1605222 (and tp!810657 tp!810658))))

(declare-fun b!2537890 () Bool)

(declare-fun tp!810661 () Bool)

(assert (=> b!2537890 (= e!1605222 tp!810661)))

(declare-fun b!2537889 () Bool)

(declare-fun tp!810660 () Bool)

(declare-fun tp!810659 () Bool)

(assert (=> b!2537889 (= e!1605222 (and tp!810660 tp!810659))))

(declare-fun b!2537888 () Bool)

(assert (=> b!2537888 (= e!1605222 tp_is_empty!12969)))

(assert (=> b!2537242 (= tp!810567 e!1605222)))

(assert (= (and b!2537242 ((_ is ElementMatch!7557) (regTwo!15627 (regTwo!15627 r!27340)))) b!2537888))

(assert (= (and b!2537242 ((_ is Concat!12253) (regTwo!15627 (regTwo!15627 r!27340)))) b!2537889))

(assert (= (and b!2537242 ((_ is Star!7557) (regTwo!15627 (regTwo!15627 r!27340)))) b!2537890))

(assert (= (and b!2537242 ((_ is Union!7557) (regTwo!15627 (regTwo!15627 r!27340)))) b!2537891))

(declare-fun b!2537895 () Bool)

(declare-fun e!1605223 () Bool)

(declare-fun tp!810662 () Bool)

(declare-fun tp!810663 () Bool)

(assert (=> b!2537895 (= e!1605223 (and tp!810662 tp!810663))))

(declare-fun b!2537894 () Bool)

(declare-fun tp!810666 () Bool)

(assert (=> b!2537894 (= e!1605223 tp!810666)))

(declare-fun b!2537893 () Bool)

(declare-fun tp!810665 () Bool)

(declare-fun tp!810664 () Bool)

(assert (=> b!2537893 (= e!1605223 (and tp!810665 tp!810664))))

(declare-fun b!2537892 () Bool)

(assert (=> b!2537892 (= e!1605223 tp_is_empty!12969)))

(assert (=> b!2537237 (= tp!810565 e!1605223)))

(assert (= (and b!2537237 ((_ is ElementMatch!7557) (reg!7886 (regOne!15627 r!27340)))) b!2537892))

(assert (= (and b!2537237 ((_ is Concat!12253) (reg!7886 (regOne!15627 r!27340)))) b!2537893))

(assert (= (and b!2537237 ((_ is Star!7557) (reg!7886 (regOne!15627 r!27340)))) b!2537894))

(assert (= (and b!2537237 ((_ is Union!7557) (reg!7886 (regOne!15627 r!27340)))) b!2537895))

(declare-fun b!2537899 () Bool)

(declare-fun e!1605224 () Bool)

(declare-fun tp!810667 () Bool)

(declare-fun tp!810668 () Bool)

(assert (=> b!2537899 (= e!1605224 (and tp!810667 tp!810668))))

(declare-fun b!2537898 () Bool)

(declare-fun tp!810671 () Bool)

(assert (=> b!2537898 (= e!1605224 tp!810671)))

(declare-fun b!2537897 () Bool)

(declare-fun tp!810670 () Bool)

(declare-fun tp!810669 () Bool)

(assert (=> b!2537897 (= e!1605224 (and tp!810670 tp!810669))))

(declare-fun b!2537896 () Bool)

(assert (=> b!2537896 (= e!1605224 tp_is_empty!12969)))

(assert (=> b!2537230 (= tp!810551 e!1605224)))

(assert (= (and b!2537230 ((_ is ElementMatch!7557) (regOne!15627 (regOne!15626 r!27340)))) b!2537896))

(assert (= (and b!2537230 ((_ is Concat!12253) (regOne!15627 (regOne!15626 r!27340)))) b!2537897))

(assert (= (and b!2537230 ((_ is Star!7557) (regOne!15627 (regOne!15626 r!27340)))) b!2537898))

(assert (= (and b!2537230 ((_ is Union!7557) (regOne!15627 (regOne!15626 r!27340)))) b!2537899))

(declare-fun b!2537903 () Bool)

(declare-fun e!1605225 () Bool)

(declare-fun tp!810672 () Bool)

(declare-fun tp!810673 () Bool)

(assert (=> b!2537903 (= e!1605225 (and tp!810672 tp!810673))))

(declare-fun b!2537902 () Bool)

(declare-fun tp!810676 () Bool)

(assert (=> b!2537902 (= e!1605225 tp!810676)))

(declare-fun b!2537901 () Bool)

(declare-fun tp!810675 () Bool)

(declare-fun tp!810674 () Bool)

(assert (=> b!2537901 (= e!1605225 (and tp!810675 tp!810674))))

(declare-fun b!2537900 () Bool)

(assert (=> b!2537900 (= e!1605225 tp_is_empty!12969)))

(assert (=> b!2537230 (= tp!810552 e!1605225)))

(assert (= (and b!2537230 ((_ is ElementMatch!7557) (regTwo!15627 (regOne!15626 r!27340)))) b!2537900))

(assert (= (and b!2537230 ((_ is Concat!12253) (regTwo!15627 (regOne!15626 r!27340)))) b!2537901))

(assert (= (and b!2537230 ((_ is Star!7557) (regTwo!15627 (regOne!15626 r!27340)))) b!2537902))

(assert (= (and b!2537230 ((_ is Union!7557) (regTwo!15627 (regOne!15626 r!27340)))) b!2537903))

(declare-fun b!2537907 () Bool)

(declare-fun e!1605226 () Bool)

(declare-fun tp!810677 () Bool)

(declare-fun tp!810678 () Bool)

(assert (=> b!2537907 (= e!1605226 (and tp!810677 tp!810678))))

(declare-fun b!2537906 () Bool)

(declare-fun tp!810681 () Bool)

(assert (=> b!2537906 (= e!1605226 tp!810681)))

(declare-fun b!2537905 () Bool)

(declare-fun tp!810680 () Bool)

(declare-fun tp!810679 () Bool)

(assert (=> b!2537905 (= e!1605226 (and tp!810680 tp!810679))))

(declare-fun b!2537904 () Bool)

(assert (=> b!2537904 (= e!1605226 tp_is_empty!12969)))

(assert (=> b!2537225 (= tp!810550 e!1605226)))

(assert (= (and b!2537225 ((_ is ElementMatch!7557) (reg!7886 (reg!7886 r!27340)))) b!2537904))

(assert (= (and b!2537225 ((_ is Concat!12253) (reg!7886 (reg!7886 r!27340)))) b!2537905))

(assert (= (and b!2537225 ((_ is Star!7557) (reg!7886 (reg!7886 r!27340)))) b!2537906))

(assert (= (and b!2537225 ((_ is Union!7557) (reg!7886 (reg!7886 r!27340)))) b!2537907))

(declare-fun b!2537914 () Bool)

(declare-fun e!1605232 () Bool)

(declare-fun tp!810682 () Bool)

(declare-fun tp!810683 () Bool)

(assert (=> b!2537914 (= e!1605232 (and tp!810682 tp!810683))))

(declare-fun b!2537913 () Bool)

(declare-fun tp!810686 () Bool)

(assert (=> b!2537913 (= e!1605232 tp!810686)))

(declare-fun b!2537911 () Bool)

(declare-fun tp!810685 () Bool)

(declare-fun tp!810684 () Bool)

(assert (=> b!2537911 (= e!1605232 (and tp!810685 tp!810684))))

(declare-fun b!2537909 () Bool)

(assert (=> b!2537909 (= e!1605232 tp_is_empty!12969)))

(assert (=> b!2537234 (= tp!810556 e!1605232)))

(assert (= (and b!2537234 ((_ is ElementMatch!7557) (regOne!15627 (regTwo!15626 r!27340)))) b!2537909))

(assert (= (and b!2537234 ((_ is Concat!12253) (regOne!15627 (regTwo!15626 r!27340)))) b!2537911))

(assert (= (and b!2537234 ((_ is Star!7557) (regOne!15627 (regTwo!15626 r!27340)))) b!2537913))

(assert (= (and b!2537234 ((_ is Union!7557) (regOne!15627 (regTwo!15626 r!27340)))) b!2537914))

(declare-fun b!2537925 () Bool)

(declare-fun e!1605233 () Bool)

(declare-fun tp!810687 () Bool)

(declare-fun tp!810688 () Bool)

(assert (=> b!2537925 (= e!1605233 (and tp!810687 tp!810688))))

(declare-fun b!2537924 () Bool)

(declare-fun tp!810691 () Bool)

(assert (=> b!2537924 (= e!1605233 tp!810691)))

(declare-fun b!2537923 () Bool)

(declare-fun tp!810690 () Bool)

(declare-fun tp!810689 () Bool)

(assert (=> b!2537923 (= e!1605233 (and tp!810690 tp!810689))))

(declare-fun b!2537922 () Bool)

(assert (=> b!2537922 (= e!1605233 tp_is_empty!12969)))

(assert (=> b!2537234 (= tp!810557 e!1605233)))

(assert (= (and b!2537234 ((_ is ElementMatch!7557) (regTwo!15627 (regTwo!15626 r!27340)))) b!2537922))

(assert (= (and b!2537234 ((_ is Concat!12253) (regTwo!15627 (regTwo!15626 r!27340)))) b!2537923))

(assert (= (and b!2537234 ((_ is Star!7557) (regTwo!15627 (regTwo!15626 r!27340)))) b!2537924))

(assert (= (and b!2537234 ((_ is Union!7557) (regTwo!15627 (regTwo!15626 r!27340)))) b!2537925))

(declare-fun b!2537929 () Bool)

(declare-fun e!1605234 () Bool)

(declare-fun tp!810692 () Bool)

(declare-fun tp!810693 () Bool)

(assert (=> b!2537929 (= e!1605234 (and tp!810692 tp!810693))))

(declare-fun b!2537928 () Bool)

(declare-fun tp!810696 () Bool)

(assert (=> b!2537928 (= e!1605234 tp!810696)))

(declare-fun b!2537927 () Bool)

(declare-fun tp!810695 () Bool)

(declare-fun tp!810694 () Bool)

(assert (=> b!2537927 (= e!1605234 (and tp!810695 tp!810694))))

(declare-fun b!2537926 () Bool)

(assert (=> b!2537926 (= e!1605234 tp_is_empty!12969)))

(assert (=> b!2537229 (= tp!810555 e!1605234)))

(assert (= (and b!2537229 ((_ is ElementMatch!7557) (reg!7886 (regOne!15626 r!27340)))) b!2537926))

(assert (= (and b!2537229 ((_ is Concat!12253) (reg!7886 (regOne!15626 r!27340)))) b!2537927))

(assert (= (and b!2537229 ((_ is Star!7557) (reg!7886 (regOne!15626 r!27340)))) b!2537928))

(assert (= (and b!2537229 ((_ is Union!7557) (reg!7886 (regOne!15626 r!27340)))) b!2537929))

(check-sat (not b!2537839) (not bm!160070) (not b!2537821) (not b!2537841) (not b!2537924) (not bm!159946) (not bm!159955) (not bm!159960) (not b!2537441) (not b!2537906) (not bm!159969) (not bm!159980) (not b!2537887) (not b!2537484) (not b!2537928) (not b!2537812) (not b!2537840) (not b!2537337) (not b!2537898) (not b!2537808) (not b!2537890) (not bm!160075) (not b!2537886) (not b!2537405) (not bm!160076) (not d!720884) (not bm!159974) (not b!2537857) (not bm!159986) (not b!2537911) (not b!2537815) (not b!2537455) (not b!2537810) (not b!2537905) (not b!2537858) (not b!2537907) (not b!2537856) (not b!2537860) (not b!2537247) (not d!720896) (not bm!160037) (not b!2537420) (not b!2537459) (not d!720890) (not b!2537914) (not bm!160016) (not bm!159913) (not d!720824) (not bm!160072) (not b!2537927) (not b!2537813) (not d!720830) (not b!2537869) (not d!720968) (not bm!160027) (not b!2537706) (not bm!159984) (not bm!159914) (not bm!159994) (not b!2537807) (not b!2537396) (not b!2537294) (not b!2537680) (not b!2537816) (not b!2537893) (not b!2537833) (not b!2537802) (not bm!160053) (not b!2537885) (not b!2537865) (not d!720828) (not b!2537903) (not bm!159972) (not b!2537889) (not b!2537817) (not b!2537501) (not bm!159904) (not bm!160084) (not d!720910) (not b!2537862) (not b!2537667) (not bm!160012) (not bm!159916) (not b!2537702) (not b!2537864) (not b!2537803) (not bm!159978) (not b!2537799) (not bm!159959) (not b!2537824) (not b!2537895) (not d!720838) (not b!2537243) (not b!2537891) (not b!2537800) (not bm!159939) (not b!2537925) (not b!2537357) (not b!2537515) (not bm!160055) (not bm!160063) (not d!720854) (not b!2537837) (not bm!159948) (not b!2537777) (not bm!159941) (not bm!159982) (not d!720946) (not d!720844) (not bm!160024) (not b!2537257) (not bm!159910) (not b!2537866) (not bm!159932) (not d!720970) (not bm!160061) (not d!720882) (not bm!159957) (not b!2537831) (not b!2537819) (not bm!160033) (not b!2537804) (not bm!160082) (not b!2537923) (not bm!160023) (not b!2537853) (not b!2537604) (not d!720944) (not b!2537820) (not d!720892) (not bm!160074) (not b!2537836) (not bm!159945) (not bm!159912) (not b!2537279) (not d!720820) (not bm!159976) (not b!2537333) (not b!2537303) (not bm!159992) (not b!2537811) (not b!2537634) (not bm!160079) (not b!2537832) (not bm!160046) (not b!2537868) (not b!2537852) (not d!720848) (not b!2537913) (not bm!160059) (not b!2537724) tp_is_empty!12969 (not bm!160017) (not d!720858) (not d!720822) (not bm!159964) (not b!2537781) (not b!2537798) (not bm!159908) (not bm!159949) (not bm!160078) (not d!720934) (not bm!159933) (not b!2537823) (not b!2537274) (not b!2537768) (not b!2537901) (not b!2537372) (not b!2537752) (not bm!159906) (not bm!159979) (not b!2537806) (not b!2537882) (not b!2537894) (not bm!159968) (not b!2537682) (not b!2537861) (not b!2537854) (not d!720826) (not b!2537469) (not b!2537883) (not b!2537870) (not bm!160011) (not b!2537929) (not bm!159917) (not b!2537359) (not b!2537899) (not bm!160045) (not bm!160034) (not b!2537902) (not bm!159902) (not b!2537623) (not bm!160026) (not b!2537881) (not b!2537897) (not b!2537835) (not b!2537518) (not b!2537825) (not b!2537275) (not b!2537338) (not bm!160038))
(check-sat)
