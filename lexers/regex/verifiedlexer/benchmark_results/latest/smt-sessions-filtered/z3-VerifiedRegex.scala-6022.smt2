; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!294760 () Bool)

(assert start!294760)

(declare-fun b!3111780 () Bool)

(declare-fun res!1273923 () Bool)

(declare-fun e!1943781 () Bool)

(assert (=> b!3111780 (=> res!1273923 e!1943781)))

(declare-datatypes ((C!19376 0))(
  ( (C!19377 (val!11724 Int)) )
))
(declare-datatypes ((Regex!9595 0))(
  ( (ElementMatch!9595 (c!520893 C!19376)) (Concat!14916 (regOne!19702 Regex!9595) (regTwo!19702 Regex!9595)) (EmptyExpr!9595) (Star!9595 (reg!9924 Regex!9595)) (EmptyLang!9595) (Union!9595 (regOne!19703 Regex!9595) (regTwo!19703 Regex!9595)) )
))
(declare-fun lt!1057570 () Regex!9595)

(declare-fun isEmptyLang!646 (Regex!9595) Bool)

(assert (=> b!3111780 (= res!1273923 (isEmptyLang!646 lt!1057570))))

(declare-fun b!3111781 () Bool)

(declare-fun e!1943787 () Bool)

(declare-fun e!1943785 () Bool)

(assert (=> b!3111781 (= e!1943787 (not e!1943785))))

(declare-fun res!1273928 () Bool)

(assert (=> b!3111781 (=> res!1273928 e!1943785)))

(declare-fun lt!1057573 () Bool)

(declare-fun r!17423 () Regex!9595)

(get-info :version)

(assert (=> b!3111781 (= res!1273928 (or lt!1057573 ((_ is Concat!14916) r!17423) (not ((_ is Union!9595) r!17423))))))

(declare-datatypes ((List!35460 0))(
  ( (Nil!35336) (Cons!35336 (h!40756 C!19376) (t!234525 List!35460)) )
))
(declare-fun s!11993 () List!35460)

(declare-fun matchRSpec!1732 (Regex!9595 List!35460) Bool)

(assert (=> b!3111781 (= lt!1057573 (matchRSpec!1732 r!17423 s!11993))))

(declare-fun matchR!4477 (Regex!9595 List!35460) Bool)

(assert (=> b!3111781 (= lt!1057573 (matchR!4477 r!17423 s!11993))))

(declare-datatypes ((Unit!49629 0))(
  ( (Unit!49630) )
))
(declare-fun lt!1057576 () Unit!49629)

(declare-fun mainMatchTheorem!1732 (Regex!9595 List!35460) Unit!49629)

(assert (=> b!3111781 (= lt!1057576 (mainMatchTheorem!1732 r!17423 s!11993))))

(declare-fun b!3111783 () Bool)

(declare-fun e!1943782 () Bool)

(declare-fun tp!976482 () Bool)

(declare-fun tp!976485 () Bool)

(assert (=> b!3111783 (= e!1943782 (and tp!976482 tp!976485))))

(declare-fun b!3111784 () Bool)

(declare-fun tp!976483 () Bool)

(assert (=> b!3111784 (= e!1943782 tp!976483)))

(declare-fun b!3111785 () Bool)

(declare-fun e!1943780 () Bool)

(assert (=> b!3111785 (= e!1943780 (matchR!4477 lt!1057570 s!11993))))

(declare-fun b!3111786 () Bool)

(declare-fun e!1943784 () Bool)

(declare-fun e!1943786 () Bool)

(assert (=> b!3111786 (= e!1943784 e!1943786)))

(declare-fun res!1273925 () Bool)

(assert (=> b!3111786 (=> (not res!1273925) (not e!1943786))))

(declare-fun validRegex!4328 (Regex!9595) Bool)

(assert (=> b!3111786 (= res!1273925 (validRegex!4328 (regTwo!19703 r!17423)))))

(declare-fun b!3111787 () Bool)

(declare-fun tp_is_empty!16753 () Bool)

(assert (=> b!3111787 (= e!1943782 tp_is_empty!16753)))

(declare-fun res!1273922 () Bool)

(assert (=> start!294760 (=> (not res!1273922) (not e!1943787))))

(assert (=> start!294760 (= res!1273922 (validRegex!4328 r!17423))))

(assert (=> start!294760 e!1943787))

(assert (=> start!294760 e!1943782))

(declare-fun e!1943783 () Bool)

(assert (=> start!294760 e!1943783))

(declare-fun b!3111782 () Bool)

(declare-fun e!1943779 () Bool)

(assert (=> b!3111782 (= e!1943779 e!1943784)))

(declare-fun res!1273924 () Bool)

(assert (=> b!3111782 (=> res!1273924 e!1943784)))

(declare-fun lt!1057569 () Bool)

(assert (=> b!3111782 (= res!1273924 (not lt!1057569))))

(assert (=> b!3111782 (= lt!1057569 (matchR!4477 lt!1057570 s!11993))))

(assert (=> b!3111782 (= lt!1057569 (matchR!4477 (regTwo!19703 r!17423) s!11993))))

(declare-fun lt!1057571 () Unit!49629)

(declare-fun lemmaSimplifySound!344 (Regex!9595 List!35460) Unit!49629)

(assert (=> b!3111782 (= lt!1057571 (lemmaSimplifySound!344 (regTwo!19703 r!17423) s!11993))))

(declare-fun b!3111788 () Bool)

(declare-fun res!1273930 () Bool)

(assert (=> b!3111788 (=> res!1273930 e!1943781)))

(declare-fun lt!1057572 () Regex!9595)

(assert (=> b!3111788 (= res!1273930 (not (matchR!4477 (Union!9595 lt!1057572 lt!1057570) s!11993)))))

(declare-fun b!3111789 () Bool)

(declare-fun tp!976480 () Bool)

(assert (=> b!3111789 (= e!1943783 (and tp_is_empty!16753 tp!976480))))

(declare-fun b!3111790 () Bool)

(assert (=> b!3111790 (= e!1943785 e!1943781)))

(declare-fun res!1273926 () Bool)

(assert (=> b!3111790 (=> res!1273926 e!1943781)))

(assert (=> b!3111790 (= res!1273926 (isEmptyLang!646 lt!1057572))))

(declare-fun simplify!550 (Regex!9595) Regex!9595)

(assert (=> b!3111790 (= lt!1057570 (simplify!550 (regTwo!19703 r!17423)))))

(assert (=> b!3111790 (= lt!1057572 (simplify!550 (regOne!19703 r!17423)))))

(declare-fun b!3111791 () Bool)

(assert (=> b!3111791 (= e!1943781 e!1943779)))

(declare-fun res!1273929 () Bool)

(assert (=> b!3111791 (=> res!1273929 e!1943779)))

(declare-fun lt!1057575 () Bool)

(assert (=> b!3111791 (= res!1273929 lt!1057575)))

(assert (=> b!3111791 e!1943780))

(declare-fun res!1273927 () Bool)

(assert (=> b!3111791 (=> res!1273927 e!1943780)))

(assert (=> b!3111791 (= res!1273927 lt!1057575)))

(assert (=> b!3111791 (= lt!1057575 (matchR!4477 lt!1057572 s!11993))))

(declare-fun lt!1057574 () Unit!49629)

(declare-fun lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!326 (Regex!9595 Regex!9595 List!35460) Unit!49629)

(assert (=> b!3111791 (= lt!1057574 (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!326 lt!1057572 lt!1057570 s!11993))))

(declare-fun b!3111792 () Bool)

(assert (=> b!3111792 (= e!1943786 (validRegex!4328 (regOne!19703 r!17423)))))

(declare-fun b!3111793 () Bool)

(declare-fun tp!976484 () Bool)

(declare-fun tp!976481 () Bool)

(assert (=> b!3111793 (= e!1943782 (and tp!976484 tp!976481))))

(assert (= (and start!294760 res!1273922) b!3111781))

(assert (= (and b!3111781 (not res!1273928)) b!3111790))

(assert (= (and b!3111790 (not res!1273926)) b!3111780))

(assert (= (and b!3111780 (not res!1273923)) b!3111788))

(assert (= (and b!3111788 (not res!1273930)) b!3111791))

(assert (= (and b!3111791 (not res!1273927)) b!3111785))

(assert (= (and b!3111791 (not res!1273929)) b!3111782))

(assert (= (and b!3111782 (not res!1273924)) b!3111786))

(assert (= (and b!3111786 res!1273925) b!3111792))

(assert (= (and start!294760 ((_ is ElementMatch!9595) r!17423)) b!3111787))

(assert (= (and start!294760 ((_ is Concat!14916) r!17423)) b!3111783))

(assert (= (and start!294760 ((_ is Star!9595) r!17423)) b!3111784))

(assert (= (and start!294760 ((_ is Union!9595) r!17423)) b!3111793))

(assert (= (and start!294760 ((_ is Cons!35336) s!11993)) b!3111789))

(declare-fun m!3404977 () Bool)

(assert (=> b!3111786 m!3404977))

(declare-fun m!3404979 () Bool)

(assert (=> b!3111791 m!3404979))

(declare-fun m!3404981 () Bool)

(assert (=> b!3111791 m!3404981))

(declare-fun m!3404983 () Bool)

(assert (=> b!3111790 m!3404983))

(declare-fun m!3404985 () Bool)

(assert (=> b!3111790 m!3404985))

(declare-fun m!3404987 () Bool)

(assert (=> b!3111790 m!3404987))

(declare-fun m!3404989 () Bool)

(assert (=> b!3111785 m!3404989))

(declare-fun m!3404991 () Bool)

(assert (=> b!3111781 m!3404991))

(declare-fun m!3404993 () Bool)

(assert (=> b!3111781 m!3404993))

(declare-fun m!3404995 () Bool)

(assert (=> b!3111781 m!3404995))

(declare-fun m!3404997 () Bool)

(assert (=> b!3111780 m!3404997))

(assert (=> b!3111782 m!3404989))

(declare-fun m!3404999 () Bool)

(assert (=> b!3111782 m!3404999))

(declare-fun m!3405001 () Bool)

(assert (=> b!3111782 m!3405001))

(declare-fun m!3405003 () Bool)

(assert (=> start!294760 m!3405003))

(declare-fun m!3405005 () Bool)

(assert (=> b!3111788 m!3405005))

(declare-fun m!3405007 () Bool)

(assert (=> b!3111792 m!3405007))

(check-sat tp_is_empty!16753 (not b!3111791) (not b!3111793) (not b!3111790) (not b!3111786) (not b!3111792) (not b!3111788) (not b!3111780) (not b!3111781) (not start!294760) (not b!3111783) (not b!3111785) (not b!3111782) (not b!3111784) (not b!3111789))
(check-sat)
(get-model)

(declare-fun b!3111858 () Bool)

(declare-fun res!1273970 () Bool)

(declare-fun e!1943834 () Bool)

(assert (=> b!3111858 (=> res!1273970 e!1943834)))

(declare-fun isEmpty!19683 (List!35460) Bool)

(declare-fun tail!5117 (List!35460) List!35460)

(assert (=> b!3111858 (= res!1273970 (not (isEmpty!19683 (tail!5117 s!11993))))))

(declare-fun b!3111859 () Bool)

(declare-fun e!1943835 () Bool)

(declare-fun nullable!3237 (Regex!9595) Bool)

(assert (=> b!3111859 (= e!1943835 (nullable!3237 lt!1057570))))

(declare-fun b!3111860 () Bool)

(declare-fun res!1273969 () Bool)

(declare-fun e!1943830 () Bool)

(assert (=> b!3111860 (=> (not res!1273969) (not e!1943830))))

(assert (=> b!3111860 (= res!1273969 (isEmpty!19683 (tail!5117 s!11993)))))

(declare-fun d!861825 () Bool)

(declare-fun e!1943833 () Bool)

(assert (=> d!861825 e!1943833))

(declare-fun c!520908 () Bool)

(assert (=> d!861825 (= c!520908 ((_ is EmptyExpr!9595) lt!1057570))))

(declare-fun lt!1057579 () Bool)

(assert (=> d!861825 (= lt!1057579 e!1943835)))

(declare-fun c!520910 () Bool)

(assert (=> d!861825 (= c!520910 (isEmpty!19683 s!11993))))

(assert (=> d!861825 (validRegex!4328 lt!1057570)))

(assert (=> d!861825 (= (matchR!4477 lt!1057570 s!11993) lt!1057579)))

(declare-fun b!3111861 () Bool)

(declare-fun head!6891 (List!35460) C!19376)

