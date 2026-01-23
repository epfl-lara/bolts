; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!294316 () Bool)

(assert start!294316)

(declare-fun b!3102524 () Bool)

(declare-fun e!1938708 () Bool)

(declare-datatypes ((C!19316 0))(
  ( (C!19317 (val!11694 Int)) )
))
(declare-datatypes ((Regex!9565 0))(
  ( (ElementMatch!9565 (c!518543 C!19316)) (Concat!14886 (regOne!19642 Regex!9565) (regTwo!19642 Regex!9565)) (EmptyExpr!9565) (Star!9565 (reg!9894 Regex!9565)) (EmptyLang!9565) (Union!9565 (regOne!19643 Regex!9565) (regTwo!19643 Regex!9565)) )
))
(declare-fun r!17423 () Regex!9565)

(declare-fun validRegex!4298 (Regex!9565) Bool)

(assert (=> b!3102524 (= e!1938708 (validRegex!4298 (regOne!19643 r!17423)))))

(declare-fun b!3102525 () Bool)

(declare-fun e!1938709 () Bool)

(declare-fun tp_is_empty!16693 () Bool)

(declare-fun tp!974952 () Bool)

(assert (=> b!3102525 (= e!1938709 (and tp_is_empty!16693 tp!974952))))

(declare-fun b!3102526 () Bool)

(declare-fun e!1938705 () Bool)

(declare-fun e!1938710 () Bool)

(assert (=> b!3102526 (= e!1938705 e!1938710)))

(declare-fun res!1270773 () Bool)

(assert (=> b!3102526 (=> res!1270773 e!1938710)))

(declare-fun lt!1056012 () Bool)

(assert (=> b!3102526 (= res!1270773 (not lt!1056012))))

(declare-fun lt!1056014 () Regex!9565)

(declare-datatypes ((List!35430 0))(
  ( (Nil!35306) (Cons!35306 (h!40726 C!19316) (t!234495 List!35430)) )
))
(declare-fun s!11993 () List!35430)

(declare-fun matchR!4447 (Regex!9565 List!35430) Bool)

(assert (=> b!3102526 (= lt!1056012 (matchR!4447 lt!1056014 s!11993))))

(assert (=> b!3102526 (= lt!1056012 (matchR!4447 (regTwo!19643 r!17423) s!11993))))

(declare-datatypes ((Unit!49569 0))(
  ( (Unit!49570) )
))
(declare-fun lt!1056011 () Unit!49569)

(declare-fun lemmaSimplifySound!328 (Regex!9565 List!35430) Unit!49569)

(assert (=> b!3102526 (= lt!1056011 (lemmaSimplifySound!328 (regTwo!19643 r!17423) s!11993))))

(declare-fun b!3102527 () Bool)

(declare-fun e!1938706 () Bool)

(declare-fun tp!974954 () Bool)

(assert (=> b!3102527 (= e!1938706 tp!974954)))

(declare-fun b!3102528 () Bool)

(declare-fun e!1938711 () Bool)

(declare-fun e!1938707 () Bool)

(assert (=> b!3102528 (= e!1938711 (not e!1938707))))

(declare-fun res!1270771 () Bool)

(assert (=> b!3102528 (=> res!1270771 e!1938707)))

(declare-fun lt!1056013 () Bool)

(get-info :version)

(assert (=> b!3102528 (= res!1270771 (or lt!1056013 ((_ is Concat!14886) r!17423) (not ((_ is Union!9565) r!17423))))))

(declare-fun matchRSpec!1702 (Regex!9565 List!35430) Bool)

(assert (=> b!3102528 (= lt!1056013 (matchRSpec!1702 r!17423 s!11993))))

(assert (=> b!3102528 (= lt!1056013 (matchR!4447 r!17423 s!11993))))

(declare-fun lt!1056015 () Unit!49569)

(declare-fun mainMatchTheorem!1702 (Regex!9565 List!35430) Unit!49569)

(assert (=> b!3102528 (= lt!1056015 (mainMatchTheorem!1702 r!17423 s!11993))))

(declare-fun b!3102529 () Bool)

(assert (=> b!3102529 (= e!1938706 tp_is_empty!16693)))

(declare-fun res!1270770 () Bool)

(assert (=> start!294316 (=> (not res!1270770) (not e!1938711))))

(assert (=> start!294316 (= res!1270770 (validRegex!4298 r!17423))))

(assert (=> start!294316 e!1938711))

(assert (=> start!294316 e!1938706))

(assert (=> start!294316 e!1938709))

(declare-fun b!3102530 () Bool)

(assert (=> b!3102530 (= e!1938710 e!1938708)))

(declare-fun res!1270772 () Bool)

(assert (=> b!3102530 (=> (not res!1270772) (not e!1938708))))

(assert (=> b!3102530 (= res!1270772 (validRegex!4298 (regTwo!19643 r!17423)))))

(declare-fun b!3102531 () Bool)

(assert (=> b!3102531 (= e!1938707 e!1938705)))

(declare-fun res!1270774 () Bool)

(assert (=> b!3102531 (=> res!1270774 e!1938705)))

(declare-fun lt!1056016 () Regex!9565)

(declare-fun isEmptyLang!616 (Regex!9565) Bool)

(assert (=> b!3102531 (= res!1270774 (not (isEmptyLang!616 lt!1056016)))))

(declare-fun simplify!520 (Regex!9565) Regex!9565)

(assert (=> b!3102531 (= lt!1056014 (simplify!520 (regTwo!19643 r!17423)))))

(assert (=> b!3102531 (= lt!1056016 (simplify!520 (regOne!19643 r!17423)))))

(declare-fun b!3102532 () Bool)

(declare-fun tp!974953 () Bool)

(declare-fun tp!974957 () Bool)

(assert (=> b!3102532 (= e!1938706 (and tp!974953 tp!974957))))

(declare-fun b!3102533 () Bool)

(declare-fun tp!974955 () Bool)

(declare-fun tp!974956 () Bool)

(assert (=> b!3102533 (= e!1938706 (and tp!974955 tp!974956))))

(assert (= (and start!294316 res!1270770) b!3102528))

(assert (= (and b!3102528 (not res!1270771)) b!3102531))

(assert (= (and b!3102531 (not res!1270774)) b!3102526))

(assert (= (and b!3102526 (not res!1270773)) b!3102530))

(assert (= (and b!3102530 res!1270772) b!3102524))

(assert (= (and start!294316 ((_ is ElementMatch!9565) r!17423)) b!3102529))

(assert (= (and start!294316 ((_ is Concat!14886) r!17423)) b!3102532))

(assert (= (and start!294316 ((_ is Star!9565) r!17423)) b!3102527))

(assert (= (and start!294316 ((_ is Union!9565) r!17423)) b!3102533))

(assert (= (and start!294316 ((_ is Cons!35306) s!11993)) b!3102525))

(declare-fun m!3401577 () Bool)

(assert (=> b!3102530 m!3401577))

(declare-fun m!3401579 () Bool)

(assert (=> b!3102524 m!3401579))

(declare-fun m!3401581 () Bool)

(assert (=> b!3102531 m!3401581))

(declare-fun m!3401583 () Bool)

(assert (=> b!3102531 m!3401583))

(declare-fun m!3401585 () Bool)

(assert (=> b!3102531 m!3401585))

(declare-fun m!3401587 () Bool)

(assert (=> b!3102528 m!3401587))

(declare-fun m!3401589 () Bool)

(assert (=> b!3102528 m!3401589))

(declare-fun m!3401591 () Bool)

(assert (=> b!3102528 m!3401591))

(declare-fun m!3401593 () Bool)

(assert (=> b!3102526 m!3401593))

(declare-fun m!3401595 () Bool)

(assert (=> b!3102526 m!3401595))

(declare-fun m!3401597 () Bool)

(assert (=> b!3102526 m!3401597))

(declare-fun m!3401599 () Bool)

(assert (=> start!294316 m!3401599))

(check-sat (not b!3102533) (not b!3102524) (not b!3102527) (not b!3102528) (not start!294316) (not b!3102525) (not b!3102531) tp_is_empty!16693 (not b!3102526) (not b!3102532) (not b!3102530))
(check-sat)
(get-model)

(declare-fun b!3102753 () Bool)

(assert (=> b!3102753 true))

(assert (=> b!3102753 true))

(declare-fun bs!535703 () Bool)

(declare-fun b!3102751 () Bool)

(assert (= bs!535703 (and b!3102751 b!3102753)))

(declare-fun lambda!114916 () Int)

(declare-fun lambda!114915 () Int)

(assert (=> bs!535703 (not (= lambda!114916 lambda!114915))))

(assert (=> b!3102751 true))

(assert (=> b!3102751 true))

(declare-fun call!218901 () Bool)

(declare-fun bm!218896 () Bool)

(declare-fun c!518619 () Bool)

(declare-fun Exists!1827 (Int) Bool)

(assert (=> bm!218896 (= call!218901 (Exists!1827 (ite c!518619 lambda!114915 lambda!114916)))))

(declare-fun b!3102749 () Bool)

(declare-fun e!1938842 () Bool)

(declare-fun e!1938841 () Bool)

(assert (=> b!3102749 (= e!1938842 e!1938841)))

(declare-fun res!1270844 () Bool)

(assert (=> b!3102749 (= res!1270844 (not ((_ is EmptyLang!9565) r!17423)))))

(assert (=> b!3102749 (=> (not res!1270844) (not e!1938841))))

(declare-fun b!3102750 () Bool)

(declare-fun c!518617 () Bool)

(assert (=> b!3102750 (= c!518617 ((_ is ElementMatch!9565) r!17423))))

(declare-fun e!1938840 () Bool)

(assert (=> b!3102750 (= e!1938841 e!1938840)))

(declare-fun e!1938844 () Bool)

(assert (=> b!3102751 (= e!1938844 call!218901)))

(declare-fun b!3102752 () Bool)

(declare-fun res!1270842 () Bool)

(declare-fun e!1938843 () Bool)

(assert (=> b!3102752 (=> res!1270842 e!1938843)))

(declare-fun call!218902 () Bool)

(assert (=> b!3102752 (= res!1270842 call!218902)))

(assert (=> b!3102752 (= e!1938844 e!1938843)))

(assert (=> b!3102753 (= e!1938843 call!218901)))

