; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!295768 () Bool)

(assert start!295768)

(declare-fun b!3136597 () Bool)

(declare-fun e!1957053 () Bool)

(declare-fun e!1957052 () Bool)

(assert (=> b!3136597 (= e!1957053 (not e!1957052))))

(declare-fun res!1281790 () Bool)

(assert (=> b!3136597 (=> res!1281790 e!1957052)))

(declare-fun lt!1060878 () Bool)

(declare-datatypes ((C!19472 0))(
  ( (C!19473 (val!11772 Int)) )
))
(declare-datatypes ((Regex!9643 0))(
  ( (ElementMatch!9643 (c!527081 C!19472)) (Concat!14964 (regOne!19798 Regex!9643) (regTwo!19798 Regex!9643)) (EmptyExpr!9643) (Star!9643 (reg!9972 Regex!9643)) (EmptyLang!9643) (Union!9643 (regOne!19799 Regex!9643) (regTwo!19799 Regex!9643)) )
))
(declare-fun r!17423 () Regex!9643)

(get-info :version)

(assert (=> b!3136597 (= res!1281790 (or lt!1060878 ((_ is Concat!14964) r!17423) ((_ is Union!9643) r!17423) (not ((_ is Star!9643) r!17423))))))

(declare-datatypes ((List!35508 0))(
  ( (Nil!35384) (Cons!35384 (h!40804 C!19472) (t!234573 List!35508)) )
))
(declare-fun s!11993 () List!35508)

(declare-fun matchRSpec!1780 (Regex!9643 List!35508) Bool)

(assert (=> b!3136597 (= lt!1060878 (matchRSpec!1780 r!17423 s!11993))))

(declare-fun matchR!4525 (Regex!9643 List!35508) Bool)

(assert (=> b!3136597 (= lt!1060878 (matchR!4525 r!17423 s!11993))))

(declare-datatypes ((Unit!49741 0))(
  ( (Unit!49742) )
))
(declare-fun lt!1060877 () Unit!49741)

(declare-fun mainMatchTheorem!1780 (Regex!9643 List!35508) Unit!49741)

(assert (=> b!3136597 (= lt!1060877 (mainMatchTheorem!1780 r!17423 s!11993))))

(declare-fun b!3136598 () Bool)

(declare-fun e!1957049 () Bool)

(declare-fun tp!981873 () Bool)

(declare-fun tp!981876 () Bool)

(assert (=> b!3136598 (= e!1957049 (and tp!981873 tp!981876))))

(declare-fun b!3136599 () Bool)

(declare-fun tp!981874 () Bool)

(assert (=> b!3136599 (= e!1957049 tp!981874)))

(declare-fun b!3136600 () Bool)

(declare-fun tp!981875 () Bool)

(declare-fun tp!981872 () Bool)

(assert (=> b!3136600 (= e!1957049 (and tp!981875 tp!981872))))

(declare-fun b!3136601 () Bool)

(declare-fun res!1281787 () Bool)

(declare-fun e!1957051 () Bool)

(assert (=> b!3136601 (=> res!1281787 e!1957051)))

(declare-fun lt!1060876 () Regex!9643)

(assert (=> b!3136601 (= res!1281787 (matchR!4525 (Star!9643 lt!1060876) s!11993))))

(declare-fun b!3136602 () Bool)

(declare-fun simplify!598 (Regex!9643) Regex!9643)

(assert (=> b!3136602 (= e!1957051 (not (matchR!4525 (simplify!598 r!17423) s!11993)))))

(declare-fun b!3136603 () Bool)

(declare-fun tp_is_empty!16849 () Bool)

(assert (=> b!3136603 (= e!1957049 tp_is_empty!16849)))

(declare-fun b!3136604 () Bool)

(assert (=> b!3136604 (= e!1957052 e!1957051)))

(declare-fun res!1281788 () Bool)

(assert (=> b!3136604 (=> res!1281788 e!1957051)))

(declare-fun isEmptyLang!694 (Regex!9643) Bool)

(assert (=> b!3136604 (= res!1281788 (isEmptyLang!694 lt!1060876))))

(assert (=> b!3136604 (= lt!1060876 (simplify!598 (reg!9972 r!17423)))))

(declare-fun res!1281789 () Bool)

(assert (=> start!295768 (=> (not res!1281789) (not e!1957053))))

(declare-fun validRegex!4376 (Regex!9643) Bool)

(assert (=> start!295768 (= res!1281789 (validRegex!4376 r!17423))))

(assert (=> start!295768 e!1957053))

(assert (=> start!295768 e!1957049))

(declare-fun e!1957050 () Bool)

(assert (=> start!295768 e!1957050))

(declare-fun b!3136605 () Bool)

(declare-fun tp!981877 () Bool)

(assert (=> b!3136605 (= e!1957050 (and tp_is_empty!16849 tp!981877))))

(assert (= (and start!295768 res!1281789) b!3136597))

(assert (= (and b!3136597 (not res!1281790)) b!3136604))

(assert (= (and b!3136604 (not res!1281788)) b!3136601))

(assert (= (and b!3136601 (not res!1281787)) b!3136602))

(assert (= (and start!295768 ((_ is ElementMatch!9643) r!17423)) b!3136603))

(assert (= (and start!295768 ((_ is Concat!14964) r!17423)) b!3136600))

(assert (= (and start!295768 ((_ is Star!9643) r!17423)) b!3136599))

(assert (= (and start!295768 ((_ is Union!9643) r!17423)) b!3136598))

(assert (= (and start!295768 ((_ is Cons!35384) s!11993)) b!3136605))

(declare-fun m!3416927 () Bool)

(assert (=> b!3136602 m!3416927))

(assert (=> b!3136602 m!3416927))

(declare-fun m!3416929 () Bool)

(assert (=> b!3136602 m!3416929))

(declare-fun m!3416931 () Bool)

(assert (=> start!295768 m!3416931))

(declare-fun m!3416933 () Bool)

(assert (=> b!3136601 m!3416933))

(declare-fun m!3416935 () Bool)

(assert (=> b!3136604 m!3416935))

(declare-fun m!3416937 () Bool)

(assert (=> b!3136604 m!3416937))

(declare-fun m!3416939 () Bool)

(assert (=> b!3136597 m!3416939))

(declare-fun m!3416941 () Bool)

(assert (=> b!3136597 m!3416941))

(declare-fun m!3416943 () Bool)

(assert (=> b!3136597 m!3416943))

(check-sat (not b!3136600) (not b!3136597) tp_is_empty!16849 (not b!3136598) (not b!3136599) (not b!3136602) (not b!3136605) (not b!3136601) (not start!295768) (not b!3136604))
(check-sat)
(get-model)

(declare-fun d!865447 () Bool)

(declare-fun e!1957084 () Bool)

(assert (=> d!865447 e!1957084))

(declare-fun c!527098 () Bool)

(assert (=> d!865447 (= c!527098 ((_ is EmptyExpr!9643) (simplify!598 r!17423)))))

(declare-fun lt!1060881 () Bool)

(declare-fun e!1957086 () Bool)

(assert (=> d!865447 (= lt!1060881 e!1957086)))

(declare-fun c!527097 () Bool)

(declare-fun isEmpty!19741 (List!35508) Bool)

(assert (=> d!865447 (= c!527097 (isEmpty!19741 s!11993))))

(assert (=> d!865447 (validRegex!4376 (simplify!598 r!17423))))

(assert (=> d!865447 (= (matchR!4525 (simplify!598 r!17423) s!11993) lt!1060881)))

(declare-fun b!3136656 () Bool)

(declare-fun res!1281818 () Bool)

(declare-fun e!1957082 () Bool)

(assert (=> b!3136656 (=> res!1281818 e!1957082)))

(assert (=> b!3136656 (= res!1281818 (not ((_ is ElementMatch!9643) (simplify!598 r!17423))))))

(declare-fun e!1957088 () Bool)

(assert (=> b!3136656 (= e!1957088 e!1957082)))

(declare-fun b!3136657 () Bool)

(declare-fun res!1281814 () Bool)

(declare-fun e!1957085 () Bool)

(assert (=> b!3136657 (=> (not res!1281814) (not e!1957085))))

(declare-fun call!224851 () Bool)

(assert (=> b!3136657 (= res!1281814 (not call!224851))))

(declare-fun b!3136658 () Bool)

(declare-fun head!6931 (List!35508) C!19472)

(assert (=> b!3136658 (= e!1957085 (= (head!6931 s!11993) (c!527081 (simplify!598 r!17423))))))

(declare-fun b!3136659 () Bool)

(declare-fun derivativeStep!2872 (Regex!9643 C!19472) Regex!9643)

(declare-fun tail!5157 (List!35508) List!35508)

