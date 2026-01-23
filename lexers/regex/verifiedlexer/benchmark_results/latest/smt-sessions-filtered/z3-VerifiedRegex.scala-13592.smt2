; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!730632 () Bool)

(assert start!730632)

(declare-fun b!7561860 () Bool)

(declare-fun e!4502891 () Bool)

(declare-fun tp!2202181 () Bool)

(declare-fun tp!2202171 () Bool)

(assert (=> b!7561860 (= e!4502891 (and tp!2202181 tp!2202171))))

(declare-fun res!3029933 () Bool)

(declare-fun e!4502887 () Bool)

(assert (=> start!730632 (=> (not res!3029933) (not e!4502887))))

(declare-datatypes ((C!40284 0))(
  ( (C!40285 (val!30582 Int)) )
))
(declare-datatypes ((Regex!19979 0))(
  ( (ElementMatch!19979 (c!1395260 C!40284)) (Concat!28824 (regOne!40470 Regex!19979) (regTwo!40470 Regex!19979)) (EmptyExpr!19979) (Star!19979 (reg!20308 Regex!19979)) (EmptyLang!19979) (Union!19979 (regOne!40471 Regex!19979) (regTwo!40471 Regex!19979)) )
))
(declare-fun baseR!101 () Regex!19979)

(declare-fun validRegex!10407 (Regex!19979) Bool)

(assert (=> start!730632 (= res!3029933 (validRegex!10407 baseR!101))))

(assert (=> start!730632 e!4502887))

(assert (=> start!730632 e!4502891))

(declare-fun e!4502895 () Bool)

(assert (=> start!730632 e!4502895))

(declare-fun e!4502885 () Bool)

(assert (=> start!730632 e!4502885))

(declare-fun e!4502889 () Bool)

(assert (=> start!730632 e!4502889))

(declare-fun e!4502893 () Bool)

(assert (=> start!730632 e!4502893))

(declare-fun b!7561861 () Bool)

(declare-fun e!4502884 () Bool)

(declare-fun e!4502883 () Bool)

(assert (=> b!7561861 (= e!4502884 e!4502883)))

(declare-fun res!3029935 () Bool)

(assert (=> b!7561861 (=> res!3029935 e!4502883)))

(declare-datatypes ((List!72862 0))(
  ( (Nil!72738) (Cons!72738 (h!79186 C!40284) (t!387591 List!72862)) )
))
(declare-fun lt!2649111 () List!72862)

(declare-fun input!7874 () List!72862)

(assert (=> b!7561861 (= res!3029935 (not (= lt!2649111 input!7874)))))

(declare-fun lt!2649102 () List!72862)

(assert (=> b!7561861 (= lt!2649102 lt!2649111)))

(declare-fun testedP!423 () List!72862)

(declare-fun lt!2649100 () List!72862)

(declare-fun ++!17483 (List!72862 List!72862) List!72862)

(assert (=> b!7561861 (= lt!2649111 (++!17483 testedP!423 lt!2649100))))

(declare-fun lt!2649095 () List!72862)

(declare-fun lt!2649101 () List!72862)

(assert (=> b!7561861 (= lt!2649100 (++!17483 lt!2649095 lt!2649101))))

(declare-datatypes ((Unit!166892 0))(
  ( (Unit!166893) )
))
(declare-fun lt!2649110 () Unit!166892)

(declare-fun lemmaConcatAssociativity!3118 (List!72862 List!72862 List!72862) Unit!166892)

(assert (=> b!7561861 (= lt!2649110 (lemmaConcatAssociativity!3118 testedP!423 lt!2649095 lt!2649101))))

(declare-fun b!7561862 () Bool)

(declare-fun e!4502892 () Bool)

(assert (=> b!7561862 (= e!4502892 true)))

(declare-fun lt!2649103 () Int)

(declare-fun lt!2649099 () List!72862)

(declare-fun size!42475 (List!72862) Int)

(assert (=> b!7561862 (= lt!2649103 (size!42475 lt!2649099))))

(declare-fun b!7561863 () Bool)

(declare-fun res!3029937 () Bool)

(declare-fun e!4502881 () Bool)