(declare-fun d!861130 () Bool)

(declare-fun c!518618 () Bool)

(assert (=> d!861130 (= c!518618 ((_ is EmptyExpr!9565) r!17423))))

(assert (=> d!861130 (= (matchRSpec!1702 r!17423 s!11993) e!1938842)))

(declare-fun b!3102754 () Bool)

(assert (=> b!3102754 (= e!1938840 (= s!11993 (Cons!35306 (c!518543 r!17423) Nil!35306)))))

(declare-fun b!3102755 () Bool)

(declare-fun c!518616 () Bool)

(assert (=> b!3102755 (= c!518616 ((_ is Union!9565) r!17423))))

(declare-fun e!1938845 () Bool)

(assert (=> b!3102755 (= e!1938840 e!1938845)))

(declare-fun b!3102756 () Bool)

(assert (=> b!3102756 (= e!1938845 e!1938844)))

(assert (=> b!3102756 (= c!518619 ((_ is Star!9565) r!17423))))

(declare-fun b!3102757 () Bool)

(declare-fun e!1938839 () Bool)

(assert (=> b!3102757 (= e!1938845 e!1938839)))

(declare-fun res!1270843 () Bool)

(assert (=> b!3102757 (= res!1270843 (matchRSpec!1702 (regOne!19643 r!17423) s!11993))))

(assert (=> b!3102757 (=> res!1270843 e!1938839)))

(declare-fun bm!218897 () Bool)

(declare-fun isEmpty!19656 (List!35430) Bool)

(assert (=> bm!218897 (= call!218902 (isEmpty!19656 s!11993))))

(declare-fun b!3102758 () Bool)

(assert (=> b!3102758 (= e!1938842 call!218902)))

(declare-fun b!3102759 () Bool)

(assert (=> b!3102759 (= e!1938839 (matchRSpec!1702 (regTwo!19643 r!17423) s!11993))))

(assert (= (and d!861130 c!518618) b!3102758))

(assert (= (and d!861130 (not c!518618)) b!3102749))

(assert (= (and b!3102749 res!1270844) b!3102750))

(assert (= (and b!3102750 c!518617) b!3102754))

(assert (= (and b!3102750 (not c!518617)) b!3102755))

(assert (= (and b!3102755 c!518616) b!3102757))

(assert (= (and b!3102755 (not c!518616)) b!3102756))

(assert (= (and b!3102757 (not res!1270843)) b!3102759))

(assert (= (and b!3102756 c!518619) b!3102752))

(assert (= (and b!3102756 (not c!518619)) b!3102751))

(assert (= (and b!3102752 (not res!1270842)) b!3102753))

(assert (= (or b!3102753 b!3102751) bm!218896))

(assert (= (or b!3102758 b!3102752) bm!218897))

(declare-fun m!3401657 () Bool)

(assert (=> bm!218896 m!3401657))

(declare-fun m!3401659 () Bool)

(assert (=> b!3102757 m!3401659))

(declare-fun m!3401661 () Bool)

(assert (=> bm!218897 m!3401661))

(declare-fun m!3401663 () Bool)

(assert (=> b!3102759 m!3401663))

(assert (=> b!3102528 d!861130))

(declare-fun b!3102834 () Bool)

(declare-fun e!1938886 () Bool)

(declare-fun nullable!3211 (Regex!9565) Bool)

(assert (=> b!3102834 (= e!1938886 (nullable!3211 r!17423))))

(declare-fun b!3102835 () Bool)

(declare-fun e!1938885 () Bool)

(declare-fun lt!1056046 () Bool)

(declare-fun call!218908 () Bool)

(assert (=> b!3102835 (= e!1938885 (= lt!1056046 call!218908))))

(declare-fun b!3102836 () Bool)

(declare-fun e!1938881 () Bool)

(declare-fun head!6864 (List!35430) C!19316)

(assert (=> b!3102836 (= e!1938881 (not (= (head!6864 s!11993) (c!518543 r!17423))))))

(declare-fun b!3102837 () Bool)

(declare-fun res!1270887 () Bool)

(declare-fun e!1938884 () Bool)

(assert (=> b!3102837 (=> res!1270887 e!1938884)))

(assert (=> b!3102837 (= res!1270887 (not ((_ is ElementMatch!9565) r!17423)))))

(declare-fun e!1938882 () Bool)

(assert (=> b!3102837 (= e!1938882 e!1938884)))

(declare-fun b!3102838 () Bool)

(declare-fun e!1938883 () Bool)

(assert (=> b!3102838 (= e!1938883 (= (head!6864 s!11993) (c!518543 r!17423)))))

(declare-fun b!3102839 () Bool)

(declare-fun res!1270886 () Bool)

(assert (=> b!3102839 (=> res!1270886 e!1938881)))

(declare-fun tail!5090 (List!35430) List!35430)

(assert (=> b!3102839 (= res!1270886 (not (isEmpty!19656 (tail!5090 s!11993))))))

(declare-fun b!3102840 () Bool)

(declare-fun e!1938887 () Bool)

(assert (=> b!3102840 (= e!1938887 e!1938881)))

(declare-fun res!1270885 () Bool)

(assert (=> b!3102840 (=> res!1270885 e!1938881)))

(assert (=> b!3102840 (= res!1270885 call!218908)))

(declare-fun b!3102841 () Bool)

(declare-fun derivativeStep!2805 (Regex!9565 C!19316) Regex!9565)

(assert (=> b!3102841 (= e!1938886 (matchR!4447 (derivativeStep!2805 r!17423 (head!6864 s!11993)) (tail!5090 s!11993)))))

(declare-fun b!3102842 () Bool)

(assert (=> b!3102842 (= e!1938885 e!1938882)))

(declare-fun c!518637 () Bool)

(assert (=> b!3102842 (= c!518637 ((_ is EmptyLang!9565) r!17423))))

(declare-fun b!3102843 () Bool)

(declare-fun res!1270890 () Bool)

(assert (=> b!3102843 (=> res!1270890 e!1938884)))

(assert (=> b!3102843 (= res!1270890 e!1938883)))

(declare-fun res!1270892 () Bool)

(assert (=> b!3102843 (=> (not res!1270892) (not e!1938883))))

(assert (=> b!3102843 (= res!1270892 lt!1056046)))

(declare-fun d!861146 () Bool)

(assert (=> d!861146 e!1938885))

(declare-fun c!518635 () Bool)

(assert (=> d!861146 (= c!518635 ((_ is EmptyExpr!9565) r!17423))))

(assert (=> d!861146 (= lt!1056046 e!1938886)))

(declare-fun c!518636 () Bool)

(assert (=> d!861146 (= c!518636 (isEmpty!19656 s!11993))))

(assert (=> d!861146 (validRegex!4298 r!17423)))

(assert (=> d!861146 (= (matchR!4447 r!17423 s!11993) lt!1056046)))

(declare-fun bm!218903 () Bool)

(assert (=> bm!218903 (= call!218908 (isEmpty!19656 s!11993))))

(declare-fun b!3102844 () Bool)

(assert (=> b!3102844 (= e!1938884 e!1938887)))

(declare-fun res!1270889 () Bool)

(assert (=> b!3102844 (=> (not res!1270889) (not e!1938887))))

(assert (=> b!3102844 (= res!1270889 (not lt!1056046))))

(declare-fun b!3102845 () Bool)

(assert (=> b!3102845 (= e!1938882 (not lt!1056046))))

(declare-fun b!3102846 () Bool)

(declare-fun res!1270888 () Bool)

(assert (=> b!3102846 (=> (not res!1270888) (not e!1938883))))

(assert (=> b!3102846 (= res!1270888 (isEmpty!19656 (tail!5090 s!11993)))))

(declare-fun b!3102847 () Bool)

(declare-fun res!1270891 () Bool)

(assert (=> b!3102847 (=> (not res!1270891) (not e!1938883))))

(assert (=> b!3102847 (= res!1270891 (not call!218908))))

(assert (= (and d!861146 c!518636) b!3102834))

(assert (= (and d!861146 (not c!518636)) b!3102841))

(assert (= (and d!861146 c!518635) b!3102835))

(assert (= (and d!861146 (not c!518635)) b!3102842))

(assert (= (and b!3102842 c!518637) b!3102845))

(assert (= (and b!3102842 (not c!518637)) b!3102837))

(assert (= (and b!3102837 (not res!1270887)) b!3102843))

(assert (= (and b!3102843 res!1270892) b!3102847))

(assert (= (and b!3102847 res!1270891) b!3102846))

(assert (= (and b!3102846 res!1270888) b!3102838))

(assert (= (and b!3102843 (not res!1270890)) b!3102844))

(assert (= (and b!3102844 res!1270889) b!3102840))

(assert (= (and b!3102840 (not res!1270885)) b!3102839))

(assert (= (and b!3102839 (not res!1270886)) b!3102836))

(assert (= (or b!3102835 b!3102840 b!3102847) bm!218903))

(declare-fun m!3401677 () Bool)

(assert (=> b!3102846 m!3401677))

(assert (=> b!3102846 m!3401677))

(declare-fun m!3401679 () Bool)

(assert (=> b!3102846 m!3401679))

(declare-fun m!3401681 () Bool)

(assert (=> b!3102841 m!3401681))

(assert (=> b!3102841 m!3401681))

(declare-fun m!3401683 () Bool)

(assert (=> b!3102841 m!3401683))

(assert (=> b!3102841 m!3401677))

(assert (=> b!3102841 m!3401683))

(assert (=> b!3102841 m!3401677))

(declare-fun m!3401685 () Bool)

(assert (=> b!3102841 m!3401685))

(assert (=> d!861146 m!3401661))

(assert (=> d!861146 m!3401599))

(assert (=> bm!218903 m!3401661))

(assert (=> b!3102838 m!3401681))

(declare-fun m!3401687 () Bool)

(assert (=> b!3102834 m!3401687))

(assert (=> b!3102836 m!3401681))

(assert (=> b!3102839 m!3401677))

(assert (=> b!3102839 m!3401677))

(assert (=> b!3102839 m!3401679))

(assert (=> b!3102528 d!861146))

(declare-fun d!861150 () Bool)

(assert (=> d!861150 (= (matchR!4447 r!17423 s!11993) (matchRSpec!1702 r!17423 s!11993))))

