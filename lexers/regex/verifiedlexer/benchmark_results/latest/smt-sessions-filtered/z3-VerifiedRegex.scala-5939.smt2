; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!290872 () Bool)

(assert start!290872)

(declare-fun res!1247606 () Bool)

(declare-fun e!1901840 () Bool)

(assert (=> start!290872 (=> (not res!1247606) (not e!1901840))))

(declare-datatypes ((C!19044 0))(
  ( (C!19045 (val!11558 Int)) )
))
(declare-datatypes ((Regex!9429 0))(
  ( (ElementMatch!9429 (c!501209 C!19044)) (Concat!14750 (regOne!19370 Regex!9429) (regTwo!19370 Regex!9429)) (EmptyExpr!9429) (Star!9429 (reg!9758 Regex!9429)) (EmptyLang!9429) (Union!9429 (regOne!19371 Regex!9429) (regTwo!19371 Regex!9429)) )
))
(declare-fun r!17423 () Regex!9429)

(declare-fun validRegex!4162 (Regex!9429) Bool)

(assert (=> start!290872 (= res!1247606 (validRegex!4162 r!17423))))

(assert (=> start!290872 e!1901840))

(declare-fun e!1901838 () Bool)

(assert (=> start!290872 e!1901838))

(declare-fun e!1901841 () Bool)

(assert (=> start!290872 e!1901841))

(declare-fun b!3032607 () Bool)

(declare-fun tp!960970 () Bool)

(declare-fun tp!960972 () Bool)

(assert (=> b!3032607 (= e!1901838 (and tp!960970 tp!960972))))

(declare-fun b!3032608 () Bool)

(declare-fun e!1901842 () Bool)

(assert (=> b!3032608 (= e!1901842 (validRegex!4162 (regTwo!19371 r!17423)))))

(declare-fun b!3032609 () Bool)

(declare-fun e!1901839 () Bool)

(declare-datatypes ((List!35294 0))(
  ( (Nil!35170) (Cons!35170 (h!40590 C!19044) (t!234359 List!35294)) )
))
(declare-fun s!11993 () List!35294)

(declare-fun matchR!4311 (Regex!9429 List!35294) Bool)

(assert (=> b!3032609 (= e!1901839 (matchR!4311 (regTwo!19371 r!17423) s!11993))))

(declare-fun b!3032610 () Bool)

(declare-fun e!1901843 () Bool)

(assert (=> b!3032610 (= e!1901840 (not e!1901843))))

(declare-fun res!1247607 () Bool)

(assert (=> b!3032610 (=> res!1247607 e!1901843)))

(declare-fun lt!1046181 () Bool)

(get-info :version)

(assert (=> b!3032610 (= res!1247607 (or (not lt!1046181) ((_ is Concat!14750) r!17423) (not ((_ is Union!9429) r!17423))))))

(declare-fun matchRSpec!1566 (Regex!9429 List!35294) Bool)

(assert (=> b!3032610 (= lt!1046181 (matchRSpec!1566 r!17423 s!11993))))

(assert (=> b!3032610 (= lt!1046181 (matchR!4311 r!17423 s!11993))))

(declare-datatypes ((Unit!49281 0))(
  ( (Unit!49282) )
))
(declare-fun lt!1046183 () Unit!49281)

(declare-fun mainMatchTheorem!1566 (Regex!9429 List!35294) Unit!49281)

(assert (=> b!3032610 (= lt!1046183 (mainMatchTheorem!1566 r!17423 s!11993))))

(declare-fun b!3032611 () Bool)

(declare-fun tp_is_empty!16421 () Bool)

(assert (=> b!3032611 (= e!1901838 tp_is_empty!16421)))

(declare-fun b!3032612 () Bool)

(declare-fun tp!960968 () Bool)

(declare-fun tp!960973 () Bool)

(assert (=> b!3032612 (= e!1901838 (and tp!960968 tp!960973))))

(declare-fun b!3032613 () Bool)

(declare-fun tp!960969 () Bool)

(assert (=> b!3032613 (= e!1901838 tp!960969)))

(declare-fun b!3032614 () Bool)

(declare-fun tp!960971 () Bool)

(assert (=> b!3032614 (= e!1901841 (and tp_is_empty!16421 tp!960971))))

(declare-fun b!3032615 () Bool)

(assert (=> b!3032615 (= e!1901843 e!1901842)))

(declare-fun res!1247605 () Bool)

(assert (=> b!3032615 (=> res!1247605 e!1901842)))

(declare-fun lt!1046184 () Bool)

(assert (=> b!3032615 (= res!1247605 lt!1046184)))

(assert (=> b!3032615 e!1901839))

(declare-fun res!1247608 () Bool)

(assert (=> b!3032615 (=> res!1247608 e!1901839)))

(assert (=> b!3032615 (= res!1247608 lt!1046184)))

(assert (=> b!3032615 (= lt!1046184 (matchR!4311 (regOne!19371 r!17423) s!11993))))

(declare-fun lt!1046182 () Unit!49281)

(declare-fun lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!306 (Regex!9429 Regex!9429 List!35294) Unit!49281)

(assert (=> b!3032615 (= lt!1046182 (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!306 (regOne!19371 r!17423) (regTwo!19371 r!17423) s!11993))))

(assert (= (and start!290872 res!1247606) b!3032610))

(assert (= (and b!3032610 (not res!1247607)) b!3032615))

(assert (= (and b!3032615 (not res!1247608)) b!3032609))

(assert (= (and b!3032615 (not res!1247605)) b!3032608))

(assert (= (and start!290872 ((_ is ElementMatch!9429) r!17423)) b!3032611))

(assert (= (and start!290872 ((_ is Concat!14750) r!17423)) b!3032612))

(assert (= (and start!290872 ((_ is Star!9429) r!17423)) b!3032613))

(assert (= (and start!290872 ((_ is Union!9429) r!17423)) b!3032607))

(assert (= (and start!290872 ((_ is Cons!35170) s!11993)) b!3032614))

(declare-fun m!3368673 () Bool)

(assert (=> b!3032608 m!3368673))

(declare-fun m!3368675 () Bool)

(assert (=> b!3032615 m!3368675))

(declare-fun m!3368677 () Bool)

(assert (=> b!3032615 m!3368677))

(declare-fun m!3368679 () Bool)

(assert (=> b!3032610 m!3368679))

(declare-fun m!3368681 () Bool)

(assert (=> b!3032610 m!3368681))

(declare-fun m!3368683 () Bool)

(assert (=> b!3032610 m!3368683))

(declare-fun m!3368685 () Bool)

(assert (=> b!3032609 m!3368685))

(declare-fun m!3368687 () Bool)

(assert (=> start!290872 m!3368687))