(assert (=> b!7561863 (=> res!3029937 e!4502881)))

(declare-fun r!24333 () Regex!19979)

(declare-fun lostCause!1767 (Regex!19979) Bool)

(assert (=> b!7561863 (= res!3029937 (lostCause!1767 r!24333))))

(declare-fun b!7561864 () Bool)

(declare-fun e!4502886 () Bool)

(assert (=> b!7561864 (= e!4502883 e!4502886)))

(declare-fun res!3029938 () Bool)

(assert (=> b!7561864 (=> res!3029938 e!4502886)))

(declare-fun lt!2649114 () C!40284)

(declare-fun head!15557 (List!72862) C!40284)

(assert (=> b!7561864 (= res!3029938 (not (= (head!15557 lt!2649095) lt!2649114)))))

(declare-fun lt!2649097 () List!72862)

(assert (=> b!7561864 (= lt!2649100 lt!2649097)))

(declare-fun lt!2649090 () Unit!166892)

(declare-fun lemmaSamePrefixThenSameSuffix!2885 (List!72862 List!72862 List!72862 List!72862 List!72862) Unit!166892)

(assert (=> b!7561864 (= lt!2649090 (lemmaSamePrefixThenSameSuffix!2885 testedP!423 lt!2649100 testedP!423 lt!2649097 input!7874))))

(declare-fun b!7561865 () Bool)

(declare-fun e!4502894 () Bool)

(declare-fun e!4502888 () Bool)

(assert (=> b!7561865 (= e!4502894 e!4502888)))

(declare-fun res!3029939 () Bool)

(assert (=> b!7561865 (=> res!3029939 e!4502888)))

(declare-fun lt!2649107 () List!72862)

(declare-fun knownP!30 () List!72862)

(assert (=> b!7561865 (= res!3029939 (not (= lt!2649107 knownP!30)))))

(declare-fun lt!2649113 () List!72862)

(assert (=> b!7561865 (= lt!2649107 (++!17483 lt!2649099 lt!2649113))))

(declare-fun b!7561866 () Bool)

(declare-fun tp_is_empty!50313 () Bool)

(declare-fun tp!2202182 () Bool)

(assert (=> b!7561866 (= e!4502889 (and tp_is_empty!50313 tp!2202182))))

(declare-fun b!7561867 () Bool)

(declare-fun e!4502890 () Bool)

(assert (=> b!7561867 (= e!4502881 e!4502890)))

(declare-fun res!3029934 () Bool)

(assert (=> b!7561867 (=> res!3029934 e!4502890)))

(assert (=> b!7561867 (= res!3029934 (not (= (++!17483 knownP!30 lt!2649101) input!7874)))))

(declare-fun getSuffix!3663 (List!72862 List!72862) List!72862)

(assert (=> b!7561867 (= lt!2649101 (getSuffix!3663 input!7874 knownP!30))))

(assert (=> b!7561867 (= lt!2649113 (getSuffix!3663 knownP!30 lt!2649099))))

(declare-fun isPrefix!6185 (List!72862 List!72862) Bool)

(assert (=> b!7561867 (isPrefix!6185 lt!2649099 knownP!30)))

(declare-fun lt!2649109 () Unit!166892)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!933 (List!72862 List!72862 List!72862) Unit!166892)

(assert (=> b!7561867 (= lt!2649109 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!933 knownP!30 lt!2649099 input!7874))))

(declare-fun lt!2649106 () Regex!19979)

(declare-fun lt!2649093 () Regex!19979)

(assert (=> b!7561867 (= lt!2649106 lt!2649093)))

(declare-fun derivativeStep!5757 (Regex!19979 C!40284) Regex!19979)

(assert (=> b!7561867 (= lt!2649093 (derivativeStep!5757 r!24333 lt!2649114))))

(declare-fun derivative!509 (Regex!19979 List!72862) Regex!19979)

(assert (=> b!7561867 (= lt!2649106 (derivative!509 baseR!101 lt!2649099))))

(declare-fun lt!2649112 () Unit!166892)

(declare-fun lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!201 (Regex!19979 Regex!19979 List!72862 C!40284) Unit!166892)