(declare-fun lt!1056053 () Unit!49569)

(declare-fun choose!18354 (Regex!9565 List!35430) Unit!49569)

(assert (=> d!861150 (= lt!1056053 (choose!18354 r!17423 s!11993))))

(assert (=> d!861150 (validRegex!4298 r!17423)))

(assert (=> d!861150 (= (mainMatchTheorem!1702 r!17423 s!11993) lt!1056053)))

(declare-fun bs!535705 () Bool)

(assert (= bs!535705 d!861150))

(assert (=> bs!535705 m!3401589))

(assert (=> bs!535705 m!3401587))

(declare-fun m!3401701 () Bool)

(assert (=> bs!535705 m!3401701))

(assert (=> bs!535705 m!3401599))

(assert (=> b!3102528 d!861150))

(declare-fun b!3102871 () Bool)

(declare-fun e!1938907 () Bool)

(assert (=> b!3102871 (= e!1938907 (nullable!3211 lt!1056014))))

(declare-fun b!3102872 () Bool)

(declare-fun e!1938906 () Bool)

(declare-fun lt!1056054 () Bool)

(declare-fun call!218913 () Bool)

(assert (=> b!3102872 (= e!1938906 (= lt!1056054 call!218913))))

(declare-fun b!3102873 () Bool)

(declare-fun e!1938902 () Bool)

(assert (=> b!3102873 (= e!1938902 (not (= (head!6864 s!11993) (c!518543 lt!1056014))))))

(declare-fun b!3102874 () Bool)

(declare-fun res!1270908 () Bool)

(declare-fun e!1938905 () Bool)

(assert (=> b!3102874 (=> res!1270908 e!1938905)))

(assert (=> b!3102874 (= res!1270908 (not ((_ is ElementMatch!9565) lt!1056014)))))

(declare-fun e!1938903 () Bool)

(assert (=> b!3102874 (= e!1938903 e!1938905)))

(declare-fun b!3102875 () Bool)

(declare-fun e!1938904 () Bool)

(assert (=> b!3102875 (= e!1938904 (= (head!6864 s!11993) (c!518543 lt!1056014)))))

(declare-fun b!3102876 () Bool)

(declare-fun res!1270907 () Bool)

(assert (=> b!3102876 (=> res!1270907 e!1938902)))

(assert (=> b!3102876 (= res!1270907 (not (isEmpty!19656 (tail!5090 s!11993))))))

(declare-fun b!3102877 () Bool)

(declare-fun e!1938908 () Bool)

(assert (=> b!3102877 (= e!1938908 e!1938902)))

(declare-fun res!1270906 () Bool)

(assert (=> b!3102877 (=> res!1270906 e!1938902)))

(assert (=> b!3102877 (= res!1270906 call!218913)))

(declare-fun b!3102878 () Bool)

(assert (=> b!3102878 (= e!1938907 (matchR!4447 (derivativeStep!2805 lt!1056014 (head!6864 s!11993)) (tail!5090 s!11993)))))

(declare-fun b!3102879 () Bool)

(assert (=> b!3102879 (= e!1938906 e!1938903)))

(declare-fun c!518645 () Bool)

(assert (=> b!3102879 (= c!518645 ((_ is EmptyLang!9565) lt!1056014))))

(declare-fun b!3102880 () Bool)

(declare-fun res!1270911 () Bool)

(assert (=> b!3102880 (=> res!1270911 e!1938905)))

(assert (=> b!3102880 (= res!1270911 e!1938904)))

(declare-fun res!1270913 () Bool)

(assert (=> b!3102880 (=> (not res!1270913) (not e!1938904))))

(assert (=> b!3102880 (= res!1270913 lt!1056054)))

(declare-fun d!861156 () Bool)

(assert (=> d!861156 e!1938906))

(declare-fun c!518643 () Bool)

(assert (=> d!861156 (= c!518643 ((_ is EmptyExpr!9565) lt!1056014))))

(assert (=> d!861156 (= lt!1056054 e!1938907)))

(declare-fun c!518644 () Bool)

(assert (=> d!861156 (= c!518644 (isEmpty!19656 s!11993))))

(assert (=> d!861156 (validRegex!4298 lt!1056014)))

(assert (=> d!861156 (= (matchR!4447 lt!1056014 s!11993) lt!1056054)))

(declare-fun bm!218908 () Bool)

(assert (=> bm!218908 (= call!218913 (isEmpty!19656 s!11993))))

(declare-fun b!3102881 () Bool)

(assert (=> b!3102881 (= e!1938905 e!1938908)))

(declare-fun res!1270910 () Bool)

(assert (=> b!3102881 (=> (not res!1270910) (not e!1938908))))

(assert (=> b!3102881 (= res!1270910 (not lt!1056054))))

(declare-fun b!3102882 () Bool)

(assert (=> b!3102882 (= e!1938903 (not lt!1056054))))

(declare-fun b!3102883 () Bool)

(declare-fun res!1270909 () Bool)

(assert (=> b!3102883 (=> (not res!1270909) (not e!1938904))))

(assert (=> b!3102883 (= res!1270909 (isEmpty!19656 (tail!5090 s!11993)))))

(declare-fun b!3102884 () Bool)

(declare-fun res!1270912 () Bool)

(assert (=> b!3102884 (=> (not res!1270912) (not e!1938904))))

(assert (=> b!3102884 (= res!1270912 (not call!218913))))

(assert (= (and d!861156 c!518644) b!3102871))

(assert (= (and d!861156 (not c!518644)) b!3102878))

(assert (= (and d!861156 c!518643) b!3102872))

(assert (= (and d!861156 (not c!518643)) b!3102879))

(assert (= (and b!3102879 c!518645) b!3102882))

(assert (= (and b!3102879 (not c!518645)) b!3102874))

(assert (= (and b!3102874 (not res!1270908)) b!3102880))

(assert (= (and b!3102880 res!1270913) b!3102884))

(assert (= (and b!3102884 res!1270912) b!3102883))

(assert (= (and b!3102883 res!1270909) b!3102875))

(assert (= (and b!3102880 (not res!1270911)) b!3102881))

(assert (= (and b!3102881 res!1270910) b!3102877))

(assert (= (and b!3102877 (not res!1270906)) b!3102876))

(assert (= (and b!3102876 (not res!1270907)) b!3102873))

(assert (= (or b!3102872 b!3102877 b!3102884) bm!218908))

(assert (=> b!3102883 m!3401677))

(assert (=> b!3102883 m!3401677))

(assert (=> b!3102883 m!3401679))

(assert (=> b!3102878 m!3401681))

(assert (=> b!3102878 m!3401681))

(declare-fun m!3401707 () Bool)

(assert (=> b!3102878 m!3401707))

(assert (=> b!3102878 m!3401677))

(assert (=> b!3102878 m!3401707))

(assert (=> b!3102878 m!3401677))

(declare-fun m!3401711 () Bool)

(assert (=> b!3102878 m!3401711))

(assert (=> d!861156 m!3401661))

(declare-fun m!3401713 () Bool)

(assert (=> d!861156 m!3401713))

(assert (=> bm!218908 m!3401661))

(assert (=> b!3102875 m!3401681))

(declare-fun m!3401717 () Bool)

(assert (=> b!3102871 m!3401717))

(assert (=> b!3102873 m!3401681))

(assert (=> b!3102876 m!3401677))

(assert (=> b!3102876 m!3401677))

(assert (=> b!3102876 m!3401679))

(assert (=> b!3102526 d!861156))

(declare-fun b!3102899 () Bool)

(declare-fun e!1938921 () Bool)

(assert (=> b!3102899 (= e!1938921 (nullable!3211 (regTwo!19643 r!17423)))))

(declare-fun b!3102900 () Bool)

(declare-fun e!1938920 () Bool)

(declare-fun lt!1056056 () Bool)

(declare-fun call!218915 () Bool)

(assert (=> b!3102900 (= e!1938920 (= lt!1056056 call!218915))))

(declare-fun b!3102901 () Bool)

(declare-fun e!1938916 () Bool)

(assert (=> b!3102901 (= e!1938916 (not (= (head!6864 s!11993) (c!518543 (regTwo!19643 r!17423)))))))

(declare-fun b!3102902 () Bool)

(declare-fun res!1270924 () Bool)

(declare-fun e!1938919 () Bool)

(assert (=> b!3102902 (=> res!1270924 e!1938919)))

(assert (=> b!3102902 (= res!1270924 (not ((_ is ElementMatch!9565) (regTwo!19643 r!17423))))))

(declare-fun e!1938917 () Bool)

(assert (=> b!3102902 (= e!1938917 e!1938919)))

(declare-fun b!3102903 () Bool)

(declare-fun e!1938918 () Bool)

(assert (=> b!3102903 (= e!1938918 (= (head!6864 s!11993) (c!518543 (regTwo!19643 r!17423))))))

(declare-fun b!3102904 () Bool)

(declare-fun res!1270923 () Bool)

(assert (=> b!3102904 (=> res!1270923 e!1938916)))

(assert (=> b!3102904 (= res!1270923 (not (isEmpty!19656 (tail!5090 s!11993))))))

(declare-fun b!3102905 () Bool)

(declare-fun e!1938922 () Bool)

(assert (=> b!3102905 (= e!1938922 e!1938916)))

(declare-fun res!1270922 () Bool)

(assert (=> b!3102905 (=> res!1270922 e!1938916)))

(assert (=> b!3102905 (= res!1270922 call!218915)))

(declare-fun b!3102906 () Bool)

(assert (=> b!3102906 (= e!1938921 (matchR!4447 (derivativeStep!2805 (regTwo!19643 r!17423) (head!6864 s!11993)) (tail!5090 s!11993)))))

(declare-fun b!3102907 () Bool)

(assert (=> b!3102907 (= e!1938920 e!1938917)))

(declare-fun c!518651 () Bool)

(assert (=> b!3102907 (= c!518651 ((_ is EmptyLang!9565) (regTwo!19643 r!17423)))))

(declare-fun b!3102908 () Bool)

(declare-fun res!1270927 () Bool)

(assert (=> b!3102908 (=> res!1270927 e!1938919)))

(assert (=> b!3102908 (= res!1270927 e!1938918)))

(declare-fun res!1270929 () Bool)