(assert (=> b!3136659 (= e!1957086 (matchR!4525 (derivativeStep!2872 (simplify!598 r!17423) (head!6931 s!11993)) (tail!5157 s!11993)))))

(declare-fun b!3136660 () Bool)

(declare-fun res!1281817 () Bool)

(assert (=> b!3136660 (=> (not res!1281817) (not e!1957085))))

(assert (=> b!3136660 (= res!1281817 (isEmpty!19741 (tail!5157 s!11993)))))

(declare-fun b!3136661 () Bool)

(declare-fun e!1957087 () Bool)

(assert (=> b!3136661 (= e!1957082 e!1957087)))

(declare-fun res!1281813 () Bool)

(assert (=> b!3136661 (=> (not res!1281813) (not e!1957087))))

(assert (=> b!3136661 (= res!1281813 (not lt!1060881))))

(declare-fun b!3136662 () Bool)

(declare-fun res!1281815 () Bool)

(declare-fun e!1957083 () Bool)

(assert (=> b!3136662 (=> res!1281815 e!1957083)))

(assert (=> b!3136662 (= res!1281815 (not (isEmpty!19741 (tail!5157 s!11993))))))

(declare-fun bm!224846 () Bool)

(assert (=> bm!224846 (= call!224851 (isEmpty!19741 s!11993))))

(declare-fun b!3136663 () Bool)

(assert (=> b!3136663 (= e!1957084 (= lt!1060881 call!224851))))

(declare-fun b!3136664 () Bool)

(declare-fun res!1281819 () Bool)

(assert (=> b!3136664 (=> res!1281819 e!1957082)))

(assert (=> b!3136664 (= res!1281819 e!1957085)))

(declare-fun res!1281820 () Bool)

(assert (=> b!3136664 (=> (not res!1281820) (not e!1957085))))

(assert (=> b!3136664 (= res!1281820 lt!1060881)))

(declare-fun b!3136665 () Bool)

(assert (=> b!3136665 (= e!1957088 (not lt!1060881))))

(declare-fun b!3136666 () Bool)

(assert (=> b!3136666 (= e!1957084 e!1957088)))

(declare-fun c!527096 () Bool)

(assert (=> b!3136666 (= c!527096 ((_ is EmptyLang!9643) (simplify!598 r!17423)))))

(declare-fun b!3136667 () Bool)

(declare-fun nullable!3277 (Regex!9643) Bool)

(assert (=> b!3136667 (= e!1957086 (nullable!3277 (simplify!598 r!17423)))))

(declare-fun b!3136668 () Bool)

(assert (=> b!3136668 (= e!1957087 e!1957083)))

(declare-fun res!1281816 () Bool)

(assert (=> b!3136668 (=> res!1281816 e!1957083)))

(assert (=> b!3136668 (= res!1281816 call!224851)))

(declare-fun b!3136669 () Bool)

(assert (=> b!3136669 (= e!1957083 (not (= (head!6931 s!11993) (c!527081 (simplify!598 r!17423)))))))

(assert (= (and d!865447 c!527097) b!3136667))

(assert (= (and d!865447 (not c!527097)) b!3136659))

(assert (= (and d!865447 c!527098) b!3136663))

(assert (= (and d!865447 (not c!527098)) b!3136666))

(assert (= (and b!3136666 c!527096) b!3136665))

(assert (= (and b!3136666 (not c!527096)) b!3136656))

(assert (= (and b!3136656 (not res!1281818)) b!3136664))

(assert (= (and b!3136664 res!1281820) b!3136657))

(assert (= (and b!3136657 res!1281814) b!3136660))

(assert (= (and b!3136660 res!1281817) b!3136658))

(assert (= (and b!3136664 (not res!1281819)) b!3136661))

(assert (= (and b!3136661 res!1281813) b!3136668))

(assert (= (and b!3136668 (not res!1281816)) b!3136662))

(assert (= (and b!3136662 (not res!1281815)) b!3136669))

(assert (= (or b!3136663 b!3136657 b!3136668) bm!224846))

(declare-fun m!3416945 () Bool)

(assert (=> b!3136658 m!3416945))

(declare-fun m!3416947 () Bool)

(assert (=> b!3136660 m!3416947))

(assert (=> b!3136660 m!3416947))

(declare-fun m!3416949 () Bool)

(assert (=> b!3136660 m!3416949))

(declare-fun m!3416951 () Bool)

(assert (=> bm!224846 m!3416951))

(assert (=> b!3136669 m!3416945))

(assert (=> b!3136667 m!3416927))

(declare-fun m!3416953 () Bool)

(assert (=> b!3136667 m!3416953))

(assert (=> b!3136659 m!3416945))

(assert (=> b!3136659 m!3416927))

(assert (=> b!3136659 m!3416945))

(declare-fun m!3416955 () Bool)

(assert (=> b!3136659 m!3416955))

(assert (=> b!3136659 m!3416947))

(assert (=> b!3136659 m!3416955))

(assert (=> b!3136659 m!3416947))

(declare-fun m!3416957 () Bool)

(assert (=> b!3136659 m!3416957))

(assert (=> d!865447 m!3416951))

(assert (=> d!865447 m!3416927))

(declare-fun m!3416959 () Bool)

(assert (=> d!865447 m!3416959))

(assert (=> b!3136662 m!3416947))

(assert (=> b!3136662 m!3416947))

(assert (=> b!3136662 m!3416949))

(assert (=> b!3136602 d!865447))

(declare-fun b!3136720 () Bool)

(declare-fun e!1957130 () Regex!9643)

(declare-fun e!1957127 () Regex!9643)

(assert (=> b!3136720 (= e!1957130 e!1957127)))

(declare-fun c!527121 () Bool)

(declare-fun call!224871 () Bool)

(assert (=> b!3136720 (= c!527121 call!224871)))

(declare-fun b!3136721 () Bool)

(declare-fun e!1957118 () Regex!9643)

(declare-fun e!1957126 () Regex!9643)

(assert (=> b!3136721 (= e!1957118 e!1957126)))

(declare-fun lt!1060899 () Regex!9643)

(declare-fun call!224872 () Regex!9643)

(assert (=> b!3136721 (= lt!1060899 call!224872)))

(declare-fun lt!1060896 () Regex!9643)

(declare-fun call!224869 () Regex!9643)

(assert (=> b!3136721 (= lt!1060896 call!224869)))

(declare-fun res!1281829 () Bool)

(declare-fun call!224866 () Bool)

(assert (=> b!3136721 (= res!1281829 call!224866)))

(declare-fun e!1957122 () Bool)

(assert (=> b!3136721 (=> res!1281829 e!1957122)))

(declare-fun c!527131 () Bool)

(assert (=> b!3136721 (= c!527131 e!1957122)))

(declare-fun b!3136722 () Bool)

(declare-fun e!1957123 () Regex!9643)

(declare-fun e!1957128 () Regex!9643)

(assert (=> b!3136722 (= e!1957123 e!1957128)))

(declare-fun c!527123 () Bool)

(assert (=> b!3136722 (= c!527123 ((_ is Star!9643) r!17423))))

(declare-fun b!3136723 () Bool)

(declare-fun e!1957129 () Bool)

(declare-fun lt!1060897 () Regex!9643)

(assert (=> b!3136723 (= e!1957129 (= (nullable!3277 lt!1060897) (nullable!3277 r!17423)))))

(declare-fun b!3136724 () Bool)

(assert (=> b!3136724 (= e!1957127 lt!1060899)))

(declare-fun d!865449 () Bool)

(assert (=> d!865449 e!1957129))

(declare-fun res!1281827 () Bool)

(assert (=> d!865449 (=> (not res!1281827) (not e!1957129))))

(assert (=> d!865449 (= res!1281827 (validRegex!4376 lt!1060897))))

(declare-fun e!1957120 () Regex!9643)

(assert (=> d!865449 (= lt!1060897 e!1957120)))

(declare-fun c!527129 () Bool)

(assert (=> d!865449 (= c!527129 ((_ is EmptyLang!9643) r!17423))))

(assert (=> d!865449 (validRegex!4376 r!17423)))

(assert (=> d!865449 (= (simplify!598 r!17423) lt!1060897)))

(declare-fun bm!224861 () Bool)

(declare-fun c!527125 () Bool)

(assert (=> bm!224861 (= call!224872 (simplify!598 (ite c!527125 (regTwo!19799 r!17423) (regOne!19798 r!17423))))))

(declare-fun call!224868 () Regex!9643)

(declare-fun bm!224862 () Bool)

(assert (=> bm!224862 (= call!224868 (simplify!598 (ite c!527123 (reg!9972 r!17423) (ite c!527125 (regOne!19799 r!17423) (regTwo!19798 r!17423)))))))