(check-sat (not b!3032613) (not b!3032612) (not b!3032615) (not start!290872) (not b!3032610) (not b!3032607) tp_is_empty!16421 (not b!3032609) (not b!3032614) (not b!3032608))
(check-sat)
(get-model)

(declare-fun b!3032672 () Bool)

(declare-fun res!1247641 () Bool)

(declare-fun e!1901873 () Bool)

(assert (=> b!3032672 (=> res!1247641 e!1901873)))

(declare-fun isEmpty!19470 (List!35294) Bool)

(declare-fun tail!4961 (List!35294) List!35294)

(assert (=> b!3032672 (= res!1247641 (not (isEmpty!19470 (tail!4961 s!11993))))))

(declare-fun bm!206746 () Bool)

(declare-fun call!206751 () Bool)

(assert (=> bm!206746 (= call!206751 (isEmpty!19470 s!11993))))

(declare-fun b!3032673 () Bool)

(declare-fun head!6735 (List!35294) C!19044)

(assert (=> b!3032673 (= e!1901873 (not (= (head!6735 s!11993) (c!501209 (regTwo!19371 r!17423)))))))

(declare-fun d!851390 () Bool)

(declare-fun e!1901877 () Bool)

(assert (=> d!851390 e!1901877))

(declare-fun c!501222 () Bool)

(assert (=> d!851390 (= c!501222 ((_ is EmptyExpr!9429) (regTwo!19371 r!17423)))))

(declare-fun lt!1046189 () Bool)

(declare-fun e!1901878 () Bool)

(assert (=> d!851390 (= lt!1046189 e!1901878)))

(declare-fun c!501224 () Bool)

(assert (=> d!851390 (= c!501224 (isEmpty!19470 s!11993))))

(assert (=> d!851390 (validRegex!4162 (regTwo!19371 r!17423))))

(assert (=> d!851390 (= (matchR!4311 (regTwo!19371 r!17423) s!11993) lt!1046189)))

(declare-fun b!3032674 () Bool)

(declare-fun e!1901876 () Bool)

(assert (=> b!3032674 (= e!1901877 e!1901876)))

(declare-fun c!501223 () Bool)

(assert (=> b!3032674 (= c!501223 ((_ is EmptyLang!9429) (regTwo!19371 r!17423)))))

(declare-fun b!3032675 () Bool)

(declare-fun res!1247648 () Bool)

(declare-fun e!1901875 () Bool)

(assert (=> b!3032675 (=> res!1247648 e!1901875)))

(declare-fun e!1901872 () Bool)

(assert (=> b!3032675 (= res!1247648 e!1901872)))

(declare-fun res!1247647 () Bool)

(assert (=> b!3032675 (=> (not res!1247647) (not e!1901872))))

(assert (=> b!3032675 (= res!1247647 lt!1046189)))

(declare-fun b!3032676 () Bool)

(declare-fun res!1247646 () Bool)

(assert (=> b!3032676 (=> (not res!1247646) (not e!1901872))))

(assert (=> b!3032676 (= res!1247646 (not call!206751))))

(declare-fun b!3032677 () Bool)

(declare-fun res!1247642 () Bool)

(assert (=> b!3032677 (=> (not res!1247642) (not e!1901872))))

(assert (=> b!3032677 (= res!1247642 (isEmpty!19470 (tail!4961 s!11993)))))

(declare-fun b!3032678 () Bool)

(declare-fun derivativeStep!2676 (Regex!9429 C!19044) Regex!9429)

(assert (=> b!3032678 (= e!1901878 (matchR!4311 (derivativeStep!2676 (regTwo!19371 r!17423) (head!6735 s!11993)) (tail!4961 s!11993)))))

(declare-fun b!3032679 () Bool)

(assert (=> b!3032679 (= e!1901877 (= lt!1046189 call!206751))))

(declare-fun b!3032680 () Bool)

(assert (=> b!3032680 (= e!1901872 (= (head!6735 s!11993) (c!501209 (regTwo!19371 r!17423))))))

(declare-fun b!3032681 () Bool)

(declare-fun e!1901874 () Bool)

(assert (=> b!3032681 (= e!1901874 e!1901873)))

(declare-fun res!1247645 () Bool)

(assert (=> b!3032681 (=> res!1247645 e!1901873)))

(assert (=> b!3032681 (= res!1247645 call!206751)))

(declare-fun b!3032682 () Bool)

(declare-fun nullable!3079 (Regex!9429) Bool)

(assert (=> b!3032682 (= e!1901878 (nullable!3079 (regTwo!19371 r!17423)))))

(declare-fun b!3032683 () Bool)

(assert (=> b!3032683 (= e!1901875 e!1901874)))

(declare-fun res!1247644 () Bool)

(assert (=> b!3032683 (=> (not res!1247644) (not e!1901874))))

(assert (=> b!3032683 (= res!1247644 (not lt!1046189))))

(declare-fun b!3032684 () Bool)

(declare-fun res!1247643 () Bool)

(assert (=> b!3032684 (=> res!1247643 e!1901875)))

(assert (=> b!3032684 (= res!1247643 (not ((_ is ElementMatch!9429) (regTwo!19371 r!17423))))))

(assert (=> b!3032684 (= e!1901876 e!1901875)))

(declare-fun b!3032685 () Bool)

(assert (=> b!3032685 (= e!1901876 (not lt!1046189))))

(assert (= (and d!851390 c!501224) b!3032682))

(assert (= (and d!851390 (not c!501224)) b!3032678))

(assert (= (and d!851390 c!501222) b!3032679))

(assert (= (and d!851390 (not c!501222)) b!3032674))

(assert (= (and b!3032674 c!501223) b!3032685))

(assert (= (and b!3032674 (not c!501223)) b!3032684))

(assert (= (and b!3032684 (not res!1247643)) b!3032675))

(assert (= (and b!3032675 res!1247647) b!3032676))

(assert (= (and b!3032676 res!1247646) b!3032677))

(assert (= (and b!3032677 res!1247642) b!3032680))

(assert (= (and b!3032675 (not res!1247648)) b!3032683))

(assert (= (and b!3032683 res!1247644) b!3032681))

(assert (= (and b!3032681 (not res!1247645)) b!3032672))

(assert (= (and b!3032672 (not res!1247641)) b!3032673))

(assert (= (or b!3032679 b!3032676 b!3032681) bm!206746))

(declare-fun m!3368689 () Bool)

(assert (=> b!3032673 m!3368689))

(assert (=> b!3032678 m!3368689))

(assert (=> b!3032678 m!3368689))

(declare-fun m!3368691 () Bool)

(assert (=> b!3032678 m!3368691))

(declare-fun m!3368693 () Bool)