(assert (=> b!3111861 (= e!1943834 (not (= (head!6891 s!11993) (c!520893 lt!1057570))))))

(declare-fun b!3111862 () Bool)

(declare-fun e!1943832 () Bool)

(assert (=> b!3111862 (= e!1943832 (not lt!1057579))))

(declare-fun b!3111863 () Bool)

(declare-fun e!1943831 () Bool)

(assert (=> b!3111863 (= e!1943831 e!1943834)))

(declare-fun res!1273971 () Bool)

(assert (=> b!3111863 (=> res!1273971 e!1943834)))

(declare-fun call!220413 () Bool)

(assert (=> b!3111863 (= res!1273971 call!220413)))

(declare-fun b!3111864 () Bool)

(declare-fun derivativeStep!2832 (Regex!9595 C!19376) Regex!9595)

(assert (=> b!3111864 (= e!1943835 (matchR!4477 (derivativeStep!2832 lt!1057570 (head!6891 s!11993)) (tail!5117 s!11993)))))

(declare-fun b!3111865 () Bool)

(declare-fun res!1273974 () Bool)

(assert (=> b!3111865 (=> (not res!1273974) (not e!1943830))))

(assert (=> b!3111865 (= res!1273974 (not call!220413))))

(declare-fun b!3111866 () Bool)

(assert (=> b!3111866 (= e!1943833 e!1943832)))

(declare-fun c!520909 () Bool)

(assert (=> b!3111866 (= c!520909 ((_ is EmptyLang!9595) lt!1057570))))

(declare-fun b!3111867 () Bool)

(declare-fun res!1273967 () Bool)

(declare-fun e!1943836 () Bool)

(assert (=> b!3111867 (=> res!1273967 e!1943836)))

(assert (=> b!3111867 (= res!1273967 (not ((_ is ElementMatch!9595) lt!1057570)))))

(assert (=> b!3111867 (= e!1943832 e!1943836)))

(declare-fun b!3111868 () Bool)

(assert (=> b!3111868 (= e!1943833 (= lt!1057579 call!220413))))

(declare-fun b!3111869 () Bool)

(assert (=> b!3111869 (= e!1943830 (= (head!6891 s!11993) (c!520893 lt!1057570)))))

(declare-fun b!3111870 () Bool)

(declare-fun res!1273972 () Bool)

(assert (=> b!3111870 (=> res!1273972 e!1943836)))

(assert (=> b!3111870 (= res!1273972 e!1943830)))

(declare-fun res!1273973 () Bool)

(assert (=> b!3111870 (=> (not res!1273973) (not e!1943830))))

(assert (=> b!3111870 (= res!1273973 lt!1057579)))

(declare-fun bm!220408 () Bool)

(assert (=> bm!220408 (= call!220413 (isEmpty!19683 s!11993))))

(declare-fun b!3111871 () Bool)

(assert (=> b!3111871 (= e!1943836 e!1943831)))

(declare-fun res!1273968 () Bool)

(assert (=> b!3111871 (=> (not res!1273968) (not e!1943831))))

(assert (=> b!3111871 (= res!1273968 (not lt!1057579))))

(assert (= (and d!861825 c!520910) b!3111859))

(assert (= (and d!861825 (not c!520910)) b!3111864))

(assert (= (and d!861825 c!520908) b!3111868))

(assert (= (and d!861825 (not c!520908)) b!3111866))

(assert (= (and b!3111866 c!520909) b!3111862))

(assert (= (and b!3111866 (not c!520909)) b!3111867))

(assert (= (and b!3111867 (not res!1273967)) b!3111870))

(assert (= (and b!3111870 res!1273973) b!3111865))

(assert (= (and b!3111865 res!1273974) b!3111860))

(assert (= (and b!3111860 res!1273969) b!3111869))

(assert (= (and b!3111870 (not res!1273972)) b!3111871))

(assert (= (and b!3111871 res!1273968) b!3111863))

(assert (= (and b!3111863 (not res!1273971)) b!3111858))

(assert (= (and b!3111858 (not res!1273970)) b!3111861))

(assert (= (or b!3111868 b!3111863 b!3111865) bm!220408))

(declare-fun m!3405021 () Bool)

(assert (=> b!3111864 m!3405021))

(assert (=> b!3111864 m!3405021))

(declare-fun m!3405023 () Bool)

(assert (=> b!3111864 m!3405023))

(declare-fun m!3405025 () Bool)

(assert (=> b!3111864 m!3405025))

(assert (=> b!3111864 m!3405023))

(assert (=> b!3111864 m!3405025))

(declare-fun m!3405027 () Bool)

(assert (=> b!3111864 m!3405027))

(assert (=> b!3111861 m!3405021))

(declare-fun m!3405029 () Bool)

(assert (=> b!3111859 m!3405029))

(assert (=> b!3111858 m!3405025))

(assert (=> b!3111858 m!3405025))

(declare-fun m!3405031 () Bool)

(assert (=> b!3111858 m!3405031))

(declare-fun m!3405033 () Bool)

(assert (=> d!861825 m!3405033))

(declare-fun m!3405035 () Bool)

(assert (=> d!861825 m!3405035))

(assert (=> bm!220408 m!3405033))

(assert (=> b!3111860 m!3405025))

(assert (=> b!3111860 m!3405025))

(assert (=> b!3111860 m!3405031))

(assert (=> b!3111869 m!3405021))

(assert (=> b!3111782 d!861825))

(declare-fun b!3111878 () Bool)

(declare-fun res!1273980 () Bool)

(declare-fun e!1943845 () Bool)

(assert (=> b!3111878 (=> res!1273980 e!1943845)))

(assert (=> b!3111878 (= res!1273980 (not (isEmpty!19683 (tail!5117 s!11993))))))

(declare-fun b!3111879 () Bool)

(declare-fun e!1943846 () Bool)

(assert (=> b!3111879 (= e!1943846 (nullable!3237 (regTwo!19703 r!17423)))))

(declare-fun b!3111880 () Bool)

(declare-fun res!1273979 () Bool)

(declare-fun e!1943841 () Bool)

(assert (=> b!3111880 (=> (not res!1273979) (not e!1943841))))

(assert (=> b!3111880 (= res!1273979 (isEmpty!19683 (tail!5117 s!11993)))))

(declare-fun d!861833 () Bool)

(declare-fun e!1943844 () Bool)

(assert (=> d!861833 e!1943844))

(declare-fun c!520913 () Bool)

(assert (=> d!861833 (= c!520913 ((_ is EmptyExpr!9595) (regTwo!19703 r!17423)))))

(declare-fun lt!1057580 () Bool)

(assert (=> d!861833 (= lt!1057580 e!1943846)))

(declare-fun c!520915 () Bool)

(assert (=> d!861833 (= c!520915 (isEmpty!19683 s!11993))))

(assert (=> d!861833 (validRegex!4328 (regTwo!19703 r!17423))))

(assert (=> d!861833 (= (matchR!4477 (regTwo!19703 r!17423) s!11993) lt!1057580)))

(declare-fun b!3111881 () Bool)

(assert (=> b!3111881 (= e!1943845 (not (= (head!6891 s!11993) (c!520893 (regTwo!19703 r!17423)))))))

(declare-fun b!3111882 () Bool)

(declare-fun e!1943843 () Bool)

(assert (=> b!3111882 (= e!1943843 (not lt!1057580))))

(declare-fun b!3111883 () Bool)

(declare-fun e!1943842 () Bool)

(assert (=> b!3111883 (= e!1943842 e!1943845)))

(declare-fun res!1273981 () Bool)

(assert (=> b!3111883 (=> res!1273981 e!1943845)))

(declare-fun call!220414 () Bool)

(assert (=> b!3111883 (= res!1273981 call!220414)))

(declare-fun b!3111884 () Bool)

(assert (=> b!3111884 (= e!1943846 (matchR!4477 (derivativeStep!2832 (regTwo!19703 r!17423) (head!6891 s!11993)) (tail!5117 s!11993)))))

(declare-fun b!3111885 () Bool)

(declare-fun res!1273984 () Bool)

(assert (=> b!3111885 (=> (not res!1273984) (not e!1943841))))

(assert (=> b!3111885 (= res!1273984 (not call!220414))))

(declare-fun b!3111886 () Bool)

(assert (=> b!3111886 (= e!1943844 e!1943843)))

(declare-fun c!520914 () Bool)

(assert (=> b!3111886 (= c!520914 ((_ is EmptyLang!9595) (regTwo!19703 r!17423)))))

(declare-fun b!3111887 () Bool)

(declare-fun res!1273977 () Bool)

(declare-fun e!1943847 () Bool)

(assert (=> b!3111887 (=> res!1273977 e!1943847)))

(assert (=> b!3111887 (= res!1273977 (not ((_ is ElementMatch!9595) (regTwo!19703 r!17423))))))

(assert (=> b!3111887 (= e!1943843 e!1943847)))

(declare-fun b!3111888 () Bool)

(assert (=> b!3111888 (= e!1943844 (= lt!1057580 call!220414))))

(declare-fun b!3111889 () Bool)

(assert (=> b!3111889 (= e!1943841 (= (head!6891 s!11993) (c!520893 (regTwo!19703 r!17423))))))

(declare-fun b!3111890 () Bool)

(declare-fun res!1273982 () Bool)

(assert (=> b!3111890 (=> res!1273982 e!1943847)))

(assert (=> b!3111890 (= res!1273982 e!1943841)))

(declare-fun res!1273983 () Bool)

(assert (=> b!3111890 (=> (not res!1273983) (not e!1943841))))

(assert (=> b!3111890 (= res!1273983 lt!1057580)))

(declare-fun bm!220409 () Bool)

(assert (=> bm!220409 (= call!220414 (isEmpty!19683 s!11993))))

(declare-fun b!3111891 () Bool)

(assert (=> b!3111891 (= e!1943847 e!1943842)))

(declare-fun res!1273978 () Bool)

(assert (=> b!3111891 (=> (not res!1273978) (not e!1943842))))

(assert (=> b!3111891 (= res!1273978 (not lt!1057580))))

(assert (= (and d!861833 c!520915) b!3111879))

(assert (= (and d!861833 (not c!520915)) b!3111884))

(assert (= (and d!861833 c!520913) b!3111888))

(assert (= (and d!861833 (not c!520913)) b!3111886))

(assert (= (and b!3111886 c!520914) b!3111882))

(assert (= (and b!3111886 (not c!520914)) b!3111887))

(assert (= (and b!3111887 (not res!1273977)) b!3111890))

(assert (= (and b!3111890 res!1273983) b!3111885))

(assert (= (and b!3111885 res!1273984) b!3111880))

(assert (= (and b!3111880 res!1273979) b!3111889))

(assert (= (and b!3111890 (not res!1273982)) b!3111891))

(assert (= (and b!3111891 res!1273978) b!3111883))

(assert (= (and b!3111883 (not res!1273981)) b!3111878))

(assert (= (and b!3111878 (not res!1273980)) b!3111881))

(assert (= (or b!3111888 b!3111883 b!3111885) bm!220409))

(assert (=> b!3111884 m!3405021))

(assert (=> b!3111884 m!3405021))

(declare-fun m!3405037 () Bool)

(assert (=> b!3111884 m!3405037))

(assert (=> b!3111884 m!3405025))

(assert (=> b!3111884 m!3405037))

(assert (=> b!3111884 m!3405025))

(declare-fun m!3405039 () Bool)

(assert (=> b!3111884 m!3405039))

(assert (=> b!3111881 m!3405021))

(declare-fun m!3405041 () Bool)

(assert (=> b!3111879 m!3405041))

(assert (=> b!3111878 m!3405025))

(assert (=> b!3111878 m!3405025))

(assert (=> b!3111878 m!3405031))

(assert (=> d!861833 m!3405033))

(assert (=> d!861833 m!3404977))

(assert (=> bm!220409 m!3405033))

(assert (=> b!3111880 m!3405025))

(assert (=> b!3111880 m!3405025))

(assert (=> b!3111880 m!3405031))

(assert (=> b!3111889 m!3405021))

(assert (=> b!3111782 d!861833))

(declare-fun d!861835 () Bool)

(assert (=> d!861835 (= (matchR!4477 (regTwo!19703 r!17423) s!11993) (matchR!4477 (simplify!550 (regTwo!19703 r!17423)) s!11993))))

(declare-fun lt!1057583 () Unit!49629)

(declare-fun choose!18404 (Regex!9595 List!35460) Unit!49629)

(assert (=> d!861835 (= lt!1057583 (choose!18404 (regTwo!19703 r!17423) s!11993))))