(declare-fun b!3136725 () Bool)

(declare-fun e!1957125 () Regex!9643)

(declare-fun lt!1060894 () Regex!9643)

(declare-fun lt!1060895 () Regex!9643)

(assert (=> b!3136725 (= e!1957125 (Union!9643 lt!1060894 lt!1060895))))

(declare-fun b!3136726 () Bool)

(assert (=> b!3136726 (= e!1957125 lt!1060894)))

(declare-fun b!3136727 () Bool)

(assert (=> b!3136727 (= e!1957130 lt!1060896)))

(declare-fun bm!224863 () Bool)

(assert (=> bm!224863 (= call!224866 (isEmptyLang!694 (ite c!527125 lt!1060895 lt!1060899)))))

(declare-fun lt!1060898 () Regex!9643)

(declare-fun bm!224864 () Bool)

(declare-fun isEmptyExpr!688 (Regex!9643) Bool)

(assert (=> bm!224864 (= call!224871 (isEmptyExpr!688 (ite c!527123 lt!1060898 lt!1060896)))))

(declare-fun b!3136728 () Bool)

(assert (=> b!3136728 (= e!1957127 (Concat!14964 lt!1060899 lt!1060896))))

(declare-fun b!3136729 () Bool)

(declare-fun e!1957124 () Regex!9643)

(assert (=> b!3136729 (= e!1957120 e!1957124)))

(declare-fun c!527124 () Bool)

(assert (=> b!3136729 (= c!527124 ((_ is ElementMatch!9643) r!17423))))

(declare-fun b!3136730 () Bool)

(assert (=> b!3136730 (= e!1957126 EmptyLang!9643)))

(declare-fun b!3136731 () Bool)

(assert (=> b!3136731 (= e!1957123 EmptyExpr!9643)))

(declare-fun b!3136732 () Bool)

(declare-fun call!224867 () Bool)

(assert (=> b!3136732 (= e!1957122 call!224867)))

(declare-fun bm!224865 () Bool)

(assert (=> bm!224865 (= call!224869 call!224868)))

(declare-fun b!3136733 () Bool)

(declare-fun e!1957117 () Regex!9643)

(assert (=> b!3136733 (= e!1957118 e!1957117)))

(assert (=> b!3136733 (= lt!1060894 call!224869)))

(assert (=> b!3136733 (= lt!1060895 call!224872)))

(declare-fun c!527128 () Bool)

(assert (=> b!3136733 (= c!527128 call!224867)))

(declare-fun b!3136734 () Bool)

(declare-fun e!1957121 () Regex!9643)

(assert (=> b!3136734 (= e!1957121 (Star!9643 lt!1060898))))

(declare-fun b!3136735 () Bool)

(assert (=> b!3136735 (= c!527125 ((_ is Union!9643) r!17423))))

(assert (=> b!3136735 (= e!1957128 e!1957118)))

(declare-fun b!3136736 () Bool)

(declare-fun c!527130 () Bool)

(assert (=> b!3136736 (= c!527130 (isEmptyExpr!688 lt!1060899))))

(assert (=> b!3136736 (= e!1957126 e!1957130)))

(declare-fun b!3136737 () Bool)

(assert (=> b!3136737 (= e!1957124 r!17423)))

(declare-fun b!3136738 () Bool)

(assert (=> b!3136738 (= e!1957120 EmptyLang!9643)))

(declare-fun call!224870 () Bool)

(declare-fun bm!224866 () Bool)

(assert (=> bm!224866 (= call!224870 (isEmptyLang!694 (ite c!527123 lt!1060898 (ite c!527125 lt!1060894 lt!1060896))))))

(declare-fun b!3136739 () Bool)

(declare-fun e!1957119 () Bool)

(assert (=> b!3136739 (= e!1957119 call!224871)))

(declare-fun bm!224867 () Bool)

(assert (=> bm!224867 (= call!224867 call!224870)))

(declare-fun b!3136740 () Bool)

(declare-fun c!527127 () Bool)

(assert (=> b!3136740 (= c!527127 e!1957119)))

(declare-fun res!1281828 () Bool)

(assert (=> b!3136740 (=> res!1281828 e!1957119)))

(assert (=> b!3136740 (= res!1281828 call!224870)))

(assert (=> b!3136740 (= lt!1060898 call!224868)))

(assert (=> b!3136740 (= e!1957128 e!1957121)))

(declare-fun b!3136741 () Bool)

(declare-fun c!527126 () Bool)

(assert (=> b!3136741 (= c!527126 ((_ is EmptyExpr!9643) r!17423))))

(assert (=> b!3136741 (= e!1957124 e!1957123)))

(declare-fun b!3136742 () Bool)

(assert (=> b!3136742 (= e!1957117 lt!1060895)))

(declare-fun b!3136743 () Bool)

(assert (=> b!3136743 (= e!1957121 EmptyExpr!9643)))

(declare-fun b!3136744 () Bool)

(declare-fun c!527122 () Bool)

(assert (=> b!3136744 (= c!527122 call!224866)))

(assert (=> b!3136744 (= e!1957117 e!1957125)))

(assert (= (and d!865449 c!527129) b!3136738))

(assert (= (and d!865449 (not c!527129)) b!3136729))

(assert (= (and b!3136729 c!527124) b!3136737))

(assert (= (and b!3136729 (not c!527124)) b!3136741))

(assert (= (and b!3136741 c!527126) b!3136731))

(assert (= (and b!3136741 (not c!527126)) b!3136722))

(assert (= (and b!3136722 c!527123) b!3136740))

(assert (= (and b!3136722 (not c!527123)) b!3136735))

(assert (= (and b!3136740 (not res!1281828)) b!3136739))

(assert (= (and b!3136740 c!527127) b!3136743))

(assert (= (and b!3136740 (not c!527127)) b!3136734))

(assert (= (and b!3136735 c!527125) b!3136733))

(assert (= (and b!3136735 (not c!527125)) b!3136721))

(assert (= (and b!3136733 c!527128) b!3136742))

(assert (= (and b!3136733 (not c!527128)) b!3136744))

(assert (= (and b!3136744 c!527122) b!3136726))

(assert (= (and b!3136744 (not c!527122)) b!3136725))

(assert (= (and b!3136721 (not res!1281829)) b!3136732))

(assert (= (and b!3136721 c!527131) b!3136730))

(assert (= (and b!3136721 (not c!527131)) b!3136736))

(assert (= (and b!3136736 c!527130) b!3136727))

(assert (= (and b!3136736 (not c!527130)) b!3136720))

(assert (= (and b!3136720 c!527121) b!3136724))

(assert (= (and b!3136720 (not c!527121)) b!3136728))

(assert (= (or b!3136733 b!3136721) bm!224865))

(assert (= (or b!3136733 b!3136721) bm!224861))

(assert (= (or b!3136733 b!3136732) bm!224867))

(assert (= (or b!3136744 b!3136721) bm!224863))

(assert (= (or b!3136739 b!3136720) bm!224864))

(assert (= (or b!3136740 bm!224865) bm!224862))

(assert (= (or b!3136740 bm!224867) bm!224866))

(assert (= (and d!865449 res!1281827) b!3136723))

(declare-fun m!3416961 () Bool)

(assert (=> bm!224861 m!3416961))

(declare-fun m!3416963 () Bool)

(assert (=> d!865449 m!3416963))

(assert (=> d!865449 m!3416931))

(declare-fun m!3416965 () Bool)

(assert (=> bm!224862 m!3416965))

(declare-fun m!3416967 () Bool)

(assert (=> b!3136723 m!3416967))

(declare-fun m!3416969 () Bool)

(assert (=> b!3136723 m!3416969))

(declare-fun m!3416971 () Bool)

(assert (=> b!3136736 m!3416971))

(declare-fun m!3416973 () Bool)

(assert (=> bm!224866 m!3416973))

(declare-fun m!3416975 () Bool)

(assert (=> bm!224863 m!3416975))

(declare-fun m!3416977 () Bool)

(assert (=> bm!224864 m!3416977))

(assert (=> b!3136602 d!865449))

(declare-fun b!3136763 () Bool)

(declare-fun e!1957149 () Bool)

(declare-fun call!224879 () Bool)

(assert (=> b!3136763 (= e!1957149 call!224879)))

(declare-fun b!3136764 () Bool)

(declare-fun res!1281844 () Bool)

(declare-fun e!1957147 () Bool)

(assert (=> b!3136764 (=> res!1281844 e!1957147)))

(assert (=> b!3136764 (= res!1281844 (not ((_ is Concat!14964) r!17423)))))

(declare-fun e!1957145 () Bool)

(assert (=> b!3136764 (= e!1957145 e!1957147)))