(assert (=> b!3032678 m!3368693))

(assert (=> b!3032678 m!3368691))

(assert (=> b!3032678 m!3368693))

(declare-fun m!3368695 () Bool)

(assert (=> b!3032678 m!3368695))

(declare-fun m!3368697 () Bool)

(assert (=> d!851390 m!3368697))

(assert (=> d!851390 m!3368673))

(declare-fun m!3368699 () Bool)

(assert (=> b!3032682 m!3368699))

(assert (=> bm!206746 m!3368697))

(assert (=> b!3032680 m!3368689))

(assert (=> b!3032672 m!3368693))

(assert (=> b!3032672 m!3368693))

(declare-fun m!3368701 () Bool)

(assert (=> b!3032672 m!3368701))

(assert (=> b!3032677 m!3368693))

(assert (=> b!3032677 m!3368693))

(assert (=> b!3032677 m!3368701))

(assert (=> b!3032609 d!851390))

(declare-fun b!3032724 () Bool)

(declare-fun e!1901909 () Bool)

(declare-fun e!1901907 () Bool)

(assert (=> b!3032724 (= e!1901909 e!1901907)))

(declare-fun c!501232 () Bool)

(assert (=> b!3032724 (= c!501232 ((_ is Star!9429) (regTwo!19371 r!17423)))))

(declare-fun b!3032725 () Bool)

(declare-fun e!1901906 () Bool)

(assert (=> b!3032725 (= e!1901907 e!1901906)))

(declare-fun res!1247674 () Bool)

(assert (=> b!3032725 (= res!1247674 (not (nullable!3079 (reg!9758 (regTwo!19371 r!17423)))))))

(assert (=> b!3032725 (=> (not res!1247674) (not e!1901906))))

(declare-fun b!3032726 () Bool)

(declare-fun e!1901910 () Bool)

(declare-fun call!206759 () Bool)

(assert (=> b!3032726 (= e!1901910 call!206759)))

(declare-fun bm!206754 () Bool)

(declare-fun c!501233 () Bool)

(declare-fun call!206761 () Bool)

(assert (=> bm!206754 (= call!206761 (validRegex!4162 (ite c!501232 (reg!9758 (regTwo!19371 r!17423)) (ite c!501233 (regOne!19371 (regTwo!19371 r!17423)) (regTwo!19370 (regTwo!19371 r!17423))))))))

(declare-fun d!851394 () Bool)

(declare-fun res!1247677 () Bool)

(assert (=> d!851394 (=> res!1247677 e!1901909)))

(assert (=> d!851394 (= res!1247677 ((_ is ElementMatch!9429) (regTwo!19371 r!17423)))))

(assert (=> d!851394 (= (validRegex!4162 (regTwo!19371 r!17423)) e!1901909)))

(declare-fun b!3032727 () Bool)

(assert (=> b!3032727 (= e!1901906 call!206761)))

(declare-fun b!3032728 () Bool)

(declare-fun e!1901908 () Bool)

(assert (=> b!3032728 (= e!1901908 e!1901910)))

(declare-fun res!1247673 () Bool)

(assert (=> b!3032728 (=> (not res!1247673) (not e!1901910))))

(declare-fun call!206760 () Bool)

(assert (=> b!3032728 (= res!1247673 call!206760)))

(declare-fun bm!206755 () Bool)

(assert (=> bm!206755 (= call!206759 call!206761)))

(declare-fun b!3032729 () Bool)

(declare-fun res!1247676 () Bool)

(declare-fun e!1901912 () Bool)

(assert (=> b!3032729 (=> (not res!1247676) (not e!1901912))))

(assert (=> b!3032729 (= res!1247676 call!206759)))

(declare-fun e!1901911 () Bool)

(assert (=> b!3032729 (= e!1901911 e!1901912)))

(declare-fun b!3032730 () Bool)

(assert (=> b!3032730 (= e!1901912 call!206760)))

(declare-fun bm!206756 () Bool)

(assert (=> bm!206756 (= call!206760 (validRegex!4162 (ite c!501233 (regTwo!19371 (regTwo!19371 r!17423)) (regOne!19370 (regTwo!19371 r!17423)))))))

(declare-fun b!3032731 () Bool)

(assert (=> b!3032731 (= e!1901907 e!1901911)))

(assert (=> b!3032731 (= c!501233 ((_ is Union!9429) (regTwo!19371 r!17423)))))

(declare-fun b!3032732 () Bool)

(declare-fun res!1247675 () Bool)

(assert (=> b!3032732 (=> res!1247675 e!1901908)))

(assert (=> b!3032732 (= res!1247675 (not ((_ is Concat!14750) (regTwo!19371 r!17423))))))

(assert (=> b!3032732 (= e!1901911 e!1901908)))

(assert (= (and d!851394 (not res!1247677)) b!3032724))

(assert (= (and b!3032724 c!501232) b!3032725))

(assert (= (and b!3032724 (not c!501232)) b!3032731))

(assert (= (and b!3032725 res!1247674) b!3032727))

(assert (= (and b!3032731 c!501233) b!3032729))

(assert (= (and b!3032731 (not c!501233)) b!3032732))

(assert (= (and b!3032729 res!1247676) b!3032730))

(assert (= (and b!3032732 (not res!1247675)) b!3032728))

(assert (= (and b!3032728 res!1247673) b!3032726))

(assert (= (or b!3032729 b!3032726) bm!206755))

(assert (= (or b!3032730 b!3032728) bm!206756))

(assert (= (or b!3032727 bm!206755) bm!206754))

(declare-fun m!3368721 () Bool)

(assert (=> b!3032725 m!3368721))

(declare-fun m!3368723 () Bool)

(assert (=> bm!206754 m!3368723))

(declare-fun m!3368725 () Bool)

(assert (=> bm!206756 m!3368725))

(assert (=> b!3032608 d!851394))

(declare-fun b!3032914 () Bool)

(assert (=> b!3032914 true))

(assert (=> b!3032914 true))

(declare-fun bs!530900 () Bool)

(declare-fun b!3032911 () Bool)

(assert (= bs!530900 (and b!3032911 b!3032914)))

(declare-fun lambda!113210 () Int)

(declare-fun lambda!113209 () Int)

(assert (=> bs!530900 (not (= lambda!113210 lambda!113209))))

(assert (=> b!3032911 true))

(assert (=> b!3032911 true))

(declare-fun b!3032912 () Bool)

(declare-fun e!1902009 () Bool)

(declare-fun e!1902013 () Bool)

(assert (=> b!3032912 (= e!1902009 e!1902013)))

(declare-fun res!1247750 () Bool)

(assert (=> b!3032912 (= res!1247750 (matchRSpec!1566 (regOne!19371 r!17423) s!11993))))