(assert (=> b!3102908 (=> (not res!1270929) (not e!1938918))))

(assert (=> b!3102908 (= res!1270929 lt!1056056)))

(declare-fun d!861162 () Bool)

(assert (=> d!861162 e!1938920))

(declare-fun c!518649 () Bool)

(assert (=> d!861162 (= c!518649 ((_ is EmptyExpr!9565) (regTwo!19643 r!17423)))))

(assert (=> d!861162 (= lt!1056056 e!1938921)))

(declare-fun c!518650 () Bool)

(assert (=> d!861162 (= c!518650 (isEmpty!19656 s!11993))))

(assert (=> d!861162 (validRegex!4298 (regTwo!19643 r!17423))))

(assert (=> d!861162 (= (matchR!4447 (regTwo!19643 r!17423) s!11993) lt!1056056)))

(declare-fun bm!218910 () Bool)

(assert (=> bm!218910 (= call!218915 (isEmpty!19656 s!11993))))

(declare-fun b!3102909 () Bool)

(assert (=> b!3102909 (= e!1938919 e!1938922)))

(declare-fun res!1270926 () Bool)

(assert (=> b!3102909 (=> (not res!1270926) (not e!1938922))))

(assert (=> b!3102909 (= res!1270926 (not lt!1056056))))

(declare-fun b!3102910 () Bool)

(assert (=> b!3102910 (= e!1938917 (not lt!1056056))))

(declare-fun b!3102911 () Bool)

(declare-fun res!1270925 () Bool)

(assert (=> b!3102911 (=> (not res!1270925) (not e!1938918))))

(assert (=> b!3102911 (= res!1270925 (isEmpty!19656 (tail!5090 s!11993)))))

(declare-fun b!3102912 () Bool)

(declare-fun res!1270928 () Bool)

(assert (=> b!3102912 (=> (not res!1270928) (not e!1938918))))

(assert (=> b!3102912 (= res!1270928 (not call!218915))))

(assert (= (and d!861162 c!518650) b!3102899))

(assert (= (and d!861162 (not c!518650)) b!3102906))

(assert (= (and d!861162 c!518649) b!3102900))

(assert (= (and d!861162 (not c!518649)) b!3102907))

(assert (= (and b!3102907 c!518651) b!3102910))

(assert (= (and b!3102907 (not c!518651)) b!3102902))

(assert (= (and b!3102902 (not res!1270924)) b!3102908))

(assert (= (and b!3102908 res!1270929) b!3102912))

(assert (= (and b!3102912 res!1270928) b!3102911))

(assert (= (and b!3102911 res!1270925) b!3102903))

(assert (= (and b!3102908 (not res!1270927)) b!3102909))

(assert (= (and b!3102909 res!1270926) b!3102905))

(assert (= (and b!3102905 (not res!1270922)) b!3102904))

(assert (= (and b!3102904 (not res!1270923)) b!3102901))

(assert (= (or b!3102900 b!3102905 b!3102912) bm!218910))

(assert (=> b!3102911 m!3401677))

(assert (=> b!3102911 m!3401677))

(assert (=> b!3102911 m!3401679))

(assert (=> b!3102906 m!3401681))

(assert (=> b!3102906 m!3401681))

(declare-fun m!3401719 () Bool)

(assert (=> b!3102906 m!3401719))

(assert (=> b!3102906 m!3401677))

(assert (=> b!3102906 m!3401719))

(assert (=> b!3102906 m!3401677))

(declare-fun m!3401721 () Bool)

(assert (=> b!3102906 m!3401721))

(assert (=> d!861162 m!3401661))

(assert (=> d!861162 m!3401577))

(assert (=> bm!218910 m!3401661))

(assert (=> b!3102903 m!3401681))

(declare-fun m!3401723 () Bool)

(assert (=> b!3102899 m!3401723))

(assert (=> b!3102901 m!3401681))

(assert (=> b!3102904 m!3401677))

(assert (=> b!3102904 m!3401677))

(assert (=> b!3102904 m!3401679))

(assert (=> b!3102526 d!861162))

(declare-fun d!861164 () Bool)

(assert (=> d!861164 (= (matchR!4447 (regTwo!19643 r!17423) s!11993) (matchR!4447 (simplify!520 (regTwo!19643 r!17423)) s!11993))))

(declare-fun lt!1056062 () Unit!49569)

(declare-fun choose!18355 (Regex!9565 List!35430) Unit!49569)

(assert (=> d!861164 (= lt!1056062 (choose!18355 (regTwo!19643 r!17423) s!11993))))

(assert (=> d!861164 (validRegex!4298 (regTwo!19643 r!17423))))

(assert (=> d!861164 (= (lemmaSimplifySound!328 (regTwo!19643 r!17423) s!11993) lt!1056062)))

(declare-fun bs!535707 () Bool)

(assert (= bs!535707 d!861164))

(assert (=> bs!535707 m!3401583))

(assert (=> bs!535707 m!3401595))

(assert (=> bs!535707 m!3401583))

(declare-fun m!3401729 () Bool)

(assert (=> bs!535707 m!3401729))

(declare-fun m!3401731 () Bool)

(assert (=> bs!535707 m!3401731))

(assert (=> bs!535707 m!3401577))

(assert (=> b!3102526 d!861164))

(declare-fun d!861166 () Bool)

(assert (=> d!861166 (= (isEmptyLang!616 lt!1056016) ((_ is EmptyLang!9565) lt!1056016))))

(assert (=> b!3102531 d!861166))

(declare-fun b!3102998 () Bool)

(declare-fun e!1938969 () Bool)

(declare-fun call!218933 () Bool)

(assert (=> b!3102998 (= e!1938969 call!218933)))

(declare-fun bm!218925 () Bool)

(declare-fun call!218936 () Bool)

(declare-fun call!218931 () Bool)

(assert (=> bm!218925 (= call!218936 call!218931)))

(declare-fun b!3102999 () Bool)

(declare-fun e!1938961 () Regex!9565)

(declare-fun e!1938971 () Regex!9565)

(assert (=> b!3102999 (= e!1938961 e!1938971)))

(declare-fun lt!1056075 () Regex!9565)

(declare-fun call!218932 () Regex!9565)

(assert (=> b!3102999 (= lt!1056075 call!218932)))

(declare-fun lt!1056076 () Regex!9565)

(declare-fun call!218930 () Regex!9565)

(assert (=> b!3102999 (= lt!1056076 call!218930)))

(declare-fun c!518684 () Bool)

(assert (=> b!3102999 (= c!518684 call!218936)))

(declare-fun call!218935 () Regex!9565)

(declare-fun c!518675 () Bool)

(declare-fun c!518674 () Bool)

(declare-fun bm!218926 () Bool)

(assert (=> bm!218926 (= call!218935 (simplify!520 (ite c!518675 (reg!9894 (regTwo!19643 r!17423)) (ite c!518674 (regOne!19643 (regTwo!19643 r!17423)) (regTwo!19642 (regTwo!19643 r!17423))))))))

(declare-fun b!3103000 () Bool)

(declare-fun e!1938965 () Regex!9565)

(assert (=> b!3103000 (= e!1938961 e!1938965)))

(declare-fun lt!1056078 () Regex!9565)

(assert (=> b!3103000 (= lt!1056078 call!218930)))

(declare-fun lt!1056079 () Regex!9565)

(assert (=> b!3103000 (= lt!1056079 call!218932)))

(declare-fun res!1270938 () Bool)

(declare-fun call!218934 () Bool)

(assert (=> b!3103000 (= res!1270938 call!218934)))

(declare-fun e!1938962 () Bool)

(assert (=> b!3103000 (=> res!1270938 e!1938962)))

(declare-fun c!518681 () Bool)

(assert (=> b!3103000 (= c!518681 e!1938962)))

(declare-fun b!3103001 () Bool)

(declare-fun e!1938970 () Regex!9565)

(assert (=> b!3103001 (= e!1938970 lt!1056078)))

(declare-fun bm!218927 () Bool)

(assert (=> bm!218927 (= call!218930 (simplify!520 (ite c!518674 (regTwo!19643 (regTwo!19643 r!17423)) (regOne!19642 (regTwo!19643 r!17423)))))))

(declare-fun b!3103002 () Bool)

(assert (=> b!3103002 (= e!1938970 (Concat!14886 lt!1056078 lt!1056079))))

(declare-fun b!3103003 () Bool)

(declare-fun e!1938966 () Regex!9565)

(assert (=> b!3103003 (= e!1938966 (regTwo!19643 r!17423))))

(declare-fun b!3103004 () Bool)

(declare-fun c!518679 () Bool)

(assert (=> b!3103004 (= c!518679 ((_ is EmptyExpr!9565) (regTwo!19643 r!17423)))))

(declare-fun e!1938972 () Regex!9565)

(assert (=> b!3103004 (= e!1938966 e!1938972)))

(declare-fun b!3103005 () Bool)

(assert (=> b!3103005 (= c!518674 ((_ is Union!9565) (regTwo!19643 r!17423)))))

(declare-fun e!1938974 () Regex!9565)

(assert (=> b!3103005 (= e!1938974 e!1938961)))

(declare-fun b!3103006 () Bool)

(declare-fun c!518682 () Bool)

(assert (=> b!3103006 (= c!518682 call!218933)))

(declare-fun e!1938963 () Regex!9565)

(assert (=> b!3103006 (= e!1938965 e!1938963)))

(declare-fun b!3103007 () Bool)

(declare-fun e!1938967 () Regex!9565)

(declare-fun lt!1056080 () Regex!9565)

(assert (=> b!3103007 (= e!1938967 (Star!9565 lt!1056080))))

(declare-fun b!3103008 () Bool)

(assert (=> b!3103008 (= e!1938963 e!1938970)))

(declare-fun c!518678 () Bool)

(declare-fun isEmptyExpr!622 (Regex!9565) Bool)

(assert (=> b!3103008 (= c!518678 (isEmptyExpr!622 lt!1056079))))

(declare-fun bm!218928 () Bool)

(assert (=> bm!218928 (= call!218933 (isEmptyExpr!622 (ite c!518675 lt!1056080 lt!1056078)))))

(declare-fun bm!218929 () Bool)