(assert (=> b!7561867 (= lt!2649112 (lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!201 baseR!101 r!24333 testedP!423 lt!2649114))))

(assert (=> b!7561867 (isPrefix!6185 lt!2649099 input!7874)))

(declare-fun lt!2649094 () Unit!166892)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!1234 (List!72862 List!72862) Unit!166892)

(assert (=> b!7561867 (= lt!2649094 (lemmaAddHeadSuffixToPrefixStillPrefix!1234 testedP!423 input!7874))))

(declare-fun lt!2649104 () List!72862)

(assert (=> b!7561867 (= lt!2649099 (++!17483 testedP!423 lt!2649104))))

(assert (=> b!7561867 (= lt!2649104 (Cons!72738 lt!2649114 Nil!72738))))

(assert (=> b!7561867 (= lt!2649114 (head!15557 lt!2649097))))

(assert (=> b!7561867 (= lt!2649097 (getSuffix!3663 input!7874 testedP!423))))

(declare-fun b!7561868 () Bool)

(assert (=> b!7561868 (= e!4502886 e!4502894)))

(declare-fun res!3029946 () Bool)

(assert (=> b!7561868 (=> res!3029946 e!4502894)))

(declare-fun lt!2649088 () List!72862)

(declare-fun $colon$colon!3407 (List!72862 C!40284) List!72862)

(assert (=> b!7561868 (= res!3029946 (not (= lt!2649095 ($colon$colon!3407 lt!2649088 lt!2649114))))))

(declare-fun tail!15097 (List!72862) List!72862)

(assert (=> b!7561868 (= lt!2649088 (tail!15097 lt!2649095))))

(declare-fun b!7561869 () Bool)

(declare-fun res!3029944 () Bool)

(assert (=> b!7561869 (=> res!3029944 e!4502881)))

(declare-fun lt!2649098 () Int)

(assert (=> b!7561869 (= res!3029944 (>= lt!2649098 (size!42475 input!7874)))))

(declare-fun b!7561870 () Bool)

(declare-fun res!3029936 () Bool)

(assert (=> b!7561870 (=> (not res!3029936) (not e!4502887))))

(assert (=> b!7561870 (= res!3029936 (validRegex!10407 r!24333))))

(declare-fun b!7561871 () Bool)

(declare-fun tp!2202175 () Bool)

(assert (=> b!7561871 (= e!4502895 (and tp_is_empty!50313 tp!2202175))))

(declare-fun b!7561872 () Bool)

(assert (=> b!7561872 (= e!4502890 e!4502884)))

(declare-fun res!3029950 () Bool)

(assert (=> b!7561872 (=> res!3029950 e!4502884)))

(assert (=> b!7561872 (= res!3029950 (not (= lt!2649102 input!7874)))))

(declare-fun lt!2649108 () List!72862)

(assert (=> b!7561872 (= lt!2649102 (++!17483 lt!2649108 lt!2649101))))

(assert (=> b!7561872 (= lt!2649108 (++!17483 testedP!423 lt!2649095))))

(declare-fun b!7561873 () Bool)

(declare-fun tp!2202173 () Bool)

(assert (=> b!7561873 (= e!4502893 tp!2202173)))

(declare-fun b!7561874 () Bool)

(assert (=> b!7561874 (= e!4502893 tp_is_empty!50313)))

(declare-fun b!7561875 () Bool)

(declare-fun res!3029945 () Bool)

(assert (=> b!7561875 (=> res!3029945 e!4502884)))

(assert (=> b!7561875 (= res!3029945 (not (= (++!17483 testedP!423 lt!2649097) input!7874)))))

(declare-fun b!7561876 () Bool)

(declare-fun e!4502882 () Bool)

(assert (=> b!7561876 (= e!4502882 (not e!4502881))))

(declare-fun res!3029952 () Bool)

(assert (=> b!7561876 (=> res!3029952 e!4502881)))

(declare-fun matchR!9581 (Regex!19979 List!72862) Bool)

(assert (=> b!7561876 (= res!3029952 (not (matchR!9581 r!24333 lt!2649095)))))

(assert (=> b!7561876 (= lt!2649095 (getSuffix!3663 knownP!30 testedP!423))))