(assert (=> b!3032912 (=> res!1247750 e!1902013)))

(declare-fun b!3032913 () Bool)

(declare-fun c!501271 () Bool)

(assert (=> b!3032913 (= c!501271 ((_ is Union!9429) r!17423))))

(declare-fun e!1902010 () Bool)

(assert (=> b!3032913 (= e!1902010 e!1902009)))

(declare-fun e!1902011 () Bool)

(declare-fun call!206786 () Bool)

(assert (=> b!3032914 (= e!1902011 call!206786)))

(declare-fun b!3032915 () Bool)

(declare-fun e!1902014 () Bool)

(declare-fun e!1902012 () Bool)

(assert (=> b!3032915 (= e!1902014 e!1902012)))

(declare-fun res!1247749 () Bool)

(assert (=> b!3032915 (= res!1247749 (not ((_ is EmptyLang!9429) r!17423)))))

(assert (=> b!3032915 (=> (not res!1247749) (not e!1902012))))

(declare-fun b!3032916 () Bool)

(assert (=> b!3032916 (= e!1902013 (matchRSpec!1566 (regTwo!19371 r!17423) s!11993))))

(declare-fun bm!206781 () Bool)

(declare-fun call!206787 () Bool)

(assert (=> bm!206781 (= call!206787 (isEmpty!19470 s!11993))))

(declare-fun bm!206782 () Bool)

(declare-fun c!501270 () Bool)

(declare-fun Exists!1695 (Int) Bool)

(assert (=> bm!206782 (= call!206786 (Exists!1695 (ite c!501270 lambda!113209 lambda!113210)))))

(declare-fun b!3032917 () Bool)

(declare-fun e!1902008 () Bool)

(assert (=> b!3032917 (= e!1902009 e!1902008)))

(assert (=> b!3032917 (= c!501270 ((_ is Star!9429) r!17423))))

(declare-fun b!3032918 () Bool)

(assert (=> b!3032918 (= e!1902010 (= s!11993 (Cons!35170 (c!501209 r!17423) Nil!35170)))))

(declare-fun b!3032919 () Bool)

(assert (=> b!3032919 (= e!1902014 call!206787)))

(declare-fun b!3032920 () Bool)

(declare-fun c!501268 () Bool)

(assert (=> b!3032920 (= c!501268 ((_ is ElementMatch!9429) r!17423))))

(assert (=> b!3032920 (= e!1902012 e!1902010)))

(declare-fun b!3032921 () Bool)

(declare-fun res!1247751 () Bool)

(assert (=> b!3032921 (=> res!1247751 e!1902011)))

(assert (=> b!3032921 (= res!1247751 call!206787)))

(assert (=> b!3032921 (= e!1902008 e!1902011)))

(assert (=> b!3032911 (= e!1902008 call!206786)))

(declare-fun d!851400 () Bool)

(declare-fun c!501269 () Bool)

(assert (=> d!851400 (= c!501269 ((_ is EmptyExpr!9429) r!17423))))

(assert (=> d!851400 (= (matchRSpec!1566 r!17423 s!11993) e!1902014)))

(assert (= (and d!851400 c!501269) b!3032919))

(assert (= (and d!851400 (not c!501269)) b!3032915))

(assert (= (and b!3032915 res!1247749) b!3032920))

(assert (= (and b!3032920 c!501268) b!3032918))

(assert (= (and b!3032920 (not c!501268)) b!3032913))

(assert (= (and b!3032913 c!501271) b!3032912))

(assert (= (and b!3032913 (not c!501271)) b!3032917))

(assert (= (and b!3032912 (not res!1247750)) b!3032916))

(assert (= (and b!3032917 c!501270) b!3032921))

(assert (= (and b!3032917 (not c!501270)) b!3032911))

(assert (= (and b!3032921 (not res!1247751)) b!3032914))

(assert (= (or b!3032914 b!3032911) bm!206782))

(assert (= (or b!3032919 b!3032921) bm!206781))

(declare-fun m!3368759 () Bool)

(assert (=> b!3032912 m!3368759))

(declare-fun m!3368761 () Bool)

(assert (=> b!3032916 m!3368761))

(assert (=> bm!206781 m!3368697))

(declare-fun m!3368763 () Bool)

(assert (=> bm!206782 m!3368763))

(assert (=> b!3032610 d!851400))

(declare-fun b!3032926 () Bool)

(declare-fun res!1247752 () Bool)

(declare-fun e!1902016 () Bool)

(assert (=> b!3032926 (=> res!1247752 e!1902016)))

(assert (=> b!3032926 (= res!1247752 (not (isEmpty!19470 (tail!4961 s!11993))))))

(declare-fun bm!206783 () Bool)

(declare-fun call!206788 () Bool)

(assert (=> bm!206783 (= call!206788 (isEmpty!19470 s!11993))))

(declare-fun b!3032927 () Bool)

(assert (=> b!3032927 (= e!1902016 (not (= (head!6735 s!11993) (c!501209 r!17423))))))

(declare-fun d!851412 () Bool)

(declare-fun e!1902020 () Bool)

(assert (=> d!851412 e!1902020))

(declare-fun c!501272 () Bool)

(assert (=> d!851412 (= c!501272 ((_ is EmptyExpr!9429) r!17423))))

(declare-fun lt!1046199 () Bool)

(declare-fun e!1902021 () Bool)

(assert (=> d!851412 (= lt!1046199 e!1902021)))

(declare-fun c!501274 () Bool)

(assert (=> d!851412 (= c!501274 (isEmpty!19470 s!11993))))

(assert (=> d!851412 (validRegex!4162 r!17423)))

(assert (=> d!851412 (= (matchR!4311 r!17423 s!11993) lt!1046199)))

(declare-fun b!3032928 () Bool)

(declare-fun e!1902019 () Bool)

(assert (=> b!3032928 (= e!1902020 e!1902019)))

(declare-fun c!501273 () Bool)

(assert (=> b!3032928 (= c!501273 ((_ is EmptyLang!9429) r!17423))))

(declare-fun b!3032929 () Bool)

(declare-fun res!1247759 () Bool)

(declare-fun e!1902018 () Bool)

(assert (=> b!3032929 (=> res!1247759 e!1902018)))

(declare-fun e!1902015 () Bool)

(assert (=> b!3032929 (= res!1247759 e!1902015)))

(declare-fun res!1247758 () Bool)

(assert (=> b!3032929 (=> (not res!1247758) (not e!1902015))))

(assert (=> b!3032929 (= res!1247758 lt!1046199)))

(declare-fun b!3032930 () Bool)

(declare-fun res!1247757 () Bool)