(assert (=> bm!218929 (= call!218931 (isEmptyLang!616 (ite c!518675 lt!1056080 (ite c!518674 lt!1056075 lt!1056079))))))

(declare-fun b!3103009 () Bool)

(declare-fun e!1938973 () Regex!9565)

(assert (=> b!3103009 (= e!1938973 EmptyLang!9565)))

(declare-fun b!3103010 () Bool)

(assert (=> b!3103010 (= e!1938971 lt!1056076)))

(declare-fun d!861168 () Bool)

(declare-fun e!1938964 () Bool)

(assert (=> d!861168 e!1938964))

(declare-fun res!1270936 () Bool)

(assert (=> d!861168 (=> (not res!1270936) (not e!1938964))))

(declare-fun lt!1056077 () Regex!9565)

(assert (=> d!861168 (= res!1270936 (validRegex!4298 lt!1056077))))

(assert (=> d!861168 (= lt!1056077 e!1938973)))

(declare-fun c!518677 () Bool)

(assert (=> d!861168 (= c!518677 ((_ is EmptyLang!9565) (regTwo!19643 r!17423)))))

(assert (=> d!861168 (validRegex!4298 (regTwo!19643 r!17423))))

(assert (=> d!861168 (= (simplify!520 (regTwo!19643 r!17423)) lt!1056077)))

(declare-fun b!3103011 () Bool)

(declare-fun c!518683 () Bool)

(assert (=> b!3103011 (= c!518683 e!1938969)))

(declare-fun res!1270937 () Bool)

(assert (=> b!3103011 (=> res!1270937 e!1938969)))

(assert (=> b!3103011 (= res!1270937 call!218931)))

(assert (=> b!3103011 (= lt!1056080 call!218935)))

(assert (=> b!3103011 (= e!1938974 e!1938967)))

(declare-fun b!3103012 () Bool)

(declare-fun e!1938968 () Regex!9565)

(assert (=> b!3103012 (= e!1938968 (Union!9565 lt!1056075 lt!1056076))))

(declare-fun bm!218930 () Bool)

(assert (=> bm!218930 (= call!218934 (isEmptyLang!616 (ite c!518674 lt!1056076 lt!1056078)))))

(declare-fun b!3103013 () Bool)

(assert (=> b!3103013 (= e!1938962 call!218936)))

(declare-fun b!3103014 () Bool)

(assert (=> b!3103014 (= e!1938967 EmptyExpr!9565)))

(declare-fun b!3103015 () Bool)

(assert (=> b!3103015 (= e!1938972 EmptyExpr!9565)))

(declare-fun b!3103016 () Bool)

(declare-fun c!518676 () Bool)

(assert (=> b!3103016 (= c!518676 call!218934)))

(assert (=> b!3103016 (= e!1938971 e!1938968)))

(declare-fun bm!218931 () Bool)

(assert (=> bm!218931 (= call!218932 call!218935)))

(declare-fun b!3103017 () Bool)

(assert (=> b!3103017 (= e!1938972 e!1938974)))

(assert (=> b!3103017 (= c!518675 ((_ is Star!9565) (regTwo!19643 r!17423)))))

(declare-fun b!3103018 () Bool)

(assert (=> b!3103018 (= e!1938965 EmptyLang!9565)))

(declare-fun b!3103019 () Bool)

(assert (=> b!3103019 (= e!1938968 lt!1056075)))

(declare-fun b!3103020 () Bool)

(assert (=> b!3103020 (= e!1938964 (= (nullable!3211 lt!1056077) (nullable!3211 (regTwo!19643 r!17423))))))

(declare-fun b!3103021 () Bool)

(assert (=> b!3103021 (= e!1938973 e!1938966)))

(declare-fun c!518680 () Bool)

(assert (=> b!3103021 (= c!518680 ((_ is ElementMatch!9565) (regTwo!19643 r!17423)))))

(declare-fun b!3103022 () Bool)

(assert (=> b!3103022 (= e!1938963 lt!1056079)))

(assert (= (and d!861168 c!518677) b!3103009))

(assert (= (and d!861168 (not c!518677)) b!3103021))

(assert (= (and b!3103021 c!518680) b!3103003))

(assert (= (and b!3103021 (not c!518680)) b!3103004))

(assert (= (and b!3103004 c!518679) b!3103015))

(assert (= (and b!3103004 (not c!518679)) b!3103017))

(assert (= (and b!3103017 c!518675) b!3103011))

(assert (= (and b!3103017 (not c!518675)) b!3103005))

(assert (= (and b!3103011 (not res!1270937)) b!3102998))

(assert (= (and b!3103011 c!518683) b!3103014))

(assert (= (and b!3103011 (not c!518683)) b!3103007))

(assert (= (and b!3103005 c!518674) b!3102999))

(assert (= (and b!3103005 (not c!518674)) b!3103000))

(assert (= (and b!3102999 c!518684) b!3103010))

(assert (= (and b!3102999 (not c!518684)) b!3103016))

(assert (= (and b!3103016 c!518676) b!3103019))

(assert (= (and b!3103016 (not c!518676)) b!3103012))

(assert (= (and b!3103000 (not res!1270938)) b!3103013))

(assert (= (and b!3103000 c!518681) b!3103018))

(assert (= (and b!3103000 (not c!518681)) b!3103006))

(assert (= (and b!3103006 c!518682) b!3103022))

(assert (= (and b!3103006 (not c!518682)) b!3103008))

(assert (= (and b!3103008 c!518678) b!3103001))

(assert (= (and b!3103008 (not c!518678)) b!3103002))

(assert (= (or b!3102999 b!3103000) bm!218931))

(assert (= (or b!3102999 b!3103000) bm!218927))

(assert (= (or b!3102999 b!3103013) bm!218925))

(assert (= (or b!3103016 b!3103000) bm!218930))

(assert (= (or b!3102998 b!3103006) bm!218928))

(assert (= (or b!3103011 bm!218931) bm!218926))

(assert (= (or b!3103011 bm!218925) bm!218929))

(assert (= (and d!861168 res!1270936) b!3103020))

(declare-fun m!3401733 () Bool)

(assert (=> bm!218929 m!3401733))

(declare-fun m!3401735 () Bool)

(assert (=> bm!218930 m!3401735))

(declare-fun m!3401737 () Bool)

(assert (=> bm!218927 m!3401737))

(declare-fun m!3401739 () Bool)

(assert (=> b!3103020 m!3401739))

(assert (=> b!3103020 m!3401723))

(declare-fun m!3401741 () Bool)

(assert (=> bm!218928 m!3401741))

(declare-fun m!3401743 () Bool)

(assert (=> bm!218926 m!3401743))

(declare-fun m!3401745 () Bool)

(assert (=> b!3103008 m!3401745))

(declare-fun m!3401747 () Bool)

(assert (=> d!861168 m!3401747))

(assert (=> d!861168 m!3401577))

(assert (=> b!3102531 d!861168))

(declare-fun b!3103023 () Bool)

(declare-fun e!1938983 () Bool)

(declare-fun call!218940 () Bool)

(assert (=> b!3103023 (= e!1938983 call!218940)))

(declare-fun bm!218932 () Bool)

(declare-fun call!218943 () Bool)

(declare-fun call!218938 () Bool)

(assert (=> bm!218932 (= call!218943 call!218938)))

(declare-fun b!3103024 () Bool)

(declare-fun e!1938975 () Regex!9565)

(declare-fun e!1938985 () Regex!9565)

(assert (=> b!3103024 (= e!1938975 e!1938985)))

(declare-fun lt!1056081 () Regex!9565)

(declare-fun call!218939 () Regex!9565)

(assert (=> b!3103024 (= lt!1056081 call!218939)))

(declare-fun lt!1056082 () Regex!9565)

(declare-fun call!218937 () Regex!9565)

(assert (=> b!3103024 (= lt!1056082 call!218937)))

(declare-fun c!518695 () Bool)

(assert (=> b!3103024 (= c!518695 call!218943)))

(declare-fun call!218942 () Regex!9565)

(declare-fun c!518686 () Bool)

(declare-fun c!518685 () Bool)

(declare-fun bm!218933 () Bool)

(assert (=> bm!218933 (= call!218942 (simplify!520 (ite c!518686 (reg!9894 (regOne!19643 r!17423)) (ite c!518685 (regOne!19643 (regOne!19643 r!17423)) (regTwo!19642 (regOne!19643 r!17423))))))))

(declare-fun b!3103025 () Bool)

(declare-fun e!1938979 () Regex!9565)

(assert (=> b!3103025 (= e!1938975 e!1938979)))

(declare-fun lt!1056084 () Regex!9565)

(assert (=> b!3103025 (= lt!1056084 call!218937)))

(declare-fun lt!1056085 () Regex!9565)

(assert (=> b!3103025 (= lt!1056085 call!218939)))

(declare-fun res!1270941 () Bool)

(declare-fun call!218941 () Bool)

(assert (=> b!3103025 (= res!1270941 call!218941)))

(declare-fun e!1938976 () Bool)

(assert (=> b!3103025 (=> res!1270941 e!1938976)))

(declare-fun c!518692 () Bool)

(assert (=> b!3103025 (= c!518692 e!1938976)))

(declare-fun b!3103026 () Bool)

(declare-fun e!1938984 () Regex!9565)

(assert (=> b!3103026 (= e!1938984 lt!1056084)))

(declare-fun bm!218934 () Bool)

(assert (=> bm!218934 (= call!218937 (simplify!520 (ite c!518685 (regTwo!19643 (regOne!19643 r!17423)) (regOne!19642 (regOne!19643 r!17423)))))))

(declare-fun b!3103027 () Bool)

(assert (=> b!3103027 (= e!1938984 (Concat!14886 lt!1056084 lt!1056085))))

(declare-fun b!3103028 () Bool)

(declare-fun e!1938980 () Regex!9565)

(assert (=> b!3103028 (= e!1938980 (regOne!19643 r!17423))))

(declare-fun b!3103029 () Bool)

(declare-fun c!518690 () Bool)

(assert (=> b!3103029 (= c!518690 ((_ is EmptyExpr!9565) (regOne!19643 r!17423)))))

(declare-fun e!1938986 () Regex!9565)

(assert (=> b!3103029 (= e!1938980 e!1938986)))

(declare-fun b!3103030 () Bool)