(assert (=> d!861835 (validRegex!4328 (regTwo!19703 r!17423))))

(assert (=> d!861835 (= (lemmaSimplifySound!344 (regTwo!19703 r!17423) s!11993) lt!1057583)))

(declare-fun bs!535796 () Bool)

(assert (= bs!535796 d!861835))

(declare-fun m!3405043 () Bool)

(assert (=> bs!535796 m!3405043))

(assert (=> bs!535796 m!3404977))

(assert (=> bs!535796 m!3404999))

(assert (=> bs!535796 m!3404985))

(declare-fun m!3405045 () Bool)

(assert (=> bs!535796 m!3405045))

(assert (=> bs!535796 m!3404985))

(assert (=> b!3111782 d!861835))

(declare-fun b!3111926 () Bool)

(declare-fun e!1943876 () Bool)

(declare-fun call!220421 () Bool)

(assert (=> b!3111926 (= e!1943876 call!220421)))

(declare-fun c!520927 () Bool)

(declare-fun bm!220416 () Bool)

(declare-fun call!220423 () Bool)

(declare-fun c!520926 () Bool)

(assert (=> bm!220416 (= call!220423 (validRegex!4328 (ite c!520927 (reg!9924 (regOne!19703 r!17423)) (ite c!520926 (regOne!19703 (regOne!19703 r!17423)) (regTwo!19702 (regOne!19703 r!17423))))))))

(declare-fun b!3111927 () Bool)

(declare-fun res!1274001 () Bool)

(declare-fun e!1943875 () Bool)

(assert (=> b!3111927 (=> res!1274001 e!1943875)))

(assert (=> b!3111927 (= res!1274001 (not ((_ is Concat!14916) (regOne!19703 r!17423))))))

(declare-fun e!1943873 () Bool)

(assert (=> b!3111927 (= e!1943873 e!1943875)))

(declare-fun b!3111928 () Bool)

(declare-fun e!1943878 () Bool)

(declare-fun e!1943874 () Bool)

(assert (=> b!3111928 (= e!1943878 e!1943874)))

(assert (=> b!3111928 (= c!520927 ((_ is Star!9595) (regOne!19703 r!17423)))))

(declare-fun b!3111929 () Bool)

(declare-fun e!1943872 () Bool)

(assert (=> b!3111929 (= e!1943872 call!220423)))

(declare-fun b!3111930 () Bool)

(assert (=> b!3111930 (= e!1943874 e!1943872)))

(declare-fun res!1274003 () Bool)

(assert (=> b!3111930 (= res!1274003 (not (nullable!3237 (reg!9924 (regOne!19703 r!17423)))))))

(assert (=> b!3111930 (=> (not res!1274003) (not e!1943872))))

(declare-fun bm!220417 () Bool)

(assert (=> bm!220417 (= call!220421 call!220423)))

(declare-fun bm!220418 () Bool)

(declare-fun call!220422 () Bool)

(assert (=> bm!220418 (= call!220422 (validRegex!4328 (ite c!520926 (regTwo!19703 (regOne!19703 r!17423)) (regOne!19702 (regOne!19703 r!17423)))))))

(declare-fun b!3111931 () Bool)

(assert (=> b!3111931 (= e!1943875 e!1943876)))

(declare-fun res!1273999 () Bool)

(assert (=> b!3111931 (=> (not res!1273999) (not e!1943876))))

(assert (=> b!3111931 (= res!1273999 call!220422)))

(declare-fun b!3111932 () Bool)

(declare-fun res!1274002 () Bool)

(declare-fun e!1943877 () Bool)

(assert (=> b!3111932 (=> (not res!1274002) (not e!1943877))))

(assert (=> b!3111932 (= res!1274002 call!220421)))

(assert (=> b!3111932 (= e!1943873 e!1943877)))

(declare-fun d!861837 () Bool)

(declare-fun res!1274000 () Bool)

(assert (=> d!861837 (=> res!1274000 e!1943878)))

(assert (=> d!861837 (= res!1274000 ((_ is ElementMatch!9595) (regOne!19703 r!17423)))))

(assert (=> d!861837 (= (validRegex!4328 (regOne!19703 r!17423)) e!1943878)))

(declare-fun b!3111933 () Bool)

(assert (=> b!3111933 (= e!1943874 e!1943873)))

(assert (=> b!3111933 (= c!520926 ((_ is Union!9595) (regOne!19703 r!17423)))))

(declare-fun b!3111934 () Bool)

(assert (=> b!3111934 (= e!1943877 call!220422)))

(assert (= (and d!861837 (not res!1274000)) b!3111928))

(assert (= (and b!3111928 c!520927) b!3111930))

(assert (= (and b!3111928 (not c!520927)) b!3111933))

(assert (= (and b!3111930 res!1274003) b!3111929))

(assert (= (and b!3111933 c!520926) b!3111932))

(assert (= (and b!3111933 (not c!520926)) b!3111927))

(assert (= (and b!3111932 res!1274002) b!3111934))

(assert (= (and b!3111927 (not res!1274001)) b!3111931))

(assert (= (and b!3111931 res!1273999) b!3111926))

(assert (= (or b!3111932 b!3111926) bm!220417))

(assert (= (or b!3111934 b!3111931) bm!220418))

(assert (= (or b!3111929 bm!220417) bm!220416))

(declare-fun m!3405047 () Bool)

(assert (=> bm!220416 m!3405047))

(declare-fun m!3405049 () Bool)

(assert (=> b!3111930 m!3405049))

(declare-fun m!3405051 () Bool)

(assert (=> bm!220418 m!3405051))

(assert (=> b!3111792 d!861837))

(declare-fun b!3112247 () Bool)

(assert (=> b!3112247 true))

(assert (=> b!3112247 true))

(declare-fun bs!535800 () Bool)

(declare-fun b!3112250 () Bool)

(assert (= bs!535800 (and b!3112250 b!3112247)))

(declare-fun lambda!115072 () Int)

(declare-fun lambda!115071 () Int)

(assert (=> bs!535800 (not (= lambda!115072 lambda!115071))))

(assert (=> b!3112250 true))

(assert (=> b!3112250 true))

(declare-fun b!3112240 () Bool)

(declare-fun e!1944039 () Bool)

(declare-fun e!1944036 () Bool)

(assert (=> b!3112240 (= e!1944039 e!1944036)))

(declare-fun c!521008 () Bool)

(assert (=> b!3112240 (= c!521008 ((_ is Star!9595) r!17423))))

(declare-fun b!3112241 () Bool)

(declare-fun e!1944038 () Bool)

(declare-fun e!1944040 () Bool)

(assert (=> b!3112241 (= e!1944038 e!1944040)))

(declare-fun res!1274112 () Bool)

(assert (=> b!3112241 (= res!1274112 (not ((_ is EmptyLang!9595) r!17423)))))

(assert (=> b!3112241 (=> (not res!1274112) (not e!1944040))))

(declare-fun call!220473 () Bool)

(declare-fun bm!220467 () Bool)

(declare-fun Exists!1853 (Int) Bool)

(assert (=> bm!220467 (= call!220473 (Exists!1853 (ite c!521008 lambda!115071 lambda!115072)))))

(declare-fun b!3112242 () Bool)

(declare-fun e!1944037 () Bool)

(assert (=> b!3112242 (= e!1944037 (matchRSpec!1732 (regTwo!19703 r!17423) s!11993))))

(declare-fun b!3112243 () Bool)

(declare-fun call!220472 () Bool)

(assert (=> b!3112243 (= e!1944038 call!220472)))

(declare-fun b!3112244 () Bool)

(declare-fun e!1944042 () Bool)

(assert (=> b!3112244 (= e!1944042 (= s!11993 (Cons!35336 (c!520893 r!17423) Nil!35336)))))

(declare-fun b!3112245 () Bool)

(assert (=> b!3112245 (= e!1944039 e!1944037)))

(declare-fun res!1274114 () Bool)

(assert (=> b!3112245 (= res!1274114 (matchRSpec!1732 (regOne!19703 r!17423) s!11993))))

(assert (=> b!3112245 (=> res!1274114 e!1944037)))

(declare-fun b!3112246 () Bool)

(declare-fun c!521010 () Bool)

(assert (=> b!3112246 (= c!521010 ((_ is Union!9595) r!17423))))

(assert (=> b!3112246 (= e!1944042 e!1944039)))

(declare-fun e!1944041 () Bool)

(assert (=> b!3112247 (= e!1944041 call!220473)))

(declare-fun d!861839 () Bool)

(declare-fun c!521009 () Bool)

(assert (=> d!861839 (= c!521009 ((_ is EmptyExpr!9595) r!17423))))

(assert (=> d!861839 (= (matchRSpec!1732 r!17423 s!11993) e!1944038)))

(declare-fun bm!220468 () Bool)

(assert (=> bm!220468 (= call!220472 (isEmpty!19683 s!11993))))

(declare-fun b!3112248 () Bool)

(declare-fun c!521007 () Bool)

(assert (=> b!3112248 (= c!521007 ((_ is ElementMatch!9595) r!17423))))

(assert (=> b!3112248 (= e!1944040 e!1944042)))

(declare-fun b!3112249 () Bool)

(declare-fun res!1274113 () Bool)

(assert (=> b!3112249 (=> res!1274113 e!1944041)))

(assert (=> b!3112249 (= res!1274113 call!220472)))

(assert (=> b!3112249 (= e!1944036 e!1944041)))

(assert (=> b!3112250 (= e!1944036 call!220473)))

(assert (= (and d!861839 c!521009) b!3112243))

(assert (= (and d!861839 (not c!521009)) b!3112241))

(assert (= (and b!3112241 res!1274112) b!3112248))

(assert (= (and b!3112248 c!521007) b!3112244))

(assert (= (and b!3112248 (not c!521007)) b!3112246))

(assert (= (and b!3112246 c!521010) b!3112245))

(assert (= (and b!3112246 (not c!521010)) b!3112240))

(assert (= (and b!3112245 (not res!1274114)) b!3112242))

(assert (= (and b!3112240 c!521008) b!3112249))

(assert (= (and b!3112240 (not c!521008)) b!3112250))

(assert (= (and b!3112249 (not res!1274113)) b!3112247))

(assert (= (or b!3112247 b!3112250) bm!220467))

(assert (= (or b!3112243 b!3112249) bm!220468))

(declare-fun m!3405151 () Bool)

(assert (=> bm!220467 m!3405151))

(declare-fun m!3405153 () Bool)

(assert (=> b!3112242 m!3405153))

(declare-fun m!3405155 () Bool)

(assert (=> b!3112245 m!3405155))

(assert (=> bm!220468 m!3405033))

(assert (=> b!3111781 d!861839))

(declare-fun b!3112255 () Bool)

(declare-fun res!1274118 () Bool)

(declare-fun e!1944047 () Bool)

(assert (=> b!3112255 (=> res!1274118 e!1944047)))

(assert (=> b!3112255 (= res!1274118 (not (isEmpty!19683 (tail!5117 s!11993))))))

(declare-fun b!3112256 () Bool)

(declare-fun e!1944048 () Bool)

(assert (=> b!3112256 (= e!1944048 (nullable!3237 r!17423))))

(declare-fun b!3112257 () Bool)

(declare-fun res!1274117 () Bool)

(declare-fun e!1944043 () Bool)

(assert (=> b!3112257 (=> (not res!1274117) (not e!1944043))))

(assert (=> b!3112257 (= res!1274117 (isEmpty!19683 (tail!5117 s!11993)))))

(declare-fun d!861867 () Bool)

(declare-fun e!1944046 () Bool)

(assert (=> d!861867 e!1944046))

(declare-fun c!521011 () Bool)

(assert (=> d!861867 (= c!521011 ((_ is EmptyExpr!9595) r!17423))))

(declare-fun lt!1057624 () Bool)

(assert (=> d!861867 (= lt!1057624 e!1944048)))

(declare-fun c!521013 () Bool)

(assert (=> d!861867 (= c!521013 (isEmpty!19683 s!11993))))

(assert (=> d!861867 (validRegex!4328 r!17423)))

(assert (=> d!861867 (= (matchR!4477 r!17423 s!11993) lt!1057624)))

(declare-fun b!3112258 () Bool)

(assert (=> b!3112258 (= e!1944047 (not (= (head!6891 s!11993) (c!520893 r!17423))))))

(declare-fun b!3112259 () Bool)

(declare-fun e!1944045 () Bool)

(assert (=> b!3112259 (= e!1944045 (not lt!1057624))))