(assert (=> b!3032930 (=> (not res!1247757) (not e!1902015))))

(assert (=> b!3032930 (= res!1247757 (not call!206788))))

(declare-fun b!3032931 () Bool)

(declare-fun res!1247753 () Bool)

(assert (=> b!3032931 (=> (not res!1247753) (not e!1902015))))

(assert (=> b!3032931 (= res!1247753 (isEmpty!19470 (tail!4961 s!11993)))))

(declare-fun b!3032932 () Bool)

(assert (=> b!3032932 (= e!1902021 (matchR!4311 (derivativeStep!2676 r!17423 (head!6735 s!11993)) (tail!4961 s!11993)))))

(declare-fun b!3032933 () Bool)

(assert (=> b!3032933 (= e!1902020 (= lt!1046199 call!206788))))

(declare-fun b!3032934 () Bool)

(assert (=> b!3032934 (= e!1902015 (= (head!6735 s!11993) (c!501209 r!17423)))))

(declare-fun b!3032935 () Bool)

(declare-fun e!1902017 () Bool)

(assert (=> b!3032935 (= e!1902017 e!1902016)))

(declare-fun res!1247756 () Bool)

(assert (=> b!3032935 (=> res!1247756 e!1902016)))

(assert (=> b!3032935 (= res!1247756 call!206788)))

(declare-fun b!3032936 () Bool)

(assert (=> b!3032936 (= e!1902021 (nullable!3079 r!17423))))

(declare-fun b!3032937 () Bool)

(assert (=> b!3032937 (= e!1902018 e!1902017)))

(declare-fun res!1247755 () Bool)

(assert (=> b!3032937 (=> (not res!1247755) (not e!1902017))))

(assert (=> b!3032937 (= res!1247755 (not lt!1046199))))

(declare-fun b!3032938 () Bool)

(declare-fun res!1247754 () Bool)

(assert (=> b!3032938 (=> res!1247754 e!1902018)))

(assert (=> b!3032938 (= res!1247754 (not ((_ is ElementMatch!9429) r!17423)))))

(assert (=> b!3032938 (= e!1902019 e!1902018)))

(declare-fun b!3032939 () Bool)

(assert (=> b!3032939 (= e!1902019 (not lt!1046199))))

(assert (= (and d!851412 c!501274) b!3032936))

(assert (= (and d!851412 (not c!501274)) b!3032932))

(assert (= (and d!851412 c!501272) b!3032933))

(assert (= (and d!851412 (not c!501272)) b!3032928))

(assert (= (and b!3032928 c!501273) b!3032939))

(assert (= (and b!3032928 (not c!501273)) b!3032938))

(assert (= (and b!3032938 (not res!1247754)) b!3032929))

(assert (= (and b!3032929 res!1247758) b!3032930))

(assert (= (and b!3032930 res!1247757) b!3032931))

(assert (= (and b!3032931 res!1247753) b!3032934))

(assert (= (and b!3032929 (not res!1247759)) b!3032937))

(assert (= (and b!3032937 res!1247755) b!3032935))

(assert (= (and b!3032935 (not res!1247756)) b!3032926))

(assert (= (and b!3032926 (not res!1247752)) b!3032927))

(assert (= (or b!3032933 b!3032930 b!3032935) bm!206783))

(assert (=> b!3032927 m!3368689))

(assert (=> b!3032932 m!3368689))

(assert (=> b!3032932 m!3368689))

(declare-fun m!3368765 () Bool)

(assert (=> b!3032932 m!3368765))

(assert (=> b!3032932 m!3368693))

(assert (=> b!3032932 m!3368765))

(assert (=> b!3032932 m!3368693))

(declare-fun m!3368767 () Bool)

(assert (=> b!3032932 m!3368767))

(assert (=> d!851412 m!3368697))

(assert (=> d!851412 m!3368687))

(declare-fun m!3368769 () Bool)

(assert (=> b!3032936 m!3368769))

(assert (=> bm!206783 m!3368697))

(assert (=> b!3032934 m!3368689))

(assert (=> b!3032926 m!3368693))

(assert (=> b!3032926 m!3368693))

(assert (=> b!3032926 m!3368701))

(assert (=> b!3032931 m!3368693))

(assert (=> b!3032931 m!3368693))

(assert (=> b!3032931 m!3368701))

(assert (=> b!3032610 d!851412))

(declare-fun d!851414 () Bool)

(assert (=> d!851414 (= (matchR!4311 r!17423 s!11993) (matchRSpec!1566 r!17423 s!11993))))

(declare-fun lt!1046202 () Unit!49281)

(declare-fun choose!17984 (Regex!9429 List!35294) Unit!49281)

(assert (=> d!851414 (= lt!1046202 (choose!17984 r!17423 s!11993))))

(assert (=> d!851414 (validRegex!4162 r!17423)))

(assert (=> d!851414 (= (mainMatchTheorem!1566 r!17423 s!11993) lt!1046202)))

(declare-fun bs!530901 () Bool)

(assert (= bs!530901 d!851414))

(assert (=> bs!530901 m!3368681))

(assert (=> bs!530901 m!3368679))

(declare-fun m!3368771 () Bool)

(assert (=> bs!530901 m!3368771))

(assert (=> bs!530901 m!3368687))

(assert (=> b!3032610 d!851414))

(declare-fun b!3032940 () Bool)

(declare-fun res!1247760 () Bool)

(declare-fun e!1902023 () Bool)

(assert (=> b!3032940 (=> res!1247760 e!1902023)))

(assert (=> b!3032940 (= res!1247760 (not (isEmpty!19470 (tail!4961 s!11993))))))

(declare-fun bm!206784 () Bool)

(declare-fun call!206789 () Bool)

(assert (=> bm!206784 (= call!206789 (isEmpty!19470 s!11993))))

(declare-fun b!3032941 () Bool)

(assert (=> b!3032941 (= e!1902023 (not (= (head!6735 s!11993) (c!501209 (regOne!19371 r!17423)))))))

(declare-fun d!851416 () Bool)

(declare-fun e!1902027 () Bool)

(assert (=> d!851416 e!1902027))

(declare-fun c!501275 () Bool)

(assert (=> d!851416 (= c!501275 ((_ is EmptyExpr!9429) (regOne!19371 r!17423)))))

(declare-fun lt!1046203 () Bool)

(declare-fun e!1902028 () Bool)

(assert (=> d!851416 (= lt!1046203 e!1902028)))

(declare-fun c!501277 () Bool)

(assert (=> d!851416 (= c!501277 (isEmpty!19470 s!11993))))

(assert (=> d!851416 (validRegex!4162 (regOne!19371 r!17423))))

(assert (=> d!851416 (= (matchR!4311 (regOne!19371 r!17423) s!11993) lt!1046203)))