(assert (=> b!3103030 (= c!518685 ((_ is Union!9565) (regOne!19643 r!17423)))))

(declare-fun e!1938988 () Regex!9565)

(assert (=> b!3103030 (= e!1938988 e!1938975)))

(declare-fun b!3103031 () Bool)

(declare-fun c!518693 () Bool)

(assert (=> b!3103031 (= c!518693 call!218940)))

(declare-fun e!1938977 () Regex!9565)

(assert (=> b!3103031 (= e!1938979 e!1938977)))

(declare-fun b!3103032 () Bool)

(declare-fun e!1938981 () Regex!9565)

(declare-fun lt!1056086 () Regex!9565)

(assert (=> b!3103032 (= e!1938981 (Star!9565 lt!1056086))))

(declare-fun b!3103033 () Bool)

(assert (=> b!3103033 (= e!1938977 e!1938984)))

(declare-fun c!518689 () Bool)

(assert (=> b!3103033 (= c!518689 (isEmptyExpr!622 lt!1056085))))

(declare-fun bm!218935 () Bool)

(assert (=> bm!218935 (= call!218940 (isEmptyExpr!622 (ite c!518686 lt!1056086 lt!1056084)))))

(declare-fun bm!218936 () Bool)

(assert (=> bm!218936 (= call!218938 (isEmptyLang!616 (ite c!518686 lt!1056086 (ite c!518685 lt!1056081 lt!1056085))))))

(declare-fun b!3103034 () Bool)

(declare-fun e!1938987 () Regex!9565)

(assert (=> b!3103034 (= e!1938987 EmptyLang!9565)))

(declare-fun b!3103035 () Bool)

(assert (=> b!3103035 (= e!1938985 lt!1056082)))

(declare-fun d!861170 () Bool)

(declare-fun e!1938978 () Bool)

(assert (=> d!861170 e!1938978))

(declare-fun res!1270939 () Bool)

(assert (=> d!861170 (=> (not res!1270939) (not e!1938978))))

(declare-fun lt!1056083 () Regex!9565)

(assert (=> d!861170 (= res!1270939 (validRegex!4298 lt!1056083))))

(assert (=> d!861170 (= lt!1056083 e!1938987)))

(declare-fun c!518688 () Bool)

(assert (=> d!861170 (= c!518688 ((_ is EmptyLang!9565) (regOne!19643 r!17423)))))

(assert (=> d!861170 (validRegex!4298 (regOne!19643 r!17423))))

(assert (=> d!861170 (= (simplify!520 (regOne!19643 r!17423)) lt!1056083)))

(declare-fun b!3103036 () Bool)

(declare-fun c!518694 () Bool)

(assert (=> b!3103036 (= c!518694 e!1938983)))

(declare-fun res!1270940 () Bool)

(assert (=> b!3103036 (=> res!1270940 e!1938983)))

(assert (=> b!3103036 (= res!1270940 call!218938)))

(assert (=> b!3103036 (= lt!1056086 call!218942)))

(assert (=> b!3103036 (= e!1938988 e!1938981)))

(declare-fun b!3103037 () Bool)

(declare-fun e!1938982 () Regex!9565)

(assert (=> b!3103037 (= e!1938982 (Union!9565 lt!1056081 lt!1056082))))

(declare-fun bm!218937 () Bool)

(assert (=> bm!218937 (= call!218941 (isEmptyLang!616 (ite c!518685 lt!1056082 lt!1056084)))))

(declare-fun b!3103038 () Bool)

(assert (=> b!3103038 (= e!1938976 call!218943)))

(declare-fun b!3103039 () Bool)

(assert (=> b!3103039 (= e!1938981 EmptyExpr!9565)))

(declare-fun b!3103040 () Bool)

(assert (=> b!3103040 (= e!1938986 EmptyExpr!9565)))

(declare-fun b!3103041 () Bool)

(declare-fun c!518687 () Bool)

(assert (=> b!3103041 (= c!518687 call!218941)))

(assert (=> b!3103041 (= e!1938985 e!1938982)))

(declare-fun bm!218938 () Bool)

(assert (=> bm!218938 (= call!218939 call!218942)))

(declare-fun b!3103042 () Bool)

(assert (=> b!3103042 (= e!1938986 e!1938988)))

(assert (=> b!3103042 (= c!518686 ((_ is Star!9565) (regOne!19643 r!17423)))))

(declare-fun b!3103043 () Bool)

(assert (=> b!3103043 (= e!1938979 EmptyLang!9565)))

(declare-fun b!3103044 () Bool)

(assert (=> b!3103044 (= e!1938982 lt!1056081)))

(declare-fun b!3103045 () Bool)

(assert (=> b!3103045 (= e!1938978 (= (nullable!3211 lt!1056083) (nullable!3211 (regOne!19643 r!17423))))))

(declare-fun b!3103046 () Bool)

(assert (=> b!3103046 (= e!1938987 e!1938980)))

(declare-fun c!518691 () Bool)

(assert (=> b!3103046 (= c!518691 ((_ is ElementMatch!9565) (regOne!19643 r!17423)))))

(declare-fun b!3103047 () Bool)

(assert (=> b!3103047 (= e!1938977 lt!1056085)))

(assert (= (and d!861170 c!518688) b!3103034))

(assert (= (and d!861170 (not c!518688)) b!3103046))

(assert (= (and b!3103046 c!518691) b!3103028))

(assert (= (and b!3103046 (not c!518691)) b!3103029))

(assert (= (and b!3103029 c!518690) b!3103040))

(assert (= (and b!3103029 (not c!518690)) b!3103042))

(assert (= (and b!3103042 c!518686) b!3103036))

(assert (= (and b!3103042 (not c!518686)) b!3103030))

(assert (= (and b!3103036 (not res!1270940)) b!3103023))

(assert (= (and b!3103036 c!518694) b!3103039))

(assert (= (and b!3103036 (not c!518694)) b!3103032))

(assert (= (and b!3103030 c!518685) b!3103024))

(assert (= (and b!3103030 (not c!518685)) b!3103025))

(assert (= (and b!3103024 c!518695) b!3103035))

(assert (= (and b!3103024 (not c!518695)) b!3103041))

(assert (= (and b!3103041 c!518687) b!3103044))

(assert (= (and b!3103041 (not c!518687)) b!3103037))

(assert (= (and b!3103025 (not res!1270941)) b!3103038))

(assert (= (and b!3103025 c!518692) b!3103043))

(assert (= (and b!3103025 (not c!518692)) b!3103031))

(assert (= (and b!3103031 c!518693) b!3103047))

(assert (= (and b!3103031 (not c!518693)) b!3103033))

(assert (= (and b!3103033 c!518689) b!3103026))

(assert (= (and b!3103033 (not c!518689)) b!3103027))

(assert (= (or b!3103024 b!3103025) bm!218938))

(assert (= (or b!3103024 b!3103025) bm!218934))

(assert (= (or b!3103024 b!3103038) bm!218932))

(assert (= (or b!3103041 b!3103025) bm!218937))

(assert (= (or b!3103023 b!3103031) bm!218935))

(assert (= (or b!3103036 bm!218938) bm!218933))

(assert (= (or b!3103036 bm!218932) bm!218936))

(assert (= (and d!861170 res!1270939) b!3103045))

(declare-fun m!3401749 () Bool)

(assert (=> bm!218936 m!3401749))

(declare-fun m!3401751 () Bool)

(assert (=> bm!218937 m!3401751))

(declare-fun m!3401753 () Bool)

(assert (=> bm!218934 m!3401753))

(declare-fun m!3401755 () Bool)

(assert (=> b!3103045 m!3401755))

(declare-fun m!3401757 () Bool)

(assert (=> b!3103045 m!3401757))

(declare-fun m!3401759 () Bool)

(assert (=> bm!218935 m!3401759))

(declare-fun m!3401761 () Bool)

(assert (=> bm!218933 m!3401761))

(declare-fun m!3401763 () Bool)

(assert (=> b!3103033 m!3401763))

(declare-fun m!3401765 () Bool)

(assert (=> d!861170 m!3401765))

(assert (=> d!861170 m!3401579))

(assert (=> b!3102531 d!861170))

(declare-fun b!3103066 () Bool)

(declare-fun res!1270953 () Bool)

(declare-fun e!1939004 () Bool)

(assert (=> b!3103066 (=> (not res!1270953) (not e!1939004))))

(declare-fun call!218950 () Bool)

(assert (=> b!3103066 (= res!1270953 call!218950)))

(declare-fun e!1939008 () Bool)

(assert (=> b!3103066 (= e!1939008 e!1939004)))

(declare-fun b!3103067 () Bool)

(declare-fun res!1270954 () Bool)

(declare-fun e!1939003 () Bool)

(assert (=> b!3103067 (=> res!1270954 e!1939003)))

(assert (=> b!3103067 (= res!1270954 (not ((_ is Concat!14886) r!17423)))))

(assert (=> b!3103067 (= e!1939008 e!1939003)))

(declare-fun bm!218945 () Bool)

(declare-fun call!218952 () Bool)

(declare-fun c!518700 () Bool)

(declare-fun c!518701 () Bool)

(assert (=> bm!218945 (= call!218952 (validRegex!4298 (ite c!518701 (reg!9894 r!17423) (ite c!518700 (regOne!19643 r!17423) (regTwo!19642 r!17423)))))))

(declare-fun b!3103068 () Bool)

(declare-fun e!1939005 () Bool)

(assert (=> b!3103068 (= e!1939003 e!1939005)))

(declare-fun res!1270952 () Bool)

(assert (=> b!3103068 (=> (not res!1270952) (not e!1939005))))

(declare-fun call!218951 () Bool)

(assert (=> b!3103068 (= res!1270952 call!218951)))

(declare-fun bm!218946 () Bool)

(assert (=> bm!218946 (= call!218951 (validRegex!4298 (ite c!518700 (regTwo!19643 r!17423) (regOne!19642 r!17423))))))

(declare-fun b!3103069 () Bool)

(declare-fun e!1939009 () Bool)

(declare-fun e!1939007 () Bool)

(assert (=> b!3103069 (= e!1939009 e!1939007)))

(assert (=> b!3103069 (= c!518701 ((_ is Star!9565) r!17423))))

(declare-fun b!3103070 () Bool)