(declare-fun b!3136765 () Bool)

(declare-fun e!1957146 () Bool)

(assert (=> b!3136765 (= e!1957146 e!1957149)))

(declare-fun res!1281842 () Bool)

(assert (=> b!3136765 (= res!1281842 (not (nullable!3277 (reg!9972 r!17423))))))

(assert (=> b!3136765 (=> (not res!1281842) (not e!1957149))))

(declare-fun c!527136 () Bool)

(declare-fun bm!224874 () Bool)

(declare-fun c!527137 () Bool)

(assert (=> bm!224874 (= call!224879 (validRegex!4376 (ite c!527137 (reg!9972 r!17423) (ite c!527136 (regOne!19799 r!17423) (regTwo!19798 r!17423)))))))

(declare-fun b!3136766 () Bool)

(declare-fun e!1957150 () Bool)

(assert (=> b!3136766 (= e!1957147 e!1957150)))

(declare-fun res!1281841 () Bool)

(assert (=> b!3136766 (=> (not res!1281841) (not e!1957150))))

(declare-fun call!224880 () Bool)

(assert (=> b!3136766 (= res!1281841 call!224880)))

(declare-fun b!3136767 () Bool)

(declare-fun call!224881 () Bool)

(assert (=> b!3136767 (= e!1957150 call!224881)))

(declare-fun b!3136768 () Bool)

(assert (=> b!3136768 (= e!1957146 e!1957145)))

(assert (=> b!3136768 (= c!527136 ((_ is Union!9643) r!17423))))

(declare-fun b!3136769 () Bool)

(declare-fun e!1957148 () Bool)

(assert (=> b!3136769 (= e!1957148 e!1957146)))

(assert (=> b!3136769 (= c!527137 ((_ is Star!9643) r!17423))))

(declare-fun b!3136770 () Bool)

(declare-fun e!1957151 () Bool)

(assert (=> b!3136770 (= e!1957151 call!224880)))

(declare-fun b!3136771 () Bool)

(declare-fun res!1281840 () Bool)

(assert (=> b!3136771 (=> (not res!1281840) (not e!1957151))))

(assert (=> b!3136771 (= res!1281840 call!224881)))

(assert (=> b!3136771 (= e!1957145 e!1957151)))

(declare-fun bm!224876 () Bool)

(assert (=> bm!224876 (= call!224881 call!224879)))

(declare-fun d!865451 () Bool)

(declare-fun res!1281843 () Bool)

(assert (=> d!865451 (=> res!1281843 e!1957148)))

(assert (=> d!865451 (= res!1281843 ((_ is ElementMatch!9643) r!17423))))

(assert (=> d!865451 (= (validRegex!4376 r!17423) e!1957148)))

(declare-fun bm!224875 () Bool)

(assert (=> bm!224875 (= call!224880 (validRegex!4376 (ite c!527136 (regTwo!19799 r!17423) (regOne!19798 r!17423))))))

(assert (= (and d!865451 (not res!1281843)) b!3136769))

(assert (= (and b!3136769 c!527137) b!3136765))

(assert (= (and b!3136769 (not c!527137)) b!3136768))

(assert (= (and b!3136765 res!1281842) b!3136763))

(assert (= (and b!3136768 c!527136) b!3136771))

(assert (= (and b!3136768 (not c!527136)) b!3136764))

(assert (= (and b!3136771 res!1281840) b!3136770))

(assert (= (and b!3136764 (not res!1281844)) b!3136766))

(assert (= (and b!3136766 res!1281841) b!3136767))

(assert (= (or b!3136771 b!3136767) bm!224876))

(assert (= (or b!3136770 b!3136766) bm!224875))

(assert (= (or b!3136763 bm!224876) bm!224874))

(declare-fun m!3416979 () Bool)

(assert (=> b!3136765 m!3416979))

(declare-fun m!3416981 () Bool)

(assert (=> bm!224874 m!3416981))

(declare-fun m!3416983 () Bool)

(assert (=> bm!224875 m!3416983))

(assert (=> start!295768 d!865451))

(declare-fun b!3137063 () Bool)

(assert (=> b!3137063 true))

(assert (=> b!3137063 true))

(declare-fun bs!539010 () Bool)

(declare-fun b!3137064 () Bool)

(assert (= bs!539010 (and b!3137064 b!3137063)))

(declare-fun lambda!115726 () Int)

(declare-fun lambda!115725 () Int)

(assert (=> bs!539010 (not (= lambda!115726 lambda!115725))))

(assert (=> b!3137064 true))

(assert (=> b!3137064 true))

(declare-fun b!3137061 () Bool)

(declare-fun e!1957304 () Bool)

(declare-fun e!1957303 () Bool)

(assert (=> b!3137061 (= e!1957304 e!1957303)))

(declare-fun res!1281943 () Bool)

(assert (=> b!3137061 (= res!1281943 (not ((_ is EmptyLang!9643) r!17423)))))

(assert (=> b!3137061 (=> (not res!1281943) (not e!1957303))))

(declare-fun call!224935 () Bool)

(declare-fun c!527217 () Bool)

(declare-fun bm!224929 () Bool)

(declare-fun Exists!1897 (Int) Bool)

(assert (=> bm!224929 (= call!224935 (Exists!1897 (ite c!527217 lambda!115725 lambda!115726)))))

(declare-fun b!3137062 () Bool)

(declare-fun e!1957308 () Bool)

(assert (=> b!3137062 (= e!1957308 (matchRSpec!1780 (regTwo!19799 r!17423) s!11993))))

(declare-fun e!1957305 () Bool)

(assert (=> b!3137063 (= e!1957305 call!224935)))

(declare-fun e!1957307 () Bool)

(assert (=> b!3137064 (= e!1957307 call!224935)))

(declare-fun d!865453 () Bool)

(declare-fun c!527218 () Bool)

(assert (=> d!865453 (= c!527218 ((_ is EmptyExpr!9643) r!17423))))

(assert (=> d!865453 (= (matchRSpec!1780 r!17423 s!11993) e!1957304)))

(declare-fun b!3137065 () Bool)

(declare-fun c!527215 () Bool)

(assert (=> b!3137065 (= c!527215 ((_ is Union!9643) r!17423))))

(declare-fun e!1957309 () Bool)

(declare-fun e!1957306 () Bool)

(assert (=> b!3137065 (= e!1957309 e!1957306)))

(declare-fun bm!224930 () Bool)

(declare-fun call!224934 () Bool)

(assert (=> bm!224930 (= call!224934 (isEmpty!19741 s!11993))))

(declare-fun b!3137066 () Bool)

(assert (=> b!3137066 (= e!1957306 e!1957308)))

(declare-fun res!1281942 () Bool)

(assert (=> b!3137066 (= res!1281942 (matchRSpec!1780 (regOne!19799 r!17423) s!11993))))

(assert (=> b!3137066 (=> res!1281942 e!1957308)))

(declare-fun b!3137067 () Bool)

(assert (=> b!3137067 (= e!1957304 call!224934)))

(declare-fun b!3137068 () Bool)

(assert (=> b!3137068 (= e!1957309 (= s!11993 (Cons!35384 (c!527081 r!17423) Nil!35384)))))

(declare-fun b!3137069 () Bool)

(declare-fun c!527216 () Bool)

(assert (=> b!3137069 (= c!527216 ((_ is ElementMatch!9643) r!17423))))

(assert (=> b!3137069 (= e!1957303 e!1957309)))

(declare-fun b!3137070 () Bool)

(declare-fun res!1281941 () Bool)

(assert (=> b!3137070 (=> res!1281941 e!1957305)))

(assert (=> b!3137070 (= res!1281941 call!224934)))

(assert (=> b!3137070 (= e!1957307 e!1957305)))

(declare-fun b!3137071 () Bool)

(assert (=> b!3137071 (= e!1957306 e!1957307)))

(assert (=> b!3137071 (= c!527217 ((_ is Star!9643) r!17423))))

(assert (= (and d!865453 c!527218) b!3137067))

(assert (= (and d!865453 (not c!527218)) b!3137061))

(assert (= (and b!3137061 res!1281943) b!3137069))

(assert (= (and b!3137069 c!527216) b!3137068))

(assert (= (and b!3137069 (not c!527216)) b!3137065))

(assert (= (and b!3137065 c!527215) b!3137066))

(assert (= (and b!3137065 (not c!527215)) b!3137071))

(assert (= (and b!3137066 (not res!1281942)) b!3137062))

(assert (= (and b!3137071 c!527217) b!3137070))

(assert (= (and b!3137071 (not c!527217)) b!3137064))

(assert (= (and b!3137070 (not res!1281941)) b!3137063))

(assert (= (or b!3137063 b!3137064) bm!224929))