(declare-fun b!3032942 () Bool)

(declare-fun e!1902026 () Bool)

(assert (=> b!3032942 (= e!1902027 e!1902026)))

(declare-fun c!501276 () Bool)

(assert (=> b!3032942 (= c!501276 ((_ is EmptyLang!9429) (regOne!19371 r!17423)))))

(declare-fun b!3032943 () Bool)

(declare-fun res!1247767 () Bool)

(declare-fun e!1902025 () Bool)

(assert (=> b!3032943 (=> res!1247767 e!1902025)))

(declare-fun e!1902022 () Bool)

(assert (=> b!3032943 (= res!1247767 e!1902022)))

(declare-fun res!1247766 () Bool)

(assert (=> b!3032943 (=> (not res!1247766) (not e!1902022))))

(assert (=> b!3032943 (= res!1247766 lt!1046203)))

(declare-fun b!3032944 () Bool)

(declare-fun res!1247765 () Bool)

(assert (=> b!3032944 (=> (not res!1247765) (not e!1902022))))

(assert (=> b!3032944 (= res!1247765 (not call!206789))))

(declare-fun b!3032945 () Bool)

(declare-fun res!1247761 () Bool)

(assert (=> b!3032945 (=> (not res!1247761) (not e!1902022))))

(assert (=> b!3032945 (= res!1247761 (isEmpty!19470 (tail!4961 s!11993)))))

(declare-fun b!3032946 () Bool)

(assert (=> b!3032946 (= e!1902028 (matchR!4311 (derivativeStep!2676 (regOne!19371 r!17423) (head!6735 s!11993)) (tail!4961 s!11993)))))

(declare-fun b!3032947 () Bool)

(assert (=> b!3032947 (= e!1902027 (= lt!1046203 call!206789))))

(declare-fun b!3032948 () Bool)

(assert (=> b!3032948 (= e!1902022 (= (head!6735 s!11993) (c!501209 (regOne!19371 r!17423))))))

(declare-fun b!3032949 () Bool)

(declare-fun e!1902024 () Bool)

(assert (=> b!3032949 (= e!1902024 e!1902023)))

(declare-fun res!1247764 () Bool)

(assert (=> b!3032949 (=> res!1247764 e!1902023)))

(assert (=> b!3032949 (= res!1247764 call!206789)))

(declare-fun b!3032950 () Bool)

(assert (=> b!3032950 (= e!1902028 (nullable!3079 (regOne!19371 r!17423)))))

(declare-fun b!3032951 () Bool)

(assert (=> b!3032951 (= e!1902025 e!1902024)))

(declare-fun res!1247763 () Bool)

(assert (=> b!3032951 (=> (not res!1247763) (not e!1902024))))

(assert (=> b!3032951 (= res!1247763 (not lt!1046203))))

(declare-fun b!3032952 () Bool)

(declare-fun res!1247762 () Bool)

(assert (=> b!3032952 (=> res!1247762 e!1902025)))

(assert (=> b!3032952 (= res!1247762 (not ((_ is ElementMatch!9429) (regOne!19371 r!17423))))))

(assert (=> b!3032952 (= e!1902026 e!1902025)))

(declare-fun b!3032953 () Bool)

(assert (=> b!3032953 (= e!1902026 (not lt!1046203))))

(assert (= (and d!851416 c!501277) b!3032950))

(assert (= (and d!851416 (not c!501277)) b!3032946))

(assert (= (and d!851416 c!501275) b!3032947))

(assert (= (and d!851416 (not c!501275)) b!3032942))

(assert (= (and b!3032942 c!501276) b!3032953))

(assert (= (and b!3032942 (not c!501276)) b!3032952))

(assert (= (and b!3032952 (not res!1247762)) b!3032943))

(assert (= (and b!3032943 res!1247766) b!3032944))

(assert (= (and b!3032944 res!1247765) b!3032945))

(assert (= (and b!3032945 res!1247761) b!3032948))

(assert (= (and b!3032943 (not res!1247767)) b!3032951))

(assert (= (and b!3032951 res!1247763) b!3032949))

(assert (= (and b!3032949 (not res!1247764)) b!3032940))

(assert (= (and b!3032940 (not res!1247760)) b!3032941))

(assert (= (or b!3032947 b!3032944 b!3032949) bm!206784))

(assert (=> b!3032941 m!3368689))

(assert (=> b!3032946 m!3368689))

(assert (=> b!3032946 m!3368689))

(declare-fun m!3368773 () Bool)

(assert (=> b!3032946 m!3368773))

(assert (=> b!3032946 m!3368693))

(assert (=> b!3032946 m!3368773))

(assert (=> b!3032946 m!3368693))

(declare-fun m!3368775 () Bool)

(assert (=> b!3032946 m!3368775))

(assert (=> d!851416 m!3368697))

(declare-fun m!3368777 () Bool)

(assert (=> d!851416 m!3368777))

(declare-fun m!3368779 () Bool)

(assert (=> b!3032950 m!3368779))

(assert (=> bm!206784 m!3368697))

(assert (=> b!3032948 m!3368689))

(assert (=> b!3032940 m!3368693))

(assert (=> b!3032940 m!3368693))

(assert (=> b!3032940 m!3368701))

(assert (=> b!3032945 m!3368693))

(assert (=> b!3032945 m!3368693))

(assert (=> b!3032945 m!3368701))

(assert (=> b!3032615 d!851416))

(declare-fun d!851418 () Bool)

(declare-fun e!1902034 () Bool)

(assert (=> d!851418 e!1902034))

(declare-fun res!1247772 () Bool)

(assert (=> d!851418 (=> res!1247772 e!1902034)))

(assert (=> d!851418 (= res!1247772 (matchR!4311 (regOne!19371 r!17423) s!11993))))

(declare-fun lt!1046206 () Unit!49281)

(declare-fun choose!17985 (Regex!9429 Regex!9429 List!35294) Unit!49281)

(assert (=> d!851418 (= lt!1046206 (choose!17985 (regOne!19371 r!17423) (regTwo!19371 r!17423) s!11993))))

(declare-fun e!1902033 () Bool)

(assert (=> d!851418 e!1902033))

(declare-fun res!1247773 () Bool)

(assert (=> d!851418 (=> (not res!1247773) (not e!1902033))))

(assert (=> d!851418 (= res!1247773 (validRegex!4162 (regOne!19371 r!17423)))))

(assert (=> d!851418 (= (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!306 (regOne!19371 r!17423) (regTwo!19371 r!17423) s!11993) lt!1046206)))

(declare-fun b!3032958 () Bool)

(assert (=> b!3032958 (= e!1902033 (validRegex!4162 (regTwo!19371 r!17423)))))