(declare-fun b!3112260 () Bool)

(declare-fun e!1944044 () Bool)

(assert (=> b!3112260 (= e!1944044 e!1944047)))

(declare-fun res!1274119 () Bool)

(assert (=> b!3112260 (=> res!1274119 e!1944047)))

(declare-fun call!220474 () Bool)

(assert (=> b!3112260 (= res!1274119 call!220474)))

(declare-fun b!3112261 () Bool)

(assert (=> b!3112261 (= e!1944048 (matchR!4477 (derivativeStep!2832 r!17423 (head!6891 s!11993)) (tail!5117 s!11993)))))

(declare-fun b!3112262 () Bool)

(declare-fun res!1274122 () Bool)

(assert (=> b!3112262 (=> (not res!1274122) (not e!1944043))))

(assert (=> b!3112262 (= res!1274122 (not call!220474))))

(declare-fun b!3112263 () Bool)

(assert (=> b!3112263 (= e!1944046 e!1944045)))

(declare-fun c!521012 () Bool)

(assert (=> b!3112263 (= c!521012 ((_ is EmptyLang!9595) r!17423))))

(declare-fun b!3112264 () Bool)

(declare-fun res!1274115 () Bool)

(declare-fun e!1944049 () Bool)

(assert (=> b!3112264 (=> res!1274115 e!1944049)))

(assert (=> b!3112264 (= res!1274115 (not ((_ is ElementMatch!9595) r!17423)))))

(assert (=> b!3112264 (= e!1944045 e!1944049)))

(declare-fun b!3112265 () Bool)

(assert (=> b!3112265 (= e!1944046 (= lt!1057624 call!220474))))

(declare-fun b!3112266 () Bool)

(assert (=> b!3112266 (= e!1944043 (= (head!6891 s!11993) (c!520893 r!17423)))))

(declare-fun b!3112267 () Bool)

(declare-fun res!1274120 () Bool)

(assert (=> b!3112267 (=> res!1274120 e!1944049)))

(assert (=> b!3112267 (= res!1274120 e!1944043)))

(declare-fun res!1274121 () Bool)

(assert (=> b!3112267 (=> (not res!1274121) (not e!1944043))))

(assert (=> b!3112267 (= res!1274121 lt!1057624)))

(declare-fun bm!220469 () Bool)

(assert (=> bm!220469 (= call!220474 (isEmpty!19683 s!11993))))

(declare-fun b!3112268 () Bool)

(assert (=> b!3112268 (= e!1944049 e!1944044)))

(declare-fun res!1274116 () Bool)

(assert (=> b!3112268 (=> (not res!1274116) (not e!1944044))))

(assert (=> b!3112268 (= res!1274116 (not lt!1057624))))

(assert (= (and d!861867 c!521013) b!3112256))

(assert (= (and d!861867 (not c!521013)) b!3112261))

(assert (= (and d!861867 c!521011) b!3112265))

(assert (= (and d!861867 (not c!521011)) b!3112263))

(assert (= (and b!3112263 c!521012) b!3112259))

(assert (= (and b!3112263 (not c!521012)) b!3112264))

(assert (= (and b!3112264 (not res!1274115)) b!3112267))

(assert (= (and b!3112267 res!1274121) b!3112262))

(assert (= (and b!3112262 res!1274122) b!3112257))

(assert (= (and b!3112257 res!1274117) b!3112266))

(assert (= (and b!3112267 (not res!1274120)) b!3112268))

(assert (= (and b!3112268 res!1274116) b!3112260))

(assert (= (and b!3112260 (not res!1274119)) b!3112255))

(assert (= (and b!3112255 (not res!1274118)) b!3112258))

(assert (= (or b!3112265 b!3112260 b!3112262) bm!220469))

(assert (=> b!3112261 m!3405021))

(assert (=> b!3112261 m!3405021))

(declare-fun m!3405157 () Bool)

(assert (=> b!3112261 m!3405157))

(assert (=> b!3112261 m!3405025))

(assert (=> b!3112261 m!3405157))

(assert (=> b!3112261 m!3405025))

(declare-fun m!3405159 () Bool)

(assert (=> b!3112261 m!3405159))

(assert (=> b!3112258 m!3405021))

(declare-fun m!3405161 () Bool)

(assert (=> b!3112256 m!3405161))

(assert (=> b!3112255 m!3405025))

(assert (=> b!3112255 m!3405025))

(assert (=> b!3112255 m!3405031))

(assert (=> d!861867 m!3405033))

(assert (=> d!861867 m!3405003))

(assert (=> bm!220469 m!3405033))

(assert (=> b!3112257 m!3405025))

(assert (=> b!3112257 m!3405025))

(assert (=> b!3112257 m!3405031))

(assert (=> b!3112266 m!3405021))

(assert (=> b!3111781 d!861867))

(declare-fun d!861869 () Bool)

(assert (=> d!861869 (= (matchR!4477 r!17423 s!11993) (matchRSpec!1732 r!17423 s!11993))))

(declare-fun lt!1057627 () Unit!49629)

(declare-fun choose!18405 (Regex!9595 List!35460) Unit!49629)

(assert (=> d!861869 (= lt!1057627 (choose!18405 r!17423 s!11993))))

(assert (=> d!861869 (validRegex!4328 r!17423)))

(assert (=> d!861869 (= (mainMatchTheorem!1732 r!17423 s!11993) lt!1057627)))

(declare-fun bs!535801 () Bool)

(assert (= bs!535801 d!861869))

(assert (=> bs!535801 m!3404993))

(assert (=> bs!535801 m!3404991))

(declare-fun m!3405163 () Bool)

(assert (=> bs!535801 m!3405163))

(assert (=> bs!535801 m!3405003))

(assert (=> b!3111781 d!861869))

(declare-fun b!3112269 () Bool)

(declare-fun e!1944054 () Bool)

(declare-fun call!220475 () Bool)

(assert (=> b!3112269 (= e!1944054 call!220475)))

(declare-fun call!220477 () Bool)

(declare-fun c!521014 () Bool)

(declare-fun c!521015 () Bool)

(declare-fun bm!220470 () Bool)

(assert (=> bm!220470 (= call!220477 (validRegex!4328 (ite c!521015 (reg!9924 r!17423) (ite c!521014 (regOne!19703 r!17423) (regTwo!19702 r!17423)))))))

(declare-fun b!3112270 () Bool)

(declare-fun res!1274125 () Bool)

(declare-fun e!1944053 () Bool)

(assert (=> b!3112270 (=> res!1274125 e!1944053)))

(assert (=> b!3112270 (= res!1274125 (not ((_ is Concat!14916) r!17423)))))

(declare-fun e!1944051 () Bool)

(assert (=> b!3112270 (= e!1944051 e!1944053)))

(declare-fun b!3112271 () Bool)

(declare-fun e!1944056 () Bool)

(declare-fun e!1944052 () Bool)

(assert (=> b!3112271 (= e!1944056 e!1944052)))

(assert (=> b!3112271 (= c!521015 ((_ is Star!9595) r!17423))))

(declare-fun b!3112272 () Bool)

(declare-fun e!1944050 () Bool)

(assert (=> b!3112272 (= e!1944050 call!220477)))

(declare-fun b!3112273 () Bool)

(assert (=> b!3112273 (= e!1944052 e!1944050)))

(declare-fun res!1274127 () Bool)

(assert (=> b!3112273 (= res!1274127 (not (nullable!3237 (reg!9924 r!17423))))))

(assert (=> b!3112273 (=> (not res!1274127) (not e!1944050))))

(declare-fun bm!220471 () Bool)

(assert (=> bm!220471 (= call!220475 call!220477)))

(declare-fun bm!220472 () Bool)

(declare-fun call!220476 () Bool)

(assert (=> bm!220472 (= call!220476 (validRegex!4328 (ite c!521014 (regTwo!19703 r!17423) (regOne!19702 r!17423))))))

(declare-fun b!3112274 () Bool)

(assert (=> b!3112274 (= e!1944053 e!1944054)))

(declare-fun res!1274123 () Bool)

(assert (=> b!3112274 (=> (not res!1274123) (not e!1944054))))

(assert (=> b!3112274 (= res!1274123 call!220476)))

(declare-fun b!3112275 () Bool)

(declare-fun res!1274126 () Bool)

(declare-fun e!1944055 () Bool)

(assert (=> b!3112275 (=> (not res!1274126) (not e!1944055))))

(assert (=> b!3112275 (= res!1274126 call!220475)))

(assert (=> b!3112275 (= e!1944051 e!1944055)))

(declare-fun d!861871 () Bool)

(declare-fun res!1274124 () Bool)

(assert (=> d!861871 (=> res!1274124 e!1944056)))

(assert (=> d!861871 (= res!1274124 ((_ is ElementMatch!9595) r!17423))))

(assert (=> d!861871 (= (validRegex!4328 r!17423) e!1944056)))

(declare-fun b!3112276 () Bool)

(assert (=> b!3112276 (= e!1944052 e!1944051)))

(assert (=> b!3112276 (= c!521014 ((_ is Union!9595) r!17423))))

(declare-fun b!3112277 () Bool)

(assert (=> b!3112277 (= e!1944055 call!220476)))

(assert (= (and d!861871 (not res!1274124)) b!3112271))

(assert (= (and b!3112271 c!521015) b!3112273))

(assert (= (and b!3112271 (not c!521015)) b!3112276))

(assert (= (and b!3112273 res!1274127) b!3112272))

(assert (= (and b!3112276 c!521014) b!3112275))

(assert (= (and b!3112276 (not c!521014)) b!3112270))

(assert (= (and b!3112275 res!1274126) b!3112277))

(assert (= (and b!3112270 (not res!1274125)) b!3112274))

(assert (= (and b!3112274 res!1274123) b!3112269))

(assert (= (or b!3112275 b!3112269) bm!220471))

(assert (= (or b!3112277 b!3112274) bm!220472))

(assert (= (or b!3112272 bm!220471) bm!220470))

(declare-fun m!3405165 () Bool)

(assert (=> bm!220470 m!3405165))

(declare-fun m!3405167 () Bool)

(assert (=> b!3112273 m!3405167))

(declare-fun m!3405169 () Bool)

(assert (=> bm!220472 m!3405169))

(assert (=> start!294760 d!861871))

(declare-fun b!3112278 () Bool)

(declare-fun e!1944061 () Bool)

(declare-fun call!220478 () Bool)

(assert (=> b!3112278 (= e!1944061 call!220478)))

(declare-fun c!521017 () Bool)

(declare-fun bm!220473 () Bool)

(declare-fun c!521016 () Bool)

(declare-fun call!220480 () Bool)

(assert (=> bm!220473 (= call!220480 (validRegex!4328 (ite c!521017 (reg!9924 (regTwo!19703 r!17423)) (ite c!521016 (regOne!19703 (regTwo!19703 r!17423)) (regTwo!19702 (regTwo!19703 r!17423))))))))

(declare-fun b!3112279 () Bool)

(declare-fun res!1274130 () Bool)

(declare-fun e!1944060 () Bool)

(assert (=> b!3112279 (=> res!1274130 e!1944060)))

(assert (=> b!3112279 (= res!1274130 (not ((_ is Concat!14916) (regTwo!19703 r!17423))))))

(declare-fun e!1944058 () Bool)

(assert (=> b!3112279 (= e!1944058 e!1944060)))

(declare-fun b!3112280 () Bool)

(declare-fun e!1944063 () Bool)

(declare-fun e!1944059 () Bool)

(assert (=> b!3112280 (= e!1944063 e!1944059)))

(assert (=> b!3112280 (= c!521017 ((_ is Star!9595) (regTwo!19703 r!17423)))))

(declare-fun b!3112281 () Bool)

(declare-fun e!1944057 () Bool)

(assert (=> b!3112281 (= e!1944057 call!220480)))

(declare-fun b!3112282 () Bool)

(assert (=> b!3112282 (= e!1944059 e!1944057)))

(declare-fun res!1274132 () Bool)

(assert (=> b!3112282 (= res!1274132 (not (nullable!3237 (reg!9924 (regTwo!19703 r!17423)))))))

(assert (=> b!3112282 (=> (not res!1274132) (not e!1944057))))

(declare-fun bm!220474 () Bool)

(assert (=> bm!220474 (= call!220478 call!220480)))

(declare-fun bm!220475 () Bool)

(declare-fun call!220479 () Bool)

(assert (=> bm!220475 (= call!220479 (validRegex!4328 (ite c!521016 (regTwo!19703 (regTwo!19703 r!17423)) (regOne!19702 (regTwo!19703 r!17423)))))))