(assert (= (or b!3137067 b!3137070) bm!224930))

(declare-fun m!3417063 () Bool)

(assert (=> bm!224929 m!3417063))

(declare-fun m!3417065 () Bool)

(assert (=> b!3137062 m!3417065))

(assert (=> bm!224930 m!3416951))

(declare-fun m!3417067 () Bool)

(assert (=> b!3137066 m!3417067))

(assert (=> b!3136597 d!865453))

(declare-fun d!865471 () Bool)

(declare-fun e!1957312 () Bool)

(assert (=> d!865471 e!1957312))

(declare-fun c!527221 () Bool)

(assert (=> d!865471 (= c!527221 ((_ is EmptyExpr!9643) r!17423))))

(declare-fun lt!1060932 () Bool)

(declare-fun e!1957314 () Bool)

(assert (=> d!865471 (= lt!1060932 e!1957314)))

(declare-fun c!527220 () Bool)

(assert (=> d!865471 (= c!527220 (isEmpty!19741 s!11993))))

(assert (=> d!865471 (validRegex!4376 r!17423)))

(assert (=> d!865471 (= (matchR!4525 r!17423 s!11993) lt!1060932)))

(declare-fun b!3137076 () Bool)

(declare-fun res!1281949 () Bool)

(declare-fun e!1957310 () Bool)

(assert (=> b!3137076 (=> res!1281949 e!1957310)))

(assert (=> b!3137076 (= res!1281949 (not ((_ is ElementMatch!9643) r!17423)))))

(declare-fun e!1957316 () Bool)

(assert (=> b!3137076 (= e!1957316 e!1957310)))

(declare-fun b!3137077 () Bool)

(declare-fun res!1281945 () Bool)

(declare-fun e!1957313 () Bool)

(assert (=> b!3137077 (=> (not res!1281945) (not e!1957313))))

(declare-fun call!224936 () Bool)

(assert (=> b!3137077 (= res!1281945 (not call!224936))))

(declare-fun b!3137078 () Bool)

(assert (=> b!3137078 (= e!1957313 (= (head!6931 s!11993) (c!527081 r!17423)))))

(declare-fun b!3137079 () Bool)

(assert (=> b!3137079 (= e!1957314 (matchR!4525 (derivativeStep!2872 r!17423 (head!6931 s!11993)) (tail!5157 s!11993)))))

(declare-fun b!3137080 () Bool)

(declare-fun res!1281948 () Bool)

(assert (=> b!3137080 (=> (not res!1281948) (not e!1957313))))

(assert (=> b!3137080 (= res!1281948 (isEmpty!19741 (tail!5157 s!11993)))))

(declare-fun b!3137081 () Bool)

(declare-fun e!1957315 () Bool)

(assert (=> b!3137081 (= e!1957310 e!1957315)))

(declare-fun res!1281944 () Bool)

(assert (=> b!3137081 (=> (not res!1281944) (not e!1957315))))

(assert (=> b!3137081 (= res!1281944 (not lt!1060932))))

(declare-fun b!3137082 () Bool)

(declare-fun res!1281946 () Bool)

(declare-fun e!1957311 () Bool)

(assert (=> b!3137082 (=> res!1281946 e!1957311)))

(assert (=> b!3137082 (= res!1281946 (not (isEmpty!19741 (tail!5157 s!11993))))))

(declare-fun bm!224931 () Bool)

(assert (=> bm!224931 (= call!224936 (isEmpty!19741 s!11993))))

(declare-fun b!3137083 () Bool)

(assert (=> b!3137083 (= e!1957312 (= lt!1060932 call!224936))))

(declare-fun b!3137084 () Bool)

(declare-fun res!1281950 () Bool)

(assert (=> b!3137084 (=> res!1281950 e!1957310)))

(assert (=> b!3137084 (= res!1281950 e!1957313)))

(declare-fun res!1281951 () Bool)

(assert (=> b!3137084 (=> (not res!1281951) (not e!1957313))))

(assert (=> b!3137084 (= res!1281951 lt!1060932)))

(declare-fun b!3137085 () Bool)

(assert (=> b!3137085 (= e!1957316 (not lt!1060932))))

(declare-fun b!3137086 () Bool)

(assert (=> b!3137086 (= e!1957312 e!1957316)))

(declare-fun c!527219 () Bool)

(assert (=> b!3137086 (= c!527219 ((_ is EmptyLang!9643) r!17423))))

(declare-fun b!3137087 () Bool)

(assert (=> b!3137087 (= e!1957314 (nullable!3277 r!17423))))

(declare-fun b!3137088 () Bool)

(assert (=> b!3137088 (= e!1957315 e!1957311)))

(declare-fun res!1281947 () Bool)

(assert (=> b!3137088 (=> res!1281947 e!1957311)))

(assert (=> b!3137088 (= res!1281947 call!224936)))

(declare-fun b!3137089 () Bool)

(assert (=> b!3137089 (= e!1957311 (not (= (head!6931 s!11993) (c!527081 r!17423))))))

(assert (= (and d!865471 c!527220) b!3137087))

(assert (= (and d!865471 (not c!527220)) b!3137079))

(assert (= (and d!865471 c!527221) b!3137083))

(assert (= (and d!865471 (not c!527221)) b!3137086))

(assert (= (and b!3137086 c!527219) b!3137085))

(assert (= (and b!3137086 (not c!527219)) b!3137076))

(assert (= (and b!3137076 (not res!1281949)) b!3137084))

(assert (= (and b!3137084 res!1281951) b!3137077))

(assert (= (and b!3137077 res!1281945) b!3137080))

(assert (= (and b!3137080 res!1281948) b!3137078))

(assert (= (and b!3137084 (not res!1281950)) b!3137081))

(assert (= (and b!3137081 res!1281944) b!3137088))

(assert (= (and b!3137088 (not res!1281947)) b!3137082))

(assert (= (and b!3137082 (not res!1281946)) b!3137089))

(assert (= (or b!3137083 b!3137077 b!3137088) bm!224931))

(assert (=> b!3137078 m!3416945))

(assert (=> b!3137080 m!3416947))

(assert (=> b!3137080 m!3416947))

(assert (=> b!3137080 m!3416949))

(assert (=> bm!224931 m!3416951))

(assert (=> b!3137089 m!3416945))

(assert (=> b!3137087 m!3416969))

(assert (=> b!3137079 m!3416945))

(assert (=> b!3137079 m!3416945))

(declare-fun m!3417069 () Bool)

(assert (=> b!3137079 m!3417069))

(assert (=> b!3137079 m!3416947))

(assert (=> b!3137079 m!3417069))

(assert (=> b!3137079 m!3416947))

(declare-fun m!3417071 () Bool)

(assert (=> b!3137079 m!3417071))

(assert (=> d!865471 m!3416951))

(assert (=> d!865471 m!3416931))

(assert (=> b!3137082 m!3416947))

(assert (=> b!3137082 m!3416947))

(assert (=> b!3137082 m!3416949))

(assert (=> b!3136597 d!865471))

(declare-fun d!865473 () Bool)

(assert (=> d!865473 (= (matchR!4525 r!17423 s!11993) (matchRSpec!1780 r!17423 s!11993))))

(declare-fun lt!1060935 () Unit!49741)

(declare-fun choose!18513 (Regex!9643 List!35508) Unit!49741)

(assert (=> d!865473 (= lt!1060935 (choose!18513 r!17423 s!11993))))

(assert (=> d!865473 (validRegex!4376 r!17423)))

(assert (=> d!865473 (= (mainMatchTheorem!1780 r!17423 s!11993) lt!1060935)))

(declare-fun bs!539011 () Bool)

(assert (= bs!539011 d!865473))

(assert (=> bs!539011 m!3416941))

(assert (=> bs!539011 m!3416939))

(declare-fun m!3417073 () Bool)

(assert (=> bs!539011 m!3417073))

(assert (=> bs!539011 m!3416931))

(assert (=> b!3136597 d!865473))

(declare-fun d!865475 () Bool)

(declare-fun e!1957319 () Bool)

(assert (=> d!865475 e!1957319))

(declare-fun c!527224 () Bool)

(assert (=> d!865475 (= c!527224 ((_ is EmptyExpr!9643) (Star!9643 lt!1060876)))))

(declare-fun lt!1060936 () Bool)

(declare-fun e!1957321 () Bool)

(assert (=> d!865475 (= lt!1060936 e!1957321)))

(declare-fun c!527223 () Bool)

(assert (=> d!865475 (= c!527223 (isEmpty!19741 s!11993))))

(assert (=> d!865475 (validRegex!4376 (Star!9643 lt!1060876))))

(assert (=> d!865475 (= (matchR!4525 (Star!9643 lt!1060876) s!11993) lt!1060936)))