(assert (=> b!3103070 (= e!1939007 e!1939008)))

(assert (=> b!3103070 (= c!518700 ((_ is Union!9565) r!17423))))

(declare-fun b!3103071 () Bool)

(assert (=> b!3103071 (= e!1939004 call!218951)))

(declare-fun b!3103072 () Bool)

(declare-fun e!1939006 () Bool)

(assert (=> b!3103072 (= e!1939006 call!218952)))

(declare-fun b!3103073 () Bool)

(assert (=> b!3103073 (= e!1939007 e!1939006)))

(declare-fun res!1270955 () Bool)

(assert (=> b!3103073 (= res!1270955 (not (nullable!3211 (reg!9894 r!17423))))))

(assert (=> b!3103073 (=> (not res!1270955) (not e!1939006))))

(declare-fun bm!218947 () Bool)

(assert (=> bm!218947 (= call!218950 call!218952)))

(declare-fun b!3103074 () Bool)

(assert (=> b!3103074 (= e!1939005 call!218950)))

(declare-fun d!861172 () Bool)

(declare-fun res!1270956 () Bool)

(assert (=> d!861172 (=> res!1270956 e!1939009)))

(assert (=> d!861172 (= res!1270956 ((_ is ElementMatch!9565) r!17423))))

(assert (=> d!861172 (= (validRegex!4298 r!17423) e!1939009)))

(assert (= (and d!861172 (not res!1270956)) b!3103069))

(assert (= (and b!3103069 c!518701) b!3103073))

(assert (= (and b!3103069 (not c!518701)) b!3103070))

(assert (= (and b!3103073 res!1270955) b!3103072))

(assert (= (and b!3103070 c!518700) b!3103066))

(assert (= (and b!3103070 (not c!518700)) b!3103067))

(assert (= (and b!3103066 res!1270953) b!3103071))

(assert (= (and b!3103067 (not res!1270954)) b!3103068))

(assert (= (and b!3103068 res!1270952) b!3103074))

(assert (= (or b!3103066 b!3103074) bm!218947))

(assert (= (or b!3103071 b!3103068) bm!218946))

(assert (= (or b!3103072 bm!218947) bm!218945))

(declare-fun m!3401767 () Bool)

(assert (=> bm!218945 m!3401767))

(declare-fun m!3401769 () Bool)

(assert (=> bm!218946 m!3401769))

(declare-fun m!3401771 () Bool)

(assert (=> b!3103073 m!3401771))

(assert (=> start!294316 d!861172))

(declare-fun b!3103075 () Bool)

(declare-fun res!1270958 () Bool)

(declare-fun e!1939011 () Bool)

(assert (=> b!3103075 (=> (not res!1270958) (not e!1939011))))

(declare-fun call!218953 () Bool)

(assert (=> b!3103075 (= res!1270958 call!218953)))

(declare-fun e!1939015 () Bool)

(assert (=> b!3103075 (= e!1939015 e!1939011)))

(declare-fun b!3103076 () Bool)

(declare-fun res!1270959 () Bool)

(declare-fun e!1939010 () Bool)

(assert (=> b!3103076 (=> res!1270959 e!1939010)))

(assert (=> b!3103076 (= res!1270959 (not ((_ is Concat!14886) (regTwo!19643 r!17423))))))

(assert (=> b!3103076 (= e!1939015 e!1939010)))

(declare-fun call!218955 () Bool)

(declare-fun c!518702 () Bool)

(declare-fun c!518703 () Bool)

(declare-fun bm!218948 () Bool)

(assert (=> bm!218948 (= call!218955 (validRegex!4298 (ite c!518703 (reg!9894 (regTwo!19643 r!17423)) (ite c!518702 (regOne!19643 (regTwo!19643 r!17423)) (regTwo!19642 (regTwo!19643 r!17423))))))))

(declare-fun b!3103077 () Bool)

(declare-fun e!1939012 () Bool)

(assert (=> b!3103077 (= e!1939010 e!1939012)))

(declare-fun res!1270957 () Bool)

(assert (=> b!3103077 (=> (not res!1270957) (not e!1939012))))

(declare-fun call!218954 () Bool)

(assert (=> b!3103077 (= res!1270957 call!218954)))

(declare-fun bm!218949 () Bool)

(assert (=> bm!218949 (= call!218954 (validRegex!4298 (ite c!518702 (regTwo!19643 (regTwo!19643 r!17423)) (regOne!19642 (regTwo!19643 r!17423)))))))

(declare-fun b!3103078 () Bool)

(declare-fun e!1939016 () Bool)

(declare-fun e!1939014 () Bool)

(assert (=> b!3103078 (= e!1939016 e!1939014)))

(assert (=> b!3103078 (= c!518703 ((_ is Star!9565) (regTwo!19643 r!17423)))))

(declare-fun b!3103079 () Bool)

(assert (=> b!3103079 (= e!1939014 e!1939015)))

(assert (=> b!3103079 (= c!518702 ((_ is Union!9565) (regTwo!19643 r!17423)))))

(declare-fun b!3103080 () Bool)

(assert (=> b!3103080 (= e!1939011 call!218954)))

(declare-fun b!3103081 () Bool)

(declare-fun e!1939013 () Bool)

(assert (=> b!3103081 (= e!1939013 call!218955)))

(declare-fun b!3103082 () Bool)

(assert (=> b!3103082 (= e!1939014 e!1939013)))

(declare-fun res!1270960 () Bool)

(assert (=> b!3103082 (= res!1270960 (not (nullable!3211 (reg!9894 (regTwo!19643 r!17423)))))))

(assert (=> b!3103082 (=> (not res!1270960) (not e!1939013))))

(declare-fun bm!218950 () Bool)

(assert (=> bm!218950 (= call!218953 call!218955)))

(declare-fun b!3103083 () Bool)

(assert (=> b!3103083 (= e!1939012 call!218953)))

(declare-fun d!861174 () Bool)

(declare-fun res!1270961 () Bool)

(assert (=> d!861174 (=> res!1270961 e!1939016)))

(assert (=> d!861174 (= res!1270961 ((_ is ElementMatch!9565) (regTwo!19643 r!17423)))))

(assert (=> d!861174 (= (validRegex!4298 (regTwo!19643 r!17423)) e!1939016)))

(assert (= (and d!861174 (not res!1270961)) b!3103078))

(assert (= (and b!3103078 c!518703) b!3103082))

(assert (= (and b!3103078 (not c!518703)) b!3103079))

(assert (= (and b!3103082 res!1270960) b!3103081))

(assert (= (and b!3103079 c!518702) b!3103075))

(assert (= (and b!3103079 (not c!518702)) b!3103076))

(assert (= (and b!3103075 res!1270958) b!3103080))

(assert (= (and b!3103076 (not res!1270959)) b!3103077))

(assert (= (and b!3103077 res!1270957) b!3103083))

(assert (= (or b!3103075 b!3103083) bm!218950))

(assert (= (or b!3103080 b!3103077) bm!218949))

(assert (= (or b!3103081 bm!218950) bm!218948))

(declare-fun m!3401773 () Bool)

(assert (=> bm!218948 m!3401773))

(declare-fun m!3401775 () Bool)

(assert (=> bm!218949 m!3401775))

(declare-fun m!3401777 () Bool)

(assert (=> b!3103082 m!3401777))

(assert (=> b!3102530 d!861174))

(declare-fun b!3103084 () Bool)

(declare-fun res!1270963 () Bool)

(declare-fun e!1939018 () Bool)

(assert (=> b!3103084 (=> (not res!1270963) (not e!1939018))))

(declare-fun call!218956 () Bool)

(assert (=> b!3103084 (= res!1270963 call!218956)))

(declare-fun e!1939022 () Bool)

(assert (=> b!3103084 (= e!1939022 e!1939018)))

(declare-fun b!3103085 () Bool)

(declare-fun res!1270964 () Bool)

(declare-fun e!1939017 () Bool)

(assert (=> b!3103085 (=> res!1270964 e!1939017)))

(assert (=> b!3103085 (= res!1270964 (not ((_ is Concat!14886) (regOne!19643 r!17423))))))

(assert (=> b!3103085 (= e!1939022 e!1939017)))

(declare-fun call!218958 () Bool)

(declare-fun c!518705 () Bool)

(declare-fun bm!218951 () Bool)

(declare-fun c!518704 () Bool)

(assert (=> bm!218951 (= call!218958 (validRegex!4298 (ite c!518705 (reg!9894 (regOne!19643 r!17423)) (ite c!518704 (regOne!19643 (regOne!19643 r!17423)) (regTwo!19642 (regOne!19643 r!17423))))))))

(declare-fun b!3103086 () Bool)

(declare-fun e!1939019 () Bool)

(assert (=> b!3103086 (= e!1939017 e!1939019)))

(declare-fun res!1270962 () Bool)

(assert (=> b!3103086 (=> (not res!1270962) (not e!1939019))))

(declare-fun call!218957 () Bool)

(assert (=> b!3103086 (= res!1270962 call!218957)))

(declare-fun bm!218952 () Bool)

(assert (=> bm!218952 (= call!218957 (validRegex!4298 (ite c!518704 (regTwo!19643 (regOne!19643 r!17423)) (regOne!19642 (regOne!19643 r!17423)))))))

(declare-fun b!3103087 () Bool)

(declare-fun e!1939023 () Bool)

(declare-fun e!1939021 () Bool)

(assert (=> b!3103087 (= e!1939023 e!1939021)))

(assert (=> b!3103087 (= c!518705 ((_ is Star!9565) (regOne!19643 r!17423)))))

(declare-fun b!3103088 () Bool)

(assert (=> b!3103088 (= e!1939021 e!1939022)))

(assert (=> b!3103088 (= c!518704 ((_ is Union!9565) (regOne!19643 r!17423)))))

(declare-fun b!3103089 () Bool)

(assert (=> b!3103089 (= e!1939018 call!218957)))

(declare-fun b!3103090 () Bool)

(declare-fun e!1939020 () Bool)

(assert (=> b!3103090 (= e!1939020 call!218958)))

(declare-fun b!3103091 () Bool)

(assert (=> b!3103091 (= e!1939021 e!1939020)))

(declare-fun res!1270965 () Bool)