(declare-fun b!3112283 () Bool)

(assert (=> b!3112283 (= e!1944060 e!1944061)))

(declare-fun res!1274128 () Bool)

(assert (=> b!3112283 (=> (not res!1274128) (not e!1944061))))

(assert (=> b!3112283 (= res!1274128 call!220479)))

(declare-fun b!3112284 () Bool)

(declare-fun res!1274131 () Bool)

(declare-fun e!1944062 () Bool)

(assert (=> b!3112284 (=> (not res!1274131) (not e!1944062))))

(assert (=> b!3112284 (= res!1274131 call!220478)))

(assert (=> b!3112284 (= e!1944058 e!1944062)))

(declare-fun d!861873 () Bool)

(declare-fun res!1274129 () Bool)

(assert (=> d!861873 (=> res!1274129 e!1944063)))

(assert (=> d!861873 (= res!1274129 ((_ is ElementMatch!9595) (regTwo!19703 r!17423)))))

(assert (=> d!861873 (= (validRegex!4328 (regTwo!19703 r!17423)) e!1944063)))

(declare-fun b!3112285 () Bool)

(assert (=> b!3112285 (= e!1944059 e!1944058)))

(assert (=> b!3112285 (= c!521016 ((_ is Union!9595) (regTwo!19703 r!17423)))))

(declare-fun b!3112286 () Bool)

(assert (=> b!3112286 (= e!1944062 call!220479)))

(assert (= (and d!861873 (not res!1274129)) b!3112280))

(assert (= (and b!3112280 c!521017) b!3112282))

(assert (= (and b!3112280 (not c!521017)) b!3112285))

(assert (= (and b!3112282 res!1274132) b!3112281))

(assert (= (and b!3112285 c!521016) b!3112284))

(assert (= (and b!3112285 (not c!521016)) b!3112279))

(assert (= (and b!3112284 res!1274131) b!3112286))

(assert (= (and b!3112279 (not res!1274130)) b!3112283))

(assert (= (and b!3112283 res!1274128) b!3112278))

(assert (= (or b!3112284 b!3112278) bm!220474))

(assert (= (or b!3112286 b!3112283) bm!220475))

(assert (= (or b!3112281 bm!220474) bm!220473))

(declare-fun m!3405171 () Bool)

(assert (=> bm!220473 m!3405171))

(declare-fun m!3405173 () Bool)

(assert (=> b!3112282 m!3405173))

(declare-fun m!3405175 () Bool)

(assert (=> bm!220475 m!3405175))

(assert (=> b!3111786 d!861873))

(declare-fun b!3112287 () Bool)

(declare-fun res!1274136 () Bool)

(declare-fun e!1944068 () Bool)

(assert (=> b!3112287 (=> res!1274136 e!1944068)))

(assert (=> b!3112287 (= res!1274136 (not (isEmpty!19683 (tail!5117 s!11993))))))

(declare-fun b!3112288 () Bool)

(declare-fun e!1944069 () Bool)

(assert (=> b!3112288 (= e!1944069 (nullable!3237 lt!1057572))))

(declare-fun b!3112289 () Bool)

(declare-fun res!1274135 () Bool)

(declare-fun e!1944064 () Bool)

(assert (=> b!3112289 (=> (not res!1274135) (not e!1944064))))

(assert (=> b!3112289 (= res!1274135 (isEmpty!19683 (tail!5117 s!11993)))))

(declare-fun d!861875 () Bool)

(declare-fun e!1944067 () Bool)

(assert (=> d!861875 e!1944067))

(declare-fun c!521018 () Bool)

(assert (=> d!861875 (= c!521018 ((_ is EmptyExpr!9595) lt!1057572))))

(declare-fun lt!1057628 () Bool)

(assert (=> d!861875 (= lt!1057628 e!1944069)))

(declare-fun c!521020 () Bool)

(assert (=> d!861875 (= c!521020 (isEmpty!19683 s!11993))))

(assert (=> d!861875 (validRegex!4328 lt!1057572)))

(assert (=> d!861875 (= (matchR!4477 lt!1057572 s!11993) lt!1057628)))

(declare-fun b!3112290 () Bool)

(assert (=> b!3112290 (= e!1944068 (not (= (head!6891 s!11993) (c!520893 lt!1057572))))))

(declare-fun b!3112291 () Bool)

(declare-fun e!1944066 () Bool)

(assert (=> b!3112291 (= e!1944066 (not lt!1057628))))

(declare-fun b!3112292 () Bool)

(declare-fun e!1944065 () Bool)

(assert (=> b!3112292 (= e!1944065 e!1944068)))

(declare-fun res!1274137 () Bool)

(assert (=> b!3112292 (=> res!1274137 e!1944068)))

(declare-fun call!220481 () Bool)

(assert (=> b!3112292 (= res!1274137 call!220481)))

(declare-fun b!3112293 () Bool)

(assert (=> b!3112293 (= e!1944069 (matchR!4477 (derivativeStep!2832 lt!1057572 (head!6891 s!11993)) (tail!5117 s!11993)))))

(declare-fun b!3112294 () Bool)

(declare-fun res!1274140 () Bool)

(assert (=> b!3112294 (=> (not res!1274140) (not e!1944064))))

(assert (=> b!3112294 (= res!1274140 (not call!220481))))

(declare-fun b!3112295 () Bool)

(assert (=> b!3112295 (= e!1944067 e!1944066)))

(declare-fun c!521019 () Bool)

(assert (=> b!3112295 (= c!521019 ((_ is EmptyLang!9595) lt!1057572))))

(declare-fun b!3112296 () Bool)

(declare-fun res!1274133 () Bool)

(declare-fun e!1944070 () Bool)

(assert (=> b!3112296 (=> res!1274133 e!1944070)))

(assert (=> b!3112296 (= res!1274133 (not ((_ is ElementMatch!9595) lt!1057572)))))

(assert (=> b!3112296 (= e!1944066 e!1944070)))

(declare-fun b!3112297 () Bool)

(assert (=> b!3112297 (= e!1944067 (= lt!1057628 call!220481))))

(declare-fun b!3112298 () Bool)

(assert (=> b!3112298 (= e!1944064 (= (head!6891 s!11993) (c!520893 lt!1057572)))))

(declare-fun b!3112299 () Bool)

(declare-fun res!1274138 () Bool)

(assert (=> b!3112299 (=> res!1274138 e!1944070)))

(assert (=> b!3112299 (= res!1274138 e!1944064)))

(declare-fun res!1274139 () Bool)

(assert (=> b!3112299 (=> (not res!1274139) (not e!1944064))))

(assert (=> b!3112299 (= res!1274139 lt!1057628)))

(declare-fun bm!220476 () Bool)

(assert (=> bm!220476 (= call!220481 (isEmpty!19683 s!11993))))

(declare-fun b!3112300 () Bool)

(assert (=> b!3112300 (= e!1944070 e!1944065)))

(declare-fun res!1274134 () Bool)

(assert (=> b!3112300 (=> (not res!1274134) (not e!1944065))))

(assert (=> b!3112300 (= res!1274134 (not lt!1057628))))

(assert (= (and d!861875 c!521020) b!3112288))

(assert (= (and d!861875 (not c!521020)) b!3112293))

(assert (= (and d!861875 c!521018) b!3112297))

(assert (= (and d!861875 (not c!521018)) b!3112295))

(assert (= (and b!3112295 c!521019) b!3112291))

(assert (= (and b!3112295 (not c!521019)) b!3112296))

(assert (= (and b!3112296 (not res!1274133)) b!3112299))

(assert (= (and b!3112299 res!1274139) b!3112294))

(assert (= (and b!3112294 res!1274140) b!3112289))

(assert (= (and b!3112289 res!1274135) b!3112298))

(assert (= (and b!3112299 (not res!1274138)) b!3112300))

(assert (= (and b!3112300 res!1274134) b!3112292))

(assert (= (and b!3112292 (not res!1274137)) b!3112287))

(assert (= (and b!3112287 (not res!1274136)) b!3112290))

(assert (= (or b!3112297 b!3112292 b!3112294) bm!220476))

(assert (=> b!3112293 m!3405021))

(assert (=> b!3112293 m!3405021))

(declare-fun m!3405177 () Bool)

(assert (=> b!3112293 m!3405177))

(assert (=> b!3112293 m!3405025))

(assert (=> b!3112293 m!3405177))

(assert (=> b!3112293 m!3405025))

(declare-fun m!3405179 () Bool)

(assert (=> b!3112293 m!3405179))

(assert (=> b!3112290 m!3405021))

(declare-fun m!3405181 () Bool)

(assert (=> b!3112288 m!3405181))

(assert (=> b!3112287 m!3405025))

(assert (=> b!3112287 m!3405025))

(assert (=> b!3112287 m!3405031))

(assert (=> d!861875 m!3405033))

(declare-fun m!3405183 () Bool)

(assert (=> d!861875 m!3405183))

(assert (=> bm!220476 m!3405033))

(assert (=> b!3112289 m!3405025))

(assert (=> b!3112289 m!3405025))

(assert (=> b!3112289 m!3405031))

(assert (=> b!3112298 m!3405021))

(assert (=> b!3111791 d!861875))

(declare-fun d!861877 () Bool)

(declare-fun e!1944076 () Bool)

(assert (=> d!861877 e!1944076))

(declare-fun res!1274146 () Bool)

(assert (=> d!861877 (=> res!1274146 e!1944076)))

(assert (=> d!861877 (= res!1274146 (matchR!4477 lt!1057572 s!11993))))

(declare-fun lt!1057631 () Unit!49629)

(declare-fun choose!18407 (Regex!9595 Regex!9595 List!35460) Unit!49629)

(assert (=> d!861877 (= lt!1057631 (choose!18407 lt!1057572 lt!1057570 s!11993))))

(declare-fun e!1944075 () Bool)

(assert (=> d!861877 e!1944075))

(declare-fun res!1274145 () Bool)

(assert (=> d!861877 (=> (not res!1274145) (not e!1944075))))

(assert (=> d!861877 (= res!1274145 (validRegex!4328 lt!1057572))))

(assert (=> d!861877 (= (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!326 lt!1057572 lt!1057570 s!11993) lt!1057631)))

(declare-fun b!3112305 () Bool)

(assert (=> b!3112305 (= e!1944075 (validRegex!4328 lt!1057570))))

(declare-fun b!3112306 () Bool)

(assert (=> b!3112306 (= e!1944076 (matchR!4477 lt!1057570 s!11993))))

(assert (= (and d!861877 res!1274145) b!3112305))

(assert (= (and d!861877 (not res!1274146)) b!3112306))

(assert (=> d!861877 m!3404979))

(declare-fun m!3405185 () Bool)

(assert (=> d!861877 m!3405185))

(assert (=> d!861877 m!3405183))

(assert (=> b!3112305 m!3405035))

(assert (=> b!3112306 m!3404989))

(assert (=> b!3111791 d!861877))

(declare-fun d!861879 () Bool)

(assert (=> d!861879 (= (isEmptyLang!646 lt!1057570) ((_ is EmptyLang!9595) lt!1057570))))

(assert (=> b!3111780 d!861879))

(assert (=> b!3111785 d!861825))

(declare-fun d!861881 () Bool)

(assert (=> d!861881 (= (isEmptyLang!646 lt!1057572) ((_ is EmptyLang!9595) lt!1057572))))

(assert (=> b!3111790 d!861881))

(declare-fun b!3112357 () Bool)

(declare-fun e!1944117 () Regex!9595)

(assert (=> b!3112357 (= e!1944117 EmptyExpr!9595)))

(declare-fun b!3112358 () Bool)

(declare-fun e!1944111 () Regex!9595)

(declare-fun lt!1057644 () Regex!9595)

(assert (=> b!3112358 (= e!1944111 lt!1057644)))

(declare-fun b!3112359 () Bool)

(declare-fun e!1944113 () Bool)

(declare-fun lt!1057648 () Regex!9595)

(assert (=> b!3112359 (= e!1944113 (= (nullable!3237 lt!1057648) (nullable!3237 (regTwo!19703 r!17423))))))

(declare-fun b!3112360 () Bool)

(declare-fun e!1944118 () Regex!9595)

(declare-fun e!1944116 () Regex!9595)

(assert (=> b!3112360 (= e!1944118 e!1944116)))

(declare-fun c!521047 () Bool)

(assert (=> b!3112360 (= c!521047 ((_ is Star!9595) (regTwo!19703 r!17423)))))

(declare-fun b!3112361 () Bool)