(declare-fun b!3137090 () Bool)

(declare-fun res!1281957 () Bool)

(declare-fun e!1957317 () Bool)

(assert (=> b!3137090 (=> res!1281957 e!1957317)))

(assert (=> b!3137090 (= res!1281957 (not ((_ is ElementMatch!9643) (Star!9643 lt!1060876))))))

(declare-fun e!1957323 () Bool)

(assert (=> b!3137090 (= e!1957323 e!1957317)))

(declare-fun b!3137091 () Bool)

(declare-fun res!1281953 () Bool)

(declare-fun e!1957320 () Bool)

(assert (=> b!3137091 (=> (not res!1281953) (not e!1957320))))

(declare-fun call!224937 () Bool)

(assert (=> b!3137091 (= res!1281953 (not call!224937))))

(declare-fun b!3137092 () Bool)

(assert (=> b!3137092 (= e!1957320 (= (head!6931 s!11993) (c!527081 (Star!9643 lt!1060876))))))

(declare-fun b!3137093 () Bool)

(assert (=> b!3137093 (= e!1957321 (matchR!4525 (derivativeStep!2872 (Star!9643 lt!1060876) (head!6931 s!11993)) (tail!5157 s!11993)))))

(declare-fun b!3137094 () Bool)

(declare-fun res!1281956 () Bool)

(assert (=> b!3137094 (=> (not res!1281956) (not e!1957320))))

(assert (=> b!3137094 (= res!1281956 (isEmpty!19741 (tail!5157 s!11993)))))

(declare-fun b!3137095 () Bool)

(declare-fun e!1957322 () Bool)

(assert (=> b!3137095 (= e!1957317 e!1957322)))

(declare-fun res!1281952 () Bool)

(assert (=> b!3137095 (=> (not res!1281952) (not e!1957322))))

(assert (=> b!3137095 (= res!1281952 (not lt!1060936))))

(declare-fun b!3137096 () Bool)

(declare-fun res!1281954 () Bool)

(declare-fun e!1957318 () Bool)

(assert (=> b!3137096 (=> res!1281954 e!1957318)))

(assert (=> b!3137096 (= res!1281954 (not (isEmpty!19741 (tail!5157 s!11993))))))

(declare-fun bm!224932 () Bool)

(assert (=> bm!224932 (= call!224937 (isEmpty!19741 s!11993))))

(declare-fun b!3137097 () Bool)

(assert (=> b!3137097 (= e!1957319 (= lt!1060936 call!224937))))

(declare-fun b!3137098 () Bool)

(declare-fun res!1281958 () Bool)

(assert (=> b!3137098 (=> res!1281958 e!1957317)))

(assert (=> b!3137098 (= res!1281958 e!1957320)))

(declare-fun res!1281959 () Bool)

(assert (=> b!3137098 (=> (not res!1281959) (not e!1957320))))

(assert (=> b!3137098 (= res!1281959 lt!1060936)))

(declare-fun b!3137099 () Bool)

(assert (=> b!3137099 (= e!1957323 (not lt!1060936))))

(declare-fun b!3137100 () Bool)

(assert (=> b!3137100 (= e!1957319 e!1957323)))

(declare-fun c!527222 () Bool)

(assert (=> b!3137100 (= c!527222 ((_ is EmptyLang!9643) (Star!9643 lt!1060876)))))

(declare-fun b!3137101 () Bool)

(assert (=> b!3137101 (= e!1957321 (nullable!3277 (Star!9643 lt!1060876)))))

(declare-fun b!3137102 () Bool)

(assert (=> b!3137102 (= e!1957322 e!1957318)))

(declare-fun res!1281955 () Bool)

(assert (=> b!3137102 (=> res!1281955 e!1957318)))

(assert (=> b!3137102 (= res!1281955 call!224937)))

(declare-fun b!3137103 () Bool)

(assert (=> b!3137103 (= e!1957318 (not (= (head!6931 s!11993) (c!527081 (Star!9643 lt!1060876)))))))

(assert (= (and d!865475 c!527223) b!3137101))

(assert (= (and d!865475 (not c!527223)) b!3137093))

(assert (= (and d!865475 c!527224) b!3137097))

(assert (= (and d!865475 (not c!527224)) b!3137100))

(assert (= (and b!3137100 c!527222) b!3137099))

(assert (= (and b!3137100 (not c!527222)) b!3137090))

(assert (= (and b!3137090 (not res!1281957)) b!3137098))

(assert (= (and b!3137098 res!1281959) b!3137091))

(assert (= (and b!3137091 res!1281953) b!3137094))

(assert (= (and b!3137094 res!1281956) b!3137092))

(assert (= (and b!3137098 (not res!1281958)) b!3137095))

(assert (= (and b!3137095 res!1281952) b!3137102))

(assert (= (and b!3137102 (not res!1281955)) b!3137096))

(assert (= (and b!3137096 (not res!1281954)) b!3137103))

(assert (= (or b!3137097 b!3137091 b!3137102) bm!224932))

(assert (=> b!3137092 m!3416945))

(assert (=> b!3137094 m!3416947))

(assert (=> b!3137094 m!3416947))

(assert (=> b!3137094 m!3416949))

(assert (=> bm!224932 m!3416951))

(assert (=> b!3137103 m!3416945))

(declare-fun m!3417075 () Bool)

(assert (=> b!3137101 m!3417075))

(assert (=> b!3137093 m!3416945))

(assert (=> b!3137093 m!3416945))

(declare-fun m!3417077 () Bool)

(assert (=> b!3137093 m!3417077))

(assert (=> b!3137093 m!3416947))

(assert (=> b!3137093 m!3417077))

(assert (=> b!3137093 m!3416947))

(declare-fun m!3417079 () Bool)

(assert (=> b!3137093 m!3417079))

(assert (=> d!865475 m!3416951))

(declare-fun m!3417081 () Bool)

(assert (=> d!865475 m!3417081))

(assert (=> b!3137096 m!3416947))

(assert (=> b!3137096 m!3416947))

(assert (=> b!3137096 m!3416949))

(assert (=> b!3136601 d!865475))

(declare-fun d!865477 () Bool)

(assert (=> d!865477 (= (isEmptyLang!694 lt!1060876) ((_ is EmptyLang!9643) lt!1060876))))

(assert (=> b!3136604 d!865477))

(declare-fun b!3137104 () Bool)

(declare-fun e!1957337 () Regex!9643)

(declare-fun e!1957334 () Regex!9643)

(assert (=> b!3137104 (= e!1957337 e!1957334)))

(declare-fun c!527225 () Bool)

(declare-fun call!224943 () Bool)

(assert (=> b!3137104 (= c!527225 call!224943)))

(declare-fun b!3137105 () Bool)

(declare-fun e!1957325 () Regex!9643)

(declare-fun e!1957333 () Regex!9643)

(assert (=> b!3137105 (= e!1957325 e!1957333)))

(declare-fun lt!1060942 () Regex!9643)

(declare-fun call!224944 () Regex!9643)

(assert (=> b!3137105 (= lt!1060942 call!224944)))

(declare-fun lt!1060939 () Regex!9643)

(declare-fun call!224941 () Regex!9643)

(assert (=> b!3137105 (= lt!1060939 call!224941)))

(declare-fun res!1281962 () Bool)

(declare-fun call!224938 () Bool)

(assert (=> b!3137105 (= res!1281962 call!224938)))

(declare-fun e!1957329 () Bool)

(assert (=> b!3137105 (=> res!1281962 e!1957329)))

(declare-fun c!527235 () Bool)

(assert (=> b!3137105 (= c!527235 e!1957329)))

(declare-fun b!3137106 () Bool)

(declare-fun e!1957330 () Regex!9643)

(declare-fun e!1957335 () Regex!9643)

(assert (=> b!3137106 (= e!1957330 e!1957335)))

(declare-fun c!527227 () Bool)

(assert (=> b!3137106 (= c!527227 ((_ is Star!9643) (reg!9972 r!17423)))))

(declare-fun b!3137107 () Bool)

(declare-fun e!1957336 () Bool)

(declare-fun lt!1060940 () Regex!9643)

(assert (=> b!3137107 (= e!1957336 (= (nullable!3277 lt!1060940) (nullable!3277 (reg!9972 r!17423))))))

(declare-fun b!3137108 () Bool)

(assert (=> b!3137108 (= e!1957334 lt!1060942)))

(declare-fun d!865479 () Bool)

(assert (=> d!865479 e!1957336))

(declare-fun res!1281960 () Bool)

(assert (=> d!865479 (=> (not res!1281960) (not e!1957336))))

(assert (=> d!865479 (= res!1281960 (validRegex!4376 lt!1060940))))