(assert (=> b!7561876 (isPrefix!6185 testedP!423 knownP!30)))

(declare-fun lt!2649092 () Unit!166892)

(assert (=> b!7561876 (= lt!2649092 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!933 knownP!30 testedP!423 input!7874))))

(declare-fun b!7561877 () Bool)

(declare-fun res!3029948 () Bool)

(assert (=> b!7561877 (=> res!3029948 e!4502892)))

(assert (=> b!7561877 (= res!3029948 (not (validRegex!10407 lt!2649093)))))

(declare-fun b!7561878 () Bool)

(declare-fun res!3029941 () Bool)

(assert (=> b!7561878 (=> res!3029941 e!4502881)))

(declare-fun lt!2649096 () Int)

(assert (=> b!7561878 (= res!3029941 (= lt!2649098 lt!2649096))))

(declare-fun b!7561879 () Bool)

(declare-fun res!3029942 () Bool)

(assert (=> b!7561879 (=> (not res!3029942) (not e!4502887))))

(assert (=> b!7561879 (= res!3029942 (isPrefix!6185 testedP!423 input!7874))))

(declare-fun b!7561880 () Bool)

(declare-fun res!3029947 () Bool)

(assert (=> b!7561880 (=> res!3029947 e!4502894)))

(assert (=> b!7561880 (= res!3029947 (not (= lt!2649108 knownP!30)))))

(declare-fun b!7561881 () Bool)

(declare-fun tp!2202176 () Bool)

(declare-fun tp!2202174 () Bool)

(assert (=> b!7561881 (= e!4502891 (and tp!2202176 tp!2202174))))

(declare-fun b!7561882 () Bool)

(assert (=> b!7561882 (= e!4502891 tp_is_empty!50313)))

(declare-fun b!7561883 () Bool)

(declare-fun tp!2202180 () Bool)

(assert (=> b!7561883 (= e!4502891 tp!2202180)))

(declare-fun b!7561884 () Bool)

(assert (=> b!7561884 (= e!4502887 e!4502882)))

(declare-fun res!3029940 () Bool)

(assert (=> b!7561884 (=> (not res!3029940) (not e!4502882))))

(assert (=> b!7561884 (= res!3029940 (>= lt!2649096 lt!2649098))))

(assert (=> b!7561884 (= lt!2649098 (size!42475 testedP!423))))

(assert (=> b!7561884 (= lt!2649096 (size!42475 knownP!30))))

(declare-fun b!7561885 () Bool)

(declare-fun res!3029949 () Bool)

(assert (=> b!7561885 (=> res!3029949 e!4502881)))

(assert (=> b!7561885 (= res!3029949 (not (= (derivative!509 baseR!101 testedP!423) r!24333)))))

(declare-fun b!7561886 () Bool)

(declare-fun res!3029943 () Bool)

(assert (=> b!7561886 (=> (not res!3029943) (not e!4502887))))

(assert (=> b!7561886 (= res!3029943 (isPrefix!6185 knownP!30 input!7874))))

(declare-fun b!7561887 () Bool)

(declare-fun tp!2202179 () Bool)

(declare-fun tp!2202172 () Bool)

(assert (=> b!7561887 (= e!4502893 (and tp!2202179 tp!2202172))))

(declare-fun b!7561888 () Bool)

(assert (=> b!7561888 (= e!4502888 e!4502892)))

(declare-fun res!3029932 () Bool)

(assert (=> b!7561888 (=> res!3029932 e!4502892)))

(assert (=> b!7561888 (= res!3029932 (not (= lt!2649088 lt!2649113)))))

(declare-fun lt!2649089 () List!72862)

(assert (=> b!7561888 (= lt!2649089 lt!2649095)))

(declare-fun lt!2649091 () Unit!166892)

(assert (=> b!7561888 (= lt!2649091 (lemmaSamePrefixThenSameSuffix!2885 testedP!423 lt!2649089 testedP!423 lt!2649095 knownP!30))))

(assert (=> b!7561888 (= lt!2649107 (++!17483 testedP!423 lt!2649089))))