(declare-fun b!3032959 () Bool)

(assert (=> b!3032959 (= e!1902034 (matchR!4311 (regTwo!19371 r!17423) s!11993))))

(assert (= (and d!851418 res!1247773) b!3032958))

(assert (= (and d!851418 (not res!1247772)) b!3032959))

(assert (=> d!851418 m!3368675))

(declare-fun m!3368781 () Bool)

(assert (=> d!851418 m!3368781))

(assert (=> d!851418 m!3368777))

(assert (=> b!3032958 m!3368673))

(assert (=> b!3032959 m!3368685))

(assert (=> b!3032615 d!851418))

(declare-fun b!3032960 () Bool)

(declare-fun e!1902038 () Bool)

(declare-fun e!1902036 () Bool)

(assert (=> b!3032960 (= e!1902038 e!1902036)))

(declare-fun c!501278 () Bool)

(assert (=> b!3032960 (= c!501278 ((_ is Star!9429) r!17423))))

(declare-fun b!3032961 () Bool)

(declare-fun e!1902035 () Bool)

(assert (=> b!3032961 (= e!1902036 e!1902035)))

(declare-fun res!1247775 () Bool)

(assert (=> b!3032961 (= res!1247775 (not (nullable!3079 (reg!9758 r!17423))))))

(assert (=> b!3032961 (=> (not res!1247775) (not e!1902035))))

(declare-fun b!3032962 () Bool)

(declare-fun e!1902039 () Bool)

(declare-fun call!206790 () Bool)

(assert (=> b!3032962 (= e!1902039 call!206790)))

(declare-fun c!501279 () Bool)

(declare-fun bm!206785 () Bool)

(declare-fun call!206792 () Bool)

(assert (=> bm!206785 (= call!206792 (validRegex!4162 (ite c!501278 (reg!9758 r!17423) (ite c!501279 (regOne!19371 r!17423) (regTwo!19370 r!17423)))))))

(declare-fun d!851420 () Bool)

(declare-fun res!1247778 () Bool)

(assert (=> d!851420 (=> res!1247778 e!1902038)))

(assert (=> d!851420 (= res!1247778 ((_ is ElementMatch!9429) r!17423))))

(assert (=> d!851420 (= (validRegex!4162 r!17423) e!1902038)))

(declare-fun b!3032963 () Bool)

(assert (=> b!3032963 (= e!1902035 call!206792)))

(declare-fun b!3032964 () Bool)

(declare-fun e!1902037 () Bool)

(assert (=> b!3032964 (= e!1902037 e!1902039)))

(declare-fun res!1247774 () Bool)

(assert (=> b!3032964 (=> (not res!1247774) (not e!1902039))))

(declare-fun call!206791 () Bool)

(assert (=> b!3032964 (= res!1247774 call!206791)))

(declare-fun bm!206786 () Bool)

(assert (=> bm!206786 (= call!206790 call!206792)))

(declare-fun b!3032965 () Bool)

(declare-fun res!1247777 () Bool)

(declare-fun e!1902041 () Bool)

(assert (=> b!3032965 (=> (not res!1247777) (not e!1902041))))

(assert (=> b!3032965 (= res!1247777 call!206790)))

(declare-fun e!1902040 () Bool)

(assert (=> b!3032965 (= e!1902040 e!1902041)))

(declare-fun b!3032966 () Bool)

(assert (=> b!3032966 (= e!1902041 call!206791)))

(declare-fun bm!206787 () Bool)

(assert (=> bm!206787 (= call!206791 (validRegex!4162 (ite c!501279 (regTwo!19371 r!17423) (regOne!19370 r!17423))))))

(declare-fun b!3032967 () Bool)

(assert (=> b!3032967 (= e!1902036 e!1902040)))

(assert (=> b!3032967 (= c!501279 ((_ is Union!9429) r!17423))))

(declare-fun b!3032968 () Bool)

(declare-fun res!1247776 () Bool)

(assert (=> b!3032968 (=> res!1247776 e!1902037)))

(assert (=> b!3032968 (= res!1247776 (not ((_ is Concat!14750) r!17423)))))

(assert (=> b!3032968 (= e!1902040 e!1902037)))

(assert (= (and d!851420 (not res!1247778)) b!3032960))

(assert (= (and b!3032960 c!501278) b!3032961))

(assert (= (and b!3032960 (not c!501278)) b!3032967))

(assert (= (and b!3032961 res!1247775) b!3032963))

(assert (= (and b!3032967 c!501279) b!3032965))

(assert (= (and b!3032967 (not c!501279)) b!3032968))

(assert (= (and b!3032965 res!1247777) b!3032966))

(assert (= (and b!3032968 (not res!1247776)) b!3032964))

(assert (= (and b!3032964 res!1247774) b!3032962))

(assert (= (or b!3032965 b!3032962) bm!206786))

(assert (= (or b!3032966 b!3032964) bm!206787))

(assert (= (or b!3032963 bm!206786) bm!206785))

(declare-fun m!3368783 () Bool)

(assert (=> b!3032961 m!3368783))

(declare-fun m!3368785 () Bool)

(assert (=> bm!206785 m!3368785))

(declare-fun m!3368787 () Bool)

(assert (=> bm!206787 m!3368787))

(assert (=> start!290872 d!851420))

(declare-fun e!1902044 () Bool)

(assert (=> b!3032613 (= tp!960969 e!1902044)))

(declare-fun b!3032982 () Bool)

(declare-fun tp!961026 () Bool)

(declare-fun tp!961024 () Bool)

(assert (=> b!3032982 (= e!1902044 (and tp!961026 tp!961024))))

(declare-fun b!3032980 () Bool)

(declare-fun tp!961023 () Bool)

(declare-fun tp!961025 () Bool)

(assert (=> b!3032980 (= e!1902044 (and tp!961023 tp!961025))))

(declare-fun b!3032979 () Bool)

(assert (=> b!3032979 (= e!1902044 tp_is_empty!16421)))

(declare-fun b!3032981 () Bool)

(declare-fun tp!961022 () Bool)

(assert (=> b!3032981 (= e!1902044 tp!961022)))

(assert (= (and b!3032613 ((_ is ElementMatch!9429) (reg!9758 r!17423))) b!3032979))

(assert (= (and b!3032613 ((_ is Concat!14750) (reg!9758 r!17423))) b!3032980))

(assert (= (and b!3032613 ((_ is Star!9429) (reg!9758 r!17423))) b!3032981))

(assert (= (and b!3032613 ((_ is Union!9429) (reg!9758 r!17423))) b!3032982))

(declare-fun e!1902045 () Bool)

(assert (=> b!3032612 (= tp!960968 e!1902045)))