(declare-fun e!1957327 () Regex!9643)

(assert (=> d!865479 (= lt!1060940 e!1957327)))

(declare-fun c!527233 () Bool)

(assert (=> d!865479 (= c!527233 ((_ is EmptyLang!9643) (reg!9972 r!17423)))))

(assert (=> d!865479 (validRegex!4376 (reg!9972 r!17423))))

(assert (=> d!865479 (= (simplify!598 (reg!9972 r!17423)) lt!1060940)))

(declare-fun bm!224933 () Bool)

(declare-fun c!527229 () Bool)

(assert (=> bm!224933 (= call!224944 (simplify!598 (ite c!527229 (regTwo!19799 (reg!9972 r!17423)) (regOne!19798 (reg!9972 r!17423)))))))

(declare-fun call!224940 () Regex!9643)

(declare-fun bm!224934 () Bool)

(assert (=> bm!224934 (= call!224940 (simplify!598 (ite c!527227 (reg!9972 (reg!9972 r!17423)) (ite c!527229 (regOne!19799 (reg!9972 r!17423)) (regTwo!19798 (reg!9972 r!17423))))))))

(declare-fun b!3137109 () Bool)

(declare-fun e!1957332 () Regex!9643)

(declare-fun lt!1060937 () Regex!9643)

(declare-fun lt!1060938 () Regex!9643)

(assert (=> b!3137109 (= e!1957332 (Union!9643 lt!1060937 lt!1060938))))

(declare-fun b!3137110 () Bool)

(assert (=> b!3137110 (= e!1957332 lt!1060937)))

(declare-fun b!3137111 () Bool)

(assert (=> b!3137111 (= e!1957337 lt!1060939)))

(declare-fun bm!224935 () Bool)

(assert (=> bm!224935 (= call!224938 (isEmptyLang!694 (ite c!527229 lt!1060938 lt!1060942)))))

(declare-fun lt!1060941 () Regex!9643)

(declare-fun bm!224936 () Bool)

(assert (=> bm!224936 (= call!224943 (isEmptyExpr!688 (ite c!527227 lt!1060941 lt!1060939)))))

(declare-fun b!3137112 () Bool)

(assert (=> b!3137112 (= e!1957334 (Concat!14964 lt!1060942 lt!1060939))))

(declare-fun b!3137113 () Bool)

(declare-fun e!1957331 () Regex!9643)

(assert (=> b!3137113 (= e!1957327 e!1957331)))

(declare-fun c!527228 () Bool)

(assert (=> b!3137113 (= c!527228 ((_ is ElementMatch!9643) (reg!9972 r!17423)))))

(declare-fun b!3137114 () Bool)

(assert (=> b!3137114 (= e!1957333 EmptyLang!9643)))

(declare-fun b!3137115 () Bool)

(assert (=> b!3137115 (= e!1957330 EmptyExpr!9643)))

(declare-fun b!3137116 () Bool)

(declare-fun call!224939 () Bool)

(assert (=> b!3137116 (= e!1957329 call!224939)))

(declare-fun bm!224937 () Bool)

(assert (=> bm!224937 (= call!224941 call!224940)))

(declare-fun b!3137117 () Bool)

(declare-fun e!1957324 () Regex!9643)

(assert (=> b!3137117 (= e!1957325 e!1957324)))

(assert (=> b!3137117 (= lt!1060937 call!224941)))

(assert (=> b!3137117 (= lt!1060938 call!224944)))

(declare-fun c!527232 () Bool)

(assert (=> b!3137117 (= c!527232 call!224939)))

(declare-fun b!3137118 () Bool)

(declare-fun e!1957328 () Regex!9643)

(assert (=> b!3137118 (= e!1957328 (Star!9643 lt!1060941))))

(declare-fun b!3137119 () Bool)

(assert (=> b!3137119 (= c!527229 ((_ is Union!9643) (reg!9972 r!17423)))))

(assert (=> b!3137119 (= e!1957335 e!1957325)))

(declare-fun b!3137120 () Bool)

(declare-fun c!527234 () Bool)

(assert (=> b!3137120 (= c!527234 (isEmptyExpr!688 lt!1060942))))

(assert (=> b!3137120 (= e!1957333 e!1957337)))

(declare-fun b!3137121 () Bool)

(assert (=> b!3137121 (= e!1957331 (reg!9972 r!17423))))

(declare-fun b!3137122 () Bool)

(assert (=> b!3137122 (= e!1957327 EmptyLang!9643)))

(declare-fun bm!224938 () Bool)

(declare-fun call!224942 () Bool)

(assert (=> bm!224938 (= call!224942 (isEmptyLang!694 (ite c!527227 lt!1060941 (ite c!527229 lt!1060937 lt!1060939))))))

(declare-fun b!3137123 () Bool)

(declare-fun e!1957326 () Bool)

(assert (=> b!3137123 (= e!1957326 call!224943)))

(declare-fun bm!224939 () Bool)

(assert (=> bm!224939 (= call!224939 call!224942)))

(declare-fun b!3137124 () Bool)

(declare-fun c!527231 () Bool)

(assert (=> b!3137124 (= c!527231 e!1957326)))

(declare-fun res!1281961 () Bool)

(assert (=> b!3137124 (=> res!1281961 e!1957326)))

(assert (=> b!3137124 (= res!1281961 call!224942)))

(assert (=> b!3137124 (= lt!1060941 call!224940)))

(assert (=> b!3137124 (= e!1957335 e!1957328)))

(declare-fun b!3137125 () Bool)

(declare-fun c!527230 () Bool)

(assert (=> b!3137125 (= c!527230 ((_ is EmptyExpr!9643) (reg!9972 r!17423)))))

(assert (=> b!3137125 (= e!1957331 e!1957330)))

(declare-fun b!3137126 () Bool)

(assert (=> b!3137126 (= e!1957324 lt!1060938)))

(declare-fun b!3137127 () Bool)

(assert (=> b!3137127 (= e!1957328 EmptyExpr!9643)))

(declare-fun b!3137128 () Bool)

(declare-fun c!527226 () Bool)

(assert (=> b!3137128 (= c!527226 call!224938)))

(assert (=> b!3137128 (= e!1957324 e!1957332)))

(assert (= (and d!865479 c!527233) b!3137122))

(assert (= (and d!865479 (not c!527233)) b!3137113))

(assert (= (and b!3137113 c!527228) b!3137121))

(assert (= (and b!3137113 (not c!527228)) b!3137125))

(assert (= (and b!3137125 c!527230) b!3137115))

(assert (= (and b!3137125 (not c!527230)) b!3137106))

(assert (= (and b!3137106 c!527227) b!3137124))

(assert (= (and b!3137106 (not c!527227)) b!3137119))

(assert (= (and b!3137124 (not res!1281961)) b!3137123))

(assert (= (and b!3137124 c!527231) b!3137127))

(assert (= (and b!3137124 (not c!527231)) b!3137118))

(assert (= (and b!3137119 c!527229) b!3137117))

(assert (= (and b!3137119 (not c!527229)) b!3137105))

(assert (= (and b!3137117 c!527232) b!3137126))

(assert (= (and b!3137117 (not c!527232)) b!3137128))

(assert (= (and b!3137128 c!527226) b!3137110))

(assert (= (and b!3137128 (not c!527226)) b!3137109))

(assert (= (and b!3137105 (not res!1281962)) b!3137116))

(assert (= (and b!3137105 c!527235) b!3137114))

(assert (= (and b!3137105 (not c!527235)) b!3137120))

(assert (= (and b!3137120 c!527234) b!3137111))

(assert (= (and b!3137120 (not c!527234)) b!3137104))

(assert (= (and b!3137104 c!527225) b!3137108))

(assert (= (and b!3137104 (not c!527225)) b!3137112))

(assert (= (or b!3137117 b!3137105) bm!224937))

(assert (= (or b!3137117 b!3137105) bm!224933))

(assert (= (or b!3137117 b!3137116) bm!224939))

(assert (= (or b!3137128 b!3137105) bm!224935))

(assert (= (or b!3137123 b!3137104) bm!224936))

(assert (= (or b!3137124 bm!224937) bm!224934))

(assert (= (or b!3137124 bm!224939) bm!224938))

(assert (= (and d!865479 res!1281960) b!3137107))

(declare-fun m!3417083 () Bool)

(assert (=> bm!224933 m!3417083))

(declare-fun m!3417085 () Bool)

(assert (=> d!865479 m!3417085))

(declare-fun m!3417087 () Bool)

(assert (=> d!865479 m!3417087))

(declare-fun m!3417089 () Bool)

(assert (=> bm!224934 m!3417089))

(declare-fun m!3417091 () Bool)

(assert (=> b!3137107 m!3417091))