(declare-fun e!1944112 () Regex!9595)

(assert (=> b!3112361 (= e!1944112 (regTwo!19703 r!17423))))

(declare-fun bm!220491 () Bool)

(declare-fun call!220496 () Regex!9595)

(declare-fun call!220502 () Regex!9595)

(assert (=> bm!220491 (= call!220496 call!220502)))

(declare-fun b!3112362 () Bool)

(declare-fun e!1944109 () Regex!9595)

(declare-fun e!1944106 () Regex!9595)

(assert (=> b!3112362 (= e!1944109 e!1944106)))

(declare-fun c!521053 () Bool)

(declare-fun lt!1057647 () Regex!9595)

(declare-fun isEmptyExpr!648 (Regex!9595) Bool)

(assert (=> b!3112362 (= c!521053 (isEmptyExpr!648 lt!1057647))))

(declare-fun bm!220492 () Bool)

(declare-fun call!220501 () Regex!9595)

(declare-fun c!521044 () Bool)

(assert (=> bm!220492 (= call!220501 (simplify!550 (ite c!521044 (regOne!19703 (regTwo!19703 r!17423)) (regTwo!19702 (regTwo!19703 r!17423)))))))

(declare-fun b!3112364 () Bool)

(declare-fun lt!1057646 () Regex!9595)

(assert (=> b!3112364 (= e!1944106 (Concat!14916 lt!1057646 lt!1057647))))

(declare-fun b!3112365 () Bool)

(declare-fun c!521048 () Bool)

(declare-fun call!220500 () Bool)

(assert (=> b!3112365 (= c!521048 call!220500)))

(declare-fun e!1944115 () Regex!9595)

(assert (=> b!3112365 (= e!1944115 e!1944111)))

(declare-fun b!3112366 () Bool)

(declare-fun e!1944105 () Bool)

(declare-fun call!220497 () Bool)

(assert (=> b!3112366 (= e!1944105 call!220497)))

(declare-fun b!3112367 () Bool)

(declare-fun e!1944107 () Regex!9595)

(declare-fun e!1944114 () Regex!9595)

(assert (=> b!3112367 (= e!1944107 e!1944114)))

(assert (=> b!3112367 (= lt!1057646 call!220496)))

(assert (=> b!3112367 (= lt!1057647 call!220501)))

(declare-fun res!1274154 () Bool)

(declare-fun call!220499 () Bool)

(assert (=> b!3112367 (= res!1274154 call!220499)))

(declare-fun e!1944108 () Bool)

(assert (=> b!3112367 (=> res!1274154 e!1944108)))

(declare-fun c!521045 () Bool)

(assert (=> b!3112367 (= c!521045 e!1944108)))

(declare-fun bm!220493 () Bool)

(declare-fun call!220498 () Bool)

(assert (=> bm!220493 (= call!220500 call!220498)))

(declare-fun b!3112368 () Bool)

(declare-fun c!521050 () Bool)

(assert (=> b!3112368 (= c!521050 call!220497)))

(assert (=> b!3112368 (= e!1944114 e!1944109)))

(declare-fun b!3112369 () Bool)

(assert (=> b!3112369 (= e!1944109 lt!1057647)))

(declare-fun b!3112370 () Bool)

(declare-fun c!521046 () Bool)

(assert (=> b!3112370 (= c!521046 e!1944105)))

(declare-fun res!1274153 () Bool)

(assert (=> b!3112370 (=> res!1274153 e!1944105)))

(assert (=> b!3112370 (= res!1274153 call!220498)))

(declare-fun lt!1057645 () Regex!9595)

(assert (=> b!3112370 (= lt!1057645 call!220502)))

(assert (=> b!3112370 (= e!1944116 e!1944117)))

(declare-fun b!3112371 () Bool)

(declare-fun e!1944110 () Regex!9595)

(assert (=> b!3112371 (= e!1944110 EmptyLang!9595)))

(declare-fun b!3112372 () Bool)

(assert (=> b!3112372 (= e!1944117 (Star!9595 lt!1057645))))

(declare-fun b!3112373 () Bool)

(declare-fun lt!1057649 () Regex!9595)

(assert (=> b!3112373 (= e!1944111 (Union!9595 lt!1057644 lt!1057649))))

(declare-fun b!3112374 () Bool)

(assert (=> b!3112374 (= e!1944115 lt!1057649)))

(declare-fun b!3112375 () Bool)

(assert (=> b!3112375 (= c!521044 ((_ is Union!9595) (regTwo!19703 r!17423)))))

(assert (=> b!3112375 (= e!1944116 e!1944107)))

(declare-fun b!3112376 () Bool)

(declare-fun c!521051 () Bool)

(assert (=> b!3112376 (= c!521051 ((_ is EmptyExpr!9595) (regTwo!19703 r!17423)))))

(assert (=> b!3112376 (= e!1944112 e!1944118)))

(declare-fun b!3112363 () Bool)

(assert (=> b!3112363 (= e!1944114 EmptyLang!9595)))

(declare-fun d!861883 () Bool)

(assert (=> d!861883 e!1944113))

(declare-fun res!1274155 () Bool)

(assert (=> d!861883 (=> (not res!1274155) (not e!1944113))))

(assert (=> d!861883 (= res!1274155 (validRegex!4328 lt!1057648))))

(assert (=> d!861883 (= lt!1057648 e!1944110)))

(declare-fun c!521052 () Bool)

(assert (=> d!861883 (= c!521052 ((_ is EmptyLang!9595) (regTwo!19703 r!17423)))))

(assert (=> d!861883 (validRegex!4328 (regTwo!19703 r!17423))))

(assert (=> d!861883 (= (simplify!550 (regTwo!19703 r!17423)) lt!1057648)))

(declare-fun b!3112377 () Bool)

(assert (=> b!3112377 (= e!1944106 lt!1057646)))

(declare-fun b!3112378 () Bool)

(assert (=> b!3112378 (= e!1944108 call!220500)))

(declare-fun b!3112379 () Bool)

(assert (=> b!3112379 (= e!1944107 e!1944115)))

(assert (=> b!3112379 (= lt!1057644 call!220501)))

(assert (=> b!3112379 (= lt!1057649 call!220496)))

(declare-fun c!521043 () Bool)

(assert (=> b!3112379 (= c!521043 call!220499)))

(declare-fun bm!220494 () Bool)

(assert (=> bm!220494 (= call!220502 (simplify!550 (ite c!521047 (reg!9924 (regTwo!19703 r!17423)) (ite c!521044 (regTwo!19703 (regTwo!19703 r!17423)) (regOne!19702 (regTwo!19703 r!17423))))))))

(declare-fun bm!220495 () Bool)

(assert (=> bm!220495 (= call!220497 (isEmptyExpr!648 (ite c!521047 lt!1057645 lt!1057646)))))

(declare-fun bm!220496 () Bool)

(assert (=> bm!220496 (= call!220498 (isEmptyLang!646 (ite c!521047 lt!1057645 (ite c!521044 lt!1057649 lt!1057647))))))

(declare-fun b!3112380 () Bool)

(assert (=> b!3112380 (= e!1944118 EmptyExpr!9595)))

(declare-fun bm!220497 () Bool)

(assert (=> bm!220497 (= call!220499 (isEmptyLang!646 (ite c!521044 lt!1057644 lt!1057646)))))

(declare-fun b!3112381 () Bool)

(assert (=> b!3112381 (= e!1944110 e!1944112)))

(declare-fun c!521049 () Bool)

(assert (=> b!3112381 (= c!521049 ((_ is ElementMatch!9595) (regTwo!19703 r!17423)))))

(assert (= (and d!861883 c!521052) b!3112371))

(assert (= (and d!861883 (not c!521052)) b!3112381))

(assert (= (and b!3112381 c!521049) b!3112361))

(assert (= (and b!3112381 (not c!521049)) b!3112376))

(assert (= (and b!3112376 c!521051) b!3112380))

(assert (= (and b!3112376 (not c!521051)) b!3112360))

(assert (= (and b!3112360 c!521047) b!3112370))

(assert (= (and b!3112360 (not c!521047)) b!3112375))

(assert (= (and b!3112370 (not res!1274153)) b!3112366))

(assert (= (and b!3112370 c!521046) b!3112357))

(assert (= (and b!3112370 (not c!521046)) b!3112372))

(assert (= (and b!3112375 c!521044) b!3112379))

(assert (= (and b!3112375 (not c!521044)) b!3112367))

(assert (= (and b!3112379 c!521043) b!3112374))

(assert (= (and b!3112379 (not c!521043)) b!3112365))

(assert (= (and b!3112365 c!521048) b!3112358))

(assert (= (and b!3112365 (not c!521048)) b!3112373))

(assert (= (and b!3112367 (not res!1274154)) b!3112378))

(assert (= (and b!3112367 c!521045) b!3112363))

(assert (= (and b!3112367 (not c!521045)) b!3112368))

(assert (= (and b!3112368 c!521050) b!3112369))

(assert (= (and b!3112368 (not c!521050)) b!3112362))

(assert (= (and b!3112362 c!521053) b!3112377))

(assert (= (and b!3112362 (not c!521053)) b!3112364))

(assert (= (or b!3112379 b!3112367) bm!220492))

(assert (= (or b!3112379 b!3112367) bm!220491))

(assert (= (or b!3112365 b!3112378) bm!220493))

(assert (= (or b!3112379 b!3112367) bm!220497))

(assert (= (or b!3112366 b!3112368) bm!220495))

(assert (= (or b!3112370 bm!220491) bm!220494))

(assert (= (or b!3112370 bm!220493) bm!220496))

(assert (= (and d!861883 res!1274155) b!3112359))

(declare-fun m!3405187 () Bool)

(assert (=> bm!220497 m!3405187))

(declare-fun m!3405189 () Bool)

(assert (=> bm!220494 m!3405189))

(declare-fun m!3405191 () Bool)

(assert (=> b!3112359 m!3405191))

(assert (=> b!3112359 m!3405041))

(declare-fun m!3405193 () Bool)

(assert (=> bm!220496 m!3405193))

(declare-fun m!3405195 () Bool)

(assert (=> b!3112362 m!3405195))

(declare-fun m!3405197 () Bool)

(assert (=> bm!220492 m!3405197))

(declare-fun m!3405199 () Bool)

(assert (=> bm!220495 m!3405199))

(declare-fun m!3405201 () Bool)

(assert (=> d!861883 m!3405201))

(assert (=> d!861883 m!3404977))

(assert (=> b!3111790 d!861883))

(declare-fun b!3112382 () Bool)

(declare-fun e!1944131 () Regex!9595)

(assert (=> b!3112382 (= e!1944131 EmptyExpr!9595)))

(declare-fun b!3112383 () Bool)

(declare-fun e!1944125 () Regex!9595)

(declare-fun lt!1057650 () Regex!9595)

(assert (=> b!3112383 (= e!1944125 lt!1057650)))

(declare-fun b!3112384 () Bool)

(declare-fun e!1944127 () Bool)

(declare-fun lt!1057654 () Regex!9595)

(assert (=> b!3112384 (= e!1944127 (= (nullable!3237 lt!1057654) (nullable!3237 (regOne!19703 r!17423))))))

(declare-fun b!3112385 () Bool)

(declare-fun e!1944132 () Regex!9595)

(declare-fun e!1944130 () Regex!9595)

(assert (=> b!3112385 (= e!1944132 e!1944130)))

(declare-fun c!521058 () Bool)

(assert (=> b!3112385 (= c!521058 ((_ is Star!9595) (regOne!19703 r!17423)))))

(declare-fun b!3112386 () Bool)

(declare-fun e!1944126 () Regex!9595)

(assert (=> b!3112386 (= e!1944126 (regOne!19703 r!17423))))

(declare-fun bm!220498 () Bool)

(declare-fun call!220503 () Regex!9595)

(declare-fun call!220509 () Regex!9595)

(assert (=> bm!220498 (= call!220503 call!220509)))

(declare-fun b!3112387 () Bool)

(declare-fun e!1944123 () Regex!9595)

(declare-fun e!1944120 () Regex!9595)

(assert (=> b!3112387 (= e!1944123 e!1944120)))

(declare-fun c!521064 () Bool)

(declare-fun lt!1057653 () Regex!9595)

(assert (=> b!3112387 (= c!521064 (isEmptyExpr!648 lt!1057653))))

(declare-fun bm!220499 () Bool)

(declare-fun call!220508 () Regex!9595)

(declare-fun c!521055 () Bool)