(assert (=> b!7561888 (= lt!2649089 (++!17483 lt!2649104 lt!2649113))))

(declare-fun lt!2649105 () Unit!166892)

(assert (=> b!7561888 (= lt!2649105 (lemmaConcatAssociativity!3118 testedP!423 lt!2649104 lt!2649113))))

(declare-fun b!7561889 () Bool)

(declare-fun tp!2202177 () Bool)

(assert (=> b!7561889 (= e!4502885 (and tp_is_empty!50313 tp!2202177))))

(declare-fun b!7561890 () Bool)

(declare-fun tp!2202183 () Bool)

(declare-fun tp!2202178 () Bool)

(assert (=> b!7561890 (= e!4502893 (and tp!2202183 tp!2202178))))

(declare-fun b!7561891 () Bool)

(declare-fun res!3029951 () Bool)

(assert (=> b!7561891 (=> (not res!3029951) (not e!4502882))))

(assert (=> b!7561891 (= res!3029951 (matchR!9581 baseR!101 knownP!30))))

(assert (= (and start!730632 res!3029933) b!7561870))

(assert (= (and b!7561870 res!3029936) b!7561879))

(assert (= (and b!7561879 res!3029942) b!7561886))

(assert (= (and b!7561886 res!3029943) b!7561884))

(assert (= (and b!7561884 res!3029940) b!7561891))

(assert (= (and b!7561891 res!3029951) b!7561876))

(assert (= (and b!7561876 (not res!3029952)) b!7561885))

(assert (= (and b!7561885 (not res!3029949)) b!7561863))

(assert (= (and b!7561863 (not res!3029937)) b!7561878))

(assert (= (and b!7561878 (not res!3029941)) b!7561869))

(assert (= (and b!7561869 (not res!3029944)) b!7561867))

(assert (= (and b!7561867 (not res!3029934)) b!7561872))

(assert (= (and b!7561872 (not res!3029950)) b!7561875))

(assert (= (and b!7561875 (not res!3029945)) b!7561861))

(assert (= (and b!7561861 (not res!3029935)) b!7561864))

(assert (= (and b!7561864 (not res!3029938)) b!7561868))

(assert (= (and b!7561868 (not res!3029946)) b!7561880))

(assert (= (and b!7561880 (not res!3029947)) b!7561865))

(assert (= (and b!7561865 (not res!3029939)) b!7561888))

(assert (= (and b!7561888 (not res!3029932)) b!7561877))

(assert (= (and b!7561877 (not res!3029948)) b!7561862))

(get-info :version)

(assert (= (and start!730632 ((_ is ElementMatch!19979) baseR!101)) b!7561882))

(assert (= (and start!730632 ((_ is Concat!28824) baseR!101)) b!7561860))

(assert (= (and start!730632 ((_ is Star!19979) baseR!101)) b!7561883))

(assert (= (and start!730632 ((_ is Union!19979) baseR!101)) b!7561881))

(assert (= (and start!730632 ((_ is Cons!72738) input!7874)) b!7561871))

(assert (= (and start!730632 ((_ is Cons!72738) knownP!30)) b!7561889))

(assert (= (and start!730632 ((_ is Cons!72738) testedP!423)) b!7561866))

(assert (= (and start!730632 ((_ is ElementMatch!19979) r!24333)) b!7561874))

(assert (= (and start!730632 ((_ is Concat!28824) r!24333)) b!7561890))

(assert (= (and start!730632 ((_ is Star!19979) r!24333)) b!7561873))

(assert (= (and start!730632 ((_ is Union!19979) r!24333)) b!7561887))

(declare-fun m!8124758 () Bool)

(assert (=> b!7561865 m!8124758))

(declare-fun m!8124760 () Bool)

(assert (=> b!7561864 m!8124760))

(declare-fun m!8124762 () Bool)

(assert (=> b!7561864 m!8124762))

(declare-fun m!8124764 () Bool)

(assert (=> b!7561879 m!8124764))

(declare-fun m!8124766 () Bool)

(assert (=> b!7561877 m!8124766))

(declare-fun m!8124768 () Bool)

(assert (=> b!7561872 m!8124768))

(declare-fun m!8124770 () Bool)