(assert (=> b!3137107 m!3416979))

(declare-fun m!3417093 () Bool)

(assert (=> b!3137120 m!3417093))

(declare-fun m!3417095 () Bool)

(assert (=> bm!224938 m!3417095))

(declare-fun m!3417097 () Bool)

(assert (=> bm!224935 m!3417097))

(declare-fun m!3417099 () Bool)

(assert (=> bm!224936 m!3417099))

(assert (=> b!3136604 d!865479))

(declare-fun b!3137140 () Bool)

(declare-fun e!1957340 () Bool)

(declare-fun tp!981929 () Bool)

(declare-fun tp!981926 () Bool)

(assert (=> b!3137140 (= e!1957340 (and tp!981929 tp!981926))))

(assert (=> b!3136600 (= tp!981875 e!1957340)))

(declare-fun b!3137142 () Bool)

(declare-fun tp!981928 () Bool)

(declare-fun tp!981930 () Bool)

(assert (=> b!3137142 (= e!1957340 (and tp!981928 tp!981930))))

(declare-fun b!3137141 () Bool)

(declare-fun tp!981927 () Bool)

(assert (=> b!3137141 (= e!1957340 tp!981927)))

(declare-fun b!3137139 () Bool)

(assert (=> b!3137139 (= e!1957340 tp_is_empty!16849)))

(assert (= (and b!3136600 ((_ is ElementMatch!9643) (regOne!19798 r!17423))) b!3137139))

(assert (= (and b!3136600 ((_ is Concat!14964) (regOne!19798 r!17423))) b!3137140))

(assert (= (and b!3136600 ((_ is Star!9643) (regOne!19798 r!17423))) b!3137141))

(assert (= (and b!3136600 ((_ is Union!9643) (regOne!19798 r!17423))) b!3137142))

(declare-fun b!3137144 () Bool)

(declare-fun e!1957341 () Bool)

(declare-fun tp!981934 () Bool)

(declare-fun tp!981931 () Bool)

(assert (=> b!3137144 (= e!1957341 (and tp!981934 tp!981931))))

(assert (=> b!3136600 (= tp!981872 e!1957341)))

(declare-fun b!3137146 () Bool)

(declare-fun tp!981933 () Bool)

(declare-fun tp!981935 () Bool)

(assert (=> b!3137146 (= e!1957341 (and tp!981933 tp!981935))))

(declare-fun b!3137145 () Bool)

(declare-fun tp!981932 () Bool)

(assert (=> b!3137145 (= e!1957341 tp!981932)))

(declare-fun b!3137143 () Bool)

(assert (=> b!3137143 (= e!1957341 tp_is_empty!16849)))

(assert (= (and b!3136600 ((_ is ElementMatch!9643) (regTwo!19798 r!17423))) b!3137143))

(assert (= (and b!3136600 ((_ is Concat!14964) (regTwo!19798 r!17423))) b!3137144))

(assert (= (and b!3136600 ((_ is Star!9643) (regTwo!19798 r!17423))) b!3137145))

(assert (= (and b!3136600 ((_ is Union!9643) (regTwo!19798 r!17423))) b!3137146))

(declare-fun b!3137148 () Bool)

(declare-fun e!1957342 () Bool)

(declare-fun tp!981939 () Bool)

(declare-fun tp!981936 () Bool)

(assert (=> b!3137148 (= e!1957342 (and tp!981939 tp!981936))))

(assert (=> b!3136599 (= tp!981874 e!1957342)))

(declare-fun b!3137150 () Bool)

(declare-fun tp!981938 () Bool)

(declare-fun tp!981940 () Bool)

(assert (=> b!3137150 (= e!1957342 (and tp!981938 tp!981940))))

(declare-fun b!3137149 () Bool)

(declare-fun tp!981937 () Bool)

(assert (=> b!3137149 (= e!1957342 tp!981937)))

(declare-fun b!3137147 () Bool)

(assert (=> b!3137147 (= e!1957342 tp_is_empty!16849)))

(assert (= (and b!3136599 ((_ is ElementMatch!9643) (reg!9972 r!17423))) b!3137147))

(assert (= (and b!3136599 ((_ is Concat!14964) (reg!9972 r!17423))) b!3137148))

(assert (= (and b!3136599 ((_ is Star!9643) (reg!9972 r!17423))) b!3137149))

(assert (= (and b!3136599 ((_ is Union!9643) (reg!9972 r!17423))) b!3137150))

(declare-fun b!3137155 () Bool)

(declare-fun e!1957345 () Bool)

(declare-fun tp!981943 () Bool)

(assert (=> b!3137155 (= e!1957345 (and tp_is_empty!16849 tp!981943))))

(assert (=> b!3136605 (= tp!981877 e!1957345)))

(assert (= (and b!3136605 ((_ is Cons!35384) (t!234573 s!11993))) b!3137155))

(declare-fun b!3137157 () Bool)

(declare-fun e!1957346 () Bool)

(declare-fun tp!981947 () Bool)

(declare-fun tp!981944 () Bool)

(assert (=> b!3137157 (= e!1957346 (and tp!981947 tp!981944))))

(assert (=> b!3136598 (= tp!981873 e!1957346)))

(declare-fun b!3137159 () Bool)

(declare-fun tp!981946 () Bool)

(declare-fun tp!981948 () Bool)

(assert (=> b!3137159 (= e!1957346 (and tp!981946 tp!981948))))

(declare-fun b!3137158 () Bool)

(declare-fun tp!981945 () Bool)

(assert (=> b!3137158 (= e!1957346 tp!981945)))

(declare-fun b!3137156 () Bool)

(assert (=> b!3137156 (= e!1957346 tp_is_empty!16849)))

(assert (= (and b!3136598 ((_ is ElementMatch!9643) (regOne!19799 r!17423))) b!3137156))

(assert (= (and b!3136598 ((_ is Concat!14964) (regOne!19799 r!17423))) b!3137157))

(assert (= (and b!3136598 ((_ is Star!9643) (regOne!19799 r!17423))) b!3137158))

(assert (= (and b!3136598 ((_ is Union!9643) (regOne!19799 r!17423))) b!3137159))

(declare-fun b!3137161 () Bool)

(declare-fun e!1957347 () Bool)

(declare-fun tp!981952 () Bool)

(declare-fun tp!981949 () Bool)

(assert (=> b!3137161 (= e!1957347 (and tp!981952 tp!981949))))

(assert (=> b!3136598 (= tp!981876 e!1957347)))

(declare-fun b!3137163 () Bool)

(declare-fun tp!981951 () Bool)

(declare-fun tp!981953 () Bool)

(assert (=> b!3137163 (= e!1957347 (and tp!981951 tp!981953))))

(declare-fun b!3137162 () Bool)

(declare-fun tp!981950 () Bool)

(assert (=> b!3137162 (= e!1957347 tp!981950)))

(declare-fun b!3137160 () Bool)

(assert (=> b!3137160 (= e!1957347 tp_is_empty!16849)))

(assert (= (and b!3136598 ((_ is ElementMatch!9643) (regTwo!19799 r!17423))) b!3137160))

(assert (= (and b!3136598 ((_ is Concat!14964) (regTwo!19799 r!17423))) b!3137161))

(assert (= (and b!3136598 ((_ is Star!9643) (regTwo!19799 r!17423))) b!3137162))

(assert (= (and b!3136598 ((_ is Union!9643) (regTwo!19799 r!17423))) b!3137163))

(check-sat (not b!3137148) (not b!3137079) (not bm!224846) (not d!865449) (not bm!224936) (not b!3137078) (not bm!224929) (not b!3136662) (not b!3137157) (not bm!224935) (not b!3137145) (not bm!224875) (not b!3137162) (not bm!224874) (not bm!224861) (not b!3137120) (not bm!224932) (not bm!224931) (not bm!224863) (not b!3137149) (not b!3136736) (not b!3137101) (not b!3136660) (not b!3137087) (not b!3137066) (not bm!224933) (not b!3137096) tp_is_empty!16849 (not b!3136667) (not b!3137161) (not b!3137150) (not b!3137080) (not b!3136658) (not bm!224930) (not b!3137093) (not b!3136669) (not bm!224934) (not d!865475) (not b!3137089) (not d!865479) (not b!3137107) (not d!865471) (not b!3136659) (not d!865473) (not d!865447) (not b!3137094) (not b!3137144) (not b!3136765) (not b!3136723) (not bm!224862) (not b!3137141) (not bm!224938) (not b!3137082) (not bm!224866) (not bm!224864) (not b!3137062) (not b!3137092) (not b!3137142) (not b!3137163) (not b!3137146) (not b!3137158) (not b!3137155) (not b!3137103) (not b!3137140) (not b!3137159))
(check-sat)