(assert (=> bm!220499 (= call!220508 (simplify!550 (ite c!521055 (regOne!19703 (regOne!19703 r!17423)) (regTwo!19702 (regOne!19703 r!17423)))))))

(declare-fun b!3112389 () Bool)

(declare-fun lt!1057652 () Regex!9595)

(assert (=> b!3112389 (= e!1944120 (Concat!14916 lt!1057652 lt!1057653))))

(declare-fun b!3112390 () Bool)

(declare-fun c!521059 () Bool)

(declare-fun call!220507 () Bool)

(assert (=> b!3112390 (= c!521059 call!220507)))

(declare-fun e!1944129 () Regex!9595)

(assert (=> b!3112390 (= e!1944129 e!1944125)))

(declare-fun b!3112391 () Bool)

(declare-fun e!1944119 () Bool)

(declare-fun call!220504 () Bool)

(assert (=> b!3112391 (= e!1944119 call!220504)))

(declare-fun b!3112392 () Bool)

(declare-fun e!1944121 () Regex!9595)

(declare-fun e!1944128 () Regex!9595)

(assert (=> b!3112392 (= e!1944121 e!1944128)))

(assert (=> b!3112392 (= lt!1057652 call!220503)))

(assert (=> b!3112392 (= lt!1057653 call!220508)))

(declare-fun res!1274157 () Bool)

(declare-fun call!220506 () Bool)

(assert (=> b!3112392 (= res!1274157 call!220506)))

(declare-fun e!1944122 () Bool)

(assert (=> b!3112392 (=> res!1274157 e!1944122)))

(declare-fun c!521056 () Bool)

(assert (=> b!3112392 (= c!521056 e!1944122)))

(declare-fun bm!220500 () Bool)

(declare-fun call!220505 () Bool)

(assert (=> bm!220500 (= call!220507 call!220505)))

(declare-fun b!3112393 () Bool)

(declare-fun c!521061 () Bool)

(assert (=> b!3112393 (= c!521061 call!220504)))

(assert (=> b!3112393 (= e!1944128 e!1944123)))

(declare-fun b!3112394 () Bool)

(assert (=> b!3112394 (= e!1944123 lt!1057653)))

(declare-fun b!3112395 () Bool)

(declare-fun c!521057 () Bool)

(assert (=> b!3112395 (= c!521057 e!1944119)))

(declare-fun res!1274156 () Bool)

(assert (=> b!3112395 (=> res!1274156 e!1944119)))

(assert (=> b!3112395 (= res!1274156 call!220505)))

(declare-fun lt!1057651 () Regex!9595)

(assert (=> b!3112395 (= lt!1057651 call!220509)))

(assert (=> b!3112395 (= e!1944130 e!1944131)))

(declare-fun b!3112396 () Bool)

(declare-fun e!1944124 () Regex!9595)

(assert (=> b!3112396 (= e!1944124 EmptyLang!9595)))

(declare-fun b!3112397 () Bool)

(assert (=> b!3112397 (= e!1944131 (Star!9595 lt!1057651))))

(declare-fun b!3112398 () Bool)

(declare-fun lt!1057655 () Regex!9595)

(assert (=> b!3112398 (= e!1944125 (Union!9595 lt!1057650 lt!1057655))))

(declare-fun b!3112399 () Bool)

(assert (=> b!3112399 (= e!1944129 lt!1057655)))

(declare-fun b!3112400 () Bool)

(assert (=> b!3112400 (= c!521055 ((_ is Union!9595) (regOne!19703 r!17423)))))

(assert (=> b!3112400 (= e!1944130 e!1944121)))

(declare-fun b!3112401 () Bool)

(declare-fun c!521062 () Bool)

(assert (=> b!3112401 (= c!521062 ((_ is EmptyExpr!9595) (regOne!19703 r!17423)))))

(assert (=> b!3112401 (= e!1944126 e!1944132)))

(declare-fun b!3112388 () Bool)

(assert (=> b!3112388 (= e!1944128 EmptyLang!9595)))

(declare-fun d!861885 () Bool)

(assert (=> d!861885 e!1944127))

(declare-fun res!1274158 () Bool)

(assert (=> d!861885 (=> (not res!1274158) (not e!1944127))))

(assert (=> d!861885 (= res!1274158 (validRegex!4328 lt!1057654))))

(assert (=> d!861885 (= lt!1057654 e!1944124)))

(declare-fun c!521063 () Bool)

(assert (=> d!861885 (= c!521063 ((_ is EmptyLang!9595) (regOne!19703 r!17423)))))

(assert (=> d!861885 (validRegex!4328 (regOne!19703 r!17423))))

(assert (=> d!861885 (= (simplify!550 (regOne!19703 r!17423)) lt!1057654)))

(declare-fun b!3112402 () Bool)

(assert (=> b!3112402 (= e!1944120 lt!1057652)))

(declare-fun b!3112403 () Bool)

(assert (=> b!3112403 (= e!1944122 call!220507)))

(declare-fun b!3112404 () Bool)

(assert (=> b!3112404 (= e!1944121 e!1944129)))

(assert (=> b!3112404 (= lt!1057650 call!220508)))

(assert (=> b!3112404 (= lt!1057655 call!220503)))

(declare-fun c!521054 () Bool)

(assert (=> b!3112404 (= c!521054 call!220506)))

(declare-fun bm!220501 () Bool)

(assert (=> bm!220501 (= call!220509 (simplify!550 (ite c!521058 (reg!9924 (regOne!19703 r!17423)) (ite c!521055 (regTwo!19703 (regOne!19703 r!17423)) (regOne!19702 (regOne!19703 r!17423))))))))

(declare-fun bm!220502 () Bool)

(assert (=> bm!220502 (= call!220504 (isEmptyExpr!648 (ite c!521058 lt!1057651 lt!1057652)))))

(declare-fun bm!220503 () Bool)

(assert (=> bm!220503 (= call!220505 (isEmptyLang!646 (ite c!521058 lt!1057651 (ite c!521055 lt!1057655 lt!1057653))))))

(declare-fun b!3112405 () Bool)

(assert (=> b!3112405 (= e!1944132 EmptyExpr!9595)))

(declare-fun bm!220504 () Bool)

(assert (=> bm!220504 (= call!220506 (isEmptyLang!646 (ite c!521055 lt!1057650 lt!1057652)))))

(declare-fun b!3112406 () Bool)

(assert (=> b!3112406 (= e!1944124 e!1944126)))

(declare-fun c!521060 () Bool)

(assert (=> b!3112406 (= c!521060 ((_ is ElementMatch!9595) (regOne!19703 r!17423)))))

(assert (= (and d!861885 c!521063) b!3112396))

(assert (= (and d!861885 (not c!521063)) b!3112406))

(assert (= (and b!3112406 c!521060) b!3112386))

(assert (= (and b!3112406 (not c!521060)) b!3112401))

(assert (= (and b!3112401 c!521062) b!3112405))

(assert (= (and b!3112401 (not c!521062)) b!3112385))

(assert (= (and b!3112385 c!521058) b!3112395))

(assert (= (and b!3112385 (not c!521058)) b!3112400))

(assert (= (and b!3112395 (not res!1274156)) b!3112391))

(assert (= (and b!3112395 c!521057) b!3112382))

(assert (= (and b!3112395 (not c!521057)) b!3112397))

(assert (= (and b!3112400 c!521055) b!3112404))

(assert (= (and b!3112400 (not c!521055)) b!3112392))

(assert (= (and b!3112404 c!521054) b!3112399))

(assert (= (and b!3112404 (not c!521054)) b!3112390))

(assert (= (and b!3112390 c!521059) b!3112383))

(assert (= (and b!3112390 (not c!521059)) b!3112398))

(assert (= (and b!3112392 (not res!1274157)) b!3112403))

(assert (= (and b!3112392 c!521056) b!3112388))

(assert (= (and b!3112392 (not c!521056)) b!3112393))

(assert (= (and b!3112393 c!521061) b!3112394))

(assert (= (and b!3112393 (not c!521061)) b!3112387))

(assert (= (and b!3112387 c!521064) b!3112402))

(assert (= (and b!3112387 (not c!521064)) b!3112389))

(assert (= (or b!3112404 b!3112392) bm!220499))

(assert (= (or b!3112404 b!3112392) bm!220498))

(assert (= (or b!3112390 b!3112403) bm!220500))

(assert (= (or b!3112404 b!3112392) bm!220504))

(assert (= (or b!3112391 b!3112393) bm!220502))

(assert (= (or b!3112395 bm!220498) bm!220501))

(assert (= (or b!3112395 bm!220500) bm!220503))

(assert (= (and d!861885 res!1274158) b!3112384))

(declare-fun m!3405203 () Bool)

(assert (=> bm!220504 m!3405203))

(declare-fun m!3405205 () Bool)

(assert (=> bm!220501 m!3405205))

(declare-fun m!3405207 () Bool)

(assert (=> b!3112384 m!3405207))

(declare-fun m!3405209 () Bool)

(assert (=> b!3112384 m!3405209))

(declare-fun m!3405211 () Bool)

(assert (=> bm!220503 m!3405211))

(declare-fun m!3405213 () Bool)

(assert (=> b!3112387 m!3405213))

(declare-fun m!3405215 () Bool)

(assert (=> bm!220499 m!3405215))

(declare-fun m!3405217 () Bool)

(assert (=> bm!220502 m!3405217))

(declare-fun m!3405219 () Bool)

(assert (=> d!861885 m!3405219))

(assert (=> d!861885 m!3405007))

(assert (=> b!3111790 d!861885))

(declare-fun b!3112407 () Bool)

(declare-fun res!1274162 () Bool)

(declare-fun e!1944137 () Bool)

(assert (=> b!3112407 (=> res!1274162 e!1944137)))

(assert (=> b!3112407 (= res!1274162 (not (isEmpty!19683 (tail!5117 s!11993))))))

(declare-fun b!3112408 () Bool)

(declare-fun e!1944138 () Bool)

(assert (=> b!3112408 (= e!1944138 (nullable!3237 (Union!9595 lt!1057572 lt!1057570)))))

(declare-fun b!3112409 () Bool)

(declare-fun res!1274161 () Bool)

(declare-fun e!1944133 () Bool)

(assert (=> b!3112409 (=> (not res!1274161) (not e!1944133))))

(assert (=> b!3112409 (= res!1274161 (isEmpty!19683 (tail!5117 s!11993)))))

(declare-fun d!861887 () Bool)

(declare-fun e!1944136 () Bool)

(assert (=> d!861887 e!1944136))

(declare-fun c!521065 () Bool)

(assert (=> d!861887 (= c!521065 ((_ is EmptyExpr!9595) (Union!9595 lt!1057572 lt!1057570)))))

(declare-fun lt!1057656 () Bool)

(assert (=> d!861887 (= lt!1057656 e!1944138)))

(declare-fun c!521067 () Bool)

(assert (=> d!861887 (= c!521067 (isEmpty!19683 s!11993))))

(assert (=> d!861887 (validRegex!4328 (Union!9595 lt!1057572 lt!1057570))))

(assert (=> d!861887 (= (matchR!4477 (Union!9595 lt!1057572 lt!1057570) s!11993) lt!1057656)))

(declare-fun b!3112410 () Bool)

(assert (=> b!3112410 (= e!1944137 (not (= (head!6891 s!11993) (c!520893 (Union!9595 lt!1057572 lt!1057570)))))))

(declare-fun b!3112411 () Bool)

(declare-fun e!1944135 () Bool)

(assert (=> b!3112411 (= e!1944135 (not lt!1057656))))

(declare-fun b!3112412 () Bool)

(declare-fun e!1944134 () Bool)

(assert (=> b!3112412 (= e!1944134 e!1944137)))

(declare-fun res!1274163 () Bool)

(assert (=> b!3112412 (=> res!1274163 e!1944137)))

(declare-fun call!220510 () Bool)

(assert (=> b!3112412 (= res!1274163 call!220510)))

(declare-fun b!3112413 () Bool)

(assert (=> b!3112413 (= e!1944138 (matchR!4477 (derivativeStep!2832 (Union!9595 lt!1057572 lt!1057570) (head!6891 s!11993)) (tail!5117 s!11993)))))

(declare-fun b!3112414 () Bool)

(declare-fun res!1274166 () Bool)

(assert (=> b!3112414 (=> (not res!1274166) (not e!1944133))))

(assert (=> b!3112414 (= res!1274166 (not call!220510))))

(declare-fun b!3112415 () Bool)

(assert (=> b!3112415 (= e!1944136 e!1944135)))

(declare-fun c!521066 () Bool)