(assert (=> b!3103091 (= res!1270965 (not (nullable!3211 (reg!9894 (regOne!19643 r!17423)))))))

(assert (=> b!3103091 (=> (not res!1270965) (not e!1939020))))

(declare-fun bm!218953 () Bool)

(assert (=> bm!218953 (= call!218956 call!218958)))

(declare-fun b!3103092 () Bool)

(assert (=> b!3103092 (= e!1939019 call!218956)))

(declare-fun d!861176 () Bool)

(declare-fun res!1270966 () Bool)

(assert (=> d!861176 (=> res!1270966 e!1939023)))

(assert (=> d!861176 (= res!1270966 ((_ is ElementMatch!9565) (regOne!19643 r!17423)))))

(assert (=> d!861176 (= (validRegex!4298 (regOne!19643 r!17423)) e!1939023)))

(assert (= (and d!861176 (not res!1270966)) b!3103087))

(assert (= (and b!3103087 c!518705) b!3103091))

(assert (= (and b!3103087 (not c!518705)) b!3103088))

(assert (= (and b!3103091 res!1270965) b!3103090))

(assert (= (and b!3103088 c!518704) b!3103084))

(assert (= (and b!3103088 (not c!518704)) b!3103085))

(assert (= (and b!3103084 res!1270963) b!3103089))

(assert (= (and b!3103085 (not res!1270964)) b!3103086))

(assert (= (and b!3103086 res!1270962) b!3103092))

(assert (= (or b!3103084 b!3103092) bm!218953))

(assert (= (or b!3103089 b!3103086) bm!218952))

(assert (= (or b!3103090 bm!218953) bm!218951))

(declare-fun m!3401779 () Bool)

(assert (=> bm!218951 m!3401779))

(declare-fun m!3401781 () Bool)

(assert (=> bm!218952 m!3401781))

(declare-fun m!3401783 () Bool)

(assert (=> b!3103091 m!3401783))

(assert (=> b!3102524 d!861176))

(declare-fun b!3103104 () Bool)

(declare-fun e!1939026 () Bool)

(declare-fun tp!975007 () Bool)

(declare-fun tp!975009 () Bool)

(assert (=> b!3103104 (= e!1939026 (and tp!975007 tp!975009))))

(declare-fun b!3103103 () Bool)

(assert (=> b!3103103 (= e!1939026 tp_is_empty!16693)))

(declare-fun b!3103105 () Bool)

(declare-fun tp!975010 () Bool)

(assert (=> b!3103105 (= e!1939026 tp!975010)))

(declare-fun b!3103106 () Bool)

(declare-fun tp!975008 () Bool)

(declare-fun tp!975006 () Bool)

(assert (=> b!3103106 (= e!1939026 (and tp!975008 tp!975006))))

(assert (=> b!3102533 (= tp!974955 e!1939026)))

(assert (= (and b!3102533 ((_ is ElementMatch!9565) (regOne!19643 r!17423))) b!3103103))

(assert (= (and b!3102533 ((_ is Concat!14886) (regOne!19643 r!17423))) b!3103104))

(assert (= (and b!3102533 ((_ is Star!9565) (regOne!19643 r!17423))) b!3103105))

(assert (= (and b!3102533 ((_ is Union!9565) (regOne!19643 r!17423))) b!3103106))

(declare-fun b!3103108 () Bool)

(declare-fun e!1939027 () Bool)

(declare-fun tp!975012 () Bool)

(declare-fun tp!975014 () Bool)

(assert (=> b!3103108 (= e!1939027 (and tp!975012 tp!975014))))

(declare-fun b!3103107 () Bool)

(assert (=> b!3103107 (= e!1939027 tp_is_empty!16693)))

(declare-fun b!3103109 () Bool)

(declare-fun tp!975015 () Bool)

(assert (=> b!3103109 (= e!1939027 tp!975015)))

(declare-fun b!3103110 () Bool)

(declare-fun tp!975013 () Bool)

(declare-fun tp!975011 () Bool)

(assert (=> b!3103110 (= e!1939027 (and tp!975013 tp!975011))))

(assert (=> b!3102533 (= tp!974956 e!1939027)))

(assert (= (and b!3102533 ((_ is ElementMatch!9565) (regTwo!19643 r!17423))) b!3103107))

(assert (= (and b!3102533 ((_ is Concat!14886) (regTwo!19643 r!17423))) b!3103108))

(assert (= (and b!3102533 ((_ is Star!9565) (regTwo!19643 r!17423))) b!3103109))

(assert (= (and b!3102533 ((_ is Union!9565) (regTwo!19643 r!17423))) b!3103110))

(declare-fun b!3103112 () Bool)

(declare-fun e!1939028 () Bool)

(declare-fun tp!975017 () Bool)

(declare-fun tp!975019 () Bool)

(assert (=> b!3103112 (= e!1939028 (and tp!975017 tp!975019))))

(declare-fun b!3103111 () Bool)

(assert (=> b!3103111 (= e!1939028 tp_is_empty!16693)))

(declare-fun b!3103113 () Bool)

(declare-fun tp!975020 () Bool)

(assert (=> b!3103113 (= e!1939028 tp!975020)))

(declare-fun b!3103114 () Bool)

(declare-fun tp!975018 () Bool)

(declare-fun tp!975016 () Bool)

(assert (=> b!3103114 (= e!1939028 (and tp!975018 tp!975016))))

(assert (=> b!3102527 (= tp!974954 e!1939028)))

(assert (= (and b!3102527 ((_ is ElementMatch!9565) (reg!9894 r!17423))) b!3103111))

(assert (= (and b!3102527 ((_ is Concat!14886) (reg!9894 r!17423))) b!3103112))

(assert (= (and b!3102527 ((_ is Star!9565) (reg!9894 r!17423))) b!3103113))

(assert (= (and b!3102527 ((_ is Union!9565) (reg!9894 r!17423))) b!3103114))

(declare-fun b!3103116 () Bool)

(declare-fun e!1939029 () Bool)

(declare-fun tp!975022 () Bool)

(declare-fun tp!975024 () Bool)

(assert (=> b!3103116 (= e!1939029 (and tp!975022 tp!975024))))

(declare-fun b!3103115 () Bool)

(assert (=> b!3103115 (= e!1939029 tp_is_empty!16693)))

(declare-fun b!3103117 () Bool)

(declare-fun tp!975025 () Bool)

(assert (=> b!3103117 (= e!1939029 tp!975025)))

(declare-fun b!3103118 () Bool)

(declare-fun tp!975023 () Bool)

(declare-fun tp!975021 () Bool)

(assert (=> b!3103118 (= e!1939029 (and tp!975023 tp!975021))))

(assert (=> b!3102532 (= tp!974953 e!1939029)))

(assert (= (and b!3102532 ((_ is ElementMatch!9565) (regOne!19642 r!17423))) b!3103115))

(assert (= (and b!3102532 ((_ is Concat!14886) (regOne!19642 r!17423))) b!3103116))

(assert (= (and b!3102532 ((_ is Star!9565) (regOne!19642 r!17423))) b!3103117))

(assert (= (and b!3102532 ((_ is Union!9565) (regOne!19642 r!17423))) b!3103118))

(declare-fun b!3103120 () Bool)

(declare-fun e!1939030 () Bool)

(declare-fun tp!975027 () Bool)

(declare-fun tp!975029 () Bool)

(assert (=> b!3103120 (= e!1939030 (and tp!975027 tp!975029))))

(declare-fun b!3103119 () Bool)

(assert (=> b!3103119 (= e!1939030 tp_is_empty!16693)))

(declare-fun b!3103121 () Bool)

(declare-fun tp!975030 () Bool)

(assert (=> b!3103121 (= e!1939030 tp!975030)))

(declare-fun b!3103122 () Bool)

(declare-fun tp!975028 () Bool)

(declare-fun tp!975026 () Bool)

(assert (=> b!3103122 (= e!1939030 (and tp!975028 tp!975026))))

(assert (=> b!3102532 (= tp!974957 e!1939030)))

(assert (= (and b!3102532 ((_ is ElementMatch!9565) (regTwo!19642 r!17423))) b!3103119))

(assert (= (and b!3102532 ((_ is Concat!14886) (regTwo!19642 r!17423))) b!3103120))

(assert (= (and b!3102532 ((_ is Star!9565) (regTwo!19642 r!17423))) b!3103121))

(assert (= (and b!3102532 ((_ is Union!9565) (regTwo!19642 r!17423))) b!3103122))

(declare-fun b!3103127 () Bool)

(declare-fun e!1939033 () Bool)

(declare-fun tp!975033 () Bool)

(assert (=> b!3103127 (= e!1939033 (and tp_is_empty!16693 tp!975033))))

(assert (=> b!3102525 (= tp!974952 e!1939033)))

(assert (= (and b!3102525 ((_ is Cons!35306) (t!234495 s!11993))) b!3103127))

(check-sat (not bm!218896) (not b!3103073) (not bm!218936) (not bm!218927) (not bm!218897) (not b!3103114) (not b!3103127) (not bm!218948) (not b!3102873) (not d!861170) (not bm!218910) (not b!3103082) (not b!3102883) (not b!3102878) (not b!3102875) (not d!861168) (not b!3103105) (not b!3102906) (not b!3102838) (not b!3103120) (not bm!218952) (not b!3103112) (not bm!218903) tp_is_empty!16693 (not b!3102911) (not bm!218934) (not b!3103113) (not d!861146) (not b!3103108) (not bm!218937) (not bm!218926) (not b!3103116) (not bm!218951) (not b!3102876) (not b!3102903) (not b!3102904) (not b!3103033) (not d!861150) (not b!3103117) (not b!3102834) (not b!3102846) (not bm!218946) (not bm!218945) (not b!3103118) (not bm!218949) (not b!3103122) (not b!3103121) (not b!3102757) (not d!861156) (not b!3103020) (not b!3102839) (not d!861164) (not bm!218935) (not b!3103008) (not b!3102841) (not b!3102871) (not bm!218908) (not b!3103109) (not bm!218929) (not d!861162) (not b!3103091) (not b!3103104) (not bm!218928) (not b!3102901) (not bm!218930) (not b!3103106) (not b!3102759) (not bm!218933) (not b!3103045) (not b!3102836) (not b!3103110) (not b!3102899))
(check-sat)
