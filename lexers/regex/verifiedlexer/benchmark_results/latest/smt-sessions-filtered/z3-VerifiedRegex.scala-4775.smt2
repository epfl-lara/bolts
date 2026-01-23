; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!246212 () Bool)

(assert start!246212)

(declare-fun b!2527661 () Bool)

(declare-fun res!1067651 () Bool)

(declare-fun e!1599950 () Bool)

(assert (=> b!2527661 (=> res!1067651 e!1599950)))

(declare-datatypes ((C!15208 0))(
  ( (C!15209 (val!9256 Int)) )
))
(declare-datatypes ((Regex!7525 0))(
  ( (ElementMatch!7525 (c!403591 C!15208)) (Concat!12221 (regOne!15562 Regex!7525) (regTwo!15562 Regex!7525)) (EmptyExpr!7525) (Star!7525 (reg!7854 Regex!7525)) (EmptyLang!7525) (Union!7525 (regOne!15563 Regex!7525) (regTwo!15563 Regex!7525)) )
))
(declare-fun r!27340 () Regex!7525)

(declare-datatypes ((List!29590 0))(
  ( (Nil!29490) (Cons!29490 (h!34910 C!15208) (t!211289 List!29590)) )
))
(declare-datatypes ((tuple2!29548 0))(
  ( (tuple2!29549 (_1!17316 List!29590) (_2!17316 List!29590)) )
))
(declare-fun lt!900878 () tuple2!29548)

(declare-fun matchR!3512 (Regex!7525 List!29590) Bool)

(assert (=> b!2527661 (= res!1067651 (not (matchR!3512 (regTwo!15562 r!27340) (_2!17316 lt!900878))))))

(declare-fun b!2527662 () Bool)

(declare-fun res!1067658 () Bool)

(assert (=> b!2527662 (=> res!1067658 e!1599950)))

(declare-fun lt!900873 () Regex!7525)

(assert (=> b!2527662 (= res!1067658 (not (matchR!3512 lt!900873 (_1!17316 lt!900878))))))

(declare-fun b!2527663 () Bool)

(declare-fun res!1067656 () Bool)

(declare-fun e!1599949 () Bool)

(assert (=> b!2527663 (=> (not res!1067656) (not e!1599949))))

(declare-fun tl!4068 () List!29590)

(declare-fun c!14016 () C!15208)

(declare-fun nullable!2442 (Regex!7525) Bool)

(declare-fun derivative!220 (Regex!7525 List!29590) Regex!7525)

(declare-fun derivativeStep!2094 (Regex!7525 C!15208) Regex!7525)

(assert (=> b!2527663 (= res!1067656 (nullable!2442 (derivative!220 (derivativeStep!2094 r!27340 c!14016) tl!4068)))))

(declare-fun b!2527664 () Bool)

(declare-fun res!1067654 () Bool)

(assert (=> b!2527664 (=> (not res!1067654) (not e!1599949))))

(get-info :version)

(assert (=> b!2527664 (= res!1067654 (and (not ((_ is EmptyExpr!7525) r!27340)) (not ((_ is EmptyLang!7525) r!27340)) (not ((_ is ElementMatch!7525) r!27340)) (not ((_ is Union!7525) r!27340)) (not ((_ is Star!7525) r!27340))))))

(declare-fun b!2527665 () Bool)

(declare-fun e!1599952 () Bool)

(assert (=> b!2527665 (= e!1599949 (not e!1599952))))

(declare-fun res!1067657 () Bool)

(assert (=> b!2527665 (=> res!1067657 e!1599952)))

(declare-fun lt!900876 () Bool)

(assert (=> b!2527665 (= res!1067657 (not lt!900876))))

(assert (=> b!2527665 (= (derivative!220 EmptyLang!7525 tl!4068) EmptyLang!7525)))

(declare-datatypes ((Unit!43275 0))(
  ( (Unit!43276) )
))
(declare-fun lt!900875 () Unit!43275)

(declare-fun lemmaEmptyLangDerivativeIsAFixPoint!42 (Regex!7525 List!29590) Unit!43275)

(assert (=> b!2527665 (= lt!900875 (lemmaEmptyLangDerivativeIsAFixPoint!42 EmptyLang!7525 tl!4068))))

(declare-fun e!1599954 () Bool)

(assert (=> b!2527665 e!1599954))

(declare-fun res!1067650 () Bool)

(assert (=> b!2527665 (=> res!1067650 e!1599954)))

(assert (=> b!2527665 (= res!1067650 lt!900876)))

(declare-fun lt!900879 () Regex!7525)

(assert (=> b!2527665 (= lt!900876 (matchR!3512 lt!900879 tl!4068))))

(declare-fun lt!900880 () Unit!43275)

(declare-fun lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!190 (Regex!7525 Regex!7525 List!29590) Unit!43275)

(assert (=> b!2527665 (= lt!900880 (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!190 lt!900879 EmptyLang!7525 tl!4068))))

(declare-fun lt!900874 () Regex!7525)

(assert (=> b!2527665 (= (matchR!3512 lt!900874 tl!4068) (matchR!3512 (derivative!220 lt!900874 tl!4068) Nil!29490))))

(declare-fun lt!900872 () Unit!43275)

(declare-fun lemmaMatchRIsSameAsWholeDerivativeAndNil!158 (Regex!7525 List!29590) Unit!43275)

(assert (=> b!2527665 (= lt!900872 (lemmaMatchRIsSameAsWholeDerivativeAndNil!158 lt!900874 tl!4068))))

(assert (=> b!2527665 (= lt!900874 (Union!7525 lt!900879 EmptyLang!7525))))

(assert (=> b!2527665 (= lt!900879 (Concat!12221 lt!900873 (regTwo!15562 r!27340)))))

(assert (=> b!2527665 (= lt!900873 (derivativeStep!2094 (regOne!15562 r!27340) c!14016))))

(declare-fun b!2527666 () Bool)

(declare-fun e!1599951 () Bool)

(declare-fun tp!806987 () Bool)

(declare-fun tp!806990 () Bool)

(assert (=> b!2527666 (= e!1599951 (and tp!806987 tp!806990))))

(declare-fun b!2527667 () Bool)

(assert (=> b!2527667 (= e!1599952 e!1599950)))

(declare-fun res!1067652 () Bool)

(assert (=> b!2527667 (=> res!1067652 e!1599950)))

(declare-fun ++!7244 (List!29590 List!29590) List!29590)

(assert (=> b!2527667 (= res!1067652 (not (= (++!7244 (_1!17316 lt!900878) (_2!17316 lt!900878)) tl!4068)))))

(declare-datatypes ((Option!5894 0))(
  ( (None!5893) (Some!5893 (v!31826 tuple2!29548)) )
))
(declare-fun lt!900877 () Option!5894)

(declare-fun get!9235 (Option!5894) tuple2!29548)

(assert (=> b!2527667 (= lt!900878 (get!9235 lt!900877))))

(declare-fun isDefined!4716 (Option!5894) Bool)

(assert (=> b!2527667 (isDefined!4716 lt!900877)))

(declare-fun findConcatSeparation!916 (Regex!7525 Regex!7525 List!29590 List!29590 List!29590) Option!5894)

(assert (=> b!2527667 (= lt!900877 (findConcatSeparation!916 lt!900873 (regTwo!15562 r!27340) Nil!29490 tl!4068 tl!4068))))

(declare-fun lt!900871 () Unit!43275)

(declare-fun lemmaConcatAcceptsStringThenFindSeparationIsDefined!198 (Regex!7525 Regex!7525 List!29590) Unit!43275)

(assert (=> b!2527667 (= lt!900871 (lemmaConcatAcceptsStringThenFindSeparationIsDefined!198 lt!900873 (regTwo!15562 r!27340) tl!4068))))

(declare-fun b!2527668 () Bool)

(declare-fun res!1067655 () Bool)

(assert (=> b!2527668 (=> (not res!1067655) (not e!1599949))))

(assert (=> b!2527668 (= res!1067655 (not (nullable!2442 (regOne!15562 r!27340))))))

(declare-fun b!2527670 () Bool)

(assert (=> b!2527670 (= e!1599950 (matchR!3512 (regOne!15562 r!27340) (Cons!29490 c!14016 (_1!17316 lt!900878))))))

(declare-fun b!2527671 () Bool)

(assert (=> b!2527671 (= e!1599954 (matchR!3512 EmptyLang!7525 tl!4068))))

(declare-fun b!2527672 () Bool)

(declare-fun tp_is_empty!12905 () Bool)

(assert (=> b!2527672 (= e!1599951 tp_is_empty!12905)))

(declare-fun b!2527673 () Bool)

(declare-fun e!1599953 () Bool)

(declare-fun tp!806988 () Bool)

(assert (=> b!2527673 (= e!1599953 (and tp_is_empty!12905 tp!806988))))

(declare-fun b!2527674 () Bool)

(declare-fun tp!806989 () Bool)

(declare-fun tp!806986 () Bool)

(assert (=> b!2527674 (= e!1599951 (and tp!806989 tp!806986))))

(declare-fun res!1067653 () Bool)

(assert (=> start!246212 (=> (not res!1067653) (not e!1599949))))

(declare-fun validRegex!3151 (Regex!7525) Bool)

(assert (=> start!246212 (= res!1067653 (validRegex!3151 r!27340))))

(assert (=> start!246212 e!1599949))

(assert (=> start!246212 e!1599951))

(assert (=> start!246212 tp_is_empty!12905))

(assert (=> start!246212 e!1599953))

(declare-fun b!2527669 () Bool)

(declare-fun tp!806985 () Bool)

(assert (=> b!2527669 (= e!1599951 tp!806985)))

(assert (= (and start!246212 res!1067653) b!2527663))

(assert (= (and b!2527663 res!1067656) b!2527664))

(assert (= (and b!2527664 res!1067654) b!2527668))

(assert (= (and b!2527668 res!1067655) b!2527665))

(assert (= (and b!2527665 (not res!1067650)) b!2527671))

(assert (= (and b!2527665 (not res!1067657)) b!2527667))

(assert (= (and b!2527667 (not res!1067652)) b!2527662))

(assert (= (and b!2527662 (not res!1067658)) b!2527661))

(assert (= (and b!2527661 (not res!1067651)) b!2527670))

(assert (= (and start!246212 ((_ is ElementMatch!7525) r!27340)) b!2527672))

(assert (= (and start!246212 ((_ is Concat!12221) r!27340)) b!2527666))

(assert (= (and start!246212 ((_ is Star!7525) r!27340)) b!2527669))

(assert (= (and start!246212 ((_ is Union!7525) r!27340)) b!2527674))

(assert (= (and start!246212 ((_ is Cons!29490) tl!4068)) b!2527673))

(declare-fun m!2880351 () Bool)

(assert (=> b!2527662 m!2880351))

(declare-fun m!2880353 () Bool)

(assert (=> b!2527670 m!2880353))

(declare-fun m!2880355 () Bool)

(assert (=> start!246212 m!2880355))

(declare-fun m!2880357 () Bool)

(assert (=> b!2527668 m!2880357))

(declare-fun m!2880359 () Bool)

(assert (=> b!2527665 m!2880359))

(declare-fun m!2880361 () Bool)

(assert (=> b!2527665 m!2880361))

(declare-fun m!2880363 () Bool)

(assert (=> b!2527665 m!2880363))

(declare-fun m!2880365 () Bool)

(assert (=> b!2527665 m!2880365))

(declare-fun m!2880367 () Bool)

(assert (=> b!2527665 m!2880367))

(assert (=> b!2527665 m!2880365))

(declare-fun m!2880369 () Bool)

(assert (=> b!2527665 m!2880369))

(declare-fun m!2880371 () Bool)

(assert (=> b!2527665 m!2880371))

(declare-fun m!2880373 () Bool)

(assert (=> b!2527665 m!2880373))

(declare-fun m!2880375 () Bool)

(assert (=> b!2527665 m!2880375))

(declare-fun m!2880377 () Bool)

(assert (=> b!2527661 m!2880377))

(declare-fun m!2880379 () Bool)

(assert (=> b!2527667 m!2880379))

(declare-fun m!2880381 () Bool)

(assert (=> b!2527667 m!2880381))

(declare-fun m!2880383 () Bool)

(assert (=> b!2527667 m!2880383))

(declare-fun m!2880385 () Bool)

(assert (=> b!2527667 m!2880385))

(declare-fun m!2880387 () Bool)

(assert (=> b!2527667 m!2880387))

(declare-fun m!2880389 () Bool)

(assert (=> b!2527671 m!2880389))

(declare-fun m!2880391 () Bool)

(assert (=> b!2527663 m!2880391))

(assert (=> b!2527663 m!2880391))

(declare-fun m!2880393 () Bool)

(assert (=> b!2527663 m!2880393))

(assert (=> b!2527663 m!2880393))

(declare-fun m!2880395 () Bool)

(assert (=> b!2527663 m!2880395))

(check-sat (not b!2527669) (not b!2527665) (not b!2527667) (not b!2527666) (not b!2527668) (not b!2527674) tp_is_empty!12905 (not b!2527670) (not b!2527661) (not b!2527662) (not b!2527673) (not b!2527663) (not b!2527671) (not start!246212))
(check-sat)
(get-model)

(declare-fun b!2527730 () Bool)

(declare-fun e!1599982 () Bool)

(declare-fun head!5774 (List!29590) C!15208)

(assert (=> b!2527730 (= e!1599982 (not (= (head!5774 (_1!17316 lt!900878)) (c!403591 lt!900873))))))

(declare-fun b!2527731 () Bool)

(declare-fun e!1599987 () Bool)

(declare-fun e!1599988 () Bool)

(assert (=> b!2527731 (= e!1599987 e!1599988)))

(declare-fun c!403613 () Bool)

(assert (=> b!2527731 (= c!403613 ((_ is EmptyLang!7525) lt!900873))))

(declare-fun bm!158027 () Bool)

(declare-fun call!158032 () Bool)

(declare-fun isEmpty!16968 (List!29590) Bool)

(assert (=> bm!158027 (= call!158032 (isEmpty!16968 (_1!17316 lt!900878)))))

(declare-fun b!2527732 () Bool)

(declare-fun res!1067679 () Bool)

(declare-fun e!1599985 () Bool)

(assert (=> b!2527732 (=> (not res!1067679) (not e!1599985))))

(assert (=> b!2527732 (= res!1067679 (not call!158032))))

(declare-fun b!2527733 () Bool)

(declare-fun lt!900888 () Bool)

(assert (=> b!2527733 (= e!1599987 (= lt!900888 call!158032))))

(declare-fun b!2527734 () Bool)

(declare-fun e!1599986 () Bool)

(assert (=> b!2527734 (= e!1599986 (nullable!2442 lt!900873))))

(declare-fun b!2527735 () Bool)

(assert (=> b!2527735 (= e!1599985 (= (head!5774 (_1!17316 lt!900878)) (c!403591 lt!900873)))))

(declare-fun b!2527736 () Bool)

(declare-fun res!1067675 () Bool)

(assert (=> b!2527736 (=> res!1067675 e!1599982)))

(declare-fun tail!4051 (List!29590) List!29590)

(assert (=> b!2527736 (= res!1067675 (not (isEmpty!16968 (tail!4051 (_1!17316 lt!900878)))))))

(declare-fun b!2527737 () Bool)

(assert (=> b!2527737 (= e!1599988 (not lt!900888))))

(declare-fun b!2527738 () Bool)

(assert (=> b!2527738 (= e!1599986 (matchR!3512 (derivativeStep!2094 lt!900873 (head!5774 (_1!17316 lt!900878))) (tail!4051 (_1!17316 lt!900878))))))

(declare-fun b!2527739 () Bool)

(declare-fun e!1599983 () Bool)

(assert (=> b!2527739 (= e!1599983 e!1599982)))

(declare-fun res!1067682 () Bool)

(assert (=> b!2527739 (=> res!1067682 e!1599982)))

(assert (=> b!2527739 (= res!1067682 call!158032)))

(declare-fun b!2527740 () Bool)

(declare-fun res!1067678 () Bool)

(declare-fun e!1599984 () Bool)

(assert (=> b!2527740 (=> res!1067678 e!1599984)))

(assert (=> b!2527740 (= res!1067678 (not ((_ is ElementMatch!7525) lt!900873)))))

(assert (=> b!2527740 (= e!1599988 e!1599984)))

(declare-fun d!719266 () Bool)

(assert (=> d!719266 e!1599987))

(declare-fun c!403611 () Bool)

(assert (=> d!719266 (= c!403611 ((_ is EmptyExpr!7525) lt!900873))))

(assert (=> d!719266 (= lt!900888 e!1599986)))

(declare-fun c!403612 () Bool)

(assert (=> d!719266 (= c!403612 (isEmpty!16968 (_1!17316 lt!900878)))))

(assert (=> d!719266 (validRegex!3151 lt!900873)))

(assert (=> d!719266 (= (matchR!3512 lt!900873 (_1!17316 lt!900878)) lt!900888)))

(declare-fun b!2527729 () Bool)

(declare-fun res!1067676 () Bool)

(assert (=> b!2527729 (=> res!1067676 e!1599984)))

(assert (=> b!2527729 (= res!1067676 e!1599985)))

(declare-fun res!1067677 () Bool)

(assert (=> b!2527729 (=> (not res!1067677) (not e!1599985))))

(assert (=> b!2527729 (= res!1067677 lt!900888)))

(declare-fun b!2527741 () Bool)

(assert (=> b!2527741 (= e!1599984 e!1599983)))

(declare-fun res!1067681 () Bool)

(assert (=> b!2527741 (=> (not res!1067681) (not e!1599983))))

(assert (=> b!2527741 (= res!1067681 (not lt!900888))))

(declare-fun b!2527742 () Bool)

(declare-fun res!1067680 () Bool)

(assert (=> b!2527742 (=> (not res!1067680) (not e!1599985))))

(assert (=> b!2527742 (= res!1067680 (isEmpty!16968 (tail!4051 (_1!17316 lt!900878))))))

(assert (= (and d!719266 c!403612) b!2527734))

(assert (= (and d!719266 (not c!403612)) b!2527738))

(assert (= (and d!719266 c!403611) b!2527733))

(assert (= (and d!719266 (not c!403611)) b!2527731))

(assert (= (and b!2527731 c!403613) b!2527737))

(assert (= (and b!2527731 (not c!403613)) b!2527740))

(assert (= (and b!2527740 (not res!1067678)) b!2527729))

(assert (= (and b!2527729 res!1067677) b!2527732))

(assert (= (and b!2527732 res!1067679) b!2527742))

(assert (= (and b!2527742 res!1067680) b!2527735))

(assert (= (and b!2527729 (not res!1067676)) b!2527741))

(assert (= (and b!2527741 res!1067681) b!2527739))

(assert (= (and b!2527739 (not res!1067682)) b!2527736))

(assert (= (and b!2527736 (not res!1067675)) b!2527730))

(assert (= (or b!2527733 b!2527732 b!2527739) bm!158027))

(declare-fun m!2880407 () Bool)

(assert (=> b!2527735 m!2880407))

(declare-fun m!2880409 () Bool)

(assert (=> bm!158027 m!2880409))

(declare-fun m!2880411 () Bool)

(assert (=> b!2527734 m!2880411))

(declare-fun m!2880413 () Bool)

(assert (=> b!2527742 m!2880413))

(assert (=> b!2527742 m!2880413))

(declare-fun m!2880415 () Bool)

(assert (=> b!2527742 m!2880415))

(assert (=> b!2527736 m!2880413))

(assert (=> b!2527736 m!2880413))

(assert (=> b!2527736 m!2880415))

(assert (=> b!2527730 m!2880407))

(assert (=> b!2527738 m!2880407))

(assert (=> b!2527738 m!2880407))

(declare-fun m!2880417 () Bool)

(assert (=> b!2527738 m!2880417))

(assert (=> b!2527738 m!2880413))

(assert (=> b!2527738 m!2880417))

(assert (=> b!2527738 m!2880413))

(declare-fun m!2880419 () Bool)

(assert (=> b!2527738 m!2880419))

(assert (=> d!719266 m!2880409))

(declare-fun m!2880421 () Bool)

(assert (=> d!719266 m!2880421))

(assert (=> b!2527662 d!719266))

(declare-fun d!719272 () Bool)

(assert (=> d!719272 (= (get!9235 lt!900877) (v!31826 lt!900877))))

(assert (=> b!2527667 d!719272))

(declare-fun d!719274 () Bool)

(assert (=> d!719274 (isDefined!4716 (findConcatSeparation!916 lt!900873 (regTwo!15562 r!27340) Nil!29490 tl!4068 tl!4068))))

(declare-fun lt!900892 () Unit!43275)

(declare-fun choose!14997 (Regex!7525 Regex!7525 List!29590) Unit!43275)

(assert (=> d!719274 (= lt!900892 (choose!14997 lt!900873 (regTwo!15562 r!27340) tl!4068))))

(assert (=> d!719274 (validRegex!3151 lt!900873)))

(assert (=> d!719274 (= (lemmaConcatAcceptsStringThenFindSeparationIsDefined!198 lt!900873 (regTwo!15562 r!27340) tl!4068) lt!900892)))

(declare-fun bs!469135 () Bool)

(assert (= bs!469135 d!719274))

(assert (=> bs!469135 m!2880387))

(assert (=> bs!469135 m!2880387))

(declare-fun m!2880429 () Bool)

(assert (=> bs!469135 m!2880429))

(declare-fun m!2880431 () Bool)

(assert (=> bs!469135 m!2880431))

(assert (=> bs!469135 m!2880421))

(assert (=> b!2527667 d!719274))

(declare-fun d!719278 () Bool)

(declare-fun isEmpty!16969 (Option!5894) Bool)

(assert (=> d!719278 (= (isDefined!4716 lt!900877) (not (isEmpty!16969 lt!900877)))))

(declare-fun bs!469136 () Bool)

(assert (= bs!469136 d!719278))

(declare-fun m!2880433 () Bool)

(assert (=> bs!469136 m!2880433))

(assert (=> b!2527667 d!719278))

(declare-fun b!2527827 () Bool)

(declare-fun res!1067718 () Bool)

(declare-fun e!1600033 () Bool)

(assert (=> b!2527827 (=> (not res!1067718) (not e!1600033))))

(declare-fun lt!900911 () Option!5894)

(assert (=> b!2527827 (= res!1067718 (matchR!3512 lt!900873 (_1!17316 (get!9235 lt!900911))))))

(declare-fun b!2527828 () Bool)

(declare-fun e!1600032 () Bool)

(assert (=> b!2527828 (= e!1600032 (matchR!3512 (regTwo!15562 r!27340) tl!4068))))

(declare-fun b!2527829 () Bool)

(declare-fun res!1067720 () Bool)

(assert (=> b!2527829 (=> (not res!1067720) (not e!1600033))))

(assert (=> b!2527829 (= res!1067720 (matchR!3512 (regTwo!15562 r!27340) (_2!17316 (get!9235 lt!900911))))))

(declare-fun b!2527830 () Bool)

(declare-fun e!1600035 () Option!5894)

(declare-fun e!1600036 () Option!5894)

(assert (=> b!2527830 (= e!1600035 e!1600036)))

(declare-fun c!403640 () Bool)

(assert (=> b!2527830 (= c!403640 ((_ is Nil!29490) tl!4068))))

(declare-fun d!719280 () Bool)

(declare-fun e!1600034 () Bool)

(assert (=> d!719280 e!1600034))

(declare-fun res!1067717 () Bool)

(assert (=> d!719280 (=> res!1067717 e!1600034)))

(assert (=> d!719280 (= res!1067717 e!1600033)))

(declare-fun res!1067721 () Bool)

(assert (=> d!719280 (=> (not res!1067721) (not e!1600033))))

(assert (=> d!719280 (= res!1067721 (isDefined!4716 lt!900911))))

(assert (=> d!719280 (= lt!900911 e!1600035)))

(declare-fun c!403639 () Bool)

(assert (=> d!719280 (= c!403639 e!1600032)))

(declare-fun res!1067719 () Bool)

(assert (=> d!719280 (=> (not res!1067719) (not e!1600032))))

(assert (=> d!719280 (= res!1067719 (matchR!3512 lt!900873 Nil!29490))))

(assert (=> d!719280 (validRegex!3151 lt!900873)))

(assert (=> d!719280 (= (findConcatSeparation!916 lt!900873 (regTwo!15562 r!27340) Nil!29490 tl!4068 tl!4068) lt!900911)))

(declare-fun b!2527831 () Bool)

(assert (=> b!2527831 (= e!1600033 (= (++!7244 (_1!17316 (get!9235 lt!900911)) (_2!17316 (get!9235 lt!900911))) tl!4068))))

(declare-fun b!2527832 () Bool)

(assert (=> b!2527832 (= e!1600034 (not (isDefined!4716 lt!900911)))))

(declare-fun b!2527833 () Bool)

(assert (=> b!2527833 (= e!1600036 None!5893)))

(declare-fun b!2527834 () Bool)

(assert (=> b!2527834 (= e!1600035 (Some!5893 (tuple2!29549 Nil!29490 tl!4068)))))

(declare-fun b!2527835 () Bool)

(declare-fun lt!900913 () Unit!43275)

(declare-fun lt!900912 () Unit!43275)

(assert (=> b!2527835 (= lt!900913 lt!900912)))

(assert (=> b!2527835 (= (++!7244 (++!7244 Nil!29490 (Cons!29490 (h!34910 tl!4068) Nil!29490)) (t!211289 tl!4068)) tl!4068)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!782 (List!29590 C!15208 List!29590 List!29590) Unit!43275)

(assert (=> b!2527835 (= lt!900912 (lemmaMoveElementToOtherListKeepsConcatEq!782 Nil!29490 (h!34910 tl!4068) (t!211289 tl!4068) tl!4068))))

(assert (=> b!2527835 (= e!1600036 (findConcatSeparation!916 lt!900873 (regTwo!15562 r!27340) (++!7244 Nil!29490 (Cons!29490 (h!34910 tl!4068) Nil!29490)) (t!211289 tl!4068) tl!4068))))

(assert (= (and d!719280 res!1067719) b!2527828))

(assert (= (and d!719280 c!403639) b!2527834))

(assert (= (and d!719280 (not c!403639)) b!2527830))

(assert (= (and b!2527830 c!403640) b!2527833))

(assert (= (and b!2527830 (not c!403640)) b!2527835))

(assert (= (and d!719280 res!1067721) b!2527827))

(assert (= (and b!2527827 res!1067718) b!2527829))

(assert (= (and b!2527829 res!1067720) b!2527831))

(assert (= (and d!719280 (not res!1067717)) b!2527832))

(declare-fun m!2880479 () Bool)

(assert (=> b!2527828 m!2880479))

(declare-fun m!2880481 () Bool)

(assert (=> d!719280 m!2880481))

(declare-fun m!2880483 () Bool)

(assert (=> d!719280 m!2880483))

(assert (=> d!719280 m!2880421))

(declare-fun m!2880485 () Bool)

(assert (=> b!2527829 m!2880485))

(declare-fun m!2880487 () Bool)

(assert (=> b!2527829 m!2880487))

(assert (=> b!2527832 m!2880481))

(assert (=> b!2527831 m!2880485))

(declare-fun m!2880489 () Bool)

(assert (=> b!2527831 m!2880489))

(declare-fun m!2880491 () Bool)

(assert (=> b!2527835 m!2880491))

(assert (=> b!2527835 m!2880491))

(declare-fun m!2880493 () Bool)

(assert (=> b!2527835 m!2880493))

(declare-fun m!2880495 () Bool)

(assert (=> b!2527835 m!2880495))

(assert (=> b!2527835 m!2880491))

(declare-fun m!2880497 () Bool)

(assert (=> b!2527835 m!2880497))

(assert (=> b!2527827 m!2880485))

(declare-fun m!2880499 () Bool)

(assert (=> b!2527827 m!2880499))

(assert (=> b!2527667 d!719280))

(declare-fun b!2527909 () Bool)

(declare-fun e!1600076 () Bool)

(declare-fun lt!900923 () List!29590)

(assert (=> b!2527909 (= e!1600076 (or (not (= (_2!17316 lt!900878) Nil!29490)) (= lt!900923 (_1!17316 lt!900878))))))

(declare-fun b!2527907 () Bool)

(declare-fun e!1600075 () List!29590)

(assert (=> b!2527907 (= e!1600075 (Cons!29490 (h!34910 (_1!17316 lt!900878)) (++!7244 (t!211289 (_1!17316 lt!900878)) (_2!17316 lt!900878))))))

(declare-fun d!719294 () Bool)

(assert (=> d!719294 e!1600076))

(declare-fun res!1067765 () Bool)

(assert (=> d!719294 (=> (not res!1067765) (not e!1600076))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!4049 (List!29590) (InoxSet C!15208))

(assert (=> d!719294 (= res!1067765 (= (content!4049 lt!900923) ((_ map or) (content!4049 (_1!17316 lt!900878)) (content!4049 (_2!17316 lt!900878)))))))

(assert (=> d!719294 (= lt!900923 e!1600075)))

(declare-fun c!403655 () Bool)

(assert (=> d!719294 (= c!403655 ((_ is Nil!29490) (_1!17316 lt!900878)))))

(assert (=> d!719294 (= (++!7244 (_1!17316 lt!900878) (_2!17316 lt!900878)) lt!900923)))

(declare-fun b!2527906 () Bool)

(assert (=> b!2527906 (= e!1600075 (_2!17316 lt!900878))))

(declare-fun b!2527908 () Bool)

(declare-fun res!1067764 () Bool)

(assert (=> b!2527908 (=> (not res!1067764) (not e!1600076))))

(declare-fun size!22931 (List!29590) Int)

(assert (=> b!2527908 (= res!1067764 (= (size!22931 lt!900923) (+ (size!22931 (_1!17316 lt!900878)) (size!22931 (_2!17316 lt!900878)))))))

(assert (= (and d!719294 c!403655) b!2527906))

(assert (= (and d!719294 (not c!403655)) b!2527907))

(assert (= (and d!719294 res!1067765) b!2527908))

(assert (= (and b!2527908 res!1067764) b!2527909))

(declare-fun m!2880545 () Bool)

(assert (=> b!2527907 m!2880545))

(declare-fun m!2880547 () Bool)

(assert (=> d!719294 m!2880547))

(declare-fun m!2880549 () Bool)

(assert (=> d!719294 m!2880549))

(declare-fun m!2880551 () Bool)

(assert (=> d!719294 m!2880551))

(declare-fun m!2880553 () Bool)

(assert (=> b!2527908 m!2880553))

(declare-fun m!2880555 () Bool)

(assert (=> b!2527908 m!2880555))

(declare-fun m!2880557 () Bool)

(assert (=> b!2527908 m!2880557))

(assert (=> b!2527667 d!719294))

(declare-fun b!2527911 () Bool)

(declare-fun e!1600077 () Bool)

(assert (=> b!2527911 (= e!1600077 (not (= (head!5774 (_2!17316 lt!900878)) (c!403591 (regTwo!15562 r!27340)))))))

(declare-fun b!2527912 () Bool)

(declare-fun e!1600082 () Bool)

(declare-fun e!1600083 () Bool)

(assert (=> b!2527912 (= e!1600082 e!1600083)))

(declare-fun c!403658 () Bool)

(assert (=> b!2527912 (= c!403658 ((_ is EmptyLang!7525) (regTwo!15562 r!27340)))))

(declare-fun bm!158043 () Bool)

(declare-fun call!158048 () Bool)

(assert (=> bm!158043 (= call!158048 (isEmpty!16968 (_2!17316 lt!900878)))))

(declare-fun b!2527913 () Bool)

(declare-fun res!1067770 () Bool)

(declare-fun e!1600080 () Bool)

(assert (=> b!2527913 (=> (not res!1067770) (not e!1600080))))

(assert (=> b!2527913 (= res!1067770 (not call!158048))))

(declare-fun b!2527914 () Bool)

(declare-fun lt!900924 () Bool)

(assert (=> b!2527914 (= e!1600082 (= lt!900924 call!158048))))

(declare-fun b!2527915 () Bool)

(declare-fun e!1600081 () Bool)

(assert (=> b!2527915 (= e!1600081 (nullable!2442 (regTwo!15562 r!27340)))))

(declare-fun b!2527916 () Bool)

(assert (=> b!2527916 (= e!1600080 (= (head!5774 (_2!17316 lt!900878)) (c!403591 (regTwo!15562 r!27340))))))

(declare-fun b!2527917 () Bool)

(declare-fun res!1067766 () Bool)

(assert (=> b!2527917 (=> res!1067766 e!1600077)))

(assert (=> b!2527917 (= res!1067766 (not (isEmpty!16968 (tail!4051 (_2!17316 lt!900878)))))))

(declare-fun b!2527918 () Bool)

(assert (=> b!2527918 (= e!1600083 (not lt!900924))))

(declare-fun b!2527919 () Bool)

(assert (=> b!2527919 (= e!1600081 (matchR!3512 (derivativeStep!2094 (regTwo!15562 r!27340) (head!5774 (_2!17316 lt!900878))) (tail!4051 (_2!17316 lt!900878))))))

(declare-fun b!2527920 () Bool)

(declare-fun e!1600078 () Bool)

(assert (=> b!2527920 (= e!1600078 e!1600077)))

(declare-fun res!1067773 () Bool)

(assert (=> b!2527920 (=> res!1067773 e!1600077)))

(assert (=> b!2527920 (= res!1067773 call!158048)))

(declare-fun b!2527921 () Bool)

(declare-fun res!1067769 () Bool)

(declare-fun e!1600079 () Bool)

(assert (=> b!2527921 (=> res!1067769 e!1600079)))

(assert (=> b!2527921 (= res!1067769 (not ((_ is ElementMatch!7525) (regTwo!15562 r!27340))))))

(assert (=> b!2527921 (= e!1600083 e!1600079)))

(declare-fun d!719306 () Bool)

(assert (=> d!719306 e!1600082))

(declare-fun c!403656 () Bool)

(assert (=> d!719306 (= c!403656 ((_ is EmptyExpr!7525) (regTwo!15562 r!27340)))))

(assert (=> d!719306 (= lt!900924 e!1600081)))

(declare-fun c!403657 () Bool)

(assert (=> d!719306 (= c!403657 (isEmpty!16968 (_2!17316 lt!900878)))))

(assert (=> d!719306 (validRegex!3151 (regTwo!15562 r!27340))))

(assert (=> d!719306 (= (matchR!3512 (regTwo!15562 r!27340) (_2!17316 lt!900878)) lt!900924)))

(declare-fun b!2527910 () Bool)

(declare-fun res!1067767 () Bool)

(assert (=> b!2527910 (=> res!1067767 e!1600079)))

(assert (=> b!2527910 (= res!1067767 e!1600080)))

(declare-fun res!1067768 () Bool)

(assert (=> b!2527910 (=> (not res!1067768) (not e!1600080))))

(assert (=> b!2527910 (= res!1067768 lt!900924)))

(declare-fun b!2527922 () Bool)

(assert (=> b!2527922 (= e!1600079 e!1600078)))

(declare-fun res!1067772 () Bool)

(assert (=> b!2527922 (=> (not res!1067772) (not e!1600078))))

(assert (=> b!2527922 (= res!1067772 (not lt!900924))))

(declare-fun b!2527923 () Bool)

(declare-fun res!1067771 () Bool)

(assert (=> b!2527923 (=> (not res!1067771) (not e!1600080))))

(assert (=> b!2527923 (= res!1067771 (isEmpty!16968 (tail!4051 (_2!17316 lt!900878))))))

(assert (= (and d!719306 c!403657) b!2527915))

(assert (= (and d!719306 (not c!403657)) b!2527919))

(assert (= (and d!719306 c!403656) b!2527914))

(assert (= (and d!719306 (not c!403656)) b!2527912))

(assert (= (and b!2527912 c!403658) b!2527918))

(assert (= (and b!2527912 (not c!403658)) b!2527921))

(assert (= (and b!2527921 (not res!1067769)) b!2527910))

(assert (= (and b!2527910 res!1067768) b!2527913))

(assert (= (and b!2527913 res!1067770) b!2527923))

(assert (= (and b!2527923 res!1067771) b!2527916))

(assert (= (and b!2527910 (not res!1067767)) b!2527922))

(assert (= (and b!2527922 res!1067772) b!2527920))

(assert (= (and b!2527920 (not res!1067773)) b!2527917))

(assert (= (and b!2527917 (not res!1067766)) b!2527911))

(assert (= (or b!2527914 b!2527913 b!2527920) bm!158043))

(declare-fun m!2880559 () Bool)

(assert (=> b!2527916 m!2880559))

(declare-fun m!2880561 () Bool)

(assert (=> bm!158043 m!2880561))

(declare-fun m!2880563 () Bool)

(assert (=> b!2527915 m!2880563))

(declare-fun m!2880565 () Bool)

(assert (=> b!2527923 m!2880565))

(assert (=> b!2527923 m!2880565))

(declare-fun m!2880567 () Bool)

(assert (=> b!2527923 m!2880567))

(assert (=> b!2527917 m!2880565))

(assert (=> b!2527917 m!2880565))

(assert (=> b!2527917 m!2880567))

(assert (=> b!2527911 m!2880559))

(assert (=> b!2527919 m!2880559))

(assert (=> b!2527919 m!2880559))

(declare-fun m!2880569 () Bool)

(assert (=> b!2527919 m!2880569))

(assert (=> b!2527919 m!2880565))

(assert (=> b!2527919 m!2880569))

(assert (=> b!2527919 m!2880565))

(declare-fun m!2880571 () Bool)

(assert (=> b!2527919 m!2880571))

(assert (=> d!719306 m!2880561))

(declare-fun m!2880573 () Bool)

(assert (=> d!719306 m!2880573))

(assert (=> b!2527661 d!719306))

(declare-fun b!2527943 () Bool)

(declare-fun e!1600098 () Bool)

(assert (=> b!2527943 (= e!1600098 (not (= (head!5774 tl!4068) (c!403591 EmptyLang!7525))))))

(declare-fun b!2527944 () Bool)

(declare-fun e!1600103 () Bool)

(declare-fun e!1600104 () Bool)

(assert (=> b!2527944 (= e!1600103 e!1600104)))

(declare-fun c!403665 () Bool)

(assert (=> b!2527944 (= c!403665 ((_ is EmptyLang!7525) EmptyLang!7525))))

(declare-fun bm!158044 () Bool)

(declare-fun call!158049 () Bool)

(assert (=> bm!158044 (= call!158049 (isEmpty!16968 tl!4068))))

(declare-fun b!2527945 () Bool)

(declare-fun res!1067788 () Bool)

(declare-fun e!1600101 () Bool)

(assert (=> b!2527945 (=> (not res!1067788) (not e!1600101))))

(assert (=> b!2527945 (= res!1067788 (not call!158049))))

(declare-fun b!2527946 () Bool)

(declare-fun lt!900925 () Bool)

(assert (=> b!2527946 (= e!1600103 (= lt!900925 call!158049))))

(declare-fun b!2527947 () Bool)

(declare-fun e!1600102 () Bool)

(assert (=> b!2527947 (= e!1600102 (nullable!2442 EmptyLang!7525))))

(declare-fun b!2527948 () Bool)

(assert (=> b!2527948 (= e!1600101 (= (head!5774 tl!4068) (c!403591 EmptyLang!7525)))))

(declare-fun b!2527949 () Bool)

(declare-fun res!1067784 () Bool)

(assert (=> b!2527949 (=> res!1067784 e!1600098)))

(assert (=> b!2527949 (= res!1067784 (not (isEmpty!16968 (tail!4051 tl!4068))))))

(declare-fun b!2527950 () Bool)

(assert (=> b!2527950 (= e!1600104 (not lt!900925))))

(declare-fun b!2527951 () Bool)

(assert (=> b!2527951 (= e!1600102 (matchR!3512 (derivativeStep!2094 EmptyLang!7525 (head!5774 tl!4068)) (tail!4051 tl!4068)))))

(declare-fun b!2527952 () Bool)

(declare-fun e!1600099 () Bool)

(assert (=> b!2527952 (= e!1600099 e!1600098)))

(declare-fun res!1067791 () Bool)

(assert (=> b!2527952 (=> res!1067791 e!1600098)))

(assert (=> b!2527952 (= res!1067791 call!158049)))

(declare-fun b!2527953 () Bool)

(declare-fun res!1067787 () Bool)

(declare-fun e!1600100 () Bool)

(assert (=> b!2527953 (=> res!1067787 e!1600100)))

(assert (=> b!2527953 (= res!1067787 (not ((_ is ElementMatch!7525) EmptyLang!7525)))))

(assert (=> b!2527953 (= e!1600104 e!1600100)))

(declare-fun d!719308 () Bool)

(assert (=> d!719308 e!1600103))

(declare-fun c!403663 () Bool)

(assert (=> d!719308 (= c!403663 ((_ is EmptyExpr!7525) EmptyLang!7525))))

(assert (=> d!719308 (= lt!900925 e!1600102)))

(declare-fun c!403664 () Bool)

(assert (=> d!719308 (= c!403664 (isEmpty!16968 tl!4068))))

(assert (=> d!719308 (validRegex!3151 EmptyLang!7525)))

(assert (=> d!719308 (= (matchR!3512 EmptyLang!7525 tl!4068) lt!900925)))

(declare-fun b!2527942 () Bool)

(declare-fun res!1067785 () Bool)

(assert (=> b!2527942 (=> res!1067785 e!1600100)))

(assert (=> b!2527942 (= res!1067785 e!1600101)))

(declare-fun res!1067786 () Bool)

(assert (=> b!2527942 (=> (not res!1067786) (not e!1600101))))

(assert (=> b!2527942 (= res!1067786 lt!900925)))

(declare-fun b!2527954 () Bool)

(assert (=> b!2527954 (= e!1600100 e!1600099)))

(declare-fun res!1067790 () Bool)

(assert (=> b!2527954 (=> (not res!1067790) (not e!1600099))))

(assert (=> b!2527954 (= res!1067790 (not lt!900925))))

(declare-fun b!2527955 () Bool)

(declare-fun res!1067789 () Bool)

(assert (=> b!2527955 (=> (not res!1067789) (not e!1600101))))

(assert (=> b!2527955 (= res!1067789 (isEmpty!16968 (tail!4051 tl!4068)))))

(assert (= (and d!719308 c!403664) b!2527947))

(assert (= (and d!719308 (not c!403664)) b!2527951))

(assert (= (and d!719308 c!403663) b!2527946))

(assert (= (and d!719308 (not c!403663)) b!2527944))

(assert (= (and b!2527944 c!403665) b!2527950))

(assert (= (and b!2527944 (not c!403665)) b!2527953))

(assert (= (and b!2527953 (not res!1067787)) b!2527942))

(assert (= (and b!2527942 res!1067786) b!2527945))

(assert (= (and b!2527945 res!1067788) b!2527955))

(assert (= (and b!2527955 res!1067789) b!2527948))

(assert (= (and b!2527942 (not res!1067785)) b!2527954))

(assert (= (and b!2527954 res!1067790) b!2527952))

(assert (= (and b!2527952 (not res!1067791)) b!2527949))

(assert (= (and b!2527949 (not res!1067784)) b!2527943))

(assert (= (or b!2527946 b!2527945 b!2527952) bm!158044))

(declare-fun m!2880575 () Bool)

(assert (=> b!2527948 m!2880575))

(declare-fun m!2880577 () Bool)

(assert (=> bm!158044 m!2880577))

(declare-fun m!2880579 () Bool)

(assert (=> b!2527947 m!2880579))

(declare-fun m!2880581 () Bool)

(assert (=> b!2527955 m!2880581))

(assert (=> b!2527955 m!2880581))

(declare-fun m!2880583 () Bool)

(assert (=> b!2527955 m!2880583))

(assert (=> b!2527949 m!2880581))

(assert (=> b!2527949 m!2880581))

(assert (=> b!2527949 m!2880583))

(assert (=> b!2527943 m!2880575))

(assert (=> b!2527951 m!2880575))

(assert (=> b!2527951 m!2880575))

(declare-fun m!2880585 () Bool)

(assert (=> b!2527951 m!2880585))

(assert (=> b!2527951 m!2880581))

(assert (=> b!2527951 m!2880585))

(assert (=> b!2527951 m!2880581))

(declare-fun m!2880587 () Bool)

(assert (=> b!2527951 m!2880587))

(assert (=> d!719308 m!2880577))

(declare-fun m!2880589 () Bool)

(assert (=> d!719308 m!2880589))

(assert (=> b!2527671 d!719308))

(declare-fun b!2527957 () Bool)

(declare-fun e!1600105 () Bool)

(assert (=> b!2527957 (= e!1600105 (not (= (head!5774 (Cons!29490 c!14016 (_1!17316 lt!900878))) (c!403591 (regOne!15562 r!27340)))))))

(declare-fun b!2527958 () Bool)

(declare-fun e!1600110 () Bool)

(declare-fun e!1600111 () Bool)

(assert (=> b!2527958 (= e!1600110 e!1600111)))

(declare-fun c!403668 () Bool)

(assert (=> b!2527958 (= c!403668 ((_ is EmptyLang!7525) (regOne!15562 r!27340)))))

(declare-fun bm!158051 () Bool)

(declare-fun call!158056 () Bool)

(assert (=> bm!158051 (= call!158056 (isEmpty!16968 (Cons!29490 c!14016 (_1!17316 lt!900878))))))

(declare-fun b!2527959 () Bool)

(declare-fun res!1067796 () Bool)

(declare-fun e!1600108 () Bool)

(assert (=> b!2527959 (=> (not res!1067796) (not e!1600108))))

(assert (=> b!2527959 (= res!1067796 (not call!158056))))

(declare-fun b!2527960 () Bool)

(declare-fun lt!900926 () Bool)

(assert (=> b!2527960 (= e!1600110 (= lt!900926 call!158056))))

(declare-fun b!2527961 () Bool)

(declare-fun e!1600109 () Bool)

(assert (=> b!2527961 (= e!1600109 (nullable!2442 (regOne!15562 r!27340)))))

(declare-fun b!2527962 () Bool)

(assert (=> b!2527962 (= e!1600108 (= (head!5774 (Cons!29490 c!14016 (_1!17316 lt!900878))) (c!403591 (regOne!15562 r!27340))))))

(declare-fun b!2527963 () Bool)

(declare-fun res!1067792 () Bool)

(assert (=> b!2527963 (=> res!1067792 e!1600105)))

(assert (=> b!2527963 (= res!1067792 (not (isEmpty!16968 (tail!4051 (Cons!29490 c!14016 (_1!17316 lt!900878))))))))

(declare-fun b!2527964 () Bool)

(assert (=> b!2527964 (= e!1600111 (not lt!900926))))

(declare-fun b!2527965 () Bool)

(assert (=> b!2527965 (= e!1600109 (matchR!3512 (derivativeStep!2094 (regOne!15562 r!27340) (head!5774 (Cons!29490 c!14016 (_1!17316 lt!900878)))) (tail!4051 (Cons!29490 c!14016 (_1!17316 lt!900878)))))))

(declare-fun b!2527966 () Bool)

(declare-fun e!1600106 () Bool)

(assert (=> b!2527966 (= e!1600106 e!1600105)))

(declare-fun res!1067799 () Bool)

(assert (=> b!2527966 (=> res!1067799 e!1600105)))

(assert (=> b!2527966 (= res!1067799 call!158056)))

(declare-fun b!2527967 () Bool)

(declare-fun res!1067795 () Bool)

(declare-fun e!1600107 () Bool)

(assert (=> b!2527967 (=> res!1067795 e!1600107)))

(assert (=> b!2527967 (= res!1067795 (not ((_ is ElementMatch!7525) (regOne!15562 r!27340))))))

(assert (=> b!2527967 (= e!1600111 e!1600107)))

(declare-fun d!719310 () Bool)

(assert (=> d!719310 e!1600110))

(declare-fun c!403666 () Bool)

(assert (=> d!719310 (= c!403666 ((_ is EmptyExpr!7525) (regOne!15562 r!27340)))))

(assert (=> d!719310 (= lt!900926 e!1600109)))

(declare-fun c!403667 () Bool)

(assert (=> d!719310 (= c!403667 (isEmpty!16968 (Cons!29490 c!14016 (_1!17316 lt!900878))))))

(assert (=> d!719310 (validRegex!3151 (regOne!15562 r!27340))))

(assert (=> d!719310 (= (matchR!3512 (regOne!15562 r!27340) (Cons!29490 c!14016 (_1!17316 lt!900878))) lt!900926)))

(declare-fun b!2527956 () Bool)

(declare-fun res!1067793 () Bool)

(assert (=> b!2527956 (=> res!1067793 e!1600107)))

(assert (=> b!2527956 (= res!1067793 e!1600108)))

(declare-fun res!1067794 () Bool)

(assert (=> b!2527956 (=> (not res!1067794) (not e!1600108))))

(assert (=> b!2527956 (= res!1067794 lt!900926)))

(declare-fun b!2527968 () Bool)

(assert (=> b!2527968 (= e!1600107 e!1600106)))

(declare-fun res!1067798 () Bool)

(assert (=> b!2527968 (=> (not res!1067798) (not e!1600106))))

(assert (=> b!2527968 (= res!1067798 (not lt!900926))))

(declare-fun b!2527969 () Bool)

(declare-fun res!1067797 () Bool)

(assert (=> b!2527969 (=> (not res!1067797) (not e!1600108))))

(assert (=> b!2527969 (= res!1067797 (isEmpty!16968 (tail!4051 (Cons!29490 c!14016 (_1!17316 lt!900878)))))))

(assert (= (and d!719310 c!403667) b!2527961))

(assert (= (and d!719310 (not c!403667)) b!2527965))

(assert (= (and d!719310 c!403666) b!2527960))

(assert (= (and d!719310 (not c!403666)) b!2527958))

(assert (= (and b!2527958 c!403668) b!2527964))

(assert (= (and b!2527958 (not c!403668)) b!2527967))

(assert (= (and b!2527967 (not res!1067795)) b!2527956))

(assert (= (and b!2527956 res!1067794) b!2527959))

(assert (= (and b!2527959 res!1067796) b!2527969))

(assert (= (and b!2527969 res!1067797) b!2527962))

(assert (= (and b!2527956 (not res!1067793)) b!2527968))

(assert (= (and b!2527968 res!1067798) b!2527966))

(assert (= (and b!2527966 (not res!1067799)) b!2527963))

(assert (= (and b!2527963 (not res!1067792)) b!2527957))

(assert (= (or b!2527960 b!2527959 b!2527966) bm!158051))

(declare-fun m!2880591 () Bool)

(assert (=> b!2527962 m!2880591))

(declare-fun m!2880593 () Bool)

(assert (=> bm!158051 m!2880593))

(assert (=> b!2527961 m!2880357))

(declare-fun m!2880595 () Bool)

(assert (=> b!2527969 m!2880595))

(assert (=> b!2527969 m!2880595))

(declare-fun m!2880597 () Bool)

(assert (=> b!2527969 m!2880597))

(assert (=> b!2527963 m!2880595))

(assert (=> b!2527963 m!2880595))

(assert (=> b!2527963 m!2880597))

(assert (=> b!2527957 m!2880591))

(assert (=> b!2527965 m!2880591))

(assert (=> b!2527965 m!2880591))

(declare-fun m!2880599 () Bool)

(assert (=> b!2527965 m!2880599))

(assert (=> b!2527965 m!2880595))

(assert (=> b!2527965 m!2880599))

(assert (=> b!2527965 m!2880595))

(declare-fun m!2880601 () Bool)

(assert (=> b!2527965 m!2880601))

(assert (=> d!719310 m!2880593))

(declare-fun m!2880603 () Bool)

(assert (=> d!719310 m!2880603))

(assert (=> b!2527670 d!719310))

(declare-fun b!2527971 () Bool)

(declare-fun e!1600112 () Bool)

(assert (=> b!2527971 (= e!1600112 (not (= (head!5774 tl!4068) (c!403591 lt!900879))))))

(declare-fun b!2527972 () Bool)

(declare-fun e!1600117 () Bool)

(declare-fun e!1600118 () Bool)

(assert (=> b!2527972 (= e!1600117 e!1600118)))

(declare-fun c!403671 () Bool)

(assert (=> b!2527972 (= c!403671 ((_ is EmptyLang!7525) lt!900879))))

(declare-fun bm!158052 () Bool)

(declare-fun call!158057 () Bool)

(assert (=> bm!158052 (= call!158057 (isEmpty!16968 tl!4068))))

(declare-fun b!2527973 () Bool)

(declare-fun res!1067804 () Bool)

(declare-fun e!1600115 () Bool)

(assert (=> b!2527973 (=> (not res!1067804) (not e!1600115))))

(assert (=> b!2527973 (= res!1067804 (not call!158057))))

(declare-fun b!2527974 () Bool)

(declare-fun lt!900927 () Bool)

(assert (=> b!2527974 (= e!1600117 (= lt!900927 call!158057))))

(declare-fun b!2527975 () Bool)

(declare-fun e!1600116 () Bool)

(assert (=> b!2527975 (= e!1600116 (nullable!2442 lt!900879))))

(declare-fun b!2527976 () Bool)

(assert (=> b!2527976 (= e!1600115 (= (head!5774 tl!4068) (c!403591 lt!900879)))))

(declare-fun b!2527977 () Bool)

(declare-fun res!1067800 () Bool)

(assert (=> b!2527977 (=> res!1067800 e!1600112)))

(assert (=> b!2527977 (= res!1067800 (not (isEmpty!16968 (tail!4051 tl!4068))))))

(declare-fun b!2527978 () Bool)

(assert (=> b!2527978 (= e!1600118 (not lt!900927))))

(declare-fun b!2527979 () Bool)

(assert (=> b!2527979 (= e!1600116 (matchR!3512 (derivativeStep!2094 lt!900879 (head!5774 tl!4068)) (tail!4051 tl!4068)))))

(declare-fun b!2527980 () Bool)

(declare-fun e!1600113 () Bool)

(assert (=> b!2527980 (= e!1600113 e!1600112)))

(declare-fun res!1067807 () Bool)

(assert (=> b!2527980 (=> res!1067807 e!1600112)))

(assert (=> b!2527980 (= res!1067807 call!158057)))

(declare-fun b!2527981 () Bool)

(declare-fun res!1067803 () Bool)

(declare-fun e!1600114 () Bool)

(assert (=> b!2527981 (=> res!1067803 e!1600114)))

(assert (=> b!2527981 (= res!1067803 (not ((_ is ElementMatch!7525) lt!900879)))))

(assert (=> b!2527981 (= e!1600118 e!1600114)))

(declare-fun d!719312 () Bool)

(assert (=> d!719312 e!1600117))

(declare-fun c!403669 () Bool)

(assert (=> d!719312 (= c!403669 ((_ is EmptyExpr!7525) lt!900879))))

(assert (=> d!719312 (= lt!900927 e!1600116)))

(declare-fun c!403670 () Bool)

(assert (=> d!719312 (= c!403670 (isEmpty!16968 tl!4068))))

(assert (=> d!719312 (validRegex!3151 lt!900879)))

(assert (=> d!719312 (= (matchR!3512 lt!900879 tl!4068) lt!900927)))

(declare-fun b!2527970 () Bool)

(declare-fun res!1067801 () Bool)

(assert (=> b!2527970 (=> res!1067801 e!1600114)))

(assert (=> b!2527970 (= res!1067801 e!1600115)))

(declare-fun res!1067802 () Bool)

(assert (=> b!2527970 (=> (not res!1067802) (not e!1600115))))

(assert (=> b!2527970 (= res!1067802 lt!900927)))

(declare-fun b!2527982 () Bool)

(assert (=> b!2527982 (= e!1600114 e!1600113)))

(declare-fun res!1067806 () Bool)

(assert (=> b!2527982 (=> (not res!1067806) (not e!1600113))))

(assert (=> b!2527982 (= res!1067806 (not lt!900927))))

(declare-fun b!2527983 () Bool)

(declare-fun res!1067805 () Bool)

(assert (=> b!2527983 (=> (not res!1067805) (not e!1600115))))

(assert (=> b!2527983 (= res!1067805 (isEmpty!16968 (tail!4051 tl!4068)))))

(assert (= (and d!719312 c!403670) b!2527975))

(assert (= (and d!719312 (not c!403670)) b!2527979))

(assert (= (and d!719312 c!403669) b!2527974))

(assert (= (and d!719312 (not c!403669)) b!2527972))

(assert (= (and b!2527972 c!403671) b!2527978))

(assert (= (and b!2527972 (not c!403671)) b!2527981))

(assert (= (and b!2527981 (not res!1067803)) b!2527970))

(assert (= (and b!2527970 res!1067802) b!2527973))

(assert (= (and b!2527973 res!1067804) b!2527983))

(assert (= (and b!2527983 res!1067805) b!2527976))

(assert (= (and b!2527970 (not res!1067801)) b!2527982))

(assert (= (and b!2527982 res!1067806) b!2527980))

(assert (= (and b!2527980 (not res!1067807)) b!2527977))

(assert (= (and b!2527977 (not res!1067800)) b!2527971))

(assert (= (or b!2527974 b!2527973 b!2527980) bm!158052))

(assert (=> b!2527976 m!2880575))

(assert (=> bm!158052 m!2880577))

(declare-fun m!2880605 () Bool)

(assert (=> b!2527975 m!2880605))

(assert (=> b!2527983 m!2880581))

(assert (=> b!2527983 m!2880581))

(assert (=> b!2527983 m!2880583))

(assert (=> b!2527977 m!2880581))

(assert (=> b!2527977 m!2880581))

(assert (=> b!2527977 m!2880583))

(assert (=> b!2527971 m!2880575))

(assert (=> b!2527979 m!2880575))

(assert (=> b!2527979 m!2880575))

(declare-fun m!2880613 () Bool)

(assert (=> b!2527979 m!2880613))

(assert (=> b!2527979 m!2880581))

(assert (=> b!2527979 m!2880613))

(assert (=> b!2527979 m!2880581))

(declare-fun m!2880615 () Bool)

(assert (=> b!2527979 m!2880615))

(assert (=> d!719312 m!2880577))

(declare-fun m!2880617 () Bool)

(assert (=> d!719312 m!2880617))

(assert (=> b!2527665 d!719312))

(declare-fun b!2528040 () Bool)

(declare-fun e!1600153 () Regex!7525)

(declare-fun e!1600155 () Regex!7525)

(assert (=> b!2528040 (= e!1600153 e!1600155)))

(declare-fun c!403693 () Bool)

(assert (=> b!2528040 (= c!403693 ((_ is ElementMatch!7525) (regOne!15562 r!27340)))))

(declare-fun b!2528041 () Bool)

(declare-fun e!1600151 () Regex!7525)

(declare-fun call!158072 () Regex!7525)

(assert (=> b!2528041 (= e!1600151 (Union!7525 (Concat!12221 call!158072 (regTwo!15562 (regOne!15562 r!27340))) EmptyLang!7525))))

(declare-fun b!2528042 () Bool)

(declare-fun e!1600152 () Regex!7525)

(declare-fun call!158069 () Regex!7525)

(assert (=> b!2528042 (= e!1600152 (Concat!12221 call!158069 (regOne!15562 r!27340)))))

(declare-fun b!2528043 () Bool)

(declare-fun e!1600154 () Regex!7525)

(assert (=> b!2528043 (= e!1600154 e!1600152)))

(declare-fun c!403692 () Bool)

(assert (=> b!2528043 (= c!403692 ((_ is Star!7525) (regOne!15562 r!27340)))))

(declare-fun b!2528044 () Bool)

(declare-fun call!158070 () Regex!7525)

(declare-fun call!158071 () Regex!7525)

(assert (=> b!2528044 (= e!1600154 (Union!7525 call!158070 call!158071))))

(declare-fun bm!158064 () Bool)

(assert (=> bm!158064 (= call!158072 call!158069)))

(declare-fun bm!158065 () Bool)

(assert (=> bm!158065 (= call!158069 call!158071)))

(declare-fun b!2528045 () Bool)

(assert (=> b!2528045 (= e!1600151 (Union!7525 (Concat!12221 call!158072 (regTwo!15562 (regOne!15562 r!27340))) call!158070))))

(declare-fun c!403691 () Bool)

(declare-fun bm!158066 () Bool)

(assert (=> bm!158066 (= call!158071 (derivativeStep!2094 (ite c!403691 (regTwo!15563 (regOne!15562 r!27340)) (ite c!403692 (reg!7854 (regOne!15562 r!27340)) (regOne!15562 (regOne!15562 r!27340)))) c!14016))))

(declare-fun b!2528046 () Bool)

(assert (=> b!2528046 (= c!403691 ((_ is Union!7525) (regOne!15562 r!27340)))))

(assert (=> b!2528046 (= e!1600155 e!1600154)))

(declare-fun b!2528047 () Bool)

(assert (=> b!2528047 (= e!1600153 EmptyLang!7525)))

(declare-fun bm!158067 () Bool)

(assert (=> bm!158067 (= call!158070 (derivativeStep!2094 (ite c!403691 (regOne!15563 (regOne!15562 r!27340)) (regTwo!15562 (regOne!15562 r!27340))) c!14016))))

(declare-fun b!2528048 () Bool)

(declare-fun c!403694 () Bool)

(assert (=> b!2528048 (= c!403694 (nullable!2442 (regOne!15562 (regOne!15562 r!27340))))))

(assert (=> b!2528048 (= e!1600152 e!1600151)))

(declare-fun d!719316 () Bool)

(declare-fun lt!900942 () Regex!7525)

(assert (=> d!719316 (validRegex!3151 lt!900942)))

(assert (=> d!719316 (= lt!900942 e!1600153)))

(declare-fun c!403690 () Bool)

(assert (=> d!719316 (= c!403690 (or ((_ is EmptyExpr!7525) (regOne!15562 r!27340)) ((_ is EmptyLang!7525) (regOne!15562 r!27340))))))

(assert (=> d!719316 (validRegex!3151 (regOne!15562 r!27340))))

(assert (=> d!719316 (= (derivativeStep!2094 (regOne!15562 r!27340) c!14016) lt!900942)))

(declare-fun b!2528049 () Bool)

(assert (=> b!2528049 (= e!1600155 (ite (= c!14016 (c!403591 (regOne!15562 r!27340))) EmptyExpr!7525 EmptyLang!7525))))

(assert (= (and d!719316 c!403690) b!2528047))

(assert (= (and d!719316 (not c!403690)) b!2528040))

(assert (= (and b!2528040 c!403693) b!2528049))

(assert (= (and b!2528040 (not c!403693)) b!2528046))

(assert (= (and b!2528046 c!403691) b!2528044))

(assert (= (and b!2528046 (not c!403691)) b!2528043))

(assert (= (and b!2528043 c!403692) b!2528042))

(assert (= (and b!2528043 (not c!403692)) b!2528048))

(assert (= (and b!2528048 c!403694) b!2528045))

(assert (= (and b!2528048 (not c!403694)) b!2528041))

(assert (= (or b!2528045 b!2528041) bm!158064))

(assert (= (or b!2528042 bm!158064) bm!158065))

(assert (= (or b!2528044 bm!158065) bm!158066))

(assert (= (or b!2528044 b!2528045) bm!158067))

(declare-fun m!2880647 () Bool)

(assert (=> bm!158066 m!2880647))

(declare-fun m!2880649 () Bool)

(assert (=> bm!158067 m!2880649))

(declare-fun m!2880651 () Bool)

(assert (=> b!2528048 m!2880651))

(declare-fun m!2880653 () Bool)

(assert (=> d!719316 m!2880653))

(assert (=> d!719316 m!2880603))

(assert (=> b!2527665 d!719316))

(declare-fun d!719324 () Bool)

(declare-fun lt!900950 () Regex!7525)

(assert (=> d!719324 (validRegex!3151 lt!900950)))

(declare-fun e!1600178 () Regex!7525)

(assert (=> d!719324 (= lt!900950 e!1600178)))

(declare-fun c!403706 () Bool)

(assert (=> d!719324 (= c!403706 ((_ is Cons!29490) tl!4068))))

(assert (=> d!719324 (validRegex!3151 lt!900874)))

(assert (=> d!719324 (= (derivative!220 lt!900874 tl!4068) lt!900950)))

(declare-fun b!2528094 () Bool)

(assert (=> b!2528094 (= e!1600178 (derivative!220 (derivativeStep!2094 lt!900874 (h!34910 tl!4068)) (t!211289 tl!4068)))))

(declare-fun b!2528095 () Bool)

(assert (=> b!2528095 (= e!1600178 lt!900874)))

(assert (= (and d!719324 c!403706) b!2528094))

(assert (= (and d!719324 (not c!403706)) b!2528095))

(declare-fun m!2880703 () Bool)

(assert (=> d!719324 m!2880703))

(declare-fun m!2880705 () Bool)

(assert (=> d!719324 m!2880705))

(declare-fun m!2880707 () Bool)

(assert (=> b!2528094 m!2880707))

(assert (=> b!2528094 m!2880707))

(declare-fun m!2880709 () Bool)

(assert (=> b!2528094 m!2880709))

(assert (=> b!2527665 d!719324))

(declare-fun d!719334 () Bool)

(declare-fun e!1600194 () Bool)

(assert (=> d!719334 e!1600194))

(declare-fun res!1067854 () Bool)

(assert (=> d!719334 (=> res!1067854 e!1600194)))

(assert (=> d!719334 (= res!1067854 (matchR!3512 lt!900879 tl!4068))))

(declare-fun lt!900953 () Unit!43275)

(declare-fun choose!14999 (Regex!7525 Regex!7525 List!29590) Unit!43275)

(assert (=> d!719334 (= lt!900953 (choose!14999 lt!900879 EmptyLang!7525 tl!4068))))

(declare-fun e!1600193 () Bool)

(assert (=> d!719334 e!1600193))

(declare-fun res!1067855 () Bool)

(assert (=> d!719334 (=> (not res!1067855) (not e!1600193))))

(assert (=> d!719334 (= res!1067855 (validRegex!3151 lt!900879))))

(assert (=> d!719334 (= (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!190 lt!900879 EmptyLang!7525 tl!4068) lt!900953)))

(declare-fun b!2528135 () Bool)

(assert (=> b!2528135 (= e!1600193 (validRegex!3151 EmptyLang!7525))))

(declare-fun b!2528136 () Bool)

(assert (=> b!2528136 (= e!1600194 (matchR!3512 EmptyLang!7525 tl!4068))))

(assert (= (and d!719334 res!1067855) b!2528135))

(assert (= (and d!719334 (not res!1067854)) b!2528136))

(assert (=> d!719334 m!2880367))

(declare-fun m!2880711 () Bool)

(assert (=> d!719334 m!2880711))

(assert (=> d!719334 m!2880617))

(assert (=> b!2528135 m!2880589))

(assert (=> b!2528136 m!2880389))

(assert (=> b!2527665 d!719334))

(declare-fun b!2528138 () Bool)

(declare-fun e!1600195 () Bool)

(assert (=> b!2528138 (= e!1600195 (not (= (head!5774 tl!4068) (c!403591 lt!900874))))))

(declare-fun b!2528139 () Bool)

(declare-fun e!1600200 () Bool)

(declare-fun e!1600201 () Bool)

(assert (=> b!2528139 (= e!1600200 e!1600201)))

(declare-fun c!403709 () Bool)

(assert (=> b!2528139 (= c!403709 ((_ is EmptyLang!7525) lt!900874))))

(declare-fun bm!158070 () Bool)

(declare-fun call!158075 () Bool)

(assert (=> bm!158070 (= call!158075 (isEmpty!16968 tl!4068))))

(declare-fun b!2528140 () Bool)

(declare-fun res!1067860 () Bool)

(declare-fun e!1600198 () Bool)

(assert (=> b!2528140 (=> (not res!1067860) (not e!1600198))))

(assert (=> b!2528140 (= res!1067860 (not call!158075))))

(declare-fun b!2528141 () Bool)

(declare-fun lt!900954 () Bool)

(assert (=> b!2528141 (= e!1600200 (= lt!900954 call!158075))))

(declare-fun b!2528142 () Bool)

(declare-fun e!1600199 () Bool)

(assert (=> b!2528142 (= e!1600199 (nullable!2442 lt!900874))))

(declare-fun b!2528143 () Bool)

(assert (=> b!2528143 (= e!1600198 (= (head!5774 tl!4068) (c!403591 lt!900874)))))

(declare-fun b!2528144 () Bool)

(declare-fun res!1067856 () Bool)

(assert (=> b!2528144 (=> res!1067856 e!1600195)))

(assert (=> b!2528144 (= res!1067856 (not (isEmpty!16968 (tail!4051 tl!4068))))))

(declare-fun b!2528145 () Bool)

(assert (=> b!2528145 (= e!1600201 (not lt!900954))))

(declare-fun b!2528146 () Bool)

(assert (=> b!2528146 (= e!1600199 (matchR!3512 (derivativeStep!2094 lt!900874 (head!5774 tl!4068)) (tail!4051 tl!4068)))))

(declare-fun b!2528147 () Bool)

(declare-fun e!1600196 () Bool)

(assert (=> b!2528147 (= e!1600196 e!1600195)))

(declare-fun res!1067863 () Bool)

(assert (=> b!2528147 (=> res!1067863 e!1600195)))

(assert (=> b!2528147 (= res!1067863 call!158075)))

(declare-fun b!2528148 () Bool)

(declare-fun res!1067859 () Bool)

(declare-fun e!1600197 () Bool)

(assert (=> b!2528148 (=> res!1067859 e!1600197)))

(assert (=> b!2528148 (= res!1067859 (not ((_ is ElementMatch!7525) lt!900874)))))

(assert (=> b!2528148 (= e!1600201 e!1600197)))

(declare-fun d!719336 () Bool)

(assert (=> d!719336 e!1600200))

(declare-fun c!403707 () Bool)

(assert (=> d!719336 (= c!403707 ((_ is EmptyExpr!7525) lt!900874))))

(assert (=> d!719336 (= lt!900954 e!1600199)))

(declare-fun c!403708 () Bool)

(assert (=> d!719336 (= c!403708 (isEmpty!16968 tl!4068))))

(assert (=> d!719336 (validRegex!3151 lt!900874)))

(assert (=> d!719336 (= (matchR!3512 lt!900874 tl!4068) lt!900954)))

(declare-fun b!2528137 () Bool)

(declare-fun res!1067857 () Bool)

(assert (=> b!2528137 (=> res!1067857 e!1600197)))

(assert (=> b!2528137 (= res!1067857 e!1600198)))

(declare-fun res!1067858 () Bool)

(assert (=> b!2528137 (=> (not res!1067858) (not e!1600198))))

(assert (=> b!2528137 (= res!1067858 lt!900954)))

(declare-fun b!2528149 () Bool)

(assert (=> b!2528149 (= e!1600197 e!1600196)))

(declare-fun res!1067862 () Bool)

(assert (=> b!2528149 (=> (not res!1067862) (not e!1600196))))

(assert (=> b!2528149 (= res!1067862 (not lt!900954))))

(declare-fun b!2528150 () Bool)

(declare-fun res!1067861 () Bool)

(assert (=> b!2528150 (=> (not res!1067861) (not e!1600198))))

(assert (=> b!2528150 (= res!1067861 (isEmpty!16968 (tail!4051 tl!4068)))))

(assert (= (and d!719336 c!403708) b!2528142))

(assert (= (and d!719336 (not c!403708)) b!2528146))

(assert (= (and d!719336 c!403707) b!2528141))

(assert (= (and d!719336 (not c!403707)) b!2528139))

(assert (= (and b!2528139 c!403709) b!2528145))

(assert (= (and b!2528139 (not c!403709)) b!2528148))

(assert (= (and b!2528148 (not res!1067859)) b!2528137))

(assert (= (and b!2528137 res!1067858) b!2528140))

(assert (= (and b!2528140 res!1067860) b!2528150))

(assert (= (and b!2528150 res!1067861) b!2528143))

(assert (= (and b!2528137 (not res!1067857)) b!2528149))

(assert (= (and b!2528149 res!1067862) b!2528147))

(assert (= (and b!2528147 (not res!1067863)) b!2528144))

(assert (= (and b!2528144 (not res!1067856)) b!2528138))

(assert (= (or b!2528141 b!2528140 b!2528147) bm!158070))

(assert (=> b!2528143 m!2880575))

(assert (=> bm!158070 m!2880577))

(declare-fun m!2880713 () Bool)

(assert (=> b!2528142 m!2880713))

(assert (=> b!2528150 m!2880581))

(assert (=> b!2528150 m!2880581))

(assert (=> b!2528150 m!2880583))

(assert (=> b!2528144 m!2880581))

(assert (=> b!2528144 m!2880581))

(assert (=> b!2528144 m!2880583))

(assert (=> b!2528138 m!2880575))

(assert (=> b!2528146 m!2880575))

(assert (=> b!2528146 m!2880575))

(declare-fun m!2880715 () Bool)

(assert (=> b!2528146 m!2880715))

(assert (=> b!2528146 m!2880581))

(assert (=> b!2528146 m!2880715))

(assert (=> b!2528146 m!2880581))

(declare-fun m!2880717 () Bool)

(assert (=> b!2528146 m!2880717))

(assert (=> d!719336 m!2880577))

(assert (=> d!719336 m!2880705))

(assert (=> b!2527665 d!719336))

(declare-fun d!719338 () Bool)

(declare-fun lt!900955 () Regex!7525)

(assert (=> d!719338 (validRegex!3151 lt!900955)))

(declare-fun e!1600202 () Regex!7525)

(assert (=> d!719338 (= lt!900955 e!1600202)))

(declare-fun c!403710 () Bool)

(assert (=> d!719338 (= c!403710 ((_ is Cons!29490) tl!4068))))

(assert (=> d!719338 (validRegex!3151 EmptyLang!7525)))

(assert (=> d!719338 (= (derivative!220 EmptyLang!7525 tl!4068) lt!900955)))

(declare-fun b!2528151 () Bool)

(assert (=> b!2528151 (= e!1600202 (derivative!220 (derivativeStep!2094 EmptyLang!7525 (h!34910 tl!4068)) (t!211289 tl!4068)))))

(declare-fun b!2528152 () Bool)

(assert (=> b!2528152 (= e!1600202 EmptyLang!7525)))

(assert (= (and d!719338 c!403710) b!2528151))

(assert (= (and d!719338 (not c!403710)) b!2528152))

(declare-fun m!2880719 () Bool)

(assert (=> d!719338 m!2880719))

(assert (=> d!719338 m!2880589))

(declare-fun m!2880721 () Bool)

(assert (=> b!2528151 m!2880721))

(assert (=> b!2528151 m!2880721))

(declare-fun m!2880723 () Bool)

(assert (=> b!2528151 m!2880723))

(assert (=> b!2527665 d!719338))

(declare-fun b!2528154 () Bool)

(declare-fun e!1600203 () Bool)

(assert (=> b!2528154 (= e!1600203 (not (= (head!5774 Nil!29490) (c!403591 (derivative!220 lt!900874 tl!4068)))))))

(declare-fun b!2528155 () Bool)

(declare-fun e!1600208 () Bool)

(declare-fun e!1600209 () Bool)

(assert (=> b!2528155 (= e!1600208 e!1600209)))

(declare-fun c!403713 () Bool)

(assert (=> b!2528155 (= c!403713 ((_ is EmptyLang!7525) (derivative!220 lt!900874 tl!4068)))))

(declare-fun bm!158071 () Bool)

(declare-fun call!158076 () Bool)

(assert (=> bm!158071 (= call!158076 (isEmpty!16968 Nil!29490))))

(declare-fun b!2528156 () Bool)

(declare-fun res!1067868 () Bool)

(declare-fun e!1600206 () Bool)

(assert (=> b!2528156 (=> (not res!1067868) (not e!1600206))))

(assert (=> b!2528156 (= res!1067868 (not call!158076))))

(declare-fun b!2528157 () Bool)

(declare-fun lt!900956 () Bool)

(assert (=> b!2528157 (= e!1600208 (= lt!900956 call!158076))))

(declare-fun b!2528158 () Bool)

(declare-fun e!1600207 () Bool)

(assert (=> b!2528158 (= e!1600207 (nullable!2442 (derivative!220 lt!900874 tl!4068)))))

(declare-fun b!2528159 () Bool)

(assert (=> b!2528159 (= e!1600206 (= (head!5774 Nil!29490) (c!403591 (derivative!220 lt!900874 tl!4068))))))

(declare-fun b!2528160 () Bool)

(declare-fun res!1067864 () Bool)

(assert (=> b!2528160 (=> res!1067864 e!1600203)))

(assert (=> b!2528160 (= res!1067864 (not (isEmpty!16968 (tail!4051 Nil!29490))))))

(declare-fun b!2528161 () Bool)

(assert (=> b!2528161 (= e!1600209 (not lt!900956))))

(declare-fun b!2528162 () Bool)

(assert (=> b!2528162 (= e!1600207 (matchR!3512 (derivativeStep!2094 (derivative!220 lt!900874 tl!4068) (head!5774 Nil!29490)) (tail!4051 Nil!29490)))))

(declare-fun b!2528163 () Bool)

(declare-fun e!1600204 () Bool)

(assert (=> b!2528163 (= e!1600204 e!1600203)))

(declare-fun res!1067871 () Bool)

(assert (=> b!2528163 (=> res!1067871 e!1600203)))

(assert (=> b!2528163 (= res!1067871 call!158076)))

(declare-fun b!2528164 () Bool)

(declare-fun res!1067867 () Bool)

(declare-fun e!1600205 () Bool)

(assert (=> b!2528164 (=> res!1067867 e!1600205)))

(assert (=> b!2528164 (= res!1067867 (not ((_ is ElementMatch!7525) (derivative!220 lt!900874 tl!4068))))))

(assert (=> b!2528164 (= e!1600209 e!1600205)))

(declare-fun d!719340 () Bool)

(assert (=> d!719340 e!1600208))

(declare-fun c!403711 () Bool)

(assert (=> d!719340 (= c!403711 ((_ is EmptyExpr!7525) (derivative!220 lt!900874 tl!4068)))))

(assert (=> d!719340 (= lt!900956 e!1600207)))

(declare-fun c!403712 () Bool)

(assert (=> d!719340 (= c!403712 (isEmpty!16968 Nil!29490))))

(assert (=> d!719340 (validRegex!3151 (derivative!220 lt!900874 tl!4068))))

(assert (=> d!719340 (= (matchR!3512 (derivative!220 lt!900874 tl!4068) Nil!29490) lt!900956)))

(declare-fun b!2528153 () Bool)

(declare-fun res!1067865 () Bool)

(assert (=> b!2528153 (=> res!1067865 e!1600205)))

(assert (=> b!2528153 (= res!1067865 e!1600206)))

(declare-fun res!1067866 () Bool)

(assert (=> b!2528153 (=> (not res!1067866) (not e!1600206))))

(assert (=> b!2528153 (= res!1067866 lt!900956)))

(declare-fun b!2528165 () Bool)

(assert (=> b!2528165 (= e!1600205 e!1600204)))

(declare-fun res!1067870 () Bool)

(assert (=> b!2528165 (=> (not res!1067870) (not e!1600204))))

(assert (=> b!2528165 (= res!1067870 (not lt!900956))))

(declare-fun b!2528166 () Bool)

(declare-fun res!1067869 () Bool)

(assert (=> b!2528166 (=> (not res!1067869) (not e!1600206))))

(assert (=> b!2528166 (= res!1067869 (isEmpty!16968 (tail!4051 Nil!29490)))))

(assert (= (and d!719340 c!403712) b!2528158))

(assert (= (and d!719340 (not c!403712)) b!2528162))

(assert (= (and d!719340 c!403711) b!2528157))

(assert (= (and d!719340 (not c!403711)) b!2528155))

(assert (= (and b!2528155 c!403713) b!2528161))

(assert (= (and b!2528155 (not c!403713)) b!2528164))

(assert (= (and b!2528164 (not res!1067867)) b!2528153))

(assert (= (and b!2528153 res!1067866) b!2528156))

(assert (= (and b!2528156 res!1067868) b!2528166))

(assert (= (and b!2528166 res!1067869) b!2528159))

(assert (= (and b!2528153 (not res!1067865)) b!2528165))

(assert (= (and b!2528165 res!1067870) b!2528163))

(assert (= (and b!2528163 (not res!1067871)) b!2528160))

(assert (= (and b!2528160 (not res!1067864)) b!2528154))

(assert (= (or b!2528157 b!2528156 b!2528163) bm!158071))

(declare-fun m!2880725 () Bool)

(assert (=> b!2528159 m!2880725))

(declare-fun m!2880727 () Bool)

(assert (=> bm!158071 m!2880727))

(assert (=> b!2528158 m!2880365))

(declare-fun m!2880729 () Bool)

(assert (=> b!2528158 m!2880729))

(declare-fun m!2880731 () Bool)

(assert (=> b!2528166 m!2880731))

(assert (=> b!2528166 m!2880731))

(declare-fun m!2880733 () Bool)

(assert (=> b!2528166 m!2880733))

(assert (=> b!2528160 m!2880731))

(assert (=> b!2528160 m!2880731))

(assert (=> b!2528160 m!2880733))

(assert (=> b!2528154 m!2880725))

(assert (=> b!2528162 m!2880725))

(assert (=> b!2528162 m!2880365))

(assert (=> b!2528162 m!2880725))

(declare-fun m!2880735 () Bool)

(assert (=> b!2528162 m!2880735))

(assert (=> b!2528162 m!2880731))

(assert (=> b!2528162 m!2880735))

(assert (=> b!2528162 m!2880731))

(declare-fun m!2880737 () Bool)

(assert (=> b!2528162 m!2880737))

(assert (=> d!719340 m!2880727))

(assert (=> d!719340 m!2880365))

(declare-fun m!2880739 () Bool)

(assert (=> d!719340 m!2880739))

(assert (=> b!2527665 d!719340))

(declare-fun d!719342 () Bool)

(assert (=> d!719342 (= (derivative!220 EmptyLang!7525 tl!4068) EmptyLang!7525)))

(declare-fun lt!900959 () Unit!43275)

(declare-fun choose!15000 (Regex!7525 List!29590) Unit!43275)

(assert (=> d!719342 (= lt!900959 (choose!15000 EmptyLang!7525 tl!4068))))

(assert (=> d!719342 (= EmptyLang!7525 EmptyLang!7525)))

(assert (=> d!719342 (= (lemmaEmptyLangDerivativeIsAFixPoint!42 EmptyLang!7525 tl!4068) lt!900959)))

(declare-fun bs!469142 () Bool)

(assert (= bs!469142 d!719342))

(assert (=> bs!469142 m!2880363))

(declare-fun m!2880741 () Bool)

(assert (=> bs!469142 m!2880741))

(assert (=> b!2527665 d!719342))

(declare-fun d!719344 () Bool)

(assert (=> d!719344 (= (matchR!3512 lt!900874 tl!4068) (matchR!3512 (derivative!220 lt!900874 tl!4068) Nil!29490))))

(declare-fun lt!900962 () Unit!43275)

(declare-fun choose!15001 (Regex!7525 List!29590) Unit!43275)

(assert (=> d!719344 (= lt!900962 (choose!15001 lt!900874 tl!4068))))

(assert (=> d!719344 (validRegex!3151 lt!900874)))

(assert (=> d!719344 (= (lemmaMatchRIsSameAsWholeDerivativeAndNil!158 lt!900874 tl!4068) lt!900962)))

(declare-fun bs!469143 () Bool)

(assert (= bs!469143 d!719344))

(assert (=> bs!469143 m!2880705))

(assert (=> bs!469143 m!2880365))

(assert (=> bs!469143 m!2880365))

(assert (=> bs!469143 m!2880369))

(declare-fun m!2880743 () Bool)

(assert (=> bs!469143 m!2880743))

(assert (=> bs!469143 m!2880371))

(assert (=> b!2527665 d!719344))

(declare-fun b!2528185 () Bool)

(declare-fun e!1600225 () Bool)

(declare-fun e!1600224 () Bool)

(assert (=> b!2528185 (= e!1600225 e!1600224)))

(declare-fun c!403718 () Bool)

(assert (=> b!2528185 (= c!403718 ((_ is Union!7525) r!27340))))

(declare-fun bm!158078 () Bool)

(declare-fun call!158085 () Bool)

(assert (=> bm!158078 (= call!158085 (validRegex!3151 (ite c!403718 (regOne!15563 r!27340) (regTwo!15562 r!27340))))))

(declare-fun b!2528186 () Bool)

(declare-fun e!1600229 () Bool)

(assert (=> b!2528186 (= e!1600229 e!1600225)))

(declare-fun c!403719 () Bool)

(assert (=> b!2528186 (= c!403719 ((_ is Star!7525) r!27340))))

(declare-fun b!2528187 () Bool)

(declare-fun e!1600227 () Bool)

(declare-fun e!1600230 () Bool)

(assert (=> b!2528187 (= e!1600227 e!1600230)))

(declare-fun res!1067885 () Bool)

(assert (=> b!2528187 (=> (not res!1067885) (not e!1600230))))

(declare-fun call!158084 () Bool)

(assert (=> b!2528187 (= res!1067885 call!158084)))

(declare-fun d!719346 () Bool)

(declare-fun res!1067883 () Bool)

(assert (=> d!719346 (=> res!1067883 e!1600229)))

(assert (=> d!719346 (= res!1067883 ((_ is ElementMatch!7525) r!27340))))

(assert (=> d!719346 (= (validRegex!3151 r!27340) e!1600229)))

(declare-fun b!2528188 () Bool)

(declare-fun e!1600226 () Bool)

(declare-fun call!158083 () Bool)

(assert (=> b!2528188 (= e!1600226 call!158083)))

(declare-fun bm!158079 () Bool)

(assert (=> bm!158079 (= call!158083 (validRegex!3151 (ite c!403719 (reg!7854 r!27340) (ite c!403718 (regTwo!15563 r!27340) (regOne!15562 r!27340)))))))

(declare-fun b!2528189 () Bool)

(declare-fun res!1067884 () Bool)

(declare-fun e!1600228 () Bool)

(assert (=> b!2528189 (=> (not res!1067884) (not e!1600228))))

(assert (=> b!2528189 (= res!1067884 call!158085)))

(assert (=> b!2528189 (= e!1600224 e!1600228)))

(declare-fun b!2528190 () Bool)

(assert (=> b!2528190 (= e!1600228 call!158084)))

(declare-fun b!2528191 () Bool)

(declare-fun res!1067882 () Bool)

(assert (=> b!2528191 (=> res!1067882 e!1600227)))

(assert (=> b!2528191 (= res!1067882 (not ((_ is Concat!12221) r!27340)))))

(assert (=> b!2528191 (= e!1600224 e!1600227)))

(declare-fun b!2528192 () Bool)

(assert (=> b!2528192 (= e!1600230 call!158085)))

(declare-fun bm!158080 () Bool)

(assert (=> bm!158080 (= call!158084 call!158083)))

(declare-fun b!2528193 () Bool)

(assert (=> b!2528193 (= e!1600225 e!1600226)))

(declare-fun res!1067886 () Bool)

(assert (=> b!2528193 (= res!1067886 (not (nullable!2442 (reg!7854 r!27340))))))

(assert (=> b!2528193 (=> (not res!1067886) (not e!1600226))))

(assert (= (and d!719346 (not res!1067883)) b!2528186))

(assert (= (and b!2528186 c!403719) b!2528193))

(assert (= (and b!2528186 (not c!403719)) b!2528185))

(assert (= (and b!2528193 res!1067886) b!2528188))

(assert (= (and b!2528185 c!403718) b!2528189))

(assert (= (and b!2528185 (not c!403718)) b!2528191))

(assert (= (and b!2528189 res!1067884) b!2528190))

(assert (= (and b!2528191 (not res!1067882)) b!2528187))

(assert (= (and b!2528187 res!1067885) b!2528192))

(assert (= (or b!2528189 b!2528192) bm!158078))

(assert (= (or b!2528190 b!2528187) bm!158080))

(assert (= (or b!2528188 bm!158080) bm!158079))

(declare-fun m!2880745 () Bool)

(assert (=> bm!158078 m!2880745))

(declare-fun m!2880747 () Bool)

(assert (=> bm!158079 m!2880747))

(declare-fun m!2880749 () Bool)

(assert (=> b!2528193 m!2880749))

(assert (=> start!246212 d!719346))

(declare-fun d!719348 () Bool)

(declare-fun nullableFct!683 (Regex!7525) Bool)

(assert (=> d!719348 (= (nullable!2442 (regOne!15562 r!27340)) (nullableFct!683 (regOne!15562 r!27340)))))

(declare-fun bs!469144 () Bool)

(assert (= bs!469144 d!719348))

(declare-fun m!2880751 () Bool)

(assert (=> bs!469144 m!2880751))

(assert (=> b!2527668 d!719348))

(declare-fun d!719350 () Bool)

(assert (=> d!719350 (= (nullable!2442 (derivative!220 (derivativeStep!2094 r!27340 c!14016) tl!4068)) (nullableFct!683 (derivative!220 (derivativeStep!2094 r!27340 c!14016) tl!4068)))))

(declare-fun bs!469145 () Bool)

(assert (= bs!469145 d!719350))

(assert (=> bs!469145 m!2880393))

(declare-fun m!2880753 () Bool)

(assert (=> bs!469145 m!2880753))

(assert (=> b!2527663 d!719350))

(declare-fun d!719352 () Bool)

(declare-fun lt!900963 () Regex!7525)

(assert (=> d!719352 (validRegex!3151 lt!900963)))

(declare-fun e!1600231 () Regex!7525)

(assert (=> d!719352 (= lt!900963 e!1600231)))

(declare-fun c!403720 () Bool)

(assert (=> d!719352 (= c!403720 ((_ is Cons!29490) tl!4068))))

(assert (=> d!719352 (validRegex!3151 (derivativeStep!2094 r!27340 c!14016))))

(assert (=> d!719352 (= (derivative!220 (derivativeStep!2094 r!27340 c!14016) tl!4068) lt!900963)))

(declare-fun b!2528194 () Bool)

(assert (=> b!2528194 (= e!1600231 (derivative!220 (derivativeStep!2094 (derivativeStep!2094 r!27340 c!14016) (h!34910 tl!4068)) (t!211289 tl!4068)))))

(declare-fun b!2528195 () Bool)

(assert (=> b!2528195 (= e!1600231 (derivativeStep!2094 r!27340 c!14016))))

(assert (= (and d!719352 c!403720) b!2528194))

(assert (= (and d!719352 (not c!403720)) b!2528195))

(declare-fun m!2880755 () Bool)

(assert (=> d!719352 m!2880755))

(assert (=> d!719352 m!2880391))

(declare-fun m!2880757 () Bool)

(assert (=> d!719352 m!2880757))

(assert (=> b!2528194 m!2880391))

(declare-fun m!2880759 () Bool)

(assert (=> b!2528194 m!2880759))

(assert (=> b!2528194 m!2880759))

(declare-fun m!2880761 () Bool)

(assert (=> b!2528194 m!2880761))

(assert (=> b!2527663 d!719352))

(declare-fun b!2528196 () Bool)

(declare-fun e!1600234 () Regex!7525)

(declare-fun e!1600236 () Regex!7525)

(assert (=> b!2528196 (= e!1600234 e!1600236)))

(declare-fun c!403724 () Bool)

(assert (=> b!2528196 (= c!403724 ((_ is ElementMatch!7525) r!27340))))

(declare-fun b!2528197 () Bool)

(declare-fun e!1600232 () Regex!7525)

(declare-fun call!158089 () Regex!7525)

(assert (=> b!2528197 (= e!1600232 (Union!7525 (Concat!12221 call!158089 (regTwo!15562 r!27340)) EmptyLang!7525))))

(declare-fun b!2528198 () Bool)

(declare-fun e!1600233 () Regex!7525)

(declare-fun call!158086 () Regex!7525)

(assert (=> b!2528198 (= e!1600233 (Concat!12221 call!158086 r!27340))))

(declare-fun b!2528199 () Bool)

(declare-fun e!1600235 () Regex!7525)

(assert (=> b!2528199 (= e!1600235 e!1600233)))

(declare-fun c!403723 () Bool)

(assert (=> b!2528199 (= c!403723 ((_ is Star!7525) r!27340))))

(declare-fun b!2528200 () Bool)

(declare-fun call!158087 () Regex!7525)

(declare-fun call!158088 () Regex!7525)

(assert (=> b!2528200 (= e!1600235 (Union!7525 call!158087 call!158088))))

(declare-fun bm!158081 () Bool)

(assert (=> bm!158081 (= call!158089 call!158086)))

(declare-fun bm!158082 () Bool)

(assert (=> bm!158082 (= call!158086 call!158088)))

(declare-fun b!2528201 () Bool)

(assert (=> b!2528201 (= e!1600232 (Union!7525 (Concat!12221 call!158089 (regTwo!15562 r!27340)) call!158087))))

(declare-fun bm!158083 () Bool)

(declare-fun c!403722 () Bool)

(assert (=> bm!158083 (= call!158088 (derivativeStep!2094 (ite c!403722 (regTwo!15563 r!27340) (ite c!403723 (reg!7854 r!27340) (regOne!15562 r!27340))) c!14016))))

(declare-fun b!2528202 () Bool)

(assert (=> b!2528202 (= c!403722 ((_ is Union!7525) r!27340))))

(assert (=> b!2528202 (= e!1600236 e!1600235)))

(declare-fun b!2528203 () Bool)

(assert (=> b!2528203 (= e!1600234 EmptyLang!7525)))

(declare-fun bm!158084 () Bool)

(assert (=> bm!158084 (= call!158087 (derivativeStep!2094 (ite c!403722 (regOne!15563 r!27340) (regTwo!15562 r!27340)) c!14016))))

(declare-fun b!2528204 () Bool)

(declare-fun c!403725 () Bool)

(assert (=> b!2528204 (= c!403725 (nullable!2442 (regOne!15562 r!27340)))))

(assert (=> b!2528204 (= e!1600233 e!1600232)))

(declare-fun d!719354 () Bool)

(declare-fun lt!900964 () Regex!7525)

(assert (=> d!719354 (validRegex!3151 lt!900964)))

(assert (=> d!719354 (= lt!900964 e!1600234)))

(declare-fun c!403721 () Bool)

(assert (=> d!719354 (= c!403721 (or ((_ is EmptyExpr!7525) r!27340) ((_ is EmptyLang!7525) r!27340)))))

(assert (=> d!719354 (validRegex!3151 r!27340)))

(assert (=> d!719354 (= (derivativeStep!2094 r!27340 c!14016) lt!900964)))

(declare-fun b!2528205 () Bool)

(assert (=> b!2528205 (= e!1600236 (ite (= c!14016 (c!403591 r!27340)) EmptyExpr!7525 EmptyLang!7525))))

(assert (= (and d!719354 c!403721) b!2528203))

(assert (= (and d!719354 (not c!403721)) b!2528196))

(assert (= (and b!2528196 c!403724) b!2528205))

(assert (= (and b!2528196 (not c!403724)) b!2528202))

(assert (= (and b!2528202 c!403722) b!2528200))

(assert (= (and b!2528202 (not c!403722)) b!2528199))

(assert (= (and b!2528199 c!403723) b!2528198))

(assert (= (and b!2528199 (not c!403723)) b!2528204))

(assert (= (and b!2528204 c!403725) b!2528201))

(assert (= (and b!2528204 (not c!403725)) b!2528197))

(assert (= (or b!2528201 b!2528197) bm!158081))

(assert (= (or b!2528198 bm!158081) bm!158082))

(assert (= (or b!2528200 bm!158082) bm!158083))

(assert (= (or b!2528200 b!2528201) bm!158084))

(declare-fun m!2880763 () Bool)

(assert (=> bm!158083 m!2880763))

(declare-fun m!2880765 () Bool)

(assert (=> bm!158084 m!2880765))

(assert (=> b!2528204 m!2880357))

(declare-fun m!2880767 () Bool)

(assert (=> d!719354 m!2880767))

(assert (=> d!719354 m!2880355))

(assert (=> b!2527663 d!719354))

(declare-fun b!2528210 () Bool)

(declare-fun e!1600239 () Bool)

(declare-fun tp!807031 () Bool)

(assert (=> b!2528210 (= e!1600239 (and tp_is_empty!12905 tp!807031))))

(assert (=> b!2527673 (= tp!806988 e!1600239)))

(assert (= (and b!2527673 ((_ is Cons!29490) (t!211289 tl!4068))) b!2528210))

(declare-fun b!2528223 () Bool)

(declare-fun e!1600242 () Bool)

(declare-fun tp!807044 () Bool)

(assert (=> b!2528223 (= e!1600242 tp!807044)))

(declare-fun b!2528221 () Bool)

(assert (=> b!2528221 (= e!1600242 tp_is_empty!12905)))

(declare-fun b!2528222 () Bool)

(declare-fun tp!807045 () Bool)

(declare-fun tp!807043 () Bool)

(assert (=> b!2528222 (= e!1600242 (and tp!807045 tp!807043))))

(assert (=> b!2527666 (= tp!806987 e!1600242)))

(declare-fun b!2528224 () Bool)

(declare-fun tp!807042 () Bool)

(declare-fun tp!807046 () Bool)

(assert (=> b!2528224 (= e!1600242 (and tp!807042 tp!807046))))

(assert (= (and b!2527666 ((_ is ElementMatch!7525) (regOne!15562 r!27340))) b!2528221))

(assert (= (and b!2527666 ((_ is Concat!12221) (regOne!15562 r!27340))) b!2528222))

(assert (= (and b!2527666 ((_ is Star!7525) (regOne!15562 r!27340))) b!2528223))

(assert (= (and b!2527666 ((_ is Union!7525) (regOne!15562 r!27340))) b!2528224))

(declare-fun b!2528227 () Bool)

(declare-fun e!1600243 () Bool)

(declare-fun tp!807049 () Bool)

(assert (=> b!2528227 (= e!1600243 tp!807049)))

(declare-fun b!2528225 () Bool)

(assert (=> b!2528225 (= e!1600243 tp_is_empty!12905)))

(declare-fun b!2528226 () Bool)

(declare-fun tp!807050 () Bool)

(declare-fun tp!807048 () Bool)

(assert (=> b!2528226 (= e!1600243 (and tp!807050 tp!807048))))

(assert (=> b!2527666 (= tp!806990 e!1600243)))

(declare-fun b!2528228 () Bool)

(declare-fun tp!807047 () Bool)

(declare-fun tp!807051 () Bool)

(assert (=> b!2528228 (= e!1600243 (and tp!807047 tp!807051))))

(assert (= (and b!2527666 ((_ is ElementMatch!7525) (regTwo!15562 r!27340))) b!2528225))

(assert (= (and b!2527666 ((_ is Concat!12221) (regTwo!15562 r!27340))) b!2528226))

(assert (= (and b!2527666 ((_ is Star!7525) (regTwo!15562 r!27340))) b!2528227))

(assert (= (and b!2527666 ((_ is Union!7525) (regTwo!15562 r!27340))) b!2528228))

(declare-fun b!2528231 () Bool)

(declare-fun e!1600244 () Bool)

(declare-fun tp!807054 () Bool)

(assert (=> b!2528231 (= e!1600244 tp!807054)))

(declare-fun b!2528229 () Bool)

(assert (=> b!2528229 (= e!1600244 tp_is_empty!12905)))

(declare-fun b!2528230 () Bool)

(declare-fun tp!807055 () Bool)

(declare-fun tp!807053 () Bool)

(assert (=> b!2528230 (= e!1600244 (and tp!807055 tp!807053))))

(assert (=> b!2527674 (= tp!806989 e!1600244)))

(declare-fun b!2528232 () Bool)

(declare-fun tp!807052 () Bool)

(declare-fun tp!807056 () Bool)

(assert (=> b!2528232 (= e!1600244 (and tp!807052 tp!807056))))

(assert (= (and b!2527674 ((_ is ElementMatch!7525) (regOne!15563 r!27340))) b!2528229))

(assert (= (and b!2527674 ((_ is Concat!12221) (regOne!15563 r!27340))) b!2528230))

(assert (= (and b!2527674 ((_ is Star!7525) (regOne!15563 r!27340))) b!2528231))

(assert (= (and b!2527674 ((_ is Union!7525) (regOne!15563 r!27340))) b!2528232))

(declare-fun b!2528235 () Bool)

(declare-fun e!1600245 () Bool)

(declare-fun tp!807059 () Bool)

(assert (=> b!2528235 (= e!1600245 tp!807059)))

(declare-fun b!2528233 () Bool)

(assert (=> b!2528233 (= e!1600245 tp_is_empty!12905)))

(declare-fun b!2528234 () Bool)

(declare-fun tp!807060 () Bool)

(declare-fun tp!807058 () Bool)

(assert (=> b!2528234 (= e!1600245 (and tp!807060 tp!807058))))

(assert (=> b!2527674 (= tp!806986 e!1600245)))

(declare-fun b!2528236 () Bool)

(declare-fun tp!807057 () Bool)

(declare-fun tp!807061 () Bool)

(assert (=> b!2528236 (= e!1600245 (and tp!807057 tp!807061))))

(assert (= (and b!2527674 ((_ is ElementMatch!7525) (regTwo!15563 r!27340))) b!2528233))

(assert (= (and b!2527674 ((_ is Concat!12221) (regTwo!15563 r!27340))) b!2528234))

(assert (= (and b!2527674 ((_ is Star!7525) (regTwo!15563 r!27340))) b!2528235))

(assert (= (and b!2527674 ((_ is Union!7525) (regTwo!15563 r!27340))) b!2528236))

(declare-fun b!2528239 () Bool)

(declare-fun e!1600246 () Bool)

(declare-fun tp!807064 () Bool)

(assert (=> b!2528239 (= e!1600246 tp!807064)))

(declare-fun b!2528237 () Bool)

(assert (=> b!2528237 (= e!1600246 tp_is_empty!12905)))

(declare-fun b!2528238 () Bool)

(declare-fun tp!807065 () Bool)

(declare-fun tp!807063 () Bool)

(assert (=> b!2528238 (= e!1600246 (and tp!807065 tp!807063))))

(assert (=> b!2527669 (= tp!806985 e!1600246)))

(declare-fun b!2528240 () Bool)

(declare-fun tp!807062 () Bool)

(declare-fun tp!807066 () Bool)

(assert (=> b!2528240 (= e!1600246 (and tp!807062 tp!807066))))

(assert (= (and b!2527669 ((_ is ElementMatch!7525) (reg!7854 r!27340))) b!2528237))

(assert (= (and b!2527669 ((_ is Concat!12221) (reg!7854 r!27340))) b!2528238))

(assert (= (and b!2527669 ((_ is Star!7525) (reg!7854 r!27340))) b!2528239))

(assert (= (and b!2527669 ((_ is Union!7525) (reg!7854 r!27340))) b!2528240))

(check-sat (not b!2528210) (not b!2528048) (not b!2527915) (not b!2528224) (not b!2527975) (not d!719306) (not bm!158027) (not b!2527949) (not d!719294) (not d!719324) (not b!2527976) (not d!719266) (not d!719274) (not b!2527961) (not b!2528144) (not b!2528193) (not d!719278) (not b!2527948) (not bm!158084) (not b!2527955) (not d!719354) (not b!2528226) (not b!2527943) (not b!2528228) (not b!2527734) (not bm!158083) (not b!2527965) (not b!2527742) (not d!719308) (not b!2528223) (not b!2527951) (not b!2528238) (not b!2528194) (not b!2527963) (not b!2528232) (not b!2527916) (not d!719340) (not b!2527907) (not d!719342) (not b!2527947) (not b!2527827) (not b!2527735) (not b!2527957) (not b!2528227) (not b!2527971) (not b!2527917) (not b!2528159) (not bm!158078) (not b!2528138) (not b!2527730) (not b!2528204) (not b!2528160) (not b!2528234) (not b!2528143) (not d!719310) (not bm!158071) (not b!2528235) (not b!2528135) (not d!719348) (not bm!158066) (not b!2528236) (not d!719352) (not bm!158052) (not b!2528154) (not bm!158051) (not b!2528142) (not b!2527977) (not d!719312) (not bm!158079) (not b!2527983) (not b!2527919) (not bm!158044) (not bm!158043) (not d!719350) (not b!2528222) (not bm!158067) (not b!2528146) (not b!2528151) (not b!2527829) (not d!719336) (not d!719344) (not b!2527969) (not d!719280) (not d!719334) (not b!2528166) (not b!2527911) (not b!2527828) (not b!2527979) (not b!2528150) (not b!2527923) (not b!2528230) (not b!2528239) (not bm!158070) (not b!2528158) (not b!2527831) (not b!2527738) (not b!2527908) tp_is_empty!12905 (not b!2527736) (not b!2528240) (not b!2528231) (not d!719338) (not b!2528136) (not d!719316) (not b!2528094) (not b!2528162) (not b!2527835) (not b!2527962) (not b!2527832))
(check-sat)
(get-model)

(declare-fun d!719476 () Bool)

(assert (=> d!719476 (= (isEmpty!16968 (_1!17316 lt!900878)) ((_ is Nil!29490) (_1!17316 lt!900878)))))

(assert (=> d!719266 d!719476))

(declare-fun b!2528506 () Bool)

(declare-fun e!1600418 () Bool)

(declare-fun e!1600417 () Bool)

(assert (=> b!2528506 (= e!1600418 e!1600417)))

(declare-fun c!403800 () Bool)

(assert (=> b!2528506 (= c!403800 ((_ is Union!7525) lt!900873))))

(declare-fun bm!158155 () Bool)

(declare-fun call!158162 () Bool)

(assert (=> bm!158155 (= call!158162 (validRegex!3151 (ite c!403800 (regOne!15563 lt!900873) (regTwo!15562 lt!900873))))))

(declare-fun b!2528507 () Bool)

(declare-fun e!1600422 () Bool)

(assert (=> b!2528507 (= e!1600422 e!1600418)))

(declare-fun c!403801 () Bool)

(assert (=> b!2528507 (= c!403801 ((_ is Star!7525) lt!900873))))

(declare-fun b!2528508 () Bool)

(declare-fun e!1600420 () Bool)

(declare-fun e!1600423 () Bool)

(assert (=> b!2528508 (= e!1600420 e!1600423)))

(declare-fun res!1068007 () Bool)

(assert (=> b!2528508 (=> (not res!1068007) (not e!1600423))))

(declare-fun call!158161 () Bool)

(assert (=> b!2528508 (= res!1068007 call!158161)))

(declare-fun d!719482 () Bool)

(declare-fun res!1068005 () Bool)

(assert (=> d!719482 (=> res!1068005 e!1600422)))

(assert (=> d!719482 (= res!1068005 ((_ is ElementMatch!7525) lt!900873))))

(assert (=> d!719482 (= (validRegex!3151 lt!900873) e!1600422)))

(declare-fun b!2528509 () Bool)

(declare-fun e!1600419 () Bool)

(declare-fun call!158160 () Bool)

(assert (=> b!2528509 (= e!1600419 call!158160)))

(declare-fun bm!158156 () Bool)

(assert (=> bm!158156 (= call!158160 (validRegex!3151 (ite c!403801 (reg!7854 lt!900873) (ite c!403800 (regTwo!15563 lt!900873) (regOne!15562 lt!900873)))))))

(declare-fun b!2528510 () Bool)

(declare-fun res!1068006 () Bool)

(declare-fun e!1600421 () Bool)

(assert (=> b!2528510 (=> (not res!1068006) (not e!1600421))))

(assert (=> b!2528510 (= res!1068006 call!158162)))

(assert (=> b!2528510 (= e!1600417 e!1600421)))

(declare-fun b!2528511 () Bool)

(assert (=> b!2528511 (= e!1600421 call!158161)))

(declare-fun b!2528512 () Bool)

(declare-fun res!1068004 () Bool)

(assert (=> b!2528512 (=> res!1068004 e!1600420)))

(assert (=> b!2528512 (= res!1068004 (not ((_ is Concat!12221) lt!900873)))))

(assert (=> b!2528512 (= e!1600417 e!1600420)))

(declare-fun b!2528513 () Bool)

(assert (=> b!2528513 (= e!1600423 call!158162)))

(declare-fun bm!158157 () Bool)

(assert (=> bm!158157 (= call!158161 call!158160)))

(declare-fun b!2528514 () Bool)

(assert (=> b!2528514 (= e!1600418 e!1600419)))

(declare-fun res!1068008 () Bool)

(assert (=> b!2528514 (= res!1068008 (not (nullable!2442 (reg!7854 lt!900873))))))

(assert (=> b!2528514 (=> (not res!1068008) (not e!1600419))))

(assert (= (and d!719482 (not res!1068005)) b!2528507))

(assert (= (and b!2528507 c!403801) b!2528514))

(assert (= (and b!2528507 (not c!403801)) b!2528506))

(assert (= (and b!2528514 res!1068008) b!2528509))

(assert (= (and b!2528506 c!403800) b!2528510))

(assert (= (and b!2528506 (not c!403800)) b!2528512))

(assert (= (and b!2528510 res!1068006) b!2528511))

(assert (= (and b!2528512 (not res!1068004)) b!2528508))

(assert (= (and b!2528508 res!1068007) b!2528513))

(assert (= (or b!2528510 b!2528513) bm!158155))

(assert (= (or b!2528511 b!2528508) bm!158157))

(assert (= (or b!2528509 bm!158157) bm!158156))

(declare-fun m!2880977 () Bool)

(assert (=> bm!158155 m!2880977))

(declare-fun m!2880979 () Bool)

(assert (=> bm!158156 m!2880979))

(declare-fun m!2880981 () Bool)

(assert (=> b!2528514 m!2880981))

(assert (=> d!719266 d!719482))

(declare-fun d!719486 () Bool)

(assert (=> d!719486 (= (isEmpty!16968 (tail!4051 tl!4068)) ((_ is Nil!29490) (tail!4051 tl!4068)))))

(assert (=> b!2527977 d!719486))

(declare-fun d!719488 () Bool)

(assert (=> d!719488 (= (tail!4051 tl!4068) (t!211289 tl!4068))))

(assert (=> b!2527977 d!719488))

(declare-fun b!2528525 () Bool)

(declare-fun e!1600431 () Regex!7525)

(declare-fun e!1600433 () Regex!7525)

(assert (=> b!2528525 (= e!1600431 e!1600433)))

(declare-fun c!403810 () Bool)

(assert (=> b!2528525 (= c!403810 ((_ is ElementMatch!7525) (ite c!403691 (regTwo!15563 (regOne!15562 r!27340)) (ite c!403692 (reg!7854 (regOne!15562 r!27340)) (regOne!15562 (regOne!15562 r!27340))))))))

(declare-fun b!2528526 () Bool)

(declare-fun call!158166 () Regex!7525)

(declare-fun e!1600429 () Regex!7525)

(assert (=> b!2528526 (= e!1600429 (Union!7525 (Concat!12221 call!158166 (regTwo!15562 (ite c!403691 (regTwo!15563 (regOne!15562 r!27340)) (ite c!403692 (reg!7854 (regOne!15562 r!27340)) (regOne!15562 (regOne!15562 r!27340)))))) EmptyLang!7525))))

(declare-fun b!2528527 () Bool)

(declare-fun e!1600430 () Regex!7525)

(declare-fun call!158163 () Regex!7525)

(assert (=> b!2528527 (= e!1600430 (Concat!12221 call!158163 (ite c!403691 (regTwo!15563 (regOne!15562 r!27340)) (ite c!403692 (reg!7854 (regOne!15562 r!27340)) (regOne!15562 (regOne!15562 r!27340))))))))

(declare-fun b!2528528 () Bool)

(declare-fun e!1600432 () Regex!7525)

(assert (=> b!2528528 (= e!1600432 e!1600430)))

(declare-fun c!403809 () Bool)

(assert (=> b!2528528 (= c!403809 ((_ is Star!7525) (ite c!403691 (regTwo!15563 (regOne!15562 r!27340)) (ite c!403692 (reg!7854 (regOne!15562 r!27340)) (regOne!15562 (regOne!15562 r!27340))))))))

(declare-fun b!2528529 () Bool)

(declare-fun call!158164 () Regex!7525)

(declare-fun call!158165 () Regex!7525)

(assert (=> b!2528529 (= e!1600432 (Union!7525 call!158164 call!158165))))

(declare-fun bm!158158 () Bool)

(assert (=> bm!158158 (= call!158166 call!158163)))

(declare-fun bm!158159 () Bool)

(assert (=> bm!158159 (= call!158163 call!158165)))

(declare-fun b!2528530 () Bool)

(assert (=> b!2528530 (= e!1600429 (Union!7525 (Concat!12221 call!158166 (regTwo!15562 (ite c!403691 (regTwo!15563 (regOne!15562 r!27340)) (ite c!403692 (reg!7854 (regOne!15562 r!27340)) (regOne!15562 (regOne!15562 r!27340)))))) call!158164))))

(declare-fun c!403808 () Bool)

(declare-fun bm!158160 () Bool)

(assert (=> bm!158160 (= call!158165 (derivativeStep!2094 (ite c!403808 (regTwo!15563 (ite c!403691 (regTwo!15563 (regOne!15562 r!27340)) (ite c!403692 (reg!7854 (regOne!15562 r!27340)) (regOne!15562 (regOne!15562 r!27340))))) (ite c!403809 (reg!7854 (ite c!403691 (regTwo!15563 (regOne!15562 r!27340)) (ite c!403692 (reg!7854 (regOne!15562 r!27340)) (regOne!15562 (regOne!15562 r!27340))))) (regOne!15562 (ite c!403691 (regTwo!15563 (regOne!15562 r!27340)) (ite c!403692 (reg!7854 (regOne!15562 r!27340)) (regOne!15562 (regOne!15562 r!27340))))))) c!14016))))

(declare-fun b!2528531 () Bool)

(assert (=> b!2528531 (= c!403808 ((_ is Union!7525) (ite c!403691 (regTwo!15563 (regOne!15562 r!27340)) (ite c!403692 (reg!7854 (regOne!15562 r!27340)) (regOne!15562 (regOne!15562 r!27340))))))))

(assert (=> b!2528531 (= e!1600433 e!1600432)))

(declare-fun b!2528532 () Bool)

(assert (=> b!2528532 (= e!1600431 EmptyLang!7525)))

(declare-fun bm!158161 () Bool)

(assert (=> bm!158161 (= call!158164 (derivativeStep!2094 (ite c!403808 (regOne!15563 (ite c!403691 (regTwo!15563 (regOne!15562 r!27340)) (ite c!403692 (reg!7854 (regOne!15562 r!27340)) (regOne!15562 (regOne!15562 r!27340))))) (regTwo!15562 (ite c!403691 (regTwo!15563 (regOne!15562 r!27340)) (ite c!403692 (reg!7854 (regOne!15562 r!27340)) (regOne!15562 (regOne!15562 r!27340)))))) c!14016))))

(declare-fun c!403811 () Bool)

(declare-fun b!2528533 () Bool)

(assert (=> b!2528533 (= c!403811 (nullable!2442 (regOne!15562 (ite c!403691 (regTwo!15563 (regOne!15562 r!27340)) (ite c!403692 (reg!7854 (regOne!15562 r!27340)) (regOne!15562 (regOne!15562 r!27340)))))))))

(assert (=> b!2528533 (= e!1600430 e!1600429)))

(declare-fun d!719492 () Bool)

(declare-fun lt!900984 () Regex!7525)

(assert (=> d!719492 (validRegex!3151 lt!900984)))

(assert (=> d!719492 (= lt!900984 e!1600431)))

(declare-fun c!403807 () Bool)

(assert (=> d!719492 (= c!403807 (or ((_ is EmptyExpr!7525) (ite c!403691 (regTwo!15563 (regOne!15562 r!27340)) (ite c!403692 (reg!7854 (regOne!15562 r!27340)) (regOne!15562 (regOne!15562 r!27340))))) ((_ is EmptyLang!7525) (ite c!403691 (regTwo!15563 (regOne!15562 r!27340)) (ite c!403692 (reg!7854 (regOne!15562 r!27340)) (regOne!15562 (regOne!15562 r!27340)))))))))

(assert (=> d!719492 (validRegex!3151 (ite c!403691 (regTwo!15563 (regOne!15562 r!27340)) (ite c!403692 (reg!7854 (regOne!15562 r!27340)) (regOne!15562 (regOne!15562 r!27340)))))))

(assert (=> d!719492 (= (derivativeStep!2094 (ite c!403691 (regTwo!15563 (regOne!15562 r!27340)) (ite c!403692 (reg!7854 (regOne!15562 r!27340)) (regOne!15562 (regOne!15562 r!27340)))) c!14016) lt!900984)))

(declare-fun b!2528534 () Bool)

(assert (=> b!2528534 (= e!1600433 (ite (= c!14016 (c!403591 (ite c!403691 (regTwo!15563 (regOne!15562 r!27340)) (ite c!403692 (reg!7854 (regOne!15562 r!27340)) (regOne!15562 (regOne!15562 r!27340)))))) EmptyExpr!7525 EmptyLang!7525))))

(assert (= (and d!719492 c!403807) b!2528532))

(assert (= (and d!719492 (not c!403807)) b!2528525))

(assert (= (and b!2528525 c!403810) b!2528534))

(assert (= (and b!2528525 (not c!403810)) b!2528531))

(assert (= (and b!2528531 c!403808) b!2528529))

(assert (= (and b!2528531 (not c!403808)) b!2528528))

(assert (= (and b!2528528 c!403809) b!2528527))

(assert (= (and b!2528528 (not c!403809)) b!2528533))

(assert (= (and b!2528533 c!403811) b!2528530))

(assert (= (and b!2528533 (not c!403811)) b!2528526))

(assert (= (or b!2528530 b!2528526) bm!158158))

(assert (= (or b!2528527 bm!158158) bm!158159))

(assert (= (or b!2528529 bm!158159) bm!158160))

(assert (= (or b!2528529 b!2528530) bm!158161))

(declare-fun m!2880995 () Bool)

(assert (=> bm!158160 m!2880995))

(declare-fun m!2880997 () Bool)

(assert (=> bm!158161 m!2880997))

(declare-fun m!2880999 () Bool)

(assert (=> b!2528533 m!2880999))

(declare-fun m!2881001 () Bool)

(assert (=> d!719492 m!2881001))

(declare-fun m!2881003 () Bool)

(assert (=> d!719492 m!2881003))

(assert (=> bm!158066 d!719492))

(declare-fun d!719500 () Bool)

(assert (=> d!719500 (= (isEmpty!16968 tl!4068) ((_ is Nil!29490) tl!4068))))

(assert (=> bm!158070 d!719500))

(declare-fun d!719502 () Bool)

(assert (=> d!719502 (= (head!5774 tl!4068) (h!34910 tl!4068))))

(assert (=> b!2528138 d!719502))

(declare-fun d!719506 () Bool)

(assert (not d!719506))

(assert (=> b!2528162 d!719506))

(declare-fun d!719508 () Bool)

(assert (not d!719508))

(assert (=> b!2528162 d!719508))

(declare-fun d!719510 () Bool)

(assert (not d!719510))

(assert (=> b!2528162 d!719510))

(declare-fun d!719512 () Bool)

(assert (not d!719512))

(assert (=> b!2528162 d!719512))

(declare-fun d!719514 () Bool)

(assert (=> d!719514 (= (head!5774 (_1!17316 lt!900878)) (h!34910 (_1!17316 lt!900878)))))

(assert (=> b!2527730 d!719514))

(declare-fun d!719516 () Bool)

(assert (not d!719516))

(assert (=> b!2528166 d!719516))

(assert (=> b!2528166 d!719512))

(declare-fun d!719518 () Bool)

(assert (=> d!719518 (= (isEmpty!16968 (tail!4051 (_2!17316 lt!900878))) ((_ is Nil!29490) (tail!4051 (_2!17316 lt!900878))))))

(assert (=> b!2527923 d!719518))

(declare-fun d!719520 () Bool)

(assert (=> d!719520 (= (tail!4051 (_2!17316 lt!900878)) (t!211289 (_2!17316 lt!900878)))))

(assert (=> b!2527923 d!719520))

(declare-fun b!2528562 () Bool)

(declare-fun e!1600447 () Bool)

(assert (=> b!2528562 (= e!1600447 (not (= (head!5774 (tail!4051 tl!4068)) (c!403591 (derivativeStep!2094 lt!900879 (head!5774 tl!4068))))))))

(declare-fun b!2528563 () Bool)

(declare-fun e!1600452 () Bool)

(declare-fun e!1600453 () Bool)

(assert (=> b!2528563 (= e!1600452 e!1600453)))

(declare-fun c!403823 () Bool)

(assert (=> b!2528563 (= c!403823 ((_ is EmptyLang!7525) (derivativeStep!2094 lt!900879 (head!5774 tl!4068))))))

(declare-fun bm!158167 () Bool)

(declare-fun call!158172 () Bool)

(assert (=> bm!158167 (= call!158172 (isEmpty!16968 (tail!4051 tl!4068)))))

(declare-fun b!2528564 () Bool)

(declare-fun res!1068021 () Bool)

(declare-fun e!1600450 () Bool)

(assert (=> b!2528564 (=> (not res!1068021) (not e!1600450))))

(assert (=> b!2528564 (= res!1068021 (not call!158172))))

(declare-fun b!2528565 () Bool)

(declare-fun lt!900988 () Bool)

(assert (=> b!2528565 (= e!1600452 (= lt!900988 call!158172))))

(declare-fun b!2528566 () Bool)

(declare-fun e!1600451 () Bool)

(assert (=> b!2528566 (= e!1600451 (nullable!2442 (derivativeStep!2094 lt!900879 (head!5774 tl!4068))))))

(declare-fun b!2528567 () Bool)

(assert (=> b!2528567 (= e!1600450 (= (head!5774 (tail!4051 tl!4068)) (c!403591 (derivativeStep!2094 lt!900879 (head!5774 tl!4068)))))))

(declare-fun b!2528568 () Bool)

(declare-fun res!1068017 () Bool)

(assert (=> b!2528568 (=> res!1068017 e!1600447)))

(assert (=> b!2528568 (= res!1068017 (not (isEmpty!16968 (tail!4051 (tail!4051 tl!4068)))))))

(declare-fun b!2528569 () Bool)

(assert (=> b!2528569 (= e!1600453 (not lt!900988))))

(declare-fun b!2528570 () Bool)

(assert (=> b!2528570 (= e!1600451 (matchR!3512 (derivativeStep!2094 (derivativeStep!2094 lt!900879 (head!5774 tl!4068)) (head!5774 (tail!4051 tl!4068))) (tail!4051 (tail!4051 tl!4068))))))

(declare-fun b!2528571 () Bool)

(declare-fun e!1600448 () Bool)

(assert (=> b!2528571 (= e!1600448 e!1600447)))

(declare-fun res!1068024 () Bool)

(assert (=> b!2528571 (=> res!1068024 e!1600447)))

(assert (=> b!2528571 (= res!1068024 call!158172)))

(declare-fun b!2528572 () Bool)

(declare-fun res!1068020 () Bool)

(declare-fun e!1600449 () Bool)

(assert (=> b!2528572 (=> res!1068020 e!1600449)))

(assert (=> b!2528572 (= res!1068020 (not ((_ is ElementMatch!7525) (derivativeStep!2094 lt!900879 (head!5774 tl!4068)))))))

(assert (=> b!2528572 (= e!1600453 e!1600449)))

(declare-fun d!719524 () Bool)

(assert (=> d!719524 e!1600452))

(declare-fun c!403821 () Bool)

(assert (=> d!719524 (= c!403821 ((_ is EmptyExpr!7525) (derivativeStep!2094 lt!900879 (head!5774 tl!4068))))))

(assert (=> d!719524 (= lt!900988 e!1600451)))

(declare-fun c!403822 () Bool)

(assert (=> d!719524 (= c!403822 (isEmpty!16968 (tail!4051 tl!4068)))))

(assert (=> d!719524 (validRegex!3151 (derivativeStep!2094 lt!900879 (head!5774 tl!4068)))))

(assert (=> d!719524 (= (matchR!3512 (derivativeStep!2094 lt!900879 (head!5774 tl!4068)) (tail!4051 tl!4068)) lt!900988)))

(declare-fun b!2528561 () Bool)

(declare-fun res!1068018 () Bool)

(assert (=> b!2528561 (=> res!1068018 e!1600449)))

(assert (=> b!2528561 (= res!1068018 e!1600450)))

(declare-fun res!1068019 () Bool)

(assert (=> b!2528561 (=> (not res!1068019) (not e!1600450))))

(assert (=> b!2528561 (= res!1068019 lt!900988)))

(declare-fun b!2528573 () Bool)

(assert (=> b!2528573 (= e!1600449 e!1600448)))

(declare-fun res!1068023 () Bool)

(assert (=> b!2528573 (=> (not res!1068023) (not e!1600448))))

(assert (=> b!2528573 (= res!1068023 (not lt!900988))))

(declare-fun b!2528574 () Bool)

(declare-fun res!1068022 () Bool)

(assert (=> b!2528574 (=> (not res!1068022) (not e!1600450))))

(assert (=> b!2528574 (= res!1068022 (isEmpty!16968 (tail!4051 (tail!4051 tl!4068))))))

(assert (= (and d!719524 c!403822) b!2528566))

(assert (= (and d!719524 (not c!403822)) b!2528570))

(assert (= (and d!719524 c!403821) b!2528565))

(assert (= (and d!719524 (not c!403821)) b!2528563))

(assert (= (and b!2528563 c!403823) b!2528569))

(assert (= (and b!2528563 (not c!403823)) b!2528572))

(assert (= (and b!2528572 (not res!1068020)) b!2528561))

(assert (= (and b!2528561 res!1068019) b!2528564))

(assert (= (and b!2528564 res!1068021) b!2528574))

(assert (= (and b!2528574 res!1068022) b!2528567))

(assert (= (and b!2528561 (not res!1068018)) b!2528573))

(assert (= (and b!2528573 res!1068023) b!2528571))

(assert (= (and b!2528571 (not res!1068024)) b!2528568))

(assert (= (and b!2528568 (not res!1068017)) b!2528562))

(assert (= (or b!2528565 b!2528564 b!2528571) bm!158167))

(assert (=> b!2528567 m!2880581))

(declare-fun m!2881039 () Bool)

(assert (=> b!2528567 m!2881039))

(assert (=> bm!158167 m!2880581))

(assert (=> bm!158167 m!2880583))

(assert (=> b!2528566 m!2880613))

(declare-fun m!2881043 () Bool)

(assert (=> b!2528566 m!2881043))

(assert (=> b!2528574 m!2880581))

(declare-fun m!2881045 () Bool)

(assert (=> b!2528574 m!2881045))

(assert (=> b!2528574 m!2881045))

(declare-fun m!2881047 () Bool)

(assert (=> b!2528574 m!2881047))

(assert (=> b!2528568 m!2880581))

(assert (=> b!2528568 m!2881045))

(assert (=> b!2528568 m!2881045))

(assert (=> b!2528568 m!2881047))

(assert (=> b!2528562 m!2880581))

(assert (=> b!2528562 m!2881039))

(assert (=> b!2528570 m!2880581))

(assert (=> b!2528570 m!2881039))

(assert (=> b!2528570 m!2880613))

(assert (=> b!2528570 m!2881039))

(declare-fun m!2881049 () Bool)

(assert (=> b!2528570 m!2881049))

(assert (=> b!2528570 m!2880581))

(assert (=> b!2528570 m!2881045))

(assert (=> b!2528570 m!2881049))

(assert (=> b!2528570 m!2881045))

(declare-fun m!2881051 () Bool)

(assert (=> b!2528570 m!2881051))

(assert (=> d!719524 m!2880581))

(assert (=> d!719524 m!2880583))

(assert (=> d!719524 m!2880613))

(declare-fun m!2881053 () Bool)

(assert (=> d!719524 m!2881053))

(assert (=> b!2527979 d!719524))

(declare-fun b!2528589 () Bool)

(declare-fun e!1600463 () Regex!7525)

(declare-fun e!1600465 () Regex!7525)

(assert (=> b!2528589 (= e!1600463 e!1600465)))

(declare-fun c!403833 () Bool)

(assert (=> b!2528589 (= c!403833 ((_ is ElementMatch!7525) lt!900879))))

(declare-fun b!2528590 () Bool)

(declare-fun e!1600461 () Regex!7525)

(declare-fun call!158180 () Regex!7525)

(assert (=> b!2528590 (= e!1600461 (Union!7525 (Concat!12221 call!158180 (regTwo!15562 lt!900879)) EmptyLang!7525))))

(declare-fun b!2528591 () Bool)

(declare-fun e!1600462 () Regex!7525)

(declare-fun call!158177 () Regex!7525)

(assert (=> b!2528591 (= e!1600462 (Concat!12221 call!158177 lt!900879))))

(declare-fun b!2528592 () Bool)

(declare-fun e!1600464 () Regex!7525)

(assert (=> b!2528592 (= e!1600464 e!1600462)))

(declare-fun c!403832 () Bool)

(assert (=> b!2528592 (= c!403832 ((_ is Star!7525) lt!900879))))

(declare-fun b!2528593 () Bool)

(declare-fun call!158178 () Regex!7525)

(declare-fun call!158179 () Regex!7525)

(assert (=> b!2528593 (= e!1600464 (Union!7525 call!158178 call!158179))))

(declare-fun bm!158172 () Bool)

(assert (=> bm!158172 (= call!158180 call!158177)))

(declare-fun bm!158173 () Bool)

(assert (=> bm!158173 (= call!158177 call!158179)))

(declare-fun b!2528594 () Bool)

(assert (=> b!2528594 (= e!1600461 (Union!7525 (Concat!12221 call!158180 (regTwo!15562 lt!900879)) call!158178))))

(declare-fun c!403831 () Bool)

(declare-fun bm!158174 () Bool)

(assert (=> bm!158174 (= call!158179 (derivativeStep!2094 (ite c!403831 (regTwo!15563 lt!900879) (ite c!403832 (reg!7854 lt!900879) (regOne!15562 lt!900879))) (head!5774 tl!4068)))))

(declare-fun b!2528595 () Bool)

(assert (=> b!2528595 (= c!403831 ((_ is Union!7525) lt!900879))))

(assert (=> b!2528595 (= e!1600465 e!1600464)))

(declare-fun b!2528596 () Bool)

(assert (=> b!2528596 (= e!1600463 EmptyLang!7525)))

(declare-fun bm!158175 () Bool)

(assert (=> bm!158175 (= call!158178 (derivativeStep!2094 (ite c!403831 (regOne!15563 lt!900879) (regTwo!15562 lt!900879)) (head!5774 tl!4068)))))

(declare-fun b!2528597 () Bool)

(declare-fun c!403834 () Bool)

(assert (=> b!2528597 (= c!403834 (nullable!2442 (regOne!15562 lt!900879)))))

(assert (=> b!2528597 (= e!1600462 e!1600461)))

(declare-fun d!719534 () Bool)

(declare-fun lt!900991 () Regex!7525)

(assert (=> d!719534 (validRegex!3151 lt!900991)))

(assert (=> d!719534 (= lt!900991 e!1600463)))

(declare-fun c!403830 () Bool)

(assert (=> d!719534 (= c!403830 (or ((_ is EmptyExpr!7525) lt!900879) ((_ is EmptyLang!7525) lt!900879)))))

(assert (=> d!719534 (validRegex!3151 lt!900879)))

(assert (=> d!719534 (= (derivativeStep!2094 lt!900879 (head!5774 tl!4068)) lt!900991)))

(declare-fun b!2528598 () Bool)

(assert (=> b!2528598 (= e!1600465 (ite (= (head!5774 tl!4068) (c!403591 lt!900879)) EmptyExpr!7525 EmptyLang!7525))))

(assert (= (and d!719534 c!403830) b!2528596))

(assert (= (and d!719534 (not c!403830)) b!2528589))

(assert (= (and b!2528589 c!403833) b!2528598))

(assert (= (and b!2528589 (not c!403833)) b!2528595))

(assert (= (and b!2528595 c!403831) b!2528593))

(assert (= (and b!2528595 (not c!403831)) b!2528592))

(assert (= (and b!2528592 c!403832) b!2528591))

(assert (= (and b!2528592 (not c!403832)) b!2528597))

(assert (= (and b!2528597 c!403834) b!2528594))

(assert (= (and b!2528597 (not c!403834)) b!2528590))

(assert (= (or b!2528594 b!2528590) bm!158172))

(assert (= (or b!2528591 bm!158172) bm!158173))

(assert (= (or b!2528593 bm!158173) bm!158174))

(assert (= (or b!2528593 b!2528594) bm!158175))

(assert (=> bm!158174 m!2880575))

(declare-fun m!2881055 () Bool)

(assert (=> bm!158174 m!2881055))

(assert (=> bm!158175 m!2880575))

(declare-fun m!2881057 () Bool)

(assert (=> bm!158175 m!2881057))

(declare-fun m!2881059 () Bool)

(assert (=> b!2528597 m!2881059))

(declare-fun m!2881061 () Bool)

(assert (=> d!719534 m!2881061))

(assert (=> d!719534 m!2880617))

(assert (=> b!2527979 d!719534))

(assert (=> b!2527979 d!719502))

(assert (=> b!2527979 d!719488))

(declare-fun d!719538 () Bool)

(declare-fun lt!900992 () Regex!7525)

(assert (=> d!719538 (validRegex!3151 lt!900992)))

(declare-fun e!1600469 () Regex!7525)

(assert (=> d!719538 (= lt!900992 e!1600469)))

(declare-fun c!403835 () Bool)

(assert (=> d!719538 (= c!403835 ((_ is Cons!29490) (t!211289 tl!4068)))))

(assert (=> d!719538 (validRegex!3151 (derivativeStep!2094 EmptyLang!7525 (h!34910 tl!4068)))))

(assert (=> d!719538 (= (derivative!220 (derivativeStep!2094 EmptyLang!7525 (h!34910 tl!4068)) (t!211289 tl!4068)) lt!900992)))

(declare-fun b!2528602 () Bool)

(assert (=> b!2528602 (= e!1600469 (derivative!220 (derivativeStep!2094 (derivativeStep!2094 EmptyLang!7525 (h!34910 tl!4068)) (h!34910 (t!211289 tl!4068))) (t!211289 (t!211289 tl!4068))))))

(declare-fun b!2528603 () Bool)

(assert (=> b!2528603 (= e!1600469 (derivativeStep!2094 EmptyLang!7525 (h!34910 tl!4068)))))

(assert (= (and d!719538 c!403835) b!2528602))

(assert (= (and d!719538 (not c!403835)) b!2528603))

(declare-fun m!2881063 () Bool)

(assert (=> d!719538 m!2881063))

(assert (=> d!719538 m!2880721))

(declare-fun m!2881065 () Bool)

(assert (=> d!719538 m!2881065))

(assert (=> b!2528602 m!2880721))

(declare-fun m!2881067 () Bool)

(assert (=> b!2528602 m!2881067))

(assert (=> b!2528602 m!2881067))

(declare-fun m!2881069 () Bool)

(assert (=> b!2528602 m!2881069))

(assert (=> b!2528151 d!719538))

(declare-fun b!2528608 () Bool)

(declare-fun e!1600474 () Regex!7525)

(declare-fun e!1600476 () Regex!7525)

(assert (=> b!2528608 (= e!1600474 e!1600476)))

(declare-fun c!403841 () Bool)

(assert (=> b!2528608 (= c!403841 ((_ is ElementMatch!7525) EmptyLang!7525))))

(declare-fun b!2528609 () Bool)

(declare-fun e!1600472 () Regex!7525)

(declare-fun call!158184 () Regex!7525)

(assert (=> b!2528609 (= e!1600472 (Union!7525 (Concat!12221 call!158184 (regTwo!15562 EmptyLang!7525)) EmptyLang!7525))))

(declare-fun b!2528610 () Bool)

(declare-fun e!1600473 () Regex!7525)

(declare-fun call!158181 () Regex!7525)

(assert (=> b!2528610 (= e!1600473 (Concat!12221 call!158181 EmptyLang!7525))))

(declare-fun b!2528611 () Bool)

(declare-fun e!1600475 () Regex!7525)

(assert (=> b!2528611 (= e!1600475 e!1600473)))

(declare-fun c!403840 () Bool)

(assert (=> b!2528611 (= c!403840 ((_ is Star!7525) EmptyLang!7525))))

(declare-fun b!2528612 () Bool)

(declare-fun call!158182 () Regex!7525)

(declare-fun call!158183 () Regex!7525)

(assert (=> b!2528612 (= e!1600475 (Union!7525 call!158182 call!158183))))

(declare-fun bm!158176 () Bool)

(assert (=> bm!158176 (= call!158184 call!158181)))

(declare-fun bm!158177 () Bool)

(assert (=> bm!158177 (= call!158181 call!158183)))

(declare-fun b!2528613 () Bool)

(assert (=> b!2528613 (= e!1600472 (Union!7525 (Concat!12221 call!158184 (regTwo!15562 EmptyLang!7525)) call!158182))))

(declare-fun bm!158178 () Bool)

(declare-fun c!403839 () Bool)

(assert (=> bm!158178 (= call!158183 (derivativeStep!2094 (ite c!403839 (regTwo!15563 EmptyLang!7525) (ite c!403840 (reg!7854 EmptyLang!7525) (regOne!15562 EmptyLang!7525))) (h!34910 tl!4068)))))

(declare-fun b!2528614 () Bool)

(assert (=> b!2528614 (= c!403839 ((_ is Union!7525) EmptyLang!7525))))

(assert (=> b!2528614 (= e!1600476 e!1600475)))

(declare-fun b!2528615 () Bool)

(assert (=> b!2528615 (= e!1600474 EmptyLang!7525)))

(declare-fun bm!158179 () Bool)

(assert (=> bm!158179 (= call!158182 (derivativeStep!2094 (ite c!403839 (regOne!15563 EmptyLang!7525) (regTwo!15562 EmptyLang!7525)) (h!34910 tl!4068)))))

(declare-fun b!2528616 () Bool)

(declare-fun c!403842 () Bool)

(assert (=> b!2528616 (= c!403842 (nullable!2442 (regOne!15562 EmptyLang!7525)))))

(assert (=> b!2528616 (= e!1600473 e!1600472)))

(declare-fun d!719540 () Bool)

(declare-fun lt!900993 () Regex!7525)

(assert (=> d!719540 (validRegex!3151 lt!900993)))

(assert (=> d!719540 (= lt!900993 e!1600474)))

(declare-fun c!403838 () Bool)

(assert (=> d!719540 (= c!403838 (or ((_ is EmptyExpr!7525) EmptyLang!7525) ((_ is EmptyLang!7525) EmptyLang!7525)))))

(assert (=> d!719540 (validRegex!3151 EmptyLang!7525)))

(assert (=> d!719540 (= (derivativeStep!2094 EmptyLang!7525 (h!34910 tl!4068)) lt!900993)))

(declare-fun b!2528617 () Bool)

(assert (=> b!2528617 (= e!1600476 (ite (= (h!34910 tl!4068) (c!403591 EmptyLang!7525)) EmptyExpr!7525 EmptyLang!7525))))

(assert (= (and d!719540 c!403838) b!2528615))

(assert (= (and d!719540 (not c!403838)) b!2528608))

(assert (= (and b!2528608 c!403841) b!2528617))

(assert (= (and b!2528608 (not c!403841)) b!2528614))

(assert (= (and b!2528614 c!403839) b!2528612))

(assert (= (and b!2528614 (not c!403839)) b!2528611))

(assert (= (and b!2528611 c!403840) b!2528610))

(assert (= (and b!2528611 (not c!403840)) b!2528616))

(assert (= (and b!2528616 c!403842) b!2528613))

(assert (= (and b!2528616 (not c!403842)) b!2528609))

(assert (= (or b!2528613 b!2528609) bm!158176))

(assert (= (or b!2528610 bm!158176) bm!158177))

(assert (= (or b!2528612 bm!158177) bm!158178))

(assert (= (or b!2528612 b!2528613) bm!158179))

(declare-fun m!2881077 () Bool)

(assert (=> bm!158178 m!2881077))

(declare-fun m!2881083 () Bool)

(assert (=> bm!158179 m!2881083))

(declare-fun m!2881085 () Bool)

(assert (=> b!2528616 m!2881085))

(declare-fun m!2881087 () Bool)

(assert (=> d!719540 m!2881087))

(assert (=> d!719540 m!2880589))

(assert (=> b!2528151 d!719540))

(declare-fun d!719548 () Bool)

(assert (=> d!719548 (= (isEmpty!16969 lt!900877) (not ((_ is Some!5893) lt!900877)))))

(assert (=> d!719278 d!719548))

(declare-fun b!2528737 () Bool)

(declare-fun e!1600553 () Bool)

(declare-fun e!1600549 () Bool)

(assert (=> b!2528737 (= e!1600553 e!1600549)))

(declare-fun c!403878 () Bool)

(assert (=> b!2528737 (= c!403878 ((_ is Union!7525) (derivative!220 (derivativeStep!2094 r!27340 c!14016) tl!4068)))))

(declare-fun call!158213 () Bool)

(declare-fun bm!158208 () Bool)

(assert (=> bm!158208 (= call!158213 (nullable!2442 (ite c!403878 (regTwo!15563 (derivative!220 (derivativeStep!2094 r!27340 c!14016) tl!4068)) (regOne!15562 (derivative!220 (derivativeStep!2094 r!27340 c!14016) tl!4068)))))))

(declare-fun d!719550 () Bool)

(declare-fun res!1068080 () Bool)

(declare-fun e!1600552 () Bool)

(assert (=> d!719550 (=> res!1068080 e!1600552)))

(assert (=> d!719550 (= res!1068080 ((_ is EmptyExpr!7525) (derivative!220 (derivativeStep!2094 r!27340 c!14016) tl!4068)))))

(assert (=> d!719550 (= (nullableFct!683 (derivative!220 (derivativeStep!2094 r!27340 c!14016) tl!4068)) e!1600552)))

(declare-fun bm!158209 () Bool)

(declare-fun call!158214 () Bool)

(assert (=> bm!158209 (= call!158214 (nullable!2442 (ite c!403878 (regOne!15563 (derivative!220 (derivativeStep!2094 r!27340 c!14016) tl!4068)) (regTwo!15562 (derivative!220 (derivativeStep!2094 r!27340 c!14016) tl!4068)))))))

(declare-fun b!2528738 () Bool)

(declare-fun e!1600550 () Bool)

(assert (=> b!2528738 (= e!1600552 e!1600550)))

(declare-fun res!1068079 () Bool)

(assert (=> b!2528738 (=> (not res!1068079) (not e!1600550))))

(assert (=> b!2528738 (= res!1068079 (and (not ((_ is EmptyLang!7525) (derivative!220 (derivativeStep!2094 r!27340 c!14016) tl!4068))) (not ((_ is ElementMatch!7525) (derivative!220 (derivativeStep!2094 r!27340 c!14016) tl!4068)))))))

(declare-fun b!2528739 () Bool)

(assert (=> b!2528739 (= e!1600550 e!1600553)))

(declare-fun res!1068081 () Bool)

(assert (=> b!2528739 (=> res!1068081 e!1600553)))

(assert (=> b!2528739 (= res!1068081 ((_ is Star!7525) (derivative!220 (derivativeStep!2094 r!27340 c!14016) tl!4068)))))

(declare-fun b!2528740 () Bool)

(declare-fun e!1600554 () Bool)

(assert (=> b!2528740 (= e!1600549 e!1600554)))

(declare-fun res!1068082 () Bool)

(assert (=> b!2528740 (= res!1068082 call!158214)))

(assert (=> b!2528740 (=> res!1068082 e!1600554)))

(declare-fun b!2528741 () Bool)

(declare-fun e!1600551 () Bool)

(assert (=> b!2528741 (= e!1600549 e!1600551)))

(declare-fun res!1068083 () Bool)

(assert (=> b!2528741 (= res!1068083 call!158213)))

(assert (=> b!2528741 (=> (not res!1068083) (not e!1600551))))

(declare-fun b!2528742 () Bool)

(assert (=> b!2528742 (= e!1600551 call!158214)))

(declare-fun b!2528743 () Bool)

(assert (=> b!2528743 (= e!1600554 call!158213)))

(assert (= (and d!719550 (not res!1068080)) b!2528738))

(assert (= (and b!2528738 res!1068079) b!2528739))

(assert (= (and b!2528739 (not res!1068081)) b!2528737))

(assert (= (and b!2528737 c!403878) b!2528740))

(assert (= (and b!2528737 (not c!403878)) b!2528741))

(assert (= (and b!2528740 (not res!1068082)) b!2528743))

(assert (= (and b!2528741 res!1068083) b!2528742))

(assert (= (or b!2528743 b!2528741) bm!158208))

(assert (= (or b!2528740 b!2528742) bm!158209))

(declare-fun m!2881189 () Bool)

(assert (=> bm!158208 m!2881189))

(declare-fun m!2881191 () Bool)

(assert (=> bm!158209 m!2881191))

(assert (=> d!719350 d!719550))

(declare-fun d!719574 () Bool)

(assert (=> d!719574 (= (isEmpty!16968 (Cons!29490 c!14016 (_1!17316 lt!900878))) ((_ is Nil!29490) (Cons!29490 c!14016 (_1!17316 lt!900878))))))

(assert (=> d!719310 d!719574))

(declare-fun b!2528752 () Bool)

(declare-fun e!1600560 () Bool)

(declare-fun e!1600559 () Bool)

(assert (=> b!2528752 (= e!1600560 e!1600559)))

(declare-fun c!403881 () Bool)

(assert (=> b!2528752 (= c!403881 ((_ is Union!7525) (regOne!15562 r!27340)))))

(declare-fun bm!158210 () Bool)

(declare-fun call!158217 () Bool)

(assert (=> bm!158210 (= call!158217 (validRegex!3151 (ite c!403881 (regOne!15563 (regOne!15562 r!27340)) (regTwo!15562 (regOne!15562 r!27340)))))))

(declare-fun b!2528753 () Bool)

(declare-fun e!1600564 () Bool)

(assert (=> b!2528753 (= e!1600564 e!1600560)))

(declare-fun c!403882 () Bool)

(assert (=> b!2528753 (= c!403882 ((_ is Star!7525) (regOne!15562 r!27340)))))

(declare-fun b!2528754 () Bool)

(declare-fun e!1600562 () Bool)

(declare-fun e!1600565 () Bool)

(assert (=> b!2528754 (= e!1600562 e!1600565)))

(declare-fun res!1068091 () Bool)

(assert (=> b!2528754 (=> (not res!1068091) (not e!1600565))))

(declare-fun call!158216 () Bool)

(assert (=> b!2528754 (= res!1068091 call!158216)))

(declare-fun d!719576 () Bool)

(declare-fun res!1068089 () Bool)

(assert (=> d!719576 (=> res!1068089 e!1600564)))

(assert (=> d!719576 (= res!1068089 ((_ is ElementMatch!7525) (regOne!15562 r!27340)))))

(assert (=> d!719576 (= (validRegex!3151 (regOne!15562 r!27340)) e!1600564)))

(declare-fun b!2528755 () Bool)

(declare-fun e!1600561 () Bool)

(declare-fun call!158215 () Bool)

(assert (=> b!2528755 (= e!1600561 call!158215)))

(declare-fun bm!158211 () Bool)

(assert (=> bm!158211 (= call!158215 (validRegex!3151 (ite c!403882 (reg!7854 (regOne!15562 r!27340)) (ite c!403881 (regTwo!15563 (regOne!15562 r!27340)) (regOne!15562 (regOne!15562 r!27340))))))))

(declare-fun b!2528756 () Bool)

(declare-fun res!1068090 () Bool)

(declare-fun e!1600563 () Bool)

(assert (=> b!2528756 (=> (not res!1068090) (not e!1600563))))

(assert (=> b!2528756 (= res!1068090 call!158217)))

(assert (=> b!2528756 (= e!1600559 e!1600563)))

(declare-fun b!2528757 () Bool)

(assert (=> b!2528757 (= e!1600563 call!158216)))

(declare-fun b!2528758 () Bool)

(declare-fun res!1068088 () Bool)

(assert (=> b!2528758 (=> res!1068088 e!1600562)))

(assert (=> b!2528758 (= res!1068088 (not ((_ is Concat!12221) (regOne!15562 r!27340))))))

(assert (=> b!2528758 (= e!1600559 e!1600562)))

(declare-fun b!2528759 () Bool)

(assert (=> b!2528759 (= e!1600565 call!158217)))

(declare-fun bm!158212 () Bool)

(assert (=> bm!158212 (= call!158216 call!158215)))

(declare-fun b!2528760 () Bool)

(assert (=> b!2528760 (= e!1600560 e!1600561)))

(declare-fun res!1068092 () Bool)

(assert (=> b!2528760 (= res!1068092 (not (nullable!2442 (reg!7854 (regOne!15562 r!27340)))))))

(assert (=> b!2528760 (=> (not res!1068092) (not e!1600561))))

(assert (= (and d!719576 (not res!1068089)) b!2528753))

(assert (= (and b!2528753 c!403882) b!2528760))

(assert (= (and b!2528753 (not c!403882)) b!2528752))

(assert (= (and b!2528760 res!1068092) b!2528755))

(assert (= (and b!2528752 c!403881) b!2528756))

(assert (= (and b!2528752 (not c!403881)) b!2528758))

(assert (= (and b!2528756 res!1068090) b!2528757))

(assert (= (and b!2528758 (not res!1068088)) b!2528754))

(assert (= (and b!2528754 res!1068091) b!2528759))

(assert (= (or b!2528756 b!2528759) bm!158210))

(assert (= (or b!2528757 b!2528754) bm!158212))

(assert (= (or b!2528755 bm!158212) bm!158211))

(declare-fun m!2881207 () Bool)

(assert (=> bm!158210 m!2881207))

(declare-fun m!2881209 () Bool)

(assert (=> bm!158211 m!2881209))

(declare-fun m!2881211 () Bool)

(assert (=> b!2528760 m!2881211))

(assert (=> d!719310 d!719576))

(assert (=> b!2527983 d!719486))

(assert (=> b!2527983 d!719488))

(assert (=> bm!158027 d!719476))

(declare-fun d!719580 () Bool)

(assert (=> d!719580 (= (nullable!2442 (regOne!15562 (regOne!15562 r!27340))) (nullableFct!683 (regOne!15562 (regOne!15562 r!27340))))))

(declare-fun bs!469158 () Bool)

(assert (= bs!469158 d!719580))

(declare-fun m!2881213 () Bool)

(assert (=> bs!469158 m!2881213))

(assert (=> b!2528048 d!719580))

(assert (=> b!2528143 d!719502))

(assert (=> d!719308 d!719500))

(declare-fun d!719582 () Bool)

(assert (=> d!719582 (= (validRegex!3151 EmptyLang!7525) true)))

(assert (=> d!719308 d!719582))

(assert (=> b!2527735 d!719514))

(declare-fun b!2528762 () Bool)

(declare-fun e!1600566 () Bool)

(assert (=> b!2528762 (= e!1600566 (not (= (head!5774 tl!4068) (c!403591 (regTwo!15562 r!27340)))))))

(declare-fun b!2528763 () Bool)

(declare-fun e!1600571 () Bool)

(declare-fun e!1600572 () Bool)

(assert (=> b!2528763 (= e!1600571 e!1600572)))

(declare-fun c!403885 () Bool)

(assert (=> b!2528763 (= c!403885 ((_ is EmptyLang!7525) (regTwo!15562 r!27340)))))

(declare-fun bm!158213 () Bool)

(declare-fun call!158218 () Bool)

(assert (=> bm!158213 (= call!158218 (isEmpty!16968 tl!4068))))

(declare-fun b!2528764 () Bool)

(declare-fun res!1068097 () Bool)

(declare-fun e!1600569 () Bool)

(assert (=> b!2528764 (=> (not res!1068097) (not e!1600569))))

(assert (=> b!2528764 (= res!1068097 (not call!158218))))

(declare-fun b!2528765 () Bool)

(declare-fun lt!901004 () Bool)

(assert (=> b!2528765 (= e!1600571 (= lt!901004 call!158218))))

(declare-fun b!2528766 () Bool)

(declare-fun e!1600570 () Bool)

(assert (=> b!2528766 (= e!1600570 (nullable!2442 (regTwo!15562 r!27340)))))

(declare-fun b!2528767 () Bool)

(assert (=> b!2528767 (= e!1600569 (= (head!5774 tl!4068) (c!403591 (regTwo!15562 r!27340))))))

(declare-fun b!2528768 () Bool)

(declare-fun res!1068093 () Bool)

(assert (=> b!2528768 (=> res!1068093 e!1600566)))

(assert (=> b!2528768 (= res!1068093 (not (isEmpty!16968 (tail!4051 tl!4068))))))

(declare-fun b!2528769 () Bool)

(assert (=> b!2528769 (= e!1600572 (not lt!901004))))

(declare-fun b!2528770 () Bool)

(assert (=> b!2528770 (= e!1600570 (matchR!3512 (derivativeStep!2094 (regTwo!15562 r!27340) (head!5774 tl!4068)) (tail!4051 tl!4068)))))

(declare-fun b!2528771 () Bool)

(declare-fun e!1600567 () Bool)

(assert (=> b!2528771 (= e!1600567 e!1600566)))

(declare-fun res!1068100 () Bool)

(assert (=> b!2528771 (=> res!1068100 e!1600566)))

(assert (=> b!2528771 (= res!1068100 call!158218)))

(declare-fun b!2528772 () Bool)

(declare-fun res!1068096 () Bool)

(declare-fun e!1600568 () Bool)

(assert (=> b!2528772 (=> res!1068096 e!1600568)))

(assert (=> b!2528772 (= res!1068096 (not ((_ is ElementMatch!7525) (regTwo!15562 r!27340))))))

(assert (=> b!2528772 (= e!1600572 e!1600568)))

(declare-fun d!719584 () Bool)

(assert (=> d!719584 e!1600571))

(declare-fun c!403883 () Bool)

(assert (=> d!719584 (= c!403883 ((_ is EmptyExpr!7525) (regTwo!15562 r!27340)))))

(assert (=> d!719584 (= lt!901004 e!1600570)))

(declare-fun c!403884 () Bool)

(assert (=> d!719584 (= c!403884 (isEmpty!16968 tl!4068))))

(assert (=> d!719584 (validRegex!3151 (regTwo!15562 r!27340))))

(assert (=> d!719584 (= (matchR!3512 (regTwo!15562 r!27340) tl!4068) lt!901004)))

(declare-fun b!2528761 () Bool)

(declare-fun res!1068094 () Bool)

(assert (=> b!2528761 (=> res!1068094 e!1600568)))

(assert (=> b!2528761 (= res!1068094 e!1600569)))

(declare-fun res!1068095 () Bool)

(assert (=> b!2528761 (=> (not res!1068095) (not e!1600569))))

(assert (=> b!2528761 (= res!1068095 lt!901004)))

(declare-fun b!2528773 () Bool)

(assert (=> b!2528773 (= e!1600568 e!1600567)))

(declare-fun res!1068099 () Bool)

(assert (=> b!2528773 (=> (not res!1068099) (not e!1600567))))

(assert (=> b!2528773 (= res!1068099 (not lt!901004))))

(declare-fun b!2528774 () Bool)

(declare-fun res!1068098 () Bool)

(assert (=> b!2528774 (=> (not res!1068098) (not e!1600569))))

(assert (=> b!2528774 (= res!1068098 (isEmpty!16968 (tail!4051 tl!4068)))))

(assert (= (and d!719584 c!403884) b!2528766))

(assert (= (and d!719584 (not c!403884)) b!2528770))

(assert (= (and d!719584 c!403883) b!2528765))

(assert (= (and d!719584 (not c!403883)) b!2528763))

(assert (= (and b!2528763 c!403885) b!2528769))

(assert (= (and b!2528763 (not c!403885)) b!2528772))

(assert (= (and b!2528772 (not res!1068096)) b!2528761))

(assert (= (and b!2528761 res!1068095) b!2528764))

(assert (= (and b!2528764 res!1068097) b!2528774))

(assert (= (and b!2528774 res!1068098) b!2528767))

(assert (= (and b!2528761 (not res!1068094)) b!2528773))

(assert (= (and b!2528773 res!1068099) b!2528771))

(assert (= (and b!2528771 (not res!1068100)) b!2528768))

(assert (= (and b!2528768 (not res!1068093)) b!2528762))

(assert (= (or b!2528765 b!2528764 b!2528771) bm!158213))

(assert (=> b!2528767 m!2880575))

(assert (=> bm!158213 m!2880577))

(assert (=> b!2528766 m!2880563))

(assert (=> b!2528774 m!2880581))

(assert (=> b!2528774 m!2880581))

(assert (=> b!2528774 m!2880583))

(assert (=> b!2528768 m!2880581))

(assert (=> b!2528768 m!2880581))

(assert (=> b!2528768 m!2880583))

(assert (=> b!2528762 m!2880575))

(assert (=> b!2528770 m!2880575))

(assert (=> b!2528770 m!2880575))

(declare-fun m!2881219 () Bool)

(assert (=> b!2528770 m!2881219))

(assert (=> b!2528770 m!2880581))

(assert (=> b!2528770 m!2881219))

(assert (=> b!2528770 m!2880581))

(declare-fun m!2881221 () Bool)

(assert (=> b!2528770 m!2881221))

(assert (=> d!719584 m!2880577))

(assert (=> d!719584 m!2880573))

(assert (=> b!2527828 d!719584))

(declare-fun b!2528784 () Bool)

(declare-fun e!1600580 () Regex!7525)

(declare-fun e!1600582 () Regex!7525)

(assert (=> b!2528784 (= e!1600580 e!1600582)))

(declare-fun c!403891 () Bool)

(assert (=> b!2528784 (= c!403891 ((_ is ElementMatch!7525) (ite c!403722 (regTwo!15563 r!27340) (ite c!403723 (reg!7854 r!27340) (regOne!15562 r!27340)))))))

(declare-fun call!158222 () Regex!7525)

(declare-fun e!1600578 () Regex!7525)

(declare-fun b!2528785 () Bool)

(assert (=> b!2528785 (= e!1600578 (Union!7525 (Concat!12221 call!158222 (regTwo!15562 (ite c!403722 (regTwo!15563 r!27340) (ite c!403723 (reg!7854 r!27340) (regOne!15562 r!27340))))) EmptyLang!7525))))

(declare-fun b!2528786 () Bool)

(declare-fun e!1600579 () Regex!7525)

(declare-fun call!158219 () Regex!7525)

(assert (=> b!2528786 (= e!1600579 (Concat!12221 call!158219 (ite c!403722 (regTwo!15563 r!27340) (ite c!403723 (reg!7854 r!27340) (regOne!15562 r!27340)))))))

(declare-fun b!2528787 () Bool)

(declare-fun e!1600581 () Regex!7525)

(assert (=> b!2528787 (= e!1600581 e!1600579)))

(declare-fun c!403890 () Bool)

(assert (=> b!2528787 (= c!403890 ((_ is Star!7525) (ite c!403722 (regTwo!15563 r!27340) (ite c!403723 (reg!7854 r!27340) (regOne!15562 r!27340)))))))

(declare-fun b!2528788 () Bool)

(declare-fun call!158220 () Regex!7525)

(declare-fun call!158221 () Regex!7525)

(assert (=> b!2528788 (= e!1600581 (Union!7525 call!158220 call!158221))))

(declare-fun bm!158214 () Bool)

(assert (=> bm!158214 (= call!158222 call!158219)))

(declare-fun bm!158215 () Bool)

(assert (=> bm!158215 (= call!158219 call!158221)))

(declare-fun b!2528789 () Bool)

(assert (=> b!2528789 (= e!1600578 (Union!7525 (Concat!12221 call!158222 (regTwo!15562 (ite c!403722 (regTwo!15563 r!27340) (ite c!403723 (reg!7854 r!27340) (regOne!15562 r!27340))))) call!158220))))

(declare-fun c!403889 () Bool)

(declare-fun bm!158216 () Bool)

(assert (=> bm!158216 (= call!158221 (derivativeStep!2094 (ite c!403889 (regTwo!15563 (ite c!403722 (regTwo!15563 r!27340) (ite c!403723 (reg!7854 r!27340) (regOne!15562 r!27340)))) (ite c!403890 (reg!7854 (ite c!403722 (regTwo!15563 r!27340) (ite c!403723 (reg!7854 r!27340) (regOne!15562 r!27340)))) (regOne!15562 (ite c!403722 (regTwo!15563 r!27340) (ite c!403723 (reg!7854 r!27340) (regOne!15562 r!27340)))))) c!14016))))

(declare-fun b!2528790 () Bool)

(assert (=> b!2528790 (= c!403889 ((_ is Union!7525) (ite c!403722 (regTwo!15563 r!27340) (ite c!403723 (reg!7854 r!27340) (regOne!15562 r!27340)))))))

(assert (=> b!2528790 (= e!1600582 e!1600581)))

(declare-fun b!2528791 () Bool)

(assert (=> b!2528791 (= e!1600580 EmptyLang!7525)))

(declare-fun bm!158217 () Bool)

(assert (=> bm!158217 (= call!158220 (derivativeStep!2094 (ite c!403889 (regOne!15563 (ite c!403722 (regTwo!15563 r!27340) (ite c!403723 (reg!7854 r!27340) (regOne!15562 r!27340)))) (regTwo!15562 (ite c!403722 (regTwo!15563 r!27340) (ite c!403723 (reg!7854 r!27340) (regOne!15562 r!27340))))) c!14016))))

(declare-fun c!403892 () Bool)

(declare-fun b!2528792 () Bool)

(assert (=> b!2528792 (= c!403892 (nullable!2442 (regOne!15562 (ite c!403722 (regTwo!15563 r!27340) (ite c!403723 (reg!7854 r!27340) (regOne!15562 r!27340))))))))

(assert (=> b!2528792 (= e!1600579 e!1600578)))

(declare-fun d!719588 () Bool)

(declare-fun lt!901009 () Regex!7525)

(assert (=> d!719588 (validRegex!3151 lt!901009)))

(assert (=> d!719588 (= lt!901009 e!1600580)))

(declare-fun c!403888 () Bool)

(assert (=> d!719588 (= c!403888 (or ((_ is EmptyExpr!7525) (ite c!403722 (regTwo!15563 r!27340) (ite c!403723 (reg!7854 r!27340) (regOne!15562 r!27340)))) ((_ is EmptyLang!7525) (ite c!403722 (regTwo!15563 r!27340) (ite c!403723 (reg!7854 r!27340) (regOne!15562 r!27340))))))))

(assert (=> d!719588 (validRegex!3151 (ite c!403722 (regTwo!15563 r!27340) (ite c!403723 (reg!7854 r!27340) (regOne!15562 r!27340))))))

(assert (=> d!719588 (= (derivativeStep!2094 (ite c!403722 (regTwo!15563 r!27340) (ite c!403723 (reg!7854 r!27340) (regOne!15562 r!27340))) c!14016) lt!901009)))

(declare-fun b!2528793 () Bool)

(assert (=> b!2528793 (= e!1600582 (ite (= c!14016 (c!403591 (ite c!403722 (regTwo!15563 r!27340) (ite c!403723 (reg!7854 r!27340) (regOne!15562 r!27340))))) EmptyExpr!7525 EmptyLang!7525))))

(assert (= (and d!719588 c!403888) b!2528791))

(assert (= (and d!719588 (not c!403888)) b!2528784))

(assert (= (and b!2528784 c!403891) b!2528793))

(assert (= (and b!2528784 (not c!403891)) b!2528790))

(assert (= (and b!2528790 c!403889) b!2528788))

(assert (= (and b!2528790 (not c!403889)) b!2528787))

(assert (= (and b!2528787 c!403890) b!2528786))

(assert (= (and b!2528787 (not c!403890)) b!2528792))

(assert (= (and b!2528792 c!403892) b!2528789))

(assert (= (and b!2528792 (not c!403892)) b!2528785))

(assert (= (or b!2528789 b!2528785) bm!158214))

(assert (= (or b!2528786 bm!158214) bm!158215))

(assert (= (or b!2528788 bm!158215) bm!158216))

(assert (= (or b!2528788 b!2528789) bm!158217))

(declare-fun m!2881245 () Bool)

(assert (=> bm!158216 m!2881245))

(declare-fun m!2881247 () Bool)

(assert (=> bm!158217 m!2881247))

(declare-fun m!2881249 () Bool)

(assert (=> b!2528792 m!2881249))

(declare-fun m!2881251 () Bool)

(assert (=> d!719588 m!2881251))

(declare-fun m!2881253 () Bool)

(assert (=> d!719588 m!2881253))

(assert (=> bm!158083 d!719588))

(declare-fun b!2528808 () Bool)

(declare-fun e!1600591 () Bool)

(declare-fun e!1600590 () Bool)

(assert (=> b!2528808 (= e!1600591 e!1600590)))

(declare-fun c!403896 () Bool)

(assert (=> b!2528808 (= c!403896 ((_ is Union!7525) lt!900942))))

(declare-fun bm!158219 () Bool)

(declare-fun call!158226 () Bool)

(assert (=> bm!158219 (= call!158226 (validRegex!3151 (ite c!403896 (regOne!15563 lt!900942) (regTwo!15562 lt!900942))))))

(declare-fun b!2528809 () Bool)

(declare-fun e!1600595 () Bool)

(assert (=> b!2528809 (= e!1600595 e!1600591)))

(declare-fun c!403897 () Bool)

(assert (=> b!2528809 (= c!403897 ((_ is Star!7525) lt!900942))))

(declare-fun b!2528810 () Bool)

(declare-fun e!1600593 () Bool)

(declare-fun e!1600596 () Bool)

(assert (=> b!2528810 (= e!1600593 e!1600596)))

(declare-fun res!1068117 () Bool)

(assert (=> b!2528810 (=> (not res!1068117) (not e!1600596))))

(declare-fun call!158225 () Bool)

(assert (=> b!2528810 (= res!1068117 call!158225)))

(declare-fun d!719592 () Bool)

(declare-fun res!1068115 () Bool)

(assert (=> d!719592 (=> res!1068115 e!1600595)))

(assert (=> d!719592 (= res!1068115 ((_ is ElementMatch!7525) lt!900942))))

(assert (=> d!719592 (= (validRegex!3151 lt!900942) e!1600595)))

(declare-fun b!2528811 () Bool)

(declare-fun e!1600592 () Bool)

(declare-fun call!158224 () Bool)

(assert (=> b!2528811 (= e!1600592 call!158224)))

(declare-fun bm!158220 () Bool)

(assert (=> bm!158220 (= call!158224 (validRegex!3151 (ite c!403897 (reg!7854 lt!900942) (ite c!403896 (regTwo!15563 lt!900942) (regOne!15562 lt!900942)))))))

(declare-fun b!2528812 () Bool)

(declare-fun res!1068116 () Bool)

(declare-fun e!1600594 () Bool)

(assert (=> b!2528812 (=> (not res!1068116) (not e!1600594))))

(assert (=> b!2528812 (= res!1068116 call!158226)))

(assert (=> b!2528812 (= e!1600590 e!1600594)))

(declare-fun b!2528813 () Bool)

(assert (=> b!2528813 (= e!1600594 call!158225)))

(declare-fun b!2528814 () Bool)

(declare-fun res!1068114 () Bool)

(assert (=> b!2528814 (=> res!1068114 e!1600593)))

(assert (=> b!2528814 (= res!1068114 (not ((_ is Concat!12221) lt!900942)))))

(assert (=> b!2528814 (= e!1600590 e!1600593)))

(declare-fun b!2528815 () Bool)

(assert (=> b!2528815 (= e!1600596 call!158226)))

(declare-fun bm!158221 () Bool)

(assert (=> bm!158221 (= call!158225 call!158224)))

(declare-fun b!2528816 () Bool)

(assert (=> b!2528816 (= e!1600591 e!1600592)))

(declare-fun res!1068118 () Bool)

(assert (=> b!2528816 (= res!1068118 (not (nullable!2442 (reg!7854 lt!900942))))))

(assert (=> b!2528816 (=> (not res!1068118) (not e!1600592))))

(assert (= (and d!719592 (not res!1068115)) b!2528809))

(assert (= (and b!2528809 c!403897) b!2528816))

(assert (= (and b!2528809 (not c!403897)) b!2528808))

(assert (= (and b!2528816 res!1068118) b!2528811))

(assert (= (and b!2528808 c!403896) b!2528812))

(assert (= (and b!2528808 (not c!403896)) b!2528814))

(assert (= (and b!2528812 res!1068116) b!2528813))

(assert (= (and b!2528814 (not res!1068114)) b!2528810))

(assert (= (and b!2528810 res!1068117) b!2528815))

(assert (= (or b!2528812 b!2528815) bm!158219))

(assert (= (or b!2528813 b!2528810) bm!158221))

(assert (= (or b!2528811 bm!158221) bm!158220))

(declare-fun m!2881269 () Bool)

(assert (=> bm!158219 m!2881269))

(declare-fun m!2881271 () Bool)

(assert (=> bm!158220 m!2881271))

(declare-fun m!2881273 () Bool)

(assert (=> b!2528816 m!2881273))

(assert (=> d!719316 d!719592))

(assert (=> d!719316 d!719576))

(declare-fun d!719596 () Bool)

(assert (=> d!719596 (= (nullable!2442 (reg!7854 r!27340)) (nullableFct!683 (reg!7854 r!27340)))))

(declare-fun bs!469160 () Bool)

(assert (= bs!469160 d!719596))

(declare-fun m!2881275 () Bool)

(assert (=> bs!469160 m!2881275))

(assert (=> b!2528193 d!719596))

(declare-fun d!719598 () Bool)

(assert (=> d!719598 (= (isEmpty!16968 Nil!29490) true)))

(assert (=> d!719340 d!719598))

(declare-fun b!2528837 () Bool)

(declare-fun e!1600608 () Bool)

(declare-fun e!1600607 () Bool)

(assert (=> b!2528837 (= e!1600608 e!1600607)))

(declare-fun c!403908 () Bool)

(assert (=> b!2528837 (= c!403908 ((_ is Union!7525) (derivative!220 lt!900874 tl!4068)))))

(declare-fun call!158237 () Bool)

(declare-fun bm!158230 () Bool)

(assert (=> bm!158230 (= call!158237 (validRegex!3151 (ite c!403908 (regOne!15563 (derivative!220 lt!900874 tl!4068)) (regTwo!15562 (derivative!220 lt!900874 tl!4068)))))))

(declare-fun b!2528838 () Bool)

(declare-fun e!1600612 () Bool)

(assert (=> b!2528838 (= e!1600612 e!1600608)))

(declare-fun c!403909 () Bool)

(assert (=> b!2528838 (= c!403909 ((_ is Star!7525) (derivative!220 lt!900874 tl!4068)))))

(declare-fun b!2528839 () Bool)

(declare-fun e!1600610 () Bool)

(declare-fun e!1600613 () Bool)

(assert (=> b!2528839 (= e!1600610 e!1600613)))

(declare-fun res!1068122 () Bool)

(assert (=> b!2528839 (=> (not res!1068122) (not e!1600613))))

(declare-fun call!158236 () Bool)

(assert (=> b!2528839 (= res!1068122 call!158236)))

(declare-fun d!719602 () Bool)

(declare-fun res!1068120 () Bool)

(assert (=> d!719602 (=> res!1068120 e!1600612)))

(assert (=> d!719602 (= res!1068120 ((_ is ElementMatch!7525) (derivative!220 lt!900874 tl!4068)))))

(assert (=> d!719602 (= (validRegex!3151 (derivative!220 lt!900874 tl!4068)) e!1600612)))

(declare-fun b!2528840 () Bool)

(declare-fun e!1600609 () Bool)

(declare-fun call!158235 () Bool)

(assert (=> b!2528840 (= e!1600609 call!158235)))

(declare-fun bm!158231 () Bool)

(assert (=> bm!158231 (= call!158235 (validRegex!3151 (ite c!403909 (reg!7854 (derivative!220 lt!900874 tl!4068)) (ite c!403908 (regTwo!15563 (derivative!220 lt!900874 tl!4068)) (regOne!15562 (derivative!220 lt!900874 tl!4068))))))))

(declare-fun b!2528841 () Bool)

(declare-fun res!1068121 () Bool)

(declare-fun e!1600611 () Bool)

(assert (=> b!2528841 (=> (not res!1068121) (not e!1600611))))

(assert (=> b!2528841 (= res!1068121 call!158237)))

(assert (=> b!2528841 (= e!1600607 e!1600611)))

(declare-fun b!2528842 () Bool)

(assert (=> b!2528842 (= e!1600611 call!158236)))

(declare-fun b!2528843 () Bool)

(declare-fun res!1068119 () Bool)

(assert (=> b!2528843 (=> res!1068119 e!1600610)))

(assert (=> b!2528843 (= res!1068119 (not ((_ is Concat!12221) (derivative!220 lt!900874 tl!4068))))))

(assert (=> b!2528843 (= e!1600607 e!1600610)))

(declare-fun b!2528844 () Bool)

(assert (=> b!2528844 (= e!1600613 call!158237)))

(declare-fun bm!158232 () Bool)

(assert (=> bm!158232 (= call!158236 call!158235)))

(declare-fun b!2528845 () Bool)

(assert (=> b!2528845 (= e!1600608 e!1600609)))

(declare-fun res!1068123 () Bool)

(assert (=> b!2528845 (= res!1068123 (not (nullable!2442 (reg!7854 (derivative!220 lt!900874 tl!4068)))))))

(assert (=> b!2528845 (=> (not res!1068123) (not e!1600609))))

(assert (= (and d!719602 (not res!1068120)) b!2528838))

(assert (= (and b!2528838 c!403909) b!2528845))

(assert (= (and b!2528838 (not c!403909)) b!2528837))

(assert (= (and b!2528845 res!1068123) b!2528840))

(assert (= (and b!2528837 c!403908) b!2528841))

(assert (= (and b!2528837 (not c!403908)) b!2528843))

(assert (= (and b!2528841 res!1068121) b!2528842))

(assert (= (and b!2528843 (not res!1068119)) b!2528839))

(assert (= (and b!2528839 res!1068122) b!2528844))

(assert (= (or b!2528841 b!2528844) bm!158230))

(assert (= (or b!2528842 b!2528839) bm!158232))

(assert (= (or b!2528840 bm!158232) bm!158231))

(declare-fun m!2881293 () Bool)

(assert (=> bm!158230 m!2881293))

(declare-fun m!2881295 () Bool)

(assert (=> bm!158231 m!2881295))

(declare-fun m!2881297 () Bool)

(assert (=> b!2528845 m!2881297))

(assert (=> d!719340 d!719602))

(assert (=> b!2528150 d!719486))

(assert (=> b!2528150 d!719488))

(declare-fun d!719604 () Bool)

(assert (=> d!719604 (= (isEmpty!16968 (_2!17316 lt!900878)) ((_ is Nil!29490) (_2!17316 lt!900878)))))

(assert (=> d!719306 d!719604))

(declare-fun b!2528858 () Bool)

(declare-fun e!1600618 () Bool)

(declare-fun e!1600617 () Bool)

(assert (=> b!2528858 (= e!1600618 e!1600617)))

(declare-fun c!403910 () Bool)

(assert (=> b!2528858 (= c!403910 ((_ is Union!7525) (regTwo!15562 r!27340)))))

(declare-fun bm!158233 () Bool)

(declare-fun call!158240 () Bool)

(assert (=> bm!158233 (= call!158240 (validRegex!3151 (ite c!403910 (regOne!15563 (regTwo!15562 r!27340)) (regTwo!15562 (regTwo!15562 r!27340)))))))

(declare-fun b!2528860 () Bool)

(declare-fun e!1600622 () Bool)

(assert (=> b!2528860 (= e!1600622 e!1600618)))

(declare-fun c!403911 () Bool)

(assert (=> b!2528860 (= c!403911 ((_ is Star!7525) (regTwo!15562 r!27340)))))

(declare-fun b!2528862 () Bool)

(declare-fun e!1600620 () Bool)

(declare-fun e!1600623 () Bool)

(assert (=> b!2528862 (= e!1600620 e!1600623)))

(declare-fun res!1068127 () Bool)

(assert (=> b!2528862 (=> (not res!1068127) (not e!1600623))))

(declare-fun call!158239 () Bool)

(assert (=> b!2528862 (= res!1068127 call!158239)))

(declare-fun d!719606 () Bool)

(declare-fun res!1068125 () Bool)

(assert (=> d!719606 (=> res!1068125 e!1600622)))

(assert (=> d!719606 (= res!1068125 ((_ is ElementMatch!7525) (regTwo!15562 r!27340)))))

(assert (=> d!719606 (= (validRegex!3151 (regTwo!15562 r!27340)) e!1600622)))

(declare-fun b!2528864 () Bool)

(declare-fun e!1600619 () Bool)

(declare-fun call!158238 () Bool)

(assert (=> b!2528864 (= e!1600619 call!158238)))

(declare-fun bm!158234 () Bool)

(assert (=> bm!158234 (= call!158238 (validRegex!3151 (ite c!403911 (reg!7854 (regTwo!15562 r!27340)) (ite c!403910 (regTwo!15563 (regTwo!15562 r!27340)) (regOne!15562 (regTwo!15562 r!27340))))))))

(declare-fun b!2528866 () Bool)

(declare-fun res!1068126 () Bool)

(declare-fun e!1600621 () Bool)

(assert (=> b!2528866 (=> (not res!1068126) (not e!1600621))))

(assert (=> b!2528866 (= res!1068126 call!158240)))

(assert (=> b!2528866 (= e!1600617 e!1600621)))

(declare-fun b!2528867 () Bool)

(assert (=> b!2528867 (= e!1600621 call!158239)))

(declare-fun b!2528868 () Bool)

(declare-fun res!1068124 () Bool)

(assert (=> b!2528868 (=> res!1068124 e!1600620)))

(assert (=> b!2528868 (= res!1068124 (not ((_ is Concat!12221) (regTwo!15562 r!27340))))))

(assert (=> b!2528868 (= e!1600617 e!1600620)))

(declare-fun b!2528869 () Bool)

(assert (=> b!2528869 (= e!1600623 call!158240)))

(declare-fun bm!158235 () Bool)

(assert (=> bm!158235 (= call!158239 call!158238)))

(declare-fun b!2528870 () Bool)

(assert (=> b!2528870 (= e!1600618 e!1600619)))

(declare-fun res!1068128 () Bool)

(assert (=> b!2528870 (= res!1068128 (not (nullable!2442 (reg!7854 (regTwo!15562 r!27340)))))))

(assert (=> b!2528870 (=> (not res!1068128) (not e!1600619))))

(assert (= (and d!719606 (not res!1068125)) b!2528860))

(assert (= (and b!2528860 c!403911) b!2528870))

(assert (= (and b!2528860 (not c!403911)) b!2528858))

(assert (= (and b!2528870 res!1068128) b!2528864))

(assert (= (and b!2528858 c!403910) b!2528866))

(assert (= (and b!2528858 (not c!403910)) b!2528868))

(assert (= (and b!2528866 res!1068126) b!2528867))

(assert (= (and b!2528868 (not res!1068124)) b!2528862))

(assert (= (and b!2528862 res!1068127) b!2528869))

(assert (= (or b!2528866 b!2528869) bm!158233))

(assert (= (or b!2528867 b!2528862) bm!158235))

(assert (= (or b!2528864 bm!158235) bm!158234))

(declare-fun m!2881299 () Bool)

(assert (=> bm!158233 m!2881299))

(declare-fun m!2881301 () Bool)

(assert (=> bm!158234 m!2881301))

(declare-fun m!2881303 () Bool)

(assert (=> b!2528870 m!2881303))

(assert (=> d!719306 d!719606))

(declare-fun b!2528895 () Bool)

(declare-fun e!1600633 () Regex!7525)

(declare-fun e!1600635 () Regex!7525)

(assert (=> b!2528895 (= e!1600633 e!1600635)))

(declare-fun c!403915 () Bool)

(assert (=> b!2528895 (= c!403915 ((_ is ElementMatch!7525) (ite c!403722 (regOne!15563 r!27340) (regTwo!15562 r!27340))))))

(declare-fun b!2528896 () Bool)

(declare-fun e!1600631 () Regex!7525)

(declare-fun call!158244 () Regex!7525)

(assert (=> b!2528896 (= e!1600631 (Union!7525 (Concat!12221 call!158244 (regTwo!15562 (ite c!403722 (regOne!15563 r!27340) (regTwo!15562 r!27340)))) EmptyLang!7525))))

(declare-fun b!2528897 () Bool)

(declare-fun e!1600632 () Regex!7525)

(declare-fun call!158241 () Regex!7525)

(assert (=> b!2528897 (= e!1600632 (Concat!12221 call!158241 (ite c!403722 (regOne!15563 r!27340) (regTwo!15562 r!27340))))))

(declare-fun b!2528898 () Bool)

(declare-fun e!1600634 () Regex!7525)

(assert (=> b!2528898 (= e!1600634 e!1600632)))

(declare-fun c!403914 () Bool)

(assert (=> b!2528898 (= c!403914 ((_ is Star!7525) (ite c!403722 (regOne!15563 r!27340) (regTwo!15562 r!27340))))))

(declare-fun b!2528899 () Bool)

(declare-fun call!158242 () Regex!7525)

(declare-fun call!158243 () Regex!7525)

(assert (=> b!2528899 (= e!1600634 (Union!7525 call!158242 call!158243))))

(declare-fun bm!158236 () Bool)

(assert (=> bm!158236 (= call!158244 call!158241)))

(declare-fun bm!158237 () Bool)

(assert (=> bm!158237 (= call!158241 call!158243)))

(declare-fun b!2528900 () Bool)

(assert (=> b!2528900 (= e!1600631 (Union!7525 (Concat!12221 call!158244 (regTwo!15562 (ite c!403722 (regOne!15563 r!27340) (regTwo!15562 r!27340)))) call!158242))))

(declare-fun c!403913 () Bool)

(declare-fun bm!158238 () Bool)

(assert (=> bm!158238 (= call!158243 (derivativeStep!2094 (ite c!403913 (regTwo!15563 (ite c!403722 (regOne!15563 r!27340) (regTwo!15562 r!27340))) (ite c!403914 (reg!7854 (ite c!403722 (regOne!15563 r!27340) (regTwo!15562 r!27340))) (regOne!15562 (ite c!403722 (regOne!15563 r!27340) (regTwo!15562 r!27340))))) c!14016))))

(declare-fun b!2528901 () Bool)

(assert (=> b!2528901 (= c!403913 ((_ is Union!7525) (ite c!403722 (regOne!15563 r!27340) (regTwo!15562 r!27340))))))

(assert (=> b!2528901 (= e!1600635 e!1600634)))

(declare-fun b!2528902 () Bool)

(assert (=> b!2528902 (= e!1600633 EmptyLang!7525)))

(declare-fun bm!158239 () Bool)

(assert (=> bm!158239 (= call!158242 (derivativeStep!2094 (ite c!403913 (regOne!15563 (ite c!403722 (regOne!15563 r!27340) (regTwo!15562 r!27340))) (regTwo!15562 (ite c!403722 (regOne!15563 r!27340) (regTwo!15562 r!27340)))) c!14016))))

(declare-fun b!2528903 () Bool)

(declare-fun c!403916 () Bool)

(assert (=> b!2528903 (= c!403916 (nullable!2442 (regOne!15562 (ite c!403722 (regOne!15563 r!27340) (regTwo!15562 r!27340)))))))

(assert (=> b!2528903 (= e!1600632 e!1600631)))

(declare-fun d!719608 () Bool)

(declare-fun lt!901013 () Regex!7525)

(assert (=> d!719608 (validRegex!3151 lt!901013)))

(assert (=> d!719608 (= lt!901013 e!1600633)))

(declare-fun c!403912 () Bool)

(assert (=> d!719608 (= c!403912 (or ((_ is EmptyExpr!7525) (ite c!403722 (regOne!15563 r!27340) (regTwo!15562 r!27340))) ((_ is EmptyLang!7525) (ite c!403722 (regOne!15563 r!27340) (regTwo!15562 r!27340)))))))

(assert (=> d!719608 (validRegex!3151 (ite c!403722 (regOne!15563 r!27340) (regTwo!15562 r!27340)))))

(assert (=> d!719608 (= (derivativeStep!2094 (ite c!403722 (regOne!15563 r!27340) (regTwo!15562 r!27340)) c!14016) lt!901013)))

(declare-fun b!2528904 () Bool)

(assert (=> b!2528904 (= e!1600635 (ite (= c!14016 (c!403591 (ite c!403722 (regOne!15563 r!27340) (regTwo!15562 r!27340)))) EmptyExpr!7525 EmptyLang!7525))))

(assert (= (and d!719608 c!403912) b!2528902))

(assert (= (and d!719608 (not c!403912)) b!2528895))

(assert (= (and b!2528895 c!403915) b!2528904))

(assert (= (and b!2528895 (not c!403915)) b!2528901))

(assert (= (and b!2528901 c!403913) b!2528899))

(assert (= (and b!2528901 (not c!403913)) b!2528898))

(assert (= (and b!2528898 c!403914) b!2528897))

(assert (= (and b!2528898 (not c!403914)) b!2528903))

(assert (= (and b!2528903 c!403916) b!2528900))

(assert (= (and b!2528903 (not c!403916)) b!2528896))

(assert (= (or b!2528900 b!2528896) bm!158236))

(assert (= (or b!2528897 bm!158236) bm!158237))

(assert (= (or b!2528899 bm!158237) bm!158238))

(assert (= (or b!2528899 b!2528900) bm!158239))

(declare-fun m!2881305 () Bool)

(assert (=> bm!158238 m!2881305))

(declare-fun m!2881307 () Bool)

(assert (=> bm!158239 m!2881307))

(declare-fun m!2881309 () Bool)

(assert (=> b!2528903 m!2881309))

(declare-fun m!2881311 () Bool)

(assert (=> d!719608 m!2881311))

(declare-fun m!2881313 () Bool)

(assert (=> d!719608 m!2881313))

(assert (=> bm!158084 d!719608))

(declare-fun d!719610 () Bool)

(assert (=> d!719610 (= (isEmpty!16968 (tail!4051 (_1!17316 lt!900878))) ((_ is Nil!29490) (tail!4051 (_1!17316 lt!900878))))))

(assert (=> b!2527736 d!719610))

(declare-fun d!719612 () Bool)

(assert (=> d!719612 (= (tail!4051 (_1!17316 lt!900878)) (t!211289 (_1!17316 lt!900878)))))

(assert (=> b!2527736 d!719612))

(declare-fun b!2528945 () Bool)

(declare-fun e!1600647 () Bool)

(declare-fun lt!901014 () List!29590)

(assert (=> b!2528945 (= e!1600647 (or (not (= (_2!17316 (get!9235 lt!900911)) Nil!29490)) (= lt!901014 (_1!17316 (get!9235 lt!900911)))))))

(declare-fun b!2528943 () Bool)

(declare-fun e!1600646 () List!29590)

(assert (=> b!2528943 (= e!1600646 (Cons!29490 (h!34910 (_1!17316 (get!9235 lt!900911))) (++!7244 (t!211289 (_1!17316 (get!9235 lt!900911))) (_2!17316 (get!9235 lt!900911)))))))

(declare-fun d!719614 () Bool)

(assert (=> d!719614 e!1600647))

(declare-fun res!1068130 () Bool)

(assert (=> d!719614 (=> (not res!1068130) (not e!1600647))))

(assert (=> d!719614 (= res!1068130 (= (content!4049 lt!901014) ((_ map or) (content!4049 (_1!17316 (get!9235 lt!900911))) (content!4049 (_2!17316 (get!9235 lt!900911))))))))

(assert (=> d!719614 (= lt!901014 e!1600646)))

(declare-fun c!403917 () Bool)

(assert (=> d!719614 (= c!403917 ((_ is Nil!29490) (_1!17316 (get!9235 lt!900911))))))

(assert (=> d!719614 (= (++!7244 (_1!17316 (get!9235 lt!900911)) (_2!17316 (get!9235 lt!900911))) lt!901014)))

(declare-fun b!2528942 () Bool)

(assert (=> b!2528942 (= e!1600646 (_2!17316 (get!9235 lt!900911)))))

(declare-fun b!2528944 () Bool)

(declare-fun res!1068129 () Bool)

(assert (=> b!2528944 (=> (not res!1068129) (not e!1600647))))

(assert (=> b!2528944 (= res!1068129 (= (size!22931 lt!901014) (+ (size!22931 (_1!17316 (get!9235 lt!900911))) (size!22931 (_2!17316 (get!9235 lt!900911))))))))

(assert (= (and d!719614 c!403917) b!2528942))

(assert (= (and d!719614 (not c!403917)) b!2528943))

(assert (= (and d!719614 res!1068130) b!2528944))

(assert (= (and b!2528944 res!1068129) b!2528945))

(declare-fun m!2881315 () Bool)

(assert (=> b!2528943 m!2881315))

(declare-fun m!2881317 () Bool)

(assert (=> d!719614 m!2881317))

(declare-fun m!2881319 () Bool)

(assert (=> d!719614 m!2881319))

(declare-fun m!2881321 () Bool)

(assert (=> d!719614 m!2881321))

(declare-fun m!2881323 () Bool)

(assert (=> b!2528944 m!2881323))

(declare-fun m!2881325 () Bool)

(assert (=> b!2528944 m!2881325))

(declare-fun m!2881327 () Bool)

(assert (=> b!2528944 m!2881327))

(assert (=> b!2527831 d!719614))

(declare-fun d!719616 () Bool)

(assert (=> d!719616 (= (get!9235 lt!900911) (v!31826 lt!900911))))

(assert (=> b!2527831 d!719616))

(declare-fun b!2528970 () Bool)

(declare-fun e!1600655 () Bool)

(declare-fun e!1600654 () Bool)

(assert (=> b!2528970 (= e!1600655 e!1600654)))

(declare-fun c!403918 () Bool)

(assert (=> b!2528970 (= c!403918 ((_ is Union!7525) lt!900963))))

(declare-fun bm!158240 () Bool)

(declare-fun call!158247 () Bool)

(assert (=> bm!158240 (= call!158247 (validRegex!3151 (ite c!403918 (regOne!15563 lt!900963) (regTwo!15562 lt!900963))))))

(declare-fun b!2528971 () Bool)

(declare-fun e!1600659 () Bool)

(assert (=> b!2528971 (= e!1600659 e!1600655)))

(declare-fun c!403919 () Bool)

(assert (=> b!2528971 (= c!403919 ((_ is Star!7525) lt!900963))))

(declare-fun b!2528972 () Bool)

(declare-fun e!1600657 () Bool)

(declare-fun e!1600660 () Bool)

(assert (=> b!2528972 (= e!1600657 e!1600660)))

(declare-fun res!1068134 () Bool)

(assert (=> b!2528972 (=> (not res!1068134) (not e!1600660))))

(declare-fun call!158246 () Bool)

(assert (=> b!2528972 (= res!1068134 call!158246)))

(declare-fun d!719618 () Bool)

(declare-fun res!1068132 () Bool)

(assert (=> d!719618 (=> res!1068132 e!1600659)))

(assert (=> d!719618 (= res!1068132 ((_ is ElementMatch!7525) lt!900963))))

(assert (=> d!719618 (= (validRegex!3151 lt!900963) e!1600659)))

(declare-fun b!2528973 () Bool)

(declare-fun e!1600656 () Bool)

(declare-fun call!158245 () Bool)

(assert (=> b!2528973 (= e!1600656 call!158245)))

(declare-fun bm!158241 () Bool)

(assert (=> bm!158241 (= call!158245 (validRegex!3151 (ite c!403919 (reg!7854 lt!900963) (ite c!403918 (regTwo!15563 lt!900963) (regOne!15562 lt!900963)))))))

(declare-fun b!2528974 () Bool)

(declare-fun res!1068133 () Bool)

(declare-fun e!1600658 () Bool)

(assert (=> b!2528974 (=> (not res!1068133) (not e!1600658))))

(assert (=> b!2528974 (= res!1068133 call!158247)))

(assert (=> b!2528974 (= e!1600654 e!1600658)))

(declare-fun b!2528975 () Bool)

(assert (=> b!2528975 (= e!1600658 call!158246)))

(declare-fun b!2528976 () Bool)

(declare-fun res!1068131 () Bool)

(assert (=> b!2528976 (=> res!1068131 e!1600657)))

(assert (=> b!2528976 (= res!1068131 (not ((_ is Concat!12221) lt!900963)))))

(assert (=> b!2528976 (= e!1600654 e!1600657)))

(declare-fun b!2528977 () Bool)

(assert (=> b!2528977 (= e!1600660 call!158247)))

(declare-fun bm!158242 () Bool)

(assert (=> bm!158242 (= call!158246 call!158245)))

(declare-fun b!2528978 () Bool)

(assert (=> b!2528978 (= e!1600655 e!1600656)))

(declare-fun res!1068135 () Bool)

(assert (=> b!2528978 (= res!1068135 (not (nullable!2442 (reg!7854 lt!900963))))))

(assert (=> b!2528978 (=> (not res!1068135) (not e!1600656))))

(assert (= (and d!719618 (not res!1068132)) b!2528971))

(assert (= (and b!2528971 c!403919) b!2528978))

(assert (= (and b!2528971 (not c!403919)) b!2528970))

(assert (= (and b!2528978 res!1068135) b!2528973))

(assert (= (and b!2528970 c!403918) b!2528974))

(assert (= (and b!2528970 (not c!403918)) b!2528976))

(assert (= (and b!2528974 res!1068133) b!2528975))

(assert (= (and b!2528976 (not res!1068131)) b!2528972))

(assert (= (and b!2528972 res!1068134) b!2528977))

(assert (= (or b!2528974 b!2528977) bm!158240))

(assert (= (or b!2528975 b!2528972) bm!158242))

(assert (= (or b!2528973 bm!158242) bm!158241))

(declare-fun m!2881329 () Bool)

(assert (=> bm!158240 m!2881329))

(declare-fun m!2881331 () Bool)

(assert (=> bm!158241 m!2881331))

(declare-fun m!2881333 () Bool)

(assert (=> b!2528978 m!2881333))

(assert (=> d!719352 d!719618))

(declare-fun b!2528979 () Bool)

(declare-fun e!1600662 () Bool)

(declare-fun e!1600661 () Bool)

(assert (=> b!2528979 (= e!1600662 e!1600661)))

(declare-fun c!403920 () Bool)

(assert (=> b!2528979 (= c!403920 ((_ is Union!7525) (derivativeStep!2094 r!27340 c!14016)))))

(declare-fun call!158250 () Bool)

(declare-fun bm!158243 () Bool)

(assert (=> bm!158243 (= call!158250 (validRegex!3151 (ite c!403920 (regOne!15563 (derivativeStep!2094 r!27340 c!14016)) (regTwo!15562 (derivativeStep!2094 r!27340 c!14016)))))))

(declare-fun b!2528980 () Bool)

(declare-fun e!1600666 () Bool)

(assert (=> b!2528980 (= e!1600666 e!1600662)))

(declare-fun c!403921 () Bool)

(assert (=> b!2528980 (= c!403921 ((_ is Star!7525) (derivativeStep!2094 r!27340 c!14016)))))

(declare-fun b!2528981 () Bool)

(declare-fun e!1600664 () Bool)

(declare-fun e!1600667 () Bool)

(assert (=> b!2528981 (= e!1600664 e!1600667)))

(declare-fun res!1068139 () Bool)

(assert (=> b!2528981 (=> (not res!1068139) (not e!1600667))))

(declare-fun call!158249 () Bool)

(assert (=> b!2528981 (= res!1068139 call!158249)))

(declare-fun d!719620 () Bool)

(declare-fun res!1068137 () Bool)

(assert (=> d!719620 (=> res!1068137 e!1600666)))

(assert (=> d!719620 (= res!1068137 ((_ is ElementMatch!7525) (derivativeStep!2094 r!27340 c!14016)))))

(assert (=> d!719620 (= (validRegex!3151 (derivativeStep!2094 r!27340 c!14016)) e!1600666)))

(declare-fun b!2528982 () Bool)

(declare-fun e!1600663 () Bool)

(declare-fun call!158248 () Bool)

(assert (=> b!2528982 (= e!1600663 call!158248)))

(declare-fun bm!158244 () Bool)

(assert (=> bm!158244 (= call!158248 (validRegex!3151 (ite c!403921 (reg!7854 (derivativeStep!2094 r!27340 c!14016)) (ite c!403920 (regTwo!15563 (derivativeStep!2094 r!27340 c!14016)) (regOne!15562 (derivativeStep!2094 r!27340 c!14016))))))))

(declare-fun b!2528983 () Bool)

(declare-fun res!1068138 () Bool)

(declare-fun e!1600665 () Bool)

(assert (=> b!2528983 (=> (not res!1068138) (not e!1600665))))

(assert (=> b!2528983 (= res!1068138 call!158250)))

(assert (=> b!2528983 (= e!1600661 e!1600665)))

(declare-fun b!2528984 () Bool)

(assert (=> b!2528984 (= e!1600665 call!158249)))

(declare-fun b!2528985 () Bool)

(declare-fun res!1068136 () Bool)

(assert (=> b!2528985 (=> res!1068136 e!1600664)))

(assert (=> b!2528985 (= res!1068136 (not ((_ is Concat!12221) (derivativeStep!2094 r!27340 c!14016))))))

(assert (=> b!2528985 (= e!1600661 e!1600664)))

(declare-fun b!2528986 () Bool)

(assert (=> b!2528986 (= e!1600667 call!158250)))

(declare-fun bm!158245 () Bool)

(assert (=> bm!158245 (= call!158249 call!158248)))

(declare-fun b!2528987 () Bool)

(assert (=> b!2528987 (= e!1600662 e!1600663)))

(declare-fun res!1068140 () Bool)

(assert (=> b!2528987 (= res!1068140 (not (nullable!2442 (reg!7854 (derivativeStep!2094 r!27340 c!14016)))))))

(assert (=> b!2528987 (=> (not res!1068140) (not e!1600663))))

(assert (= (and d!719620 (not res!1068137)) b!2528980))

(assert (= (and b!2528980 c!403921) b!2528987))

(assert (= (and b!2528980 (not c!403921)) b!2528979))

(assert (= (and b!2528987 res!1068140) b!2528982))

(assert (= (and b!2528979 c!403920) b!2528983))

(assert (= (and b!2528979 (not c!403920)) b!2528985))

(assert (= (and b!2528983 res!1068138) b!2528984))

(assert (= (and b!2528985 (not res!1068136)) b!2528981))

(assert (= (and b!2528981 res!1068139) b!2528986))

(assert (= (or b!2528983 b!2528986) bm!158243))

(assert (= (or b!2528984 b!2528981) bm!158245))

(assert (= (or b!2528982 bm!158245) bm!158244))

(declare-fun m!2881335 () Bool)

(assert (=> bm!158243 m!2881335))

(declare-fun m!2881337 () Bool)

(assert (=> bm!158244 m!2881337))

(declare-fun m!2881339 () Bool)

(assert (=> b!2528987 m!2881339))

(assert (=> d!719352 d!719620))

(declare-fun d!719622 () Bool)

(declare-fun lt!901017 () Int)

(assert (=> d!719622 (>= lt!901017 0)))

(declare-fun e!1600670 () Int)

(assert (=> d!719622 (= lt!901017 e!1600670)))

(declare-fun c!403924 () Bool)

(assert (=> d!719622 (= c!403924 ((_ is Nil!29490) lt!900923))))

(assert (=> d!719622 (= (size!22931 lt!900923) lt!901017)))

(declare-fun b!2528992 () Bool)

(assert (=> b!2528992 (= e!1600670 0)))

(declare-fun b!2528993 () Bool)

(assert (=> b!2528993 (= e!1600670 (+ 1 (size!22931 (t!211289 lt!900923))))))

(assert (= (and d!719622 c!403924) b!2528992))

(assert (= (and d!719622 (not c!403924)) b!2528993))

(declare-fun m!2881341 () Bool)

(assert (=> b!2528993 m!2881341))

(assert (=> b!2527908 d!719622))

(declare-fun d!719624 () Bool)

(declare-fun lt!901018 () Int)

(assert (=> d!719624 (>= lt!901018 0)))

(declare-fun e!1600671 () Int)

(assert (=> d!719624 (= lt!901018 e!1600671)))

(declare-fun c!403925 () Bool)

(assert (=> d!719624 (= c!403925 ((_ is Nil!29490) (_1!17316 lt!900878)))))

(assert (=> d!719624 (= (size!22931 (_1!17316 lt!900878)) lt!901018)))

(declare-fun b!2528994 () Bool)

(assert (=> b!2528994 (= e!1600671 0)))

(declare-fun b!2528995 () Bool)

(assert (=> b!2528995 (= e!1600671 (+ 1 (size!22931 (t!211289 (_1!17316 lt!900878)))))))

(assert (= (and d!719624 c!403925) b!2528994))

(assert (= (and d!719624 (not c!403925)) b!2528995))

(declare-fun m!2881343 () Bool)

(assert (=> b!2528995 m!2881343))

(assert (=> b!2527908 d!719624))

(declare-fun d!719626 () Bool)

(declare-fun lt!901019 () Int)

(assert (=> d!719626 (>= lt!901019 0)))

(declare-fun e!1600672 () Int)

(assert (=> d!719626 (= lt!901019 e!1600672)))

(declare-fun c!403926 () Bool)

(assert (=> d!719626 (= c!403926 ((_ is Nil!29490) (_2!17316 lt!900878)))))

(assert (=> d!719626 (= (size!22931 (_2!17316 lt!900878)) lt!901019)))

(declare-fun b!2528996 () Bool)

(assert (=> b!2528996 (= e!1600672 0)))

(declare-fun b!2528997 () Bool)

(assert (=> b!2528997 (= e!1600672 (+ 1 (size!22931 (t!211289 (_2!17316 lt!900878)))))))

(assert (= (and d!719626 c!403926) b!2528996))

(assert (= (and d!719626 (not c!403926)) b!2528997))

(declare-fun m!2881345 () Bool)

(assert (=> b!2528997 m!2881345))

(assert (=> b!2527908 d!719626))

(assert (=> b!2527948 d!719502))

(assert (=> d!719312 d!719500))

(declare-fun b!2528998 () Bool)

(declare-fun e!1600674 () Bool)

(declare-fun e!1600673 () Bool)

(assert (=> b!2528998 (= e!1600674 e!1600673)))

(declare-fun c!403927 () Bool)

(assert (=> b!2528998 (= c!403927 ((_ is Union!7525) lt!900879))))

(declare-fun bm!158246 () Bool)

(declare-fun call!158253 () Bool)

(assert (=> bm!158246 (= call!158253 (validRegex!3151 (ite c!403927 (regOne!15563 lt!900879) (regTwo!15562 lt!900879))))))

(declare-fun b!2528999 () Bool)

(declare-fun e!1600678 () Bool)

(assert (=> b!2528999 (= e!1600678 e!1600674)))

(declare-fun c!403928 () Bool)

(assert (=> b!2528999 (= c!403928 ((_ is Star!7525) lt!900879))))

(declare-fun b!2529000 () Bool)

(declare-fun e!1600676 () Bool)

(declare-fun e!1600679 () Bool)

(assert (=> b!2529000 (= e!1600676 e!1600679)))

(declare-fun res!1068144 () Bool)

(assert (=> b!2529000 (=> (not res!1068144) (not e!1600679))))

(declare-fun call!158252 () Bool)

(assert (=> b!2529000 (= res!1068144 call!158252)))

(declare-fun d!719628 () Bool)

(declare-fun res!1068142 () Bool)

(assert (=> d!719628 (=> res!1068142 e!1600678)))

(assert (=> d!719628 (= res!1068142 ((_ is ElementMatch!7525) lt!900879))))

(assert (=> d!719628 (= (validRegex!3151 lt!900879) e!1600678)))

(declare-fun b!2529001 () Bool)

(declare-fun e!1600675 () Bool)

(declare-fun call!158251 () Bool)

(assert (=> b!2529001 (= e!1600675 call!158251)))

(declare-fun bm!158247 () Bool)

(assert (=> bm!158247 (= call!158251 (validRegex!3151 (ite c!403928 (reg!7854 lt!900879) (ite c!403927 (regTwo!15563 lt!900879) (regOne!15562 lt!900879)))))))

(declare-fun b!2529002 () Bool)

(declare-fun res!1068143 () Bool)

(declare-fun e!1600677 () Bool)

(assert (=> b!2529002 (=> (not res!1068143) (not e!1600677))))

(assert (=> b!2529002 (= res!1068143 call!158253)))

(assert (=> b!2529002 (= e!1600673 e!1600677)))

(declare-fun b!2529003 () Bool)

(assert (=> b!2529003 (= e!1600677 call!158252)))

(declare-fun b!2529004 () Bool)

(declare-fun res!1068141 () Bool)

(assert (=> b!2529004 (=> res!1068141 e!1600676)))

(assert (=> b!2529004 (= res!1068141 (not ((_ is Concat!12221) lt!900879)))))

(assert (=> b!2529004 (= e!1600673 e!1600676)))

(declare-fun b!2529005 () Bool)

(assert (=> b!2529005 (= e!1600679 call!158253)))

(declare-fun bm!158248 () Bool)

(assert (=> bm!158248 (= call!158252 call!158251)))

(declare-fun b!2529006 () Bool)

(assert (=> b!2529006 (= e!1600674 e!1600675)))

(declare-fun res!1068145 () Bool)

(assert (=> b!2529006 (= res!1068145 (not (nullable!2442 (reg!7854 lt!900879))))))

(assert (=> b!2529006 (=> (not res!1068145) (not e!1600675))))

(assert (= (and d!719628 (not res!1068142)) b!2528999))

(assert (= (and b!2528999 c!403928) b!2529006))

(assert (= (and b!2528999 (not c!403928)) b!2528998))

(assert (= (and b!2529006 res!1068145) b!2529001))

(assert (= (and b!2528998 c!403927) b!2529002))

(assert (= (and b!2528998 (not c!403927)) b!2529004))

(assert (= (and b!2529002 res!1068143) b!2529003))

(assert (= (and b!2529004 (not res!1068141)) b!2529000))

(assert (= (and b!2529000 res!1068144) b!2529005))

(assert (= (or b!2529002 b!2529005) bm!158246))

(assert (= (or b!2529003 b!2529000) bm!158248))

(assert (= (or b!2529001 bm!158248) bm!158247))

(declare-fun m!2881347 () Bool)

(assert (=> bm!158246 m!2881347))

(declare-fun m!2881349 () Bool)

(assert (=> bm!158247 m!2881349))

(declare-fun m!2881351 () Bool)

(assert (=> b!2529006 m!2881351))

(assert (=> d!719312 d!719628))

(declare-fun b!2529010 () Bool)

(declare-fun e!1600681 () Bool)

(declare-fun lt!901020 () List!29590)

(assert (=> b!2529010 (= e!1600681 (or (not (= (t!211289 tl!4068) Nil!29490)) (= lt!901020 (++!7244 Nil!29490 (Cons!29490 (h!34910 tl!4068) Nil!29490)))))))

(declare-fun b!2529008 () Bool)

(declare-fun e!1600680 () List!29590)

(assert (=> b!2529008 (= e!1600680 (Cons!29490 (h!34910 (++!7244 Nil!29490 (Cons!29490 (h!34910 tl!4068) Nil!29490))) (++!7244 (t!211289 (++!7244 Nil!29490 (Cons!29490 (h!34910 tl!4068) Nil!29490))) (t!211289 tl!4068))))))

(declare-fun d!719630 () Bool)

(assert (=> d!719630 e!1600681))

(declare-fun res!1068147 () Bool)

(assert (=> d!719630 (=> (not res!1068147) (not e!1600681))))

(assert (=> d!719630 (= res!1068147 (= (content!4049 lt!901020) ((_ map or) (content!4049 (++!7244 Nil!29490 (Cons!29490 (h!34910 tl!4068) Nil!29490))) (content!4049 (t!211289 tl!4068)))))))

(assert (=> d!719630 (= lt!901020 e!1600680)))

(declare-fun c!403929 () Bool)

(assert (=> d!719630 (= c!403929 ((_ is Nil!29490) (++!7244 Nil!29490 (Cons!29490 (h!34910 tl!4068) Nil!29490))))))

(assert (=> d!719630 (= (++!7244 (++!7244 Nil!29490 (Cons!29490 (h!34910 tl!4068) Nil!29490)) (t!211289 tl!4068)) lt!901020)))

(declare-fun b!2529007 () Bool)

(assert (=> b!2529007 (= e!1600680 (t!211289 tl!4068))))

(declare-fun b!2529009 () Bool)

(declare-fun res!1068146 () Bool)

(assert (=> b!2529009 (=> (not res!1068146) (not e!1600681))))

(assert (=> b!2529009 (= res!1068146 (= (size!22931 lt!901020) (+ (size!22931 (++!7244 Nil!29490 (Cons!29490 (h!34910 tl!4068) Nil!29490))) (size!22931 (t!211289 tl!4068)))))))

(assert (= (and d!719630 c!403929) b!2529007))

(assert (= (and d!719630 (not c!403929)) b!2529008))

(assert (= (and d!719630 res!1068147) b!2529009))

(assert (= (and b!2529009 res!1068146) b!2529010))

(declare-fun m!2881353 () Bool)

(assert (=> b!2529008 m!2881353))

(declare-fun m!2881355 () Bool)

(assert (=> d!719630 m!2881355))

(assert (=> d!719630 m!2880491))

(declare-fun m!2881357 () Bool)

(assert (=> d!719630 m!2881357))

(declare-fun m!2881359 () Bool)

(assert (=> d!719630 m!2881359))

(declare-fun m!2881361 () Bool)

(assert (=> b!2529009 m!2881361))

(assert (=> b!2529009 m!2880491))

(declare-fun m!2881363 () Bool)

(assert (=> b!2529009 m!2881363))

(declare-fun m!2881365 () Bool)

(assert (=> b!2529009 m!2881365))

(assert (=> b!2527835 d!719630))

(declare-fun b!2529014 () Bool)

(declare-fun e!1600683 () Bool)

(declare-fun lt!901021 () List!29590)

(assert (=> b!2529014 (= e!1600683 (or (not (= (Cons!29490 (h!34910 tl!4068) Nil!29490) Nil!29490)) (= lt!901021 Nil!29490)))))

(declare-fun b!2529012 () Bool)

(declare-fun e!1600682 () List!29590)

(assert (=> b!2529012 (= e!1600682 (Cons!29490 (h!34910 Nil!29490) (++!7244 (t!211289 Nil!29490) (Cons!29490 (h!34910 tl!4068) Nil!29490))))))

(declare-fun d!719632 () Bool)

(assert (=> d!719632 e!1600683))

(declare-fun res!1068149 () Bool)

(assert (=> d!719632 (=> (not res!1068149) (not e!1600683))))

(assert (=> d!719632 (= res!1068149 (= (content!4049 lt!901021) ((_ map or) (content!4049 Nil!29490) (content!4049 (Cons!29490 (h!34910 tl!4068) Nil!29490)))))))

(assert (=> d!719632 (= lt!901021 e!1600682)))

(declare-fun c!403930 () Bool)

(assert (=> d!719632 (= c!403930 ((_ is Nil!29490) Nil!29490))))

(assert (=> d!719632 (= (++!7244 Nil!29490 (Cons!29490 (h!34910 tl!4068) Nil!29490)) lt!901021)))

(declare-fun b!2529011 () Bool)

(assert (=> b!2529011 (= e!1600682 (Cons!29490 (h!34910 tl!4068) Nil!29490))))

(declare-fun b!2529013 () Bool)

(declare-fun res!1068148 () Bool)

(assert (=> b!2529013 (=> (not res!1068148) (not e!1600683))))

(assert (=> b!2529013 (= res!1068148 (= (size!22931 lt!901021) (+ (size!22931 Nil!29490) (size!22931 (Cons!29490 (h!34910 tl!4068) Nil!29490)))))))

(assert (= (and d!719632 c!403930) b!2529011))

(assert (= (and d!719632 (not c!403930)) b!2529012))

(assert (= (and d!719632 res!1068149) b!2529013))

(assert (= (and b!2529013 res!1068148) b!2529014))

(declare-fun m!2881367 () Bool)

(assert (=> b!2529012 m!2881367))

(declare-fun m!2881369 () Bool)

(assert (=> d!719632 m!2881369))

(declare-fun m!2881371 () Bool)

(assert (=> d!719632 m!2881371))

(declare-fun m!2881373 () Bool)

(assert (=> d!719632 m!2881373))

(declare-fun m!2881375 () Bool)

(assert (=> b!2529013 m!2881375))

(declare-fun m!2881377 () Bool)

(assert (=> b!2529013 m!2881377))

(declare-fun m!2881379 () Bool)

(assert (=> b!2529013 m!2881379))

(assert (=> b!2527835 d!719632))

(declare-fun d!719634 () Bool)

(assert (=> d!719634 (= (++!7244 (++!7244 Nil!29490 (Cons!29490 (h!34910 tl!4068) Nil!29490)) (t!211289 tl!4068)) tl!4068)))

(declare-fun lt!901024 () Unit!43275)

(declare-fun choose!15002 (List!29590 C!15208 List!29590 List!29590) Unit!43275)

(assert (=> d!719634 (= lt!901024 (choose!15002 Nil!29490 (h!34910 tl!4068) (t!211289 tl!4068) tl!4068))))

(assert (=> d!719634 (= (++!7244 Nil!29490 (Cons!29490 (h!34910 tl!4068) (t!211289 tl!4068))) tl!4068)))

(assert (=> d!719634 (= (lemmaMoveElementToOtherListKeepsConcatEq!782 Nil!29490 (h!34910 tl!4068) (t!211289 tl!4068) tl!4068) lt!901024)))

(declare-fun bs!469161 () Bool)

(assert (= bs!469161 d!719634))

(assert (=> bs!469161 m!2880491))

(assert (=> bs!469161 m!2880491))

(assert (=> bs!469161 m!2880493))

(declare-fun m!2881381 () Bool)

(assert (=> bs!469161 m!2881381))

(declare-fun m!2881383 () Bool)

(assert (=> bs!469161 m!2881383))

(assert (=> b!2527835 d!719634))

(declare-fun b!2529015 () Bool)

(declare-fun res!1068151 () Bool)

(declare-fun e!1600685 () Bool)

(assert (=> b!2529015 (=> (not res!1068151) (not e!1600685))))

(declare-fun lt!901025 () Option!5894)

(assert (=> b!2529015 (= res!1068151 (matchR!3512 lt!900873 (_1!17316 (get!9235 lt!901025))))))

(declare-fun b!2529016 () Bool)

(declare-fun e!1600684 () Bool)

(assert (=> b!2529016 (= e!1600684 (matchR!3512 (regTwo!15562 r!27340) (t!211289 tl!4068)))))

(declare-fun b!2529017 () Bool)

(declare-fun res!1068153 () Bool)

(assert (=> b!2529017 (=> (not res!1068153) (not e!1600685))))

(assert (=> b!2529017 (= res!1068153 (matchR!3512 (regTwo!15562 r!27340) (_2!17316 (get!9235 lt!901025))))))

(declare-fun b!2529018 () Bool)

(declare-fun e!1600687 () Option!5894)

(declare-fun e!1600688 () Option!5894)

(assert (=> b!2529018 (= e!1600687 e!1600688)))

(declare-fun c!403932 () Bool)

(assert (=> b!2529018 (= c!403932 ((_ is Nil!29490) (t!211289 tl!4068)))))

(declare-fun d!719636 () Bool)

(declare-fun e!1600686 () Bool)

(assert (=> d!719636 e!1600686))

(declare-fun res!1068150 () Bool)

(assert (=> d!719636 (=> res!1068150 e!1600686)))

(assert (=> d!719636 (= res!1068150 e!1600685)))

(declare-fun res!1068154 () Bool)

(assert (=> d!719636 (=> (not res!1068154) (not e!1600685))))

(assert (=> d!719636 (= res!1068154 (isDefined!4716 lt!901025))))

(assert (=> d!719636 (= lt!901025 e!1600687)))

(declare-fun c!403931 () Bool)

(assert (=> d!719636 (= c!403931 e!1600684)))

(declare-fun res!1068152 () Bool)

(assert (=> d!719636 (=> (not res!1068152) (not e!1600684))))

(assert (=> d!719636 (= res!1068152 (matchR!3512 lt!900873 (++!7244 Nil!29490 (Cons!29490 (h!34910 tl!4068) Nil!29490))))))

(assert (=> d!719636 (validRegex!3151 lt!900873)))

(assert (=> d!719636 (= (findConcatSeparation!916 lt!900873 (regTwo!15562 r!27340) (++!7244 Nil!29490 (Cons!29490 (h!34910 tl!4068) Nil!29490)) (t!211289 tl!4068) tl!4068) lt!901025)))

(declare-fun b!2529019 () Bool)

(assert (=> b!2529019 (= e!1600685 (= (++!7244 (_1!17316 (get!9235 lt!901025)) (_2!17316 (get!9235 lt!901025))) tl!4068))))

(declare-fun b!2529020 () Bool)

(assert (=> b!2529020 (= e!1600686 (not (isDefined!4716 lt!901025)))))

(declare-fun b!2529021 () Bool)

(assert (=> b!2529021 (= e!1600688 None!5893)))

(declare-fun b!2529022 () Bool)

(assert (=> b!2529022 (= e!1600687 (Some!5893 (tuple2!29549 (++!7244 Nil!29490 (Cons!29490 (h!34910 tl!4068) Nil!29490)) (t!211289 tl!4068))))))

(declare-fun b!2529023 () Bool)

(declare-fun lt!901027 () Unit!43275)

(declare-fun lt!901026 () Unit!43275)

(assert (=> b!2529023 (= lt!901027 lt!901026)))

(assert (=> b!2529023 (= (++!7244 (++!7244 (++!7244 Nil!29490 (Cons!29490 (h!34910 tl!4068) Nil!29490)) (Cons!29490 (h!34910 (t!211289 tl!4068)) Nil!29490)) (t!211289 (t!211289 tl!4068))) tl!4068)))

(assert (=> b!2529023 (= lt!901026 (lemmaMoveElementToOtherListKeepsConcatEq!782 (++!7244 Nil!29490 (Cons!29490 (h!34910 tl!4068) Nil!29490)) (h!34910 (t!211289 tl!4068)) (t!211289 (t!211289 tl!4068)) tl!4068))))

(assert (=> b!2529023 (= e!1600688 (findConcatSeparation!916 lt!900873 (regTwo!15562 r!27340) (++!7244 (++!7244 Nil!29490 (Cons!29490 (h!34910 tl!4068) Nil!29490)) (Cons!29490 (h!34910 (t!211289 tl!4068)) Nil!29490)) (t!211289 (t!211289 tl!4068)) tl!4068))))

(assert (= (and d!719636 res!1068152) b!2529016))

(assert (= (and d!719636 c!403931) b!2529022))

(assert (= (and d!719636 (not c!403931)) b!2529018))

(assert (= (and b!2529018 c!403932) b!2529021))

(assert (= (and b!2529018 (not c!403932)) b!2529023))

(assert (= (and d!719636 res!1068154) b!2529015))

(assert (= (and b!2529015 res!1068151) b!2529017))

(assert (= (and b!2529017 res!1068153) b!2529019))

(assert (= (and d!719636 (not res!1068150)) b!2529020))

(declare-fun m!2881385 () Bool)

(assert (=> b!2529016 m!2881385))

(declare-fun m!2881387 () Bool)

(assert (=> d!719636 m!2881387))

(assert (=> d!719636 m!2880491))

(declare-fun m!2881389 () Bool)

(assert (=> d!719636 m!2881389))

(assert (=> d!719636 m!2880421))

(declare-fun m!2881391 () Bool)

(assert (=> b!2529017 m!2881391))

(declare-fun m!2881393 () Bool)

(assert (=> b!2529017 m!2881393))

(assert (=> b!2529020 m!2881387))

(assert (=> b!2529019 m!2881391))

(declare-fun m!2881395 () Bool)

(assert (=> b!2529019 m!2881395))

(assert (=> b!2529023 m!2880491))

(declare-fun m!2881397 () Bool)

(assert (=> b!2529023 m!2881397))

(assert (=> b!2529023 m!2881397))

(declare-fun m!2881399 () Bool)

(assert (=> b!2529023 m!2881399))

(assert (=> b!2529023 m!2880491))

(declare-fun m!2881401 () Bool)

(assert (=> b!2529023 m!2881401))

(assert (=> b!2529023 m!2881397))

(declare-fun m!2881403 () Bool)

(assert (=> b!2529023 m!2881403))

(assert (=> b!2529015 m!2881391))

(declare-fun m!2881405 () Bool)

(assert (=> b!2529015 m!2881405))

(assert (=> b!2527835 d!719636))

(assert (=> b!2528135 d!719582))

(declare-fun d!719638 () Bool)

(declare-fun lt!901028 () Regex!7525)

(assert (=> d!719638 (validRegex!3151 lt!901028)))

(declare-fun e!1600689 () Regex!7525)

(assert (=> d!719638 (= lt!901028 e!1600689)))

(declare-fun c!403933 () Bool)

(assert (=> d!719638 (= c!403933 ((_ is Cons!29490) (t!211289 tl!4068)))))

(assert (=> d!719638 (validRegex!3151 (derivativeStep!2094 (derivativeStep!2094 r!27340 c!14016) (h!34910 tl!4068)))))

(assert (=> d!719638 (= (derivative!220 (derivativeStep!2094 (derivativeStep!2094 r!27340 c!14016) (h!34910 tl!4068)) (t!211289 tl!4068)) lt!901028)))

(declare-fun b!2529024 () Bool)

(assert (=> b!2529024 (= e!1600689 (derivative!220 (derivativeStep!2094 (derivativeStep!2094 (derivativeStep!2094 r!27340 c!14016) (h!34910 tl!4068)) (h!34910 (t!211289 tl!4068))) (t!211289 (t!211289 tl!4068))))))

(declare-fun b!2529025 () Bool)

(assert (=> b!2529025 (= e!1600689 (derivativeStep!2094 (derivativeStep!2094 r!27340 c!14016) (h!34910 tl!4068)))))

(assert (= (and d!719638 c!403933) b!2529024))

(assert (= (and d!719638 (not c!403933)) b!2529025))

(declare-fun m!2881407 () Bool)

(assert (=> d!719638 m!2881407))

(assert (=> d!719638 m!2880759))

(declare-fun m!2881409 () Bool)

(assert (=> d!719638 m!2881409))

(assert (=> b!2529024 m!2880759))

(declare-fun m!2881411 () Bool)

(assert (=> b!2529024 m!2881411))

(assert (=> b!2529024 m!2881411))

(declare-fun m!2881413 () Bool)

(assert (=> b!2529024 m!2881413))

(assert (=> b!2528194 d!719638))

(declare-fun b!2529026 () Bool)

(declare-fun e!1600692 () Regex!7525)

(declare-fun e!1600694 () Regex!7525)

(assert (=> b!2529026 (= e!1600692 e!1600694)))

(declare-fun c!403937 () Bool)

(assert (=> b!2529026 (= c!403937 ((_ is ElementMatch!7525) (derivativeStep!2094 r!27340 c!14016)))))

(declare-fun b!2529027 () Bool)

(declare-fun call!158257 () Regex!7525)

(declare-fun e!1600690 () Regex!7525)

(assert (=> b!2529027 (= e!1600690 (Union!7525 (Concat!12221 call!158257 (regTwo!15562 (derivativeStep!2094 r!27340 c!14016))) EmptyLang!7525))))

(declare-fun e!1600691 () Regex!7525)

(declare-fun call!158254 () Regex!7525)

(declare-fun b!2529028 () Bool)

(assert (=> b!2529028 (= e!1600691 (Concat!12221 call!158254 (derivativeStep!2094 r!27340 c!14016)))))

(declare-fun b!2529029 () Bool)

(declare-fun e!1600693 () Regex!7525)

(assert (=> b!2529029 (= e!1600693 e!1600691)))

(declare-fun c!403936 () Bool)

(assert (=> b!2529029 (= c!403936 ((_ is Star!7525) (derivativeStep!2094 r!27340 c!14016)))))

(declare-fun b!2529030 () Bool)

(declare-fun call!158255 () Regex!7525)

(declare-fun call!158256 () Regex!7525)

(assert (=> b!2529030 (= e!1600693 (Union!7525 call!158255 call!158256))))

(declare-fun bm!158249 () Bool)

(assert (=> bm!158249 (= call!158257 call!158254)))

(declare-fun bm!158250 () Bool)

(assert (=> bm!158250 (= call!158254 call!158256)))

(declare-fun b!2529031 () Bool)

(assert (=> b!2529031 (= e!1600690 (Union!7525 (Concat!12221 call!158257 (regTwo!15562 (derivativeStep!2094 r!27340 c!14016))) call!158255))))

(declare-fun c!403935 () Bool)

(declare-fun bm!158251 () Bool)

(assert (=> bm!158251 (= call!158256 (derivativeStep!2094 (ite c!403935 (regTwo!15563 (derivativeStep!2094 r!27340 c!14016)) (ite c!403936 (reg!7854 (derivativeStep!2094 r!27340 c!14016)) (regOne!15562 (derivativeStep!2094 r!27340 c!14016)))) (h!34910 tl!4068)))))

(declare-fun b!2529032 () Bool)

(assert (=> b!2529032 (= c!403935 ((_ is Union!7525) (derivativeStep!2094 r!27340 c!14016)))))

(assert (=> b!2529032 (= e!1600694 e!1600693)))

(declare-fun b!2529033 () Bool)

(assert (=> b!2529033 (= e!1600692 EmptyLang!7525)))

(declare-fun bm!158252 () Bool)

(assert (=> bm!158252 (= call!158255 (derivativeStep!2094 (ite c!403935 (regOne!15563 (derivativeStep!2094 r!27340 c!14016)) (regTwo!15562 (derivativeStep!2094 r!27340 c!14016))) (h!34910 tl!4068)))))

(declare-fun b!2529034 () Bool)

(declare-fun c!403938 () Bool)

(assert (=> b!2529034 (= c!403938 (nullable!2442 (regOne!15562 (derivativeStep!2094 r!27340 c!14016))))))

(assert (=> b!2529034 (= e!1600691 e!1600690)))

(declare-fun d!719640 () Bool)

(declare-fun lt!901029 () Regex!7525)

(assert (=> d!719640 (validRegex!3151 lt!901029)))

(assert (=> d!719640 (= lt!901029 e!1600692)))

(declare-fun c!403934 () Bool)

(assert (=> d!719640 (= c!403934 (or ((_ is EmptyExpr!7525) (derivativeStep!2094 r!27340 c!14016)) ((_ is EmptyLang!7525) (derivativeStep!2094 r!27340 c!14016))))))

(assert (=> d!719640 (validRegex!3151 (derivativeStep!2094 r!27340 c!14016))))

(assert (=> d!719640 (= (derivativeStep!2094 (derivativeStep!2094 r!27340 c!14016) (h!34910 tl!4068)) lt!901029)))

(declare-fun b!2529035 () Bool)

(assert (=> b!2529035 (= e!1600694 (ite (= (h!34910 tl!4068) (c!403591 (derivativeStep!2094 r!27340 c!14016))) EmptyExpr!7525 EmptyLang!7525))))

(assert (= (and d!719640 c!403934) b!2529033))

(assert (= (and d!719640 (not c!403934)) b!2529026))

(assert (= (and b!2529026 c!403937) b!2529035))

(assert (= (and b!2529026 (not c!403937)) b!2529032))

(assert (= (and b!2529032 c!403935) b!2529030))

(assert (= (and b!2529032 (not c!403935)) b!2529029))

(assert (= (and b!2529029 c!403936) b!2529028))

(assert (= (and b!2529029 (not c!403936)) b!2529034))

(assert (= (and b!2529034 c!403938) b!2529031))

(assert (= (and b!2529034 (not c!403938)) b!2529027))

(assert (= (or b!2529031 b!2529027) bm!158249))

(assert (= (or b!2529028 bm!158249) bm!158250))

(assert (= (or b!2529030 bm!158250) bm!158251))

(assert (= (or b!2529030 b!2529031) bm!158252))

(declare-fun m!2881415 () Bool)

(assert (=> bm!158251 m!2881415))

(declare-fun m!2881417 () Bool)

(assert (=> bm!158252 m!2881417))

(declare-fun m!2881419 () Bool)

(assert (=> b!2529034 m!2881419))

(declare-fun m!2881421 () Bool)

(assert (=> d!719640 m!2881421))

(assert (=> d!719640 m!2880391))

(assert (=> d!719640 m!2880757))

(assert (=> b!2528194 d!719640))

(declare-fun b!2529037 () Bool)

(declare-fun e!1600695 () Bool)

(assert (=> b!2529037 (= e!1600695 (not (= (head!5774 (tail!4051 (_1!17316 lt!900878))) (c!403591 (derivativeStep!2094 lt!900873 (head!5774 (_1!17316 lt!900878)))))))))

(declare-fun b!2529038 () Bool)

(declare-fun e!1600700 () Bool)

(declare-fun e!1600701 () Bool)

(assert (=> b!2529038 (= e!1600700 e!1600701)))

(declare-fun c!403941 () Bool)

(assert (=> b!2529038 (= c!403941 ((_ is EmptyLang!7525) (derivativeStep!2094 lt!900873 (head!5774 (_1!17316 lt!900878)))))))

(declare-fun bm!158253 () Bool)

(declare-fun call!158258 () Bool)

(assert (=> bm!158253 (= call!158258 (isEmpty!16968 (tail!4051 (_1!17316 lt!900878))))))

(declare-fun b!2529039 () Bool)

(declare-fun res!1068159 () Bool)

(declare-fun e!1600698 () Bool)

(assert (=> b!2529039 (=> (not res!1068159) (not e!1600698))))

(assert (=> b!2529039 (= res!1068159 (not call!158258))))

(declare-fun b!2529040 () Bool)

(declare-fun lt!901030 () Bool)

(assert (=> b!2529040 (= e!1600700 (= lt!901030 call!158258))))

(declare-fun b!2529041 () Bool)

(declare-fun e!1600699 () Bool)

(assert (=> b!2529041 (= e!1600699 (nullable!2442 (derivativeStep!2094 lt!900873 (head!5774 (_1!17316 lt!900878)))))))

(declare-fun b!2529042 () Bool)

(assert (=> b!2529042 (= e!1600698 (= (head!5774 (tail!4051 (_1!17316 lt!900878))) (c!403591 (derivativeStep!2094 lt!900873 (head!5774 (_1!17316 lt!900878))))))))

(declare-fun b!2529043 () Bool)

(declare-fun res!1068155 () Bool)

(assert (=> b!2529043 (=> res!1068155 e!1600695)))

(assert (=> b!2529043 (= res!1068155 (not (isEmpty!16968 (tail!4051 (tail!4051 (_1!17316 lt!900878))))))))

(declare-fun b!2529044 () Bool)

(assert (=> b!2529044 (= e!1600701 (not lt!901030))))

(declare-fun b!2529045 () Bool)

(assert (=> b!2529045 (= e!1600699 (matchR!3512 (derivativeStep!2094 (derivativeStep!2094 lt!900873 (head!5774 (_1!17316 lt!900878))) (head!5774 (tail!4051 (_1!17316 lt!900878)))) (tail!4051 (tail!4051 (_1!17316 lt!900878)))))))

(declare-fun b!2529046 () Bool)

(declare-fun e!1600696 () Bool)

(assert (=> b!2529046 (= e!1600696 e!1600695)))

(declare-fun res!1068162 () Bool)

(assert (=> b!2529046 (=> res!1068162 e!1600695)))

(assert (=> b!2529046 (= res!1068162 call!158258)))

(declare-fun b!2529047 () Bool)

(declare-fun res!1068158 () Bool)

(declare-fun e!1600697 () Bool)

(assert (=> b!2529047 (=> res!1068158 e!1600697)))

(assert (=> b!2529047 (= res!1068158 (not ((_ is ElementMatch!7525) (derivativeStep!2094 lt!900873 (head!5774 (_1!17316 lt!900878))))))))

(assert (=> b!2529047 (= e!1600701 e!1600697)))

(declare-fun d!719642 () Bool)

(assert (=> d!719642 e!1600700))

(declare-fun c!403939 () Bool)

(assert (=> d!719642 (= c!403939 ((_ is EmptyExpr!7525) (derivativeStep!2094 lt!900873 (head!5774 (_1!17316 lt!900878)))))))

(assert (=> d!719642 (= lt!901030 e!1600699)))

(declare-fun c!403940 () Bool)

(assert (=> d!719642 (= c!403940 (isEmpty!16968 (tail!4051 (_1!17316 lt!900878))))))

(assert (=> d!719642 (validRegex!3151 (derivativeStep!2094 lt!900873 (head!5774 (_1!17316 lt!900878))))))

(assert (=> d!719642 (= (matchR!3512 (derivativeStep!2094 lt!900873 (head!5774 (_1!17316 lt!900878))) (tail!4051 (_1!17316 lt!900878))) lt!901030)))

(declare-fun b!2529036 () Bool)

(declare-fun res!1068156 () Bool)

(assert (=> b!2529036 (=> res!1068156 e!1600697)))

(assert (=> b!2529036 (= res!1068156 e!1600698)))

(declare-fun res!1068157 () Bool)

(assert (=> b!2529036 (=> (not res!1068157) (not e!1600698))))

(assert (=> b!2529036 (= res!1068157 lt!901030)))

(declare-fun b!2529048 () Bool)

(assert (=> b!2529048 (= e!1600697 e!1600696)))

(declare-fun res!1068161 () Bool)

(assert (=> b!2529048 (=> (not res!1068161) (not e!1600696))))

(assert (=> b!2529048 (= res!1068161 (not lt!901030))))

(declare-fun b!2529049 () Bool)

(declare-fun res!1068160 () Bool)

(assert (=> b!2529049 (=> (not res!1068160) (not e!1600698))))

(assert (=> b!2529049 (= res!1068160 (isEmpty!16968 (tail!4051 (tail!4051 (_1!17316 lt!900878)))))))

(assert (= (and d!719642 c!403940) b!2529041))

(assert (= (and d!719642 (not c!403940)) b!2529045))

(assert (= (and d!719642 c!403939) b!2529040))

(assert (= (and d!719642 (not c!403939)) b!2529038))

(assert (= (and b!2529038 c!403941) b!2529044))

(assert (= (and b!2529038 (not c!403941)) b!2529047))

(assert (= (and b!2529047 (not res!1068158)) b!2529036))

(assert (= (and b!2529036 res!1068157) b!2529039))

(assert (= (and b!2529039 res!1068159) b!2529049))

(assert (= (and b!2529049 res!1068160) b!2529042))

(assert (= (and b!2529036 (not res!1068156)) b!2529048))

(assert (= (and b!2529048 res!1068161) b!2529046))

(assert (= (and b!2529046 (not res!1068162)) b!2529043))

(assert (= (and b!2529043 (not res!1068155)) b!2529037))

(assert (= (or b!2529040 b!2529039 b!2529046) bm!158253))

(assert (=> b!2529042 m!2880413))

(declare-fun m!2881423 () Bool)

(assert (=> b!2529042 m!2881423))

(assert (=> bm!158253 m!2880413))

(assert (=> bm!158253 m!2880415))

(assert (=> b!2529041 m!2880417))

(declare-fun m!2881425 () Bool)

(assert (=> b!2529041 m!2881425))

(assert (=> b!2529049 m!2880413))

(declare-fun m!2881427 () Bool)

(assert (=> b!2529049 m!2881427))

(assert (=> b!2529049 m!2881427))

(declare-fun m!2881429 () Bool)

(assert (=> b!2529049 m!2881429))

(assert (=> b!2529043 m!2880413))

(assert (=> b!2529043 m!2881427))

(assert (=> b!2529043 m!2881427))

(assert (=> b!2529043 m!2881429))

(assert (=> b!2529037 m!2880413))

(assert (=> b!2529037 m!2881423))

(assert (=> b!2529045 m!2880413))

(assert (=> b!2529045 m!2881423))

(assert (=> b!2529045 m!2880417))

(assert (=> b!2529045 m!2881423))

(declare-fun m!2881431 () Bool)

(assert (=> b!2529045 m!2881431))

(assert (=> b!2529045 m!2880413))

(assert (=> b!2529045 m!2881427))

(assert (=> b!2529045 m!2881431))

(assert (=> b!2529045 m!2881427))

(declare-fun m!2881433 () Bool)

(assert (=> b!2529045 m!2881433))

(assert (=> d!719642 m!2880413))

(assert (=> d!719642 m!2880415))

(assert (=> d!719642 m!2880417))

(declare-fun m!2881435 () Bool)

(assert (=> d!719642 m!2881435))

(assert (=> b!2527738 d!719642))

(declare-fun b!2529050 () Bool)

(declare-fun e!1600704 () Regex!7525)

(declare-fun e!1600706 () Regex!7525)

(assert (=> b!2529050 (= e!1600704 e!1600706)))

(declare-fun c!403945 () Bool)

(assert (=> b!2529050 (= c!403945 ((_ is ElementMatch!7525) lt!900873))))

(declare-fun b!2529051 () Bool)

(declare-fun e!1600702 () Regex!7525)

(declare-fun call!158262 () Regex!7525)

(assert (=> b!2529051 (= e!1600702 (Union!7525 (Concat!12221 call!158262 (regTwo!15562 lt!900873)) EmptyLang!7525))))

(declare-fun b!2529052 () Bool)

(declare-fun e!1600703 () Regex!7525)

(declare-fun call!158259 () Regex!7525)

(assert (=> b!2529052 (= e!1600703 (Concat!12221 call!158259 lt!900873))))

(declare-fun b!2529053 () Bool)

(declare-fun e!1600705 () Regex!7525)

(assert (=> b!2529053 (= e!1600705 e!1600703)))

(declare-fun c!403944 () Bool)

(assert (=> b!2529053 (= c!403944 ((_ is Star!7525) lt!900873))))

(declare-fun b!2529054 () Bool)

(declare-fun call!158260 () Regex!7525)

(declare-fun call!158261 () Regex!7525)

(assert (=> b!2529054 (= e!1600705 (Union!7525 call!158260 call!158261))))

(declare-fun bm!158254 () Bool)

(assert (=> bm!158254 (= call!158262 call!158259)))

(declare-fun bm!158255 () Bool)

(assert (=> bm!158255 (= call!158259 call!158261)))

(declare-fun b!2529055 () Bool)

(assert (=> b!2529055 (= e!1600702 (Union!7525 (Concat!12221 call!158262 (regTwo!15562 lt!900873)) call!158260))))

(declare-fun c!403943 () Bool)

(declare-fun bm!158256 () Bool)

(assert (=> bm!158256 (= call!158261 (derivativeStep!2094 (ite c!403943 (regTwo!15563 lt!900873) (ite c!403944 (reg!7854 lt!900873) (regOne!15562 lt!900873))) (head!5774 (_1!17316 lt!900878))))))

(declare-fun b!2529056 () Bool)

(assert (=> b!2529056 (= c!403943 ((_ is Union!7525) lt!900873))))

(assert (=> b!2529056 (= e!1600706 e!1600705)))

(declare-fun b!2529057 () Bool)

(assert (=> b!2529057 (= e!1600704 EmptyLang!7525)))

(declare-fun bm!158257 () Bool)

(assert (=> bm!158257 (= call!158260 (derivativeStep!2094 (ite c!403943 (regOne!15563 lt!900873) (regTwo!15562 lt!900873)) (head!5774 (_1!17316 lt!900878))))))

(declare-fun b!2529058 () Bool)

(declare-fun c!403946 () Bool)

(assert (=> b!2529058 (= c!403946 (nullable!2442 (regOne!15562 lt!900873)))))

(assert (=> b!2529058 (= e!1600703 e!1600702)))

(declare-fun d!719644 () Bool)

(declare-fun lt!901031 () Regex!7525)

(assert (=> d!719644 (validRegex!3151 lt!901031)))

(assert (=> d!719644 (= lt!901031 e!1600704)))

(declare-fun c!403942 () Bool)

(assert (=> d!719644 (= c!403942 (or ((_ is EmptyExpr!7525) lt!900873) ((_ is EmptyLang!7525) lt!900873)))))

(assert (=> d!719644 (validRegex!3151 lt!900873)))

(assert (=> d!719644 (= (derivativeStep!2094 lt!900873 (head!5774 (_1!17316 lt!900878))) lt!901031)))

(declare-fun b!2529059 () Bool)

(assert (=> b!2529059 (= e!1600706 (ite (= (head!5774 (_1!17316 lt!900878)) (c!403591 lt!900873)) EmptyExpr!7525 EmptyLang!7525))))

(assert (= (and d!719644 c!403942) b!2529057))

(assert (= (and d!719644 (not c!403942)) b!2529050))

(assert (= (and b!2529050 c!403945) b!2529059))

(assert (= (and b!2529050 (not c!403945)) b!2529056))

(assert (= (and b!2529056 c!403943) b!2529054))

(assert (= (and b!2529056 (not c!403943)) b!2529053))

(assert (= (and b!2529053 c!403944) b!2529052))

(assert (= (and b!2529053 (not c!403944)) b!2529058))

(assert (= (and b!2529058 c!403946) b!2529055))

(assert (= (and b!2529058 (not c!403946)) b!2529051))

(assert (= (or b!2529055 b!2529051) bm!158254))

(assert (= (or b!2529052 bm!158254) bm!158255))

(assert (= (or b!2529054 bm!158255) bm!158256))

(assert (= (or b!2529054 b!2529055) bm!158257))

(assert (=> bm!158256 m!2880407))

(declare-fun m!2881437 () Bool)

(assert (=> bm!158256 m!2881437))

(assert (=> bm!158257 m!2880407))

(declare-fun m!2881439 () Bool)

(assert (=> bm!158257 m!2881439))

(declare-fun m!2881441 () Bool)

(assert (=> b!2529058 m!2881441))

(declare-fun m!2881443 () Bool)

(assert (=> d!719644 m!2881443))

(assert (=> d!719644 m!2880421))

(assert (=> b!2527738 d!719644))

(assert (=> b!2527738 d!719514))

(assert (=> b!2527738 d!719612))

(declare-fun d!719646 () Bool)

(assert (=> d!719646 (= (head!5774 (Cons!29490 c!14016 (_1!17316 lt!900878))) (h!34910 (Cons!29490 c!14016 (_1!17316 lt!900878))))))

(assert (=> b!2527962 d!719646))

(assert (=> d!719344 d!719340))

(declare-fun b!2529060 () Bool)

(declare-fun e!1600708 () Bool)

(declare-fun e!1600707 () Bool)

(assert (=> b!2529060 (= e!1600708 e!1600707)))

(declare-fun c!403947 () Bool)

(assert (=> b!2529060 (= c!403947 ((_ is Union!7525) lt!900874))))

(declare-fun bm!158258 () Bool)

(declare-fun call!158265 () Bool)

(assert (=> bm!158258 (= call!158265 (validRegex!3151 (ite c!403947 (regOne!15563 lt!900874) (regTwo!15562 lt!900874))))))

(declare-fun b!2529061 () Bool)

(declare-fun e!1600712 () Bool)

(assert (=> b!2529061 (= e!1600712 e!1600708)))

(declare-fun c!403948 () Bool)

(assert (=> b!2529061 (= c!403948 ((_ is Star!7525) lt!900874))))

(declare-fun b!2529062 () Bool)

(declare-fun e!1600710 () Bool)

(declare-fun e!1600713 () Bool)

(assert (=> b!2529062 (= e!1600710 e!1600713)))

(declare-fun res!1068166 () Bool)

(assert (=> b!2529062 (=> (not res!1068166) (not e!1600713))))

(declare-fun call!158264 () Bool)

(assert (=> b!2529062 (= res!1068166 call!158264)))

(declare-fun d!719648 () Bool)

(declare-fun res!1068164 () Bool)

(assert (=> d!719648 (=> res!1068164 e!1600712)))

(assert (=> d!719648 (= res!1068164 ((_ is ElementMatch!7525) lt!900874))))

(assert (=> d!719648 (= (validRegex!3151 lt!900874) e!1600712)))

(declare-fun b!2529063 () Bool)

(declare-fun e!1600709 () Bool)

(declare-fun call!158263 () Bool)

(assert (=> b!2529063 (= e!1600709 call!158263)))

(declare-fun bm!158259 () Bool)

(assert (=> bm!158259 (= call!158263 (validRegex!3151 (ite c!403948 (reg!7854 lt!900874) (ite c!403947 (regTwo!15563 lt!900874) (regOne!15562 lt!900874)))))))

(declare-fun b!2529064 () Bool)

(declare-fun res!1068165 () Bool)

(declare-fun e!1600711 () Bool)

(assert (=> b!2529064 (=> (not res!1068165) (not e!1600711))))

(assert (=> b!2529064 (= res!1068165 call!158265)))

(assert (=> b!2529064 (= e!1600707 e!1600711)))

(declare-fun b!2529065 () Bool)

(assert (=> b!2529065 (= e!1600711 call!158264)))

(declare-fun b!2529066 () Bool)

(declare-fun res!1068163 () Bool)

(assert (=> b!2529066 (=> res!1068163 e!1600710)))

(assert (=> b!2529066 (= res!1068163 (not ((_ is Concat!12221) lt!900874)))))

(assert (=> b!2529066 (= e!1600707 e!1600710)))

(declare-fun b!2529067 () Bool)

(assert (=> b!2529067 (= e!1600713 call!158265)))

(declare-fun bm!158260 () Bool)

(assert (=> bm!158260 (= call!158264 call!158263)))

(declare-fun b!2529068 () Bool)

(assert (=> b!2529068 (= e!1600708 e!1600709)))

(declare-fun res!1068167 () Bool)

(assert (=> b!2529068 (= res!1068167 (not (nullable!2442 (reg!7854 lt!900874))))))

(assert (=> b!2529068 (=> (not res!1068167) (not e!1600709))))

(assert (= (and d!719648 (not res!1068164)) b!2529061))

(assert (= (and b!2529061 c!403948) b!2529068))

(assert (= (and b!2529061 (not c!403948)) b!2529060))

(assert (= (and b!2529068 res!1068167) b!2529063))

(assert (= (and b!2529060 c!403947) b!2529064))

(assert (= (and b!2529060 (not c!403947)) b!2529066))

(assert (= (and b!2529064 res!1068165) b!2529065))

(assert (= (and b!2529066 (not res!1068163)) b!2529062))

(assert (= (and b!2529062 res!1068166) b!2529067))

(assert (= (or b!2529064 b!2529067) bm!158258))

(assert (= (or b!2529065 b!2529062) bm!158260))

(assert (= (or b!2529063 bm!158260) bm!158259))

(declare-fun m!2881445 () Bool)

(assert (=> bm!158258 m!2881445))

(declare-fun m!2881447 () Bool)

(assert (=> bm!158259 m!2881447))

(declare-fun m!2881449 () Bool)

(assert (=> b!2529068 m!2881449))

(assert (=> d!719344 d!719648))

(assert (=> d!719344 d!719324))

(declare-fun d!719650 () Bool)

(assert (=> d!719650 (= (matchR!3512 lt!900874 tl!4068) (matchR!3512 (derivative!220 lt!900874 tl!4068) Nil!29490))))

(assert (=> d!719650 true))

(declare-fun _$108!311 () Unit!43275)

(assert (=> d!719650 (= (choose!15001 lt!900874 tl!4068) _$108!311)))

(declare-fun bs!469162 () Bool)

(assert (= bs!469162 d!719650))

(assert (=> bs!469162 m!2880371))

(assert (=> bs!469162 m!2880365))

(assert (=> bs!469162 m!2880365))

(assert (=> bs!469162 m!2880369))

(assert (=> d!719344 d!719650))

(assert (=> d!719344 d!719336))

(assert (=> d!719334 d!719312))

(declare-fun d!719652 () Bool)

(declare-fun e!1600716 () Bool)

(assert (=> d!719652 e!1600716))

(declare-fun res!1068170 () Bool)

(assert (=> d!719652 (=> res!1068170 e!1600716)))

(assert (=> d!719652 (= res!1068170 (matchR!3512 lt!900879 tl!4068))))

(assert (=> d!719652 true))

(declare-fun _$116!319 () Unit!43275)

(assert (=> d!719652 (= (choose!14999 lt!900879 EmptyLang!7525 tl!4068) _$116!319)))

(declare-fun b!2529071 () Bool)

(assert (=> b!2529071 (= e!1600716 (matchR!3512 EmptyLang!7525 tl!4068))))

(assert (= (and d!719652 (not res!1068170)) b!2529071))

(assert (=> d!719652 m!2880367))

(assert (=> b!2529071 m!2880389))

(assert (=> d!719334 d!719652))

(assert (=> d!719334 d!719628))

(assert (=> b!2527742 d!719610))

(assert (=> b!2527742 d!719612))

(assert (=> b!2527917 d!719518))

(assert (=> b!2527917 d!719520))

(declare-fun d!719654 () Bool)

(assert (=> d!719654 (= (nullable!2442 (derivative!220 lt!900874 tl!4068)) (nullableFct!683 (derivative!220 lt!900874 tl!4068)))))

(declare-fun bs!469163 () Bool)

(assert (= bs!469163 d!719654))

(assert (=> bs!469163 m!2880365))

(declare-fun m!2881451 () Bool)

(assert (=> bs!469163 m!2881451))

(assert (=> b!2528158 d!719654))

(declare-fun d!719656 () Bool)

(assert (=> d!719656 (= (nullable!2442 (regTwo!15562 r!27340)) (nullableFct!683 (regTwo!15562 r!27340)))))

(declare-fun bs!469164 () Bool)

(assert (= bs!469164 d!719656))

(declare-fun m!2881453 () Bool)

(assert (=> bs!469164 m!2881453))

(assert (=> b!2527915 d!719656))

(declare-fun b!2529073 () Bool)

(declare-fun e!1600717 () Bool)

(assert (=> b!2529073 (= e!1600717 (not (= (head!5774 (tail!4051 (_2!17316 lt!900878))) (c!403591 (derivativeStep!2094 (regTwo!15562 r!27340) (head!5774 (_2!17316 lt!900878)))))))))

(declare-fun b!2529074 () Bool)

(declare-fun e!1600722 () Bool)

(declare-fun e!1600723 () Bool)

(assert (=> b!2529074 (= e!1600722 e!1600723)))

(declare-fun c!403951 () Bool)

(assert (=> b!2529074 (= c!403951 ((_ is EmptyLang!7525) (derivativeStep!2094 (regTwo!15562 r!27340) (head!5774 (_2!17316 lt!900878)))))))

(declare-fun bm!158261 () Bool)

(declare-fun call!158266 () Bool)

(assert (=> bm!158261 (= call!158266 (isEmpty!16968 (tail!4051 (_2!17316 lt!900878))))))

(declare-fun b!2529075 () Bool)

(declare-fun res!1068175 () Bool)

(declare-fun e!1600720 () Bool)

(assert (=> b!2529075 (=> (not res!1068175) (not e!1600720))))

(assert (=> b!2529075 (= res!1068175 (not call!158266))))

(declare-fun b!2529076 () Bool)

(declare-fun lt!901032 () Bool)

(assert (=> b!2529076 (= e!1600722 (= lt!901032 call!158266))))

(declare-fun b!2529077 () Bool)

(declare-fun e!1600721 () Bool)

(assert (=> b!2529077 (= e!1600721 (nullable!2442 (derivativeStep!2094 (regTwo!15562 r!27340) (head!5774 (_2!17316 lt!900878)))))))

(declare-fun b!2529078 () Bool)

(assert (=> b!2529078 (= e!1600720 (= (head!5774 (tail!4051 (_2!17316 lt!900878))) (c!403591 (derivativeStep!2094 (regTwo!15562 r!27340) (head!5774 (_2!17316 lt!900878))))))))

(declare-fun b!2529079 () Bool)

(declare-fun res!1068171 () Bool)

(assert (=> b!2529079 (=> res!1068171 e!1600717)))

(assert (=> b!2529079 (= res!1068171 (not (isEmpty!16968 (tail!4051 (tail!4051 (_2!17316 lt!900878))))))))

(declare-fun b!2529080 () Bool)

(assert (=> b!2529080 (= e!1600723 (not lt!901032))))

(declare-fun b!2529081 () Bool)

(assert (=> b!2529081 (= e!1600721 (matchR!3512 (derivativeStep!2094 (derivativeStep!2094 (regTwo!15562 r!27340) (head!5774 (_2!17316 lt!900878))) (head!5774 (tail!4051 (_2!17316 lt!900878)))) (tail!4051 (tail!4051 (_2!17316 lt!900878)))))))

(declare-fun b!2529082 () Bool)

(declare-fun e!1600718 () Bool)

(assert (=> b!2529082 (= e!1600718 e!1600717)))

(declare-fun res!1068178 () Bool)

(assert (=> b!2529082 (=> res!1068178 e!1600717)))

(assert (=> b!2529082 (= res!1068178 call!158266)))

(declare-fun b!2529083 () Bool)

(declare-fun res!1068174 () Bool)

(declare-fun e!1600719 () Bool)

(assert (=> b!2529083 (=> res!1068174 e!1600719)))

(assert (=> b!2529083 (= res!1068174 (not ((_ is ElementMatch!7525) (derivativeStep!2094 (regTwo!15562 r!27340) (head!5774 (_2!17316 lt!900878))))))))

(assert (=> b!2529083 (= e!1600723 e!1600719)))

(declare-fun d!719658 () Bool)

(assert (=> d!719658 e!1600722))

(declare-fun c!403949 () Bool)

(assert (=> d!719658 (= c!403949 ((_ is EmptyExpr!7525) (derivativeStep!2094 (regTwo!15562 r!27340) (head!5774 (_2!17316 lt!900878)))))))

(assert (=> d!719658 (= lt!901032 e!1600721)))

(declare-fun c!403950 () Bool)

(assert (=> d!719658 (= c!403950 (isEmpty!16968 (tail!4051 (_2!17316 lt!900878))))))

(assert (=> d!719658 (validRegex!3151 (derivativeStep!2094 (regTwo!15562 r!27340) (head!5774 (_2!17316 lt!900878))))))

(assert (=> d!719658 (= (matchR!3512 (derivativeStep!2094 (regTwo!15562 r!27340) (head!5774 (_2!17316 lt!900878))) (tail!4051 (_2!17316 lt!900878))) lt!901032)))

(declare-fun b!2529072 () Bool)

(declare-fun res!1068172 () Bool)

(assert (=> b!2529072 (=> res!1068172 e!1600719)))

(assert (=> b!2529072 (= res!1068172 e!1600720)))

(declare-fun res!1068173 () Bool)

(assert (=> b!2529072 (=> (not res!1068173) (not e!1600720))))

(assert (=> b!2529072 (= res!1068173 lt!901032)))

(declare-fun b!2529084 () Bool)

(assert (=> b!2529084 (= e!1600719 e!1600718)))

(declare-fun res!1068177 () Bool)

(assert (=> b!2529084 (=> (not res!1068177) (not e!1600718))))

(assert (=> b!2529084 (= res!1068177 (not lt!901032))))

(declare-fun b!2529085 () Bool)

(declare-fun res!1068176 () Bool)

(assert (=> b!2529085 (=> (not res!1068176) (not e!1600720))))

(assert (=> b!2529085 (= res!1068176 (isEmpty!16968 (tail!4051 (tail!4051 (_2!17316 lt!900878)))))))

(assert (= (and d!719658 c!403950) b!2529077))

(assert (= (and d!719658 (not c!403950)) b!2529081))

(assert (= (and d!719658 c!403949) b!2529076))

(assert (= (and d!719658 (not c!403949)) b!2529074))

(assert (= (and b!2529074 c!403951) b!2529080))

(assert (= (and b!2529074 (not c!403951)) b!2529083))

(assert (= (and b!2529083 (not res!1068174)) b!2529072))

(assert (= (and b!2529072 res!1068173) b!2529075))

(assert (= (and b!2529075 res!1068175) b!2529085))

(assert (= (and b!2529085 res!1068176) b!2529078))

(assert (= (and b!2529072 (not res!1068172)) b!2529084))

(assert (= (and b!2529084 res!1068177) b!2529082))

(assert (= (and b!2529082 (not res!1068178)) b!2529079))

(assert (= (and b!2529079 (not res!1068171)) b!2529073))

(assert (= (or b!2529076 b!2529075 b!2529082) bm!158261))

(assert (=> b!2529078 m!2880565))

(declare-fun m!2881455 () Bool)

(assert (=> b!2529078 m!2881455))

(assert (=> bm!158261 m!2880565))

(assert (=> bm!158261 m!2880567))

(assert (=> b!2529077 m!2880569))

(declare-fun m!2881457 () Bool)

(assert (=> b!2529077 m!2881457))

(assert (=> b!2529085 m!2880565))

(declare-fun m!2881459 () Bool)

(assert (=> b!2529085 m!2881459))

(assert (=> b!2529085 m!2881459))

(declare-fun m!2881461 () Bool)

(assert (=> b!2529085 m!2881461))

(assert (=> b!2529079 m!2880565))

(assert (=> b!2529079 m!2881459))

(assert (=> b!2529079 m!2881459))

(assert (=> b!2529079 m!2881461))

(assert (=> b!2529073 m!2880565))

(assert (=> b!2529073 m!2881455))

(assert (=> b!2529081 m!2880565))

(assert (=> b!2529081 m!2881455))

(assert (=> b!2529081 m!2880569))

(assert (=> b!2529081 m!2881455))

(declare-fun m!2881463 () Bool)

(assert (=> b!2529081 m!2881463))

(assert (=> b!2529081 m!2880565))

(assert (=> b!2529081 m!2881459))

(assert (=> b!2529081 m!2881463))

(assert (=> b!2529081 m!2881459))

(declare-fun m!2881465 () Bool)

(assert (=> b!2529081 m!2881465))

(assert (=> d!719658 m!2880565))

(assert (=> d!719658 m!2880567))

(assert (=> d!719658 m!2880569))

(declare-fun m!2881467 () Bool)

(assert (=> d!719658 m!2881467))

(assert (=> b!2527919 d!719658))

(declare-fun b!2529086 () Bool)

(declare-fun e!1600726 () Regex!7525)

(declare-fun e!1600728 () Regex!7525)

(assert (=> b!2529086 (= e!1600726 e!1600728)))

(declare-fun c!403955 () Bool)

(assert (=> b!2529086 (= c!403955 ((_ is ElementMatch!7525) (regTwo!15562 r!27340)))))

(declare-fun b!2529087 () Bool)

(declare-fun e!1600724 () Regex!7525)

(declare-fun call!158270 () Regex!7525)

(assert (=> b!2529087 (= e!1600724 (Union!7525 (Concat!12221 call!158270 (regTwo!15562 (regTwo!15562 r!27340))) EmptyLang!7525))))

(declare-fun b!2529088 () Bool)

(declare-fun e!1600725 () Regex!7525)

(declare-fun call!158267 () Regex!7525)

(assert (=> b!2529088 (= e!1600725 (Concat!12221 call!158267 (regTwo!15562 r!27340)))))

(declare-fun b!2529089 () Bool)

(declare-fun e!1600727 () Regex!7525)

(assert (=> b!2529089 (= e!1600727 e!1600725)))

(declare-fun c!403954 () Bool)

(assert (=> b!2529089 (= c!403954 ((_ is Star!7525) (regTwo!15562 r!27340)))))

(declare-fun b!2529090 () Bool)

(declare-fun call!158268 () Regex!7525)

(declare-fun call!158269 () Regex!7525)

(assert (=> b!2529090 (= e!1600727 (Union!7525 call!158268 call!158269))))

(declare-fun bm!158262 () Bool)

(assert (=> bm!158262 (= call!158270 call!158267)))

(declare-fun bm!158263 () Bool)

(assert (=> bm!158263 (= call!158267 call!158269)))

(declare-fun b!2529091 () Bool)

(assert (=> b!2529091 (= e!1600724 (Union!7525 (Concat!12221 call!158270 (regTwo!15562 (regTwo!15562 r!27340))) call!158268))))

(declare-fun bm!158264 () Bool)

(declare-fun c!403953 () Bool)

(assert (=> bm!158264 (= call!158269 (derivativeStep!2094 (ite c!403953 (regTwo!15563 (regTwo!15562 r!27340)) (ite c!403954 (reg!7854 (regTwo!15562 r!27340)) (regOne!15562 (regTwo!15562 r!27340)))) (head!5774 (_2!17316 lt!900878))))))

(declare-fun b!2529092 () Bool)

(assert (=> b!2529092 (= c!403953 ((_ is Union!7525) (regTwo!15562 r!27340)))))

(assert (=> b!2529092 (= e!1600728 e!1600727)))

(declare-fun b!2529093 () Bool)

(assert (=> b!2529093 (= e!1600726 EmptyLang!7525)))

(declare-fun bm!158265 () Bool)

(assert (=> bm!158265 (= call!158268 (derivativeStep!2094 (ite c!403953 (regOne!15563 (regTwo!15562 r!27340)) (regTwo!15562 (regTwo!15562 r!27340))) (head!5774 (_2!17316 lt!900878))))))

(declare-fun b!2529094 () Bool)

(declare-fun c!403956 () Bool)

(assert (=> b!2529094 (= c!403956 (nullable!2442 (regOne!15562 (regTwo!15562 r!27340))))))

(assert (=> b!2529094 (= e!1600725 e!1600724)))

(declare-fun d!719660 () Bool)

(declare-fun lt!901033 () Regex!7525)

(assert (=> d!719660 (validRegex!3151 lt!901033)))

(assert (=> d!719660 (= lt!901033 e!1600726)))

(declare-fun c!403952 () Bool)

(assert (=> d!719660 (= c!403952 (or ((_ is EmptyExpr!7525) (regTwo!15562 r!27340)) ((_ is EmptyLang!7525) (regTwo!15562 r!27340))))))

(assert (=> d!719660 (validRegex!3151 (regTwo!15562 r!27340))))

(assert (=> d!719660 (= (derivativeStep!2094 (regTwo!15562 r!27340) (head!5774 (_2!17316 lt!900878))) lt!901033)))

(declare-fun b!2529095 () Bool)

(assert (=> b!2529095 (= e!1600728 (ite (= (head!5774 (_2!17316 lt!900878)) (c!403591 (regTwo!15562 r!27340))) EmptyExpr!7525 EmptyLang!7525))))

(assert (= (and d!719660 c!403952) b!2529093))

(assert (= (and d!719660 (not c!403952)) b!2529086))

(assert (= (and b!2529086 c!403955) b!2529095))

(assert (= (and b!2529086 (not c!403955)) b!2529092))

(assert (= (and b!2529092 c!403953) b!2529090))

(assert (= (and b!2529092 (not c!403953)) b!2529089))

(assert (= (and b!2529089 c!403954) b!2529088))

(assert (= (and b!2529089 (not c!403954)) b!2529094))

(assert (= (and b!2529094 c!403956) b!2529091))

(assert (= (and b!2529094 (not c!403956)) b!2529087))

(assert (= (or b!2529091 b!2529087) bm!158262))

(assert (= (or b!2529088 bm!158262) bm!158263))

(assert (= (or b!2529090 bm!158263) bm!158264))

(assert (= (or b!2529090 b!2529091) bm!158265))

(assert (=> bm!158264 m!2880559))

(declare-fun m!2881469 () Bool)

(assert (=> bm!158264 m!2881469))

(assert (=> bm!158265 m!2880559))

(declare-fun m!2881471 () Bool)

(assert (=> bm!158265 m!2881471))

(declare-fun m!2881473 () Bool)

(assert (=> b!2529094 m!2881473))

(declare-fun m!2881475 () Bool)

(assert (=> d!719660 m!2881475))

(assert (=> d!719660 m!2880573))

(assert (=> b!2527919 d!719660))

(declare-fun d!719662 () Bool)

(assert (=> d!719662 (= (head!5774 (_2!17316 lt!900878)) (h!34910 (_2!17316 lt!900878)))))

(assert (=> b!2527919 d!719662))

(assert (=> b!2527919 d!719520))

(declare-fun b!2529096 () Bool)

(declare-fun e!1600733 () Bool)

(declare-fun e!1600729 () Bool)

(assert (=> b!2529096 (= e!1600733 e!1600729)))

(declare-fun c!403957 () Bool)

(assert (=> b!2529096 (= c!403957 ((_ is Union!7525) (regOne!15562 r!27340)))))

(declare-fun bm!158266 () Bool)

(declare-fun call!158271 () Bool)

(assert (=> bm!158266 (= call!158271 (nullable!2442 (ite c!403957 (regTwo!15563 (regOne!15562 r!27340)) (regOne!15562 (regOne!15562 r!27340)))))))

(declare-fun d!719664 () Bool)

(declare-fun res!1068180 () Bool)

(declare-fun e!1600732 () Bool)

(assert (=> d!719664 (=> res!1068180 e!1600732)))

(assert (=> d!719664 (= res!1068180 ((_ is EmptyExpr!7525) (regOne!15562 r!27340)))))

(assert (=> d!719664 (= (nullableFct!683 (regOne!15562 r!27340)) e!1600732)))

(declare-fun bm!158267 () Bool)

(declare-fun call!158272 () Bool)

(assert (=> bm!158267 (= call!158272 (nullable!2442 (ite c!403957 (regOne!15563 (regOne!15562 r!27340)) (regTwo!15562 (regOne!15562 r!27340)))))))

(declare-fun b!2529097 () Bool)

(declare-fun e!1600730 () Bool)

(assert (=> b!2529097 (= e!1600732 e!1600730)))

(declare-fun res!1068179 () Bool)

(assert (=> b!2529097 (=> (not res!1068179) (not e!1600730))))

(assert (=> b!2529097 (= res!1068179 (and (not ((_ is EmptyLang!7525) (regOne!15562 r!27340))) (not ((_ is ElementMatch!7525) (regOne!15562 r!27340)))))))

(declare-fun b!2529098 () Bool)

(assert (=> b!2529098 (= e!1600730 e!1600733)))

(declare-fun res!1068181 () Bool)

(assert (=> b!2529098 (=> res!1068181 e!1600733)))

(assert (=> b!2529098 (= res!1068181 ((_ is Star!7525) (regOne!15562 r!27340)))))

(declare-fun b!2529099 () Bool)

(declare-fun e!1600734 () Bool)

(assert (=> b!2529099 (= e!1600729 e!1600734)))

(declare-fun res!1068182 () Bool)

(assert (=> b!2529099 (= res!1068182 call!158272)))

(assert (=> b!2529099 (=> res!1068182 e!1600734)))

(declare-fun b!2529100 () Bool)

(declare-fun e!1600731 () Bool)

(assert (=> b!2529100 (= e!1600729 e!1600731)))

(declare-fun res!1068183 () Bool)

(assert (=> b!2529100 (= res!1068183 call!158271)))

(assert (=> b!2529100 (=> (not res!1068183) (not e!1600731))))

(declare-fun b!2529101 () Bool)

(assert (=> b!2529101 (= e!1600731 call!158272)))

(declare-fun b!2529102 () Bool)

(assert (=> b!2529102 (= e!1600734 call!158271)))

(assert (= (and d!719664 (not res!1068180)) b!2529097))

(assert (= (and b!2529097 res!1068179) b!2529098))

(assert (= (and b!2529098 (not res!1068181)) b!2529096))

(assert (= (and b!2529096 c!403957) b!2529099))

(assert (= (and b!2529096 (not c!403957)) b!2529100))

(assert (= (and b!2529099 (not res!1068182)) b!2529102))

(assert (= (and b!2529100 res!1068183) b!2529101))

(assert (= (or b!2529102 b!2529100) bm!158266))

(assert (= (or b!2529099 b!2529101) bm!158267))

(declare-fun m!2881477 () Bool)

(assert (=> bm!158266 m!2881477))

(declare-fun m!2881479 () Bool)

(assert (=> bm!158267 m!2881479))

(assert (=> d!719348 d!719664))

(assert (=> b!2528160 d!719516))

(assert (=> b!2528160 d!719512))

(declare-fun d!719666 () Bool)

(assert (=> d!719666 (= (nullable!2442 lt!900879) (nullableFct!683 lt!900879))))

(declare-fun bs!469165 () Bool)

(assert (= bs!469165 d!719666))

(declare-fun m!2881481 () Bool)

(assert (=> bs!469165 m!2881481))

(assert (=> b!2527975 d!719666))

(declare-fun b!2529103 () Bool)

(declare-fun e!1600736 () Bool)

(declare-fun e!1600735 () Bool)

(assert (=> b!2529103 (= e!1600736 e!1600735)))

(declare-fun c!403958 () Bool)

(assert (=> b!2529103 (= c!403958 ((_ is Union!7525) lt!900955))))

(declare-fun bm!158268 () Bool)

(declare-fun call!158275 () Bool)

(assert (=> bm!158268 (= call!158275 (validRegex!3151 (ite c!403958 (regOne!15563 lt!900955) (regTwo!15562 lt!900955))))))

(declare-fun b!2529104 () Bool)

(declare-fun e!1600740 () Bool)

(assert (=> b!2529104 (= e!1600740 e!1600736)))

(declare-fun c!403959 () Bool)

(assert (=> b!2529104 (= c!403959 ((_ is Star!7525) lt!900955))))

(declare-fun b!2529105 () Bool)

(declare-fun e!1600738 () Bool)

(declare-fun e!1600741 () Bool)

(assert (=> b!2529105 (= e!1600738 e!1600741)))

(declare-fun res!1068187 () Bool)

(assert (=> b!2529105 (=> (not res!1068187) (not e!1600741))))

(declare-fun call!158274 () Bool)

(assert (=> b!2529105 (= res!1068187 call!158274)))

(declare-fun d!719668 () Bool)

(declare-fun res!1068185 () Bool)

(assert (=> d!719668 (=> res!1068185 e!1600740)))

(assert (=> d!719668 (= res!1068185 ((_ is ElementMatch!7525) lt!900955))))

(assert (=> d!719668 (= (validRegex!3151 lt!900955) e!1600740)))

(declare-fun b!2529106 () Bool)

(declare-fun e!1600737 () Bool)

(declare-fun call!158273 () Bool)

(assert (=> b!2529106 (= e!1600737 call!158273)))

(declare-fun bm!158269 () Bool)

(assert (=> bm!158269 (= call!158273 (validRegex!3151 (ite c!403959 (reg!7854 lt!900955) (ite c!403958 (regTwo!15563 lt!900955) (regOne!15562 lt!900955)))))))

(declare-fun b!2529107 () Bool)

(declare-fun res!1068186 () Bool)

(declare-fun e!1600739 () Bool)

(assert (=> b!2529107 (=> (not res!1068186) (not e!1600739))))

(assert (=> b!2529107 (= res!1068186 call!158275)))

(assert (=> b!2529107 (= e!1600735 e!1600739)))

(declare-fun b!2529108 () Bool)

(assert (=> b!2529108 (= e!1600739 call!158274)))

(declare-fun b!2529109 () Bool)

(declare-fun res!1068184 () Bool)

(assert (=> b!2529109 (=> res!1068184 e!1600738)))

(assert (=> b!2529109 (= res!1068184 (not ((_ is Concat!12221) lt!900955)))))

(assert (=> b!2529109 (= e!1600735 e!1600738)))

(declare-fun b!2529110 () Bool)

(assert (=> b!2529110 (= e!1600741 call!158275)))

(declare-fun bm!158270 () Bool)

(assert (=> bm!158270 (= call!158274 call!158273)))

(declare-fun b!2529111 () Bool)

(assert (=> b!2529111 (= e!1600736 e!1600737)))

(declare-fun res!1068188 () Bool)

(assert (=> b!2529111 (= res!1068188 (not (nullable!2442 (reg!7854 lt!900955))))))

(assert (=> b!2529111 (=> (not res!1068188) (not e!1600737))))

(assert (= (and d!719668 (not res!1068185)) b!2529104))

(assert (= (and b!2529104 c!403959) b!2529111))

(assert (= (and b!2529104 (not c!403959)) b!2529103))

(assert (= (and b!2529111 res!1068188) b!2529106))

(assert (= (and b!2529103 c!403958) b!2529107))

(assert (= (and b!2529103 (not c!403958)) b!2529109))

(assert (= (and b!2529107 res!1068186) b!2529108))

(assert (= (and b!2529109 (not res!1068184)) b!2529105))

(assert (= (and b!2529105 res!1068187) b!2529110))

(assert (= (or b!2529107 b!2529110) bm!158268))

(assert (= (or b!2529108 b!2529105) bm!158270))

(assert (= (or b!2529106 bm!158270) bm!158269))

(declare-fun m!2881483 () Bool)

(assert (=> bm!158268 m!2881483))

(declare-fun m!2881485 () Bool)

(assert (=> bm!158269 m!2881485))

(declare-fun m!2881487 () Bool)

(assert (=> b!2529111 m!2881487))

(assert (=> d!719338 d!719668))

(assert (=> d!719338 d!719582))

(declare-fun d!719670 () Bool)

(assert (=> d!719670 (= (isDefined!4716 (findConcatSeparation!916 lt!900873 (regTwo!15562 r!27340) Nil!29490 tl!4068 tl!4068)) (not (isEmpty!16969 (findConcatSeparation!916 lt!900873 (regTwo!15562 r!27340) Nil!29490 tl!4068 tl!4068))))))

(declare-fun bs!469166 () Bool)

(assert (= bs!469166 d!719670))

(assert (=> bs!469166 m!2880387))

(declare-fun m!2881489 () Bool)

(assert (=> bs!469166 m!2881489))

(assert (=> d!719274 d!719670))

(assert (=> d!719274 d!719280))

(declare-fun d!719672 () Bool)

(assert (=> d!719672 (isDefined!4716 (findConcatSeparation!916 lt!900873 (regTwo!15562 r!27340) Nil!29490 tl!4068 tl!4068))))

(assert (=> d!719672 true))

(declare-fun _$122!319 () Unit!43275)

(assert (=> d!719672 (= (choose!14997 lt!900873 (regTwo!15562 r!27340) tl!4068) _$122!319)))

(declare-fun bs!469167 () Bool)

(assert (= bs!469167 d!719672))

(assert (=> bs!469167 m!2880387))

(assert (=> bs!469167 m!2880387))

(assert (=> bs!469167 m!2880429))

(assert (=> d!719274 d!719672))

(assert (=> d!719274 d!719482))

(assert (=> d!719342 d!719338))

(declare-fun d!719674 () Bool)

(assert (=> d!719674 (= (derivative!220 EmptyLang!7525 tl!4068) EmptyLang!7525)))

(assert (=> d!719674 true))

(declare-fun _$134!150 () Unit!43275)

(assert (=> d!719674 (= (choose!15000 EmptyLang!7525 tl!4068) _$134!150)))

(declare-fun bs!469168 () Bool)

(assert (= bs!469168 d!719674))

(assert (=> bs!469168 m!2880363))

(assert (=> d!719342 d!719674))

(declare-fun b!2529112 () Bool)

(declare-fun e!1600743 () Bool)

(declare-fun e!1600742 () Bool)

(assert (=> b!2529112 (= e!1600743 e!1600742)))

(declare-fun c!403960 () Bool)

(assert (=> b!2529112 (= c!403960 ((_ is Union!7525) (ite c!403718 (regOne!15563 r!27340) (regTwo!15562 r!27340))))))

(declare-fun call!158278 () Bool)

(declare-fun bm!158271 () Bool)

(assert (=> bm!158271 (= call!158278 (validRegex!3151 (ite c!403960 (regOne!15563 (ite c!403718 (regOne!15563 r!27340) (regTwo!15562 r!27340))) (regTwo!15562 (ite c!403718 (regOne!15563 r!27340) (regTwo!15562 r!27340))))))))

(declare-fun b!2529113 () Bool)

(declare-fun e!1600747 () Bool)

(assert (=> b!2529113 (= e!1600747 e!1600743)))

(declare-fun c!403961 () Bool)

(assert (=> b!2529113 (= c!403961 ((_ is Star!7525) (ite c!403718 (regOne!15563 r!27340) (regTwo!15562 r!27340))))))

(declare-fun b!2529114 () Bool)

(declare-fun e!1600745 () Bool)

(declare-fun e!1600748 () Bool)

(assert (=> b!2529114 (= e!1600745 e!1600748)))

(declare-fun res!1068192 () Bool)

(assert (=> b!2529114 (=> (not res!1068192) (not e!1600748))))

(declare-fun call!158277 () Bool)

(assert (=> b!2529114 (= res!1068192 call!158277)))

(declare-fun d!719676 () Bool)

(declare-fun res!1068190 () Bool)

(assert (=> d!719676 (=> res!1068190 e!1600747)))

(assert (=> d!719676 (= res!1068190 ((_ is ElementMatch!7525) (ite c!403718 (regOne!15563 r!27340) (regTwo!15562 r!27340))))))

(assert (=> d!719676 (= (validRegex!3151 (ite c!403718 (regOne!15563 r!27340) (regTwo!15562 r!27340))) e!1600747)))

(declare-fun b!2529115 () Bool)

(declare-fun e!1600744 () Bool)

(declare-fun call!158276 () Bool)

(assert (=> b!2529115 (= e!1600744 call!158276)))

(declare-fun bm!158272 () Bool)

(assert (=> bm!158272 (= call!158276 (validRegex!3151 (ite c!403961 (reg!7854 (ite c!403718 (regOne!15563 r!27340) (regTwo!15562 r!27340))) (ite c!403960 (regTwo!15563 (ite c!403718 (regOne!15563 r!27340) (regTwo!15562 r!27340))) (regOne!15562 (ite c!403718 (regOne!15563 r!27340) (regTwo!15562 r!27340)))))))))

(declare-fun b!2529116 () Bool)

(declare-fun res!1068191 () Bool)

(declare-fun e!1600746 () Bool)

(assert (=> b!2529116 (=> (not res!1068191) (not e!1600746))))

(assert (=> b!2529116 (= res!1068191 call!158278)))

(assert (=> b!2529116 (= e!1600742 e!1600746)))

(declare-fun b!2529117 () Bool)

(assert (=> b!2529117 (= e!1600746 call!158277)))

(declare-fun b!2529118 () Bool)

(declare-fun res!1068189 () Bool)

(assert (=> b!2529118 (=> res!1068189 e!1600745)))

(assert (=> b!2529118 (= res!1068189 (not ((_ is Concat!12221) (ite c!403718 (regOne!15563 r!27340) (regTwo!15562 r!27340)))))))

(assert (=> b!2529118 (= e!1600742 e!1600745)))

(declare-fun b!2529119 () Bool)

(assert (=> b!2529119 (= e!1600748 call!158278)))

(declare-fun bm!158273 () Bool)

(assert (=> bm!158273 (= call!158277 call!158276)))

(declare-fun b!2529120 () Bool)

(assert (=> b!2529120 (= e!1600743 e!1600744)))

(declare-fun res!1068193 () Bool)

(assert (=> b!2529120 (= res!1068193 (not (nullable!2442 (reg!7854 (ite c!403718 (regOne!15563 r!27340) (regTwo!15562 r!27340))))))))

(assert (=> b!2529120 (=> (not res!1068193) (not e!1600744))))

(assert (= (and d!719676 (not res!1068190)) b!2529113))

(assert (= (and b!2529113 c!403961) b!2529120))

(assert (= (and b!2529113 (not c!403961)) b!2529112))

(assert (= (and b!2529120 res!1068193) b!2529115))

(assert (= (and b!2529112 c!403960) b!2529116))

(assert (= (and b!2529112 (not c!403960)) b!2529118))

(assert (= (and b!2529116 res!1068191) b!2529117))

(assert (= (and b!2529118 (not res!1068189)) b!2529114))

(assert (= (and b!2529114 res!1068192) b!2529119))

(assert (= (or b!2529116 b!2529119) bm!158271))

(assert (= (or b!2529117 b!2529114) bm!158273))

(assert (= (or b!2529115 bm!158273) bm!158272))

(declare-fun m!2881491 () Bool)

(assert (=> bm!158271 m!2881491))

(declare-fun m!2881493 () Bool)

(assert (=> bm!158272 m!2881493))

(declare-fun m!2881495 () Bool)

(assert (=> b!2529120 m!2881495))

(assert (=> bm!158078 d!719676))

(assert (=> b!2527955 d!719486))

(assert (=> b!2527955 d!719488))

(assert (=> b!2527976 d!719502))

(declare-fun b!2529121 () Bool)

(declare-fun e!1600751 () Regex!7525)

(declare-fun e!1600753 () Regex!7525)

(assert (=> b!2529121 (= e!1600751 e!1600753)))

(declare-fun c!403965 () Bool)

(assert (=> b!2529121 (= c!403965 ((_ is ElementMatch!7525) (ite c!403691 (regOne!15563 (regOne!15562 r!27340)) (regTwo!15562 (regOne!15562 r!27340)))))))

(declare-fun b!2529122 () Bool)

(declare-fun call!158282 () Regex!7525)

(declare-fun e!1600749 () Regex!7525)

(assert (=> b!2529122 (= e!1600749 (Union!7525 (Concat!12221 call!158282 (regTwo!15562 (ite c!403691 (regOne!15563 (regOne!15562 r!27340)) (regTwo!15562 (regOne!15562 r!27340))))) EmptyLang!7525))))

(declare-fun b!2529123 () Bool)

(declare-fun e!1600750 () Regex!7525)

(declare-fun call!158279 () Regex!7525)

(assert (=> b!2529123 (= e!1600750 (Concat!12221 call!158279 (ite c!403691 (regOne!15563 (regOne!15562 r!27340)) (regTwo!15562 (regOne!15562 r!27340)))))))

(declare-fun b!2529124 () Bool)

(declare-fun e!1600752 () Regex!7525)

(assert (=> b!2529124 (= e!1600752 e!1600750)))

(declare-fun c!403964 () Bool)

(assert (=> b!2529124 (= c!403964 ((_ is Star!7525) (ite c!403691 (regOne!15563 (regOne!15562 r!27340)) (regTwo!15562 (regOne!15562 r!27340)))))))

(declare-fun b!2529125 () Bool)

(declare-fun call!158280 () Regex!7525)

(declare-fun call!158281 () Regex!7525)

(assert (=> b!2529125 (= e!1600752 (Union!7525 call!158280 call!158281))))

(declare-fun bm!158274 () Bool)

(assert (=> bm!158274 (= call!158282 call!158279)))

(declare-fun bm!158275 () Bool)

(assert (=> bm!158275 (= call!158279 call!158281)))

(declare-fun b!2529126 () Bool)

(assert (=> b!2529126 (= e!1600749 (Union!7525 (Concat!12221 call!158282 (regTwo!15562 (ite c!403691 (regOne!15563 (regOne!15562 r!27340)) (regTwo!15562 (regOne!15562 r!27340))))) call!158280))))

(declare-fun bm!158276 () Bool)

(declare-fun c!403963 () Bool)

(assert (=> bm!158276 (= call!158281 (derivativeStep!2094 (ite c!403963 (regTwo!15563 (ite c!403691 (regOne!15563 (regOne!15562 r!27340)) (regTwo!15562 (regOne!15562 r!27340)))) (ite c!403964 (reg!7854 (ite c!403691 (regOne!15563 (regOne!15562 r!27340)) (regTwo!15562 (regOne!15562 r!27340)))) (regOne!15562 (ite c!403691 (regOne!15563 (regOne!15562 r!27340)) (regTwo!15562 (regOne!15562 r!27340)))))) c!14016))))

(declare-fun b!2529127 () Bool)

(assert (=> b!2529127 (= c!403963 ((_ is Union!7525) (ite c!403691 (regOne!15563 (regOne!15562 r!27340)) (regTwo!15562 (regOne!15562 r!27340)))))))

(assert (=> b!2529127 (= e!1600753 e!1600752)))

(declare-fun b!2529128 () Bool)

(assert (=> b!2529128 (= e!1600751 EmptyLang!7525)))

(declare-fun bm!158277 () Bool)

(assert (=> bm!158277 (= call!158280 (derivativeStep!2094 (ite c!403963 (regOne!15563 (ite c!403691 (regOne!15563 (regOne!15562 r!27340)) (regTwo!15562 (regOne!15562 r!27340)))) (regTwo!15562 (ite c!403691 (regOne!15563 (regOne!15562 r!27340)) (regTwo!15562 (regOne!15562 r!27340))))) c!14016))))

(declare-fun b!2529129 () Bool)

(declare-fun c!403966 () Bool)

(assert (=> b!2529129 (= c!403966 (nullable!2442 (regOne!15562 (ite c!403691 (regOne!15563 (regOne!15562 r!27340)) (regTwo!15562 (regOne!15562 r!27340))))))))

(assert (=> b!2529129 (= e!1600750 e!1600749)))

(declare-fun d!719678 () Bool)

(declare-fun lt!901034 () Regex!7525)

(assert (=> d!719678 (validRegex!3151 lt!901034)))

(assert (=> d!719678 (= lt!901034 e!1600751)))

(declare-fun c!403962 () Bool)

(assert (=> d!719678 (= c!403962 (or ((_ is EmptyExpr!7525) (ite c!403691 (regOne!15563 (regOne!15562 r!27340)) (regTwo!15562 (regOne!15562 r!27340)))) ((_ is EmptyLang!7525) (ite c!403691 (regOne!15563 (regOne!15562 r!27340)) (regTwo!15562 (regOne!15562 r!27340))))))))

(assert (=> d!719678 (validRegex!3151 (ite c!403691 (regOne!15563 (regOne!15562 r!27340)) (regTwo!15562 (regOne!15562 r!27340))))))

(assert (=> d!719678 (= (derivativeStep!2094 (ite c!403691 (regOne!15563 (regOne!15562 r!27340)) (regTwo!15562 (regOne!15562 r!27340))) c!14016) lt!901034)))

(declare-fun b!2529130 () Bool)

(assert (=> b!2529130 (= e!1600753 (ite (= c!14016 (c!403591 (ite c!403691 (regOne!15563 (regOne!15562 r!27340)) (regTwo!15562 (regOne!15562 r!27340))))) EmptyExpr!7525 EmptyLang!7525))))

(assert (= (and d!719678 c!403962) b!2529128))

(assert (= (and d!719678 (not c!403962)) b!2529121))

(assert (= (and b!2529121 c!403965) b!2529130))

(assert (= (and b!2529121 (not c!403965)) b!2529127))

(assert (= (and b!2529127 c!403963) b!2529125))

(assert (= (and b!2529127 (not c!403963)) b!2529124))

(assert (= (and b!2529124 c!403964) b!2529123))

(assert (= (and b!2529124 (not c!403964)) b!2529129))

(assert (= (and b!2529129 c!403966) b!2529126))

(assert (= (and b!2529129 (not c!403966)) b!2529122))

(assert (= (or b!2529126 b!2529122) bm!158274))

(assert (= (or b!2529123 bm!158274) bm!158275))

(assert (= (or b!2529125 bm!158275) bm!158276))

(assert (= (or b!2529125 b!2529126) bm!158277))

(declare-fun m!2881497 () Bool)

(assert (=> bm!158276 m!2881497))

(declare-fun m!2881499 () Bool)

(assert (=> bm!158277 m!2881499))

(declare-fun m!2881501 () Bool)

(assert (=> b!2529129 m!2881501))

(declare-fun m!2881503 () Bool)

(assert (=> d!719678 m!2881503))

(declare-fun m!2881505 () Bool)

(assert (=> d!719678 m!2881505))

(assert (=> bm!158067 d!719678))

(declare-fun d!719680 () Bool)

(assert (=> d!719680 (= (nullable!2442 lt!900874) (nullableFct!683 lt!900874))))

(declare-fun bs!469169 () Bool)

(assert (= bs!469169 d!719680))

(declare-fun m!2881507 () Bool)

(assert (=> bs!469169 m!2881507))

(assert (=> b!2528142 d!719680))

(assert (=> b!2527943 d!719502))

(assert (=> b!2528144 d!719486))

(assert (=> b!2528144 d!719488))

(declare-fun b!2529132 () Bool)

(declare-fun e!1600754 () Bool)

(assert (=> b!2529132 (= e!1600754 (not (= (head!5774 (_1!17316 (get!9235 lt!900911))) (c!403591 lt!900873))))))

(declare-fun b!2529133 () Bool)

(declare-fun e!1600759 () Bool)

(declare-fun e!1600760 () Bool)

(assert (=> b!2529133 (= e!1600759 e!1600760)))

(declare-fun c!403969 () Bool)

(assert (=> b!2529133 (= c!403969 ((_ is EmptyLang!7525) lt!900873))))

(declare-fun bm!158278 () Bool)

(declare-fun call!158283 () Bool)

(assert (=> bm!158278 (= call!158283 (isEmpty!16968 (_1!17316 (get!9235 lt!900911))))))

(declare-fun b!2529134 () Bool)

(declare-fun res!1068198 () Bool)

(declare-fun e!1600757 () Bool)

(assert (=> b!2529134 (=> (not res!1068198) (not e!1600757))))

(assert (=> b!2529134 (= res!1068198 (not call!158283))))

(declare-fun b!2529135 () Bool)

(declare-fun lt!901035 () Bool)

(assert (=> b!2529135 (= e!1600759 (= lt!901035 call!158283))))

(declare-fun b!2529136 () Bool)

(declare-fun e!1600758 () Bool)

(assert (=> b!2529136 (= e!1600758 (nullable!2442 lt!900873))))

(declare-fun b!2529137 () Bool)

(assert (=> b!2529137 (= e!1600757 (= (head!5774 (_1!17316 (get!9235 lt!900911))) (c!403591 lt!900873)))))

(declare-fun b!2529138 () Bool)

(declare-fun res!1068194 () Bool)

(assert (=> b!2529138 (=> res!1068194 e!1600754)))

(assert (=> b!2529138 (= res!1068194 (not (isEmpty!16968 (tail!4051 (_1!17316 (get!9235 lt!900911))))))))

(declare-fun b!2529139 () Bool)

(assert (=> b!2529139 (= e!1600760 (not lt!901035))))

(declare-fun b!2529140 () Bool)

(assert (=> b!2529140 (= e!1600758 (matchR!3512 (derivativeStep!2094 lt!900873 (head!5774 (_1!17316 (get!9235 lt!900911)))) (tail!4051 (_1!17316 (get!9235 lt!900911)))))))

(declare-fun b!2529141 () Bool)

(declare-fun e!1600755 () Bool)

(assert (=> b!2529141 (= e!1600755 e!1600754)))

(declare-fun res!1068201 () Bool)

(assert (=> b!2529141 (=> res!1068201 e!1600754)))

(assert (=> b!2529141 (= res!1068201 call!158283)))

(declare-fun b!2529142 () Bool)

(declare-fun res!1068197 () Bool)

(declare-fun e!1600756 () Bool)

(assert (=> b!2529142 (=> res!1068197 e!1600756)))

(assert (=> b!2529142 (= res!1068197 (not ((_ is ElementMatch!7525) lt!900873)))))

(assert (=> b!2529142 (= e!1600760 e!1600756)))

(declare-fun d!719682 () Bool)

(assert (=> d!719682 e!1600759))

(declare-fun c!403967 () Bool)

(assert (=> d!719682 (= c!403967 ((_ is EmptyExpr!7525) lt!900873))))

(assert (=> d!719682 (= lt!901035 e!1600758)))

(declare-fun c!403968 () Bool)

(assert (=> d!719682 (= c!403968 (isEmpty!16968 (_1!17316 (get!9235 lt!900911))))))

(assert (=> d!719682 (validRegex!3151 lt!900873)))

(assert (=> d!719682 (= (matchR!3512 lt!900873 (_1!17316 (get!9235 lt!900911))) lt!901035)))

(declare-fun b!2529131 () Bool)

(declare-fun res!1068195 () Bool)

(assert (=> b!2529131 (=> res!1068195 e!1600756)))

(assert (=> b!2529131 (= res!1068195 e!1600757)))

(declare-fun res!1068196 () Bool)

(assert (=> b!2529131 (=> (not res!1068196) (not e!1600757))))

(assert (=> b!2529131 (= res!1068196 lt!901035)))

(declare-fun b!2529143 () Bool)

(assert (=> b!2529143 (= e!1600756 e!1600755)))

(declare-fun res!1068200 () Bool)

(assert (=> b!2529143 (=> (not res!1068200) (not e!1600755))))

(assert (=> b!2529143 (= res!1068200 (not lt!901035))))

(declare-fun b!2529144 () Bool)

(declare-fun res!1068199 () Bool)

(assert (=> b!2529144 (=> (not res!1068199) (not e!1600757))))

(assert (=> b!2529144 (= res!1068199 (isEmpty!16968 (tail!4051 (_1!17316 (get!9235 lt!900911)))))))

(assert (= (and d!719682 c!403968) b!2529136))

(assert (= (and d!719682 (not c!403968)) b!2529140))

(assert (= (and d!719682 c!403967) b!2529135))

(assert (= (and d!719682 (not c!403967)) b!2529133))

(assert (= (and b!2529133 c!403969) b!2529139))

(assert (= (and b!2529133 (not c!403969)) b!2529142))

(assert (= (and b!2529142 (not res!1068197)) b!2529131))

(assert (= (and b!2529131 res!1068196) b!2529134))

(assert (= (and b!2529134 res!1068198) b!2529144))

(assert (= (and b!2529144 res!1068199) b!2529137))

(assert (= (and b!2529131 (not res!1068195)) b!2529143))

(assert (= (and b!2529143 res!1068200) b!2529141))

(assert (= (and b!2529141 (not res!1068201)) b!2529138))

(assert (= (and b!2529138 (not res!1068194)) b!2529132))

(assert (= (or b!2529135 b!2529134 b!2529141) bm!158278))

(declare-fun m!2881509 () Bool)

(assert (=> b!2529137 m!2881509))

(declare-fun m!2881511 () Bool)

(assert (=> bm!158278 m!2881511))

(assert (=> b!2529136 m!2880411))

(declare-fun m!2881513 () Bool)

(assert (=> b!2529144 m!2881513))

(assert (=> b!2529144 m!2881513))

(declare-fun m!2881515 () Bool)

(assert (=> b!2529144 m!2881515))

(assert (=> b!2529138 m!2881513))

(assert (=> b!2529138 m!2881513))

(assert (=> b!2529138 m!2881515))

(assert (=> b!2529132 m!2881509))

(assert (=> b!2529140 m!2881509))

(assert (=> b!2529140 m!2881509))

(declare-fun m!2881517 () Bool)

(assert (=> b!2529140 m!2881517))

(assert (=> b!2529140 m!2881513))

(assert (=> b!2529140 m!2881517))

(assert (=> b!2529140 m!2881513))

(declare-fun m!2881519 () Bool)

(assert (=> b!2529140 m!2881519))

(assert (=> d!719682 m!2881511))

(assert (=> d!719682 m!2880421))

(assert (=> b!2527827 d!719682))

(assert (=> b!2527827 d!719616))

(assert (=> b!2527957 d!719646))

(declare-fun b!2529145 () Bool)

(declare-fun e!1600762 () Bool)

(declare-fun e!1600761 () Bool)

(assert (=> b!2529145 (= e!1600762 e!1600761)))

(declare-fun c!403970 () Bool)

(assert (=> b!2529145 (= c!403970 ((_ is Union!7525) lt!900964))))

(declare-fun bm!158279 () Bool)

(declare-fun call!158286 () Bool)

(assert (=> bm!158279 (= call!158286 (validRegex!3151 (ite c!403970 (regOne!15563 lt!900964) (regTwo!15562 lt!900964))))))

(declare-fun b!2529146 () Bool)

(declare-fun e!1600766 () Bool)

(assert (=> b!2529146 (= e!1600766 e!1600762)))

(declare-fun c!403971 () Bool)

(assert (=> b!2529146 (= c!403971 ((_ is Star!7525) lt!900964))))

(declare-fun b!2529147 () Bool)

(declare-fun e!1600764 () Bool)

(declare-fun e!1600767 () Bool)

(assert (=> b!2529147 (= e!1600764 e!1600767)))

(declare-fun res!1068205 () Bool)

(assert (=> b!2529147 (=> (not res!1068205) (not e!1600767))))

(declare-fun call!158285 () Bool)

(assert (=> b!2529147 (= res!1068205 call!158285)))

(declare-fun d!719684 () Bool)

(declare-fun res!1068203 () Bool)

(assert (=> d!719684 (=> res!1068203 e!1600766)))

(assert (=> d!719684 (= res!1068203 ((_ is ElementMatch!7525) lt!900964))))

(assert (=> d!719684 (= (validRegex!3151 lt!900964) e!1600766)))

(declare-fun b!2529148 () Bool)

(declare-fun e!1600763 () Bool)

(declare-fun call!158284 () Bool)

(assert (=> b!2529148 (= e!1600763 call!158284)))

(declare-fun bm!158280 () Bool)

(assert (=> bm!158280 (= call!158284 (validRegex!3151 (ite c!403971 (reg!7854 lt!900964) (ite c!403970 (regTwo!15563 lt!900964) (regOne!15562 lt!900964)))))))

(declare-fun b!2529149 () Bool)

(declare-fun res!1068204 () Bool)

(declare-fun e!1600765 () Bool)

(assert (=> b!2529149 (=> (not res!1068204) (not e!1600765))))

(assert (=> b!2529149 (= res!1068204 call!158286)))

(assert (=> b!2529149 (= e!1600761 e!1600765)))

(declare-fun b!2529150 () Bool)

(assert (=> b!2529150 (= e!1600765 call!158285)))

(declare-fun b!2529151 () Bool)

(declare-fun res!1068202 () Bool)

(assert (=> b!2529151 (=> res!1068202 e!1600764)))

(assert (=> b!2529151 (= res!1068202 (not ((_ is Concat!12221) lt!900964)))))

(assert (=> b!2529151 (= e!1600761 e!1600764)))

(declare-fun b!2529152 () Bool)

(assert (=> b!2529152 (= e!1600767 call!158286)))

(declare-fun bm!158281 () Bool)

(assert (=> bm!158281 (= call!158285 call!158284)))

(declare-fun b!2529153 () Bool)

(assert (=> b!2529153 (= e!1600762 e!1600763)))

(declare-fun res!1068206 () Bool)

(assert (=> b!2529153 (= res!1068206 (not (nullable!2442 (reg!7854 lt!900964))))))

(assert (=> b!2529153 (=> (not res!1068206) (not e!1600763))))

(assert (= (and d!719684 (not res!1068203)) b!2529146))

(assert (= (and b!2529146 c!403971) b!2529153))

(assert (= (and b!2529146 (not c!403971)) b!2529145))

(assert (= (and b!2529153 res!1068206) b!2529148))

(assert (= (and b!2529145 c!403970) b!2529149))

(assert (= (and b!2529145 (not c!403970)) b!2529151))

(assert (= (and b!2529149 res!1068204) b!2529150))

(assert (= (and b!2529151 (not res!1068202)) b!2529147))

(assert (= (and b!2529147 res!1068205) b!2529152))

(assert (= (or b!2529149 b!2529152) bm!158279))

(assert (= (or b!2529150 b!2529147) bm!158281))

(assert (= (or b!2529148 bm!158281) bm!158280))

(declare-fun m!2881521 () Bool)

(assert (=> bm!158279 m!2881521))

(declare-fun m!2881523 () Bool)

(assert (=> bm!158280 m!2881523))

(declare-fun m!2881525 () Bool)

(assert (=> b!2529153 m!2881525))

(assert (=> d!719354 d!719684))

(assert (=> d!719354 d!719346))

(declare-fun b!2529154 () Bool)

(declare-fun e!1600769 () Bool)

(declare-fun e!1600768 () Bool)

(assert (=> b!2529154 (= e!1600769 e!1600768)))

(declare-fun c!403972 () Bool)

(assert (=> b!2529154 (= c!403972 ((_ is Union!7525) (ite c!403719 (reg!7854 r!27340) (ite c!403718 (regTwo!15563 r!27340) (regOne!15562 r!27340)))))))

(declare-fun call!158289 () Bool)

(declare-fun bm!158282 () Bool)

(assert (=> bm!158282 (= call!158289 (validRegex!3151 (ite c!403972 (regOne!15563 (ite c!403719 (reg!7854 r!27340) (ite c!403718 (regTwo!15563 r!27340) (regOne!15562 r!27340)))) (regTwo!15562 (ite c!403719 (reg!7854 r!27340) (ite c!403718 (regTwo!15563 r!27340) (regOne!15562 r!27340)))))))))

(declare-fun b!2529155 () Bool)

(declare-fun e!1600773 () Bool)

(assert (=> b!2529155 (= e!1600773 e!1600769)))

(declare-fun c!403973 () Bool)

(assert (=> b!2529155 (= c!403973 ((_ is Star!7525) (ite c!403719 (reg!7854 r!27340) (ite c!403718 (regTwo!15563 r!27340) (regOne!15562 r!27340)))))))

(declare-fun b!2529156 () Bool)

(declare-fun e!1600771 () Bool)

(declare-fun e!1600774 () Bool)

(assert (=> b!2529156 (= e!1600771 e!1600774)))

(declare-fun res!1068210 () Bool)

(assert (=> b!2529156 (=> (not res!1068210) (not e!1600774))))

(declare-fun call!158288 () Bool)

(assert (=> b!2529156 (= res!1068210 call!158288)))

(declare-fun d!719686 () Bool)

(declare-fun res!1068208 () Bool)

(assert (=> d!719686 (=> res!1068208 e!1600773)))

(assert (=> d!719686 (= res!1068208 ((_ is ElementMatch!7525) (ite c!403719 (reg!7854 r!27340) (ite c!403718 (regTwo!15563 r!27340) (regOne!15562 r!27340)))))))

(assert (=> d!719686 (= (validRegex!3151 (ite c!403719 (reg!7854 r!27340) (ite c!403718 (regTwo!15563 r!27340) (regOne!15562 r!27340)))) e!1600773)))

(declare-fun b!2529157 () Bool)

(declare-fun e!1600770 () Bool)

(declare-fun call!158287 () Bool)

(assert (=> b!2529157 (= e!1600770 call!158287)))

(declare-fun bm!158283 () Bool)

(assert (=> bm!158283 (= call!158287 (validRegex!3151 (ite c!403973 (reg!7854 (ite c!403719 (reg!7854 r!27340) (ite c!403718 (regTwo!15563 r!27340) (regOne!15562 r!27340)))) (ite c!403972 (regTwo!15563 (ite c!403719 (reg!7854 r!27340) (ite c!403718 (regTwo!15563 r!27340) (regOne!15562 r!27340)))) (regOne!15562 (ite c!403719 (reg!7854 r!27340) (ite c!403718 (regTwo!15563 r!27340) (regOne!15562 r!27340))))))))))

(declare-fun b!2529158 () Bool)

(declare-fun res!1068209 () Bool)

(declare-fun e!1600772 () Bool)

(assert (=> b!2529158 (=> (not res!1068209) (not e!1600772))))

(assert (=> b!2529158 (= res!1068209 call!158289)))

(assert (=> b!2529158 (= e!1600768 e!1600772)))

(declare-fun b!2529159 () Bool)

(assert (=> b!2529159 (= e!1600772 call!158288)))

(declare-fun b!2529160 () Bool)

(declare-fun res!1068207 () Bool)

(assert (=> b!2529160 (=> res!1068207 e!1600771)))

(assert (=> b!2529160 (= res!1068207 (not ((_ is Concat!12221) (ite c!403719 (reg!7854 r!27340) (ite c!403718 (regTwo!15563 r!27340) (regOne!15562 r!27340))))))))

(assert (=> b!2529160 (= e!1600768 e!1600771)))

(declare-fun b!2529161 () Bool)

(assert (=> b!2529161 (= e!1600774 call!158289)))

(declare-fun bm!158284 () Bool)

(assert (=> bm!158284 (= call!158288 call!158287)))

(declare-fun b!2529162 () Bool)

(assert (=> b!2529162 (= e!1600769 e!1600770)))

(declare-fun res!1068211 () Bool)

(assert (=> b!2529162 (= res!1068211 (not (nullable!2442 (reg!7854 (ite c!403719 (reg!7854 r!27340) (ite c!403718 (regTwo!15563 r!27340) (regOne!15562 r!27340)))))))))

(assert (=> b!2529162 (=> (not res!1068211) (not e!1600770))))

(assert (= (and d!719686 (not res!1068208)) b!2529155))

(assert (= (and b!2529155 c!403973) b!2529162))

(assert (= (and b!2529155 (not c!403973)) b!2529154))

(assert (= (and b!2529162 res!1068211) b!2529157))

(assert (= (and b!2529154 c!403972) b!2529158))

(assert (= (and b!2529154 (not c!403972)) b!2529160))

(assert (= (and b!2529158 res!1068209) b!2529159))

(assert (= (and b!2529160 (not res!1068207)) b!2529156))

(assert (= (and b!2529156 res!1068210) b!2529161))

(assert (= (or b!2529158 b!2529161) bm!158282))

(assert (= (or b!2529159 b!2529156) bm!158284))

(assert (= (or b!2529157 bm!158284) bm!158283))

(declare-fun m!2881527 () Bool)

(assert (=> bm!158282 m!2881527))

(declare-fun m!2881529 () Bool)

(assert (=> bm!158283 m!2881529))

(declare-fun m!2881531 () Bool)

(assert (=> b!2529162 m!2881531))

(assert (=> bm!158079 d!719686))

(declare-fun b!2529163 () Bool)

(declare-fun e!1600776 () Bool)

(declare-fun e!1600775 () Bool)

(assert (=> b!2529163 (= e!1600776 e!1600775)))

(declare-fun c!403974 () Bool)

(assert (=> b!2529163 (= c!403974 ((_ is Union!7525) lt!900950))))

(declare-fun bm!158285 () Bool)

(declare-fun call!158292 () Bool)

(assert (=> bm!158285 (= call!158292 (validRegex!3151 (ite c!403974 (regOne!15563 lt!900950) (regTwo!15562 lt!900950))))))

(declare-fun b!2529164 () Bool)

(declare-fun e!1600780 () Bool)

(assert (=> b!2529164 (= e!1600780 e!1600776)))

(declare-fun c!403975 () Bool)

(assert (=> b!2529164 (= c!403975 ((_ is Star!7525) lt!900950))))

(declare-fun b!2529165 () Bool)

(declare-fun e!1600778 () Bool)

(declare-fun e!1600781 () Bool)

(assert (=> b!2529165 (= e!1600778 e!1600781)))

(declare-fun res!1068215 () Bool)

(assert (=> b!2529165 (=> (not res!1068215) (not e!1600781))))

(declare-fun call!158291 () Bool)

(assert (=> b!2529165 (= res!1068215 call!158291)))

(declare-fun d!719688 () Bool)

(declare-fun res!1068213 () Bool)

(assert (=> d!719688 (=> res!1068213 e!1600780)))

(assert (=> d!719688 (= res!1068213 ((_ is ElementMatch!7525) lt!900950))))

(assert (=> d!719688 (= (validRegex!3151 lt!900950) e!1600780)))

(declare-fun b!2529166 () Bool)

(declare-fun e!1600777 () Bool)

(declare-fun call!158290 () Bool)

(assert (=> b!2529166 (= e!1600777 call!158290)))

(declare-fun bm!158286 () Bool)

(assert (=> bm!158286 (= call!158290 (validRegex!3151 (ite c!403975 (reg!7854 lt!900950) (ite c!403974 (regTwo!15563 lt!900950) (regOne!15562 lt!900950)))))))

(declare-fun b!2529167 () Bool)

(declare-fun res!1068214 () Bool)

(declare-fun e!1600779 () Bool)

(assert (=> b!2529167 (=> (not res!1068214) (not e!1600779))))

(assert (=> b!2529167 (= res!1068214 call!158292)))

(assert (=> b!2529167 (= e!1600775 e!1600779)))

(declare-fun b!2529168 () Bool)

(assert (=> b!2529168 (= e!1600779 call!158291)))

(declare-fun b!2529169 () Bool)

(declare-fun res!1068212 () Bool)

(assert (=> b!2529169 (=> res!1068212 e!1600778)))

(assert (=> b!2529169 (= res!1068212 (not ((_ is Concat!12221) lt!900950)))))

(assert (=> b!2529169 (= e!1600775 e!1600778)))

(declare-fun b!2529170 () Bool)

(assert (=> b!2529170 (= e!1600781 call!158292)))

(declare-fun bm!158287 () Bool)

(assert (=> bm!158287 (= call!158291 call!158290)))

(declare-fun b!2529171 () Bool)

(assert (=> b!2529171 (= e!1600776 e!1600777)))

(declare-fun res!1068216 () Bool)

(assert (=> b!2529171 (= res!1068216 (not (nullable!2442 (reg!7854 lt!900950))))))

(assert (=> b!2529171 (=> (not res!1068216) (not e!1600777))))

(assert (= (and d!719688 (not res!1068213)) b!2529164))

(assert (= (and b!2529164 c!403975) b!2529171))

(assert (= (and b!2529164 (not c!403975)) b!2529163))

(assert (= (and b!2529171 res!1068216) b!2529166))

(assert (= (and b!2529163 c!403974) b!2529167))

(assert (= (and b!2529163 (not c!403974)) b!2529169))

(assert (= (and b!2529167 res!1068214) b!2529168))

(assert (= (and b!2529169 (not res!1068212)) b!2529165))

(assert (= (and b!2529165 res!1068215) b!2529170))

(assert (= (or b!2529167 b!2529170) bm!158285))

(assert (= (or b!2529168 b!2529165) bm!158287))

(assert (= (or b!2529166 bm!158287) bm!158286))

(declare-fun m!2881533 () Bool)

(assert (=> bm!158285 m!2881533))

(declare-fun m!2881535 () Bool)

(assert (=> bm!158286 m!2881535))

(declare-fun m!2881537 () Bool)

(assert (=> b!2529171 m!2881537))

(assert (=> d!719324 d!719688))

(assert (=> d!719324 d!719648))

(declare-fun d!719690 () Bool)

(assert (=> d!719690 (= (nullable!2442 lt!900873) (nullableFct!683 lt!900873))))

(declare-fun bs!469170 () Bool)

(assert (= bs!469170 d!719690))

(declare-fun m!2881539 () Bool)

(assert (=> bs!469170 m!2881539))

(assert (=> b!2527734 d!719690))

(declare-fun b!2529173 () Bool)

(declare-fun e!1600782 () Bool)

(assert (=> b!2529173 (= e!1600782 (not (= (head!5774 (_2!17316 (get!9235 lt!900911))) (c!403591 (regTwo!15562 r!27340)))))))

(declare-fun b!2529174 () Bool)

(declare-fun e!1600787 () Bool)

(declare-fun e!1600788 () Bool)

(assert (=> b!2529174 (= e!1600787 e!1600788)))

(declare-fun c!403978 () Bool)

(assert (=> b!2529174 (= c!403978 ((_ is EmptyLang!7525) (regTwo!15562 r!27340)))))

(declare-fun bm!158288 () Bool)

(declare-fun call!158293 () Bool)

(assert (=> bm!158288 (= call!158293 (isEmpty!16968 (_2!17316 (get!9235 lt!900911))))))

(declare-fun b!2529175 () Bool)

(declare-fun res!1068221 () Bool)

(declare-fun e!1600785 () Bool)

(assert (=> b!2529175 (=> (not res!1068221) (not e!1600785))))

(assert (=> b!2529175 (= res!1068221 (not call!158293))))

(declare-fun b!2529176 () Bool)

(declare-fun lt!901036 () Bool)

(assert (=> b!2529176 (= e!1600787 (= lt!901036 call!158293))))

(declare-fun b!2529177 () Bool)

(declare-fun e!1600786 () Bool)

(assert (=> b!2529177 (= e!1600786 (nullable!2442 (regTwo!15562 r!27340)))))

(declare-fun b!2529178 () Bool)

(assert (=> b!2529178 (= e!1600785 (= (head!5774 (_2!17316 (get!9235 lt!900911))) (c!403591 (regTwo!15562 r!27340))))))

(declare-fun b!2529179 () Bool)

(declare-fun res!1068217 () Bool)

(assert (=> b!2529179 (=> res!1068217 e!1600782)))

(assert (=> b!2529179 (= res!1068217 (not (isEmpty!16968 (tail!4051 (_2!17316 (get!9235 lt!900911))))))))

(declare-fun b!2529180 () Bool)

(assert (=> b!2529180 (= e!1600788 (not lt!901036))))

(declare-fun b!2529181 () Bool)

(assert (=> b!2529181 (= e!1600786 (matchR!3512 (derivativeStep!2094 (regTwo!15562 r!27340) (head!5774 (_2!17316 (get!9235 lt!900911)))) (tail!4051 (_2!17316 (get!9235 lt!900911)))))))

(declare-fun b!2529182 () Bool)

(declare-fun e!1600783 () Bool)

(assert (=> b!2529182 (= e!1600783 e!1600782)))

(declare-fun res!1068224 () Bool)

(assert (=> b!2529182 (=> res!1068224 e!1600782)))

(assert (=> b!2529182 (= res!1068224 call!158293)))

(declare-fun b!2529183 () Bool)

(declare-fun res!1068220 () Bool)

(declare-fun e!1600784 () Bool)

(assert (=> b!2529183 (=> res!1068220 e!1600784)))

(assert (=> b!2529183 (= res!1068220 (not ((_ is ElementMatch!7525) (regTwo!15562 r!27340))))))

(assert (=> b!2529183 (= e!1600788 e!1600784)))

(declare-fun d!719692 () Bool)

(assert (=> d!719692 e!1600787))

(declare-fun c!403976 () Bool)

(assert (=> d!719692 (= c!403976 ((_ is EmptyExpr!7525) (regTwo!15562 r!27340)))))

(assert (=> d!719692 (= lt!901036 e!1600786)))

(declare-fun c!403977 () Bool)

(assert (=> d!719692 (= c!403977 (isEmpty!16968 (_2!17316 (get!9235 lt!900911))))))

(assert (=> d!719692 (validRegex!3151 (regTwo!15562 r!27340))))

(assert (=> d!719692 (= (matchR!3512 (regTwo!15562 r!27340) (_2!17316 (get!9235 lt!900911))) lt!901036)))

(declare-fun b!2529172 () Bool)

(declare-fun res!1068218 () Bool)

(assert (=> b!2529172 (=> res!1068218 e!1600784)))

(assert (=> b!2529172 (= res!1068218 e!1600785)))

(declare-fun res!1068219 () Bool)

(assert (=> b!2529172 (=> (not res!1068219) (not e!1600785))))

(assert (=> b!2529172 (= res!1068219 lt!901036)))

(declare-fun b!2529184 () Bool)

(assert (=> b!2529184 (= e!1600784 e!1600783)))

(declare-fun res!1068223 () Bool)

(assert (=> b!2529184 (=> (not res!1068223) (not e!1600783))))

(assert (=> b!2529184 (= res!1068223 (not lt!901036))))

(declare-fun b!2529185 () Bool)

(declare-fun res!1068222 () Bool)

(assert (=> b!2529185 (=> (not res!1068222) (not e!1600785))))

(assert (=> b!2529185 (= res!1068222 (isEmpty!16968 (tail!4051 (_2!17316 (get!9235 lt!900911)))))))

(assert (= (and d!719692 c!403977) b!2529177))

(assert (= (and d!719692 (not c!403977)) b!2529181))

(assert (= (and d!719692 c!403976) b!2529176))

(assert (= (and d!719692 (not c!403976)) b!2529174))

(assert (= (and b!2529174 c!403978) b!2529180))

(assert (= (and b!2529174 (not c!403978)) b!2529183))

(assert (= (and b!2529183 (not res!1068220)) b!2529172))

(assert (= (and b!2529172 res!1068219) b!2529175))

(assert (= (and b!2529175 res!1068221) b!2529185))

(assert (= (and b!2529185 res!1068222) b!2529178))

(assert (= (and b!2529172 (not res!1068218)) b!2529184))

(assert (= (and b!2529184 res!1068223) b!2529182))

(assert (= (and b!2529182 (not res!1068224)) b!2529179))

(assert (= (and b!2529179 (not res!1068217)) b!2529173))

(assert (= (or b!2529176 b!2529175 b!2529182) bm!158288))

(declare-fun m!2881541 () Bool)

(assert (=> b!2529178 m!2881541))

(declare-fun m!2881543 () Bool)

(assert (=> bm!158288 m!2881543))

(assert (=> b!2529177 m!2880563))

(declare-fun m!2881545 () Bool)

(assert (=> b!2529185 m!2881545))

(assert (=> b!2529185 m!2881545))

(declare-fun m!2881547 () Bool)

(assert (=> b!2529185 m!2881547))

(assert (=> b!2529179 m!2881545))

(assert (=> b!2529179 m!2881545))

(assert (=> b!2529179 m!2881547))

(assert (=> b!2529173 m!2881541))

(assert (=> b!2529181 m!2881541))

(assert (=> b!2529181 m!2881541))

(declare-fun m!2881549 () Bool)

(assert (=> b!2529181 m!2881549))

(assert (=> b!2529181 m!2881545))

(assert (=> b!2529181 m!2881549))

(assert (=> b!2529181 m!2881545))

(declare-fun m!2881551 () Bool)

(assert (=> b!2529181 m!2881551))

(assert (=> d!719692 m!2881543))

(assert (=> d!719692 m!2880573))

(assert (=> b!2527829 d!719692))

(assert (=> b!2527829 d!719616))

(assert (=> bm!158051 d!719574))

(assert (=> bm!158044 d!719500))

(declare-fun b!2529187 () Bool)

(declare-fun e!1600789 () Bool)

(assert (=> b!2529187 (= e!1600789 (not (= (head!5774 (tail!4051 tl!4068)) (c!403591 (derivativeStep!2094 lt!900874 (head!5774 tl!4068))))))))

(declare-fun b!2529188 () Bool)

(declare-fun e!1600794 () Bool)

(declare-fun e!1600795 () Bool)

(assert (=> b!2529188 (= e!1600794 e!1600795)))

(declare-fun c!403981 () Bool)

(assert (=> b!2529188 (= c!403981 ((_ is EmptyLang!7525) (derivativeStep!2094 lt!900874 (head!5774 tl!4068))))))

(declare-fun bm!158289 () Bool)

(declare-fun call!158294 () Bool)

(assert (=> bm!158289 (= call!158294 (isEmpty!16968 (tail!4051 tl!4068)))))

(declare-fun b!2529189 () Bool)

(declare-fun res!1068229 () Bool)

(declare-fun e!1600792 () Bool)

(assert (=> b!2529189 (=> (not res!1068229) (not e!1600792))))

(assert (=> b!2529189 (= res!1068229 (not call!158294))))

(declare-fun b!2529190 () Bool)

(declare-fun lt!901037 () Bool)

(assert (=> b!2529190 (= e!1600794 (= lt!901037 call!158294))))

(declare-fun b!2529191 () Bool)

(declare-fun e!1600793 () Bool)

(assert (=> b!2529191 (= e!1600793 (nullable!2442 (derivativeStep!2094 lt!900874 (head!5774 tl!4068))))))

(declare-fun b!2529192 () Bool)

(assert (=> b!2529192 (= e!1600792 (= (head!5774 (tail!4051 tl!4068)) (c!403591 (derivativeStep!2094 lt!900874 (head!5774 tl!4068)))))))

(declare-fun b!2529193 () Bool)

(declare-fun res!1068225 () Bool)

(assert (=> b!2529193 (=> res!1068225 e!1600789)))

(assert (=> b!2529193 (= res!1068225 (not (isEmpty!16968 (tail!4051 (tail!4051 tl!4068)))))))

(declare-fun b!2529194 () Bool)

(assert (=> b!2529194 (= e!1600795 (not lt!901037))))

(declare-fun b!2529195 () Bool)

(assert (=> b!2529195 (= e!1600793 (matchR!3512 (derivativeStep!2094 (derivativeStep!2094 lt!900874 (head!5774 tl!4068)) (head!5774 (tail!4051 tl!4068))) (tail!4051 (tail!4051 tl!4068))))))

(declare-fun b!2529196 () Bool)

(declare-fun e!1600790 () Bool)

(assert (=> b!2529196 (= e!1600790 e!1600789)))

(declare-fun res!1068232 () Bool)

(assert (=> b!2529196 (=> res!1068232 e!1600789)))

(assert (=> b!2529196 (= res!1068232 call!158294)))

(declare-fun b!2529197 () Bool)

(declare-fun res!1068228 () Bool)

(declare-fun e!1600791 () Bool)

(assert (=> b!2529197 (=> res!1068228 e!1600791)))

(assert (=> b!2529197 (= res!1068228 (not ((_ is ElementMatch!7525) (derivativeStep!2094 lt!900874 (head!5774 tl!4068)))))))

(assert (=> b!2529197 (= e!1600795 e!1600791)))

(declare-fun d!719694 () Bool)

(assert (=> d!719694 e!1600794))

(declare-fun c!403979 () Bool)

(assert (=> d!719694 (= c!403979 ((_ is EmptyExpr!7525) (derivativeStep!2094 lt!900874 (head!5774 tl!4068))))))

(assert (=> d!719694 (= lt!901037 e!1600793)))

(declare-fun c!403980 () Bool)

(assert (=> d!719694 (= c!403980 (isEmpty!16968 (tail!4051 tl!4068)))))

(assert (=> d!719694 (validRegex!3151 (derivativeStep!2094 lt!900874 (head!5774 tl!4068)))))

(assert (=> d!719694 (= (matchR!3512 (derivativeStep!2094 lt!900874 (head!5774 tl!4068)) (tail!4051 tl!4068)) lt!901037)))

(declare-fun b!2529186 () Bool)

(declare-fun res!1068226 () Bool)

(assert (=> b!2529186 (=> res!1068226 e!1600791)))

(assert (=> b!2529186 (= res!1068226 e!1600792)))

(declare-fun res!1068227 () Bool)

(assert (=> b!2529186 (=> (not res!1068227) (not e!1600792))))

(assert (=> b!2529186 (= res!1068227 lt!901037)))

(declare-fun b!2529198 () Bool)

(assert (=> b!2529198 (= e!1600791 e!1600790)))

(declare-fun res!1068231 () Bool)

(assert (=> b!2529198 (=> (not res!1068231) (not e!1600790))))

(assert (=> b!2529198 (= res!1068231 (not lt!901037))))

(declare-fun b!2529199 () Bool)

(declare-fun res!1068230 () Bool)

(assert (=> b!2529199 (=> (not res!1068230) (not e!1600792))))

(assert (=> b!2529199 (= res!1068230 (isEmpty!16968 (tail!4051 (tail!4051 tl!4068))))))

(assert (= (and d!719694 c!403980) b!2529191))

(assert (= (and d!719694 (not c!403980)) b!2529195))

(assert (= (and d!719694 c!403979) b!2529190))

(assert (= (and d!719694 (not c!403979)) b!2529188))

(assert (= (and b!2529188 c!403981) b!2529194))

(assert (= (and b!2529188 (not c!403981)) b!2529197))

(assert (= (and b!2529197 (not res!1068228)) b!2529186))

(assert (= (and b!2529186 res!1068227) b!2529189))

(assert (= (and b!2529189 res!1068229) b!2529199))

(assert (= (and b!2529199 res!1068230) b!2529192))

(assert (= (and b!2529186 (not res!1068226)) b!2529198))

(assert (= (and b!2529198 res!1068231) b!2529196))

(assert (= (and b!2529196 (not res!1068232)) b!2529193))

(assert (= (and b!2529193 (not res!1068225)) b!2529187))

(assert (= (or b!2529190 b!2529189 b!2529196) bm!158289))

(assert (=> b!2529192 m!2880581))

(assert (=> b!2529192 m!2881039))

(assert (=> bm!158289 m!2880581))

(assert (=> bm!158289 m!2880583))

(assert (=> b!2529191 m!2880715))

(declare-fun m!2881553 () Bool)

(assert (=> b!2529191 m!2881553))

(assert (=> b!2529199 m!2880581))

(assert (=> b!2529199 m!2881045))

(assert (=> b!2529199 m!2881045))

(assert (=> b!2529199 m!2881047))

(assert (=> b!2529193 m!2880581))

(assert (=> b!2529193 m!2881045))

(assert (=> b!2529193 m!2881045))

(assert (=> b!2529193 m!2881047))

(assert (=> b!2529187 m!2880581))

(assert (=> b!2529187 m!2881039))

(assert (=> b!2529195 m!2880581))

(assert (=> b!2529195 m!2881039))

(assert (=> b!2529195 m!2880715))

(assert (=> b!2529195 m!2881039))

(declare-fun m!2881555 () Bool)

(assert (=> b!2529195 m!2881555))

(assert (=> b!2529195 m!2880581))

(assert (=> b!2529195 m!2881045))

(assert (=> b!2529195 m!2881555))

(assert (=> b!2529195 m!2881045))

(declare-fun m!2881557 () Bool)

(assert (=> b!2529195 m!2881557))

(assert (=> d!719694 m!2880581))

(assert (=> d!719694 m!2880583))

(assert (=> d!719694 m!2880715))

(declare-fun m!2881559 () Bool)

(assert (=> d!719694 m!2881559))

(assert (=> b!2528146 d!719694))

(declare-fun b!2529200 () Bool)

(declare-fun e!1600798 () Regex!7525)

(declare-fun e!1600800 () Regex!7525)

(assert (=> b!2529200 (= e!1600798 e!1600800)))

(declare-fun c!403985 () Bool)

(assert (=> b!2529200 (= c!403985 ((_ is ElementMatch!7525) lt!900874))))

(declare-fun b!2529201 () Bool)

(declare-fun e!1600796 () Regex!7525)

(declare-fun call!158298 () Regex!7525)

(assert (=> b!2529201 (= e!1600796 (Union!7525 (Concat!12221 call!158298 (regTwo!15562 lt!900874)) EmptyLang!7525))))

(declare-fun b!2529202 () Bool)

(declare-fun e!1600797 () Regex!7525)

(declare-fun call!158295 () Regex!7525)

(assert (=> b!2529202 (= e!1600797 (Concat!12221 call!158295 lt!900874))))

(declare-fun b!2529203 () Bool)

(declare-fun e!1600799 () Regex!7525)

(assert (=> b!2529203 (= e!1600799 e!1600797)))

(declare-fun c!403984 () Bool)

(assert (=> b!2529203 (= c!403984 ((_ is Star!7525) lt!900874))))

(declare-fun b!2529204 () Bool)

(declare-fun call!158296 () Regex!7525)

(declare-fun call!158297 () Regex!7525)

(assert (=> b!2529204 (= e!1600799 (Union!7525 call!158296 call!158297))))

(declare-fun bm!158290 () Bool)

(assert (=> bm!158290 (= call!158298 call!158295)))

(declare-fun bm!158291 () Bool)

(assert (=> bm!158291 (= call!158295 call!158297)))

(declare-fun b!2529205 () Bool)

(assert (=> b!2529205 (= e!1600796 (Union!7525 (Concat!12221 call!158298 (regTwo!15562 lt!900874)) call!158296))))

(declare-fun bm!158292 () Bool)

(declare-fun c!403983 () Bool)

(assert (=> bm!158292 (= call!158297 (derivativeStep!2094 (ite c!403983 (regTwo!15563 lt!900874) (ite c!403984 (reg!7854 lt!900874) (regOne!15562 lt!900874))) (head!5774 tl!4068)))))

(declare-fun b!2529206 () Bool)

(assert (=> b!2529206 (= c!403983 ((_ is Union!7525) lt!900874))))

(assert (=> b!2529206 (= e!1600800 e!1600799)))

(declare-fun b!2529207 () Bool)

(assert (=> b!2529207 (= e!1600798 EmptyLang!7525)))

(declare-fun bm!158293 () Bool)

(assert (=> bm!158293 (= call!158296 (derivativeStep!2094 (ite c!403983 (regOne!15563 lt!900874) (regTwo!15562 lt!900874)) (head!5774 tl!4068)))))

(declare-fun b!2529208 () Bool)

(declare-fun c!403986 () Bool)

(assert (=> b!2529208 (= c!403986 (nullable!2442 (regOne!15562 lt!900874)))))

(assert (=> b!2529208 (= e!1600797 e!1600796)))

(declare-fun d!719696 () Bool)

(declare-fun lt!901038 () Regex!7525)

(assert (=> d!719696 (validRegex!3151 lt!901038)))

(assert (=> d!719696 (= lt!901038 e!1600798)))

(declare-fun c!403982 () Bool)

(assert (=> d!719696 (= c!403982 (or ((_ is EmptyExpr!7525) lt!900874) ((_ is EmptyLang!7525) lt!900874)))))

(assert (=> d!719696 (validRegex!3151 lt!900874)))

(assert (=> d!719696 (= (derivativeStep!2094 lt!900874 (head!5774 tl!4068)) lt!901038)))

(declare-fun b!2529209 () Bool)

(assert (=> b!2529209 (= e!1600800 (ite (= (head!5774 tl!4068) (c!403591 lt!900874)) EmptyExpr!7525 EmptyLang!7525))))

(assert (= (and d!719696 c!403982) b!2529207))

(assert (= (and d!719696 (not c!403982)) b!2529200))

(assert (= (and b!2529200 c!403985) b!2529209))

(assert (= (and b!2529200 (not c!403985)) b!2529206))

(assert (= (and b!2529206 c!403983) b!2529204))

(assert (= (and b!2529206 (not c!403983)) b!2529203))

(assert (= (and b!2529203 c!403984) b!2529202))

(assert (= (and b!2529203 (not c!403984)) b!2529208))

(assert (= (and b!2529208 c!403986) b!2529205))

(assert (= (and b!2529208 (not c!403986)) b!2529201))

(assert (= (or b!2529205 b!2529201) bm!158290))

(assert (= (or b!2529202 bm!158290) bm!158291))

(assert (= (or b!2529204 bm!158291) bm!158292))

(assert (= (or b!2529204 b!2529205) bm!158293))

(assert (=> bm!158292 m!2880575))

(declare-fun m!2881561 () Bool)

(assert (=> bm!158292 m!2881561))

(assert (=> bm!158293 m!2880575))

(declare-fun m!2881563 () Bool)

(assert (=> bm!158293 m!2881563))

(declare-fun m!2881565 () Bool)

(assert (=> b!2529208 m!2881565))

(declare-fun m!2881567 () Bool)

(assert (=> d!719696 m!2881567))

(assert (=> d!719696 m!2880705))

(assert (=> b!2528146 d!719696))

(assert (=> b!2528146 d!719502))

(assert (=> b!2528146 d!719488))

(declare-fun d!719698 () Bool)

(assert (=> d!719698 (= (isDefined!4716 lt!900911) (not (isEmpty!16969 lt!900911)))))

(declare-fun bs!469171 () Bool)

(assert (= bs!469171 d!719698))

(declare-fun m!2881569 () Bool)

(assert (=> bs!469171 m!2881569))

(assert (=> b!2527832 d!719698))

(assert (=> b!2528204 d!719348))

(assert (=> b!2527961 d!719348))

(assert (=> b!2527911 d!719662))

(assert (=> d!719280 d!719698))

(declare-fun b!2529211 () Bool)

(declare-fun e!1600801 () Bool)

(assert (=> b!2529211 (= e!1600801 (not (= (head!5774 Nil!29490) (c!403591 lt!900873))))))

(declare-fun b!2529212 () Bool)

(declare-fun e!1600806 () Bool)

(declare-fun e!1600807 () Bool)

(assert (=> b!2529212 (= e!1600806 e!1600807)))

(declare-fun c!403989 () Bool)

(assert (=> b!2529212 (= c!403989 ((_ is EmptyLang!7525) lt!900873))))

(declare-fun bm!158294 () Bool)

(declare-fun call!158299 () Bool)

(assert (=> bm!158294 (= call!158299 (isEmpty!16968 Nil!29490))))

(declare-fun b!2529213 () Bool)

(declare-fun res!1068237 () Bool)

(declare-fun e!1600804 () Bool)

(assert (=> b!2529213 (=> (not res!1068237) (not e!1600804))))

(assert (=> b!2529213 (= res!1068237 (not call!158299))))

(declare-fun b!2529214 () Bool)

(declare-fun lt!901039 () Bool)

(assert (=> b!2529214 (= e!1600806 (= lt!901039 call!158299))))

(declare-fun b!2529215 () Bool)

(declare-fun e!1600805 () Bool)

(assert (=> b!2529215 (= e!1600805 (nullable!2442 lt!900873))))

(declare-fun b!2529216 () Bool)

(assert (=> b!2529216 (= e!1600804 (= (head!5774 Nil!29490) (c!403591 lt!900873)))))

(declare-fun b!2529217 () Bool)

(declare-fun res!1068233 () Bool)

(assert (=> b!2529217 (=> res!1068233 e!1600801)))

(assert (=> b!2529217 (= res!1068233 (not (isEmpty!16968 (tail!4051 Nil!29490))))))

(declare-fun b!2529218 () Bool)

(assert (=> b!2529218 (= e!1600807 (not lt!901039))))

(declare-fun b!2529219 () Bool)

(assert (=> b!2529219 (= e!1600805 (matchR!3512 (derivativeStep!2094 lt!900873 (head!5774 Nil!29490)) (tail!4051 Nil!29490)))))

(declare-fun b!2529220 () Bool)

(declare-fun e!1600802 () Bool)

(assert (=> b!2529220 (= e!1600802 e!1600801)))

(declare-fun res!1068240 () Bool)

(assert (=> b!2529220 (=> res!1068240 e!1600801)))

(assert (=> b!2529220 (= res!1068240 call!158299)))

(declare-fun b!2529221 () Bool)

(declare-fun res!1068236 () Bool)

(declare-fun e!1600803 () Bool)

(assert (=> b!2529221 (=> res!1068236 e!1600803)))

(assert (=> b!2529221 (= res!1068236 (not ((_ is ElementMatch!7525) lt!900873)))))

(assert (=> b!2529221 (= e!1600807 e!1600803)))

(declare-fun d!719700 () Bool)

(assert (=> d!719700 e!1600806))

(declare-fun c!403987 () Bool)

(assert (=> d!719700 (= c!403987 ((_ is EmptyExpr!7525) lt!900873))))

(assert (=> d!719700 (= lt!901039 e!1600805)))

(declare-fun c!403988 () Bool)

(assert (=> d!719700 (= c!403988 (isEmpty!16968 Nil!29490))))

(assert (=> d!719700 (validRegex!3151 lt!900873)))

(assert (=> d!719700 (= (matchR!3512 lt!900873 Nil!29490) lt!901039)))

(declare-fun b!2529210 () Bool)

(declare-fun res!1068234 () Bool)

(assert (=> b!2529210 (=> res!1068234 e!1600803)))

(assert (=> b!2529210 (= res!1068234 e!1600804)))

(declare-fun res!1068235 () Bool)

(assert (=> b!2529210 (=> (not res!1068235) (not e!1600804))))

(assert (=> b!2529210 (= res!1068235 lt!901039)))

(declare-fun b!2529222 () Bool)

(assert (=> b!2529222 (= e!1600803 e!1600802)))

(declare-fun res!1068239 () Bool)

(assert (=> b!2529222 (=> (not res!1068239) (not e!1600802))))

(assert (=> b!2529222 (= res!1068239 (not lt!901039))))

(declare-fun b!2529223 () Bool)

(declare-fun res!1068238 () Bool)

(assert (=> b!2529223 (=> (not res!1068238) (not e!1600804))))

(assert (=> b!2529223 (= res!1068238 (isEmpty!16968 (tail!4051 Nil!29490)))))

(assert (= (and d!719700 c!403988) b!2529215))

(assert (= (and d!719700 (not c!403988)) b!2529219))

(assert (= (and d!719700 c!403987) b!2529214))

(assert (= (and d!719700 (not c!403987)) b!2529212))

(assert (= (and b!2529212 c!403989) b!2529218))

(assert (= (and b!2529212 (not c!403989)) b!2529221))

(assert (= (and b!2529221 (not res!1068236)) b!2529210))

(assert (= (and b!2529210 res!1068235) b!2529213))

(assert (= (and b!2529213 res!1068237) b!2529223))

(assert (= (and b!2529223 res!1068238) b!2529216))

(assert (= (and b!2529210 (not res!1068234)) b!2529222))

(assert (= (and b!2529222 res!1068239) b!2529220))

(assert (= (and b!2529220 (not res!1068240)) b!2529217))

(assert (= (and b!2529217 (not res!1068233)) b!2529211))

(assert (= (or b!2529214 b!2529213 b!2529220) bm!158294))

(assert (=> b!2529216 m!2880725))

(assert (=> bm!158294 m!2880727))

(assert (=> b!2529215 m!2880411))

(assert (=> b!2529223 m!2880731))

(assert (=> b!2529223 m!2880731))

(assert (=> b!2529223 m!2880733))

(assert (=> b!2529217 m!2880731))

(assert (=> b!2529217 m!2880731))

(assert (=> b!2529217 m!2880733))

(assert (=> b!2529211 m!2880725))

(assert (=> b!2529219 m!2880725))

(assert (=> b!2529219 m!2880725))

(declare-fun m!2881571 () Bool)

(assert (=> b!2529219 m!2881571))

(assert (=> b!2529219 m!2880731))

(assert (=> b!2529219 m!2881571))

(assert (=> b!2529219 m!2880731))

(declare-fun m!2881573 () Bool)

(assert (=> b!2529219 m!2881573))

(assert (=> d!719700 m!2880727))

(assert (=> d!719700 m!2880421))

(assert (=> d!719280 d!719700))

(assert (=> d!719280 d!719482))

(declare-fun d!719702 () Bool)

(assert (=> d!719702 (= (isEmpty!16968 (tail!4051 (Cons!29490 c!14016 (_1!17316 lt!900878)))) ((_ is Nil!29490) (tail!4051 (Cons!29490 c!14016 (_1!17316 lt!900878)))))))

(assert (=> b!2527963 d!719702))

(declare-fun d!719704 () Bool)

(assert (=> d!719704 (= (tail!4051 (Cons!29490 c!14016 (_1!17316 lt!900878))) (t!211289 (Cons!29490 c!14016 (_1!17316 lt!900878))))))

(assert (=> b!2527963 d!719704))

(declare-fun d!719706 () Bool)

(declare-fun c!403992 () Bool)

(assert (=> d!719706 (= c!403992 ((_ is Nil!29490) lt!900923))))

(declare-fun e!1600810 () (InoxSet C!15208))

(assert (=> d!719706 (= (content!4049 lt!900923) e!1600810)))

(declare-fun b!2529228 () Bool)

(assert (=> b!2529228 (= e!1600810 ((as const (Array C!15208 Bool)) false))))

(declare-fun b!2529229 () Bool)

(assert (=> b!2529229 (= e!1600810 ((_ map or) (store ((as const (Array C!15208 Bool)) false) (h!34910 lt!900923) true) (content!4049 (t!211289 lt!900923))))))

(assert (= (and d!719706 c!403992) b!2529228))

(assert (= (and d!719706 (not c!403992)) b!2529229))

(declare-fun m!2881575 () Bool)

(assert (=> b!2529229 m!2881575))

(declare-fun m!2881577 () Bool)

(assert (=> b!2529229 m!2881577))

(assert (=> d!719294 d!719706))

(declare-fun d!719708 () Bool)

(declare-fun c!403993 () Bool)

(assert (=> d!719708 (= c!403993 ((_ is Nil!29490) (_1!17316 lt!900878)))))

(declare-fun e!1600811 () (InoxSet C!15208))

(assert (=> d!719708 (= (content!4049 (_1!17316 lt!900878)) e!1600811)))

(declare-fun b!2529230 () Bool)

(assert (=> b!2529230 (= e!1600811 ((as const (Array C!15208 Bool)) false))))

(declare-fun b!2529231 () Bool)

(assert (=> b!2529231 (= e!1600811 ((_ map or) (store ((as const (Array C!15208 Bool)) false) (h!34910 (_1!17316 lt!900878)) true) (content!4049 (t!211289 (_1!17316 lt!900878)))))))

(assert (= (and d!719708 c!403993) b!2529230))

(assert (= (and d!719708 (not c!403993)) b!2529231))

(declare-fun m!2881579 () Bool)

(assert (=> b!2529231 m!2881579))

(declare-fun m!2881581 () Bool)

(assert (=> b!2529231 m!2881581))

(assert (=> d!719294 d!719708))

(declare-fun d!719710 () Bool)

(declare-fun c!403994 () Bool)

(assert (=> d!719710 (= c!403994 ((_ is Nil!29490) (_2!17316 lt!900878)))))

(declare-fun e!1600812 () (InoxSet C!15208))

(assert (=> d!719710 (= (content!4049 (_2!17316 lt!900878)) e!1600812)))

(declare-fun b!2529232 () Bool)

(assert (=> b!2529232 (= e!1600812 ((as const (Array C!15208 Bool)) false))))

(declare-fun b!2529233 () Bool)

(assert (=> b!2529233 (= e!1600812 ((_ map or) (store ((as const (Array C!15208 Bool)) false) (h!34910 (_2!17316 lt!900878)) true) (content!4049 (t!211289 (_2!17316 lt!900878)))))))

(assert (= (and d!719710 c!403994) b!2529232))

(assert (= (and d!719710 (not c!403994)) b!2529233))

(declare-fun m!2881583 () Bool)

(assert (=> b!2529233 m!2881583))

(declare-fun m!2881585 () Bool)

(assert (=> b!2529233 m!2881585))

(assert (=> d!719294 d!719710))

(assert (=> b!2527949 d!719486))

(assert (=> b!2527949 d!719488))

(assert (=> bm!158071 d!719598))

(declare-fun d!719712 () Bool)

(assert (=> d!719712 (= (nullable!2442 EmptyLang!7525) false)))

(assert (=> b!2527947 d!719712))

(assert (=> b!2528154 d!719510))

(assert (=> bm!158043 d!719604))

(declare-fun b!2529237 () Bool)

(declare-fun e!1600814 () Bool)

(declare-fun lt!901040 () List!29590)

(assert (=> b!2529237 (= e!1600814 (or (not (= (_2!17316 lt!900878) Nil!29490)) (= lt!901040 (t!211289 (_1!17316 lt!900878)))))))

(declare-fun b!2529235 () Bool)

(declare-fun e!1600813 () List!29590)

(assert (=> b!2529235 (= e!1600813 (Cons!29490 (h!34910 (t!211289 (_1!17316 lt!900878))) (++!7244 (t!211289 (t!211289 (_1!17316 lt!900878))) (_2!17316 lt!900878))))))

(declare-fun d!719714 () Bool)

(assert (=> d!719714 e!1600814))

(declare-fun res!1068242 () Bool)

(assert (=> d!719714 (=> (not res!1068242) (not e!1600814))))

(assert (=> d!719714 (= res!1068242 (= (content!4049 lt!901040) ((_ map or) (content!4049 (t!211289 (_1!17316 lt!900878))) (content!4049 (_2!17316 lt!900878)))))))

(assert (=> d!719714 (= lt!901040 e!1600813)))

(declare-fun c!403995 () Bool)

(assert (=> d!719714 (= c!403995 ((_ is Nil!29490) (t!211289 (_1!17316 lt!900878))))))

(assert (=> d!719714 (= (++!7244 (t!211289 (_1!17316 lt!900878)) (_2!17316 lt!900878)) lt!901040)))

(declare-fun b!2529234 () Bool)

(assert (=> b!2529234 (= e!1600813 (_2!17316 lt!900878))))

(declare-fun b!2529236 () Bool)

(declare-fun res!1068241 () Bool)

(assert (=> b!2529236 (=> (not res!1068241) (not e!1600814))))

(assert (=> b!2529236 (= res!1068241 (= (size!22931 lt!901040) (+ (size!22931 (t!211289 (_1!17316 lt!900878))) (size!22931 (_2!17316 lt!900878)))))))

(assert (= (and d!719714 c!403995) b!2529234))

(assert (= (and d!719714 (not c!403995)) b!2529235))

(assert (= (and d!719714 res!1068242) b!2529236))

(assert (= (and b!2529236 res!1068241) b!2529237))

(declare-fun m!2881587 () Bool)

(assert (=> b!2529235 m!2881587))

(declare-fun m!2881589 () Bool)

(assert (=> d!719714 m!2881589))

(assert (=> d!719714 m!2881581))

(assert (=> d!719714 m!2880551))

(declare-fun m!2881591 () Bool)

(assert (=> b!2529236 m!2881591))

(assert (=> b!2529236 m!2881343))

(assert (=> b!2529236 m!2880557))

(assert (=> b!2527907 d!719714))

(declare-fun b!2529239 () Bool)

(declare-fun e!1600815 () Bool)

(assert (=> b!2529239 (= e!1600815 (not (= (head!5774 (tail!4051 tl!4068)) (c!403591 (derivativeStep!2094 EmptyLang!7525 (head!5774 tl!4068))))))))

(declare-fun b!2529240 () Bool)

(declare-fun e!1600820 () Bool)

(declare-fun e!1600821 () Bool)

(assert (=> b!2529240 (= e!1600820 e!1600821)))

(declare-fun c!403998 () Bool)

(assert (=> b!2529240 (= c!403998 ((_ is EmptyLang!7525) (derivativeStep!2094 EmptyLang!7525 (head!5774 tl!4068))))))

(declare-fun bm!158295 () Bool)

(declare-fun call!158300 () Bool)

(assert (=> bm!158295 (= call!158300 (isEmpty!16968 (tail!4051 tl!4068)))))

(declare-fun b!2529241 () Bool)

(declare-fun res!1068247 () Bool)

(declare-fun e!1600818 () Bool)

(assert (=> b!2529241 (=> (not res!1068247) (not e!1600818))))

(assert (=> b!2529241 (= res!1068247 (not call!158300))))

(declare-fun b!2529242 () Bool)

(declare-fun lt!901041 () Bool)

(assert (=> b!2529242 (= e!1600820 (= lt!901041 call!158300))))

(declare-fun b!2529243 () Bool)

(declare-fun e!1600819 () Bool)

(assert (=> b!2529243 (= e!1600819 (nullable!2442 (derivativeStep!2094 EmptyLang!7525 (head!5774 tl!4068))))))

(declare-fun b!2529244 () Bool)

(assert (=> b!2529244 (= e!1600818 (= (head!5774 (tail!4051 tl!4068)) (c!403591 (derivativeStep!2094 EmptyLang!7525 (head!5774 tl!4068)))))))

(declare-fun b!2529245 () Bool)

(declare-fun res!1068243 () Bool)

(assert (=> b!2529245 (=> res!1068243 e!1600815)))

(assert (=> b!2529245 (= res!1068243 (not (isEmpty!16968 (tail!4051 (tail!4051 tl!4068)))))))

(declare-fun b!2529246 () Bool)

(assert (=> b!2529246 (= e!1600821 (not lt!901041))))

(declare-fun b!2529247 () Bool)

(assert (=> b!2529247 (= e!1600819 (matchR!3512 (derivativeStep!2094 (derivativeStep!2094 EmptyLang!7525 (head!5774 tl!4068)) (head!5774 (tail!4051 tl!4068))) (tail!4051 (tail!4051 tl!4068))))))

(declare-fun b!2529248 () Bool)

(declare-fun e!1600816 () Bool)

(assert (=> b!2529248 (= e!1600816 e!1600815)))

(declare-fun res!1068250 () Bool)

(assert (=> b!2529248 (=> res!1068250 e!1600815)))

(assert (=> b!2529248 (= res!1068250 call!158300)))

(declare-fun b!2529249 () Bool)

(declare-fun res!1068246 () Bool)

(declare-fun e!1600817 () Bool)

(assert (=> b!2529249 (=> res!1068246 e!1600817)))

(assert (=> b!2529249 (= res!1068246 (not ((_ is ElementMatch!7525) (derivativeStep!2094 EmptyLang!7525 (head!5774 tl!4068)))))))

(assert (=> b!2529249 (= e!1600821 e!1600817)))

(declare-fun d!719716 () Bool)

(assert (=> d!719716 e!1600820))

(declare-fun c!403996 () Bool)

(assert (=> d!719716 (= c!403996 ((_ is EmptyExpr!7525) (derivativeStep!2094 EmptyLang!7525 (head!5774 tl!4068))))))

(assert (=> d!719716 (= lt!901041 e!1600819)))

(declare-fun c!403997 () Bool)

(assert (=> d!719716 (= c!403997 (isEmpty!16968 (tail!4051 tl!4068)))))

(assert (=> d!719716 (validRegex!3151 (derivativeStep!2094 EmptyLang!7525 (head!5774 tl!4068)))))

(assert (=> d!719716 (= (matchR!3512 (derivativeStep!2094 EmptyLang!7525 (head!5774 tl!4068)) (tail!4051 tl!4068)) lt!901041)))

(declare-fun b!2529238 () Bool)

(declare-fun res!1068244 () Bool)

(assert (=> b!2529238 (=> res!1068244 e!1600817)))

(assert (=> b!2529238 (= res!1068244 e!1600818)))

(declare-fun res!1068245 () Bool)

(assert (=> b!2529238 (=> (not res!1068245) (not e!1600818))))

(assert (=> b!2529238 (= res!1068245 lt!901041)))

(declare-fun b!2529250 () Bool)

(assert (=> b!2529250 (= e!1600817 e!1600816)))

(declare-fun res!1068249 () Bool)

(assert (=> b!2529250 (=> (not res!1068249) (not e!1600816))))

(assert (=> b!2529250 (= res!1068249 (not lt!901041))))

(declare-fun b!2529251 () Bool)

(declare-fun res!1068248 () Bool)

(assert (=> b!2529251 (=> (not res!1068248) (not e!1600818))))

(assert (=> b!2529251 (= res!1068248 (isEmpty!16968 (tail!4051 (tail!4051 tl!4068))))))

(assert (= (and d!719716 c!403997) b!2529243))

(assert (= (and d!719716 (not c!403997)) b!2529247))

(assert (= (and d!719716 c!403996) b!2529242))

(assert (= (and d!719716 (not c!403996)) b!2529240))

(assert (= (and b!2529240 c!403998) b!2529246))

(assert (= (and b!2529240 (not c!403998)) b!2529249))

(assert (= (and b!2529249 (not res!1068246)) b!2529238))

(assert (= (and b!2529238 res!1068245) b!2529241))

(assert (= (and b!2529241 res!1068247) b!2529251))

(assert (= (and b!2529251 res!1068248) b!2529244))

(assert (= (and b!2529238 (not res!1068244)) b!2529250))

(assert (= (and b!2529250 res!1068249) b!2529248))

(assert (= (and b!2529248 (not res!1068250)) b!2529245))

(assert (= (and b!2529245 (not res!1068243)) b!2529239))

(assert (= (or b!2529242 b!2529241 b!2529248) bm!158295))

(assert (=> b!2529244 m!2880581))

(assert (=> b!2529244 m!2881039))

(assert (=> bm!158295 m!2880581))

(assert (=> bm!158295 m!2880583))

(assert (=> b!2529243 m!2880585))

(declare-fun m!2881593 () Bool)

(assert (=> b!2529243 m!2881593))

(assert (=> b!2529251 m!2880581))

(assert (=> b!2529251 m!2881045))

(assert (=> b!2529251 m!2881045))

(assert (=> b!2529251 m!2881047))

(assert (=> b!2529245 m!2880581))

(assert (=> b!2529245 m!2881045))

(assert (=> b!2529245 m!2881045))

(assert (=> b!2529245 m!2881047))

(assert (=> b!2529239 m!2880581))

(assert (=> b!2529239 m!2881039))

(assert (=> b!2529247 m!2880581))

(assert (=> b!2529247 m!2881039))

(assert (=> b!2529247 m!2880585))

(assert (=> b!2529247 m!2881039))

(declare-fun m!2881595 () Bool)

(assert (=> b!2529247 m!2881595))

(assert (=> b!2529247 m!2880581))

(assert (=> b!2529247 m!2881045))

(assert (=> b!2529247 m!2881595))

(assert (=> b!2529247 m!2881045))

(declare-fun m!2881597 () Bool)

(assert (=> b!2529247 m!2881597))

(assert (=> d!719716 m!2880581))

(assert (=> d!719716 m!2880583))

(assert (=> d!719716 m!2880585))

(declare-fun m!2881599 () Bool)

(assert (=> d!719716 m!2881599))

(assert (=> b!2527951 d!719716))

(declare-fun b!2529252 () Bool)

(declare-fun e!1600824 () Regex!7525)

(declare-fun e!1600826 () Regex!7525)

(assert (=> b!2529252 (= e!1600824 e!1600826)))

(declare-fun c!404002 () Bool)

(assert (=> b!2529252 (= c!404002 ((_ is ElementMatch!7525) EmptyLang!7525))))

(declare-fun b!2529253 () Bool)

(declare-fun e!1600822 () Regex!7525)

(declare-fun call!158304 () Regex!7525)

(assert (=> b!2529253 (= e!1600822 (Union!7525 (Concat!12221 call!158304 (regTwo!15562 EmptyLang!7525)) EmptyLang!7525))))

(declare-fun b!2529254 () Bool)

(declare-fun e!1600823 () Regex!7525)

(declare-fun call!158301 () Regex!7525)

(assert (=> b!2529254 (= e!1600823 (Concat!12221 call!158301 EmptyLang!7525))))

(declare-fun b!2529255 () Bool)

(declare-fun e!1600825 () Regex!7525)

(assert (=> b!2529255 (= e!1600825 e!1600823)))

(declare-fun c!404001 () Bool)

(assert (=> b!2529255 (= c!404001 ((_ is Star!7525) EmptyLang!7525))))

(declare-fun b!2529256 () Bool)

(declare-fun call!158302 () Regex!7525)

(declare-fun call!158303 () Regex!7525)

(assert (=> b!2529256 (= e!1600825 (Union!7525 call!158302 call!158303))))

(declare-fun bm!158296 () Bool)

(assert (=> bm!158296 (= call!158304 call!158301)))

(declare-fun bm!158297 () Bool)

(assert (=> bm!158297 (= call!158301 call!158303)))

(declare-fun b!2529257 () Bool)

(assert (=> b!2529257 (= e!1600822 (Union!7525 (Concat!12221 call!158304 (regTwo!15562 EmptyLang!7525)) call!158302))))

(declare-fun bm!158298 () Bool)

(declare-fun c!404000 () Bool)

(assert (=> bm!158298 (= call!158303 (derivativeStep!2094 (ite c!404000 (regTwo!15563 EmptyLang!7525) (ite c!404001 (reg!7854 EmptyLang!7525) (regOne!15562 EmptyLang!7525))) (head!5774 tl!4068)))))

(declare-fun b!2529258 () Bool)

(assert (=> b!2529258 (= c!404000 ((_ is Union!7525) EmptyLang!7525))))

(assert (=> b!2529258 (= e!1600826 e!1600825)))

(declare-fun b!2529259 () Bool)

(assert (=> b!2529259 (= e!1600824 EmptyLang!7525)))

(declare-fun bm!158299 () Bool)

(assert (=> bm!158299 (= call!158302 (derivativeStep!2094 (ite c!404000 (regOne!15563 EmptyLang!7525) (regTwo!15562 EmptyLang!7525)) (head!5774 tl!4068)))))

(declare-fun b!2529260 () Bool)

(declare-fun c!404003 () Bool)

(assert (=> b!2529260 (= c!404003 (nullable!2442 (regOne!15562 EmptyLang!7525)))))

(assert (=> b!2529260 (= e!1600823 e!1600822)))

(declare-fun d!719718 () Bool)

(declare-fun lt!901042 () Regex!7525)

(assert (=> d!719718 (validRegex!3151 lt!901042)))

(assert (=> d!719718 (= lt!901042 e!1600824)))

(declare-fun c!403999 () Bool)

(assert (=> d!719718 (= c!403999 (or ((_ is EmptyExpr!7525) EmptyLang!7525) ((_ is EmptyLang!7525) EmptyLang!7525)))))

(assert (=> d!719718 (validRegex!3151 EmptyLang!7525)))

(assert (=> d!719718 (= (derivativeStep!2094 EmptyLang!7525 (head!5774 tl!4068)) lt!901042)))

(declare-fun b!2529261 () Bool)

(assert (=> b!2529261 (= e!1600826 (ite (= (head!5774 tl!4068) (c!403591 EmptyLang!7525)) EmptyExpr!7525 EmptyLang!7525))))

(assert (= (and d!719718 c!403999) b!2529259))

(assert (= (and d!719718 (not c!403999)) b!2529252))

(assert (= (and b!2529252 c!404002) b!2529261))

(assert (= (and b!2529252 (not c!404002)) b!2529258))

(assert (= (and b!2529258 c!404000) b!2529256))

(assert (= (and b!2529258 (not c!404000)) b!2529255))

(assert (= (and b!2529255 c!404001) b!2529254))

(assert (= (and b!2529255 (not c!404001)) b!2529260))

(assert (= (and b!2529260 c!404003) b!2529257))

(assert (= (and b!2529260 (not c!404003)) b!2529253))

(assert (= (or b!2529257 b!2529253) bm!158296))

(assert (= (or b!2529254 bm!158296) bm!158297))

(assert (= (or b!2529256 bm!158297) bm!158298))

(assert (= (or b!2529256 b!2529257) bm!158299))

(assert (=> bm!158298 m!2880575))

(declare-fun m!2881601 () Bool)

(assert (=> bm!158298 m!2881601))

(assert (=> bm!158299 m!2880575))

(declare-fun m!2881603 () Bool)

(assert (=> bm!158299 m!2881603))

(assert (=> b!2529260 m!2881085))

(declare-fun m!2881605 () Bool)

(assert (=> d!719718 m!2881605))

(assert (=> d!719718 m!2880589))

(assert (=> b!2527951 d!719718))

(assert (=> b!2527951 d!719502))

(assert (=> b!2527951 d!719488))

(assert (=> b!2527916 d!719662))

(assert (=> bm!158052 d!719500))

(assert (=> b!2527971 d!719502))

(declare-fun b!2529263 () Bool)

(declare-fun e!1600827 () Bool)

(assert (=> b!2529263 (= e!1600827 (not (= (head!5774 (tail!4051 (Cons!29490 c!14016 (_1!17316 lt!900878)))) (c!403591 (derivativeStep!2094 (regOne!15562 r!27340) (head!5774 (Cons!29490 c!14016 (_1!17316 lt!900878))))))))))

(declare-fun b!2529264 () Bool)

(declare-fun e!1600832 () Bool)

(declare-fun e!1600833 () Bool)

(assert (=> b!2529264 (= e!1600832 e!1600833)))

(declare-fun c!404006 () Bool)

(assert (=> b!2529264 (= c!404006 ((_ is EmptyLang!7525) (derivativeStep!2094 (regOne!15562 r!27340) (head!5774 (Cons!29490 c!14016 (_1!17316 lt!900878))))))))

(declare-fun bm!158300 () Bool)

(declare-fun call!158305 () Bool)

(assert (=> bm!158300 (= call!158305 (isEmpty!16968 (tail!4051 (Cons!29490 c!14016 (_1!17316 lt!900878)))))))

(declare-fun b!2529265 () Bool)

(declare-fun res!1068255 () Bool)

(declare-fun e!1600830 () Bool)

(assert (=> b!2529265 (=> (not res!1068255) (not e!1600830))))

(assert (=> b!2529265 (= res!1068255 (not call!158305))))

(declare-fun b!2529266 () Bool)

(declare-fun lt!901043 () Bool)

(assert (=> b!2529266 (= e!1600832 (= lt!901043 call!158305))))

(declare-fun e!1600831 () Bool)

(declare-fun b!2529267 () Bool)

(assert (=> b!2529267 (= e!1600831 (nullable!2442 (derivativeStep!2094 (regOne!15562 r!27340) (head!5774 (Cons!29490 c!14016 (_1!17316 lt!900878))))))))

(declare-fun b!2529268 () Bool)

(assert (=> b!2529268 (= e!1600830 (= (head!5774 (tail!4051 (Cons!29490 c!14016 (_1!17316 lt!900878)))) (c!403591 (derivativeStep!2094 (regOne!15562 r!27340) (head!5774 (Cons!29490 c!14016 (_1!17316 lt!900878)))))))))

(declare-fun b!2529269 () Bool)

(declare-fun res!1068251 () Bool)

(assert (=> b!2529269 (=> res!1068251 e!1600827)))

(assert (=> b!2529269 (= res!1068251 (not (isEmpty!16968 (tail!4051 (tail!4051 (Cons!29490 c!14016 (_1!17316 lt!900878)))))))))

(declare-fun b!2529270 () Bool)

(assert (=> b!2529270 (= e!1600833 (not lt!901043))))

(declare-fun b!2529271 () Bool)

(assert (=> b!2529271 (= e!1600831 (matchR!3512 (derivativeStep!2094 (derivativeStep!2094 (regOne!15562 r!27340) (head!5774 (Cons!29490 c!14016 (_1!17316 lt!900878)))) (head!5774 (tail!4051 (Cons!29490 c!14016 (_1!17316 lt!900878))))) (tail!4051 (tail!4051 (Cons!29490 c!14016 (_1!17316 lt!900878))))))))

(declare-fun b!2529272 () Bool)

(declare-fun e!1600828 () Bool)

(assert (=> b!2529272 (= e!1600828 e!1600827)))

(declare-fun res!1068258 () Bool)

(assert (=> b!2529272 (=> res!1068258 e!1600827)))

(assert (=> b!2529272 (= res!1068258 call!158305)))

(declare-fun b!2529273 () Bool)

(declare-fun res!1068254 () Bool)

(declare-fun e!1600829 () Bool)

(assert (=> b!2529273 (=> res!1068254 e!1600829)))

(assert (=> b!2529273 (= res!1068254 (not ((_ is ElementMatch!7525) (derivativeStep!2094 (regOne!15562 r!27340) (head!5774 (Cons!29490 c!14016 (_1!17316 lt!900878)))))))))

(assert (=> b!2529273 (= e!1600833 e!1600829)))

(declare-fun d!719720 () Bool)

(assert (=> d!719720 e!1600832))

(declare-fun c!404004 () Bool)

(assert (=> d!719720 (= c!404004 ((_ is EmptyExpr!7525) (derivativeStep!2094 (regOne!15562 r!27340) (head!5774 (Cons!29490 c!14016 (_1!17316 lt!900878))))))))

(assert (=> d!719720 (= lt!901043 e!1600831)))

(declare-fun c!404005 () Bool)

(assert (=> d!719720 (= c!404005 (isEmpty!16968 (tail!4051 (Cons!29490 c!14016 (_1!17316 lt!900878)))))))

(assert (=> d!719720 (validRegex!3151 (derivativeStep!2094 (regOne!15562 r!27340) (head!5774 (Cons!29490 c!14016 (_1!17316 lt!900878)))))))

(assert (=> d!719720 (= (matchR!3512 (derivativeStep!2094 (regOne!15562 r!27340) (head!5774 (Cons!29490 c!14016 (_1!17316 lt!900878)))) (tail!4051 (Cons!29490 c!14016 (_1!17316 lt!900878)))) lt!901043)))

(declare-fun b!2529262 () Bool)

(declare-fun res!1068252 () Bool)

(assert (=> b!2529262 (=> res!1068252 e!1600829)))

(assert (=> b!2529262 (= res!1068252 e!1600830)))

(declare-fun res!1068253 () Bool)

(assert (=> b!2529262 (=> (not res!1068253) (not e!1600830))))

(assert (=> b!2529262 (= res!1068253 lt!901043)))

(declare-fun b!2529274 () Bool)

(assert (=> b!2529274 (= e!1600829 e!1600828)))

(declare-fun res!1068257 () Bool)

(assert (=> b!2529274 (=> (not res!1068257) (not e!1600828))))

(assert (=> b!2529274 (= res!1068257 (not lt!901043))))

(declare-fun b!2529275 () Bool)

(declare-fun res!1068256 () Bool)

(assert (=> b!2529275 (=> (not res!1068256) (not e!1600830))))

(assert (=> b!2529275 (= res!1068256 (isEmpty!16968 (tail!4051 (tail!4051 (Cons!29490 c!14016 (_1!17316 lt!900878))))))))

(assert (= (and d!719720 c!404005) b!2529267))

(assert (= (and d!719720 (not c!404005)) b!2529271))

(assert (= (and d!719720 c!404004) b!2529266))

(assert (= (and d!719720 (not c!404004)) b!2529264))

(assert (= (and b!2529264 c!404006) b!2529270))

(assert (= (and b!2529264 (not c!404006)) b!2529273))

(assert (= (and b!2529273 (not res!1068254)) b!2529262))

(assert (= (and b!2529262 res!1068253) b!2529265))

(assert (= (and b!2529265 res!1068255) b!2529275))

(assert (= (and b!2529275 res!1068256) b!2529268))

(assert (= (and b!2529262 (not res!1068252)) b!2529274))

(assert (= (and b!2529274 res!1068257) b!2529272))

(assert (= (and b!2529272 (not res!1068258)) b!2529269))

(assert (= (and b!2529269 (not res!1068251)) b!2529263))

(assert (= (or b!2529266 b!2529265 b!2529272) bm!158300))

(assert (=> b!2529268 m!2880595))

(declare-fun m!2881607 () Bool)

(assert (=> b!2529268 m!2881607))

(assert (=> bm!158300 m!2880595))

(assert (=> bm!158300 m!2880597))

(assert (=> b!2529267 m!2880599))

(declare-fun m!2881609 () Bool)

(assert (=> b!2529267 m!2881609))

(assert (=> b!2529275 m!2880595))

(declare-fun m!2881611 () Bool)

(assert (=> b!2529275 m!2881611))

(assert (=> b!2529275 m!2881611))

(declare-fun m!2881613 () Bool)

(assert (=> b!2529275 m!2881613))

(assert (=> b!2529269 m!2880595))

(assert (=> b!2529269 m!2881611))

(assert (=> b!2529269 m!2881611))

(assert (=> b!2529269 m!2881613))

(assert (=> b!2529263 m!2880595))

(assert (=> b!2529263 m!2881607))

(assert (=> b!2529271 m!2880595))

(assert (=> b!2529271 m!2881607))

(assert (=> b!2529271 m!2880599))

(assert (=> b!2529271 m!2881607))

(declare-fun m!2881615 () Bool)

(assert (=> b!2529271 m!2881615))

(assert (=> b!2529271 m!2880595))

(assert (=> b!2529271 m!2881611))

(assert (=> b!2529271 m!2881615))

(assert (=> b!2529271 m!2881611))

(declare-fun m!2881617 () Bool)

(assert (=> b!2529271 m!2881617))

(assert (=> d!719720 m!2880595))

(assert (=> d!719720 m!2880597))

(assert (=> d!719720 m!2880599))

(declare-fun m!2881619 () Bool)

(assert (=> d!719720 m!2881619))

(assert (=> b!2527965 d!719720))

(declare-fun b!2529276 () Bool)

(declare-fun e!1600836 () Regex!7525)

(declare-fun e!1600838 () Regex!7525)

(assert (=> b!2529276 (= e!1600836 e!1600838)))

(declare-fun c!404010 () Bool)

(assert (=> b!2529276 (= c!404010 ((_ is ElementMatch!7525) (regOne!15562 r!27340)))))

(declare-fun b!2529277 () Bool)

(declare-fun e!1600834 () Regex!7525)

(declare-fun call!158309 () Regex!7525)

(assert (=> b!2529277 (= e!1600834 (Union!7525 (Concat!12221 call!158309 (regTwo!15562 (regOne!15562 r!27340))) EmptyLang!7525))))

(declare-fun b!2529278 () Bool)

(declare-fun e!1600835 () Regex!7525)

(declare-fun call!158306 () Regex!7525)

(assert (=> b!2529278 (= e!1600835 (Concat!12221 call!158306 (regOne!15562 r!27340)))))

(declare-fun b!2529279 () Bool)

(declare-fun e!1600837 () Regex!7525)

(assert (=> b!2529279 (= e!1600837 e!1600835)))

(declare-fun c!404009 () Bool)

(assert (=> b!2529279 (= c!404009 ((_ is Star!7525) (regOne!15562 r!27340)))))

(declare-fun b!2529280 () Bool)

(declare-fun call!158307 () Regex!7525)

(declare-fun call!158308 () Regex!7525)

(assert (=> b!2529280 (= e!1600837 (Union!7525 call!158307 call!158308))))

(declare-fun bm!158301 () Bool)

(assert (=> bm!158301 (= call!158309 call!158306)))

(declare-fun bm!158302 () Bool)

(assert (=> bm!158302 (= call!158306 call!158308)))

(declare-fun b!2529281 () Bool)

(assert (=> b!2529281 (= e!1600834 (Union!7525 (Concat!12221 call!158309 (regTwo!15562 (regOne!15562 r!27340))) call!158307))))

(declare-fun c!404008 () Bool)

(declare-fun bm!158303 () Bool)

(assert (=> bm!158303 (= call!158308 (derivativeStep!2094 (ite c!404008 (regTwo!15563 (regOne!15562 r!27340)) (ite c!404009 (reg!7854 (regOne!15562 r!27340)) (regOne!15562 (regOne!15562 r!27340)))) (head!5774 (Cons!29490 c!14016 (_1!17316 lt!900878)))))))

(declare-fun b!2529282 () Bool)

(assert (=> b!2529282 (= c!404008 ((_ is Union!7525) (regOne!15562 r!27340)))))

(assert (=> b!2529282 (= e!1600838 e!1600837)))

(declare-fun b!2529283 () Bool)

(assert (=> b!2529283 (= e!1600836 EmptyLang!7525)))

(declare-fun bm!158304 () Bool)

(assert (=> bm!158304 (= call!158307 (derivativeStep!2094 (ite c!404008 (regOne!15563 (regOne!15562 r!27340)) (regTwo!15562 (regOne!15562 r!27340))) (head!5774 (Cons!29490 c!14016 (_1!17316 lt!900878)))))))

(declare-fun b!2529284 () Bool)

(declare-fun c!404011 () Bool)

(assert (=> b!2529284 (= c!404011 (nullable!2442 (regOne!15562 (regOne!15562 r!27340))))))

(assert (=> b!2529284 (= e!1600835 e!1600834)))

(declare-fun d!719722 () Bool)

(declare-fun lt!901044 () Regex!7525)

(assert (=> d!719722 (validRegex!3151 lt!901044)))

(assert (=> d!719722 (= lt!901044 e!1600836)))

(declare-fun c!404007 () Bool)

(assert (=> d!719722 (= c!404007 (or ((_ is EmptyExpr!7525) (regOne!15562 r!27340)) ((_ is EmptyLang!7525) (regOne!15562 r!27340))))))

(assert (=> d!719722 (validRegex!3151 (regOne!15562 r!27340))))

(assert (=> d!719722 (= (derivativeStep!2094 (regOne!15562 r!27340) (head!5774 (Cons!29490 c!14016 (_1!17316 lt!900878)))) lt!901044)))

(declare-fun b!2529285 () Bool)

(assert (=> b!2529285 (= e!1600838 (ite (= (head!5774 (Cons!29490 c!14016 (_1!17316 lt!900878))) (c!403591 (regOne!15562 r!27340))) EmptyExpr!7525 EmptyLang!7525))))

(assert (= (and d!719722 c!404007) b!2529283))

(assert (= (and d!719722 (not c!404007)) b!2529276))

(assert (= (and b!2529276 c!404010) b!2529285))

(assert (= (and b!2529276 (not c!404010)) b!2529282))

(assert (= (and b!2529282 c!404008) b!2529280))

(assert (= (and b!2529282 (not c!404008)) b!2529279))

(assert (= (and b!2529279 c!404009) b!2529278))

(assert (= (and b!2529279 (not c!404009)) b!2529284))

(assert (= (and b!2529284 c!404011) b!2529281))

(assert (= (and b!2529284 (not c!404011)) b!2529277))

(assert (= (or b!2529281 b!2529277) bm!158301))

(assert (= (or b!2529278 bm!158301) bm!158302))

(assert (= (or b!2529280 bm!158302) bm!158303))

(assert (= (or b!2529280 b!2529281) bm!158304))

(assert (=> bm!158303 m!2880591))

(declare-fun m!2881621 () Bool)

(assert (=> bm!158303 m!2881621))

(assert (=> bm!158304 m!2880591))

(declare-fun m!2881623 () Bool)

(assert (=> bm!158304 m!2881623))

(assert (=> b!2529284 m!2880651))

(declare-fun m!2881625 () Bool)

(assert (=> d!719722 m!2881625))

(assert (=> d!719722 m!2880603))

(assert (=> b!2527965 d!719722))

(assert (=> b!2527965 d!719646))

(assert (=> b!2527965 d!719704))

(assert (=> b!2528136 d!719308))

(assert (=> b!2527969 d!719702))

(assert (=> b!2527969 d!719704))

(assert (=> d!719336 d!719500))

(assert (=> d!719336 d!719648))

(declare-fun d!719724 () Bool)

(declare-fun lt!901045 () Regex!7525)

(assert (=> d!719724 (validRegex!3151 lt!901045)))

(declare-fun e!1600839 () Regex!7525)

(assert (=> d!719724 (= lt!901045 e!1600839)))

(declare-fun c!404012 () Bool)

(assert (=> d!719724 (= c!404012 ((_ is Cons!29490) (t!211289 tl!4068)))))

(assert (=> d!719724 (validRegex!3151 (derivativeStep!2094 lt!900874 (h!34910 tl!4068)))))

(assert (=> d!719724 (= (derivative!220 (derivativeStep!2094 lt!900874 (h!34910 tl!4068)) (t!211289 tl!4068)) lt!901045)))

(declare-fun b!2529286 () Bool)

(assert (=> b!2529286 (= e!1600839 (derivative!220 (derivativeStep!2094 (derivativeStep!2094 lt!900874 (h!34910 tl!4068)) (h!34910 (t!211289 tl!4068))) (t!211289 (t!211289 tl!4068))))))

(declare-fun b!2529287 () Bool)

(assert (=> b!2529287 (= e!1600839 (derivativeStep!2094 lt!900874 (h!34910 tl!4068)))))

(assert (= (and d!719724 c!404012) b!2529286))

(assert (= (and d!719724 (not c!404012)) b!2529287))

(declare-fun m!2881627 () Bool)

(assert (=> d!719724 m!2881627))

(assert (=> d!719724 m!2880707))

(declare-fun m!2881629 () Bool)

(assert (=> d!719724 m!2881629))

(assert (=> b!2529286 m!2880707))

(declare-fun m!2881631 () Bool)

(assert (=> b!2529286 m!2881631))

(assert (=> b!2529286 m!2881631))

(declare-fun m!2881633 () Bool)

(assert (=> b!2529286 m!2881633))

(assert (=> b!2528094 d!719724))

(declare-fun b!2529288 () Bool)

(declare-fun e!1600842 () Regex!7525)

(declare-fun e!1600844 () Regex!7525)

(assert (=> b!2529288 (= e!1600842 e!1600844)))

(declare-fun c!404016 () Bool)

(assert (=> b!2529288 (= c!404016 ((_ is ElementMatch!7525) lt!900874))))

(declare-fun b!2529289 () Bool)

(declare-fun e!1600840 () Regex!7525)

(declare-fun call!158313 () Regex!7525)

(assert (=> b!2529289 (= e!1600840 (Union!7525 (Concat!12221 call!158313 (regTwo!15562 lt!900874)) EmptyLang!7525))))

(declare-fun b!2529290 () Bool)

(declare-fun e!1600841 () Regex!7525)

(declare-fun call!158310 () Regex!7525)

(assert (=> b!2529290 (= e!1600841 (Concat!12221 call!158310 lt!900874))))

(declare-fun b!2529291 () Bool)

(declare-fun e!1600843 () Regex!7525)

(assert (=> b!2529291 (= e!1600843 e!1600841)))

(declare-fun c!404015 () Bool)

(assert (=> b!2529291 (= c!404015 ((_ is Star!7525) lt!900874))))

(declare-fun b!2529292 () Bool)

(declare-fun call!158311 () Regex!7525)

(declare-fun call!158312 () Regex!7525)

(assert (=> b!2529292 (= e!1600843 (Union!7525 call!158311 call!158312))))

(declare-fun bm!158305 () Bool)

(assert (=> bm!158305 (= call!158313 call!158310)))

(declare-fun bm!158306 () Bool)

(assert (=> bm!158306 (= call!158310 call!158312)))

(declare-fun b!2529293 () Bool)

(assert (=> b!2529293 (= e!1600840 (Union!7525 (Concat!12221 call!158313 (regTwo!15562 lt!900874)) call!158311))))

(declare-fun c!404014 () Bool)

(declare-fun bm!158307 () Bool)

(assert (=> bm!158307 (= call!158312 (derivativeStep!2094 (ite c!404014 (regTwo!15563 lt!900874) (ite c!404015 (reg!7854 lt!900874) (regOne!15562 lt!900874))) (h!34910 tl!4068)))))

(declare-fun b!2529294 () Bool)

(assert (=> b!2529294 (= c!404014 ((_ is Union!7525) lt!900874))))

(assert (=> b!2529294 (= e!1600844 e!1600843)))

(declare-fun b!2529295 () Bool)

(assert (=> b!2529295 (= e!1600842 EmptyLang!7525)))

(declare-fun bm!158308 () Bool)

(assert (=> bm!158308 (= call!158311 (derivativeStep!2094 (ite c!404014 (regOne!15563 lt!900874) (regTwo!15562 lt!900874)) (h!34910 tl!4068)))))

(declare-fun b!2529296 () Bool)

(declare-fun c!404017 () Bool)

(assert (=> b!2529296 (= c!404017 (nullable!2442 (regOne!15562 lt!900874)))))

(assert (=> b!2529296 (= e!1600841 e!1600840)))

(declare-fun d!719726 () Bool)

(declare-fun lt!901046 () Regex!7525)

(assert (=> d!719726 (validRegex!3151 lt!901046)))

(assert (=> d!719726 (= lt!901046 e!1600842)))

(declare-fun c!404013 () Bool)

(assert (=> d!719726 (= c!404013 (or ((_ is EmptyExpr!7525) lt!900874) ((_ is EmptyLang!7525) lt!900874)))))

(assert (=> d!719726 (validRegex!3151 lt!900874)))

(assert (=> d!719726 (= (derivativeStep!2094 lt!900874 (h!34910 tl!4068)) lt!901046)))

(declare-fun b!2529297 () Bool)

(assert (=> b!2529297 (= e!1600844 (ite (= (h!34910 tl!4068) (c!403591 lt!900874)) EmptyExpr!7525 EmptyLang!7525))))

(assert (= (and d!719726 c!404013) b!2529295))

(assert (= (and d!719726 (not c!404013)) b!2529288))

(assert (= (and b!2529288 c!404016) b!2529297))

(assert (= (and b!2529288 (not c!404016)) b!2529294))

(assert (= (and b!2529294 c!404014) b!2529292))

(assert (= (and b!2529294 (not c!404014)) b!2529291))

(assert (= (and b!2529291 c!404015) b!2529290))

(assert (= (and b!2529291 (not c!404015)) b!2529296))

(assert (= (and b!2529296 c!404017) b!2529293))

(assert (= (and b!2529296 (not c!404017)) b!2529289))

(assert (= (or b!2529293 b!2529289) bm!158305))

(assert (= (or b!2529290 bm!158305) bm!158306))

(assert (= (or b!2529292 bm!158306) bm!158307))

(assert (= (or b!2529292 b!2529293) bm!158308))

(declare-fun m!2881635 () Bool)

(assert (=> bm!158307 m!2881635))

(declare-fun m!2881637 () Bool)

(assert (=> bm!158308 m!2881637))

(assert (=> b!2529296 m!2881565))

(declare-fun m!2881639 () Bool)

(assert (=> d!719726 m!2881639))

(assert (=> d!719726 m!2880705))

(assert (=> b!2528094 d!719726))

(assert (=> b!2528159 d!719510))

(declare-fun b!2529298 () Bool)

(declare-fun e!1600845 () Bool)

(declare-fun tp!807193 () Bool)

(assert (=> b!2529298 (= e!1600845 (and tp_is_empty!12905 tp!807193))))

(assert (=> b!2528210 (= tp!807031 e!1600845)))

(assert (= (and b!2528210 ((_ is Cons!29490) (t!211289 (t!211289 tl!4068)))) b!2529298))

(declare-fun b!2529301 () Bool)

(declare-fun e!1600846 () Bool)

(declare-fun tp!807196 () Bool)

(assert (=> b!2529301 (= e!1600846 tp!807196)))

(declare-fun b!2529299 () Bool)

(assert (=> b!2529299 (= e!1600846 tp_is_empty!12905)))

(declare-fun b!2529300 () Bool)

(declare-fun tp!807197 () Bool)

(declare-fun tp!807195 () Bool)

(assert (=> b!2529300 (= e!1600846 (and tp!807197 tp!807195))))

(assert (=> b!2528239 (= tp!807064 e!1600846)))

(declare-fun b!2529302 () Bool)

(declare-fun tp!807194 () Bool)

(declare-fun tp!807198 () Bool)

(assert (=> b!2529302 (= e!1600846 (and tp!807194 tp!807198))))

(assert (= (and b!2528239 ((_ is ElementMatch!7525) (reg!7854 (reg!7854 r!27340)))) b!2529299))

(assert (= (and b!2528239 ((_ is Concat!12221) (reg!7854 (reg!7854 r!27340)))) b!2529300))

(assert (= (and b!2528239 ((_ is Star!7525) (reg!7854 (reg!7854 r!27340)))) b!2529301))

(assert (= (and b!2528239 ((_ is Union!7525) (reg!7854 (reg!7854 r!27340)))) b!2529302))

(declare-fun b!2529305 () Bool)

(declare-fun e!1600847 () Bool)

(declare-fun tp!807201 () Bool)

(assert (=> b!2529305 (= e!1600847 tp!807201)))

(declare-fun b!2529303 () Bool)

(assert (=> b!2529303 (= e!1600847 tp_is_empty!12905)))

(declare-fun b!2529304 () Bool)

(declare-fun tp!807202 () Bool)

(declare-fun tp!807200 () Bool)

(assert (=> b!2529304 (= e!1600847 (and tp!807202 tp!807200))))

(assert (=> b!2528234 (= tp!807060 e!1600847)))

(declare-fun b!2529306 () Bool)

(declare-fun tp!807199 () Bool)

(declare-fun tp!807203 () Bool)

(assert (=> b!2529306 (= e!1600847 (and tp!807199 tp!807203))))

(assert (= (and b!2528234 ((_ is ElementMatch!7525) (regOne!15562 (regTwo!15563 r!27340)))) b!2529303))

(assert (= (and b!2528234 ((_ is Concat!12221) (regOne!15562 (regTwo!15563 r!27340)))) b!2529304))

(assert (= (and b!2528234 ((_ is Star!7525) (regOne!15562 (regTwo!15563 r!27340)))) b!2529305))

(assert (= (and b!2528234 ((_ is Union!7525) (regOne!15562 (regTwo!15563 r!27340)))) b!2529306))

(declare-fun b!2529309 () Bool)

(declare-fun e!1600848 () Bool)

(declare-fun tp!807206 () Bool)

(assert (=> b!2529309 (= e!1600848 tp!807206)))

(declare-fun b!2529307 () Bool)

(assert (=> b!2529307 (= e!1600848 tp_is_empty!12905)))

(declare-fun b!2529308 () Bool)

(declare-fun tp!807207 () Bool)

(declare-fun tp!807205 () Bool)

(assert (=> b!2529308 (= e!1600848 (and tp!807207 tp!807205))))

(assert (=> b!2528234 (= tp!807058 e!1600848)))

(declare-fun b!2529310 () Bool)

(declare-fun tp!807204 () Bool)

(declare-fun tp!807208 () Bool)

(assert (=> b!2529310 (= e!1600848 (and tp!807204 tp!807208))))

(assert (= (and b!2528234 ((_ is ElementMatch!7525) (regTwo!15562 (regTwo!15563 r!27340)))) b!2529307))

(assert (= (and b!2528234 ((_ is Concat!12221) (regTwo!15562 (regTwo!15563 r!27340)))) b!2529308))

(assert (= (and b!2528234 ((_ is Star!7525) (regTwo!15562 (regTwo!15563 r!27340)))) b!2529309))

(assert (= (and b!2528234 ((_ is Union!7525) (regTwo!15562 (regTwo!15563 r!27340)))) b!2529310))

(declare-fun b!2529313 () Bool)

(declare-fun e!1600849 () Bool)

(declare-fun tp!807211 () Bool)

(assert (=> b!2529313 (= e!1600849 tp!807211)))

(declare-fun b!2529311 () Bool)

(assert (=> b!2529311 (= e!1600849 tp_is_empty!12905)))

(declare-fun b!2529312 () Bool)

(declare-fun tp!807212 () Bool)

(declare-fun tp!807210 () Bool)

(assert (=> b!2529312 (= e!1600849 (and tp!807212 tp!807210))))

(assert (=> b!2528238 (= tp!807065 e!1600849)))

(declare-fun b!2529314 () Bool)

(declare-fun tp!807209 () Bool)

(declare-fun tp!807213 () Bool)

(assert (=> b!2529314 (= e!1600849 (and tp!807209 tp!807213))))

(assert (= (and b!2528238 ((_ is ElementMatch!7525) (regOne!15562 (reg!7854 r!27340)))) b!2529311))

(assert (= (and b!2528238 ((_ is Concat!12221) (regOne!15562 (reg!7854 r!27340)))) b!2529312))

(assert (= (and b!2528238 ((_ is Star!7525) (regOne!15562 (reg!7854 r!27340)))) b!2529313))

(assert (= (and b!2528238 ((_ is Union!7525) (regOne!15562 (reg!7854 r!27340)))) b!2529314))

(declare-fun b!2529317 () Bool)

(declare-fun e!1600850 () Bool)

(declare-fun tp!807216 () Bool)

(assert (=> b!2529317 (= e!1600850 tp!807216)))

(declare-fun b!2529315 () Bool)

(assert (=> b!2529315 (= e!1600850 tp_is_empty!12905)))

(declare-fun b!2529316 () Bool)

(declare-fun tp!807217 () Bool)

(declare-fun tp!807215 () Bool)

(assert (=> b!2529316 (= e!1600850 (and tp!807217 tp!807215))))

(assert (=> b!2528238 (= tp!807063 e!1600850)))

(declare-fun b!2529318 () Bool)

(declare-fun tp!807214 () Bool)

(declare-fun tp!807218 () Bool)

(assert (=> b!2529318 (= e!1600850 (and tp!807214 tp!807218))))

(assert (= (and b!2528238 ((_ is ElementMatch!7525) (regTwo!15562 (reg!7854 r!27340)))) b!2529315))

(assert (= (and b!2528238 ((_ is Concat!12221) (regTwo!15562 (reg!7854 r!27340)))) b!2529316))

(assert (= (and b!2528238 ((_ is Star!7525) (regTwo!15562 (reg!7854 r!27340)))) b!2529317))

(assert (= (and b!2528238 ((_ is Union!7525) (regTwo!15562 (reg!7854 r!27340)))) b!2529318))

(declare-fun b!2529321 () Bool)

(declare-fun e!1600851 () Bool)

(declare-fun tp!807221 () Bool)

(assert (=> b!2529321 (= e!1600851 tp!807221)))

(declare-fun b!2529319 () Bool)

(assert (=> b!2529319 (= e!1600851 tp_is_empty!12905)))

(declare-fun b!2529320 () Bool)

(declare-fun tp!807222 () Bool)

(declare-fun tp!807220 () Bool)

(assert (=> b!2529320 (= e!1600851 (and tp!807222 tp!807220))))

(assert (=> b!2528222 (= tp!807045 e!1600851)))

(declare-fun b!2529322 () Bool)

(declare-fun tp!807219 () Bool)

(declare-fun tp!807223 () Bool)

(assert (=> b!2529322 (= e!1600851 (and tp!807219 tp!807223))))

(assert (= (and b!2528222 ((_ is ElementMatch!7525) (regOne!15562 (regOne!15562 r!27340)))) b!2529319))

(assert (= (and b!2528222 ((_ is Concat!12221) (regOne!15562 (regOne!15562 r!27340)))) b!2529320))

(assert (= (and b!2528222 ((_ is Star!7525) (regOne!15562 (regOne!15562 r!27340)))) b!2529321))

(assert (= (and b!2528222 ((_ is Union!7525) (regOne!15562 (regOne!15562 r!27340)))) b!2529322))

(declare-fun b!2529325 () Bool)

(declare-fun e!1600852 () Bool)

(declare-fun tp!807226 () Bool)

(assert (=> b!2529325 (= e!1600852 tp!807226)))

(declare-fun b!2529323 () Bool)

(assert (=> b!2529323 (= e!1600852 tp_is_empty!12905)))

(declare-fun b!2529324 () Bool)

(declare-fun tp!807227 () Bool)

(declare-fun tp!807225 () Bool)

(assert (=> b!2529324 (= e!1600852 (and tp!807227 tp!807225))))

(assert (=> b!2528222 (= tp!807043 e!1600852)))

(declare-fun b!2529326 () Bool)

(declare-fun tp!807224 () Bool)

(declare-fun tp!807228 () Bool)

(assert (=> b!2529326 (= e!1600852 (and tp!807224 tp!807228))))

(assert (= (and b!2528222 ((_ is ElementMatch!7525) (regTwo!15562 (regOne!15562 r!27340)))) b!2529323))

(assert (= (and b!2528222 ((_ is Concat!12221) (regTwo!15562 (regOne!15562 r!27340)))) b!2529324))

(assert (= (and b!2528222 ((_ is Star!7525) (regTwo!15562 (regOne!15562 r!27340)))) b!2529325))

(assert (= (and b!2528222 ((_ is Union!7525) (regTwo!15562 (regOne!15562 r!27340)))) b!2529326))

(declare-fun b!2529329 () Bool)

(declare-fun e!1600853 () Bool)

(declare-fun tp!807231 () Bool)

(assert (=> b!2529329 (= e!1600853 tp!807231)))

(declare-fun b!2529327 () Bool)

(assert (=> b!2529327 (= e!1600853 tp_is_empty!12905)))

(declare-fun b!2529328 () Bool)

(declare-fun tp!807232 () Bool)

(declare-fun tp!807230 () Bool)

(assert (=> b!2529328 (= e!1600853 (and tp!807232 tp!807230))))

(assert (=> b!2528227 (= tp!807049 e!1600853)))

(declare-fun b!2529330 () Bool)

(declare-fun tp!807229 () Bool)

(declare-fun tp!807233 () Bool)

(assert (=> b!2529330 (= e!1600853 (and tp!807229 tp!807233))))

(assert (= (and b!2528227 ((_ is ElementMatch!7525) (reg!7854 (regTwo!15562 r!27340)))) b!2529327))

(assert (= (and b!2528227 ((_ is Concat!12221) (reg!7854 (regTwo!15562 r!27340)))) b!2529328))

(assert (= (and b!2528227 ((_ is Star!7525) (reg!7854 (regTwo!15562 r!27340)))) b!2529329))

(assert (= (and b!2528227 ((_ is Union!7525) (reg!7854 (regTwo!15562 r!27340)))) b!2529330))

(declare-fun b!2529333 () Bool)

(declare-fun e!1600854 () Bool)

(declare-fun tp!807236 () Bool)

(assert (=> b!2529333 (= e!1600854 tp!807236)))

(declare-fun b!2529331 () Bool)

(assert (=> b!2529331 (= e!1600854 tp_is_empty!12905)))

(declare-fun b!2529332 () Bool)

(declare-fun tp!807237 () Bool)

(declare-fun tp!807235 () Bool)

(assert (=> b!2529332 (= e!1600854 (and tp!807237 tp!807235))))

(assert (=> b!2528240 (= tp!807062 e!1600854)))

(declare-fun b!2529334 () Bool)

(declare-fun tp!807234 () Bool)

(declare-fun tp!807238 () Bool)

(assert (=> b!2529334 (= e!1600854 (and tp!807234 tp!807238))))

(assert (= (and b!2528240 ((_ is ElementMatch!7525) (regOne!15563 (reg!7854 r!27340)))) b!2529331))

(assert (= (and b!2528240 ((_ is Concat!12221) (regOne!15563 (reg!7854 r!27340)))) b!2529332))

(assert (= (and b!2528240 ((_ is Star!7525) (regOne!15563 (reg!7854 r!27340)))) b!2529333))

(assert (= (and b!2528240 ((_ is Union!7525) (regOne!15563 (reg!7854 r!27340)))) b!2529334))

(declare-fun b!2529337 () Bool)

(declare-fun e!1600855 () Bool)

(declare-fun tp!807241 () Bool)

(assert (=> b!2529337 (= e!1600855 tp!807241)))

(declare-fun b!2529335 () Bool)

(assert (=> b!2529335 (= e!1600855 tp_is_empty!12905)))

(declare-fun b!2529336 () Bool)

(declare-fun tp!807242 () Bool)

(declare-fun tp!807240 () Bool)

(assert (=> b!2529336 (= e!1600855 (and tp!807242 tp!807240))))

(assert (=> b!2528240 (= tp!807066 e!1600855)))

(declare-fun b!2529338 () Bool)

(declare-fun tp!807239 () Bool)

(declare-fun tp!807243 () Bool)

(assert (=> b!2529338 (= e!1600855 (and tp!807239 tp!807243))))

(assert (= (and b!2528240 ((_ is ElementMatch!7525) (regTwo!15563 (reg!7854 r!27340)))) b!2529335))

(assert (= (and b!2528240 ((_ is Concat!12221) (regTwo!15563 (reg!7854 r!27340)))) b!2529336))

(assert (= (and b!2528240 ((_ is Star!7525) (regTwo!15563 (reg!7854 r!27340)))) b!2529337))

(assert (= (and b!2528240 ((_ is Union!7525) (regTwo!15563 (reg!7854 r!27340)))) b!2529338))

(declare-fun b!2529341 () Bool)

(declare-fun e!1600856 () Bool)

(declare-fun tp!807246 () Bool)

(assert (=> b!2529341 (= e!1600856 tp!807246)))

(declare-fun b!2529339 () Bool)

(assert (=> b!2529339 (= e!1600856 tp_is_empty!12905)))

(declare-fun b!2529340 () Bool)

(declare-fun tp!807247 () Bool)

(declare-fun tp!807245 () Bool)

(assert (=> b!2529340 (= e!1600856 (and tp!807247 tp!807245))))

(assert (=> b!2528235 (= tp!807059 e!1600856)))

(declare-fun b!2529342 () Bool)

(declare-fun tp!807244 () Bool)

(declare-fun tp!807248 () Bool)

(assert (=> b!2529342 (= e!1600856 (and tp!807244 tp!807248))))

(assert (= (and b!2528235 ((_ is ElementMatch!7525) (reg!7854 (regTwo!15563 r!27340)))) b!2529339))

(assert (= (and b!2528235 ((_ is Concat!12221) (reg!7854 (regTwo!15563 r!27340)))) b!2529340))

(assert (= (and b!2528235 ((_ is Star!7525) (reg!7854 (regTwo!15563 r!27340)))) b!2529341))

(assert (= (and b!2528235 ((_ is Union!7525) (reg!7854 (regTwo!15563 r!27340)))) b!2529342))

(declare-fun b!2529345 () Bool)

(declare-fun e!1600857 () Bool)

(declare-fun tp!807251 () Bool)

(assert (=> b!2529345 (= e!1600857 tp!807251)))

(declare-fun b!2529343 () Bool)

(assert (=> b!2529343 (= e!1600857 tp_is_empty!12905)))

(declare-fun b!2529344 () Bool)

(declare-fun tp!807252 () Bool)

(declare-fun tp!807250 () Bool)

(assert (=> b!2529344 (= e!1600857 (and tp!807252 tp!807250))))

(assert (=> b!2528223 (= tp!807044 e!1600857)))

(declare-fun b!2529346 () Bool)

(declare-fun tp!807249 () Bool)

(declare-fun tp!807253 () Bool)

(assert (=> b!2529346 (= e!1600857 (and tp!807249 tp!807253))))

(assert (= (and b!2528223 ((_ is ElementMatch!7525) (reg!7854 (regOne!15562 r!27340)))) b!2529343))

(assert (= (and b!2528223 ((_ is Concat!12221) (reg!7854 (regOne!15562 r!27340)))) b!2529344))

(assert (= (and b!2528223 ((_ is Star!7525) (reg!7854 (regOne!15562 r!27340)))) b!2529345))

(assert (= (and b!2528223 ((_ is Union!7525) (reg!7854 (regOne!15562 r!27340)))) b!2529346))

(declare-fun b!2529349 () Bool)

(declare-fun e!1600858 () Bool)

(declare-fun tp!807256 () Bool)

(assert (=> b!2529349 (= e!1600858 tp!807256)))

(declare-fun b!2529347 () Bool)

(assert (=> b!2529347 (= e!1600858 tp_is_empty!12905)))

(declare-fun b!2529348 () Bool)

(declare-fun tp!807257 () Bool)

(declare-fun tp!807255 () Bool)

(assert (=> b!2529348 (= e!1600858 (and tp!807257 tp!807255))))

(assert (=> b!2528230 (= tp!807055 e!1600858)))

(declare-fun b!2529350 () Bool)

(declare-fun tp!807254 () Bool)

(declare-fun tp!807258 () Bool)

(assert (=> b!2529350 (= e!1600858 (and tp!807254 tp!807258))))

(assert (= (and b!2528230 ((_ is ElementMatch!7525) (regOne!15562 (regOne!15563 r!27340)))) b!2529347))

(assert (= (and b!2528230 ((_ is Concat!12221) (regOne!15562 (regOne!15563 r!27340)))) b!2529348))

(assert (= (and b!2528230 ((_ is Star!7525) (regOne!15562 (regOne!15563 r!27340)))) b!2529349))

(assert (= (and b!2528230 ((_ is Union!7525) (regOne!15562 (regOne!15563 r!27340)))) b!2529350))

(declare-fun b!2529353 () Bool)

(declare-fun e!1600859 () Bool)

(declare-fun tp!807261 () Bool)

(assert (=> b!2529353 (= e!1600859 tp!807261)))

(declare-fun b!2529351 () Bool)

(assert (=> b!2529351 (= e!1600859 tp_is_empty!12905)))

(declare-fun b!2529352 () Bool)

(declare-fun tp!807262 () Bool)

(declare-fun tp!807260 () Bool)

(assert (=> b!2529352 (= e!1600859 (and tp!807262 tp!807260))))

(assert (=> b!2528230 (= tp!807053 e!1600859)))

(declare-fun b!2529354 () Bool)

(declare-fun tp!807259 () Bool)

(declare-fun tp!807263 () Bool)

(assert (=> b!2529354 (= e!1600859 (and tp!807259 tp!807263))))

(assert (= (and b!2528230 ((_ is ElementMatch!7525) (regTwo!15562 (regOne!15563 r!27340)))) b!2529351))

(assert (= (and b!2528230 ((_ is Concat!12221) (regTwo!15562 (regOne!15563 r!27340)))) b!2529352))

(assert (= (and b!2528230 ((_ is Star!7525) (regTwo!15562 (regOne!15563 r!27340)))) b!2529353))

(assert (= (and b!2528230 ((_ is Union!7525) (regTwo!15562 (regOne!15563 r!27340)))) b!2529354))

(declare-fun b!2529357 () Bool)

(declare-fun e!1600860 () Bool)

(declare-fun tp!807266 () Bool)

(assert (=> b!2529357 (= e!1600860 tp!807266)))

(declare-fun b!2529355 () Bool)

(assert (=> b!2529355 (= e!1600860 tp_is_empty!12905)))

(declare-fun b!2529356 () Bool)

(declare-fun tp!807267 () Bool)

(declare-fun tp!807265 () Bool)

(assert (=> b!2529356 (= e!1600860 (and tp!807267 tp!807265))))

(assert (=> b!2528232 (= tp!807052 e!1600860)))

(declare-fun b!2529358 () Bool)

(declare-fun tp!807264 () Bool)

(declare-fun tp!807268 () Bool)

(assert (=> b!2529358 (= e!1600860 (and tp!807264 tp!807268))))

(assert (= (and b!2528232 ((_ is ElementMatch!7525) (regOne!15563 (regOne!15563 r!27340)))) b!2529355))

(assert (= (and b!2528232 ((_ is Concat!12221) (regOne!15563 (regOne!15563 r!27340)))) b!2529356))

(assert (= (and b!2528232 ((_ is Star!7525) (regOne!15563 (regOne!15563 r!27340)))) b!2529357))

(assert (= (and b!2528232 ((_ is Union!7525) (regOne!15563 (regOne!15563 r!27340)))) b!2529358))

(declare-fun b!2529361 () Bool)

(declare-fun e!1600861 () Bool)

(declare-fun tp!807271 () Bool)

(assert (=> b!2529361 (= e!1600861 tp!807271)))

(declare-fun b!2529359 () Bool)

(assert (=> b!2529359 (= e!1600861 tp_is_empty!12905)))

(declare-fun b!2529360 () Bool)

(declare-fun tp!807272 () Bool)

(declare-fun tp!807270 () Bool)

(assert (=> b!2529360 (= e!1600861 (and tp!807272 tp!807270))))

(assert (=> b!2528232 (= tp!807056 e!1600861)))

(declare-fun b!2529362 () Bool)

(declare-fun tp!807269 () Bool)

(declare-fun tp!807273 () Bool)

(assert (=> b!2529362 (= e!1600861 (and tp!807269 tp!807273))))

(assert (= (and b!2528232 ((_ is ElementMatch!7525) (regTwo!15563 (regOne!15563 r!27340)))) b!2529359))

(assert (= (and b!2528232 ((_ is Concat!12221) (regTwo!15563 (regOne!15563 r!27340)))) b!2529360))

(assert (= (and b!2528232 ((_ is Star!7525) (regTwo!15563 (regOne!15563 r!27340)))) b!2529361))

(assert (= (and b!2528232 ((_ is Union!7525) (regTwo!15563 (regOne!15563 r!27340)))) b!2529362))

(declare-fun b!2529365 () Bool)

(declare-fun e!1600862 () Bool)

(declare-fun tp!807276 () Bool)

(assert (=> b!2529365 (= e!1600862 tp!807276)))

(declare-fun b!2529363 () Bool)

(assert (=> b!2529363 (= e!1600862 tp_is_empty!12905)))

(declare-fun b!2529364 () Bool)

(declare-fun tp!807277 () Bool)

(declare-fun tp!807275 () Bool)

(assert (=> b!2529364 (= e!1600862 (and tp!807277 tp!807275))))

(assert (=> b!2528226 (= tp!807050 e!1600862)))

(declare-fun b!2529366 () Bool)

(declare-fun tp!807274 () Bool)

(declare-fun tp!807278 () Bool)

(assert (=> b!2529366 (= e!1600862 (and tp!807274 tp!807278))))

(assert (= (and b!2528226 ((_ is ElementMatch!7525) (regOne!15562 (regTwo!15562 r!27340)))) b!2529363))

(assert (= (and b!2528226 ((_ is Concat!12221) (regOne!15562 (regTwo!15562 r!27340)))) b!2529364))

(assert (= (and b!2528226 ((_ is Star!7525) (regOne!15562 (regTwo!15562 r!27340)))) b!2529365))

(assert (= (and b!2528226 ((_ is Union!7525) (regOne!15562 (regTwo!15562 r!27340)))) b!2529366))

(declare-fun b!2529369 () Bool)

(declare-fun e!1600863 () Bool)

(declare-fun tp!807281 () Bool)

(assert (=> b!2529369 (= e!1600863 tp!807281)))

(declare-fun b!2529367 () Bool)

(assert (=> b!2529367 (= e!1600863 tp_is_empty!12905)))

(declare-fun b!2529368 () Bool)

(declare-fun tp!807282 () Bool)

(declare-fun tp!807280 () Bool)

(assert (=> b!2529368 (= e!1600863 (and tp!807282 tp!807280))))

(assert (=> b!2528226 (= tp!807048 e!1600863)))

(declare-fun b!2529370 () Bool)

(declare-fun tp!807279 () Bool)

(declare-fun tp!807283 () Bool)

(assert (=> b!2529370 (= e!1600863 (and tp!807279 tp!807283))))

(assert (= (and b!2528226 ((_ is ElementMatch!7525) (regTwo!15562 (regTwo!15562 r!27340)))) b!2529367))

(assert (= (and b!2528226 ((_ is Concat!12221) (regTwo!15562 (regTwo!15562 r!27340)))) b!2529368))

(assert (= (and b!2528226 ((_ is Star!7525) (regTwo!15562 (regTwo!15562 r!27340)))) b!2529369))

(assert (= (and b!2528226 ((_ is Union!7525) (regTwo!15562 (regTwo!15562 r!27340)))) b!2529370))

(declare-fun b!2529373 () Bool)

(declare-fun e!1600864 () Bool)

(declare-fun tp!807286 () Bool)

(assert (=> b!2529373 (= e!1600864 tp!807286)))

(declare-fun b!2529371 () Bool)

(assert (=> b!2529371 (= e!1600864 tp_is_empty!12905)))

(declare-fun b!2529372 () Bool)

(declare-fun tp!807287 () Bool)

(declare-fun tp!807285 () Bool)

(assert (=> b!2529372 (= e!1600864 (and tp!807287 tp!807285))))

(assert (=> b!2528231 (= tp!807054 e!1600864)))

(declare-fun b!2529374 () Bool)

(declare-fun tp!807284 () Bool)

(declare-fun tp!807288 () Bool)

(assert (=> b!2529374 (= e!1600864 (and tp!807284 tp!807288))))

(assert (= (and b!2528231 ((_ is ElementMatch!7525) (reg!7854 (regOne!15563 r!27340)))) b!2529371))

(assert (= (and b!2528231 ((_ is Concat!12221) (reg!7854 (regOne!15563 r!27340)))) b!2529372))

(assert (= (and b!2528231 ((_ is Star!7525) (reg!7854 (regOne!15563 r!27340)))) b!2529373))

(assert (= (and b!2528231 ((_ is Union!7525) (reg!7854 (regOne!15563 r!27340)))) b!2529374))

(declare-fun b!2529377 () Bool)

(declare-fun e!1600865 () Bool)

(declare-fun tp!807291 () Bool)

(assert (=> b!2529377 (= e!1600865 tp!807291)))

(declare-fun b!2529375 () Bool)

(assert (=> b!2529375 (= e!1600865 tp_is_empty!12905)))

(declare-fun b!2529376 () Bool)

(declare-fun tp!807292 () Bool)

(declare-fun tp!807290 () Bool)

(assert (=> b!2529376 (= e!1600865 (and tp!807292 tp!807290))))

(assert (=> b!2528236 (= tp!807057 e!1600865)))

(declare-fun b!2529378 () Bool)

(declare-fun tp!807289 () Bool)

(declare-fun tp!807293 () Bool)

(assert (=> b!2529378 (= e!1600865 (and tp!807289 tp!807293))))

(assert (= (and b!2528236 ((_ is ElementMatch!7525) (regOne!15563 (regTwo!15563 r!27340)))) b!2529375))

(assert (= (and b!2528236 ((_ is Concat!12221) (regOne!15563 (regTwo!15563 r!27340)))) b!2529376))

(assert (= (and b!2528236 ((_ is Star!7525) (regOne!15563 (regTwo!15563 r!27340)))) b!2529377))

(assert (= (and b!2528236 ((_ is Union!7525) (regOne!15563 (regTwo!15563 r!27340)))) b!2529378))

(declare-fun b!2529381 () Bool)

(declare-fun e!1600866 () Bool)

(declare-fun tp!807296 () Bool)

(assert (=> b!2529381 (= e!1600866 tp!807296)))

(declare-fun b!2529379 () Bool)

(assert (=> b!2529379 (= e!1600866 tp_is_empty!12905)))

(declare-fun b!2529380 () Bool)

(declare-fun tp!807297 () Bool)

(declare-fun tp!807295 () Bool)

(assert (=> b!2529380 (= e!1600866 (and tp!807297 tp!807295))))

(assert (=> b!2528236 (= tp!807061 e!1600866)))

(declare-fun b!2529382 () Bool)

(declare-fun tp!807294 () Bool)

(declare-fun tp!807298 () Bool)

(assert (=> b!2529382 (= e!1600866 (and tp!807294 tp!807298))))

(assert (= (and b!2528236 ((_ is ElementMatch!7525) (regTwo!15563 (regTwo!15563 r!27340)))) b!2529379))

(assert (= (and b!2528236 ((_ is Concat!12221) (regTwo!15563 (regTwo!15563 r!27340)))) b!2529380))

(assert (= (and b!2528236 ((_ is Star!7525) (regTwo!15563 (regTwo!15563 r!27340)))) b!2529381))

(assert (= (and b!2528236 ((_ is Union!7525) (regTwo!15563 (regTwo!15563 r!27340)))) b!2529382))

(declare-fun b!2529385 () Bool)

(declare-fun e!1600867 () Bool)

(declare-fun tp!807301 () Bool)

(assert (=> b!2529385 (= e!1600867 tp!807301)))

(declare-fun b!2529383 () Bool)

(assert (=> b!2529383 (= e!1600867 tp_is_empty!12905)))

(declare-fun b!2529384 () Bool)

(declare-fun tp!807302 () Bool)

(declare-fun tp!807300 () Bool)

(assert (=> b!2529384 (= e!1600867 (and tp!807302 tp!807300))))

(assert (=> b!2528228 (= tp!807047 e!1600867)))

(declare-fun b!2529386 () Bool)

(declare-fun tp!807299 () Bool)

(declare-fun tp!807303 () Bool)

(assert (=> b!2529386 (= e!1600867 (and tp!807299 tp!807303))))

(assert (= (and b!2528228 ((_ is ElementMatch!7525) (regOne!15563 (regTwo!15562 r!27340)))) b!2529383))

(assert (= (and b!2528228 ((_ is Concat!12221) (regOne!15563 (regTwo!15562 r!27340)))) b!2529384))

(assert (= (and b!2528228 ((_ is Star!7525) (regOne!15563 (regTwo!15562 r!27340)))) b!2529385))

(assert (= (and b!2528228 ((_ is Union!7525) (regOne!15563 (regTwo!15562 r!27340)))) b!2529386))

(declare-fun b!2529389 () Bool)

(declare-fun e!1600868 () Bool)

(declare-fun tp!807306 () Bool)

(assert (=> b!2529389 (= e!1600868 tp!807306)))

(declare-fun b!2529387 () Bool)

(assert (=> b!2529387 (= e!1600868 tp_is_empty!12905)))

(declare-fun b!2529388 () Bool)

(declare-fun tp!807307 () Bool)

(declare-fun tp!807305 () Bool)

(assert (=> b!2529388 (= e!1600868 (and tp!807307 tp!807305))))

(assert (=> b!2528228 (= tp!807051 e!1600868)))

(declare-fun b!2529390 () Bool)

(declare-fun tp!807304 () Bool)

(declare-fun tp!807308 () Bool)

(assert (=> b!2529390 (= e!1600868 (and tp!807304 tp!807308))))

(assert (= (and b!2528228 ((_ is ElementMatch!7525) (regTwo!15563 (regTwo!15562 r!27340)))) b!2529387))

(assert (= (and b!2528228 ((_ is Concat!12221) (regTwo!15563 (regTwo!15562 r!27340)))) b!2529388))

(assert (= (and b!2528228 ((_ is Star!7525) (regTwo!15563 (regTwo!15562 r!27340)))) b!2529389))

(assert (= (and b!2528228 ((_ is Union!7525) (regTwo!15563 (regTwo!15562 r!27340)))) b!2529390))

(declare-fun b!2529393 () Bool)

(declare-fun e!1600869 () Bool)

(declare-fun tp!807311 () Bool)

(assert (=> b!2529393 (= e!1600869 tp!807311)))

(declare-fun b!2529391 () Bool)

(assert (=> b!2529391 (= e!1600869 tp_is_empty!12905)))

(declare-fun b!2529392 () Bool)

(declare-fun tp!807312 () Bool)

(declare-fun tp!807310 () Bool)

(assert (=> b!2529392 (= e!1600869 (and tp!807312 tp!807310))))

(assert (=> b!2528224 (= tp!807042 e!1600869)))

(declare-fun b!2529394 () Bool)

(declare-fun tp!807309 () Bool)

(declare-fun tp!807313 () Bool)

(assert (=> b!2529394 (= e!1600869 (and tp!807309 tp!807313))))

(assert (= (and b!2528224 ((_ is ElementMatch!7525) (regOne!15563 (regOne!15562 r!27340)))) b!2529391))

(assert (= (and b!2528224 ((_ is Concat!12221) (regOne!15563 (regOne!15562 r!27340)))) b!2529392))

(assert (= (and b!2528224 ((_ is Star!7525) (regOne!15563 (regOne!15562 r!27340)))) b!2529393))

(assert (= (and b!2528224 ((_ is Union!7525) (regOne!15563 (regOne!15562 r!27340)))) b!2529394))

(declare-fun b!2529397 () Bool)

(declare-fun e!1600870 () Bool)

(declare-fun tp!807316 () Bool)

(assert (=> b!2529397 (= e!1600870 tp!807316)))

(declare-fun b!2529395 () Bool)

(assert (=> b!2529395 (= e!1600870 tp_is_empty!12905)))

(declare-fun b!2529396 () Bool)

(declare-fun tp!807317 () Bool)

(declare-fun tp!807315 () Bool)

(assert (=> b!2529396 (= e!1600870 (and tp!807317 tp!807315))))

(assert (=> b!2528224 (= tp!807046 e!1600870)))

(declare-fun b!2529398 () Bool)

(declare-fun tp!807314 () Bool)

(declare-fun tp!807318 () Bool)

(assert (=> b!2529398 (= e!1600870 (and tp!807314 tp!807318))))

(assert (= (and b!2528224 ((_ is ElementMatch!7525) (regTwo!15563 (regOne!15562 r!27340)))) b!2529395))

(assert (= (and b!2528224 ((_ is Concat!12221) (regTwo!15563 (regOne!15562 r!27340)))) b!2529396))

(assert (= (and b!2528224 ((_ is Star!7525) (regTwo!15563 (regOne!15562 r!27340)))) b!2529397))

(assert (= (and b!2528224 ((_ is Union!7525) (regTwo!15563 (regOne!15562 r!27340)))) b!2529398))

(check-sat (not d!719700) (not b!2529300) (not b!2528567) (not b!2529233) (not b!2529073) (not bm!158230) (not b!2529376) (not b!2529314) (not d!719654) (not b!2529153) (not b!2529353) (not bm!158258) (not b!2529373) (not bm!158239) (not d!719690) (not b!2528533) (not b!2529192) (not b!2529211) (not b!2529356) (not b!2529171) (not b!2529078) (not b!2529389) (not d!719656) (not bm!158268) (not b!2529381) (not bm!158283) (not b!2529085) (not b!2529132) (not b!2529042) (not b!2529049) (not b!2528574) (not b!2529372) (not b!2529185) (not b!2529144) (not b!2529041) (not b!2529023) (not bm!158240) (not d!719678) (not b!2529370) (not b!2529378) (not b!2529269) (not d!719660) (not bm!158156) (not bm!158209) (not bm!158252) (not b!2529298) (not d!719692) (not b!2529313) (not d!719638) (not b!2529394) (not b!2529016) (not d!719674) (not d!719722) (not d!719658) (not d!719524) (not d!719720) (not bm!158264) (not b!2529179) (not b!2529392) (not b!2528816) (not b!2528766) (not b!2528997) (not bm!158308) (not b!2529320) (not bm!158167) (not bm!158269) (not b!2529348) (not b!2529245) (not bm!158234) (not b!2529306) (not bm!158265) (not b!2528943) (not d!719694) (not d!719682) (not b!2528568) (not b!2529019) (not b!2529013) (not bm!158267) (not bm!158246) (not b!2529362) (not b!2529045) (not b!2529275) (not bm!158294) (not b!2529386) (not bm!158208) (not b!2529337) (not b!2529015) (not b!2529336) (not b!2529345) (not b!2529136) (not d!719666) (not b!2528514) (not b!2529350) (not b!2529398) (not d!719614) (not bm!158220) (not bm!158247) (not bm!158231) (not b!2529296) (not b!2529251) (not d!719608) (not bm!158161) (not b!2528768) (not bm!158279) (not b!2529208) (not d!719584) (not b!2529137) (not bm!158272) (not b!2528987) (not d!719650) (not b!2529333) (not b!2528774) (not b!2528602) (not b!2529191) (not d!719588) (not bm!158293) (not b!2529380) (not bm!158304) (not b!2529302) (not b!2528562) (not bm!158211) (not b!2529173) (not b!2528770) (not d!719634) (not bm!158259) (not bm!158219) (not bm!158175) (not b!2528944) (not b!2529358) (not b!2529177) (not b!2529012) (not bm!158216) (not bm!158307) (not b!2529360) (not b!2529346) (not bm!158178) (not b!2528995) (not d!719640) (not bm!158253) (not b!2529009) (not d!719696) (not b!2529077) (not bm!158251) (not b!2529271) (not bm!158266) (not d!719580) (not b!2529384) (not b!2529223) (not b!2528903) (not bm!158298) (not b!2529388) (not b!2529338) (not d!719538) (not b!2529235) (not b!2529310) (not b!2529284) (not bm!158256) (not bm!158210) (not d!719718) (not d!719680) (not d!719714) (not b!2529068) (not b!2529268) (not b!2529195) (not bm!158244) (not b!2529357) (not b!2529393) (not b!2529385) (not b!2529079) (not bm!158295) (not b!2528762) (not b!2529324) (not b!2529058) (not b!2529178) (not d!719726) (not bm!158282) (not bm!158257) (not b!2529094) (not d!719596) (not b!2528760) (not b!2529216) (not b!2529354) (not b!2529301) (not bm!158289) (not b!2529243) (not d!719672) (not b!2529308) (not b!2529024) (not bm!158278) (not bm!158217) (not b!2529332) (not bm!158286) (not b!2529071) (not b!2529120) (not b!2529340) (not b!2529017) (not d!719698) (not bm!158276) (not bm!158261) (not b!2529140) (not b!2529317) (not b!2529322) (not b!2529326) (not b!2529344) (not bm!158292) (not b!2529377) (not d!719632) (not b!2529349) (not d!719630) (not d!719724) (not bm!158277) (not b!2528566) (not d!719670) (not b!2529352) (not b!2528978) (not bm!158271) (not b!2529390) (not b!2529187) (not b!2528993) (not b!2529037) (not d!719642) (not b!2529321) (not bm!158233) (not b!2528792) (not b!2529244) (not b!2529129) (not b!2529328) (not b!2529239) (not b!2529329) (not b!2529396) (not bm!158243) (not b!2529304) (not bm!158213) (not bm!158238) (not b!2528845) (not b!2529217) (not b!2529138) (not d!719534) (not b!2528616) (not b!2529231) (not b!2528597) (not b!2529305) (not bm!158300) (not b!2529193) (not b!2529219) (not b!2529364) (not bm!158288) (not b!2528870) (not b!2529263) (not b!2529369) (not b!2529334) (not b!2529236) (not bm!158303) (not d!719716) (not b!2529318) (not bm!158155) (not b!2529229) (not b!2529361) (not d!719636) (not b!2529111) (not b!2529374) tp_is_empty!12905 (not b!2529286) (not b!2529366) (not d!719492) (not b!2529162) (not b!2529368) (not b!2529006) (not b!2529325) (not bm!158241) (not b!2529008) (not b!2528767) (not b!2529260) (not b!2529316) (not b!2529341) (not b!2529199) (not b!2528570) (not b!2529034) (not b!2529215) (not b!2529309) (not bm!158285) (not b!2529081) (not b!2529181) (not b!2529020) (not b!2529312) (not b!2529342) (not b!2529382) (not bm!158160) (not d!719644) (not b!2529330) (not b!2529365) (not bm!158280) (not bm!158174) (not b!2529247) (not bm!158179) (not bm!158299) (not b!2529043) (not b!2529397) (not b!2529267) (not d!719540) (not d!719652))
(check-sat)