(assert (=> b!3112415 (= c!521066 ((_ is EmptyLang!9595) (Union!9595 lt!1057572 lt!1057570)))))

(declare-fun b!3112416 () Bool)

(declare-fun res!1274159 () Bool)

(declare-fun e!1944139 () Bool)

(assert (=> b!3112416 (=> res!1274159 e!1944139)))

(assert (=> b!3112416 (= res!1274159 (not ((_ is ElementMatch!9595) (Union!9595 lt!1057572 lt!1057570))))))

(assert (=> b!3112416 (= e!1944135 e!1944139)))

(declare-fun b!3112417 () Bool)

(assert (=> b!3112417 (= e!1944136 (= lt!1057656 call!220510))))

(declare-fun b!3112418 () Bool)

(assert (=> b!3112418 (= e!1944133 (= (head!6891 s!11993) (c!520893 (Union!9595 lt!1057572 lt!1057570))))))

(declare-fun b!3112419 () Bool)

(declare-fun res!1274164 () Bool)

(assert (=> b!3112419 (=> res!1274164 e!1944139)))

(assert (=> b!3112419 (= res!1274164 e!1944133)))

(declare-fun res!1274165 () Bool)

(assert (=> b!3112419 (=> (not res!1274165) (not e!1944133))))

(assert (=> b!3112419 (= res!1274165 lt!1057656)))

(declare-fun bm!220505 () Bool)

(assert (=> bm!220505 (= call!220510 (isEmpty!19683 s!11993))))

(declare-fun b!3112420 () Bool)

(assert (=> b!3112420 (= e!1944139 e!1944134)))

(declare-fun res!1274160 () Bool)

(assert (=> b!3112420 (=> (not res!1274160) (not e!1944134))))

(assert (=> b!3112420 (= res!1274160 (not lt!1057656))))

(assert (= (and d!861887 c!521067) b!3112408))

(assert (= (and d!861887 (not c!521067)) b!3112413))

(assert (= (and d!861887 c!521065) b!3112417))

(assert (= (and d!861887 (not c!521065)) b!3112415))

(assert (= (and b!3112415 c!521066) b!3112411))

(assert (= (and b!3112415 (not c!521066)) b!3112416))

(assert (= (and b!3112416 (not res!1274159)) b!3112419))

(assert (= (and b!3112419 res!1274165) b!3112414))

(assert (= (and b!3112414 res!1274166) b!3112409))

(assert (= (and b!3112409 res!1274161) b!3112418))

(assert (= (and b!3112419 (not res!1274164)) b!3112420))

(assert (= (and b!3112420 res!1274160) b!3112412))

(assert (= (and b!3112412 (not res!1274163)) b!3112407))

(assert (= (and b!3112407 (not res!1274162)) b!3112410))

(assert (= (or b!3112417 b!3112412 b!3112414) bm!220505))

(assert (=> b!3112413 m!3405021))

(assert (=> b!3112413 m!3405021))

(declare-fun m!3405221 () Bool)

(assert (=> b!3112413 m!3405221))

(assert (=> b!3112413 m!3405025))

(assert (=> b!3112413 m!3405221))

(assert (=> b!3112413 m!3405025))

(declare-fun m!3405223 () Bool)

(assert (=> b!3112413 m!3405223))

(assert (=> b!3112410 m!3405021))

(declare-fun m!3405225 () Bool)

(assert (=> b!3112408 m!3405225))

(assert (=> b!3112407 m!3405025))

(assert (=> b!3112407 m!3405025))

(assert (=> b!3112407 m!3405031))

(assert (=> d!861887 m!3405033))

(declare-fun m!3405227 () Bool)

(assert (=> d!861887 m!3405227))

(assert (=> bm!220505 m!3405033))

(assert (=> b!3112409 m!3405025))

(assert (=> b!3112409 m!3405025))

(assert (=> b!3112409 m!3405031))

(assert (=> b!3112418 m!3405021))

(assert (=> b!3111788 d!861887))

(declare-fun b!3112432 () Bool)

(declare-fun e!1944142 () Bool)

(declare-fun tp!976538 () Bool)

(declare-fun tp!976534 () Bool)

(assert (=> b!3112432 (= e!1944142 (and tp!976538 tp!976534))))

(declare-fun b!3112434 () Bool)

(declare-fun tp!976537 () Bool)

(declare-fun tp!976535 () Bool)

(assert (=> b!3112434 (= e!1944142 (and tp!976537 tp!976535))))

(assert (=> b!3111784 (= tp!976483 e!1944142)))

(declare-fun b!3112433 () Bool)

(declare-fun tp!976536 () Bool)

(assert (=> b!3112433 (= e!1944142 tp!976536)))

(declare-fun b!3112431 () Bool)

(assert (=> b!3112431 (= e!1944142 tp_is_empty!16753)))

(assert (= (and b!3111784 ((_ is ElementMatch!9595) (reg!9924 r!17423))) b!3112431))

(assert (= (and b!3111784 ((_ is Concat!14916) (reg!9924 r!17423))) b!3112432))

(assert (= (and b!3111784 ((_ is Star!9595) (reg!9924 r!17423))) b!3112433))

(assert (= (and b!3111784 ((_ is Union!9595) (reg!9924 r!17423))) b!3112434))

(declare-fun b!3112439 () Bool)

(declare-fun e!1944145 () Bool)

(declare-fun tp!976541 () Bool)

(assert (=> b!3112439 (= e!1944145 (and tp_is_empty!16753 tp!976541))))

(assert (=> b!3111789 (= tp!976480 e!1944145)))

(assert (= (and b!3111789 ((_ is Cons!35336) (t!234525 s!11993))) b!3112439))

(declare-fun b!3112441 () Bool)

(declare-fun e!1944146 () Bool)

(declare-fun tp!976546 () Bool)

(declare-fun tp!976542 () Bool)

(assert (=> b!3112441 (= e!1944146 (and tp!976546 tp!976542))))

(declare-fun b!3112443 () Bool)

(declare-fun tp!976545 () Bool)

(declare-fun tp!976543 () Bool)

(assert (=> b!3112443 (= e!1944146 (and tp!976545 tp!976543))))

(assert (=> b!3111783 (= tp!976482 e!1944146)))

(declare-fun b!3112442 () Bool)

(declare-fun tp!976544 () Bool)

(assert (=> b!3112442 (= e!1944146 tp!976544)))

(declare-fun b!3112440 () Bool)

(assert (=> b!3112440 (= e!1944146 tp_is_empty!16753)))

(assert (= (and b!3111783 ((_ is ElementMatch!9595) (regOne!19702 r!17423))) b!3112440))

(assert (= (and b!3111783 ((_ is Concat!14916) (regOne!19702 r!17423))) b!3112441))

(assert (= (and b!3111783 ((_ is Star!9595) (regOne!19702 r!17423))) b!3112442))

(assert (= (and b!3111783 ((_ is Union!9595) (regOne!19702 r!17423))) b!3112443))

(declare-fun b!3112445 () Bool)

(declare-fun e!1944147 () Bool)

(declare-fun tp!976551 () Bool)

(declare-fun tp!976547 () Bool)

(assert (=> b!3112445 (= e!1944147 (and tp!976551 tp!976547))))

(declare-fun b!3112447 () Bool)

(declare-fun tp!976550 () Bool)

(declare-fun tp!976548 () Bool)

(assert (=> b!3112447 (= e!1944147 (and tp!976550 tp!976548))))

(assert (=> b!3111783 (= tp!976485 e!1944147)))

(declare-fun b!3112446 () Bool)

(declare-fun tp!976549 () Bool)

(assert (=> b!3112446 (= e!1944147 tp!976549)))

(declare-fun b!3112444 () Bool)

(assert (=> b!3112444 (= e!1944147 tp_is_empty!16753)))

(assert (= (and b!3111783 ((_ is ElementMatch!9595) (regTwo!19702 r!17423))) b!3112444))

(assert (= (and b!3111783 ((_ is Concat!14916) (regTwo!19702 r!17423))) b!3112445))

(assert (= (and b!3111783 ((_ is Star!9595) (regTwo!19702 r!17423))) b!3112446))

(assert (= (and b!3111783 ((_ is Union!9595) (regTwo!19702 r!17423))) b!3112447))

(declare-fun b!3112449 () Bool)

(declare-fun e!1944148 () Bool)

(declare-fun tp!976556 () Bool)

(declare-fun tp!976552 () Bool)

(assert (=> b!3112449 (= e!1944148 (and tp!976556 tp!976552))))

(declare-fun b!3112451 () Bool)

(declare-fun tp!976555 () Bool)

(declare-fun tp!976553 () Bool)

(assert (=> b!3112451 (= e!1944148 (and tp!976555 tp!976553))))

(assert (=> b!3111793 (= tp!976484 e!1944148)))

(declare-fun b!3112450 () Bool)

(declare-fun tp!976554 () Bool)

(assert (=> b!3112450 (= e!1944148 tp!976554)))

(declare-fun b!3112448 () Bool)

(assert (=> b!3112448 (= e!1944148 tp_is_empty!16753)))

(assert (= (and b!3111793 ((_ is ElementMatch!9595) (regOne!19703 r!17423))) b!3112448))

(assert (= (and b!3111793 ((_ is Concat!14916) (regOne!19703 r!17423))) b!3112449))

(assert (= (and b!3111793 ((_ is Star!9595) (regOne!19703 r!17423))) b!3112450))

(assert (= (and b!3111793 ((_ is Union!9595) (regOne!19703 r!17423))) b!3112451))

(declare-fun b!3112453 () Bool)

(declare-fun e!1944149 () Bool)

(declare-fun tp!976561 () Bool)

(declare-fun tp!976557 () Bool)

(assert (=> b!3112453 (= e!1944149 (and tp!976561 tp!976557))))

(declare-fun b!3112455 () Bool)

(declare-fun tp!976560 () Bool)

(declare-fun tp!976558 () Bool)

(assert (=> b!3112455 (= e!1944149 (and tp!976560 tp!976558))))

(assert (=> b!3111793 (= tp!976481 e!1944149)))

(declare-fun b!3112454 () Bool)

(declare-fun tp!976559 () Bool)

(assert (=> b!3112454 (= e!1944149 tp!976559)))

(declare-fun b!3112452 () Bool)

(assert (=> b!3112452 (= e!1944149 tp_is_empty!16753)))

(assert (= (and b!3111793 ((_ is ElementMatch!9595) (regTwo!19703 r!17423))) b!3112452))

(assert (= (and b!3111793 ((_ is Concat!14916) (regTwo!19703 r!17423))) b!3112453))

(assert (= (and b!3111793 ((_ is Star!9595) (regTwo!19703 r!17423))) b!3112454))

(assert (= (and b!3111793 ((_ is Union!9595) (regTwo!19703 r!17423))) b!3112455))

(check-sat (not d!861825) (not d!861867) (not b!3111878) (not b!3112288) (not b!3112387) (not bm!220473) (not b!3111879) (not b!3112384) tp_is_empty!16753 (not d!861887) (not b!3112256) (not b!3112434) (not b!3112362) (not b!3112445) (not b!3111889) (not d!861869) (not d!861883) (not b!3112242) (not bm!220504) (not b!3112447) (not b!3112289) (not b!3112418) (not b!3112432) (not b!3111860) (not b!3112257) (not bm!220408) (not bm!220494) (not b!3111859) (not bm!220496) (not b!3112266) (not b!3111858) (not d!861877) (not b!3112407) (not b!3112454) (not b!3112453) (not b!3112408) (not b!3112293) (not b!3112273) (not b!3112306) (not bm!220502) (not b!3112245) (not b!3112287) (not b!3111884) (not b!3112443) (not b!3111930) (not b!3111880) (not b!3112282) (not b!3112439) (not bm!220472) (not b!3112433) (not b!3112442) (not bm!220470) (not bm!220501) (not b!3112455) (not b!3111881) (not d!861875) (not b!3112413) (not bm!220467) (not bm!220492) (not b!3111861) (not b!3112441) (not d!861833) (not bm!220476) (not b!3112305) (not b!3112446) (not b!3112255) (not b!3112359) (not b!3112298) (not bm!220469) (not b!3112410) (not b!3112261) (not b!3112450) (not bm!220475) (not bm!220468) (not d!861835) (not b!3111864) (not bm!220416) (not bm!220418) (not b!3112290) (not b!3111869) (not bm!220499) (not bm!220505) (not b!3112451) (not b!3112258) (not d!861885) (not bm!220495) (not bm!220409) (not bm!220503) (not b!3112409) (not bm!220497) (not b!3112449))
(check-sat)