(assert (=> b!7561872 m!8124770))

(declare-fun m!8124772 () Bool)

(assert (=> b!7561876 m!8124772))

(declare-fun m!8124774 () Bool)

(assert (=> b!7561876 m!8124774))

(declare-fun m!8124776 () Bool)

(assert (=> b!7561876 m!8124776))

(declare-fun m!8124778 () Bool)

(assert (=> b!7561876 m!8124778))

(declare-fun m!8124780 () Bool)

(assert (=> b!7561863 m!8124780))

(declare-fun m!8124782 () Bool)

(assert (=> b!7561861 m!8124782))

(declare-fun m!8124784 () Bool)

(assert (=> b!7561861 m!8124784))

(declare-fun m!8124786 () Bool)

(assert (=> b!7561861 m!8124786))

(declare-fun m!8124788 () Bool)

(assert (=> b!7561888 m!8124788))

(declare-fun m!8124790 () Bool)

(assert (=> b!7561888 m!8124790))

(declare-fun m!8124792 () Bool)

(assert (=> b!7561888 m!8124792))

(declare-fun m!8124794 () Bool)

(assert (=> b!7561888 m!8124794))

(declare-fun m!8124796 () Bool)

(assert (=> b!7561885 m!8124796))

(declare-fun m!8124798 () Bool)

(assert (=> b!7561891 m!8124798))

(declare-fun m!8124800 () Bool)

(assert (=> b!7561867 m!8124800))

(declare-fun m!8124802 () Bool)

(assert (=> b!7561867 m!8124802))

(declare-fun m!8124804 () Bool)

(assert (=> b!7561867 m!8124804))

(declare-fun m!8124806 () Bool)

(assert (=> b!7561867 m!8124806))

(declare-fun m!8124808 () Bool)

(assert (=> b!7561867 m!8124808))

(declare-fun m!8124810 () Bool)

(assert (=> b!7561867 m!8124810))

(declare-fun m!8124812 () Bool)

(assert (=> b!7561867 m!8124812))

(declare-fun m!8124814 () Bool)

(assert (=> b!7561867 m!8124814))

(declare-fun m!8124816 () Bool)

(assert (=> b!7561867 m!8124816))

(declare-fun m!8124818 () Bool)

(assert (=> b!7561867 m!8124818))

(declare-fun m!8124820 () Bool)

(assert (=> b!7561867 m!8124820))

(declare-fun m!8124822 () Bool)

(assert (=> b!7561867 m!8124822))

(declare-fun m!8124824 () Bool)

(assert (=> b!7561867 m!8124824))

(declare-fun m!8124826 () Bool)

(assert (=> b!7561884 m!8124826))

(declare-fun m!8124828 () Bool)

(assert (=> b!7561884 m!8124828))

(declare-fun m!8124830 () Bool)

(assert (=> b!7561870 m!8124830))

(declare-fun m!8124832 () Bool)

(assert (=> b!7561869 m!8124832))

(declare-fun m!8124834 () Bool)

(assert (=> b!7561868 m!8124834))

(declare-fun m!8124836 () Bool)

(assert (=> b!7561868 m!8124836))

(declare-fun m!8124838 () Bool)

(assert (=> b!7561875 m!8124838))

(declare-fun m!8124840 () Bool)

(assert (=> b!7561886 m!8124840))

(declare-fun m!8124842 () Bool)

(assert (=> b!7561862 m!8124842))

(declare-fun m!8124844 () Bool)

(assert (=> start!730632 m!8124844))

(check-sat (not b!7561863) (not b!7561875) (not b!7561868) (not b!7561860) (not b!7561873) (not start!730632) (not b!7561872) (not b!7561890) (not b!7561881) (not b!7561871) (not b!7561885) (not b!7561869) (not b!7561862) (not b!7561867) (not b!7561861) (not b!7561877) tp_is_empty!50313 (not b!7561864) (not b!7561884) (not b!7561866) (not b!7561865) (not b!7561879) (not b!7561889) (not b!7561870) (not b!7561883) (not b!7561886) (not b!7561876) (not b!7561891) (not b!7561887) (not b!7561888))
(check-sat)