(declare-fun b!3032986 () Bool)

(declare-fun tp!961031 () Bool)

(declare-fun tp!961029 () Bool)

(assert (=> b!3032986 (= e!1902045 (and tp!961031 tp!961029))))

(declare-fun b!3032984 () Bool)

(declare-fun tp!961028 () Bool)

(declare-fun tp!961030 () Bool)

(assert (=> b!3032984 (= e!1902045 (and tp!961028 tp!961030))))

(declare-fun b!3032983 () Bool)

(assert (=> b!3032983 (= e!1902045 tp_is_empty!16421)))

(declare-fun b!3032985 () Bool)

(declare-fun tp!961027 () Bool)

(assert (=> b!3032985 (= e!1902045 tp!961027)))

(assert (= (and b!3032612 ((_ is ElementMatch!9429) (regOne!19370 r!17423))) b!3032983))

(assert (= (and b!3032612 ((_ is Concat!14750) (regOne!19370 r!17423))) b!3032984))

(assert (= (and b!3032612 ((_ is Star!9429) (regOne!19370 r!17423))) b!3032985))

(assert (= (and b!3032612 ((_ is Union!9429) (regOne!19370 r!17423))) b!3032986))

(declare-fun e!1902046 () Bool)

(assert (=> b!3032612 (= tp!960973 e!1902046)))

(declare-fun b!3032990 () Bool)

(declare-fun tp!961036 () Bool)

(declare-fun tp!961034 () Bool)

(assert (=> b!3032990 (= e!1902046 (and tp!961036 tp!961034))))

(declare-fun b!3032988 () Bool)

(declare-fun tp!961033 () Bool)

(declare-fun tp!961035 () Bool)

(assert (=> b!3032988 (= e!1902046 (and tp!961033 tp!961035))))

(declare-fun b!3032987 () Bool)

(assert (=> b!3032987 (= e!1902046 tp_is_empty!16421)))

(declare-fun b!3032989 () Bool)

(declare-fun tp!961032 () Bool)

(assert (=> b!3032989 (= e!1902046 tp!961032)))

(assert (= (and b!3032612 ((_ is ElementMatch!9429) (regTwo!19370 r!17423))) b!3032987))

(assert (= (and b!3032612 ((_ is Concat!14750) (regTwo!19370 r!17423))) b!3032988))

(assert (= (and b!3032612 ((_ is Star!9429) (regTwo!19370 r!17423))) b!3032989))

(assert (= (and b!3032612 ((_ is Union!9429) (regTwo!19370 r!17423))) b!3032990))

(declare-fun e!1902047 () Bool)

(assert (=> b!3032607 (= tp!960970 e!1902047)))

(declare-fun b!3032994 () Bool)

(declare-fun tp!961041 () Bool)

(declare-fun tp!961039 () Bool)

(assert (=> b!3032994 (= e!1902047 (and tp!961041 tp!961039))))

(declare-fun b!3032992 () Bool)

(declare-fun tp!961038 () Bool)

(declare-fun tp!961040 () Bool)

(assert (=> b!3032992 (= e!1902047 (and tp!961038 tp!961040))))

(declare-fun b!3032991 () Bool)

(assert (=> b!3032991 (= e!1902047 tp_is_empty!16421)))

(declare-fun b!3032993 () Bool)

(declare-fun tp!961037 () Bool)

(assert (=> b!3032993 (= e!1902047 tp!961037)))

(assert (= (and b!3032607 ((_ is ElementMatch!9429) (regOne!19371 r!17423))) b!3032991))

(assert (= (and b!3032607 ((_ is Concat!14750) (regOne!19371 r!17423))) b!3032992))

(assert (= (and b!3032607 ((_ is Star!9429) (regOne!19371 r!17423))) b!3032993))

(assert (= (and b!3032607 ((_ is Union!9429) (regOne!19371 r!17423))) b!3032994))

(declare-fun e!1902048 () Bool)

(assert (=> b!3032607 (= tp!960972 e!1902048)))

(declare-fun b!3032998 () Bool)

(declare-fun tp!961046 () Bool)

(declare-fun tp!961044 () Bool)

(assert (=> b!3032998 (= e!1902048 (and tp!961046 tp!961044))))

(declare-fun b!3032996 () Bool)

(declare-fun tp!961043 () Bool)

(declare-fun tp!961045 () Bool)

(assert (=> b!3032996 (= e!1902048 (and tp!961043 tp!961045))))

(declare-fun b!3032995 () Bool)

(assert (=> b!3032995 (= e!1902048 tp_is_empty!16421)))

(declare-fun b!3032997 () Bool)

(declare-fun tp!961042 () Bool)

(assert (=> b!3032997 (= e!1902048 tp!961042)))

(assert (= (and b!3032607 ((_ is ElementMatch!9429) (regTwo!19371 r!17423))) b!3032995))

(assert (= (and b!3032607 ((_ is Concat!14750) (regTwo!19371 r!17423))) b!3032996))

(assert (= (and b!3032607 ((_ is Star!9429) (regTwo!19371 r!17423))) b!3032997))

(assert (= (and b!3032607 ((_ is Union!9429) (regTwo!19371 r!17423))) b!3032998))

(declare-fun b!3033003 () Bool)

(declare-fun e!1902051 () Bool)

(declare-fun tp!961049 () Bool)

(assert (=> b!3033003 (= e!1902051 (and tp_is_empty!16421 tp!961049))))

(assert (=> b!3032614 (= tp!960971 e!1902051)))

(assert (= (and b!3032614 ((_ is Cons!35170) (t!234359 s!11993))) b!3033003))

(check-sat (not b!3032932) (not b!3032916) (not b!3033003) (not b!3032994) (not b!3032725) (not d!851390) (not b!3032992) (not b!3032997) (not b!3032912) (not b!3032926) (not b!3032958) (not bm!206781) (not b!3032988) (not bm!206784) (not bm!206756) (not b!3032990) (not b!3032677) (not bm!206785) (not d!851418) (not bm!206746) (not b!3032996) (not b!3032986) (not b!3032934) (not d!851414) (not b!3032931) (not b!3032984) (not b!3032950) (not b!3032927) (not bm!206787) (not b!3032993) (not b!3032940) (not bm!206754) tp_is_empty!16421 (not b!3032980) (not b!3032948) (not b!3032682) (not b!3032936) (not b!3032680) (not b!3032981) (not b!3032989) (not b!3032961) (not d!851412) (not bm!206782) (not bm!206783) (not d!851416) (not b!3032959) (not b!3032985) (not b!3032673) (not b!3032982) (not b!3032998) (not b!3032678) (not b!3032941) (not b!3032672) (not b!3032945) (not b!3032946))
(check-sat)
