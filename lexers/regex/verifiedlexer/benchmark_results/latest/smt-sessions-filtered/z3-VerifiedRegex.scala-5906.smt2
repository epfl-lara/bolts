; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!289148 () Bool)

(assert start!289148)

(declare-fun res!1235471 () Bool)

(declare-fun e!1882606 () Bool)

(assert (=> start!289148 (=> (not res!1235471) (not e!1882606))))

(declare-datatypes ((C!18912 0))(
  ( (C!18913 (val!11492 Int)) )
))
(declare-datatypes ((Regex!9363 0))(
  ( (ElementMatch!9363 (c!492681 C!18912)) (Concat!14684 (regOne!19238 Regex!9363) (regTwo!19238 Regex!9363)) (EmptyExpr!9363) (Star!9363 (reg!9692 Regex!9363)) (EmptyLang!9363) (Union!9363 (regOne!19239 Regex!9363) (regTwo!19239 Regex!9363)) )
))
(declare-fun r!17423 () Regex!9363)

(declare-fun validRegex!4096 (Regex!9363) Bool)

(assert (=> start!289148 (= res!1235471 (validRegex!4096 r!17423))))

(assert (=> start!289148 e!1882606))

(declare-fun e!1882611 () Bool)

(assert (=> start!289148 e!1882611))

(declare-fun e!1882610 () Bool)

(assert (=> start!289148 e!1882610))

(declare-fun b!2995864 () Bool)

(declare-fun res!1235470 () Bool)

(declare-fun e!1882607 () Bool)

(assert (=> b!2995864 (=> res!1235470 e!1882607)))

(declare-datatypes ((List!35228 0))(
  ( (Nil!35104) (Cons!35104 (h!40524 C!18912) (t!234293 List!35228)) )
))
(declare-fun s!11993 () List!35228)

(declare-fun isEmpty!19378 (List!35228) Bool)

(assert (=> b!2995864 (= res!1235470 (isEmpty!19378 s!11993))))

(declare-fun b!2995865 () Bool)

(assert (=> b!2995865 (= e!1882606 (not e!1882607))))

(declare-fun res!1235474 () Bool)

(assert (=> b!2995865 (=> res!1235474 e!1882607)))

(declare-fun lt!1041416 () Bool)

(get-info :version)

(assert (=> b!2995865 (= res!1235474 (or lt!1041416 (not ((_ is Concat!14684) r!17423))))))

(declare-fun matchRSpec!1500 (Regex!9363 List!35228) Bool)

(assert (=> b!2995865 (= lt!1041416 (matchRSpec!1500 r!17423 s!11993))))

(declare-fun matchR!4245 (Regex!9363 List!35228) Bool)

(assert (=> b!2995865 (= lt!1041416 (matchR!4245 r!17423 s!11993))))

(declare-datatypes ((Unit!49141 0))(
  ( (Unit!49142) )
))
(declare-fun lt!1041420 () Unit!49141)

(declare-fun mainMatchTheorem!1500 (Regex!9363 List!35228) Unit!49141)

(assert (=> b!2995865 (= lt!1041420 (mainMatchTheorem!1500 r!17423 s!11993))))

(declare-fun b!2995866 () Bool)

(declare-fun res!1235476 () Bool)

(declare-fun e!1882609 () Bool)

(assert (=> b!2995866 (=> res!1235476 e!1882609)))

(declare-fun lt!1041417 () Regex!9363)

(declare-fun isEmptyLang!453 (Regex!9363) Bool)

(assert (=> b!2995866 (= res!1235476 (isEmptyLang!453 lt!1041417))))

(declare-fun b!2995867 () Bool)

(declare-fun tp!951959 () Bool)

(assert (=> b!2995867 (= e!1882611 tp!951959)))

(declare-fun b!2995868 () Bool)

(declare-fun e!1882608 () Bool)

(declare-fun nullable!3026 (Regex!9363) Bool)

(assert (=> b!2995868 (= e!1882608 (nullable!3026 (regOne!19238 r!17423)))))

(declare-fun b!2995869 () Bool)

(assert (=> b!2995869 (= e!1882607 e!1882609)))

(declare-fun res!1235475 () Bool)

(assert (=> b!2995869 (=> res!1235475 e!1882609)))

(declare-fun lt!1041419 () Regex!9363)

(assert (=> b!2995869 (= res!1235475 (isEmptyLang!453 lt!1041419))))

(declare-fun simplify!354 (Regex!9363) Regex!9363)

(assert (=> b!2995869 (= lt!1041417 (simplify!354 (regTwo!19238 r!17423)))))

(assert (=> b!2995869 (= lt!1041419 (simplify!354 (regOne!19238 r!17423)))))

(declare-fun b!2995870 () Bool)

(declare-fun tp_is_empty!16289 () Bool)

(assert (=> b!2995870 (= e!1882611 tp_is_empty!16289)))

(declare-fun b!2995871 () Bool)

(declare-fun tp!951956 () Bool)

(declare-fun tp!951958 () Bool)

(assert (=> b!2995871 (= e!1882611 (and tp!951956 tp!951958))))

(declare-fun b!2995872 () Bool)

(declare-fun res!1235472 () Bool)

(assert (=> b!2995872 (=> res!1235472 e!1882609)))

(declare-fun isEmptyExpr!470 (Regex!9363) Bool)

(assert (=> b!2995872 (= res!1235472 (not (isEmptyExpr!470 lt!1041419)))))

(declare-fun b!2995873 () Bool)

(declare-fun tp!951961 () Bool)

(assert (=> b!2995873 (= e!1882610 (and tp_is_empty!16289 tp!951961))))

(declare-fun b!2995874 () Bool)

(declare-fun tp!951957 () Bool)

(declare-fun tp!951960 () Bool)

(assert (=> b!2995874 (= e!1882611 (and tp!951957 tp!951960))))

(declare-fun b!2995875 () Bool)

(assert (=> b!2995875 (= e!1882609 e!1882608)))

(declare-fun res!1235473 () Bool)

(assert (=> b!2995875 (=> res!1235473 e!1882608)))

(declare-fun lt!1041415 () Bool)

(assert (=> b!2995875 (= res!1235473 (not lt!1041415))))

(assert (=> b!2995875 (= lt!1041415 (matchR!4245 lt!1041417 s!11993))))

(assert (=> b!2995875 (= lt!1041415 (matchR!4245 (regTwo!19238 r!17423) s!11993))))

(declare-fun lt!1041418 () Unit!49141)

(declare-fun lemmaSimplifySound!212 (Regex!9363 List!35228) Unit!49141)

(assert (=> b!2995875 (= lt!1041418 (lemmaSimplifySound!212 (regTwo!19238 r!17423) s!11993))))

(assert (= (and start!289148 res!1235471) b!2995865))

(assert (= (and b!2995865 (not res!1235474)) b!2995864))

(assert (= (and b!2995864 (not res!1235470)) b!2995869))

(assert (= (and b!2995869 (not res!1235475)) b!2995866))

(assert (= (and b!2995866 (not res!1235476)) b!2995872))

(assert (= (and b!2995872 (not res!1235472)) b!2995875))

(assert (= (and b!2995875 (not res!1235473)) b!2995868))

(assert (= (and start!289148 ((_ is ElementMatch!9363) r!17423)) b!2995870))

(assert (= (and start!289148 ((_ is Concat!14684) r!17423)) b!2995874))

(assert (= (and start!289148 ((_ is Star!9363) r!17423)) b!2995867))

(assert (= (and start!289148 ((_ is Union!9363) r!17423)) b!2995871))

(assert (= (and start!289148 ((_ is Cons!35104) s!11993)) b!2995873))

(declare-fun m!3349901 () Bool)

(assert (=> b!2995866 m!3349901))

(declare-fun m!3349903 () Bool)

(assert (=> start!289148 m!3349903))

(declare-fun m!3349905 () Bool)

(assert (=> b!2995865 m!3349905))

(declare-fun m!3349907 () Bool)

(assert (=> b!2995865 m!3349907))

(declare-fun m!3349909 () Bool)

(assert (=> b!2995865 m!3349909))

(declare-fun m!3349911 () Bool)

(assert (=> b!2995869 m!3349911))

(declare-fun m!3349913 () Bool)

(assert (=> b!2995869 m!3349913))

(declare-fun m!3349915 () Bool)

(assert (=> b!2995869 m!3349915))

(declare-fun m!3349917 () Bool)

(assert (=> b!2995868 m!3349917))

(declare-fun m!3349919 () Bool)

(assert (=> b!2995872 m!3349919))

(declare-fun m!3349921 () Bool)

(assert (=> b!2995875 m!3349921))

(declare-fun m!3349923 () Bool)

(assert (=> b!2995875 m!3349923))

(declare-fun m!3349925 () Bool)

(assert (=> b!2995875 m!3349925))

(declare-fun m!3349927 () Bool)

(assert (=> b!2995864 m!3349927))

(check-sat (not b!2995871) (not b!2995869) (not b!2995867) (not b!2995874) (not start!289148) (not b!2995875) (not b!2995868) (not b!2995864) (not b!2995866) (not b!2995865) (not b!2995872) tp_is_empty!16289 (not b!2995873))
(check-sat)
(get-model)

(declare-fun d!845417 () Bool)

(assert (=> d!845417 (= (isEmptyLang!453 lt!1041417) ((_ is EmptyLang!9363) lt!1041417))))

(assert (=> b!2995866 d!845417))

(declare-fun d!845419 () Bool)

(assert (=> d!845419 (= (isEmptyExpr!470 lt!1041419) ((_ is EmptyExpr!9363) lt!1041419))))

(assert (=> b!2995872 d!845419))

(declare-fun d!845423 () Bool)

(declare-fun nullableFct!860 (Regex!9363) Bool)

(assert (=> d!845423 (= (nullable!3026 (regOne!19238 r!17423)) (nullableFct!860 (regOne!19238 r!17423)))))

(declare-fun bs!528078 () Bool)

(assert (= bs!528078 d!845423))

(declare-fun m!3349929 () Bool)

(assert (=> bs!528078 m!3349929))

(assert (=> b!2995868 d!845423))

(declare-fun b!2995922 () Bool)

(declare-fun e!1882644 () Bool)

(declare-fun call!200755 () Bool)

(assert (=> b!2995922 (= e!1882644 call!200755)))

(declare-fun b!2995923 () Bool)

(declare-fun e!1882642 () Bool)

(declare-fun call!200753 () Bool)

(assert (=> b!2995923 (= e!1882642 call!200753)))

(declare-fun c!492693 () Bool)

(declare-fun c!492692 () Bool)

(declare-fun bm!200748 () Bool)

(assert (=> bm!200748 (= call!200755 (validRegex!4096 (ite c!492693 (reg!9692 r!17423) (ite c!492692 (regOne!19239 r!17423) (regTwo!19238 r!17423)))))))

(declare-fun b!2995925 () Bool)

(declare-fun e!1882645 () Bool)

(declare-fun call!200754 () Bool)

(assert (=> b!2995925 (= e!1882645 call!200754)))

(declare-fun bm!200749 () Bool)

(assert (=> bm!200749 (= call!200754 call!200755)))

(declare-fun b!2995926 () Bool)

(declare-fun e!1882641 () Bool)

(declare-fun e!1882640 () Bool)

(assert (=> b!2995926 (= e!1882641 e!1882640)))

(assert (=> b!2995926 (= c!492692 ((_ is Union!9363) r!17423))))

(declare-fun b!2995927 () Bool)

(assert (=> b!2995927 (= e!1882641 e!1882644)))

(declare-fun res!1235506 () Bool)

(assert (=> b!2995927 (= res!1235506 (not (nullable!3026 (reg!9692 r!17423))))))

(assert (=> b!2995927 (=> (not res!1235506) (not e!1882644))))

(declare-fun b!2995928 () Bool)

(declare-fun res!1235503 () Bool)

(declare-fun e!1882643 () Bool)

(assert (=> b!2995928 (=> res!1235503 e!1882643)))

(assert (=> b!2995928 (= res!1235503 (not ((_ is Concat!14684) r!17423)))))

(assert (=> b!2995928 (= e!1882640 e!1882643)))

(declare-fun b!2995929 () Bool)

(assert (=> b!2995929 (= e!1882643 e!1882645)))

(declare-fun res!1235504 () Bool)

(assert (=> b!2995929 (=> (not res!1235504) (not e!1882645))))

(assert (=> b!2995929 (= res!1235504 call!200753)))

(declare-fun bm!200750 () Bool)

(assert (=> bm!200750 (= call!200753 (validRegex!4096 (ite c!492692 (regTwo!19239 r!17423) (regOne!19238 r!17423))))))

(declare-fun b!2995930 () Bool)

(declare-fun e!1882646 () Bool)

(assert (=> b!2995930 (= e!1882646 e!1882641)))

(assert (=> b!2995930 (= c!492693 ((_ is Star!9363) r!17423))))

(declare-fun d!845425 () Bool)

(declare-fun res!1235505 () Bool)

(assert (=> d!845425 (=> res!1235505 e!1882646)))

(assert (=> d!845425 (= res!1235505 ((_ is ElementMatch!9363) r!17423))))

(assert (=> d!845425 (= (validRegex!4096 r!17423) e!1882646)))

(declare-fun b!2995924 () Bool)

(declare-fun res!1235507 () Bool)

(assert (=> b!2995924 (=> (not res!1235507) (not e!1882642))))

(assert (=> b!2995924 (= res!1235507 call!200754)))

(assert (=> b!2995924 (= e!1882640 e!1882642)))

(assert (= (and d!845425 (not res!1235505)) b!2995930))

(assert (= (and b!2995930 c!492693) b!2995927))

(assert (= (and b!2995930 (not c!492693)) b!2995926))

(assert (= (and b!2995927 res!1235506) b!2995922))

(assert (= (and b!2995926 c!492692) b!2995924))

(assert (= (and b!2995926 (not c!492692)) b!2995928))

(assert (= (and b!2995924 res!1235507) b!2995923))

(assert (= (and b!2995928 (not res!1235503)) b!2995929))

(assert (= (and b!2995929 res!1235504) b!2995925))

(assert (= (or b!2995924 b!2995925) bm!200749))

(assert (= (or b!2995923 b!2995929) bm!200750))

(assert (= (or b!2995922 bm!200749) bm!200748))

(declare-fun m!3349931 () Bool)

(assert (=> bm!200748 m!3349931))

(declare-fun m!3349933 () Bool)

(assert (=> b!2995927 m!3349933))

(declare-fun m!3349935 () Bool)

(assert (=> bm!200750 m!3349935))

(assert (=> start!289148 d!845425))

(declare-fun d!845427 () Bool)

(assert (=> d!845427 (= (isEmptyLang!453 lt!1041419) ((_ is EmptyLang!9363) lt!1041419))))

(assert (=> b!2995869 d!845427))

(declare-fun b!2996031 () Bool)

(declare-fun e!1882710 () Regex!9363)

(declare-fun lt!1041442 () Regex!9363)

(assert (=> b!2996031 (= e!1882710 lt!1041442)))

(declare-fun c!492732 () Bool)

(declare-fun bm!200769 () Bool)

(declare-fun call!200775 () Regex!9363)

(declare-fun c!492730 () Bool)

(assert (=> bm!200769 (= call!200775 (simplify!354 (ite c!492732 (reg!9692 (regTwo!19238 r!17423)) (ite c!492730 (regOne!19239 (regTwo!19238 r!17423)) (regTwo!19238 (regTwo!19238 r!17423))))))))

(declare-fun b!2996033 () Bool)

(declare-fun e!1882711 () Regex!9363)

(declare-fun lt!1041441 () Regex!9363)

(assert (=> b!2996033 (= e!1882711 (Star!9363 lt!1041441))))

(declare-fun b!2996034 () Bool)

(declare-fun c!492734 () Bool)

(declare-fun lt!1041440 () Regex!9363)

(assert (=> b!2996034 (= c!492734 (isEmptyExpr!470 lt!1041440))))

(declare-fun e!1882708 () Regex!9363)

(declare-fun e!1882712 () Regex!9363)

(assert (=> b!2996034 (= e!1882708 e!1882712)))

(declare-fun b!2996035 () Bool)

(declare-fun e!1882704 () Regex!9363)

(assert (=> b!2996035 (= e!1882704 (regTwo!19238 r!17423))))

(declare-fun call!200777 () Bool)

(declare-fun bm!200770 () Bool)

(assert (=> bm!200770 (= call!200777 (isEmptyLang!453 (ite c!492730 lt!1041442 lt!1041440)))))

(declare-fun bm!200771 () Bool)

(declare-fun call!200780 () Bool)

(declare-fun call!200776 () Bool)

(assert (=> bm!200771 (= call!200780 call!200776)))

(declare-fun lt!1041445 () Regex!9363)

(declare-fun bm!200772 () Bool)

(declare-fun lt!1041443 () Regex!9363)

(assert (=> bm!200772 (= call!200776 (isEmptyLang!453 (ite c!492732 lt!1041441 (ite c!492730 lt!1041445 lt!1041443))))))

(declare-fun b!2996036 () Bool)

(assert (=> b!2996036 (= c!492730 ((_ is Union!9363) (regTwo!19238 r!17423)))))

(declare-fun e!1882715 () Regex!9363)

(declare-fun e!1882703 () Regex!9363)

(assert (=> b!2996036 (= e!1882715 e!1882703)))

(declare-fun b!2996037 () Bool)

(declare-fun e!1882707 () Regex!9363)

(assert (=> b!2996037 (= e!1882707 (Concat!14684 lt!1041440 lt!1041443))))

(declare-fun b!2996038 () Bool)

(assert (=> b!2996038 (= e!1882710 (Union!9363 lt!1041442 lt!1041445))))

(declare-fun b!2996039 () Bool)

(declare-fun c!492733 () Bool)

(assert (=> b!2996039 (= c!492733 call!200780)))

(declare-fun e!1882716 () Regex!9363)

(assert (=> b!2996039 (= e!1882716 e!1882710)))

(declare-fun b!2996040 () Bool)

(assert (=> b!2996040 (= e!1882708 EmptyLang!9363)))

(declare-fun b!2996041 () Bool)

(assert (=> b!2996041 (= e!1882712 lt!1041443)))

(declare-fun b!2996042 () Bool)

(assert (=> b!2996042 (= e!1882712 e!1882707)))

(declare-fun c!492740 () Bool)

(declare-fun call!200774 () Bool)

(assert (=> b!2996042 (= c!492740 call!200774)))

(declare-fun b!2996043 () Bool)

(assert (=> b!2996043 (= e!1882711 EmptyExpr!9363)))

(declare-fun b!2996044 () Bool)

(assert (=> b!2996044 (= e!1882707 lt!1041440)))

(declare-fun b!2996045 () Bool)

(assert (=> b!2996045 (= e!1882703 e!1882716)))

(declare-fun call!200778 () Regex!9363)

(assert (=> b!2996045 (= lt!1041442 call!200778)))

(declare-fun call!200779 () Regex!9363)

(assert (=> b!2996045 (= lt!1041445 call!200779)))

(declare-fun c!492731 () Bool)

(assert (=> b!2996045 (= c!492731 call!200777)))

(declare-fun bm!200773 () Bool)

(assert (=> bm!200773 (= call!200774 (isEmptyExpr!470 (ite c!492732 lt!1041441 lt!1041443)))))

(declare-fun b!2996046 () Bool)

(declare-fun e!1882714 () Bool)

(declare-fun lt!1041444 () Regex!9363)

(assert (=> b!2996046 (= e!1882714 (= (nullable!3026 lt!1041444) (nullable!3026 (regTwo!19238 r!17423))))))

(declare-fun b!2996032 () Bool)

(declare-fun e!1882705 () Regex!9363)

(assert (=> b!2996032 (= e!1882705 e!1882704)))

(declare-fun c!492736 () Bool)

(assert (=> b!2996032 (= c!492736 ((_ is ElementMatch!9363) (regTwo!19238 r!17423)))))

(declare-fun d!845429 () Bool)

(assert (=> d!845429 e!1882714))

(declare-fun res!1235538 () Bool)

(assert (=> d!845429 (=> (not res!1235538) (not e!1882714))))

(assert (=> d!845429 (= res!1235538 (validRegex!4096 lt!1041444))))

(assert (=> d!845429 (= lt!1041444 e!1882705)))

(declare-fun c!492738 () Bool)

(assert (=> d!845429 (= c!492738 ((_ is EmptyLang!9363) (regTwo!19238 r!17423)))))

(assert (=> d!845429 (validRegex!4096 (regTwo!19238 r!17423))))

(assert (=> d!845429 (= (simplify!354 (regTwo!19238 r!17423)) lt!1041444)))

(declare-fun b!2996047 () Bool)

(declare-fun e!1882713 () Bool)

(assert (=> b!2996047 (= e!1882713 call!200780)))

(declare-fun bm!200774 () Bool)

(assert (=> bm!200774 (= call!200778 call!200775)))

(declare-fun b!2996048 () Bool)

(declare-fun c!492737 () Bool)

(declare-fun e!1882706 () Bool)

(assert (=> b!2996048 (= c!492737 e!1882706)))

(declare-fun res!1235537 () Bool)

(assert (=> b!2996048 (=> res!1235537 e!1882706)))

(assert (=> b!2996048 (= res!1235537 call!200776)))

(assert (=> b!2996048 (= lt!1041441 call!200775)))

(assert (=> b!2996048 (= e!1882715 e!1882711)))

(declare-fun b!2996049 () Bool)

(assert (=> b!2996049 (= e!1882706 call!200774)))

(declare-fun b!2996050 () Bool)

(assert (=> b!2996050 (= e!1882705 EmptyLang!9363)))

(declare-fun b!2996051 () Bool)

(assert (=> b!2996051 (= e!1882703 e!1882708)))

(assert (=> b!2996051 (= lt!1041440 call!200779)))

(assert (=> b!2996051 (= lt!1041443 call!200778)))

(declare-fun res!1235536 () Bool)

(assert (=> b!2996051 (= res!1235536 call!200777)))

(assert (=> b!2996051 (=> res!1235536 e!1882713)))

(declare-fun c!492735 () Bool)

(assert (=> b!2996051 (= c!492735 e!1882713)))

(declare-fun b!2996052 () Bool)

(declare-fun e!1882709 () Regex!9363)

(assert (=> b!2996052 (= e!1882709 e!1882715)))

(assert (=> b!2996052 (= c!492732 ((_ is Star!9363) (regTwo!19238 r!17423)))))

(declare-fun b!2996053 () Bool)

(assert (=> b!2996053 (= e!1882709 EmptyExpr!9363)))

(declare-fun b!2996054 () Bool)

(declare-fun c!492739 () Bool)

(assert (=> b!2996054 (= c!492739 ((_ is EmptyExpr!9363) (regTwo!19238 r!17423)))))

(assert (=> b!2996054 (= e!1882704 e!1882709)))

(declare-fun b!2996055 () Bool)

(assert (=> b!2996055 (= e!1882716 lt!1041445)))

(declare-fun bm!200775 () Bool)

(assert (=> bm!200775 (= call!200779 (simplify!354 (ite c!492730 (regTwo!19239 (regTwo!19238 r!17423)) (regOne!19238 (regTwo!19238 r!17423)))))))

(assert (= (and d!845429 c!492738) b!2996050))

(assert (= (and d!845429 (not c!492738)) b!2996032))

(assert (= (and b!2996032 c!492736) b!2996035))

(assert (= (and b!2996032 (not c!492736)) b!2996054))

(assert (= (and b!2996054 c!492739) b!2996053))

(assert (= (and b!2996054 (not c!492739)) b!2996052))

(assert (= (and b!2996052 c!492732) b!2996048))

(assert (= (and b!2996052 (not c!492732)) b!2996036))

(assert (= (and b!2996048 (not res!1235537)) b!2996049))

(assert (= (and b!2996048 c!492737) b!2996043))

(assert (= (and b!2996048 (not c!492737)) b!2996033))

(assert (= (and b!2996036 c!492730) b!2996045))

(assert (= (and b!2996036 (not c!492730)) b!2996051))

(assert (= (and b!2996045 c!492731) b!2996055))

(assert (= (and b!2996045 (not c!492731)) b!2996039))

(assert (= (and b!2996039 c!492733) b!2996031))

(assert (= (and b!2996039 (not c!492733)) b!2996038))

(assert (= (and b!2996051 (not res!1235536)) b!2996047))

(assert (= (and b!2996051 c!492735) b!2996040))

(assert (= (and b!2996051 (not c!492735)) b!2996034))

(assert (= (and b!2996034 c!492734) b!2996041))

(assert (= (and b!2996034 (not c!492734)) b!2996042))

(assert (= (and b!2996042 c!492740) b!2996044))

(assert (= (and b!2996042 (not c!492740)) b!2996037))

(assert (= (or b!2996045 b!2996051) bm!200774))

(assert (= (or b!2996045 b!2996051) bm!200775))

(assert (= (or b!2996045 b!2996051) bm!200770))

(assert (= (or b!2996039 b!2996047) bm!200771))

(assert (= (or b!2996049 b!2996042) bm!200773))

(assert (= (or b!2996048 bm!200774) bm!200769))

(assert (= (or b!2996048 bm!200771) bm!200772))

(assert (= (and d!845429 res!1235538) b!2996046))

(declare-fun m!3349963 () Bool)

(assert (=> bm!200770 m!3349963))

(declare-fun m!3349965 () Bool)

(assert (=> b!2996046 m!3349965))

(declare-fun m!3349967 () Bool)

(assert (=> b!2996046 m!3349967))

(declare-fun m!3349969 () Bool)

(assert (=> bm!200775 m!3349969))

(declare-fun m!3349971 () Bool)

(assert (=> bm!200769 m!3349971))

(declare-fun m!3349973 () Bool)

(assert (=> bm!200773 m!3349973))

(declare-fun m!3349975 () Bool)

(assert (=> d!845429 m!3349975))

(declare-fun m!3349977 () Bool)

(assert (=> d!845429 m!3349977))

(declare-fun m!3349979 () Bool)

(assert (=> b!2996034 m!3349979))

(declare-fun m!3349981 () Bool)

(assert (=> bm!200772 m!3349981))

(assert (=> b!2995869 d!845429))

(declare-fun b!2996056 () Bool)

(declare-fun e!1882724 () Regex!9363)

(declare-fun lt!1041448 () Regex!9363)

(assert (=> b!2996056 (= e!1882724 lt!1041448)))

(declare-fun c!492741 () Bool)

(declare-fun call!200782 () Regex!9363)

(declare-fun c!492743 () Bool)

(declare-fun bm!200776 () Bool)

(assert (=> bm!200776 (= call!200782 (simplify!354 (ite c!492743 (reg!9692 (regOne!19238 r!17423)) (ite c!492741 (regOne!19239 (regOne!19238 r!17423)) (regTwo!19238 (regOne!19238 r!17423))))))))

(declare-fun b!2996058 () Bool)

(declare-fun e!1882725 () Regex!9363)

(declare-fun lt!1041447 () Regex!9363)

(assert (=> b!2996058 (= e!1882725 (Star!9363 lt!1041447))))

(declare-fun b!2996059 () Bool)

(declare-fun c!492745 () Bool)

(declare-fun lt!1041446 () Regex!9363)

(assert (=> b!2996059 (= c!492745 (isEmptyExpr!470 lt!1041446))))

(declare-fun e!1882722 () Regex!9363)

(declare-fun e!1882726 () Regex!9363)

(assert (=> b!2996059 (= e!1882722 e!1882726)))

(declare-fun b!2996060 () Bool)

(declare-fun e!1882718 () Regex!9363)

(assert (=> b!2996060 (= e!1882718 (regOne!19238 r!17423))))

(declare-fun bm!200777 () Bool)

(declare-fun call!200784 () Bool)

(assert (=> bm!200777 (= call!200784 (isEmptyLang!453 (ite c!492741 lt!1041448 lt!1041446)))))

(declare-fun bm!200778 () Bool)

(declare-fun call!200787 () Bool)

(declare-fun call!200783 () Bool)

(assert (=> bm!200778 (= call!200787 call!200783)))

(declare-fun lt!1041451 () Regex!9363)

(declare-fun lt!1041449 () Regex!9363)

(declare-fun bm!200779 () Bool)

(assert (=> bm!200779 (= call!200783 (isEmptyLang!453 (ite c!492743 lt!1041447 (ite c!492741 lt!1041451 lt!1041449))))))

(declare-fun b!2996061 () Bool)

(assert (=> b!2996061 (= c!492741 ((_ is Union!9363) (regOne!19238 r!17423)))))

(declare-fun e!1882729 () Regex!9363)

(declare-fun e!1882717 () Regex!9363)

(assert (=> b!2996061 (= e!1882729 e!1882717)))

(declare-fun b!2996062 () Bool)

(declare-fun e!1882721 () Regex!9363)

(assert (=> b!2996062 (= e!1882721 (Concat!14684 lt!1041446 lt!1041449))))

(declare-fun b!2996063 () Bool)

(assert (=> b!2996063 (= e!1882724 (Union!9363 lt!1041448 lt!1041451))))

(declare-fun b!2996064 () Bool)

(declare-fun c!492744 () Bool)

(assert (=> b!2996064 (= c!492744 call!200787)))

(declare-fun e!1882730 () Regex!9363)

(assert (=> b!2996064 (= e!1882730 e!1882724)))

(declare-fun b!2996065 () Bool)

(assert (=> b!2996065 (= e!1882722 EmptyLang!9363)))

(declare-fun b!2996066 () Bool)

(assert (=> b!2996066 (= e!1882726 lt!1041449)))

(declare-fun b!2996067 () Bool)

(assert (=> b!2996067 (= e!1882726 e!1882721)))

(declare-fun c!492751 () Bool)

(declare-fun call!200781 () Bool)

(assert (=> b!2996067 (= c!492751 call!200781)))

(declare-fun b!2996068 () Bool)

(assert (=> b!2996068 (= e!1882725 EmptyExpr!9363)))

(declare-fun b!2996069 () Bool)

(assert (=> b!2996069 (= e!1882721 lt!1041446)))

(declare-fun b!2996070 () Bool)

(assert (=> b!2996070 (= e!1882717 e!1882730)))

(declare-fun call!200785 () Regex!9363)

(assert (=> b!2996070 (= lt!1041448 call!200785)))

(declare-fun call!200786 () Regex!9363)

(assert (=> b!2996070 (= lt!1041451 call!200786)))

(declare-fun c!492742 () Bool)

(assert (=> b!2996070 (= c!492742 call!200784)))

(declare-fun bm!200780 () Bool)

(assert (=> bm!200780 (= call!200781 (isEmptyExpr!470 (ite c!492743 lt!1041447 lt!1041449)))))

(declare-fun b!2996071 () Bool)

(declare-fun e!1882728 () Bool)

(declare-fun lt!1041450 () Regex!9363)

(assert (=> b!2996071 (= e!1882728 (= (nullable!3026 lt!1041450) (nullable!3026 (regOne!19238 r!17423))))))

(declare-fun b!2996057 () Bool)

(declare-fun e!1882719 () Regex!9363)

(assert (=> b!2996057 (= e!1882719 e!1882718)))

(declare-fun c!492747 () Bool)

(assert (=> b!2996057 (= c!492747 ((_ is ElementMatch!9363) (regOne!19238 r!17423)))))

(declare-fun d!845439 () Bool)

(assert (=> d!845439 e!1882728))

(declare-fun res!1235541 () Bool)

(assert (=> d!845439 (=> (not res!1235541) (not e!1882728))))

(assert (=> d!845439 (= res!1235541 (validRegex!4096 lt!1041450))))

(assert (=> d!845439 (= lt!1041450 e!1882719)))

(declare-fun c!492749 () Bool)

(assert (=> d!845439 (= c!492749 ((_ is EmptyLang!9363) (regOne!19238 r!17423)))))

(assert (=> d!845439 (validRegex!4096 (regOne!19238 r!17423))))

(assert (=> d!845439 (= (simplify!354 (regOne!19238 r!17423)) lt!1041450)))

(declare-fun b!2996072 () Bool)

(declare-fun e!1882727 () Bool)

(assert (=> b!2996072 (= e!1882727 call!200787)))

(declare-fun bm!200781 () Bool)

(assert (=> bm!200781 (= call!200785 call!200782)))

(declare-fun b!2996073 () Bool)

(declare-fun c!492748 () Bool)

(declare-fun e!1882720 () Bool)

(assert (=> b!2996073 (= c!492748 e!1882720)))

(declare-fun res!1235540 () Bool)

(assert (=> b!2996073 (=> res!1235540 e!1882720)))

(assert (=> b!2996073 (= res!1235540 call!200783)))

(assert (=> b!2996073 (= lt!1041447 call!200782)))

(assert (=> b!2996073 (= e!1882729 e!1882725)))

(declare-fun b!2996074 () Bool)

(assert (=> b!2996074 (= e!1882720 call!200781)))

(declare-fun b!2996075 () Bool)

(assert (=> b!2996075 (= e!1882719 EmptyLang!9363)))

(declare-fun b!2996076 () Bool)

(assert (=> b!2996076 (= e!1882717 e!1882722)))

(assert (=> b!2996076 (= lt!1041446 call!200786)))

(assert (=> b!2996076 (= lt!1041449 call!200785)))

(declare-fun res!1235539 () Bool)

(assert (=> b!2996076 (= res!1235539 call!200784)))

(assert (=> b!2996076 (=> res!1235539 e!1882727)))

(declare-fun c!492746 () Bool)

(assert (=> b!2996076 (= c!492746 e!1882727)))

(declare-fun b!2996077 () Bool)

(declare-fun e!1882723 () Regex!9363)

(assert (=> b!2996077 (= e!1882723 e!1882729)))

(assert (=> b!2996077 (= c!492743 ((_ is Star!9363) (regOne!19238 r!17423)))))

(declare-fun b!2996078 () Bool)

(assert (=> b!2996078 (= e!1882723 EmptyExpr!9363)))

(declare-fun b!2996079 () Bool)

(declare-fun c!492750 () Bool)

(assert (=> b!2996079 (= c!492750 ((_ is EmptyExpr!9363) (regOne!19238 r!17423)))))

(assert (=> b!2996079 (= e!1882718 e!1882723)))

(declare-fun b!2996080 () Bool)

(assert (=> b!2996080 (= e!1882730 lt!1041451)))

(declare-fun bm!200782 () Bool)

(assert (=> bm!200782 (= call!200786 (simplify!354 (ite c!492741 (regTwo!19239 (regOne!19238 r!17423)) (regOne!19238 (regOne!19238 r!17423)))))))

(assert (= (and d!845439 c!492749) b!2996075))

(assert (= (and d!845439 (not c!492749)) b!2996057))

(assert (= (and b!2996057 c!492747) b!2996060))

(assert (= (and b!2996057 (not c!492747)) b!2996079))

(assert (= (and b!2996079 c!492750) b!2996078))

(assert (= (and b!2996079 (not c!492750)) b!2996077))

(assert (= (and b!2996077 c!492743) b!2996073))

(assert (= (and b!2996077 (not c!492743)) b!2996061))

(assert (= (and b!2996073 (not res!1235540)) b!2996074))

(assert (= (and b!2996073 c!492748) b!2996068))

(assert (= (and b!2996073 (not c!492748)) b!2996058))

(assert (= (and b!2996061 c!492741) b!2996070))

(assert (= (and b!2996061 (not c!492741)) b!2996076))

(assert (= (and b!2996070 c!492742) b!2996080))

(assert (= (and b!2996070 (not c!492742)) b!2996064))

(assert (= (and b!2996064 c!492744) b!2996056))

(assert (= (and b!2996064 (not c!492744)) b!2996063))

(assert (= (and b!2996076 (not res!1235539)) b!2996072))

(assert (= (and b!2996076 c!492746) b!2996065))

(assert (= (and b!2996076 (not c!492746)) b!2996059))

(assert (= (and b!2996059 c!492745) b!2996066))

(assert (= (and b!2996059 (not c!492745)) b!2996067))

(assert (= (and b!2996067 c!492751) b!2996069))

(assert (= (and b!2996067 (not c!492751)) b!2996062))

(assert (= (or b!2996070 b!2996076) bm!200781))

(assert (= (or b!2996070 b!2996076) bm!200782))

(assert (= (or b!2996070 b!2996076) bm!200777))

(assert (= (or b!2996064 b!2996072) bm!200778))

(assert (= (or b!2996074 b!2996067) bm!200780))

(assert (= (or b!2996073 bm!200781) bm!200776))

(assert (= (or b!2996073 bm!200778) bm!200779))

(assert (= (and d!845439 res!1235541) b!2996071))

(declare-fun m!3349983 () Bool)

(assert (=> bm!200777 m!3349983))

(declare-fun m!3349985 () Bool)

(assert (=> b!2996071 m!3349985))

(assert (=> b!2996071 m!3349917))

(declare-fun m!3349987 () Bool)

(assert (=> bm!200782 m!3349987))

(declare-fun m!3349989 () Bool)

(assert (=> bm!200776 m!3349989))

(declare-fun m!3349991 () Bool)

(assert (=> bm!200780 m!3349991))

(declare-fun m!3349993 () Bool)

(assert (=> d!845439 m!3349993))

(declare-fun m!3349995 () Bool)

(assert (=> d!845439 m!3349995))

(declare-fun m!3349997 () Bool)

(assert (=> b!2996059 m!3349997))

(declare-fun m!3349999 () Bool)

(assert (=> bm!200779 m!3349999))

(assert (=> b!2995869 d!845439))

(declare-fun d!845441 () Bool)

(assert (=> d!845441 (= (isEmpty!19378 s!11993) ((_ is Nil!35104) s!11993))))

(assert (=> b!2995864 d!845441))

(declare-fun b!2996109 () Bool)

(declare-fun res!1235563 () Bool)

(declare-fun e!1882750 () Bool)

(assert (=> b!2996109 (=> res!1235563 e!1882750)))

(declare-fun tail!4909 (List!35228) List!35228)

(assert (=> b!2996109 (= res!1235563 (not (isEmpty!19378 (tail!4909 s!11993))))))

(declare-fun b!2996110 () Bool)

(declare-fun e!1882751 () Bool)

(declare-fun e!1882745 () Bool)

(assert (=> b!2996110 (= e!1882751 e!1882745)))

(declare-fun c!492759 () Bool)

(assert (=> b!2996110 (= c!492759 ((_ is EmptyLang!9363) lt!1041417))))

(declare-fun b!2996111 () Bool)

(declare-fun e!1882746 () Bool)

(declare-fun e!1882749 () Bool)

(assert (=> b!2996111 (= e!1882746 e!1882749)))

(declare-fun res!1235562 () Bool)

(assert (=> b!2996111 (=> (not res!1235562) (not e!1882749))))

(declare-fun lt!1041454 () Bool)

(assert (=> b!2996111 (= res!1235562 (not lt!1041454))))

(declare-fun b!2996112 () Bool)

(declare-fun e!1882747 () Bool)

(declare-fun derivativeStep!2624 (Regex!9363 C!18912) Regex!9363)

(declare-fun head!6683 (List!35228) C!18912)

(assert (=> b!2996112 (= e!1882747 (matchR!4245 (derivativeStep!2624 lt!1041417 (head!6683 s!11993)) (tail!4909 s!11993)))))

(declare-fun b!2996113 () Bool)

(assert (=> b!2996113 (= e!1882750 (not (= (head!6683 s!11993) (c!492681 lt!1041417))))))

(declare-fun b!2996114 () Bool)

(declare-fun res!1235564 () Bool)

(declare-fun e!1882748 () Bool)

(assert (=> b!2996114 (=> (not res!1235564) (not e!1882748))))

(declare-fun call!200790 () Bool)

(assert (=> b!2996114 (= res!1235564 (not call!200790))))

(declare-fun b!2996115 () Bool)

(assert (=> b!2996115 (= e!1882747 (nullable!3026 lt!1041417))))

(declare-fun b!2996117 () Bool)

(declare-fun res!1235560 () Bool)

(assert (=> b!2996117 (=> res!1235560 e!1882746)))

(assert (=> b!2996117 (= res!1235560 e!1882748)))

(declare-fun res!1235561 () Bool)

(assert (=> b!2996117 (=> (not res!1235561) (not e!1882748))))

(assert (=> b!2996117 (= res!1235561 lt!1041454)))

(declare-fun b!2996118 () Bool)

(assert (=> b!2996118 (= e!1882751 (= lt!1041454 call!200790))))

(declare-fun b!2996119 () Bool)

(declare-fun res!1235559 () Bool)

(assert (=> b!2996119 (=> (not res!1235559) (not e!1882748))))

(assert (=> b!2996119 (= res!1235559 (isEmpty!19378 (tail!4909 s!11993)))))

(declare-fun d!845443 () Bool)

(assert (=> d!845443 e!1882751))

(declare-fun c!492758 () Bool)

(assert (=> d!845443 (= c!492758 ((_ is EmptyExpr!9363) lt!1041417))))

(assert (=> d!845443 (= lt!1041454 e!1882747)))

(declare-fun c!492760 () Bool)

(assert (=> d!845443 (= c!492760 (isEmpty!19378 s!11993))))

(assert (=> d!845443 (validRegex!4096 lt!1041417)))

(assert (=> d!845443 (= (matchR!4245 lt!1041417 s!11993) lt!1041454)))

(declare-fun b!2996116 () Bool)

(assert (=> b!2996116 (= e!1882749 e!1882750)))

(declare-fun res!1235558 () Bool)

(assert (=> b!2996116 (=> res!1235558 e!1882750)))

(assert (=> b!2996116 (= res!1235558 call!200790)))

(declare-fun b!2996120 () Bool)

(assert (=> b!2996120 (= e!1882748 (= (head!6683 s!11993) (c!492681 lt!1041417)))))

(declare-fun b!2996121 () Bool)

(assert (=> b!2996121 (= e!1882745 (not lt!1041454))))

(declare-fun bm!200785 () Bool)

(assert (=> bm!200785 (= call!200790 (isEmpty!19378 s!11993))))

(declare-fun b!2996122 () Bool)

(declare-fun res!1235565 () Bool)

(assert (=> b!2996122 (=> res!1235565 e!1882746)))

(assert (=> b!2996122 (= res!1235565 (not ((_ is ElementMatch!9363) lt!1041417)))))

(assert (=> b!2996122 (= e!1882745 e!1882746)))

(assert (= (and d!845443 c!492760) b!2996115))

(assert (= (and d!845443 (not c!492760)) b!2996112))

(assert (= (and d!845443 c!492758) b!2996118))

(assert (= (and d!845443 (not c!492758)) b!2996110))

(assert (= (and b!2996110 c!492759) b!2996121))

(assert (= (and b!2996110 (not c!492759)) b!2996122))

(assert (= (and b!2996122 (not res!1235565)) b!2996117))

(assert (= (and b!2996117 res!1235561) b!2996114))

(assert (= (and b!2996114 res!1235564) b!2996119))

(assert (= (and b!2996119 res!1235559) b!2996120))

(assert (= (and b!2996117 (not res!1235560)) b!2996111))

(assert (= (and b!2996111 res!1235562) b!2996116))

(assert (= (and b!2996116 (not res!1235558)) b!2996109))

(assert (= (and b!2996109 (not res!1235563)) b!2996113))

(assert (= (or b!2996118 b!2996114 b!2996116) bm!200785))

(declare-fun m!3350001 () Bool)

(assert (=> b!2996109 m!3350001))

(assert (=> b!2996109 m!3350001))

(declare-fun m!3350003 () Bool)

(assert (=> b!2996109 m!3350003))

(declare-fun m!3350005 () Bool)

(assert (=> b!2996112 m!3350005))

(assert (=> b!2996112 m!3350005))

(declare-fun m!3350007 () Bool)

(assert (=> b!2996112 m!3350007))

(assert (=> b!2996112 m!3350001))

(assert (=> b!2996112 m!3350007))

(assert (=> b!2996112 m!3350001))

(declare-fun m!3350009 () Bool)

(assert (=> b!2996112 m!3350009))

(assert (=> b!2996119 m!3350001))

(assert (=> b!2996119 m!3350001))

(assert (=> b!2996119 m!3350003))

(declare-fun m!3350011 () Bool)

(assert (=> b!2996115 m!3350011))

(assert (=> d!845443 m!3349927))

(declare-fun m!3350013 () Bool)

(assert (=> d!845443 m!3350013))

(assert (=> bm!200785 m!3349927))

(assert (=> b!2996120 m!3350005))

(assert (=> b!2996113 m!3350005))

(assert (=> b!2995875 d!845443))

(declare-fun b!2996123 () Bool)

(declare-fun res!1235571 () Bool)

(declare-fun e!1882757 () Bool)

(assert (=> b!2996123 (=> res!1235571 e!1882757)))

(assert (=> b!2996123 (= res!1235571 (not (isEmpty!19378 (tail!4909 s!11993))))))

(declare-fun b!2996124 () Bool)

(declare-fun e!1882758 () Bool)

(declare-fun e!1882752 () Bool)

(assert (=> b!2996124 (= e!1882758 e!1882752)))

(declare-fun c!492762 () Bool)

(assert (=> b!2996124 (= c!492762 ((_ is EmptyLang!9363) (regTwo!19238 r!17423)))))

(declare-fun b!2996125 () Bool)

(declare-fun e!1882753 () Bool)

(declare-fun e!1882756 () Bool)

(assert (=> b!2996125 (= e!1882753 e!1882756)))

(declare-fun res!1235570 () Bool)

(assert (=> b!2996125 (=> (not res!1235570) (not e!1882756))))

(declare-fun lt!1041455 () Bool)

(assert (=> b!2996125 (= res!1235570 (not lt!1041455))))

(declare-fun b!2996126 () Bool)

(declare-fun e!1882754 () Bool)

(assert (=> b!2996126 (= e!1882754 (matchR!4245 (derivativeStep!2624 (regTwo!19238 r!17423) (head!6683 s!11993)) (tail!4909 s!11993)))))

(declare-fun b!2996127 () Bool)

(assert (=> b!2996127 (= e!1882757 (not (= (head!6683 s!11993) (c!492681 (regTwo!19238 r!17423)))))))

(declare-fun b!2996128 () Bool)

(declare-fun res!1235572 () Bool)

(declare-fun e!1882755 () Bool)

(assert (=> b!2996128 (=> (not res!1235572) (not e!1882755))))

(declare-fun call!200791 () Bool)

(assert (=> b!2996128 (= res!1235572 (not call!200791))))

(declare-fun b!2996129 () Bool)

(assert (=> b!2996129 (= e!1882754 (nullable!3026 (regTwo!19238 r!17423)))))

(declare-fun b!2996131 () Bool)

(declare-fun res!1235568 () Bool)

(assert (=> b!2996131 (=> res!1235568 e!1882753)))

(assert (=> b!2996131 (= res!1235568 e!1882755)))

(declare-fun res!1235569 () Bool)

(assert (=> b!2996131 (=> (not res!1235569) (not e!1882755))))

(assert (=> b!2996131 (= res!1235569 lt!1041455)))

(declare-fun b!2996132 () Bool)

(assert (=> b!2996132 (= e!1882758 (= lt!1041455 call!200791))))

(declare-fun b!2996133 () Bool)

(declare-fun res!1235567 () Bool)

(assert (=> b!2996133 (=> (not res!1235567) (not e!1882755))))

(assert (=> b!2996133 (= res!1235567 (isEmpty!19378 (tail!4909 s!11993)))))

(declare-fun d!845445 () Bool)

(assert (=> d!845445 e!1882758))

(declare-fun c!492761 () Bool)

(assert (=> d!845445 (= c!492761 ((_ is EmptyExpr!9363) (regTwo!19238 r!17423)))))

(assert (=> d!845445 (= lt!1041455 e!1882754)))

(declare-fun c!492763 () Bool)

(assert (=> d!845445 (= c!492763 (isEmpty!19378 s!11993))))

(assert (=> d!845445 (validRegex!4096 (regTwo!19238 r!17423))))

(assert (=> d!845445 (= (matchR!4245 (regTwo!19238 r!17423) s!11993) lt!1041455)))

(declare-fun b!2996130 () Bool)

(assert (=> b!2996130 (= e!1882756 e!1882757)))

(declare-fun res!1235566 () Bool)

(assert (=> b!2996130 (=> res!1235566 e!1882757)))

(assert (=> b!2996130 (= res!1235566 call!200791)))

(declare-fun b!2996134 () Bool)

(assert (=> b!2996134 (= e!1882755 (= (head!6683 s!11993) (c!492681 (regTwo!19238 r!17423))))))

(declare-fun b!2996135 () Bool)

(assert (=> b!2996135 (= e!1882752 (not lt!1041455))))

(declare-fun bm!200786 () Bool)

(assert (=> bm!200786 (= call!200791 (isEmpty!19378 s!11993))))

(declare-fun b!2996136 () Bool)

(declare-fun res!1235573 () Bool)

(assert (=> b!2996136 (=> res!1235573 e!1882753)))

(assert (=> b!2996136 (= res!1235573 (not ((_ is ElementMatch!9363) (regTwo!19238 r!17423))))))

(assert (=> b!2996136 (= e!1882752 e!1882753)))

(assert (= (and d!845445 c!492763) b!2996129))

(assert (= (and d!845445 (not c!492763)) b!2996126))

(assert (= (and d!845445 c!492761) b!2996132))

(assert (= (and d!845445 (not c!492761)) b!2996124))

(assert (= (and b!2996124 c!492762) b!2996135))

(assert (= (and b!2996124 (not c!492762)) b!2996136))

(assert (= (and b!2996136 (not res!1235573)) b!2996131))

(assert (= (and b!2996131 res!1235569) b!2996128))

(assert (= (and b!2996128 res!1235572) b!2996133))

(assert (= (and b!2996133 res!1235567) b!2996134))

(assert (= (and b!2996131 (not res!1235568)) b!2996125))

(assert (= (and b!2996125 res!1235570) b!2996130))

(assert (= (and b!2996130 (not res!1235566)) b!2996123))

(assert (= (and b!2996123 (not res!1235571)) b!2996127))

(assert (= (or b!2996132 b!2996128 b!2996130) bm!200786))

(assert (=> b!2996123 m!3350001))

(assert (=> b!2996123 m!3350001))

(assert (=> b!2996123 m!3350003))

(assert (=> b!2996126 m!3350005))

(assert (=> b!2996126 m!3350005))

(declare-fun m!3350015 () Bool)

(assert (=> b!2996126 m!3350015))

(assert (=> b!2996126 m!3350001))

(assert (=> b!2996126 m!3350015))

(assert (=> b!2996126 m!3350001))

(declare-fun m!3350017 () Bool)

(assert (=> b!2996126 m!3350017))

(assert (=> b!2996133 m!3350001))

(assert (=> b!2996133 m!3350001))

(assert (=> b!2996133 m!3350003))

(assert (=> b!2996129 m!3349967))

(assert (=> d!845445 m!3349927))

(assert (=> d!845445 m!3349977))

(assert (=> bm!200786 m!3349927))

(assert (=> b!2996134 m!3350005))

(assert (=> b!2996127 m!3350005))

(assert (=> b!2995875 d!845445))

(declare-fun d!845447 () Bool)

(assert (=> d!845447 (= (matchR!4245 (regTwo!19238 r!17423) s!11993) (matchR!4245 (simplify!354 (regTwo!19238 r!17423)) s!11993))))

(declare-fun lt!1041458 () Unit!49141)

(declare-fun choose!17785 (Regex!9363 List!35228) Unit!49141)

(assert (=> d!845447 (= lt!1041458 (choose!17785 (regTwo!19238 r!17423) s!11993))))

(assert (=> d!845447 (validRegex!4096 (regTwo!19238 r!17423))))

(assert (=> d!845447 (= (lemmaSimplifySound!212 (regTwo!19238 r!17423) s!11993) lt!1041458)))

(declare-fun bs!528080 () Bool)

(assert (= bs!528080 d!845447))

(declare-fun m!3350019 () Bool)

(assert (=> bs!528080 m!3350019))

(assert (=> bs!528080 m!3349913))

(declare-fun m!3350021 () Bool)

(assert (=> bs!528080 m!3350021))

(assert (=> bs!528080 m!3349977))

(assert (=> bs!528080 m!3349923))

(assert (=> bs!528080 m!3349913))

(assert (=> b!2995875 d!845447))

(declare-fun b!2996377 () Bool)

(assert (=> b!2996377 true))

(assert (=> b!2996377 true))

(declare-fun bs!528084 () Bool)

(declare-fun b!2996373 () Bool)

(assert (= bs!528084 (and b!2996373 b!2996377)))

(declare-fun lambda!112042 () Int)

(declare-fun lambda!112041 () Int)

(assert (=> bs!528084 (not (= lambda!112042 lambda!112041))))

(assert (=> b!2996373 true))

(assert (=> b!2996373 true))

(declare-fun bm!200835 () Bool)

(declare-fun call!200841 () Bool)

(assert (=> bm!200835 (= call!200841 (isEmpty!19378 s!11993))))

(declare-fun b!2996370 () Bool)

(declare-fun c!492829 () Bool)

(assert (=> b!2996370 (= c!492829 ((_ is Union!9363) r!17423))))

(declare-fun e!1882884 () Bool)

(declare-fun e!1882883 () Bool)

(assert (=> b!2996370 (= e!1882884 e!1882883)))

(declare-fun b!2996371 () Bool)

(assert (=> b!2996371 (= e!1882884 (= s!11993 (Cons!35104 (c!492681 r!17423) Nil!35104)))))

(declare-fun b!2996372 () Bool)

(declare-fun e!1882886 () Bool)

(assert (=> b!2996372 (= e!1882883 e!1882886)))

(declare-fun c!492831 () Bool)

(assert (=> b!2996372 (= c!492831 ((_ is Star!9363) r!17423))))

(declare-fun d!845449 () Bool)

(declare-fun c!492830 () Bool)

(assert (=> d!845449 (= c!492830 ((_ is EmptyExpr!9363) r!17423))))

(declare-fun e!1882882 () Bool)

(assert (=> d!845449 (= (matchRSpec!1500 r!17423 s!11993) e!1882882)))

(declare-fun call!200840 () Bool)

(assert (=> b!2996373 (= e!1882886 call!200840)))

(declare-fun b!2996374 () Bool)

(declare-fun e!1882885 () Bool)

(assert (=> b!2996374 (= e!1882885 (matchRSpec!1500 (regTwo!19239 r!17423) s!11993))))

(declare-fun b!2996375 () Bool)

(assert (=> b!2996375 (= e!1882883 e!1882885)))

(declare-fun res!1235638 () Bool)

(assert (=> b!2996375 (= res!1235638 (matchRSpec!1500 (regOne!19239 r!17423) s!11993))))

(assert (=> b!2996375 (=> res!1235638 e!1882885)))

(declare-fun b!2996376 () Bool)

(declare-fun c!492832 () Bool)

(assert (=> b!2996376 (= c!492832 ((_ is ElementMatch!9363) r!17423))))

(declare-fun e!1882887 () Bool)

(assert (=> b!2996376 (= e!1882887 e!1882884)))

(declare-fun e!1882888 () Bool)

(assert (=> b!2996377 (= e!1882888 call!200840)))

(declare-fun b!2996378 () Bool)

(assert (=> b!2996378 (= e!1882882 e!1882887)))

(declare-fun res!1235639 () Bool)

(assert (=> b!2996378 (= res!1235639 (not ((_ is EmptyLang!9363) r!17423)))))

(assert (=> b!2996378 (=> (not res!1235639) (not e!1882887))))

(declare-fun b!2996379 () Bool)

(assert (=> b!2996379 (= e!1882882 call!200841)))

(declare-fun b!2996380 () Bool)

(declare-fun res!1235640 () Bool)

(assert (=> b!2996380 (=> res!1235640 e!1882888)))

(assert (=> b!2996380 (= res!1235640 call!200841)))

(assert (=> b!2996380 (= e!1882886 e!1882888)))

(declare-fun bm!200836 () Bool)

(declare-fun Exists!1636 (Int) Bool)

(assert (=> bm!200836 (= call!200840 (Exists!1636 (ite c!492831 lambda!112041 lambda!112042)))))

(assert (= (and d!845449 c!492830) b!2996379))

(assert (= (and d!845449 (not c!492830)) b!2996378))

(assert (= (and b!2996378 res!1235639) b!2996376))

(assert (= (and b!2996376 c!492832) b!2996371))

(assert (= (and b!2996376 (not c!492832)) b!2996370))

(assert (= (and b!2996370 c!492829) b!2996375))

(assert (= (and b!2996370 (not c!492829)) b!2996372))

(assert (= (and b!2996375 (not res!1235638)) b!2996374))

(assert (= (and b!2996372 c!492831) b!2996380))

(assert (= (and b!2996372 (not c!492831)) b!2996373))

(assert (= (and b!2996380 (not res!1235640)) b!2996377))

(assert (= (or b!2996377 b!2996373) bm!200836))

(assert (= (or b!2996379 b!2996380) bm!200835))

(assert (=> bm!200835 m!3349927))

(declare-fun m!3350079 () Bool)

(assert (=> b!2996374 m!3350079))

(declare-fun m!3350081 () Bool)

(assert (=> b!2996375 m!3350081))

(declare-fun m!3350083 () Bool)

(assert (=> bm!200836 m!3350083))

(assert (=> b!2995865 d!845449))

(declare-fun b!2996385 () Bool)

(declare-fun res!1235646 () Bool)

(declare-fun e!1882894 () Bool)

(assert (=> b!2996385 (=> res!1235646 e!1882894)))

(assert (=> b!2996385 (= res!1235646 (not (isEmpty!19378 (tail!4909 s!11993))))))

(declare-fun b!2996386 () Bool)

(declare-fun e!1882895 () Bool)

(declare-fun e!1882889 () Bool)

(assert (=> b!2996386 (= e!1882895 e!1882889)))

(declare-fun c!492834 () Bool)

(assert (=> b!2996386 (= c!492834 ((_ is EmptyLang!9363) r!17423))))

(declare-fun b!2996387 () Bool)

(declare-fun e!1882890 () Bool)

(declare-fun e!1882893 () Bool)

(assert (=> b!2996387 (= e!1882890 e!1882893)))

(declare-fun res!1235645 () Bool)

(assert (=> b!2996387 (=> (not res!1235645) (not e!1882893))))

(declare-fun lt!1041487 () Bool)

(assert (=> b!2996387 (= res!1235645 (not lt!1041487))))

(declare-fun b!2996388 () Bool)

(declare-fun e!1882891 () Bool)

(assert (=> b!2996388 (= e!1882891 (matchR!4245 (derivativeStep!2624 r!17423 (head!6683 s!11993)) (tail!4909 s!11993)))))

(declare-fun b!2996389 () Bool)

(assert (=> b!2996389 (= e!1882894 (not (= (head!6683 s!11993) (c!492681 r!17423))))))

(declare-fun b!2996390 () Bool)

(declare-fun res!1235647 () Bool)

(declare-fun e!1882892 () Bool)

(assert (=> b!2996390 (=> (not res!1235647) (not e!1882892))))

(declare-fun call!200842 () Bool)

(assert (=> b!2996390 (= res!1235647 (not call!200842))))

(declare-fun b!2996391 () Bool)

(assert (=> b!2996391 (= e!1882891 (nullable!3026 r!17423))))

(declare-fun b!2996393 () Bool)

(declare-fun res!1235643 () Bool)

(assert (=> b!2996393 (=> res!1235643 e!1882890)))

(assert (=> b!2996393 (= res!1235643 e!1882892)))

(declare-fun res!1235644 () Bool)

(assert (=> b!2996393 (=> (not res!1235644) (not e!1882892))))

(assert (=> b!2996393 (= res!1235644 lt!1041487)))

(declare-fun b!2996394 () Bool)

(assert (=> b!2996394 (= e!1882895 (= lt!1041487 call!200842))))

(declare-fun b!2996395 () Bool)

(declare-fun res!1235642 () Bool)

(assert (=> b!2996395 (=> (not res!1235642) (not e!1882892))))

(assert (=> b!2996395 (= res!1235642 (isEmpty!19378 (tail!4909 s!11993)))))

(declare-fun d!845469 () Bool)

(assert (=> d!845469 e!1882895))

(declare-fun c!492833 () Bool)

(assert (=> d!845469 (= c!492833 ((_ is EmptyExpr!9363) r!17423))))

(assert (=> d!845469 (= lt!1041487 e!1882891)))

(declare-fun c!492835 () Bool)

(assert (=> d!845469 (= c!492835 (isEmpty!19378 s!11993))))

(assert (=> d!845469 (validRegex!4096 r!17423)))

(assert (=> d!845469 (= (matchR!4245 r!17423 s!11993) lt!1041487)))

(declare-fun b!2996392 () Bool)

(assert (=> b!2996392 (= e!1882893 e!1882894)))

(declare-fun res!1235641 () Bool)

(assert (=> b!2996392 (=> res!1235641 e!1882894)))

(assert (=> b!2996392 (= res!1235641 call!200842)))

(declare-fun b!2996396 () Bool)

(assert (=> b!2996396 (= e!1882892 (= (head!6683 s!11993) (c!492681 r!17423)))))

(declare-fun b!2996397 () Bool)

(assert (=> b!2996397 (= e!1882889 (not lt!1041487))))

(declare-fun bm!200837 () Bool)

(assert (=> bm!200837 (= call!200842 (isEmpty!19378 s!11993))))

(declare-fun b!2996398 () Bool)

(declare-fun res!1235648 () Bool)

(assert (=> b!2996398 (=> res!1235648 e!1882890)))

(assert (=> b!2996398 (= res!1235648 (not ((_ is ElementMatch!9363) r!17423)))))

(assert (=> b!2996398 (= e!1882889 e!1882890)))

(assert (= (and d!845469 c!492835) b!2996391))

(assert (= (and d!845469 (not c!492835)) b!2996388))

(assert (= (and d!845469 c!492833) b!2996394))

(assert (= (and d!845469 (not c!492833)) b!2996386))

(assert (= (and b!2996386 c!492834) b!2996397))

(assert (= (and b!2996386 (not c!492834)) b!2996398))

(assert (= (and b!2996398 (not res!1235648)) b!2996393))

(assert (= (and b!2996393 res!1235644) b!2996390))

(assert (= (and b!2996390 res!1235647) b!2996395))

(assert (= (and b!2996395 res!1235642) b!2996396))

(assert (= (and b!2996393 (not res!1235643)) b!2996387))

(assert (= (and b!2996387 res!1235645) b!2996392))

(assert (= (and b!2996392 (not res!1235641)) b!2996385))

(assert (= (and b!2996385 (not res!1235646)) b!2996389))

(assert (= (or b!2996394 b!2996390 b!2996392) bm!200837))

(assert (=> b!2996385 m!3350001))

(assert (=> b!2996385 m!3350001))

(assert (=> b!2996385 m!3350003))

(assert (=> b!2996388 m!3350005))

(assert (=> b!2996388 m!3350005))

(declare-fun m!3350085 () Bool)

(assert (=> b!2996388 m!3350085))

(assert (=> b!2996388 m!3350001))

(assert (=> b!2996388 m!3350085))

(assert (=> b!2996388 m!3350001))

(declare-fun m!3350087 () Bool)

(assert (=> b!2996388 m!3350087))

(assert (=> b!2996395 m!3350001))

(assert (=> b!2996395 m!3350001))

(assert (=> b!2996395 m!3350003))

(declare-fun m!3350089 () Bool)

(assert (=> b!2996391 m!3350089))

(assert (=> d!845469 m!3349927))

(assert (=> d!845469 m!3349903))

(assert (=> bm!200837 m!3349927))

(assert (=> b!2996396 m!3350005))

(assert (=> b!2996389 m!3350005))

(assert (=> b!2995865 d!845469))

(declare-fun d!845471 () Bool)

(assert (=> d!845471 (= (matchR!4245 r!17423 s!11993) (matchRSpec!1500 r!17423 s!11993))))

(declare-fun lt!1041490 () Unit!49141)

(declare-fun choose!17786 (Regex!9363 List!35228) Unit!49141)

(assert (=> d!845471 (= lt!1041490 (choose!17786 r!17423 s!11993))))

(assert (=> d!845471 (validRegex!4096 r!17423)))

(assert (=> d!845471 (= (mainMatchTheorem!1500 r!17423 s!11993) lt!1041490)))

(declare-fun bs!528085 () Bool)

(assert (= bs!528085 d!845471))

(assert (=> bs!528085 m!3349907))

(assert (=> bs!528085 m!3349905))

(declare-fun m!3350091 () Bool)

(assert (=> bs!528085 m!3350091))

(assert (=> bs!528085 m!3349903))

(assert (=> b!2995865 d!845471))

(declare-fun b!2996410 () Bool)

(declare-fun e!1882898 () Bool)

(declare-fun tp!952012 () Bool)

(declare-fun tp!952011 () Bool)

(assert (=> b!2996410 (= e!1882898 (and tp!952012 tp!952011))))

(declare-fun b!2996412 () Bool)

(declare-fun tp!952014 () Bool)

(declare-fun tp!952010 () Bool)

(assert (=> b!2996412 (= e!1882898 (and tp!952014 tp!952010))))

(assert (=> b!2995867 (= tp!951959 e!1882898)))

(declare-fun b!2996409 () Bool)

(assert (=> b!2996409 (= e!1882898 tp_is_empty!16289)))

(declare-fun b!2996411 () Bool)

(declare-fun tp!952013 () Bool)

(assert (=> b!2996411 (= e!1882898 tp!952013)))

(assert (= (and b!2995867 ((_ is ElementMatch!9363) (reg!9692 r!17423))) b!2996409))

(assert (= (and b!2995867 ((_ is Concat!14684) (reg!9692 r!17423))) b!2996410))

(assert (= (and b!2995867 ((_ is Star!9363) (reg!9692 r!17423))) b!2996411))

(assert (= (and b!2995867 ((_ is Union!9363) (reg!9692 r!17423))) b!2996412))

(declare-fun b!2996417 () Bool)

(declare-fun e!1882901 () Bool)

(declare-fun tp!952017 () Bool)

(assert (=> b!2996417 (= e!1882901 (and tp_is_empty!16289 tp!952017))))

(assert (=> b!2995873 (= tp!951961 e!1882901)))

(assert (= (and b!2995873 ((_ is Cons!35104) (t!234293 s!11993))) b!2996417))

(declare-fun b!2996419 () Bool)

(declare-fun e!1882902 () Bool)

(declare-fun tp!952020 () Bool)

(declare-fun tp!952019 () Bool)

(assert (=> b!2996419 (= e!1882902 (and tp!952020 tp!952019))))

(declare-fun b!2996421 () Bool)

(declare-fun tp!952022 () Bool)

(declare-fun tp!952018 () Bool)

(assert (=> b!2996421 (= e!1882902 (and tp!952022 tp!952018))))

(assert (=> b!2995874 (= tp!951957 e!1882902)))

(declare-fun b!2996418 () Bool)

(assert (=> b!2996418 (= e!1882902 tp_is_empty!16289)))

(declare-fun b!2996420 () Bool)

(declare-fun tp!952021 () Bool)

(assert (=> b!2996420 (= e!1882902 tp!952021)))

(assert (= (and b!2995874 ((_ is ElementMatch!9363) (regOne!19238 r!17423))) b!2996418))

(assert (= (and b!2995874 ((_ is Concat!14684) (regOne!19238 r!17423))) b!2996419))

(assert (= (and b!2995874 ((_ is Star!9363) (regOne!19238 r!17423))) b!2996420))

(assert (= (and b!2995874 ((_ is Union!9363) (regOne!19238 r!17423))) b!2996421))

(declare-fun b!2996423 () Bool)

(declare-fun e!1882903 () Bool)

(declare-fun tp!952025 () Bool)

(declare-fun tp!952024 () Bool)

(assert (=> b!2996423 (= e!1882903 (and tp!952025 tp!952024))))

(declare-fun b!2996425 () Bool)

(declare-fun tp!952027 () Bool)

(declare-fun tp!952023 () Bool)

(assert (=> b!2996425 (= e!1882903 (and tp!952027 tp!952023))))

(assert (=> b!2995874 (= tp!951960 e!1882903)))

(declare-fun b!2996422 () Bool)

(assert (=> b!2996422 (= e!1882903 tp_is_empty!16289)))

(declare-fun b!2996424 () Bool)

(declare-fun tp!952026 () Bool)

(assert (=> b!2996424 (= e!1882903 tp!952026)))

(assert (= (and b!2995874 ((_ is ElementMatch!9363) (regTwo!19238 r!17423))) b!2996422))

(assert (= (and b!2995874 ((_ is Concat!14684) (regTwo!19238 r!17423))) b!2996423))

(assert (= (and b!2995874 ((_ is Star!9363) (regTwo!19238 r!17423))) b!2996424))

(assert (= (and b!2995874 ((_ is Union!9363) (regTwo!19238 r!17423))) b!2996425))

(declare-fun b!2996427 () Bool)

(declare-fun e!1882904 () Bool)

(declare-fun tp!952030 () Bool)

(declare-fun tp!952029 () Bool)

(assert (=> b!2996427 (= e!1882904 (and tp!952030 tp!952029))))

(declare-fun b!2996429 () Bool)

(declare-fun tp!952032 () Bool)

(declare-fun tp!952028 () Bool)

(assert (=> b!2996429 (= e!1882904 (and tp!952032 tp!952028))))

(assert (=> b!2995871 (= tp!951956 e!1882904)))

(declare-fun b!2996426 () Bool)

(assert (=> b!2996426 (= e!1882904 tp_is_empty!16289)))

(declare-fun b!2996428 () Bool)

(declare-fun tp!952031 () Bool)

(assert (=> b!2996428 (= e!1882904 tp!952031)))

(assert (= (and b!2995871 ((_ is ElementMatch!9363) (regOne!19239 r!17423))) b!2996426))

(assert (= (and b!2995871 ((_ is Concat!14684) (regOne!19239 r!17423))) b!2996427))

(assert (= (and b!2995871 ((_ is Star!9363) (regOne!19239 r!17423))) b!2996428))

(assert (= (and b!2995871 ((_ is Union!9363) (regOne!19239 r!17423))) b!2996429))

(declare-fun b!2996431 () Bool)

(declare-fun e!1882905 () Bool)

(declare-fun tp!952035 () Bool)

(declare-fun tp!952034 () Bool)

(assert (=> b!2996431 (= e!1882905 (and tp!952035 tp!952034))))

(declare-fun b!2996433 () Bool)

(declare-fun tp!952037 () Bool)

(declare-fun tp!952033 () Bool)

(assert (=> b!2996433 (= e!1882905 (and tp!952037 tp!952033))))

(assert (=> b!2995871 (= tp!951958 e!1882905)))

(declare-fun b!2996430 () Bool)

(assert (=> b!2996430 (= e!1882905 tp_is_empty!16289)))

(declare-fun b!2996432 () Bool)

(declare-fun tp!952036 () Bool)

(assert (=> b!2996432 (= e!1882905 tp!952036)))

(assert (= (and b!2995871 ((_ is ElementMatch!9363) (regTwo!19239 r!17423))) b!2996430))

(assert (= (and b!2995871 ((_ is Concat!14684) (regTwo!19239 r!17423))) b!2996431))

(assert (= (and b!2995871 ((_ is Star!9363) (regTwo!19239 r!17423))) b!2996432))

(assert (= (and b!2995871 ((_ is Union!9363) (regTwo!19239 r!17423))) b!2996433))

(check-sat (not b!2996395) (not b!2996112) (not bm!200780) (not d!845471) (not b!2996120) (not bm!200775) (not b!2996127) (not b!2996113) (not bm!200770) (not bm!200835) (not d!845443) (not d!845447) (not d!845469) (not b!2996133) (not b!2996126) (not b!2996034) (not bm!200777) (not b!2996059) (not b!2996129) (not b!2996396) (not b!2996385) (not b!2996419) (not b!2996423) (not b!2996071) (not d!845429) (not bm!200769) (not bm!200776) (not bm!200785) (not b!2996432) (not b!2996412) (not d!845445) (not b!2996115) (not bm!200837) (not bm!200836) (not bm!200748) (not b!2996388) (not d!845439) (not b!2996429) (not b!2996389) (not bm!200750) (not bm!200772) (not bm!200779) (not b!2996424) (not bm!200782) (not b!2995927) (not bm!200786) (not b!2996119) (not b!2996375) (not b!2996427) (not b!2996374) (not b!2996391) (not b!2996421) (not b!2996433) (not b!2996420) (not b!2996425) (not b!2996109) (not b!2996431) (not b!2996428) tp_is_empty!16289 (not b!2996123) (not d!845423) (not b!2996134) (not b!2996411) (not b!2996046) (not b!2996417) (not b!2996410) (not bm!200773))
(check-sat)
(get-model)

(declare-fun d!845473 () Bool)

(assert (=> d!845473 (= (head!6683 s!11993) (h!40524 s!11993))))

(assert (=> b!2996396 d!845473))

(declare-fun bs!528086 () Bool)

(declare-fun b!2996441 () Bool)

(assert (= bs!528086 (and b!2996441 b!2996377)))

(declare-fun lambda!112043 () Int)

(assert (=> bs!528086 (= (and (= (reg!9692 (regOne!19239 r!17423)) (reg!9692 r!17423)) (= (regOne!19239 r!17423) r!17423)) (= lambda!112043 lambda!112041))))

(declare-fun bs!528087 () Bool)

(assert (= bs!528087 (and b!2996441 b!2996373)))

(assert (=> bs!528087 (not (= lambda!112043 lambda!112042))))

(assert (=> b!2996441 true))

(assert (=> b!2996441 true))

(declare-fun bs!528088 () Bool)

(declare-fun b!2996437 () Bool)

(assert (= bs!528088 (and b!2996437 b!2996377)))

(declare-fun lambda!112044 () Int)

(assert (=> bs!528088 (not (= lambda!112044 lambda!112041))))

(declare-fun bs!528089 () Bool)

(assert (= bs!528089 (and b!2996437 b!2996373)))

(assert (=> bs!528089 (= (and (= (regOne!19238 (regOne!19239 r!17423)) (regOne!19238 r!17423)) (= (regTwo!19238 (regOne!19239 r!17423)) (regTwo!19238 r!17423))) (= lambda!112044 lambda!112042))))

(declare-fun bs!528090 () Bool)

(assert (= bs!528090 (and b!2996437 b!2996441)))

(assert (=> bs!528090 (not (= lambda!112044 lambda!112043))))

(assert (=> b!2996437 true))

(assert (=> b!2996437 true))

(declare-fun bm!200838 () Bool)

(declare-fun call!200844 () Bool)

(assert (=> bm!200838 (= call!200844 (isEmpty!19378 s!11993))))

(declare-fun b!2996434 () Bool)

(declare-fun c!492836 () Bool)

(assert (=> b!2996434 (= c!492836 ((_ is Union!9363) (regOne!19239 r!17423)))))

(declare-fun e!1882908 () Bool)

(declare-fun e!1882907 () Bool)

(assert (=> b!2996434 (= e!1882908 e!1882907)))

(declare-fun b!2996435 () Bool)

(assert (=> b!2996435 (= e!1882908 (= s!11993 (Cons!35104 (c!492681 (regOne!19239 r!17423)) Nil!35104)))))

(declare-fun b!2996436 () Bool)

(declare-fun e!1882910 () Bool)

(assert (=> b!2996436 (= e!1882907 e!1882910)))

(declare-fun c!492838 () Bool)

(assert (=> b!2996436 (= c!492838 ((_ is Star!9363) (regOne!19239 r!17423)))))

(declare-fun d!845475 () Bool)

(declare-fun c!492837 () Bool)

(assert (=> d!845475 (= c!492837 ((_ is EmptyExpr!9363) (regOne!19239 r!17423)))))

(declare-fun e!1882906 () Bool)

(assert (=> d!845475 (= (matchRSpec!1500 (regOne!19239 r!17423) s!11993) e!1882906)))

(declare-fun call!200843 () Bool)

(assert (=> b!2996437 (= e!1882910 call!200843)))

(declare-fun b!2996438 () Bool)

(declare-fun e!1882909 () Bool)

(assert (=> b!2996438 (= e!1882909 (matchRSpec!1500 (regTwo!19239 (regOne!19239 r!17423)) s!11993))))

(declare-fun b!2996439 () Bool)

(assert (=> b!2996439 (= e!1882907 e!1882909)))

(declare-fun res!1235649 () Bool)

(assert (=> b!2996439 (= res!1235649 (matchRSpec!1500 (regOne!19239 (regOne!19239 r!17423)) s!11993))))

(assert (=> b!2996439 (=> res!1235649 e!1882909)))

(declare-fun b!2996440 () Bool)

(declare-fun c!492839 () Bool)

(assert (=> b!2996440 (= c!492839 ((_ is ElementMatch!9363) (regOne!19239 r!17423)))))

(declare-fun e!1882911 () Bool)

(assert (=> b!2996440 (= e!1882911 e!1882908)))

(declare-fun e!1882912 () Bool)

(assert (=> b!2996441 (= e!1882912 call!200843)))

(declare-fun b!2996442 () Bool)

(assert (=> b!2996442 (= e!1882906 e!1882911)))

(declare-fun res!1235650 () Bool)

(assert (=> b!2996442 (= res!1235650 (not ((_ is EmptyLang!9363) (regOne!19239 r!17423))))))

(assert (=> b!2996442 (=> (not res!1235650) (not e!1882911))))

(declare-fun b!2996443 () Bool)

(assert (=> b!2996443 (= e!1882906 call!200844)))

(declare-fun b!2996444 () Bool)

(declare-fun res!1235651 () Bool)

(assert (=> b!2996444 (=> res!1235651 e!1882912)))

(assert (=> b!2996444 (= res!1235651 call!200844)))

(assert (=> b!2996444 (= e!1882910 e!1882912)))

(declare-fun bm!200839 () Bool)

(assert (=> bm!200839 (= call!200843 (Exists!1636 (ite c!492838 lambda!112043 lambda!112044)))))

(assert (= (and d!845475 c!492837) b!2996443))

(assert (= (and d!845475 (not c!492837)) b!2996442))

(assert (= (and b!2996442 res!1235650) b!2996440))

(assert (= (and b!2996440 c!492839) b!2996435))

(assert (= (and b!2996440 (not c!492839)) b!2996434))

(assert (= (and b!2996434 c!492836) b!2996439))

(assert (= (and b!2996434 (not c!492836)) b!2996436))

(assert (= (and b!2996439 (not res!1235649)) b!2996438))

(assert (= (and b!2996436 c!492838) b!2996444))

(assert (= (and b!2996436 (not c!492838)) b!2996437))

(assert (= (and b!2996444 (not res!1235651)) b!2996441))

(assert (= (or b!2996441 b!2996437) bm!200839))

(assert (= (or b!2996443 b!2996444) bm!200838))

(assert (=> bm!200838 m!3349927))

(declare-fun m!3350093 () Bool)

(assert (=> b!2996438 m!3350093))

(declare-fun m!3350095 () Bool)

(assert (=> b!2996439 m!3350095))

(declare-fun m!3350097 () Bool)

(assert (=> bm!200839 m!3350097))

(assert (=> b!2996375 d!845475))

(declare-fun b!2996445 () Bool)

(declare-fun res!1235657 () Bool)

(declare-fun e!1882918 () Bool)

(assert (=> b!2996445 (=> res!1235657 e!1882918)))

(assert (=> b!2996445 (= res!1235657 (not (isEmpty!19378 (tail!4909 (tail!4909 s!11993)))))))

(declare-fun b!2996446 () Bool)

(declare-fun e!1882919 () Bool)

(declare-fun e!1882913 () Bool)

(assert (=> b!2996446 (= e!1882919 e!1882913)))

(declare-fun c!492841 () Bool)

(assert (=> b!2996446 (= c!492841 ((_ is EmptyLang!9363) (derivativeStep!2624 lt!1041417 (head!6683 s!11993))))))

(declare-fun b!2996447 () Bool)

(declare-fun e!1882914 () Bool)

(declare-fun e!1882917 () Bool)

(assert (=> b!2996447 (= e!1882914 e!1882917)))

(declare-fun res!1235656 () Bool)

(assert (=> b!2996447 (=> (not res!1235656) (not e!1882917))))

(declare-fun lt!1041491 () Bool)

(assert (=> b!2996447 (= res!1235656 (not lt!1041491))))

(declare-fun b!2996448 () Bool)

(declare-fun e!1882915 () Bool)

(assert (=> b!2996448 (= e!1882915 (matchR!4245 (derivativeStep!2624 (derivativeStep!2624 lt!1041417 (head!6683 s!11993)) (head!6683 (tail!4909 s!11993))) (tail!4909 (tail!4909 s!11993))))))

(declare-fun b!2996449 () Bool)

(assert (=> b!2996449 (= e!1882918 (not (= (head!6683 (tail!4909 s!11993)) (c!492681 (derivativeStep!2624 lt!1041417 (head!6683 s!11993))))))))

(declare-fun b!2996450 () Bool)

(declare-fun res!1235658 () Bool)

(declare-fun e!1882916 () Bool)

(assert (=> b!2996450 (=> (not res!1235658) (not e!1882916))))

(declare-fun call!200845 () Bool)

(assert (=> b!2996450 (= res!1235658 (not call!200845))))

(declare-fun b!2996451 () Bool)

(assert (=> b!2996451 (= e!1882915 (nullable!3026 (derivativeStep!2624 lt!1041417 (head!6683 s!11993))))))

(declare-fun b!2996453 () Bool)

(declare-fun res!1235654 () Bool)

(assert (=> b!2996453 (=> res!1235654 e!1882914)))

(assert (=> b!2996453 (= res!1235654 e!1882916)))

(declare-fun res!1235655 () Bool)

(assert (=> b!2996453 (=> (not res!1235655) (not e!1882916))))

(assert (=> b!2996453 (= res!1235655 lt!1041491)))

(declare-fun b!2996454 () Bool)

(assert (=> b!2996454 (= e!1882919 (= lt!1041491 call!200845))))

(declare-fun b!2996455 () Bool)

(declare-fun res!1235653 () Bool)

(assert (=> b!2996455 (=> (not res!1235653) (not e!1882916))))

(assert (=> b!2996455 (= res!1235653 (isEmpty!19378 (tail!4909 (tail!4909 s!11993))))))

(declare-fun d!845477 () Bool)

(assert (=> d!845477 e!1882919))

(declare-fun c!492840 () Bool)

(assert (=> d!845477 (= c!492840 ((_ is EmptyExpr!9363) (derivativeStep!2624 lt!1041417 (head!6683 s!11993))))))

(assert (=> d!845477 (= lt!1041491 e!1882915)))

(declare-fun c!492842 () Bool)

(assert (=> d!845477 (= c!492842 (isEmpty!19378 (tail!4909 s!11993)))))

(assert (=> d!845477 (validRegex!4096 (derivativeStep!2624 lt!1041417 (head!6683 s!11993)))))

(assert (=> d!845477 (= (matchR!4245 (derivativeStep!2624 lt!1041417 (head!6683 s!11993)) (tail!4909 s!11993)) lt!1041491)))

(declare-fun b!2996452 () Bool)

(assert (=> b!2996452 (= e!1882917 e!1882918)))

(declare-fun res!1235652 () Bool)

(assert (=> b!2996452 (=> res!1235652 e!1882918)))

(assert (=> b!2996452 (= res!1235652 call!200845)))

(declare-fun b!2996456 () Bool)

(assert (=> b!2996456 (= e!1882916 (= (head!6683 (tail!4909 s!11993)) (c!492681 (derivativeStep!2624 lt!1041417 (head!6683 s!11993)))))))

(declare-fun b!2996457 () Bool)

(assert (=> b!2996457 (= e!1882913 (not lt!1041491))))

(declare-fun bm!200840 () Bool)

(assert (=> bm!200840 (= call!200845 (isEmpty!19378 (tail!4909 s!11993)))))

(declare-fun b!2996458 () Bool)

(declare-fun res!1235659 () Bool)

(assert (=> b!2996458 (=> res!1235659 e!1882914)))

(assert (=> b!2996458 (= res!1235659 (not ((_ is ElementMatch!9363) (derivativeStep!2624 lt!1041417 (head!6683 s!11993)))))))

(assert (=> b!2996458 (= e!1882913 e!1882914)))

(assert (= (and d!845477 c!492842) b!2996451))

(assert (= (and d!845477 (not c!492842)) b!2996448))

(assert (= (and d!845477 c!492840) b!2996454))

(assert (= (and d!845477 (not c!492840)) b!2996446))

(assert (= (and b!2996446 c!492841) b!2996457))

(assert (= (and b!2996446 (not c!492841)) b!2996458))

(assert (= (and b!2996458 (not res!1235659)) b!2996453))

(assert (= (and b!2996453 res!1235655) b!2996450))

(assert (= (and b!2996450 res!1235658) b!2996455))

(assert (= (and b!2996455 res!1235653) b!2996456))

(assert (= (and b!2996453 (not res!1235654)) b!2996447))

(assert (= (and b!2996447 res!1235656) b!2996452))

(assert (= (and b!2996452 (not res!1235652)) b!2996445))

(assert (= (and b!2996445 (not res!1235657)) b!2996449))

(assert (= (or b!2996454 b!2996450 b!2996452) bm!200840))

(assert (=> b!2996445 m!3350001))

(declare-fun m!3350099 () Bool)

(assert (=> b!2996445 m!3350099))

(assert (=> b!2996445 m!3350099))

(declare-fun m!3350101 () Bool)

(assert (=> b!2996445 m!3350101))

(assert (=> b!2996448 m!3350001))

(declare-fun m!3350103 () Bool)

(assert (=> b!2996448 m!3350103))

(assert (=> b!2996448 m!3350007))

(assert (=> b!2996448 m!3350103))

(declare-fun m!3350105 () Bool)

(assert (=> b!2996448 m!3350105))

(assert (=> b!2996448 m!3350001))

(assert (=> b!2996448 m!3350099))

(assert (=> b!2996448 m!3350105))

(assert (=> b!2996448 m!3350099))

(declare-fun m!3350107 () Bool)

(assert (=> b!2996448 m!3350107))

(assert (=> b!2996455 m!3350001))

(assert (=> b!2996455 m!3350099))

(assert (=> b!2996455 m!3350099))

(assert (=> b!2996455 m!3350101))

(assert (=> b!2996451 m!3350007))

(declare-fun m!3350109 () Bool)

(assert (=> b!2996451 m!3350109))

(assert (=> d!845477 m!3350001))

(assert (=> d!845477 m!3350003))

(assert (=> d!845477 m!3350007))

(declare-fun m!3350111 () Bool)

(assert (=> d!845477 m!3350111))

(assert (=> bm!200840 m!3350001))

(assert (=> bm!200840 m!3350003))

(assert (=> b!2996456 m!3350001))

(assert (=> b!2996456 m!3350103))

(assert (=> b!2996449 m!3350001))

(assert (=> b!2996449 m!3350103))

(assert (=> b!2996112 d!845477))

(declare-fun b!2996479 () Bool)

(declare-fun e!1882931 () Regex!9363)

(declare-fun e!1882932 () Regex!9363)

(assert (=> b!2996479 (= e!1882931 e!1882932)))

(declare-fun c!492857 () Bool)

(assert (=> b!2996479 (= c!492857 ((_ is ElementMatch!9363) lt!1041417))))

(declare-fun b!2996480 () Bool)

(declare-fun c!492854 () Bool)

(assert (=> b!2996480 (= c!492854 (nullable!3026 (regOne!19238 lt!1041417)))))

(declare-fun e!1882933 () Regex!9363)

(declare-fun e!1882934 () Regex!9363)

(assert (=> b!2996480 (= e!1882933 e!1882934)))

(declare-fun b!2996481 () Bool)

(assert (=> b!2996481 (= e!1882931 EmptyLang!9363)))

(declare-fun b!2996482 () Bool)

(declare-fun call!200857 () Regex!9363)

(assert (=> b!2996482 (= e!1882934 (Union!9363 (Concat!14684 call!200857 (regTwo!19238 lt!1041417)) EmptyLang!9363))))

(declare-fun b!2996483 () Bool)

(declare-fun call!200855 () Regex!9363)

(assert (=> b!2996483 (= e!1882933 (Concat!14684 call!200855 lt!1041417))))

(declare-fun b!2996484 () Bool)

(declare-fun c!492856 () Bool)

(assert (=> b!2996484 (= c!492856 ((_ is Union!9363) lt!1041417))))

(declare-fun e!1882930 () Regex!9363)

(assert (=> b!2996484 (= e!1882932 e!1882930)))

(declare-fun call!200854 () Regex!9363)

(declare-fun c!492855 () Bool)

(declare-fun bm!200850 () Bool)

(assert (=> bm!200850 (= call!200854 (derivativeStep!2624 (ite c!492856 (regTwo!19239 lt!1041417) (ite c!492855 (reg!9692 lt!1041417) (regOne!19238 lt!1041417))) (head!6683 s!11993)))))

(declare-fun bm!200851 () Bool)

(assert (=> bm!200851 (= call!200857 call!200855)))

(declare-fun b!2996485 () Bool)

(assert (=> b!2996485 (= e!1882932 (ite (= (head!6683 s!11993) (c!492681 lt!1041417)) EmptyExpr!9363 EmptyLang!9363))))

(declare-fun call!200856 () Regex!9363)

(declare-fun bm!200852 () Bool)

(assert (=> bm!200852 (= call!200856 (derivativeStep!2624 (ite c!492856 (regOne!19239 lt!1041417) (regTwo!19238 lt!1041417)) (head!6683 s!11993)))))

(declare-fun b!2996486 () Bool)

(assert (=> b!2996486 (= e!1882934 (Union!9363 (Concat!14684 call!200857 (regTwo!19238 lt!1041417)) call!200856))))

(declare-fun d!845479 () Bool)

(declare-fun lt!1041494 () Regex!9363)

(assert (=> d!845479 (validRegex!4096 lt!1041494)))

(assert (=> d!845479 (= lt!1041494 e!1882931)))

(declare-fun c!492853 () Bool)

(assert (=> d!845479 (= c!492853 (or ((_ is EmptyExpr!9363) lt!1041417) ((_ is EmptyLang!9363) lt!1041417)))))

(assert (=> d!845479 (validRegex!4096 lt!1041417)))

(assert (=> d!845479 (= (derivativeStep!2624 lt!1041417 (head!6683 s!11993)) lt!1041494)))

(declare-fun bm!200849 () Bool)

(assert (=> bm!200849 (= call!200855 call!200854)))

(declare-fun b!2996487 () Bool)

(assert (=> b!2996487 (= e!1882930 e!1882933)))

(assert (=> b!2996487 (= c!492855 ((_ is Star!9363) lt!1041417))))

(declare-fun b!2996488 () Bool)

(assert (=> b!2996488 (= e!1882930 (Union!9363 call!200856 call!200854))))

(assert (= (and d!845479 c!492853) b!2996481))

(assert (= (and d!845479 (not c!492853)) b!2996479))

(assert (= (and b!2996479 c!492857) b!2996485))

(assert (= (and b!2996479 (not c!492857)) b!2996484))

(assert (= (and b!2996484 c!492856) b!2996488))

(assert (= (and b!2996484 (not c!492856)) b!2996487))

(assert (= (and b!2996487 c!492855) b!2996483))

(assert (= (and b!2996487 (not c!492855)) b!2996480))

(assert (= (and b!2996480 c!492854) b!2996486))

(assert (= (and b!2996480 (not c!492854)) b!2996482))

(assert (= (or b!2996486 b!2996482) bm!200851))

(assert (= (or b!2996483 bm!200851) bm!200849))

(assert (= (or b!2996488 bm!200849) bm!200850))

(assert (= (or b!2996488 b!2996486) bm!200852))

(declare-fun m!3350113 () Bool)

(assert (=> b!2996480 m!3350113))

(assert (=> bm!200850 m!3350005))

(declare-fun m!3350115 () Bool)

(assert (=> bm!200850 m!3350115))

(assert (=> bm!200852 m!3350005))

(declare-fun m!3350117 () Bool)

(assert (=> bm!200852 m!3350117))

(declare-fun m!3350119 () Bool)

(assert (=> d!845479 m!3350119))

(assert (=> d!845479 m!3350013))

(assert (=> b!2996112 d!845479))

(assert (=> b!2996112 d!845473))

(declare-fun d!845481 () Bool)

(assert (=> d!845481 (= (tail!4909 s!11993) (t!234293 s!11993))))

(assert (=> b!2996112 d!845481))

(assert (=> b!2996134 d!845473))

(declare-fun b!2996489 () Bool)

(declare-fun e!1882942 () Regex!9363)

(declare-fun lt!1041497 () Regex!9363)

(assert (=> b!2996489 (= e!1882942 lt!1041497)))

(declare-fun c!492858 () Bool)

(declare-fun call!200859 () Regex!9363)

(declare-fun c!492860 () Bool)

(declare-fun bm!200853 () Bool)

(assert (=> bm!200853 (= call!200859 (simplify!354 (ite c!492860 (reg!9692 (ite c!492730 (regTwo!19239 (regTwo!19238 r!17423)) (regOne!19238 (regTwo!19238 r!17423)))) (ite c!492858 (regOne!19239 (ite c!492730 (regTwo!19239 (regTwo!19238 r!17423)) (regOne!19238 (regTwo!19238 r!17423)))) (regTwo!19238 (ite c!492730 (regTwo!19239 (regTwo!19238 r!17423)) (regOne!19238 (regTwo!19238 r!17423))))))))))

(declare-fun b!2996491 () Bool)

(declare-fun e!1882943 () Regex!9363)

(declare-fun lt!1041496 () Regex!9363)

(assert (=> b!2996491 (= e!1882943 (Star!9363 lt!1041496))))

(declare-fun b!2996492 () Bool)

(declare-fun c!492862 () Bool)

(declare-fun lt!1041495 () Regex!9363)

(assert (=> b!2996492 (= c!492862 (isEmptyExpr!470 lt!1041495))))

(declare-fun e!1882940 () Regex!9363)

(declare-fun e!1882944 () Regex!9363)

(assert (=> b!2996492 (= e!1882940 e!1882944)))

(declare-fun b!2996493 () Bool)

(declare-fun e!1882936 () Regex!9363)

(assert (=> b!2996493 (= e!1882936 (ite c!492730 (regTwo!19239 (regTwo!19238 r!17423)) (regOne!19238 (regTwo!19238 r!17423))))))

(declare-fun call!200861 () Bool)

(declare-fun bm!200854 () Bool)

(assert (=> bm!200854 (= call!200861 (isEmptyLang!453 (ite c!492858 lt!1041497 lt!1041495)))))

(declare-fun bm!200855 () Bool)

(declare-fun call!200864 () Bool)

(declare-fun call!200860 () Bool)

(assert (=> bm!200855 (= call!200864 call!200860)))

(declare-fun lt!1041500 () Regex!9363)

(declare-fun bm!200856 () Bool)

(declare-fun lt!1041498 () Regex!9363)

(assert (=> bm!200856 (= call!200860 (isEmptyLang!453 (ite c!492860 lt!1041496 (ite c!492858 lt!1041500 lt!1041498))))))

(declare-fun b!2996494 () Bool)

(assert (=> b!2996494 (= c!492858 ((_ is Union!9363) (ite c!492730 (regTwo!19239 (regTwo!19238 r!17423)) (regOne!19238 (regTwo!19238 r!17423)))))))

(declare-fun e!1882947 () Regex!9363)

(declare-fun e!1882935 () Regex!9363)

(assert (=> b!2996494 (= e!1882947 e!1882935)))

(declare-fun b!2996495 () Bool)

(declare-fun e!1882939 () Regex!9363)

(assert (=> b!2996495 (= e!1882939 (Concat!14684 lt!1041495 lt!1041498))))

(declare-fun b!2996496 () Bool)

(assert (=> b!2996496 (= e!1882942 (Union!9363 lt!1041497 lt!1041500))))

(declare-fun b!2996497 () Bool)

(declare-fun c!492861 () Bool)

(assert (=> b!2996497 (= c!492861 call!200864)))

(declare-fun e!1882948 () Regex!9363)

(assert (=> b!2996497 (= e!1882948 e!1882942)))

(declare-fun b!2996498 () Bool)

(assert (=> b!2996498 (= e!1882940 EmptyLang!9363)))

(declare-fun b!2996499 () Bool)

(assert (=> b!2996499 (= e!1882944 lt!1041498)))

(declare-fun b!2996500 () Bool)

(assert (=> b!2996500 (= e!1882944 e!1882939)))

(declare-fun c!492868 () Bool)

(declare-fun call!200858 () Bool)

(assert (=> b!2996500 (= c!492868 call!200858)))

(declare-fun b!2996501 () Bool)

(assert (=> b!2996501 (= e!1882943 EmptyExpr!9363)))

(declare-fun b!2996502 () Bool)

(assert (=> b!2996502 (= e!1882939 lt!1041495)))

(declare-fun b!2996503 () Bool)

(assert (=> b!2996503 (= e!1882935 e!1882948)))

(declare-fun call!200862 () Regex!9363)

(assert (=> b!2996503 (= lt!1041497 call!200862)))

(declare-fun call!200863 () Regex!9363)

(assert (=> b!2996503 (= lt!1041500 call!200863)))

(declare-fun c!492859 () Bool)

(assert (=> b!2996503 (= c!492859 call!200861)))

(declare-fun bm!200857 () Bool)

(assert (=> bm!200857 (= call!200858 (isEmptyExpr!470 (ite c!492860 lt!1041496 lt!1041498)))))

(declare-fun lt!1041499 () Regex!9363)

(declare-fun e!1882946 () Bool)

(declare-fun b!2996504 () Bool)

(assert (=> b!2996504 (= e!1882946 (= (nullable!3026 lt!1041499) (nullable!3026 (ite c!492730 (regTwo!19239 (regTwo!19238 r!17423)) (regOne!19238 (regTwo!19238 r!17423))))))))

(declare-fun b!2996490 () Bool)

(declare-fun e!1882937 () Regex!9363)

(assert (=> b!2996490 (= e!1882937 e!1882936)))

(declare-fun c!492864 () Bool)

(assert (=> b!2996490 (= c!492864 ((_ is ElementMatch!9363) (ite c!492730 (regTwo!19239 (regTwo!19238 r!17423)) (regOne!19238 (regTwo!19238 r!17423)))))))

(declare-fun d!845483 () Bool)

(assert (=> d!845483 e!1882946))

(declare-fun res!1235662 () Bool)

(assert (=> d!845483 (=> (not res!1235662) (not e!1882946))))

(assert (=> d!845483 (= res!1235662 (validRegex!4096 lt!1041499))))

(assert (=> d!845483 (= lt!1041499 e!1882937)))

(declare-fun c!492866 () Bool)

(assert (=> d!845483 (= c!492866 ((_ is EmptyLang!9363) (ite c!492730 (regTwo!19239 (regTwo!19238 r!17423)) (regOne!19238 (regTwo!19238 r!17423)))))))

(assert (=> d!845483 (validRegex!4096 (ite c!492730 (regTwo!19239 (regTwo!19238 r!17423)) (regOne!19238 (regTwo!19238 r!17423))))))

(assert (=> d!845483 (= (simplify!354 (ite c!492730 (regTwo!19239 (regTwo!19238 r!17423)) (regOne!19238 (regTwo!19238 r!17423)))) lt!1041499)))

(declare-fun b!2996505 () Bool)

(declare-fun e!1882945 () Bool)

(assert (=> b!2996505 (= e!1882945 call!200864)))

(declare-fun bm!200858 () Bool)

(assert (=> bm!200858 (= call!200862 call!200859)))

(declare-fun b!2996506 () Bool)

(declare-fun c!492865 () Bool)

(declare-fun e!1882938 () Bool)

(assert (=> b!2996506 (= c!492865 e!1882938)))

(declare-fun res!1235661 () Bool)

(assert (=> b!2996506 (=> res!1235661 e!1882938)))

(assert (=> b!2996506 (= res!1235661 call!200860)))

(assert (=> b!2996506 (= lt!1041496 call!200859)))

(assert (=> b!2996506 (= e!1882947 e!1882943)))

(declare-fun b!2996507 () Bool)

(assert (=> b!2996507 (= e!1882938 call!200858)))

(declare-fun b!2996508 () Bool)

(assert (=> b!2996508 (= e!1882937 EmptyLang!9363)))

(declare-fun b!2996509 () Bool)

(assert (=> b!2996509 (= e!1882935 e!1882940)))

(assert (=> b!2996509 (= lt!1041495 call!200863)))

(assert (=> b!2996509 (= lt!1041498 call!200862)))

(declare-fun res!1235660 () Bool)

(assert (=> b!2996509 (= res!1235660 call!200861)))

(assert (=> b!2996509 (=> res!1235660 e!1882945)))

(declare-fun c!492863 () Bool)

(assert (=> b!2996509 (= c!492863 e!1882945)))

(declare-fun b!2996510 () Bool)

(declare-fun e!1882941 () Regex!9363)

(assert (=> b!2996510 (= e!1882941 e!1882947)))

(assert (=> b!2996510 (= c!492860 ((_ is Star!9363) (ite c!492730 (regTwo!19239 (regTwo!19238 r!17423)) (regOne!19238 (regTwo!19238 r!17423)))))))

(declare-fun b!2996511 () Bool)

(assert (=> b!2996511 (= e!1882941 EmptyExpr!9363)))

(declare-fun b!2996512 () Bool)

(declare-fun c!492867 () Bool)

(assert (=> b!2996512 (= c!492867 ((_ is EmptyExpr!9363) (ite c!492730 (regTwo!19239 (regTwo!19238 r!17423)) (regOne!19238 (regTwo!19238 r!17423)))))))

(assert (=> b!2996512 (= e!1882936 e!1882941)))

(declare-fun b!2996513 () Bool)

(assert (=> b!2996513 (= e!1882948 lt!1041500)))

(declare-fun bm!200859 () Bool)

(assert (=> bm!200859 (= call!200863 (simplify!354 (ite c!492858 (regTwo!19239 (ite c!492730 (regTwo!19239 (regTwo!19238 r!17423)) (regOne!19238 (regTwo!19238 r!17423)))) (regOne!19238 (ite c!492730 (regTwo!19239 (regTwo!19238 r!17423)) (regOne!19238 (regTwo!19238 r!17423)))))))))

(assert (= (and d!845483 c!492866) b!2996508))

(assert (= (and d!845483 (not c!492866)) b!2996490))

(assert (= (and b!2996490 c!492864) b!2996493))

(assert (= (and b!2996490 (not c!492864)) b!2996512))

(assert (= (and b!2996512 c!492867) b!2996511))

(assert (= (and b!2996512 (not c!492867)) b!2996510))

(assert (= (and b!2996510 c!492860) b!2996506))

(assert (= (and b!2996510 (not c!492860)) b!2996494))

(assert (= (and b!2996506 (not res!1235661)) b!2996507))

(assert (= (and b!2996506 c!492865) b!2996501))

(assert (= (and b!2996506 (not c!492865)) b!2996491))

(assert (= (and b!2996494 c!492858) b!2996503))

(assert (= (and b!2996494 (not c!492858)) b!2996509))

(assert (= (and b!2996503 c!492859) b!2996513))

(assert (= (and b!2996503 (not c!492859)) b!2996497))

(assert (= (and b!2996497 c!492861) b!2996489))

(assert (= (and b!2996497 (not c!492861)) b!2996496))

(assert (= (and b!2996509 (not res!1235660)) b!2996505))

(assert (= (and b!2996509 c!492863) b!2996498))

(assert (= (and b!2996509 (not c!492863)) b!2996492))

(assert (= (and b!2996492 c!492862) b!2996499))

(assert (= (and b!2996492 (not c!492862)) b!2996500))

(assert (= (and b!2996500 c!492868) b!2996502))

(assert (= (and b!2996500 (not c!492868)) b!2996495))

(assert (= (or b!2996503 b!2996509) bm!200858))

(assert (= (or b!2996503 b!2996509) bm!200859))

(assert (= (or b!2996503 b!2996509) bm!200854))

(assert (= (or b!2996497 b!2996505) bm!200855))

(assert (= (or b!2996507 b!2996500) bm!200857))

(assert (= (or b!2996506 bm!200858) bm!200853))

(assert (= (or b!2996506 bm!200855) bm!200856))

(assert (= (and d!845483 res!1235662) b!2996504))

(declare-fun m!3350121 () Bool)

(assert (=> bm!200854 m!3350121))

(declare-fun m!3350123 () Bool)

(assert (=> b!2996504 m!3350123))

(declare-fun m!3350125 () Bool)

(assert (=> b!2996504 m!3350125))

(declare-fun m!3350127 () Bool)

(assert (=> bm!200859 m!3350127))

(declare-fun m!3350129 () Bool)

(assert (=> bm!200853 m!3350129))

(declare-fun m!3350131 () Bool)

(assert (=> bm!200857 m!3350131))

(declare-fun m!3350133 () Bool)

(assert (=> d!845483 m!3350133))

(declare-fun m!3350135 () Bool)

(assert (=> d!845483 m!3350135))

(declare-fun m!3350137 () Bool)

(assert (=> b!2996492 m!3350137))

(declare-fun m!3350139 () Bool)

(assert (=> bm!200856 m!3350139))

(assert (=> bm!200775 d!845483))

(declare-fun b!2996539 () Bool)

(declare-fun e!1882970 () Bool)

(declare-fun e!1882971 () Bool)

(assert (=> b!2996539 (= e!1882970 e!1882971)))

(declare-fun res!1235679 () Bool)

(declare-fun call!200871 () Bool)

(assert (=> b!2996539 (= res!1235679 call!200871)))

(assert (=> b!2996539 (=> res!1235679 e!1882971)))

(declare-fun b!2996540 () Bool)

(declare-fun e!1882972 () Bool)

(assert (=> b!2996540 (= e!1882970 e!1882972)))

(declare-fun res!1235676 () Bool)

(assert (=> b!2996540 (= res!1235676 call!200871)))

(assert (=> b!2996540 (=> (not res!1235676) (not e!1882972))))

(declare-fun bm!200866 () Bool)

(declare-fun call!200872 () Bool)

(declare-fun c!492875 () Bool)

(assert (=> bm!200866 (= call!200872 (nullable!3026 (ite c!492875 (regTwo!19239 (regOne!19238 r!17423)) (regTwo!19238 (regOne!19238 r!17423)))))))

(declare-fun b!2996541 () Bool)

(declare-fun e!1882969 () Bool)

(declare-fun e!1882973 () Bool)

(assert (=> b!2996541 (= e!1882969 e!1882973)))

(declare-fun res!1235678 () Bool)

(assert (=> b!2996541 (=> res!1235678 e!1882973)))

(assert (=> b!2996541 (= res!1235678 ((_ is Star!9363) (regOne!19238 r!17423)))))

(declare-fun b!2996542 () Bool)

(assert (=> b!2996542 (= e!1882971 call!200872)))

(declare-fun d!845485 () Bool)

(declare-fun res!1235677 () Bool)

(declare-fun e!1882968 () Bool)

(assert (=> d!845485 (=> res!1235677 e!1882968)))

(assert (=> d!845485 (= res!1235677 ((_ is EmptyExpr!9363) (regOne!19238 r!17423)))))

(assert (=> d!845485 (= (nullableFct!860 (regOne!19238 r!17423)) e!1882968)))

(declare-fun bm!200867 () Bool)

(assert (=> bm!200867 (= call!200871 (nullable!3026 (ite c!492875 (regOne!19239 (regOne!19238 r!17423)) (regOne!19238 (regOne!19238 r!17423)))))))

(declare-fun b!2996543 () Bool)

(assert (=> b!2996543 (= e!1882973 e!1882970)))

(assert (=> b!2996543 (= c!492875 ((_ is Union!9363) (regOne!19238 r!17423)))))

(declare-fun b!2996544 () Bool)

(assert (=> b!2996544 (= e!1882968 e!1882969)))

(declare-fun res!1235680 () Bool)

(assert (=> b!2996544 (=> (not res!1235680) (not e!1882969))))

(assert (=> b!2996544 (= res!1235680 (and (not ((_ is EmptyLang!9363) (regOne!19238 r!17423))) (not ((_ is ElementMatch!9363) (regOne!19238 r!17423)))))))

(declare-fun b!2996545 () Bool)

(assert (=> b!2996545 (= e!1882972 call!200872)))

(assert (= (and d!845485 (not res!1235677)) b!2996544))

(assert (= (and b!2996544 res!1235680) b!2996541))

(assert (= (and b!2996541 (not res!1235678)) b!2996543))

(assert (= (and b!2996543 c!492875) b!2996539))

(assert (= (and b!2996543 (not c!492875)) b!2996540))

(assert (= (and b!2996539 (not res!1235679)) b!2996542))

(assert (= (and b!2996540 res!1235676) b!2996545))

(assert (= (or b!2996542 b!2996545) bm!200866))

(assert (= (or b!2996539 b!2996540) bm!200867))

(declare-fun m!3350141 () Bool)

(assert (=> bm!200866 m!3350141))

(declare-fun m!3350143 () Bool)

(assert (=> bm!200867 m!3350143))

(assert (=> d!845423 d!845485))

(declare-fun b!2996546 () Bool)

(declare-fun e!1882981 () Regex!9363)

(declare-fun lt!1041503 () Regex!9363)

(assert (=> b!2996546 (= e!1882981 lt!1041503)))

(declare-fun call!200874 () Regex!9363)

(declare-fun bm!200868 () Bool)

(declare-fun c!492878 () Bool)

(declare-fun c!492876 () Bool)

(assert (=> bm!200868 (= call!200874 (simplify!354 (ite c!492878 (reg!9692 (ite c!492743 (reg!9692 (regOne!19238 r!17423)) (ite c!492741 (regOne!19239 (regOne!19238 r!17423)) (regTwo!19238 (regOne!19238 r!17423))))) (ite c!492876 (regOne!19239 (ite c!492743 (reg!9692 (regOne!19238 r!17423)) (ite c!492741 (regOne!19239 (regOne!19238 r!17423)) (regTwo!19238 (regOne!19238 r!17423))))) (regTwo!19238 (ite c!492743 (reg!9692 (regOne!19238 r!17423)) (ite c!492741 (regOne!19239 (regOne!19238 r!17423)) (regTwo!19238 (regOne!19238 r!17423)))))))))))

(declare-fun b!2996548 () Bool)

(declare-fun e!1882982 () Regex!9363)

(declare-fun lt!1041502 () Regex!9363)

(assert (=> b!2996548 (= e!1882982 (Star!9363 lt!1041502))))

(declare-fun b!2996549 () Bool)

(declare-fun c!492880 () Bool)

(declare-fun lt!1041501 () Regex!9363)

(assert (=> b!2996549 (= c!492880 (isEmptyExpr!470 lt!1041501))))

(declare-fun e!1882979 () Regex!9363)

(declare-fun e!1882983 () Regex!9363)

(assert (=> b!2996549 (= e!1882979 e!1882983)))

(declare-fun e!1882975 () Regex!9363)

(declare-fun b!2996550 () Bool)

(assert (=> b!2996550 (= e!1882975 (ite c!492743 (reg!9692 (regOne!19238 r!17423)) (ite c!492741 (regOne!19239 (regOne!19238 r!17423)) (regTwo!19238 (regOne!19238 r!17423)))))))

(declare-fun bm!200869 () Bool)

(declare-fun call!200876 () Bool)

(assert (=> bm!200869 (= call!200876 (isEmptyLang!453 (ite c!492876 lt!1041503 lt!1041501)))))

(declare-fun bm!200870 () Bool)

(declare-fun call!200879 () Bool)

(declare-fun call!200875 () Bool)

(assert (=> bm!200870 (= call!200879 call!200875)))

(declare-fun lt!1041506 () Regex!9363)

(declare-fun bm!200871 () Bool)

(declare-fun lt!1041504 () Regex!9363)

(assert (=> bm!200871 (= call!200875 (isEmptyLang!453 (ite c!492878 lt!1041502 (ite c!492876 lt!1041506 lt!1041504))))))

(declare-fun b!2996551 () Bool)

(assert (=> b!2996551 (= c!492876 ((_ is Union!9363) (ite c!492743 (reg!9692 (regOne!19238 r!17423)) (ite c!492741 (regOne!19239 (regOne!19238 r!17423)) (regTwo!19238 (regOne!19238 r!17423))))))))

(declare-fun e!1882986 () Regex!9363)

(declare-fun e!1882974 () Regex!9363)

(assert (=> b!2996551 (= e!1882986 e!1882974)))

(declare-fun b!2996552 () Bool)

(declare-fun e!1882978 () Regex!9363)

(assert (=> b!2996552 (= e!1882978 (Concat!14684 lt!1041501 lt!1041504))))

(declare-fun b!2996553 () Bool)

(assert (=> b!2996553 (= e!1882981 (Union!9363 lt!1041503 lt!1041506))))

(declare-fun b!2996554 () Bool)

(declare-fun c!492879 () Bool)

(assert (=> b!2996554 (= c!492879 call!200879)))

(declare-fun e!1882987 () Regex!9363)

(assert (=> b!2996554 (= e!1882987 e!1882981)))

(declare-fun b!2996555 () Bool)

(assert (=> b!2996555 (= e!1882979 EmptyLang!9363)))

(declare-fun b!2996556 () Bool)

(assert (=> b!2996556 (= e!1882983 lt!1041504)))

(declare-fun b!2996557 () Bool)

(assert (=> b!2996557 (= e!1882983 e!1882978)))

(declare-fun c!492886 () Bool)

(declare-fun call!200873 () Bool)

(assert (=> b!2996557 (= c!492886 call!200873)))

(declare-fun b!2996558 () Bool)

(assert (=> b!2996558 (= e!1882982 EmptyExpr!9363)))

(declare-fun b!2996559 () Bool)

(assert (=> b!2996559 (= e!1882978 lt!1041501)))

(declare-fun b!2996560 () Bool)

(assert (=> b!2996560 (= e!1882974 e!1882987)))

(declare-fun call!200877 () Regex!9363)

(assert (=> b!2996560 (= lt!1041503 call!200877)))

(declare-fun call!200878 () Regex!9363)

(assert (=> b!2996560 (= lt!1041506 call!200878)))

(declare-fun c!492877 () Bool)

(assert (=> b!2996560 (= c!492877 call!200876)))

(declare-fun bm!200872 () Bool)

(assert (=> bm!200872 (= call!200873 (isEmptyExpr!470 (ite c!492878 lt!1041502 lt!1041504)))))

(declare-fun b!2996561 () Bool)

(declare-fun lt!1041505 () Regex!9363)

(declare-fun e!1882985 () Bool)

(assert (=> b!2996561 (= e!1882985 (= (nullable!3026 lt!1041505) (nullable!3026 (ite c!492743 (reg!9692 (regOne!19238 r!17423)) (ite c!492741 (regOne!19239 (regOne!19238 r!17423)) (regTwo!19238 (regOne!19238 r!17423)))))))))

(declare-fun b!2996547 () Bool)

(declare-fun e!1882976 () Regex!9363)

(assert (=> b!2996547 (= e!1882976 e!1882975)))

(declare-fun c!492882 () Bool)

(assert (=> b!2996547 (= c!492882 ((_ is ElementMatch!9363) (ite c!492743 (reg!9692 (regOne!19238 r!17423)) (ite c!492741 (regOne!19239 (regOne!19238 r!17423)) (regTwo!19238 (regOne!19238 r!17423))))))))

(declare-fun d!845489 () Bool)

(assert (=> d!845489 e!1882985))

(declare-fun res!1235683 () Bool)

(assert (=> d!845489 (=> (not res!1235683) (not e!1882985))))

(assert (=> d!845489 (= res!1235683 (validRegex!4096 lt!1041505))))

(assert (=> d!845489 (= lt!1041505 e!1882976)))

(declare-fun c!492884 () Bool)

(assert (=> d!845489 (= c!492884 ((_ is EmptyLang!9363) (ite c!492743 (reg!9692 (regOne!19238 r!17423)) (ite c!492741 (regOne!19239 (regOne!19238 r!17423)) (regTwo!19238 (regOne!19238 r!17423))))))))

(assert (=> d!845489 (validRegex!4096 (ite c!492743 (reg!9692 (regOne!19238 r!17423)) (ite c!492741 (regOne!19239 (regOne!19238 r!17423)) (regTwo!19238 (regOne!19238 r!17423)))))))

(assert (=> d!845489 (= (simplify!354 (ite c!492743 (reg!9692 (regOne!19238 r!17423)) (ite c!492741 (regOne!19239 (regOne!19238 r!17423)) (regTwo!19238 (regOne!19238 r!17423))))) lt!1041505)))

(declare-fun b!2996562 () Bool)

(declare-fun e!1882984 () Bool)

(assert (=> b!2996562 (= e!1882984 call!200879)))

(declare-fun bm!200873 () Bool)

(assert (=> bm!200873 (= call!200877 call!200874)))

(declare-fun b!2996563 () Bool)

(declare-fun c!492883 () Bool)

(declare-fun e!1882977 () Bool)

(assert (=> b!2996563 (= c!492883 e!1882977)))

(declare-fun res!1235682 () Bool)

(assert (=> b!2996563 (=> res!1235682 e!1882977)))

(assert (=> b!2996563 (= res!1235682 call!200875)))

(assert (=> b!2996563 (= lt!1041502 call!200874)))

(assert (=> b!2996563 (= e!1882986 e!1882982)))

(declare-fun b!2996564 () Bool)

(assert (=> b!2996564 (= e!1882977 call!200873)))

(declare-fun b!2996565 () Bool)

(assert (=> b!2996565 (= e!1882976 EmptyLang!9363)))

(declare-fun b!2996566 () Bool)

(assert (=> b!2996566 (= e!1882974 e!1882979)))

(assert (=> b!2996566 (= lt!1041501 call!200878)))

(assert (=> b!2996566 (= lt!1041504 call!200877)))

(declare-fun res!1235681 () Bool)

(assert (=> b!2996566 (= res!1235681 call!200876)))

(assert (=> b!2996566 (=> res!1235681 e!1882984)))

(declare-fun c!492881 () Bool)

(assert (=> b!2996566 (= c!492881 e!1882984)))

(declare-fun b!2996567 () Bool)

(declare-fun e!1882980 () Regex!9363)

(assert (=> b!2996567 (= e!1882980 e!1882986)))

(assert (=> b!2996567 (= c!492878 ((_ is Star!9363) (ite c!492743 (reg!9692 (regOne!19238 r!17423)) (ite c!492741 (regOne!19239 (regOne!19238 r!17423)) (regTwo!19238 (regOne!19238 r!17423))))))))

(declare-fun b!2996568 () Bool)

(assert (=> b!2996568 (= e!1882980 EmptyExpr!9363)))

(declare-fun c!492885 () Bool)

(declare-fun b!2996569 () Bool)

(assert (=> b!2996569 (= c!492885 ((_ is EmptyExpr!9363) (ite c!492743 (reg!9692 (regOne!19238 r!17423)) (ite c!492741 (regOne!19239 (regOne!19238 r!17423)) (regTwo!19238 (regOne!19238 r!17423))))))))

(assert (=> b!2996569 (= e!1882975 e!1882980)))

(declare-fun b!2996570 () Bool)

(assert (=> b!2996570 (= e!1882987 lt!1041506)))

(declare-fun bm!200874 () Bool)

(assert (=> bm!200874 (= call!200878 (simplify!354 (ite c!492876 (regTwo!19239 (ite c!492743 (reg!9692 (regOne!19238 r!17423)) (ite c!492741 (regOne!19239 (regOne!19238 r!17423)) (regTwo!19238 (regOne!19238 r!17423))))) (regOne!19238 (ite c!492743 (reg!9692 (regOne!19238 r!17423)) (ite c!492741 (regOne!19239 (regOne!19238 r!17423)) (regTwo!19238 (regOne!19238 r!17423))))))))))

(assert (= (and d!845489 c!492884) b!2996565))

(assert (= (and d!845489 (not c!492884)) b!2996547))

(assert (= (and b!2996547 c!492882) b!2996550))

(assert (= (and b!2996547 (not c!492882)) b!2996569))

(assert (= (and b!2996569 c!492885) b!2996568))

(assert (= (and b!2996569 (not c!492885)) b!2996567))

(assert (= (and b!2996567 c!492878) b!2996563))

(assert (= (and b!2996567 (not c!492878)) b!2996551))

(assert (= (and b!2996563 (not res!1235682)) b!2996564))

(assert (= (and b!2996563 c!492883) b!2996558))

(assert (= (and b!2996563 (not c!492883)) b!2996548))

(assert (= (and b!2996551 c!492876) b!2996560))

(assert (= (and b!2996551 (not c!492876)) b!2996566))

(assert (= (and b!2996560 c!492877) b!2996570))

(assert (= (and b!2996560 (not c!492877)) b!2996554))

(assert (= (and b!2996554 c!492879) b!2996546))

(assert (= (and b!2996554 (not c!492879)) b!2996553))

(assert (= (and b!2996566 (not res!1235681)) b!2996562))

(assert (= (and b!2996566 c!492881) b!2996555))

(assert (= (and b!2996566 (not c!492881)) b!2996549))

(assert (= (and b!2996549 c!492880) b!2996556))

(assert (= (and b!2996549 (not c!492880)) b!2996557))

(assert (= (and b!2996557 c!492886) b!2996559))

(assert (= (and b!2996557 (not c!492886)) b!2996552))

(assert (= (or b!2996560 b!2996566) bm!200873))

(assert (= (or b!2996560 b!2996566) bm!200874))

(assert (= (or b!2996560 b!2996566) bm!200869))

(assert (= (or b!2996554 b!2996562) bm!200870))

(assert (= (or b!2996564 b!2996557) bm!200872))

(assert (= (or b!2996563 bm!200873) bm!200868))

(assert (= (or b!2996563 bm!200870) bm!200871))

(assert (= (and d!845489 res!1235683) b!2996561))

(declare-fun m!3350145 () Bool)

(assert (=> bm!200869 m!3350145))

(declare-fun m!3350147 () Bool)

(assert (=> b!2996561 m!3350147))

(declare-fun m!3350149 () Bool)

(assert (=> b!2996561 m!3350149))

(declare-fun m!3350151 () Bool)

(assert (=> bm!200874 m!3350151))

(declare-fun m!3350153 () Bool)

(assert (=> bm!200868 m!3350153))

(declare-fun m!3350155 () Bool)

(assert (=> bm!200872 m!3350155))

(declare-fun m!3350157 () Bool)

(assert (=> d!845489 m!3350157))

(declare-fun m!3350159 () Bool)

(assert (=> d!845489 m!3350159))

(declare-fun m!3350161 () Bool)

(assert (=> b!2996549 m!3350161))

(declare-fun m!3350163 () Bool)

(assert (=> bm!200871 m!3350163))

(assert (=> bm!200776 d!845489))

(assert (=> bm!200837 d!845441))

(assert (=> bm!200786 d!845441))

(declare-fun d!845491 () Bool)

(declare-fun choose!17787 (Int) Bool)

(assert (=> d!845491 (= (Exists!1636 (ite c!492831 lambda!112041 lambda!112042)) (choose!17787 (ite c!492831 lambda!112041 lambda!112042)))))

(declare-fun bs!528097 () Bool)

(assert (= bs!528097 d!845491))

(declare-fun m!3350173 () Bool)

(assert (=> bs!528097 m!3350173))

(assert (=> bm!200836 d!845491))

(declare-fun d!845497 () Bool)

(assert (=> d!845497 (= (isEmpty!19378 (tail!4909 s!11993)) ((_ is Nil!35104) (tail!4909 s!11993)))))

(assert (=> b!2996123 d!845497))

(assert (=> b!2996123 d!845481))

(declare-fun b!2996571 () Bool)

(declare-fun res!1235689 () Bool)

(declare-fun e!1882993 () Bool)

(assert (=> b!2996571 (=> res!1235689 e!1882993)))

(assert (=> b!2996571 (= res!1235689 (not (isEmpty!19378 (tail!4909 (tail!4909 s!11993)))))))

(declare-fun b!2996572 () Bool)

(declare-fun e!1882994 () Bool)

(declare-fun e!1882988 () Bool)

(assert (=> b!2996572 (= e!1882994 e!1882988)))

(declare-fun c!492888 () Bool)

(assert (=> b!2996572 (= c!492888 ((_ is EmptyLang!9363) (derivativeStep!2624 (regTwo!19238 r!17423) (head!6683 s!11993))))))

(declare-fun b!2996573 () Bool)

(declare-fun e!1882989 () Bool)

(declare-fun e!1882992 () Bool)

(assert (=> b!2996573 (= e!1882989 e!1882992)))

(declare-fun res!1235688 () Bool)

(assert (=> b!2996573 (=> (not res!1235688) (not e!1882992))))

(declare-fun lt!1041507 () Bool)

(assert (=> b!2996573 (= res!1235688 (not lt!1041507))))

(declare-fun b!2996574 () Bool)

(declare-fun e!1882990 () Bool)

(assert (=> b!2996574 (= e!1882990 (matchR!4245 (derivativeStep!2624 (derivativeStep!2624 (regTwo!19238 r!17423) (head!6683 s!11993)) (head!6683 (tail!4909 s!11993))) (tail!4909 (tail!4909 s!11993))))))

(declare-fun b!2996575 () Bool)

(assert (=> b!2996575 (= e!1882993 (not (= (head!6683 (tail!4909 s!11993)) (c!492681 (derivativeStep!2624 (regTwo!19238 r!17423) (head!6683 s!11993))))))))

(declare-fun b!2996576 () Bool)

(declare-fun res!1235690 () Bool)

(declare-fun e!1882991 () Bool)

(assert (=> b!2996576 (=> (not res!1235690) (not e!1882991))))

(declare-fun call!200880 () Bool)

(assert (=> b!2996576 (= res!1235690 (not call!200880))))

(declare-fun b!2996577 () Bool)

(assert (=> b!2996577 (= e!1882990 (nullable!3026 (derivativeStep!2624 (regTwo!19238 r!17423) (head!6683 s!11993))))))

(declare-fun b!2996579 () Bool)

(declare-fun res!1235686 () Bool)

(assert (=> b!2996579 (=> res!1235686 e!1882989)))

(assert (=> b!2996579 (= res!1235686 e!1882991)))

(declare-fun res!1235687 () Bool)

(assert (=> b!2996579 (=> (not res!1235687) (not e!1882991))))

(assert (=> b!2996579 (= res!1235687 lt!1041507)))

(declare-fun b!2996580 () Bool)

(assert (=> b!2996580 (= e!1882994 (= lt!1041507 call!200880))))

(declare-fun b!2996581 () Bool)

(declare-fun res!1235685 () Bool)

(assert (=> b!2996581 (=> (not res!1235685) (not e!1882991))))

(assert (=> b!2996581 (= res!1235685 (isEmpty!19378 (tail!4909 (tail!4909 s!11993))))))

(declare-fun d!845501 () Bool)

(assert (=> d!845501 e!1882994))

(declare-fun c!492887 () Bool)

(assert (=> d!845501 (= c!492887 ((_ is EmptyExpr!9363) (derivativeStep!2624 (regTwo!19238 r!17423) (head!6683 s!11993))))))

(assert (=> d!845501 (= lt!1041507 e!1882990)))

(declare-fun c!492889 () Bool)

(assert (=> d!845501 (= c!492889 (isEmpty!19378 (tail!4909 s!11993)))))

(assert (=> d!845501 (validRegex!4096 (derivativeStep!2624 (regTwo!19238 r!17423) (head!6683 s!11993)))))

(assert (=> d!845501 (= (matchR!4245 (derivativeStep!2624 (regTwo!19238 r!17423) (head!6683 s!11993)) (tail!4909 s!11993)) lt!1041507)))

(declare-fun b!2996578 () Bool)

(assert (=> b!2996578 (= e!1882992 e!1882993)))

(declare-fun res!1235684 () Bool)

(assert (=> b!2996578 (=> res!1235684 e!1882993)))

(assert (=> b!2996578 (= res!1235684 call!200880)))

(declare-fun b!2996582 () Bool)

(assert (=> b!2996582 (= e!1882991 (= (head!6683 (tail!4909 s!11993)) (c!492681 (derivativeStep!2624 (regTwo!19238 r!17423) (head!6683 s!11993)))))))

(declare-fun b!2996583 () Bool)

(assert (=> b!2996583 (= e!1882988 (not lt!1041507))))

(declare-fun bm!200875 () Bool)

(assert (=> bm!200875 (= call!200880 (isEmpty!19378 (tail!4909 s!11993)))))

(declare-fun b!2996584 () Bool)

(declare-fun res!1235691 () Bool)

(assert (=> b!2996584 (=> res!1235691 e!1882989)))

(assert (=> b!2996584 (= res!1235691 (not ((_ is ElementMatch!9363) (derivativeStep!2624 (regTwo!19238 r!17423) (head!6683 s!11993)))))))

(assert (=> b!2996584 (= e!1882988 e!1882989)))

(assert (= (and d!845501 c!492889) b!2996577))

(assert (= (and d!845501 (not c!492889)) b!2996574))

(assert (= (and d!845501 c!492887) b!2996580))

(assert (= (and d!845501 (not c!492887)) b!2996572))

(assert (= (and b!2996572 c!492888) b!2996583))

(assert (= (and b!2996572 (not c!492888)) b!2996584))

(assert (= (and b!2996584 (not res!1235691)) b!2996579))

(assert (= (and b!2996579 res!1235687) b!2996576))

(assert (= (and b!2996576 res!1235690) b!2996581))

(assert (= (and b!2996581 res!1235685) b!2996582))

(assert (= (and b!2996579 (not res!1235686)) b!2996573))

(assert (= (and b!2996573 res!1235688) b!2996578))

(assert (= (and b!2996578 (not res!1235684)) b!2996571))

(assert (= (and b!2996571 (not res!1235689)) b!2996575))

(assert (= (or b!2996580 b!2996576 b!2996578) bm!200875))

(assert (=> b!2996571 m!3350001))

(assert (=> b!2996571 m!3350099))

(assert (=> b!2996571 m!3350099))

(assert (=> b!2996571 m!3350101))

(assert (=> b!2996574 m!3350001))

(assert (=> b!2996574 m!3350103))

(assert (=> b!2996574 m!3350015))

(assert (=> b!2996574 m!3350103))

(declare-fun m!3350175 () Bool)

(assert (=> b!2996574 m!3350175))

(assert (=> b!2996574 m!3350001))

(assert (=> b!2996574 m!3350099))

(assert (=> b!2996574 m!3350175))

(assert (=> b!2996574 m!3350099))

(declare-fun m!3350177 () Bool)

(assert (=> b!2996574 m!3350177))

(assert (=> b!2996581 m!3350001))

(assert (=> b!2996581 m!3350099))

(assert (=> b!2996581 m!3350099))

(assert (=> b!2996581 m!3350101))

(assert (=> b!2996577 m!3350015))

(declare-fun m!3350179 () Bool)

(assert (=> b!2996577 m!3350179))

(assert (=> d!845501 m!3350001))

(assert (=> d!845501 m!3350003))

(assert (=> d!845501 m!3350015))

(declare-fun m!3350181 () Bool)

(assert (=> d!845501 m!3350181))

(assert (=> bm!200875 m!3350001))

(assert (=> bm!200875 m!3350003))

(assert (=> b!2996582 m!3350001))

(assert (=> b!2996582 m!3350103))

(assert (=> b!2996575 m!3350001))

(assert (=> b!2996575 m!3350103))

(assert (=> b!2996126 d!845501))

(declare-fun b!2996585 () Bool)

(declare-fun e!1882996 () Regex!9363)

(declare-fun e!1882997 () Regex!9363)

(assert (=> b!2996585 (= e!1882996 e!1882997)))

(declare-fun c!492894 () Bool)

(assert (=> b!2996585 (= c!492894 ((_ is ElementMatch!9363) (regTwo!19238 r!17423)))))

(declare-fun b!2996586 () Bool)

(declare-fun c!492891 () Bool)

(assert (=> b!2996586 (= c!492891 (nullable!3026 (regOne!19238 (regTwo!19238 r!17423))))))

(declare-fun e!1882998 () Regex!9363)

(declare-fun e!1882999 () Regex!9363)

(assert (=> b!2996586 (= e!1882998 e!1882999)))

(declare-fun b!2996587 () Bool)

(assert (=> b!2996587 (= e!1882996 EmptyLang!9363)))

(declare-fun b!2996588 () Bool)

(declare-fun call!200884 () Regex!9363)

(assert (=> b!2996588 (= e!1882999 (Union!9363 (Concat!14684 call!200884 (regTwo!19238 (regTwo!19238 r!17423))) EmptyLang!9363))))

(declare-fun b!2996589 () Bool)

(declare-fun call!200882 () Regex!9363)

(assert (=> b!2996589 (= e!1882998 (Concat!14684 call!200882 (regTwo!19238 r!17423)))))

(declare-fun b!2996590 () Bool)

(declare-fun c!492893 () Bool)

(assert (=> b!2996590 (= c!492893 ((_ is Union!9363) (regTwo!19238 r!17423)))))

(declare-fun e!1882995 () Regex!9363)

(assert (=> b!2996590 (= e!1882997 e!1882995)))

(declare-fun bm!200877 () Bool)

(declare-fun call!200881 () Regex!9363)

(declare-fun c!492892 () Bool)

(assert (=> bm!200877 (= call!200881 (derivativeStep!2624 (ite c!492893 (regTwo!19239 (regTwo!19238 r!17423)) (ite c!492892 (reg!9692 (regTwo!19238 r!17423)) (regOne!19238 (regTwo!19238 r!17423)))) (head!6683 s!11993)))))

(declare-fun bm!200878 () Bool)

(assert (=> bm!200878 (= call!200884 call!200882)))

(declare-fun b!2996591 () Bool)

(assert (=> b!2996591 (= e!1882997 (ite (= (head!6683 s!11993) (c!492681 (regTwo!19238 r!17423))) EmptyExpr!9363 EmptyLang!9363))))

(declare-fun call!200883 () Regex!9363)

(declare-fun bm!200879 () Bool)

(assert (=> bm!200879 (= call!200883 (derivativeStep!2624 (ite c!492893 (regOne!19239 (regTwo!19238 r!17423)) (regTwo!19238 (regTwo!19238 r!17423))) (head!6683 s!11993)))))

(declare-fun b!2996592 () Bool)

(assert (=> b!2996592 (= e!1882999 (Union!9363 (Concat!14684 call!200884 (regTwo!19238 (regTwo!19238 r!17423))) call!200883))))

(declare-fun d!845507 () Bool)

(declare-fun lt!1041508 () Regex!9363)

(assert (=> d!845507 (validRegex!4096 lt!1041508)))

(assert (=> d!845507 (= lt!1041508 e!1882996)))

(declare-fun c!492890 () Bool)

(assert (=> d!845507 (= c!492890 (or ((_ is EmptyExpr!9363) (regTwo!19238 r!17423)) ((_ is EmptyLang!9363) (regTwo!19238 r!17423))))))

(assert (=> d!845507 (validRegex!4096 (regTwo!19238 r!17423))))

(assert (=> d!845507 (= (derivativeStep!2624 (regTwo!19238 r!17423) (head!6683 s!11993)) lt!1041508)))

(declare-fun bm!200876 () Bool)

(assert (=> bm!200876 (= call!200882 call!200881)))

(declare-fun b!2996593 () Bool)

(assert (=> b!2996593 (= e!1882995 e!1882998)))

(assert (=> b!2996593 (= c!492892 ((_ is Star!9363) (regTwo!19238 r!17423)))))

(declare-fun b!2996594 () Bool)

(assert (=> b!2996594 (= e!1882995 (Union!9363 call!200883 call!200881))))

(assert (= (and d!845507 c!492890) b!2996587))

(assert (= (and d!845507 (not c!492890)) b!2996585))

(assert (= (and b!2996585 c!492894) b!2996591))

(assert (= (and b!2996585 (not c!492894)) b!2996590))

(assert (= (and b!2996590 c!492893) b!2996594))

(assert (= (and b!2996590 (not c!492893)) b!2996593))

(assert (= (and b!2996593 c!492892) b!2996589))

(assert (= (and b!2996593 (not c!492892)) b!2996586))

(assert (= (and b!2996586 c!492891) b!2996592))

(assert (= (and b!2996586 (not c!492891)) b!2996588))

(assert (= (or b!2996592 b!2996588) bm!200878))

(assert (= (or b!2996589 bm!200878) bm!200876))

(assert (= (or b!2996594 bm!200876) bm!200877))

(assert (= (or b!2996594 b!2996592) bm!200879))

(declare-fun m!3350183 () Bool)

(assert (=> b!2996586 m!3350183))

(assert (=> bm!200877 m!3350005))

(declare-fun m!3350185 () Bool)

(assert (=> bm!200877 m!3350185))

(assert (=> bm!200879 m!3350005))

(declare-fun m!3350187 () Bool)

(assert (=> bm!200879 m!3350187))

(declare-fun m!3350189 () Bool)

(assert (=> d!845507 m!3350189))

(assert (=> d!845507 m!3349977))

(assert (=> b!2996126 d!845507))

(assert (=> b!2996126 d!845473))

(assert (=> b!2996126 d!845481))

(assert (=> d!845443 d!845441))

(declare-fun b!2996609 () Bool)

(declare-fun e!1883011 () Bool)

(declare-fun call!200888 () Bool)

(assert (=> b!2996609 (= e!1883011 call!200888)))

(declare-fun b!2996610 () Bool)

(declare-fun e!1883009 () Bool)

(declare-fun call!200886 () Bool)

(assert (=> b!2996610 (= e!1883009 call!200886)))

(declare-fun c!492899 () Bool)

(declare-fun c!492898 () Bool)

(declare-fun bm!200881 () Bool)

(assert (=> bm!200881 (= call!200888 (validRegex!4096 (ite c!492899 (reg!9692 lt!1041417) (ite c!492898 (regOne!19239 lt!1041417) (regTwo!19238 lt!1041417)))))))

(declare-fun b!2996612 () Bool)

(declare-fun e!1883012 () Bool)

(declare-fun call!200887 () Bool)

(assert (=> b!2996612 (= e!1883012 call!200887)))

(declare-fun bm!200882 () Bool)

(assert (=> bm!200882 (= call!200887 call!200888)))

(declare-fun b!2996613 () Bool)

(declare-fun e!1883008 () Bool)

(declare-fun e!1883007 () Bool)

(assert (=> b!2996613 (= e!1883008 e!1883007)))

(assert (=> b!2996613 (= c!492898 ((_ is Union!9363) lt!1041417))))

(declare-fun b!2996614 () Bool)

(assert (=> b!2996614 (= e!1883008 e!1883011)))

(declare-fun res!1235703 () Bool)

(assert (=> b!2996614 (= res!1235703 (not (nullable!3026 (reg!9692 lt!1041417))))))

(assert (=> b!2996614 (=> (not res!1235703) (not e!1883011))))

(declare-fun b!2996615 () Bool)

(declare-fun res!1235700 () Bool)

(declare-fun e!1883010 () Bool)

(assert (=> b!2996615 (=> res!1235700 e!1883010)))

(assert (=> b!2996615 (= res!1235700 (not ((_ is Concat!14684) lt!1041417)))))

(assert (=> b!2996615 (= e!1883007 e!1883010)))

(declare-fun b!2996616 () Bool)

(assert (=> b!2996616 (= e!1883010 e!1883012)))

(declare-fun res!1235701 () Bool)

(assert (=> b!2996616 (=> (not res!1235701) (not e!1883012))))

(assert (=> b!2996616 (= res!1235701 call!200886)))

(declare-fun bm!200883 () Bool)

(assert (=> bm!200883 (= call!200886 (validRegex!4096 (ite c!492898 (regTwo!19239 lt!1041417) (regOne!19238 lt!1041417))))))

(declare-fun b!2996617 () Bool)

(declare-fun e!1883013 () Bool)

(assert (=> b!2996617 (= e!1883013 e!1883008)))

(assert (=> b!2996617 (= c!492899 ((_ is Star!9363) lt!1041417))))

(declare-fun d!845511 () Bool)

(declare-fun res!1235702 () Bool)

(assert (=> d!845511 (=> res!1235702 e!1883013)))

(assert (=> d!845511 (= res!1235702 ((_ is ElementMatch!9363) lt!1041417))))

(assert (=> d!845511 (= (validRegex!4096 lt!1041417) e!1883013)))

(declare-fun b!2996611 () Bool)

(declare-fun res!1235704 () Bool)

(assert (=> b!2996611 (=> (not res!1235704) (not e!1883009))))

(assert (=> b!2996611 (= res!1235704 call!200887)))

(assert (=> b!2996611 (= e!1883007 e!1883009)))

(assert (= (and d!845511 (not res!1235702)) b!2996617))

(assert (= (and b!2996617 c!492899) b!2996614))

(assert (= (and b!2996617 (not c!492899)) b!2996613))

(assert (= (and b!2996614 res!1235703) b!2996609))

(assert (= (and b!2996613 c!492898) b!2996611))

(assert (= (and b!2996613 (not c!492898)) b!2996615))

(assert (= (and b!2996611 res!1235704) b!2996610))

(assert (= (and b!2996615 (not res!1235700)) b!2996616))

(assert (= (and b!2996616 res!1235701) b!2996612))

(assert (= (or b!2996611 b!2996612) bm!200882))

(assert (= (or b!2996610 b!2996616) bm!200883))

(assert (= (or b!2996609 bm!200882) bm!200881))

(declare-fun m!3350191 () Bool)

(assert (=> bm!200881 m!3350191))

(declare-fun m!3350193 () Bool)

(assert (=> b!2996614 m!3350193))

(declare-fun m!3350195 () Bool)

(assert (=> bm!200883 m!3350195))

(assert (=> d!845443 d!845511))

(assert (=> d!845471 d!845469))

(assert (=> d!845471 d!845449))

(declare-fun d!845513 () Bool)

(assert (=> d!845513 (= (matchR!4245 r!17423 s!11993) (matchRSpec!1500 r!17423 s!11993))))

(assert (=> d!845513 true))

(declare-fun _$88!3321 () Unit!49141)

(assert (=> d!845513 (= (choose!17786 r!17423 s!11993) _$88!3321)))

(declare-fun bs!528098 () Bool)

(assert (= bs!528098 d!845513))

(assert (=> bs!528098 m!3349907))

(assert (=> bs!528098 m!3349905))

(assert (=> d!845471 d!845513))

(assert (=> d!845471 d!845425))

(declare-fun b!2996618 () Bool)

(declare-fun res!1235710 () Bool)

(declare-fun e!1883019 () Bool)

(assert (=> b!2996618 (=> res!1235710 e!1883019)))

(assert (=> b!2996618 (= res!1235710 (not (isEmpty!19378 (tail!4909 (tail!4909 s!11993)))))))

(declare-fun b!2996619 () Bool)

(declare-fun e!1883020 () Bool)

(declare-fun e!1883014 () Bool)

(assert (=> b!2996619 (= e!1883020 e!1883014)))

(declare-fun c!492901 () Bool)

(assert (=> b!2996619 (= c!492901 ((_ is EmptyLang!9363) (derivativeStep!2624 r!17423 (head!6683 s!11993))))))

(declare-fun b!2996620 () Bool)

(declare-fun e!1883015 () Bool)

(declare-fun e!1883018 () Bool)

(assert (=> b!2996620 (= e!1883015 e!1883018)))

(declare-fun res!1235709 () Bool)

(assert (=> b!2996620 (=> (not res!1235709) (not e!1883018))))

(declare-fun lt!1041510 () Bool)

(assert (=> b!2996620 (= res!1235709 (not lt!1041510))))

(declare-fun b!2996621 () Bool)

(declare-fun e!1883016 () Bool)

(assert (=> b!2996621 (= e!1883016 (matchR!4245 (derivativeStep!2624 (derivativeStep!2624 r!17423 (head!6683 s!11993)) (head!6683 (tail!4909 s!11993))) (tail!4909 (tail!4909 s!11993))))))

(declare-fun b!2996622 () Bool)

(assert (=> b!2996622 (= e!1883019 (not (= (head!6683 (tail!4909 s!11993)) (c!492681 (derivativeStep!2624 r!17423 (head!6683 s!11993))))))))

(declare-fun b!2996623 () Bool)

(declare-fun res!1235711 () Bool)

(declare-fun e!1883017 () Bool)

(assert (=> b!2996623 (=> (not res!1235711) (not e!1883017))))

(declare-fun call!200889 () Bool)

(assert (=> b!2996623 (= res!1235711 (not call!200889))))

(declare-fun b!2996624 () Bool)

(assert (=> b!2996624 (= e!1883016 (nullable!3026 (derivativeStep!2624 r!17423 (head!6683 s!11993))))))

(declare-fun b!2996626 () Bool)

(declare-fun res!1235707 () Bool)

(assert (=> b!2996626 (=> res!1235707 e!1883015)))

(assert (=> b!2996626 (= res!1235707 e!1883017)))

(declare-fun res!1235708 () Bool)

(assert (=> b!2996626 (=> (not res!1235708) (not e!1883017))))

(assert (=> b!2996626 (= res!1235708 lt!1041510)))

(declare-fun b!2996627 () Bool)

(assert (=> b!2996627 (= e!1883020 (= lt!1041510 call!200889))))

(declare-fun b!2996628 () Bool)

(declare-fun res!1235706 () Bool)

(assert (=> b!2996628 (=> (not res!1235706) (not e!1883017))))

(assert (=> b!2996628 (= res!1235706 (isEmpty!19378 (tail!4909 (tail!4909 s!11993))))))

(declare-fun d!845517 () Bool)

(assert (=> d!845517 e!1883020))

(declare-fun c!492900 () Bool)

(assert (=> d!845517 (= c!492900 ((_ is EmptyExpr!9363) (derivativeStep!2624 r!17423 (head!6683 s!11993))))))

(assert (=> d!845517 (= lt!1041510 e!1883016)))

(declare-fun c!492902 () Bool)

(assert (=> d!845517 (= c!492902 (isEmpty!19378 (tail!4909 s!11993)))))

(assert (=> d!845517 (validRegex!4096 (derivativeStep!2624 r!17423 (head!6683 s!11993)))))

(assert (=> d!845517 (= (matchR!4245 (derivativeStep!2624 r!17423 (head!6683 s!11993)) (tail!4909 s!11993)) lt!1041510)))

(declare-fun b!2996625 () Bool)

(assert (=> b!2996625 (= e!1883018 e!1883019)))

(declare-fun res!1235705 () Bool)

(assert (=> b!2996625 (=> res!1235705 e!1883019)))

(assert (=> b!2996625 (= res!1235705 call!200889)))

(declare-fun b!2996629 () Bool)

(assert (=> b!2996629 (= e!1883017 (= (head!6683 (tail!4909 s!11993)) (c!492681 (derivativeStep!2624 r!17423 (head!6683 s!11993)))))))

(declare-fun b!2996630 () Bool)

(assert (=> b!2996630 (= e!1883014 (not lt!1041510))))

(declare-fun bm!200884 () Bool)

(assert (=> bm!200884 (= call!200889 (isEmpty!19378 (tail!4909 s!11993)))))

(declare-fun b!2996631 () Bool)

(declare-fun res!1235712 () Bool)

(assert (=> b!2996631 (=> res!1235712 e!1883015)))

(assert (=> b!2996631 (= res!1235712 (not ((_ is ElementMatch!9363) (derivativeStep!2624 r!17423 (head!6683 s!11993)))))))

(assert (=> b!2996631 (= e!1883014 e!1883015)))

(assert (= (and d!845517 c!492902) b!2996624))

(assert (= (and d!845517 (not c!492902)) b!2996621))

(assert (= (and d!845517 c!492900) b!2996627))

(assert (= (and d!845517 (not c!492900)) b!2996619))

(assert (= (and b!2996619 c!492901) b!2996630))

(assert (= (and b!2996619 (not c!492901)) b!2996631))

(assert (= (and b!2996631 (not res!1235712)) b!2996626))

(assert (= (and b!2996626 res!1235708) b!2996623))

(assert (= (and b!2996623 res!1235711) b!2996628))

(assert (= (and b!2996628 res!1235706) b!2996629))

(assert (= (and b!2996626 (not res!1235707)) b!2996620))

(assert (= (and b!2996620 res!1235709) b!2996625))

(assert (= (and b!2996625 (not res!1235705)) b!2996618))

(assert (= (and b!2996618 (not res!1235710)) b!2996622))

(assert (= (or b!2996627 b!2996623 b!2996625) bm!200884))

(assert (=> b!2996618 m!3350001))

(assert (=> b!2996618 m!3350099))

(assert (=> b!2996618 m!3350099))

(assert (=> b!2996618 m!3350101))

(assert (=> b!2996621 m!3350001))

(assert (=> b!2996621 m!3350103))

(assert (=> b!2996621 m!3350085))

(assert (=> b!2996621 m!3350103))

(declare-fun m!3350211 () Bool)

(assert (=> b!2996621 m!3350211))

(assert (=> b!2996621 m!3350001))

(assert (=> b!2996621 m!3350099))

(assert (=> b!2996621 m!3350211))

(assert (=> b!2996621 m!3350099))

(declare-fun m!3350213 () Bool)

(assert (=> b!2996621 m!3350213))

(assert (=> b!2996628 m!3350001))

(assert (=> b!2996628 m!3350099))

(assert (=> b!2996628 m!3350099))

(assert (=> b!2996628 m!3350101))

(assert (=> b!2996624 m!3350085))

(declare-fun m!3350215 () Bool)

(assert (=> b!2996624 m!3350215))

(assert (=> d!845517 m!3350001))

(assert (=> d!845517 m!3350003))

(assert (=> d!845517 m!3350085))

(declare-fun m!3350217 () Bool)

(assert (=> d!845517 m!3350217))

(assert (=> bm!200884 m!3350001))

(assert (=> bm!200884 m!3350003))

(assert (=> b!2996629 m!3350001))

(assert (=> b!2996629 m!3350103))

(assert (=> b!2996622 m!3350001))

(assert (=> b!2996622 m!3350103))

(assert (=> b!2996388 d!845517))

(declare-fun b!2996632 () Bool)

(declare-fun e!1883022 () Regex!9363)

(declare-fun e!1883023 () Regex!9363)

(assert (=> b!2996632 (= e!1883022 e!1883023)))

(declare-fun c!492907 () Bool)

(assert (=> b!2996632 (= c!492907 ((_ is ElementMatch!9363) r!17423))))

(declare-fun b!2996633 () Bool)

(declare-fun c!492904 () Bool)

(assert (=> b!2996633 (= c!492904 (nullable!3026 (regOne!19238 r!17423)))))

(declare-fun e!1883024 () Regex!9363)

(declare-fun e!1883025 () Regex!9363)

(assert (=> b!2996633 (= e!1883024 e!1883025)))

(declare-fun b!2996634 () Bool)

(assert (=> b!2996634 (= e!1883022 EmptyLang!9363)))

(declare-fun b!2996635 () Bool)

(declare-fun call!200893 () Regex!9363)

(assert (=> b!2996635 (= e!1883025 (Union!9363 (Concat!14684 call!200893 (regTwo!19238 r!17423)) EmptyLang!9363))))

(declare-fun b!2996636 () Bool)

(declare-fun call!200891 () Regex!9363)

(assert (=> b!2996636 (= e!1883024 (Concat!14684 call!200891 r!17423))))

(declare-fun b!2996637 () Bool)

(declare-fun c!492906 () Bool)

(assert (=> b!2996637 (= c!492906 ((_ is Union!9363) r!17423))))

(declare-fun e!1883021 () Regex!9363)

(assert (=> b!2996637 (= e!1883023 e!1883021)))

(declare-fun call!200890 () Regex!9363)

(declare-fun bm!200886 () Bool)

(declare-fun c!492905 () Bool)

(assert (=> bm!200886 (= call!200890 (derivativeStep!2624 (ite c!492906 (regTwo!19239 r!17423) (ite c!492905 (reg!9692 r!17423) (regOne!19238 r!17423))) (head!6683 s!11993)))))

(declare-fun bm!200887 () Bool)

(assert (=> bm!200887 (= call!200893 call!200891)))

(declare-fun b!2996638 () Bool)

(assert (=> b!2996638 (= e!1883023 (ite (= (head!6683 s!11993) (c!492681 r!17423)) EmptyExpr!9363 EmptyLang!9363))))

(declare-fun call!200892 () Regex!9363)

(declare-fun bm!200888 () Bool)

(assert (=> bm!200888 (= call!200892 (derivativeStep!2624 (ite c!492906 (regOne!19239 r!17423) (regTwo!19238 r!17423)) (head!6683 s!11993)))))

(declare-fun b!2996639 () Bool)

(assert (=> b!2996639 (= e!1883025 (Union!9363 (Concat!14684 call!200893 (regTwo!19238 r!17423)) call!200892))))

(declare-fun d!845519 () Bool)

(declare-fun lt!1041511 () Regex!9363)

(assert (=> d!845519 (validRegex!4096 lt!1041511)))

(assert (=> d!845519 (= lt!1041511 e!1883022)))

(declare-fun c!492903 () Bool)

(assert (=> d!845519 (= c!492903 (or ((_ is EmptyExpr!9363) r!17423) ((_ is EmptyLang!9363) r!17423)))))

(assert (=> d!845519 (validRegex!4096 r!17423)))

(assert (=> d!845519 (= (derivativeStep!2624 r!17423 (head!6683 s!11993)) lt!1041511)))

(declare-fun bm!200885 () Bool)

(assert (=> bm!200885 (= call!200891 call!200890)))

(declare-fun b!2996640 () Bool)

(assert (=> b!2996640 (= e!1883021 e!1883024)))

(assert (=> b!2996640 (= c!492905 ((_ is Star!9363) r!17423))))

(declare-fun b!2996641 () Bool)

(assert (=> b!2996641 (= e!1883021 (Union!9363 call!200892 call!200890))))

(assert (= (and d!845519 c!492903) b!2996634))

(assert (= (and d!845519 (not c!492903)) b!2996632))

(assert (= (and b!2996632 c!492907) b!2996638))

(assert (= (and b!2996632 (not c!492907)) b!2996637))

(assert (= (and b!2996637 c!492906) b!2996641))

(assert (= (and b!2996637 (not c!492906)) b!2996640))

(assert (= (and b!2996640 c!492905) b!2996636))

(assert (= (and b!2996640 (not c!492905)) b!2996633))

(assert (= (and b!2996633 c!492904) b!2996639))

(assert (= (and b!2996633 (not c!492904)) b!2996635))

(assert (= (or b!2996639 b!2996635) bm!200887))

(assert (= (or b!2996636 bm!200887) bm!200885))

(assert (= (or b!2996641 bm!200885) bm!200886))

(assert (= (or b!2996641 b!2996639) bm!200888))

(assert (=> b!2996633 m!3349917))

(assert (=> bm!200886 m!3350005))

(declare-fun m!3350219 () Bool)

(assert (=> bm!200886 m!3350219))

(assert (=> bm!200888 m!3350005))

(declare-fun m!3350221 () Bool)

(assert (=> bm!200888 m!3350221))

(declare-fun m!3350223 () Bool)

(assert (=> d!845519 m!3350223))

(assert (=> d!845519 m!3349903))

(assert (=> b!2996388 d!845519))

(assert (=> b!2996388 d!845473))

(assert (=> b!2996388 d!845481))

(assert (=> b!2996119 d!845497))

(assert (=> b!2996119 d!845481))

(declare-fun d!845521 () Bool)

(assert (=> d!845521 (= (isEmptyLang!453 (ite c!492732 lt!1041441 (ite c!492730 lt!1041445 lt!1041443))) ((_ is EmptyLang!9363) (ite c!492732 lt!1041441 (ite c!492730 lt!1041445 lt!1041443))))))

(assert (=> bm!200772 d!845521))

(declare-fun d!845523 () Bool)

(assert (=> d!845523 (= (nullable!3026 lt!1041450) (nullableFct!860 lt!1041450))))

(declare-fun bs!528099 () Bool)

(assert (= bs!528099 d!845523))

(declare-fun m!3350225 () Bool)

(assert (=> bs!528099 m!3350225))

(assert (=> b!2996071 d!845523))

(assert (=> b!2996071 d!845423))

(assert (=> bm!200835 d!845441))

(declare-fun d!845525 () Bool)

(assert (=> d!845525 (= (nullable!3026 (reg!9692 r!17423)) (nullableFct!860 (reg!9692 r!17423)))))

(declare-fun bs!528100 () Bool)

(assert (= bs!528100 d!845525))

(declare-fun m!3350227 () Bool)

(assert (=> bs!528100 m!3350227))

(assert (=> b!2995927 d!845525))

(declare-fun d!845527 () Bool)

(assert (=> d!845527 (= (isEmptyExpr!470 lt!1041440) ((_ is EmptyExpr!9363) lt!1041440))))

(assert (=> b!2996034 d!845527))

(declare-fun d!845529 () Bool)

(assert (=> d!845529 (= (isEmptyLang!453 (ite c!492730 lt!1041442 lt!1041440)) ((_ is EmptyLang!9363) (ite c!492730 lt!1041442 lt!1041440)))))

(assert (=> bm!200770 d!845529))

(declare-fun d!845531 () Bool)

(assert (=> d!845531 (= (isEmptyExpr!470 lt!1041446) ((_ is EmptyExpr!9363) lt!1041446))))

(assert (=> b!2996059 d!845531))

(assert (=> b!2996395 d!845497))

(assert (=> b!2996395 d!845481))

(declare-fun b!2996642 () Bool)

(declare-fun e!1883030 () Bool)

(declare-fun call!200896 () Bool)

(assert (=> b!2996642 (= e!1883030 call!200896)))

(declare-fun b!2996643 () Bool)

(declare-fun e!1883028 () Bool)

(declare-fun call!200894 () Bool)

(assert (=> b!2996643 (= e!1883028 call!200894)))

(declare-fun c!492909 () Bool)

(declare-fun bm!200889 () Bool)

(declare-fun c!492908 () Bool)

(assert (=> bm!200889 (= call!200896 (validRegex!4096 (ite c!492909 (reg!9692 lt!1041450) (ite c!492908 (regOne!19239 lt!1041450) (regTwo!19238 lt!1041450)))))))

(declare-fun b!2996645 () Bool)

(declare-fun e!1883031 () Bool)

(declare-fun call!200895 () Bool)

(assert (=> b!2996645 (= e!1883031 call!200895)))

(declare-fun bm!200890 () Bool)

(assert (=> bm!200890 (= call!200895 call!200896)))

(declare-fun b!2996646 () Bool)

(declare-fun e!1883027 () Bool)

(declare-fun e!1883026 () Bool)

(assert (=> b!2996646 (= e!1883027 e!1883026)))

(assert (=> b!2996646 (= c!492908 ((_ is Union!9363) lt!1041450))))

(declare-fun b!2996647 () Bool)

(assert (=> b!2996647 (= e!1883027 e!1883030)))

(declare-fun res!1235716 () Bool)

(assert (=> b!2996647 (= res!1235716 (not (nullable!3026 (reg!9692 lt!1041450))))))

(assert (=> b!2996647 (=> (not res!1235716) (not e!1883030))))

(declare-fun b!2996648 () Bool)

(declare-fun res!1235713 () Bool)

(declare-fun e!1883029 () Bool)

(assert (=> b!2996648 (=> res!1235713 e!1883029)))

(assert (=> b!2996648 (= res!1235713 (not ((_ is Concat!14684) lt!1041450)))))

(assert (=> b!2996648 (= e!1883026 e!1883029)))

(declare-fun b!2996649 () Bool)

(assert (=> b!2996649 (= e!1883029 e!1883031)))

(declare-fun res!1235714 () Bool)

(assert (=> b!2996649 (=> (not res!1235714) (not e!1883031))))

(assert (=> b!2996649 (= res!1235714 call!200894)))

(declare-fun bm!200891 () Bool)

(assert (=> bm!200891 (= call!200894 (validRegex!4096 (ite c!492908 (regTwo!19239 lt!1041450) (regOne!19238 lt!1041450))))))

(declare-fun b!2996650 () Bool)

(declare-fun e!1883032 () Bool)

(assert (=> b!2996650 (= e!1883032 e!1883027)))

(assert (=> b!2996650 (= c!492909 ((_ is Star!9363) lt!1041450))))

(declare-fun d!845533 () Bool)

(declare-fun res!1235715 () Bool)

(assert (=> d!845533 (=> res!1235715 e!1883032)))

(assert (=> d!845533 (= res!1235715 ((_ is ElementMatch!9363) lt!1041450))))

(assert (=> d!845533 (= (validRegex!4096 lt!1041450) e!1883032)))

(declare-fun b!2996644 () Bool)

(declare-fun res!1235717 () Bool)

(assert (=> b!2996644 (=> (not res!1235717) (not e!1883028))))

(assert (=> b!2996644 (= res!1235717 call!200895)))

(assert (=> b!2996644 (= e!1883026 e!1883028)))

(assert (= (and d!845533 (not res!1235715)) b!2996650))

(assert (= (and b!2996650 c!492909) b!2996647))

(assert (= (and b!2996650 (not c!492909)) b!2996646))

(assert (= (and b!2996647 res!1235716) b!2996642))

(assert (= (and b!2996646 c!492908) b!2996644))

(assert (= (and b!2996646 (not c!492908)) b!2996648))

(assert (= (and b!2996644 res!1235717) b!2996643))

(assert (= (and b!2996648 (not res!1235713)) b!2996649))

(assert (= (and b!2996649 res!1235714) b!2996645))

(assert (= (or b!2996644 b!2996645) bm!200890))

(assert (= (or b!2996643 b!2996649) bm!200891))

(assert (= (or b!2996642 bm!200890) bm!200889))

(declare-fun m!3350229 () Bool)

(assert (=> bm!200889 m!3350229))

(declare-fun m!3350231 () Bool)

(assert (=> b!2996647 m!3350231))

(declare-fun m!3350233 () Bool)

(assert (=> bm!200891 m!3350233))

(assert (=> d!845439 d!845533))

(declare-fun b!2996651 () Bool)

(declare-fun e!1883037 () Bool)

(declare-fun call!200899 () Bool)

(assert (=> b!2996651 (= e!1883037 call!200899)))

(declare-fun b!2996652 () Bool)

(declare-fun e!1883035 () Bool)

(declare-fun call!200897 () Bool)

(assert (=> b!2996652 (= e!1883035 call!200897)))

(declare-fun c!492911 () Bool)

(declare-fun c!492910 () Bool)

(declare-fun bm!200892 () Bool)

(assert (=> bm!200892 (= call!200899 (validRegex!4096 (ite c!492911 (reg!9692 (regOne!19238 r!17423)) (ite c!492910 (regOne!19239 (regOne!19238 r!17423)) (regTwo!19238 (regOne!19238 r!17423))))))))

(declare-fun b!2996654 () Bool)

(declare-fun e!1883038 () Bool)

(declare-fun call!200898 () Bool)

(assert (=> b!2996654 (= e!1883038 call!200898)))

(declare-fun bm!200893 () Bool)

(assert (=> bm!200893 (= call!200898 call!200899)))

(declare-fun b!2996655 () Bool)

(declare-fun e!1883034 () Bool)

(declare-fun e!1883033 () Bool)

(assert (=> b!2996655 (= e!1883034 e!1883033)))

(assert (=> b!2996655 (= c!492910 ((_ is Union!9363) (regOne!19238 r!17423)))))

(declare-fun b!2996656 () Bool)

(assert (=> b!2996656 (= e!1883034 e!1883037)))

(declare-fun res!1235721 () Bool)

(assert (=> b!2996656 (= res!1235721 (not (nullable!3026 (reg!9692 (regOne!19238 r!17423)))))))

(assert (=> b!2996656 (=> (not res!1235721) (not e!1883037))))

(declare-fun b!2996657 () Bool)

(declare-fun res!1235718 () Bool)

(declare-fun e!1883036 () Bool)

(assert (=> b!2996657 (=> res!1235718 e!1883036)))

(assert (=> b!2996657 (= res!1235718 (not ((_ is Concat!14684) (regOne!19238 r!17423))))))

(assert (=> b!2996657 (= e!1883033 e!1883036)))

(declare-fun b!2996658 () Bool)

(assert (=> b!2996658 (= e!1883036 e!1883038)))

(declare-fun res!1235719 () Bool)

(assert (=> b!2996658 (=> (not res!1235719) (not e!1883038))))

(assert (=> b!2996658 (= res!1235719 call!200897)))

(declare-fun bm!200894 () Bool)

(assert (=> bm!200894 (= call!200897 (validRegex!4096 (ite c!492910 (regTwo!19239 (regOne!19238 r!17423)) (regOne!19238 (regOne!19238 r!17423)))))))

(declare-fun b!2996659 () Bool)

(declare-fun e!1883039 () Bool)

(assert (=> b!2996659 (= e!1883039 e!1883034)))

(assert (=> b!2996659 (= c!492911 ((_ is Star!9363) (regOne!19238 r!17423)))))

(declare-fun d!845535 () Bool)

(declare-fun res!1235720 () Bool)

(assert (=> d!845535 (=> res!1235720 e!1883039)))

(assert (=> d!845535 (= res!1235720 ((_ is ElementMatch!9363) (regOne!19238 r!17423)))))

(assert (=> d!845535 (= (validRegex!4096 (regOne!19238 r!17423)) e!1883039)))

(declare-fun b!2996653 () Bool)

(declare-fun res!1235722 () Bool)

(assert (=> b!2996653 (=> (not res!1235722) (not e!1883035))))

(assert (=> b!2996653 (= res!1235722 call!200898)))

(assert (=> b!2996653 (= e!1883033 e!1883035)))

(assert (= (and d!845535 (not res!1235720)) b!2996659))

(assert (= (and b!2996659 c!492911) b!2996656))

(assert (= (and b!2996659 (not c!492911)) b!2996655))

(assert (= (and b!2996656 res!1235721) b!2996651))

(assert (= (and b!2996655 c!492910) b!2996653))

(assert (= (and b!2996655 (not c!492910)) b!2996657))

(assert (= (and b!2996653 res!1235722) b!2996652))

(assert (= (and b!2996657 (not res!1235718)) b!2996658))

(assert (= (and b!2996658 res!1235719) b!2996654))

(assert (= (or b!2996653 b!2996654) bm!200893))

(assert (= (or b!2996652 b!2996658) bm!200894))

(assert (= (or b!2996651 bm!200893) bm!200892))

(declare-fun m!3350235 () Bool)

(assert (=> bm!200892 m!3350235))

(declare-fun m!3350237 () Bool)

(assert (=> b!2996656 m!3350237))

(declare-fun m!3350239 () Bool)

(assert (=> bm!200894 m!3350239))

(assert (=> d!845439 d!845535))

(assert (=> b!2996109 d!845497))

(assert (=> b!2996109 d!845481))

(declare-fun d!845537 () Bool)

(assert (=> d!845537 (= (nullable!3026 lt!1041417) (nullableFct!860 lt!1041417))))

(declare-fun bs!528101 () Bool)

(assert (= bs!528101 d!845537))

(declare-fun m!3350241 () Bool)

(assert (=> bs!528101 m!3350241))

(assert (=> b!2996115 d!845537))

(declare-fun d!845539 () Bool)

(assert (=> d!845539 (= (isEmptyLang!453 (ite c!492743 lt!1041447 (ite c!492741 lt!1041451 lt!1041449))) ((_ is EmptyLang!9363) (ite c!492743 lt!1041447 (ite c!492741 lt!1041451 lt!1041449))))))

(assert (=> bm!200779 d!845539))

(declare-fun d!845541 () Bool)

(assert (=> d!845541 (= (matchR!4245 (regTwo!19238 r!17423) s!11993) (matchR!4245 (simplify!354 (regTwo!19238 r!17423)) s!11993))))

(assert (=> d!845541 true))

(declare-fun _$95!533 () Unit!49141)

(assert (=> d!845541 (= (choose!17785 (regTwo!19238 r!17423) s!11993) _$95!533)))

(declare-fun bs!528102 () Bool)

(assert (= bs!528102 d!845541))

(assert (=> bs!528102 m!3349923))

(assert (=> bs!528102 m!3349913))

(assert (=> bs!528102 m!3349913))

(assert (=> bs!528102 m!3350021))

(assert (=> d!845447 d!845541))

(assert (=> d!845447 d!845429))

(declare-fun b!2996660 () Bool)

(declare-fun e!1883044 () Bool)

(declare-fun call!200902 () Bool)

(assert (=> b!2996660 (= e!1883044 call!200902)))

(declare-fun b!2996661 () Bool)

(declare-fun e!1883042 () Bool)

(declare-fun call!200900 () Bool)

(assert (=> b!2996661 (= e!1883042 call!200900)))

(declare-fun c!492913 () Bool)

(declare-fun c!492912 () Bool)

(declare-fun bm!200895 () Bool)

(assert (=> bm!200895 (= call!200902 (validRegex!4096 (ite c!492913 (reg!9692 (regTwo!19238 r!17423)) (ite c!492912 (regOne!19239 (regTwo!19238 r!17423)) (regTwo!19238 (regTwo!19238 r!17423))))))))

(declare-fun b!2996663 () Bool)

(declare-fun e!1883045 () Bool)

(declare-fun call!200901 () Bool)

(assert (=> b!2996663 (= e!1883045 call!200901)))

(declare-fun bm!200896 () Bool)

(assert (=> bm!200896 (= call!200901 call!200902)))

(declare-fun b!2996664 () Bool)

(declare-fun e!1883041 () Bool)

(declare-fun e!1883040 () Bool)

(assert (=> b!2996664 (= e!1883041 e!1883040)))

(assert (=> b!2996664 (= c!492912 ((_ is Union!9363) (regTwo!19238 r!17423)))))

(declare-fun b!2996665 () Bool)

(assert (=> b!2996665 (= e!1883041 e!1883044)))

(declare-fun res!1235726 () Bool)

(assert (=> b!2996665 (= res!1235726 (not (nullable!3026 (reg!9692 (regTwo!19238 r!17423)))))))

(assert (=> b!2996665 (=> (not res!1235726) (not e!1883044))))

(declare-fun b!2996666 () Bool)

(declare-fun res!1235723 () Bool)

(declare-fun e!1883043 () Bool)

(assert (=> b!2996666 (=> res!1235723 e!1883043)))

(assert (=> b!2996666 (= res!1235723 (not ((_ is Concat!14684) (regTwo!19238 r!17423))))))

(assert (=> b!2996666 (= e!1883040 e!1883043)))

(declare-fun b!2996667 () Bool)

(assert (=> b!2996667 (= e!1883043 e!1883045)))

(declare-fun res!1235724 () Bool)

(assert (=> b!2996667 (=> (not res!1235724) (not e!1883045))))

(assert (=> b!2996667 (= res!1235724 call!200900)))

(declare-fun bm!200897 () Bool)

(assert (=> bm!200897 (= call!200900 (validRegex!4096 (ite c!492912 (regTwo!19239 (regTwo!19238 r!17423)) (regOne!19238 (regTwo!19238 r!17423)))))))

(declare-fun b!2996668 () Bool)

(declare-fun e!1883046 () Bool)

(assert (=> b!2996668 (= e!1883046 e!1883041)))

(assert (=> b!2996668 (= c!492913 ((_ is Star!9363) (regTwo!19238 r!17423)))))

(declare-fun d!845543 () Bool)

(declare-fun res!1235725 () Bool)

(assert (=> d!845543 (=> res!1235725 e!1883046)))

(assert (=> d!845543 (= res!1235725 ((_ is ElementMatch!9363) (regTwo!19238 r!17423)))))

(assert (=> d!845543 (= (validRegex!4096 (regTwo!19238 r!17423)) e!1883046)))

(declare-fun b!2996662 () Bool)

(declare-fun res!1235727 () Bool)

(assert (=> b!2996662 (=> (not res!1235727) (not e!1883042))))

(assert (=> b!2996662 (= res!1235727 call!200901)))

(assert (=> b!2996662 (= e!1883040 e!1883042)))

(assert (= (and d!845543 (not res!1235725)) b!2996668))

(assert (= (and b!2996668 c!492913) b!2996665))

(assert (= (and b!2996668 (not c!492913)) b!2996664))

(assert (= (and b!2996665 res!1235726) b!2996660))

(assert (= (and b!2996664 c!492912) b!2996662))

(assert (= (and b!2996664 (not c!492912)) b!2996666))

(assert (= (and b!2996662 res!1235727) b!2996661))

(assert (= (and b!2996666 (not res!1235723)) b!2996667))

(assert (= (and b!2996667 res!1235724) b!2996663))

(assert (= (or b!2996662 b!2996663) bm!200896))

(assert (= (or b!2996661 b!2996667) bm!200897))

(assert (= (or b!2996660 bm!200896) bm!200895))

(declare-fun m!3350243 () Bool)

(assert (=> bm!200895 m!3350243))

(declare-fun m!3350245 () Bool)

(assert (=> b!2996665 m!3350245))

(declare-fun m!3350247 () Bool)

(assert (=> bm!200897 m!3350247))

(assert (=> d!845447 d!845543))

(assert (=> d!845447 d!845445))

(declare-fun b!2996669 () Bool)

(declare-fun res!1235733 () Bool)

(declare-fun e!1883052 () Bool)

(assert (=> b!2996669 (=> res!1235733 e!1883052)))

(assert (=> b!2996669 (= res!1235733 (not (isEmpty!19378 (tail!4909 s!11993))))))

(declare-fun b!2996670 () Bool)

(declare-fun e!1883053 () Bool)

(declare-fun e!1883047 () Bool)

(assert (=> b!2996670 (= e!1883053 e!1883047)))

(declare-fun c!492915 () Bool)

(assert (=> b!2996670 (= c!492915 ((_ is EmptyLang!9363) (simplify!354 (regTwo!19238 r!17423))))))

(declare-fun b!2996671 () Bool)

(declare-fun e!1883048 () Bool)

(declare-fun e!1883051 () Bool)

(assert (=> b!2996671 (= e!1883048 e!1883051)))

(declare-fun res!1235732 () Bool)

(assert (=> b!2996671 (=> (not res!1235732) (not e!1883051))))

(declare-fun lt!1041512 () Bool)

(assert (=> b!2996671 (= res!1235732 (not lt!1041512))))

(declare-fun b!2996672 () Bool)

(declare-fun e!1883049 () Bool)

(assert (=> b!2996672 (= e!1883049 (matchR!4245 (derivativeStep!2624 (simplify!354 (regTwo!19238 r!17423)) (head!6683 s!11993)) (tail!4909 s!11993)))))

(declare-fun b!2996673 () Bool)

(assert (=> b!2996673 (= e!1883052 (not (= (head!6683 s!11993) (c!492681 (simplify!354 (regTwo!19238 r!17423))))))))

(declare-fun b!2996674 () Bool)

(declare-fun res!1235734 () Bool)

(declare-fun e!1883050 () Bool)

(assert (=> b!2996674 (=> (not res!1235734) (not e!1883050))))

(declare-fun call!200903 () Bool)

(assert (=> b!2996674 (= res!1235734 (not call!200903))))

(declare-fun b!2996675 () Bool)

(assert (=> b!2996675 (= e!1883049 (nullable!3026 (simplify!354 (regTwo!19238 r!17423))))))

(declare-fun b!2996677 () Bool)

(declare-fun res!1235730 () Bool)

(assert (=> b!2996677 (=> res!1235730 e!1883048)))

(assert (=> b!2996677 (= res!1235730 e!1883050)))

(declare-fun res!1235731 () Bool)

(assert (=> b!2996677 (=> (not res!1235731) (not e!1883050))))

(assert (=> b!2996677 (= res!1235731 lt!1041512)))

(declare-fun b!2996678 () Bool)

(assert (=> b!2996678 (= e!1883053 (= lt!1041512 call!200903))))

(declare-fun b!2996679 () Bool)

(declare-fun res!1235729 () Bool)

(assert (=> b!2996679 (=> (not res!1235729) (not e!1883050))))

(assert (=> b!2996679 (= res!1235729 (isEmpty!19378 (tail!4909 s!11993)))))

(declare-fun d!845545 () Bool)

(assert (=> d!845545 e!1883053))

(declare-fun c!492914 () Bool)

(assert (=> d!845545 (= c!492914 ((_ is EmptyExpr!9363) (simplify!354 (regTwo!19238 r!17423))))))

(assert (=> d!845545 (= lt!1041512 e!1883049)))

(declare-fun c!492916 () Bool)

(assert (=> d!845545 (= c!492916 (isEmpty!19378 s!11993))))

(assert (=> d!845545 (validRegex!4096 (simplify!354 (regTwo!19238 r!17423)))))

(assert (=> d!845545 (= (matchR!4245 (simplify!354 (regTwo!19238 r!17423)) s!11993) lt!1041512)))

(declare-fun b!2996676 () Bool)

(assert (=> b!2996676 (= e!1883051 e!1883052)))

(declare-fun res!1235728 () Bool)

(assert (=> b!2996676 (=> res!1235728 e!1883052)))

(assert (=> b!2996676 (= res!1235728 call!200903)))

(declare-fun b!2996680 () Bool)

(assert (=> b!2996680 (= e!1883050 (= (head!6683 s!11993) (c!492681 (simplify!354 (regTwo!19238 r!17423)))))))

(declare-fun b!2996681 () Bool)

(assert (=> b!2996681 (= e!1883047 (not lt!1041512))))

(declare-fun bm!200898 () Bool)

(assert (=> bm!200898 (= call!200903 (isEmpty!19378 s!11993))))

(declare-fun b!2996682 () Bool)

(declare-fun res!1235735 () Bool)

(assert (=> b!2996682 (=> res!1235735 e!1883048)))

(assert (=> b!2996682 (= res!1235735 (not ((_ is ElementMatch!9363) (simplify!354 (regTwo!19238 r!17423)))))))

(assert (=> b!2996682 (= e!1883047 e!1883048)))

(assert (= (and d!845545 c!492916) b!2996675))

(assert (= (and d!845545 (not c!492916)) b!2996672))

(assert (= (and d!845545 c!492914) b!2996678))

(assert (= (and d!845545 (not c!492914)) b!2996670))

(assert (= (and b!2996670 c!492915) b!2996681))

(assert (= (and b!2996670 (not c!492915)) b!2996682))

(assert (= (and b!2996682 (not res!1235735)) b!2996677))

(assert (= (and b!2996677 res!1235731) b!2996674))

(assert (= (and b!2996674 res!1235734) b!2996679))

(assert (= (and b!2996679 res!1235729) b!2996680))

(assert (= (and b!2996677 (not res!1235730)) b!2996671))

(assert (= (and b!2996671 res!1235732) b!2996676))

(assert (= (and b!2996676 (not res!1235728)) b!2996669))

(assert (= (and b!2996669 (not res!1235733)) b!2996673))

(assert (= (or b!2996678 b!2996674 b!2996676) bm!200898))

(assert (=> b!2996669 m!3350001))

(assert (=> b!2996669 m!3350001))

(assert (=> b!2996669 m!3350003))

(assert (=> b!2996672 m!3350005))

(assert (=> b!2996672 m!3349913))

(assert (=> b!2996672 m!3350005))

(declare-fun m!3350249 () Bool)

(assert (=> b!2996672 m!3350249))

(assert (=> b!2996672 m!3350001))

(assert (=> b!2996672 m!3350249))

(assert (=> b!2996672 m!3350001))

(declare-fun m!3350251 () Bool)

(assert (=> b!2996672 m!3350251))

(assert (=> b!2996679 m!3350001))

(assert (=> b!2996679 m!3350001))

(assert (=> b!2996679 m!3350003))

(assert (=> b!2996675 m!3349913))

(declare-fun m!3350253 () Bool)

(assert (=> b!2996675 m!3350253))

(assert (=> d!845545 m!3349927))

(assert (=> d!845545 m!3349913))

(declare-fun m!3350255 () Bool)

(assert (=> d!845545 m!3350255))

(assert (=> bm!200898 m!3349927))

(assert (=> b!2996680 m!3350005))

(assert (=> b!2996673 m!3350005))

(assert (=> d!845447 d!845545))

(declare-fun d!845547 () Bool)

(assert (=> d!845547 (= (isEmptyExpr!470 (ite c!492732 lt!1041441 lt!1041443)) ((_ is EmptyExpr!9363) (ite c!492732 lt!1041441 lt!1041443)))))

(assert (=> bm!200773 d!845547))

(declare-fun b!2996691 () Bool)

(declare-fun e!1883063 () Regex!9363)

(declare-fun lt!1041517 () Regex!9363)

(assert (=> b!2996691 (= e!1883063 lt!1041517)))

(declare-fun c!492921 () Bool)

(declare-fun bm!200899 () Bool)

(declare-fun call!200905 () Regex!9363)

(declare-fun c!492919 () Bool)

(assert (=> bm!200899 (= call!200905 (simplify!354 (ite c!492921 (reg!9692 (ite c!492741 (regTwo!19239 (regOne!19238 r!17423)) (regOne!19238 (regOne!19238 r!17423)))) (ite c!492919 (regOne!19239 (ite c!492741 (regTwo!19239 (regOne!19238 r!17423)) (regOne!19238 (regOne!19238 r!17423)))) (regTwo!19238 (ite c!492741 (regTwo!19239 (regOne!19238 r!17423)) (regOne!19238 (regOne!19238 r!17423))))))))))

(declare-fun b!2996693 () Bool)

(declare-fun e!1883064 () Regex!9363)

(declare-fun lt!1041516 () Regex!9363)

(assert (=> b!2996693 (= e!1883064 (Star!9363 lt!1041516))))

(declare-fun b!2996694 () Bool)

(declare-fun c!492923 () Bool)

(declare-fun lt!1041515 () Regex!9363)

(assert (=> b!2996694 (= c!492923 (isEmptyExpr!470 lt!1041515))))

(declare-fun e!1883061 () Regex!9363)

(declare-fun e!1883066 () Regex!9363)

(assert (=> b!2996694 (= e!1883061 e!1883066)))

(declare-fun b!2996695 () Bool)

(declare-fun e!1883057 () Regex!9363)

(assert (=> b!2996695 (= e!1883057 (ite c!492741 (regTwo!19239 (regOne!19238 r!17423)) (regOne!19238 (regOne!19238 r!17423))))))

(declare-fun bm!200900 () Bool)

(declare-fun call!200907 () Bool)

(assert (=> bm!200900 (= call!200907 (isEmptyLang!453 (ite c!492919 lt!1041517 lt!1041515)))))

(declare-fun bm!200901 () Bool)

(declare-fun call!200910 () Bool)

(declare-fun call!200906 () Bool)

(assert (=> bm!200901 (= call!200910 call!200906)))

(declare-fun lt!1041518 () Regex!9363)

(declare-fun lt!1041520 () Regex!9363)

(declare-fun bm!200902 () Bool)

(assert (=> bm!200902 (= call!200906 (isEmptyLang!453 (ite c!492921 lt!1041516 (ite c!492919 lt!1041520 lt!1041518))))))

(declare-fun b!2996696 () Bool)

(assert (=> b!2996696 (= c!492919 ((_ is Union!9363) (ite c!492741 (regTwo!19239 (regOne!19238 r!17423)) (regOne!19238 (regOne!19238 r!17423)))))))

(declare-fun e!1883070 () Regex!9363)

(declare-fun e!1883056 () Regex!9363)

(assert (=> b!2996696 (= e!1883070 e!1883056)))

(declare-fun b!2996697 () Bool)

(declare-fun e!1883060 () Regex!9363)

(assert (=> b!2996697 (= e!1883060 (Concat!14684 lt!1041515 lt!1041518))))

(declare-fun b!2996698 () Bool)

(assert (=> b!2996698 (= e!1883063 (Union!9363 lt!1041517 lt!1041520))))

(declare-fun b!2996699 () Bool)

(declare-fun c!492922 () Bool)

(assert (=> b!2996699 (= c!492922 call!200910)))

(declare-fun e!1883071 () Regex!9363)

(assert (=> b!2996699 (= e!1883071 e!1883063)))

(declare-fun b!2996700 () Bool)

(assert (=> b!2996700 (= e!1883061 EmptyLang!9363)))

(declare-fun b!2996701 () Bool)

(assert (=> b!2996701 (= e!1883066 lt!1041518)))

(declare-fun b!2996702 () Bool)

(assert (=> b!2996702 (= e!1883066 e!1883060)))

(declare-fun c!492931 () Bool)

(declare-fun call!200904 () Bool)

(assert (=> b!2996702 (= c!492931 call!200904)))

(declare-fun b!2996703 () Bool)

(assert (=> b!2996703 (= e!1883064 EmptyExpr!9363)))

(declare-fun b!2996704 () Bool)

(assert (=> b!2996704 (= e!1883060 lt!1041515)))

(declare-fun b!2996705 () Bool)

(assert (=> b!2996705 (= e!1883056 e!1883071)))

(declare-fun call!200908 () Regex!9363)

(assert (=> b!2996705 (= lt!1041517 call!200908)))

(declare-fun call!200909 () Regex!9363)

(assert (=> b!2996705 (= lt!1041520 call!200909)))

(declare-fun c!492920 () Bool)

(assert (=> b!2996705 (= c!492920 call!200907)))

(declare-fun bm!200903 () Bool)

(assert (=> bm!200903 (= call!200904 (isEmptyExpr!470 (ite c!492921 lt!1041516 lt!1041518)))))

(declare-fun e!1883069 () Bool)

(declare-fun b!2996706 () Bool)

(declare-fun lt!1041519 () Regex!9363)

(assert (=> b!2996706 (= e!1883069 (= (nullable!3026 lt!1041519) (nullable!3026 (ite c!492741 (regTwo!19239 (regOne!19238 r!17423)) (regOne!19238 (regOne!19238 r!17423))))))))

(declare-fun b!2996692 () Bool)

(declare-fun e!1883058 () Regex!9363)

(assert (=> b!2996692 (= e!1883058 e!1883057)))

(declare-fun c!492925 () Bool)

(assert (=> b!2996692 (= c!492925 ((_ is ElementMatch!9363) (ite c!492741 (regTwo!19239 (regOne!19238 r!17423)) (regOne!19238 (regOne!19238 r!17423)))))))

(declare-fun d!845549 () Bool)

(assert (=> d!845549 e!1883069))

(declare-fun res!1235738 () Bool)

(assert (=> d!845549 (=> (not res!1235738) (not e!1883069))))

(assert (=> d!845549 (= res!1235738 (validRegex!4096 lt!1041519))))

(assert (=> d!845549 (= lt!1041519 e!1883058)))

(declare-fun c!492928 () Bool)

(assert (=> d!845549 (= c!492928 ((_ is EmptyLang!9363) (ite c!492741 (regTwo!19239 (regOne!19238 r!17423)) (regOne!19238 (regOne!19238 r!17423)))))))

(assert (=> d!845549 (validRegex!4096 (ite c!492741 (regTwo!19239 (regOne!19238 r!17423)) (regOne!19238 (regOne!19238 r!17423))))))

(assert (=> d!845549 (= (simplify!354 (ite c!492741 (regTwo!19239 (regOne!19238 r!17423)) (regOne!19238 (regOne!19238 r!17423)))) lt!1041519)))

(declare-fun b!2996707 () Bool)

(declare-fun e!1883068 () Bool)

(assert (=> b!2996707 (= e!1883068 call!200910)))

(declare-fun bm!200904 () Bool)

(assert (=> bm!200904 (= call!200908 call!200905)))

(declare-fun b!2996708 () Bool)

(declare-fun c!492927 () Bool)

(declare-fun e!1883059 () Bool)

(assert (=> b!2996708 (= c!492927 e!1883059)))

(declare-fun res!1235737 () Bool)

(assert (=> b!2996708 (=> res!1235737 e!1883059)))

(assert (=> b!2996708 (= res!1235737 call!200906)))

(assert (=> b!2996708 (= lt!1041516 call!200905)))

(assert (=> b!2996708 (= e!1883070 e!1883064)))

(declare-fun b!2996709 () Bool)

(assert (=> b!2996709 (= e!1883059 call!200904)))

(declare-fun b!2996710 () Bool)

(assert (=> b!2996710 (= e!1883058 EmptyLang!9363)))

(declare-fun b!2996711 () Bool)

(assert (=> b!2996711 (= e!1883056 e!1883061)))

(assert (=> b!2996711 (= lt!1041515 call!200909)))

(assert (=> b!2996711 (= lt!1041518 call!200908)))

(declare-fun res!1235736 () Bool)

(assert (=> b!2996711 (= res!1235736 call!200907)))

(assert (=> b!2996711 (=> res!1235736 e!1883068)))

(declare-fun c!492924 () Bool)

(assert (=> b!2996711 (= c!492924 e!1883068)))

(declare-fun b!2996712 () Bool)

(declare-fun e!1883062 () Regex!9363)

(assert (=> b!2996712 (= e!1883062 e!1883070)))

(assert (=> b!2996712 (= c!492921 ((_ is Star!9363) (ite c!492741 (regTwo!19239 (regOne!19238 r!17423)) (regOne!19238 (regOne!19238 r!17423)))))))

(declare-fun b!2996713 () Bool)

(assert (=> b!2996713 (= e!1883062 EmptyExpr!9363)))

(declare-fun b!2996714 () Bool)

(declare-fun c!492930 () Bool)

(assert (=> b!2996714 (= c!492930 ((_ is EmptyExpr!9363) (ite c!492741 (regTwo!19239 (regOne!19238 r!17423)) (regOne!19238 (regOne!19238 r!17423)))))))

(assert (=> b!2996714 (= e!1883057 e!1883062)))

(declare-fun b!2996715 () Bool)

(assert (=> b!2996715 (= e!1883071 lt!1041520)))

(declare-fun bm!200905 () Bool)

(assert (=> bm!200905 (= call!200909 (simplify!354 (ite c!492919 (regTwo!19239 (ite c!492741 (regTwo!19239 (regOne!19238 r!17423)) (regOne!19238 (regOne!19238 r!17423)))) (regOne!19238 (ite c!492741 (regTwo!19239 (regOne!19238 r!17423)) (regOne!19238 (regOne!19238 r!17423)))))))))

(assert (= (and d!845549 c!492928) b!2996710))

(assert (= (and d!845549 (not c!492928)) b!2996692))

(assert (= (and b!2996692 c!492925) b!2996695))

(assert (= (and b!2996692 (not c!492925)) b!2996714))

(assert (= (and b!2996714 c!492930) b!2996713))

(assert (= (and b!2996714 (not c!492930)) b!2996712))

(assert (= (and b!2996712 c!492921) b!2996708))

(assert (= (and b!2996712 (not c!492921)) b!2996696))

(assert (= (and b!2996708 (not res!1235737)) b!2996709))

(assert (= (and b!2996708 c!492927) b!2996703))

(assert (= (and b!2996708 (not c!492927)) b!2996693))

(assert (= (and b!2996696 c!492919) b!2996705))

(assert (= (and b!2996696 (not c!492919)) b!2996711))

(assert (= (and b!2996705 c!492920) b!2996715))

(assert (= (and b!2996705 (not c!492920)) b!2996699))

(assert (= (and b!2996699 c!492922) b!2996691))

(assert (= (and b!2996699 (not c!492922)) b!2996698))

(assert (= (and b!2996711 (not res!1235736)) b!2996707))

(assert (= (and b!2996711 c!492924) b!2996700))

(assert (= (and b!2996711 (not c!492924)) b!2996694))

(assert (= (and b!2996694 c!492923) b!2996701))

(assert (= (and b!2996694 (not c!492923)) b!2996702))

(assert (= (and b!2996702 c!492931) b!2996704))

(assert (= (and b!2996702 (not c!492931)) b!2996697))

(assert (= (or b!2996705 b!2996711) bm!200904))

(assert (= (or b!2996705 b!2996711) bm!200905))

(assert (= (or b!2996705 b!2996711) bm!200900))

(assert (= (or b!2996699 b!2996707) bm!200901))

(assert (= (or b!2996709 b!2996702) bm!200903))

(assert (= (or b!2996708 bm!200904) bm!200899))

(assert (= (or b!2996708 bm!200901) bm!200902))

(assert (= (and d!845549 res!1235738) b!2996706))

(declare-fun m!3350257 () Bool)

(assert (=> bm!200900 m!3350257))

(declare-fun m!3350259 () Bool)

(assert (=> b!2996706 m!3350259))

(declare-fun m!3350261 () Bool)

(assert (=> b!2996706 m!3350261))

(declare-fun m!3350263 () Bool)

(assert (=> bm!200905 m!3350263))

(declare-fun m!3350265 () Bool)

(assert (=> bm!200899 m!3350265))

(declare-fun m!3350267 () Bool)

(assert (=> bm!200903 m!3350267))

(declare-fun m!3350269 () Bool)

(assert (=> d!845549 m!3350269))

(declare-fun m!3350271 () Bool)

(assert (=> d!845549 m!3350271))

(declare-fun m!3350273 () Bool)

(assert (=> b!2996694 m!3350273))

(declare-fun m!3350275 () Bool)

(assert (=> bm!200902 m!3350275))

(assert (=> bm!200782 d!845549))

(assert (=> b!2996113 d!845473))

(declare-fun d!845551 () Bool)

(assert (=> d!845551 (= (isEmptyLang!453 (ite c!492741 lt!1041448 lt!1041446)) ((_ is EmptyLang!9363) (ite c!492741 lt!1041448 lt!1041446)))))

(assert (=> bm!200777 d!845551))

(assert (=> d!845469 d!845441))

(assert (=> d!845469 d!845425))

(assert (=> b!2996127 d!845473))

(assert (=> b!2996385 d!845497))

(assert (=> b!2996385 d!845481))

(assert (=> bm!200785 d!845441))

(declare-fun d!845553 () Bool)

(assert (=> d!845553 (= (nullable!3026 lt!1041444) (nullableFct!860 lt!1041444))))

(declare-fun bs!528103 () Bool)

(assert (= bs!528103 d!845553))

(declare-fun m!3350277 () Bool)

(assert (=> bs!528103 m!3350277))

(assert (=> b!2996046 d!845553))

(declare-fun d!845555 () Bool)

(assert (=> d!845555 (= (nullable!3026 (regTwo!19238 r!17423)) (nullableFct!860 (regTwo!19238 r!17423)))))

(declare-fun bs!528104 () Bool)

(assert (= bs!528104 d!845555))

(declare-fun m!3350279 () Bool)

(assert (=> bs!528104 m!3350279))

(assert (=> b!2996046 d!845555))

(assert (=> d!845445 d!845441))

(assert (=> d!845445 d!845543))

(declare-fun b!2996728 () Bool)

(declare-fun e!1883082 () Bool)

(declare-fun call!200917 () Bool)

(assert (=> b!2996728 (= e!1883082 call!200917)))

(declare-fun b!2996729 () Bool)

(declare-fun e!1883080 () Bool)

(declare-fun call!200915 () Bool)

(assert (=> b!2996729 (= e!1883080 call!200915)))

(declare-fun c!492939 () Bool)

(declare-fun bm!200910 () Bool)

(declare-fun c!492938 () Bool)

(assert (=> bm!200910 (= call!200917 (validRegex!4096 (ite c!492939 (reg!9692 (ite c!492693 (reg!9692 r!17423) (ite c!492692 (regOne!19239 r!17423) (regTwo!19238 r!17423)))) (ite c!492938 (regOne!19239 (ite c!492693 (reg!9692 r!17423) (ite c!492692 (regOne!19239 r!17423) (regTwo!19238 r!17423)))) (regTwo!19238 (ite c!492693 (reg!9692 r!17423) (ite c!492692 (regOne!19239 r!17423) (regTwo!19238 r!17423))))))))))

(declare-fun b!2996731 () Bool)

(declare-fun e!1883083 () Bool)

(declare-fun call!200916 () Bool)

(assert (=> b!2996731 (= e!1883083 call!200916)))

(declare-fun bm!200911 () Bool)

(assert (=> bm!200911 (= call!200916 call!200917)))

(declare-fun b!2996732 () Bool)

(declare-fun e!1883079 () Bool)

(declare-fun e!1883078 () Bool)

(assert (=> b!2996732 (= e!1883079 e!1883078)))

(assert (=> b!2996732 (= c!492938 ((_ is Union!9363) (ite c!492693 (reg!9692 r!17423) (ite c!492692 (regOne!19239 r!17423) (regTwo!19238 r!17423)))))))

(declare-fun b!2996733 () Bool)

(assert (=> b!2996733 (= e!1883079 e!1883082)))

(declare-fun res!1235742 () Bool)

(assert (=> b!2996733 (= res!1235742 (not (nullable!3026 (reg!9692 (ite c!492693 (reg!9692 r!17423) (ite c!492692 (regOne!19239 r!17423) (regTwo!19238 r!17423)))))))))

(assert (=> b!2996733 (=> (not res!1235742) (not e!1883082))))

(declare-fun b!2996734 () Bool)

(declare-fun res!1235739 () Bool)

(declare-fun e!1883081 () Bool)

(assert (=> b!2996734 (=> res!1235739 e!1883081)))

(assert (=> b!2996734 (= res!1235739 (not ((_ is Concat!14684) (ite c!492693 (reg!9692 r!17423) (ite c!492692 (regOne!19239 r!17423) (regTwo!19238 r!17423))))))))

(assert (=> b!2996734 (= e!1883078 e!1883081)))

(declare-fun b!2996735 () Bool)

(assert (=> b!2996735 (= e!1883081 e!1883083)))

(declare-fun res!1235740 () Bool)

(assert (=> b!2996735 (=> (not res!1235740) (not e!1883083))))

(assert (=> b!2996735 (= res!1235740 call!200915)))

(declare-fun bm!200912 () Bool)

(assert (=> bm!200912 (= call!200915 (validRegex!4096 (ite c!492938 (regTwo!19239 (ite c!492693 (reg!9692 r!17423) (ite c!492692 (regOne!19239 r!17423) (regTwo!19238 r!17423)))) (regOne!19238 (ite c!492693 (reg!9692 r!17423) (ite c!492692 (regOne!19239 r!17423) (regTwo!19238 r!17423)))))))))

(declare-fun b!2996736 () Bool)

(declare-fun e!1883084 () Bool)

(assert (=> b!2996736 (= e!1883084 e!1883079)))

(assert (=> b!2996736 (= c!492939 ((_ is Star!9363) (ite c!492693 (reg!9692 r!17423) (ite c!492692 (regOne!19239 r!17423) (regTwo!19238 r!17423)))))))

(declare-fun d!845557 () Bool)

(declare-fun res!1235741 () Bool)

(assert (=> d!845557 (=> res!1235741 e!1883084)))

(assert (=> d!845557 (= res!1235741 ((_ is ElementMatch!9363) (ite c!492693 (reg!9692 r!17423) (ite c!492692 (regOne!19239 r!17423) (regTwo!19238 r!17423)))))))

(assert (=> d!845557 (= (validRegex!4096 (ite c!492693 (reg!9692 r!17423) (ite c!492692 (regOne!19239 r!17423) (regTwo!19238 r!17423)))) e!1883084)))

(declare-fun b!2996730 () Bool)

(declare-fun res!1235743 () Bool)

(assert (=> b!2996730 (=> (not res!1235743) (not e!1883080))))

(assert (=> b!2996730 (= res!1235743 call!200916)))

(assert (=> b!2996730 (= e!1883078 e!1883080)))

(assert (= (and d!845557 (not res!1235741)) b!2996736))

(assert (= (and b!2996736 c!492939) b!2996733))

(assert (= (and b!2996736 (not c!492939)) b!2996732))

(assert (= (and b!2996733 res!1235742) b!2996728))

(assert (= (and b!2996732 c!492938) b!2996730))

(assert (= (and b!2996732 (not c!492938)) b!2996734))

(assert (= (and b!2996730 res!1235743) b!2996729))

(assert (= (and b!2996734 (not res!1235739)) b!2996735))

(assert (= (and b!2996735 res!1235740) b!2996731))

(assert (= (or b!2996730 b!2996731) bm!200911))

(assert (= (or b!2996729 b!2996735) bm!200912))

(assert (= (or b!2996728 bm!200911) bm!200910))

(declare-fun m!3350281 () Bool)

(assert (=> bm!200910 m!3350281))

(declare-fun m!3350283 () Bool)

(assert (=> b!2996733 m!3350283))

(declare-fun m!3350285 () Bool)

(assert (=> bm!200912 m!3350285))

(assert (=> bm!200748 d!845557))

(declare-fun b!2996737 () Bool)

(declare-fun e!1883089 () Bool)

(declare-fun call!200922 () Bool)

(assert (=> b!2996737 (= e!1883089 call!200922)))

(declare-fun b!2996738 () Bool)

(declare-fun e!1883087 () Bool)

(declare-fun call!200920 () Bool)

(assert (=> b!2996738 (= e!1883087 call!200920)))

(declare-fun bm!200915 () Bool)

(declare-fun c!492940 () Bool)

(declare-fun c!492941 () Bool)

(assert (=> bm!200915 (= call!200922 (validRegex!4096 (ite c!492941 (reg!9692 lt!1041444) (ite c!492940 (regOne!19239 lt!1041444) (regTwo!19238 lt!1041444)))))))

(declare-fun b!2996740 () Bool)

(declare-fun e!1883090 () Bool)

(declare-fun call!200921 () Bool)

(assert (=> b!2996740 (= e!1883090 call!200921)))

(declare-fun bm!200916 () Bool)

(assert (=> bm!200916 (= call!200921 call!200922)))

(declare-fun b!2996741 () Bool)

(declare-fun e!1883086 () Bool)

(declare-fun e!1883085 () Bool)

(assert (=> b!2996741 (= e!1883086 e!1883085)))

(assert (=> b!2996741 (= c!492940 ((_ is Union!9363) lt!1041444))))

(declare-fun b!2996742 () Bool)

(assert (=> b!2996742 (= e!1883086 e!1883089)))

(declare-fun res!1235747 () Bool)

(assert (=> b!2996742 (= res!1235747 (not (nullable!3026 (reg!9692 lt!1041444))))))

(assert (=> b!2996742 (=> (not res!1235747) (not e!1883089))))

(declare-fun b!2996743 () Bool)

(declare-fun res!1235744 () Bool)

(declare-fun e!1883088 () Bool)

(assert (=> b!2996743 (=> res!1235744 e!1883088)))

(assert (=> b!2996743 (= res!1235744 (not ((_ is Concat!14684) lt!1041444)))))

(assert (=> b!2996743 (= e!1883085 e!1883088)))

(declare-fun b!2996744 () Bool)

(assert (=> b!2996744 (= e!1883088 e!1883090)))

(declare-fun res!1235745 () Bool)

(assert (=> b!2996744 (=> (not res!1235745) (not e!1883090))))

(assert (=> b!2996744 (= res!1235745 call!200920)))

(declare-fun bm!200917 () Bool)

(assert (=> bm!200917 (= call!200920 (validRegex!4096 (ite c!492940 (regTwo!19239 lt!1041444) (regOne!19238 lt!1041444))))))

(declare-fun b!2996745 () Bool)

(declare-fun e!1883091 () Bool)

(assert (=> b!2996745 (= e!1883091 e!1883086)))

(assert (=> b!2996745 (= c!492941 ((_ is Star!9363) lt!1041444))))

(declare-fun d!845559 () Bool)

(declare-fun res!1235746 () Bool)

(assert (=> d!845559 (=> res!1235746 e!1883091)))

(assert (=> d!845559 (= res!1235746 ((_ is ElementMatch!9363) lt!1041444))))

(assert (=> d!845559 (= (validRegex!4096 lt!1041444) e!1883091)))

(declare-fun b!2996739 () Bool)

(declare-fun res!1235748 () Bool)

(assert (=> b!2996739 (=> (not res!1235748) (not e!1883087))))

(assert (=> b!2996739 (= res!1235748 call!200921)))

(assert (=> b!2996739 (= e!1883085 e!1883087)))

(assert (= (and d!845559 (not res!1235746)) b!2996745))

(assert (= (and b!2996745 c!492941) b!2996742))

(assert (= (and b!2996745 (not c!492941)) b!2996741))

(assert (= (and b!2996742 res!1235747) b!2996737))

(assert (= (and b!2996741 c!492940) b!2996739))

(assert (= (and b!2996741 (not c!492940)) b!2996743))

(assert (= (and b!2996739 res!1235748) b!2996738))

(assert (= (and b!2996743 (not res!1235744)) b!2996744))

(assert (= (and b!2996744 res!1235745) b!2996740))

(assert (= (or b!2996739 b!2996740) bm!200916))

(assert (= (or b!2996738 b!2996744) bm!200917))

(assert (= (or b!2996737 bm!200916) bm!200915))

(declare-fun m!3350287 () Bool)

(assert (=> bm!200915 m!3350287))

(declare-fun m!3350289 () Bool)

(assert (=> b!2996742 m!3350289))

(declare-fun m!3350291 () Bool)

(assert (=> bm!200917 m!3350291))

(assert (=> d!845429 d!845559))

(assert (=> d!845429 d!845543))

(declare-fun b!2996746 () Bool)

(declare-fun e!1883099 () Regex!9363)

(declare-fun lt!1041523 () Regex!9363)

(assert (=> b!2996746 (= e!1883099 lt!1041523)))

(declare-fun c!492942 () Bool)

(declare-fun bm!200920 () Bool)

(declare-fun c!492944 () Bool)

(declare-fun call!200926 () Regex!9363)

(assert (=> bm!200920 (= call!200926 (simplify!354 (ite c!492944 (reg!9692 (ite c!492732 (reg!9692 (regTwo!19238 r!17423)) (ite c!492730 (regOne!19239 (regTwo!19238 r!17423)) (regTwo!19238 (regTwo!19238 r!17423))))) (ite c!492942 (regOne!19239 (ite c!492732 (reg!9692 (regTwo!19238 r!17423)) (ite c!492730 (regOne!19239 (regTwo!19238 r!17423)) (regTwo!19238 (regTwo!19238 r!17423))))) (regTwo!19238 (ite c!492732 (reg!9692 (regTwo!19238 r!17423)) (ite c!492730 (regOne!19239 (regTwo!19238 r!17423)) (regTwo!19238 (regTwo!19238 r!17423)))))))))))

(declare-fun b!2996748 () Bool)

(declare-fun e!1883100 () Regex!9363)

(declare-fun lt!1041522 () Regex!9363)

(assert (=> b!2996748 (= e!1883100 (Star!9363 lt!1041522))))

(declare-fun b!2996749 () Bool)

(declare-fun c!492946 () Bool)

(declare-fun lt!1041521 () Regex!9363)

(assert (=> b!2996749 (= c!492946 (isEmptyExpr!470 lt!1041521))))

(declare-fun e!1883097 () Regex!9363)

(declare-fun e!1883101 () Regex!9363)

(assert (=> b!2996749 (= e!1883097 e!1883101)))

(declare-fun e!1883093 () Regex!9363)

(declare-fun b!2996750 () Bool)

(assert (=> b!2996750 (= e!1883093 (ite c!492732 (reg!9692 (regTwo!19238 r!17423)) (ite c!492730 (regOne!19239 (regTwo!19238 r!17423)) (regTwo!19238 (regTwo!19238 r!17423)))))))

(declare-fun call!200928 () Bool)

(declare-fun bm!200921 () Bool)

(assert (=> bm!200921 (= call!200928 (isEmptyLang!453 (ite c!492942 lt!1041523 lt!1041521)))))

(declare-fun bm!200922 () Bool)

(declare-fun call!200931 () Bool)

(declare-fun call!200927 () Bool)

(assert (=> bm!200922 (= call!200931 call!200927)))

(declare-fun lt!1041526 () Regex!9363)

(declare-fun lt!1041524 () Regex!9363)

(declare-fun bm!200923 () Bool)

(assert (=> bm!200923 (= call!200927 (isEmptyLang!453 (ite c!492944 lt!1041522 (ite c!492942 lt!1041526 lt!1041524))))))

(declare-fun b!2996751 () Bool)

(assert (=> b!2996751 (= c!492942 ((_ is Union!9363) (ite c!492732 (reg!9692 (regTwo!19238 r!17423)) (ite c!492730 (regOne!19239 (regTwo!19238 r!17423)) (regTwo!19238 (regTwo!19238 r!17423))))))))

(declare-fun e!1883104 () Regex!9363)

(declare-fun e!1883092 () Regex!9363)

(assert (=> b!2996751 (= e!1883104 e!1883092)))

(declare-fun b!2996752 () Bool)

(declare-fun e!1883096 () Regex!9363)

(assert (=> b!2996752 (= e!1883096 (Concat!14684 lt!1041521 lt!1041524))))

(declare-fun b!2996753 () Bool)

(assert (=> b!2996753 (= e!1883099 (Union!9363 lt!1041523 lt!1041526))))

(declare-fun b!2996754 () Bool)

(declare-fun c!492945 () Bool)

(assert (=> b!2996754 (= c!492945 call!200931)))

(declare-fun e!1883105 () Regex!9363)

(assert (=> b!2996754 (= e!1883105 e!1883099)))

(declare-fun b!2996755 () Bool)

(assert (=> b!2996755 (= e!1883097 EmptyLang!9363)))

(declare-fun b!2996756 () Bool)

(assert (=> b!2996756 (= e!1883101 lt!1041524)))

(declare-fun b!2996757 () Bool)

(assert (=> b!2996757 (= e!1883101 e!1883096)))

(declare-fun c!492952 () Bool)

(declare-fun call!200925 () Bool)

(assert (=> b!2996757 (= c!492952 call!200925)))

(declare-fun b!2996758 () Bool)

(assert (=> b!2996758 (= e!1883100 EmptyExpr!9363)))

(declare-fun b!2996759 () Bool)

(assert (=> b!2996759 (= e!1883096 lt!1041521)))

(declare-fun b!2996760 () Bool)

(assert (=> b!2996760 (= e!1883092 e!1883105)))

(declare-fun call!200929 () Regex!9363)

(assert (=> b!2996760 (= lt!1041523 call!200929)))

(declare-fun call!200930 () Regex!9363)

(assert (=> b!2996760 (= lt!1041526 call!200930)))

(declare-fun c!492943 () Bool)

(assert (=> b!2996760 (= c!492943 call!200928)))

(declare-fun bm!200924 () Bool)

(assert (=> bm!200924 (= call!200925 (isEmptyExpr!470 (ite c!492944 lt!1041522 lt!1041524)))))

(declare-fun b!2996761 () Bool)

(declare-fun e!1883103 () Bool)

(declare-fun lt!1041525 () Regex!9363)

(assert (=> b!2996761 (= e!1883103 (= (nullable!3026 lt!1041525) (nullable!3026 (ite c!492732 (reg!9692 (regTwo!19238 r!17423)) (ite c!492730 (regOne!19239 (regTwo!19238 r!17423)) (regTwo!19238 (regTwo!19238 r!17423)))))))))

(declare-fun b!2996747 () Bool)

(declare-fun e!1883094 () Regex!9363)

(assert (=> b!2996747 (= e!1883094 e!1883093)))

(declare-fun c!492948 () Bool)

(assert (=> b!2996747 (= c!492948 ((_ is ElementMatch!9363) (ite c!492732 (reg!9692 (regTwo!19238 r!17423)) (ite c!492730 (regOne!19239 (regTwo!19238 r!17423)) (regTwo!19238 (regTwo!19238 r!17423))))))))

(declare-fun d!845561 () Bool)

(assert (=> d!845561 e!1883103))

(declare-fun res!1235751 () Bool)

(assert (=> d!845561 (=> (not res!1235751) (not e!1883103))))

(assert (=> d!845561 (= res!1235751 (validRegex!4096 lt!1041525))))

(assert (=> d!845561 (= lt!1041525 e!1883094)))

(declare-fun c!492950 () Bool)

(assert (=> d!845561 (= c!492950 ((_ is EmptyLang!9363) (ite c!492732 (reg!9692 (regTwo!19238 r!17423)) (ite c!492730 (regOne!19239 (regTwo!19238 r!17423)) (regTwo!19238 (regTwo!19238 r!17423))))))))

(assert (=> d!845561 (validRegex!4096 (ite c!492732 (reg!9692 (regTwo!19238 r!17423)) (ite c!492730 (regOne!19239 (regTwo!19238 r!17423)) (regTwo!19238 (regTwo!19238 r!17423)))))))

(assert (=> d!845561 (= (simplify!354 (ite c!492732 (reg!9692 (regTwo!19238 r!17423)) (ite c!492730 (regOne!19239 (regTwo!19238 r!17423)) (regTwo!19238 (regTwo!19238 r!17423))))) lt!1041525)))

(declare-fun b!2996762 () Bool)

(declare-fun e!1883102 () Bool)

(assert (=> b!2996762 (= e!1883102 call!200931)))

(declare-fun bm!200925 () Bool)

(assert (=> bm!200925 (= call!200929 call!200926)))

(declare-fun b!2996763 () Bool)

(declare-fun c!492949 () Bool)

(declare-fun e!1883095 () Bool)

(assert (=> b!2996763 (= c!492949 e!1883095)))

(declare-fun res!1235750 () Bool)

(assert (=> b!2996763 (=> res!1235750 e!1883095)))

(assert (=> b!2996763 (= res!1235750 call!200927)))

(assert (=> b!2996763 (= lt!1041522 call!200926)))

(assert (=> b!2996763 (= e!1883104 e!1883100)))

(declare-fun b!2996764 () Bool)

(assert (=> b!2996764 (= e!1883095 call!200925)))

(declare-fun b!2996765 () Bool)

(assert (=> b!2996765 (= e!1883094 EmptyLang!9363)))

(declare-fun b!2996766 () Bool)

(assert (=> b!2996766 (= e!1883092 e!1883097)))

(assert (=> b!2996766 (= lt!1041521 call!200930)))

(assert (=> b!2996766 (= lt!1041524 call!200929)))

(declare-fun res!1235749 () Bool)

(assert (=> b!2996766 (= res!1235749 call!200928)))

(assert (=> b!2996766 (=> res!1235749 e!1883102)))

(declare-fun c!492947 () Bool)

(assert (=> b!2996766 (= c!492947 e!1883102)))

(declare-fun b!2996767 () Bool)

(declare-fun e!1883098 () Regex!9363)

(assert (=> b!2996767 (= e!1883098 e!1883104)))

(assert (=> b!2996767 (= c!492944 ((_ is Star!9363) (ite c!492732 (reg!9692 (regTwo!19238 r!17423)) (ite c!492730 (regOne!19239 (regTwo!19238 r!17423)) (regTwo!19238 (regTwo!19238 r!17423))))))))

(declare-fun b!2996768 () Bool)

(assert (=> b!2996768 (= e!1883098 EmptyExpr!9363)))

(declare-fun b!2996769 () Bool)

(declare-fun c!492951 () Bool)

(assert (=> b!2996769 (= c!492951 ((_ is EmptyExpr!9363) (ite c!492732 (reg!9692 (regTwo!19238 r!17423)) (ite c!492730 (regOne!19239 (regTwo!19238 r!17423)) (regTwo!19238 (regTwo!19238 r!17423))))))))

(assert (=> b!2996769 (= e!1883093 e!1883098)))

(declare-fun b!2996770 () Bool)

(assert (=> b!2996770 (= e!1883105 lt!1041526)))

(declare-fun bm!200926 () Bool)

(assert (=> bm!200926 (= call!200930 (simplify!354 (ite c!492942 (regTwo!19239 (ite c!492732 (reg!9692 (regTwo!19238 r!17423)) (ite c!492730 (regOne!19239 (regTwo!19238 r!17423)) (regTwo!19238 (regTwo!19238 r!17423))))) (regOne!19238 (ite c!492732 (reg!9692 (regTwo!19238 r!17423)) (ite c!492730 (regOne!19239 (regTwo!19238 r!17423)) (regTwo!19238 (regTwo!19238 r!17423))))))))))

(assert (= (and d!845561 c!492950) b!2996765))

(assert (= (and d!845561 (not c!492950)) b!2996747))

(assert (= (and b!2996747 c!492948) b!2996750))

(assert (= (and b!2996747 (not c!492948)) b!2996769))

(assert (= (and b!2996769 c!492951) b!2996768))

(assert (= (and b!2996769 (not c!492951)) b!2996767))

(assert (= (and b!2996767 c!492944) b!2996763))

(assert (= (and b!2996767 (not c!492944)) b!2996751))

(assert (= (and b!2996763 (not res!1235750)) b!2996764))

(assert (= (and b!2996763 c!492949) b!2996758))

(assert (= (and b!2996763 (not c!492949)) b!2996748))

(assert (= (and b!2996751 c!492942) b!2996760))

(assert (= (and b!2996751 (not c!492942)) b!2996766))

(assert (= (and b!2996760 c!492943) b!2996770))

(assert (= (and b!2996760 (not c!492943)) b!2996754))

(assert (= (and b!2996754 c!492945) b!2996746))

(assert (= (and b!2996754 (not c!492945)) b!2996753))

(assert (= (and b!2996766 (not res!1235749)) b!2996762))

(assert (= (and b!2996766 c!492947) b!2996755))

(assert (= (and b!2996766 (not c!492947)) b!2996749))

(assert (= (and b!2996749 c!492946) b!2996756))

(assert (= (and b!2996749 (not c!492946)) b!2996757))

(assert (= (and b!2996757 c!492952) b!2996759))

(assert (= (and b!2996757 (not c!492952)) b!2996752))

(assert (= (or b!2996760 b!2996766) bm!200925))

(assert (= (or b!2996760 b!2996766) bm!200926))

(assert (= (or b!2996760 b!2996766) bm!200921))

(assert (= (or b!2996754 b!2996762) bm!200922))

(assert (= (or b!2996764 b!2996757) bm!200924))

(assert (= (or b!2996763 bm!200925) bm!200920))

(assert (= (or b!2996763 bm!200922) bm!200923))

(assert (= (and d!845561 res!1235751) b!2996761))

(declare-fun m!3350293 () Bool)

(assert (=> bm!200921 m!3350293))

(declare-fun m!3350295 () Bool)

(assert (=> b!2996761 m!3350295))

(declare-fun m!3350297 () Bool)

(assert (=> b!2996761 m!3350297))

(declare-fun m!3350299 () Bool)

(assert (=> bm!200926 m!3350299))

(declare-fun m!3350301 () Bool)

(assert (=> bm!200920 m!3350301))

(declare-fun m!3350303 () Bool)

(assert (=> bm!200924 m!3350303))

(declare-fun m!3350305 () Bool)

(assert (=> d!845561 m!3350305))

(declare-fun m!3350307 () Bool)

(assert (=> d!845561 m!3350307))

(declare-fun m!3350309 () Bool)

(assert (=> b!2996749 m!3350309))

(declare-fun m!3350311 () Bool)

(assert (=> bm!200923 m!3350311))

(assert (=> bm!200769 d!845561))

(assert (=> b!2996120 d!845473))

(declare-fun b!2996771 () Bool)

(declare-fun e!1883110 () Bool)

(declare-fun call!200934 () Bool)

(assert (=> b!2996771 (= e!1883110 call!200934)))

(declare-fun b!2996772 () Bool)

(declare-fun e!1883108 () Bool)

(declare-fun call!200932 () Bool)

(assert (=> b!2996772 (= e!1883108 call!200932)))

(declare-fun c!492953 () Bool)

(declare-fun bm!200927 () Bool)

(declare-fun c!492954 () Bool)

(assert (=> bm!200927 (= call!200934 (validRegex!4096 (ite c!492954 (reg!9692 (ite c!492692 (regTwo!19239 r!17423) (regOne!19238 r!17423))) (ite c!492953 (regOne!19239 (ite c!492692 (regTwo!19239 r!17423) (regOne!19238 r!17423))) (regTwo!19238 (ite c!492692 (regTwo!19239 r!17423) (regOne!19238 r!17423)))))))))

(declare-fun b!2996774 () Bool)

(declare-fun e!1883111 () Bool)

(declare-fun call!200933 () Bool)

(assert (=> b!2996774 (= e!1883111 call!200933)))

(declare-fun bm!200928 () Bool)

(assert (=> bm!200928 (= call!200933 call!200934)))

(declare-fun b!2996775 () Bool)

(declare-fun e!1883107 () Bool)

(declare-fun e!1883106 () Bool)

(assert (=> b!2996775 (= e!1883107 e!1883106)))

(assert (=> b!2996775 (= c!492953 ((_ is Union!9363) (ite c!492692 (regTwo!19239 r!17423) (regOne!19238 r!17423))))))

(declare-fun b!2996776 () Bool)

(assert (=> b!2996776 (= e!1883107 e!1883110)))

(declare-fun res!1235755 () Bool)

(assert (=> b!2996776 (= res!1235755 (not (nullable!3026 (reg!9692 (ite c!492692 (regTwo!19239 r!17423) (regOne!19238 r!17423))))))))

(assert (=> b!2996776 (=> (not res!1235755) (not e!1883110))))

(declare-fun b!2996777 () Bool)

(declare-fun res!1235752 () Bool)

(declare-fun e!1883109 () Bool)

(assert (=> b!2996777 (=> res!1235752 e!1883109)))

(assert (=> b!2996777 (= res!1235752 (not ((_ is Concat!14684) (ite c!492692 (regTwo!19239 r!17423) (regOne!19238 r!17423)))))))

(assert (=> b!2996777 (= e!1883106 e!1883109)))

(declare-fun b!2996778 () Bool)

(assert (=> b!2996778 (= e!1883109 e!1883111)))

(declare-fun res!1235753 () Bool)

(assert (=> b!2996778 (=> (not res!1235753) (not e!1883111))))

(assert (=> b!2996778 (= res!1235753 call!200932)))

(declare-fun bm!200929 () Bool)

(assert (=> bm!200929 (= call!200932 (validRegex!4096 (ite c!492953 (regTwo!19239 (ite c!492692 (regTwo!19239 r!17423) (regOne!19238 r!17423))) (regOne!19238 (ite c!492692 (regTwo!19239 r!17423) (regOne!19238 r!17423))))))))

(declare-fun b!2996779 () Bool)

(declare-fun e!1883112 () Bool)

(assert (=> b!2996779 (= e!1883112 e!1883107)))

(assert (=> b!2996779 (= c!492954 ((_ is Star!9363) (ite c!492692 (regTwo!19239 r!17423) (regOne!19238 r!17423))))))

(declare-fun d!845563 () Bool)

(declare-fun res!1235754 () Bool)

(assert (=> d!845563 (=> res!1235754 e!1883112)))

(assert (=> d!845563 (= res!1235754 ((_ is ElementMatch!9363) (ite c!492692 (regTwo!19239 r!17423) (regOne!19238 r!17423))))))

(assert (=> d!845563 (= (validRegex!4096 (ite c!492692 (regTwo!19239 r!17423) (regOne!19238 r!17423))) e!1883112)))

(declare-fun b!2996773 () Bool)

(declare-fun res!1235756 () Bool)

(assert (=> b!2996773 (=> (not res!1235756) (not e!1883108))))

(assert (=> b!2996773 (= res!1235756 call!200933)))

(assert (=> b!2996773 (= e!1883106 e!1883108)))

(assert (= (and d!845563 (not res!1235754)) b!2996779))

(assert (= (and b!2996779 c!492954) b!2996776))

(assert (= (and b!2996779 (not c!492954)) b!2996775))

(assert (= (and b!2996776 res!1235755) b!2996771))

(assert (= (and b!2996775 c!492953) b!2996773))

(assert (= (and b!2996775 (not c!492953)) b!2996777))

(assert (= (and b!2996773 res!1235756) b!2996772))

(assert (= (and b!2996777 (not res!1235752)) b!2996778))

(assert (= (and b!2996778 res!1235753) b!2996774))

(assert (= (or b!2996773 b!2996774) bm!200928))

(assert (= (or b!2996772 b!2996778) bm!200929))

(assert (= (or b!2996771 bm!200928) bm!200927))

(declare-fun m!3350313 () Bool)

(assert (=> bm!200927 m!3350313))

(declare-fun m!3350315 () Bool)

(assert (=> b!2996776 m!3350315))

(declare-fun m!3350317 () Bool)

(assert (=> bm!200929 m!3350317))

(assert (=> bm!200750 d!845563))

(declare-fun d!845565 () Bool)

(assert (=> d!845565 (= (nullable!3026 r!17423) (nullableFct!860 r!17423))))

(declare-fun bs!528105 () Bool)

(assert (= bs!528105 d!845565))

(declare-fun m!3350319 () Bool)

(assert (=> bs!528105 m!3350319))

(assert (=> b!2996391 d!845565))

(declare-fun d!845567 () Bool)

(assert (=> d!845567 (= (isEmptyExpr!470 (ite c!492743 lt!1041447 lt!1041449)) ((_ is EmptyExpr!9363) (ite c!492743 lt!1041447 lt!1041449)))))

(assert (=> bm!200780 d!845567))

(assert (=> b!2996133 d!845497))

(assert (=> b!2996133 d!845481))

(assert (=> b!2996389 d!845473))

(declare-fun bs!528106 () Bool)

(declare-fun b!2996787 () Bool)

(assert (= bs!528106 (and b!2996787 b!2996377)))

(declare-fun lambda!112047 () Int)

(assert (=> bs!528106 (= (and (= (reg!9692 (regTwo!19239 r!17423)) (reg!9692 r!17423)) (= (regTwo!19239 r!17423) r!17423)) (= lambda!112047 lambda!112041))))

(declare-fun bs!528107 () Bool)

(assert (= bs!528107 (and b!2996787 b!2996373)))

(assert (=> bs!528107 (not (= lambda!112047 lambda!112042))))

(declare-fun bs!528108 () Bool)

(assert (= bs!528108 (and b!2996787 b!2996441)))

(assert (=> bs!528108 (= (and (= (reg!9692 (regTwo!19239 r!17423)) (reg!9692 (regOne!19239 r!17423))) (= (regTwo!19239 r!17423) (regOne!19239 r!17423))) (= lambda!112047 lambda!112043))))

(declare-fun bs!528109 () Bool)

(assert (= bs!528109 (and b!2996787 b!2996437)))

(assert (=> bs!528109 (not (= lambda!112047 lambda!112044))))

(assert (=> b!2996787 true))

(assert (=> b!2996787 true))

(declare-fun bs!528110 () Bool)

(declare-fun b!2996783 () Bool)

(assert (= bs!528110 (and b!2996783 b!2996377)))

(declare-fun lambda!112048 () Int)

(assert (=> bs!528110 (not (= lambda!112048 lambda!112041))))

(declare-fun bs!528111 () Bool)

(assert (= bs!528111 (and b!2996783 b!2996437)))

(assert (=> bs!528111 (= (and (= (regOne!19238 (regTwo!19239 r!17423)) (regOne!19238 (regOne!19239 r!17423))) (= (regTwo!19238 (regTwo!19239 r!17423)) (regTwo!19238 (regOne!19239 r!17423)))) (= lambda!112048 lambda!112044))))

(declare-fun bs!528112 () Bool)

(assert (= bs!528112 (and b!2996783 b!2996373)))

(assert (=> bs!528112 (= (and (= (regOne!19238 (regTwo!19239 r!17423)) (regOne!19238 r!17423)) (= (regTwo!19238 (regTwo!19239 r!17423)) (regTwo!19238 r!17423))) (= lambda!112048 lambda!112042))))

(declare-fun bs!528113 () Bool)

(assert (= bs!528113 (and b!2996783 b!2996787)))

(assert (=> bs!528113 (not (= lambda!112048 lambda!112047))))

(declare-fun bs!528114 () Bool)

(assert (= bs!528114 (and b!2996783 b!2996441)))

(assert (=> bs!528114 (not (= lambda!112048 lambda!112043))))

(assert (=> b!2996783 true))

(assert (=> b!2996783 true))

(declare-fun bm!200930 () Bool)

(declare-fun call!200936 () Bool)

(assert (=> bm!200930 (= call!200936 (isEmpty!19378 s!11993))))

(declare-fun b!2996780 () Bool)

(declare-fun c!492955 () Bool)

(assert (=> b!2996780 (= c!492955 ((_ is Union!9363) (regTwo!19239 r!17423)))))

(declare-fun e!1883115 () Bool)

(declare-fun e!1883114 () Bool)

(assert (=> b!2996780 (= e!1883115 e!1883114)))

(declare-fun b!2996781 () Bool)

(assert (=> b!2996781 (= e!1883115 (= s!11993 (Cons!35104 (c!492681 (regTwo!19239 r!17423)) Nil!35104)))))

(declare-fun b!2996782 () Bool)

(declare-fun e!1883117 () Bool)

(assert (=> b!2996782 (= e!1883114 e!1883117)))

(declare-fun c!492957 () Bool)

(assert (=> b!2996782 (= c!492957 ((_ is Star!9363) (regTwo!19239 r!17423)))))

(declare-fun d!845569 () Bool)

(declare-fun c!492956 () Bool)

(assert (=> d!845569 (= c!492956 ((_ is EmptyExpr!9363) (regTwo!19239 r!17423)))))

(declare-fun e!1883113 () Bool)

(assert (=> d!845569 (= (matchRSpec!1500 (regTwo!19239 r!17423) s!11993) e!1883113)))

(declare-fun call!200935 () Bool)

(assert (=> b!2996783 (= e!1883117 call!200935)))

(declare-fun b!2996784 () Bool)

(declare-fun e!1883116 () Bool)

(assert (=> b!2996784 (= e!1883116 (matchRSpec!1500 (regTwo!19239 (regTwo!19239 r!17423)) s!11993))))

(declare-fun b!2996785 () Bool)

(assert (=> b!2996785 (= e!1883114 e!1883116)))

(declare-fun res!1235757 () Bool)

(assert (=> b!2996785 (= res!1235757 (matchRSpec!1500 (regOne!19239 (regTwo!19239 r!17423)) s!11993))))

(assert (=> b!2996785 (=> res!1235757 e!1883116)))

(declare-fun b!2996786 () Bool)

(declare-fun c!492958 () Bool)

(assert (=> b!2996786 (= c!492958 ((_ is ElementMatch!9363) (regTwo!19239 r!17423)))))

(declare-fun e!1883118 () Bool)

(assert (=> b!2996786 (= e!1883118 e!1883115)))

(declare-fun e!1883119 () Bool)

(assert (=> b!2996787 (= e!1883119 call!200935)))

(declare-fun b!2996788 () Bool)

(assert (=> b!2996788 (= e!1883113 e!1883118)))

(declare-fun res!1235758 () Bool)

(assert (=> b!2996788 (= res!1235758 (not ((_ is EmptyLang!9363) (regTwo!19239 r!17423))))))

(assert (=> b!2996788 (=> (not res!1235758) (not e!1883118))))

(declare-fun b!2996789 () Bool)

(assert (=> b!2996789 (= e!1883113 call!200936)))

(declare-fun b!2996790 () Bool)

(declare-fun res!1235759 () Bool)

(assert (=> b!2996790 (=> res!1235759 e!1883119)))

(assert (=> b!2996790 (= res!1235759 call!200936)))

(assert (=> b!2996790 (= e!1883117 e!1883119)))

(declare-fun bm!200931 () Bool)

(assert (=> bm!200931 (= call!200935 (Exists!1636 (ite c!492957 lambda!112047 lambda!112048)))))

(assert (= (and d!845569 c!492956) b!2996789))

(assert (= (and d!845569 (not c!492956)) b!2996788))

(assert (= (and b!2996788 res!1235758) b!2996786))

(assert (= (and b!2996786 c!492958) b!2996781))

(assert (= (and b!2996786 (not c!492958)) b!2996780))

(assert (= (and b!2996780 c!492955) b!2996785))

(assert (= (and b!2996780 (not c!492955)) b!2996782))

(assert (= (and b!2996785 (not res!1235757)) b!2996784))

(assert (= (and b!2996782 c!492957) b!2996790))

(assert (= (and b!2996782 (not c!492957)) b!2996783))

(assert (= (and b!2996790 (not res!1235759)) b!2996787))

(assert (= (or b!2996787 b!2996783) bm!200931))

(assert (= (or b!2996789 b!2996790) bm!200930))

(assert (=> bm!200930 m!3349927))

(declare-fun m!3350329 () Bool)

(assert (=> b!2996784 m!3350329))

(declare-fun m!3350331 () Bool)

(assert (=> b!2996785 m!3350331))

(declare-fun m!3350333 () Bool)

(assert (=> bm!200931 m!3350333))

(assert (=> b!2996374 d!845569))

(assert (=> b!2996129 d!845555))

(declare-fun b!2996826 () Bool)

(declare-fun e!1883139 () Bool)

(declare-fun tp!952038 () Bool)

(assert (=> b!2996826 (= e!1883139 (and tp_is_empty!16289 tp!952038))))

(assert (=> b!2996417 (= tp!952017 e!1883139)))

(assert (= (and b!2996417 ((_ is Cons!35104) (t!234293 (t!234293 s!11993)))) b!2996826))

(declare-fun b!2996828 () Bool)

(declare-fun e!1883140 () Bool)

(declare-fun tp!952041 () Bool)

(declare-fun tp!952040 () Bool)

(assert (=> b!2996828 (= e!1883140 (and tp!952041 tp!952040))))

(declare-fun b!2996830 () Bool)

(declare-fun tp!952043 () Bool)

(declare-fun tp!952039 () Bool)

(assert (=> b!2996830 (= e!1883140 (and tp!952043 tp!952039))))

(assert (=> b!2996411 (= tp!952013 e!1883140)))

(declare-fun b!2996827 () Bool)

(assert (=> b!2996827 (= e!1883140 tp_is_empty!16289)))

(declare-fun b!2996829 () Bool)

(declare-fun tp!952042 () Bool)

(assert (=> b!2996829 (= e!1883140 tp!952042)))

(assert (= (and b!2996411 ((_ is ElementMatch!9363) (reg!9692 (reg!9692 r!17423)))) b!2996827))

(assert (= (and b!2996411 ((_ is Concat!14684) (reg!9692 (reg!9692 r!17423)))) b!2996828))

(assert (= (and b!2996411 ((_ is Star!9363) (reg!9692 (reg!9692 r!17423)))) b!2996829))

(assert (= (and b!2996411 ((_ is Union!9363) (reg!9692 (reg!9692 r!17423)))) b!2996830))

(declare-fun b!2996832 () Bool)

(declare-fun e!1883141 () Bool)

(declare-fun tp!952046 () Bool)

(declare-fun tp!952045 () Bool)

(assert (=> b!2996832 (= e!1883141 (and tp!952046 tp!952045))))

(declare-fun b!2996834 () Bool)

(declare-fun tp!952048 () Bool)

(declare-fun tp!952044 () Bool)

(assert (=> b!2996834 (= e!1883141 (and tp!952048 tp!952044))))

(assert (=> b!2996410 (= tp!952012 e!1883141)))

(declare-fun b!2996831 () Bool)

(assert (=> b!2996831 (= e!1883141 tp_is_empty!16289)))

(declare-fun b!2996833 () Bool)

(declare-fun tp!952047 () Bool)

(assert (=> b!2996833 (= e!1883141 tp!952047)))

(assert (= (and b!2996410 ((_ is ElementMatch!9363) (regOne!19238 (reg!9692 r!17423)))) b!2996831))

(assert (= (and b!2996410 ((_ is Concat!14684) (regOne!19238 (reg!9692 r!17423)))) b!2996832))

(assert (= (and b!2996410 ((_ is Star!9363) (regOne!19238 (reg!9692 r!17423)))) b!2996833))

(assert (= (and b!2996410 ((_ is Union!9363) (regOne!19238 (reg!9692 r!17423)))) b!2996834))

(declare-fun b!2996836 () Bool)

(declare-fun e!1883142 () Bool)

(declare-fun tp!952051 () Bool)

(declare-fun tp!952050 () Bool)

(assert (=> b!2996836 (= e!1883142 (and tp!952051 tp!952050))))

(declare-fun b!2996838 () Bool)

(declare-fun tp!952053 () Bool)

(declare-fun tp!952049 () Bool)

(assert (=> b!2996838 (= e!1883142 (and tp!952053 tp!952049))))

(assert (=> b!2996410 (= tp!952011 e!1883142)))

(declare-fun b!2996835 () Bool)

(assert (=> b!2996835 (= e!1883142 tp_is_empty!16289)))

(declare-fun b!2996837 () Bool)

(declare-fun tp!952052 () Bool)

(assert (=> b!2996837 (= e!1883142 tp!952052)))

(assert (= (and b!2996410 ((_ is ElementMatch!9363) (regTwo!19238 (reg!9692 r!17423)))) b!2996835))

(assert (= (and b!2996410 ((_ is Concat!14684) (regTwo!19238 (reg!9692 r!17423)))) b!2996836))

(assert (= (and b!2996410 ((_ is Star!9363) (regTwo!19238 (reg!9692 r!17423)))) b!2996837))

(assert (= (and b!2996410 ((_ is Union!9363) (regTwo!19238 (reg!9692 r!17423)))) b!2996838))

(declare-fun b!2996840 () Bool)

(declare-fun e!1883143 () Bool)

(declare-fun tp!952056 () Bool)

(declare-fun tp!952055 () Bool)

(assert (=> b!2996840 (= e!1883143 (and tp!952056 tp!952055))))

(declare-fun b!2996842 () Bool)

(declare-fun tp!952058 () Bool)

(declare-fun tp!952054 () Bool)

(assert (=> b!2996842 (= e!1883143 (and tp!952058 tp!952054))))

(assert (=> b!2996428 (= tp!952031 e!1883143)))

(declare-fun b!2996839 () Bool)

(assert (=> b!2996839 (= e!1883143 tp_is_empty!16289)))

(declare-fun b!2996841 () Bool)

(declare-fun tp!952057 () Bool)

(assert (=> b!2996841 (= e!1883143 tp!952057)))

(assert (= (and b!2996428 ((_ is ElementMatch!9363) (reg!9692 (regOne!19239 r!17423)))) b!2996839))

(assert (= (and b!2996428 ((_ is Concat!14684) (reg!9692 (regOne!19239 r!17423)))) b!2996840))

(assert (= (and b!2996428 ((_ is Star!9363) (reg!9692 (regOne!19239 r!17423)))) b!2996841))

(assert (= (and b!2996428 ((_ is Union!9363) (reg!9692 (regOne!19239 r!17423)))) b!2996842))

(declare-fun b!2996844 () Bool)

(declare-fun e!1883144 () Bool)

(declare-fun tp!952061 () Bool)

(declare-fun tp!952060 () Bool)

(assert (=> b!2996844 (= e!1883144 (and tp!952061 tp!952060))))

(declare-fun b!2996846 () Bool)

(declare-fun tp!952063 () Bool)

(declare-fun tp!952059 () Bool)

(assert (=> b!2996846 (= e!1883144 (and tp!952063 tp!952059))))

(assert (=> b!2996423 (= tp!952025 e!1883144)))

(declare-fun b!2996843 () Bool)

(assert (=> b!2996843 (= e!1883144 tp_is_empty!16289)))

(declare-fun b!2996845 () Bool)

(declare-fun tp!952062 () Bool)

(assert (=> b!2996845 (= e!1883144 tp!952062)))

(assert (= (and b!2996423 ((_ is ElementMatch!9363) (regOne!19238 (regTwo!19238 r!17423)))) b!2996843))

(assert (= (and b!2996423 ((_ is Concat!14684) (regOne!19238 (regTwo!19238 r!17423)))) b!2996844))

(assert (= (and b!2996423 ((_ is Star!9363) (regOne!19238 (regTwo!19238 r!17423)))) b!2996845))

(assert (= (and b!2996423 ((_ is Union!9363) (regOne!19238 (regTwo!19238 r!17423)))) b!2996846))

(declare-fun b!2996848 () Bool)

(declare-fun e!1883145 () Bool)

(declare-fun tp!952066 () Bool)

(declare-fun tp!952065 () Bool)

(assert (=> b!2996848 (= e!1883145 (and tp!952066 tp!952065))))

(declare-fun b!2996850 () Bool)

(declare-fun tp!952068 () Bool)

(declare-fun tp!952064 () Bool)

(assert (=> b!2996850 (= e!1883145 (and tp!952068 tp!952064))))

(assert (=> b!2996423 (= tp!952024 e!1883145)))

(declare-fun b!2996847 () Bool)

(assert (=> b!2996847 (= e!1883145 tp_is_empty!16289)))

(declare-fun b!2996849 () Bool)

(declare-fun tp!952067 () Bool)

(assert (=> b!2996849 (= e!1883145 tp!952067)))

(assert (= (and b!2996423 ((_ is ElementMatch!9363) (regTwo!19238 (regTwo!19238 r!17423)))) b!2996847))

(assert (= (and b!2996423 ((_ is Concat!14684) (regTwo!19238 (regTwo!19238 r!17423)))) b!2996848))

(assert (= (and b!2996423 ((_ is Star!9363) (regTwo!19238 (regTwo!19238 r!17423)))) b!2996849))

(assert (= (and b!2996423 ((_ is Union!9363) (regTwo!19238 (regTwo!19238 r!17423)))) b!2996850))

(declare-fun b!2996852 () Bool)

(declare-fun e!1883146 () Bool)

(declare-fun tp!952071 () Bool)

(declare-fun tp!952070 () Bool)

(assert (=> b!2996852 (= e!1883146 (and tp!952071 tp!952070))))

(declare-fun b!2996854 () Bool)

(declare-fun tp!952073 () Bool)

(declare-fun tp!952069 () Bool)

(assert (=> b!2996854 (= e!1883146 (and tp!952073 tp!952069))))

(assert (=> b!2996432 (= tp!952036 e!1883146)))

(declare-fun b!2996851 () Bool)

(assert (=> b!2996851 (= e!1883146 tp_is_empty!16289)))

(declare-fun b!2996853 () Bool)

(declare-fun tp!952072 () Bool)

(assert (=> b!2996853 (= e!1883146 tp!952072)))

(assert (= (and b!2996432 ((_ is ElementMatch!9363) (reg!9692 (regTwo!19239 r!17423)))) b!2996851))

(assert (= (and b!2996432 ((_ is Concat!14684) (reg!9692 (regTwo!19239 r!17423)))) b!2996852))

(assert (= (and b!2996432 ((_ is Star!9363) (reg!9692 (regTwo!19239 r!17423)))) b!2996853))

(assert (= (and b!2996432 ((_ is Union!9363) (reg!9692 (regTwo!19239 r!17423)))) b!2996854))

(declare-fun b!2996856 () Bool)

(declare-fun e!1883147 () Bool)

(declare-fun tp!952076 () Bool)

(declare-fun tp!952075 () Bool)

(assert (=> b!2996856 (= e!1883147 (and tp!952076 tp!952075))))

(declare-fun b!2996858 () Bool)

(declare-fun tp!952078 () Bool)

(declare-fun tp!952074 () Bool)

(assert (=> b!2996858 (= e!1883147 (and tp!952078 tp!952074))))

(assert (=> b!2996427 (= tp!952030 e!1883147)))

(declare-fun b!2996855 () Bool)

(assert (=> b!2996855 (= e!1883147 tp_is_empty!16289)))

(declare-fun b!2996857 () Bool)

(declare-fun tp!952077 () Bool)

(assert (=> b!2996857 (= e!1883147 tp!952077)))

(assert (= (and b!2996427 ((_ is ElementMatch!9363) (regOne!19238 (regOne!19239 r!17423)))) b!2996855))

(assert (= (and b!2996427 ((_ is Concat!14684) (regOne!19238 (regOne!19239 r!17423)))) b!2996856))

(assert (= (and b!2996427 ((_ is Star!9363) (regOne!19238 (regOne!19239 r!17423)))) b!2996857))

(assert (= (and b!2996427 ((_ is Union!9363) (regOne!19238 (regOne!19239 r!17423)))) b!2996858))

(declare-fun b!2996860 () Bool)

(declare-fun e!1883148 () Bool)

(declare-fun tp!952081 () Bool)

(declare-fun tp!952080 () Bool)

(assert (=> b!2996860 (= e!1883148 (and tp!952081 tp!952080))))

(declare-fun b!2996862 () Bool)

(declare-fun tp!952083 () Bool)

(declare-fun tp!952079 () Bool)

(assert (=> b!2996862 (= e!1883148 (and tp!952083 tp!952079))))

(assert (=> b!2996427 (= tp!952029 e!1883148)))

(declare-fun b!2996859 () Bool)

(assert (=> b!2996859 (= e!1883148 tp_is_empty!16289)))

(declare-fun b!2996861 () Bool)

(declare-fun tp!952082 () Bool)

(assert (=> b!2996861 (= e!1883148 tp!952082)))

(assert (= (and b!2996427 ((_ is ElementMatch!9363) (regTwo!19238 (regOne!19239 r!17423)))) b!2996859))

(assert (= (and b!2996427 ((_ is Concat!14684) (regTwo!19238 (regOne!19239 r!17423)))) b!2996860))

(assert (= (and b!2996427 ((_ is Star!9363) (regTwo!19238 (regOne!19239 r!17423)))) b!2996861))

(assert (= (and b!2996427 ((_ is Union!9363) (regTwo!19238 (regOne!19239 r!17423)))) b!2996862))

(declare-fun b!2996864 () Bool)

(declare-fun e!1883155 () Bool)

(declare-fun tp!952086 () Bool)

(declare-fun tp!952085 () Bool)

(assert (=> b!2996864 (= e!1883155 (and tp!952086 tp!952085))))

(declare-fun b!2996866 () Bool)

(declare-fun tp!952088 () Bool)

(declare-fun tp!952084 () Bool)

(assert (=> b!2996866 (= e!1883155 (and tp!952088 tp!952084))))

(assert (=> b!2996431 (= tp!952035 e!1883155)))

(declare-fun b!2996863 () Bool)

(assert (=> b!2996863 (= e!1883155 tp_is_empty!16289)))

(declare-fun b!2996865 () Bool)

(declare-fun tp!952087 () Bool)

(assert (=> b!2996865 (= e!1883155 tp!952087)))

(assert (= (and b!2996431 ((_ is ElementMatch!9363) (regOne!19238 (regTwo!19239 r!17423)))) b!2996863))

(assert (= (and b!2996431 ((_ is Concat!14684) (regOne!19238 (regTwo!19239 r!17423)))) b!2996864))

(assert (= (and b!2996431 ((_ is Star!9363) (regOne!19238 (regTwo!19239 r!17423)))) b!2996865))

(assert (= (and b!2996431 ((_ is Union!9363) (regOne!19238 (regTwo!19239 r!17423)))) b!2996866))

(declare-fun b!2996893 () Bool)

(declare-fun e!1883164 () Bool)

(declare-fun tp!952091 () Bool)

(declare-fun tp!952090 () Bool)

(assert (=> b!2996893 (= e!1883164 (and tp!952091 tp!952090))))

(declare-fun b!2996895 () Bool)

(declare-fun tp!952093 () Bool)

(declare-fun tp!952089 () Bool)

(assert (=> b!2996895 (= e!1883164 (and tp!952093 tp!952089))))

(assert (=> b!2996431 (= tp!952034 e!1883164)))

(declare-fun b!2996892 () Bool)

(assert (=> b!2996892 (= e!1883164 tp_is_empty!16289)))

(declare-fun b!2996894 () Bool)

(declare-fun tp!952092 () Bool)

(assert (=> b!2996894 (= e!1883164 tp!952092)))

(assert (= (and b!2996431 ((_ is ElementMatch!9363) (regTwo!19238 (regTwo!19239 r!17423)))) b!2996892))

(assert (= (and b!2996431 ((_ is Concat!14684) (regTwo!19238 (regTwo!19239 r!17423)))) b!2996893))

(assert (= (and b!2996431 ((_ is Star!9363) (regTwo!19238 (regTwo!19239 r!17423)))) b!2996894))

(assert (= (and b!2996431 ((_ is Union!9363) (regTwo!19238 (regTwo!19239 r!17423)))) b!2996895))

(declare-fun b!2996897 () Bool)

(declare-fun e!1883165 () Bool)

(declare-fun tp!952096 () Bool)

(declare-fun tp!952095 () Bool)

(assert (=> b!2996897 (= e!1883165 (and tp!952096 tp!952095))))

(declare-fun b!2996899 () Bool)

(declare-fun tp!952098 () Bool)

(declare-fun tp!952094 () Bool)

(assert (=> b!2996899 (= e!1883165 (and tp!952098 tp!952094))))

(assert (=> b!2996412 (= tp!952014 e!1883165)))

(declare-fun b!2996896 () Bool)

(assert (=> b!2996896 (= e!1883165 tp_is_empty!16289)))

(declare-fun b!2996898 () Bool)

(declare-fun tp!952097 () Bool)

(assert (=> b!2996898 (= e!1883165 tp!952097)))

(assert (= (and b!2996412 ((_ is ElementMatch!9363) (regOne!19239 (reg!9692 r!17423)))) b!2996896))

(assert (= (and b!2996412 ((_ is Concat!14684) (regOne!19239 (reg!9692 r!17423)))) b!2996897))

(assert (= (and b!2996412 ((_ is Star!9363) (regOne!19239 (reg!9692 r!17423)))) b!2996898))

(assert (= (and b!2996412 ((_ is Union!9363) (regOne!19239 (reg!9692 r!17423)))) b!2996899))

(declare-fun b!2996901 () Bool)

(declare-fun e!1883166 () Bool)

(declare-fun tp!952101 () Bool)

(declare-fun tp!952100 () Bool)

(assert (=> b!2996901 (= e!1883166 (and tp!952101 tp!952100))))

(declare-fun b!2996903 () Bool)

(declare-fun tp!952103 () Bool)

(declare-fun tp!952099 () Bool)

(assert (=> b!2996903 (= e!1883166 (and tp!952103 tp!952099))))

(assert (=> b!2996412 (= tp!952010 e!1883166)))

(declare-fun b!2996900 () Bool)

(assert (=> b!2996900 (= e!1883166 tp_is_empty!16289)))

(declare-fun b!2996902 () Bool)

(declare-fun tp!952102 () Bool)

(assert (=> b!2996902 (= e!1883166 tp!952102)))

(assert (= (and b!2996412 ((_ is ElementMatch!9363) (regTwo!19239 (reg!9692 r!17423)))) b!2996900))

(assert (= (and b!2996412 ((_ is Concat!14684) (regTwo!19239 (reg!9692 r!17423)))) b!2996901))

(assert (= (and b!2996412 ((_ is Star!9363) (regTwo!19239 (reg!9692 r!17423)))) b!2996902))

(assert (= (and b!2996412 ((_ is Union!9363) (regTwo!19239 (reg!9692 r!17423)))) b!2996903))

(declare-fun b!2996905 () Bool)

(declare-fun e!1883167 () Bool)

(declare-fun tp!952106 () Bool)

(declare-fun tp!952105 () Bool)

(assert (=> b!2996905 (= e!1883167 (and tp!952106 tp!952105))))

(declare-fun b!2996907 () Bool)

(declare-fun tp!952108 () Bool)

(declare-fun tp!952104 () Bool)

(assert (=> b!2996907 (= e!1883167 (and tp!952108 tp!952104))))

(assert (=> b!2996421 (= tp!952022 e!1883167)))

(declare-fun b!2996904 () Bool)

(assert (=> b!2996904 (= e!1883167 tp_is_empty!16289)))

(declare-fun b!2996906 () Bool)

(declare-fun tp!952107 () Bool)

(assert (=> b!2996906 (= e!1883167 tp!952107)))

(assert (= (and b!2996421 ((_ is ElementMatch!9363) (regOne!19239 (regOne!19238 r!17423)))) b!2996904))

(assert (= (and b!2996421 ((_ is Concat!14684) (regOne!19239 (regOne!19238 r!17423)))) b!2996905))

(assert (= (and b!2996421 ((_ is Star!9363) (regOne!19239 (regOne!19238 r!17423)))) b!2996906))

(assert (= (and b!2996421 ((_ is Union!9363) (regOne!19239 (regOne!19238 r!17423)))) b!2996907))

(declare-fun b!2996909 () Bool)

(declare-fun e!1883168 () Bool)

(declare-fun tp!952111 () Bool)

(declare-fun tp!952110 () Bool)

(assert (=> b!2996909 (= e!1883168 (and tp!952111 tp!952110))))

(declare-fun b!2996911 () Bool)

(declare-fun tp!952113 () Bool)

(declare-fun tp!952109 () Bool)

(assert (=> b!2996911 (= e!1883168 (and tp!952113 tp!952109))))

(assert (=> b!2996421 (= tp!952018 e!1883168)))

(declare-fun b!2996908 () Bool)

(assert (=> b!2996908 (= e!1883168 tp_is_empty!16289)))

(declare-fun b!2996910 () Bool)

(declare-fun tp!952112 () Bool)

(assert (=> b!2996910 (= e!1883168 tp!952112)))

(assert (= (and b!2996421 ((_ is ElementMatch!9363) (regTwo!19239 (regOne!19238 r!17423)))) b!2996908))

(assert (= (and b!2996421 ((_ is Concat!14684) (regTwo!19239 (regOne!19238 r!17423)))) b!2996909))

(assert (= (and b!2996421 ((_ is Star!9363) (regTwo!19239 (regOne!19238 r!17423)))) b!2996910))

(assert (= (and b!2996421 ((_ is Union!9363) (regTwo!19239 (regOne!19238 r!17423)))) b!2996911))

(declare-fun b!2996913 () Bool)

(declare-fun e!1883169 () Bool)

(declare-fun tp!952116 () Bool)

(declare-fun tp!952115 () Bool)

(assert (=> b!2996913 (= e!1883169 (and tp!952116 tp!952115))))

(declare-fun b!2996915 () Bool)

(declare-fun tp!952118 () Bool)

(declare-fun tp!952114 () Bool)

(assert (=> b!2996915 (= e!1883169 (and tp!952118 tp!952114))))

(assert (=> b!2996425 (= tp!952027 e!1883169)))

(declare-fun b!2996912 () Bool)

(assert (=> b!2996912 (= e!1883169 tp_is_empty!16289)))

(declare-fun b!2996914 () Bool)

(declare-fun tp!952117 () Bool)

(assert (=> b!2996914 (= e!1883169 tp!952117)))

(assert (= (and b!2996425 ((_ is ElementMatch!9363) (regOne!19239 (regTwo!19238 r!17423)))) b!2996912))

(assert (= (and b!2996425 ((_ is Concat!14684) (regOne!19239 (regTwo!19238 r!17423)))) b!2996913))

(assert (= (and b!2996425 ((_ is Star!9363) (regOne!19239 (regTwo!19238 r!17423)))) b!2996914))

(assert (= (and b!2996425 ((_ is Union!9363) (regOne!19239 (regTwo!19238 r!17423)))) b!2996915))

(declare-fun b!2996917 () Bool)

(declare-fun e!1883170 () Bool)

(declare-fun tp!952121 () Bool)

(declare-fun tp!952120 () Bool)

(assert (=> b!2996917 (= e!1883170 (and tp!952121 tp!952120))))

(declare-fun b!2996919 () Bool)

(declare-fun tp!952123 () Bool)

(declare-fun tp!952119 () Bool)

(assert (=> b!2996919 (= e!1883170 (and tp!952123 tp!952119))))

(assert (=> b!2996425 (= tp!952023 e!1883170)))

(declare-fun b!2996916 () Bool)

(assert (=> b!2996916 (= e!1883170 tp_is_empty!16289)))

(declare-fun b!2996918 () Bool)

(declare-fun tp!952122 () Bool)

(assert (=> b!2996918 (= e!1883170 tp!952122)))

(assert (= (and b!2996425 ((_ is ElementMatch!9363) (regTwo!19239 (regTwo!19238 r!17423)))) b!2996916))

(assert (= (and b!2996425 ((_ is Concat!14684) (regTwo!19239 (regTwo!19238 r!17423)))) b!2996917))

(assert (= (and b!2996425 ((_ is Star!9363) (regTwo!19239 (regTwo!19238 r!17423)))) b!2996918))

(assert (= (and b!2996425 ((_ is Union!9363) (regTwo!19239 (regTwo!19238 r!17423)))) b!2996919))

(declare-fun b!2996921 () Bool)

(declare-fun e!1883171 () Bool)

(declare-fun tp!952126 () Bool)

(declare-fun tp!952125 () Bool)

(assert (=> b!2996921 (= e!1883171 (and tp!952126 tp!952125))))

(declare-fun b!2996923 () Bool)

(declare-fun tp!952128 () Bool)

(declare-fun tp!952124 () Bool)

(assert (=> b!2996923 (= e!1883171 (and tp!952128 tp!952124))))

(assert (=> b!2996420 (= tp!952021 e!1883171)))

(declare-fun b!2996920 () Bool)

(assert (=> b!2996920 (= e!1883171 tp_is_empty!16289)))

(declare-fun b!2996922 () Bool)

(declare-fun tp!952127 () Bool)

(assert (=> b!2996922 (= e!1883171 tp!952127)))

(assert (= (and b!2996420 ((_ is ElementMatch!9363) (reg!9692 (regOne!19238 r!17423)))) b!2996920))

(assert (= (and b!2996420 ((_ is Concat!14684) (reg!9692 (regOne!19238 r!17423)))) b!2996921))

(assert (= (and b!2996420 ((_ is Star!9363) (reg!9692 (regOne!19238 r!17423)))) b!2996922))

(assert (= (and b!2996420 ((_ is Union!9363) (reg!9692 (regOne!19238 r!17423)))) b!2996923))

(declare-fun b!2996925 () Bool)

(declare-fun e!1883172 () Bool)

(declare-fun tp!952131 () Bool)

(declare-fun tp!952130 () Bool)

(assert (=> b!2996925 (= e!1883172 (and tp!952131 tp!952130))))

(declare-fun b!2996927 () Bool)

(declare-fun tp!952133 () Bool)

(declare-fun tp!952129 () Bool)

(assert (=> b!2996927 (= e!1883172 (and tp!952133 tp!952129))))

(assert (=> b!2996429 (= tp!952032 e!1883172)))

(declare-fun b!2996924 () Bool)

(assert (=> b!2996924 (= e!1883172 tp_is_empty!16289)))

(declare-fun b!2996926 () Bool)

(declare-fun tp!952132 () Bool)

(assert (=> b!2996926 (= e!1883172 tp!952132)))

(assert (= (and b!2996429 ((_ is ElementMatch!9363) (regOne!19239 (regOne!19239 r!17423)))) b!2996924))

(assert (= (and b!2996429 ((_ is Concat!14684) (regOne!19239 (regOne!19239 r!17423)))) b!2996925))

(assert (= (and b!2996429 ((_ is Star!9363) (regOne!19239 (regOne!19239 r!17423)))) b!2996926))

(assert (= (and b!2996429 ((_ is Union!9363) (regOne!19239 (regOne!19239 r!17423)))) b!2996927))

(declare-fun b!2996929 () Bool)

(declare-fun e!1883173 () Bool)

(declare-fun tp!952136 () Bool)

(declare-fun tp!952135 () Bool)

(assert (=> b!2996929 (= e!1883173 (and tp!952136 tp!952135))))

(declare-fun b!2996931 () Bool)

(declare-fun tp!952138 () Bool)

(declare-fun tp!952134 () Bool)

(assert (=> b!2996931 (= e!1883173 (and tp!952138 tp!952134))))

(assert (=> b!2996429 (= tp!952028 e!1883173)))

(declare-fun b!2996928 () Bool)

(assert (=> b!2996928 (= e!1883173 tp_is_empty!16289)))

(declare-fun b!2996930 () Bool)

(declare-fun tp!952137 () Bool)

(assert (=> b!2996930 (= e!1883173 tp!952137)))

(assert (= (and b!2996429 ((_ is ElementMatch!9363) (regTwo!19239 (regOne!19239 r!17423)))) b!2996928))

(assert (= (and b!2996429 ((_ is Concat!14684) (regTwo!19239 (regOne!19239 r!17423)))) b!2996929))

(assert (= (and b!2996429 ((_ is Star!9363) (regTwo!19239 (regOne!19239 r!17423)))) b!2996930))

(assert (= (and b!2996429 ((_ is Union!9363) (regTwo!19239 (regOne!19239 r!17423)))) b!2996931))

(declare-fun b!2996933 () Bool)

(declare-fun e!1883174 () Bool)

(declare-fun tp!952141 () Bool)

(declare-fun tp!952140 () Bool)

(assert (=> b!2996933 (= e!1883174 (and tp!952141 tp!952140))))

(declare-fun b!2996935 () Bool)

(declare-fun tp!952143 () Bool)

(declare-fun tp!952139 () Bool)

(assert (=> b!2996935 (= e!1883174 (and tp!952143 tp!952139))))

(assert (=> b!2996424 (= tp!952026 e!1883174)))

(declare-fun b!2996932 () Bool)

(assert (=> b!2996932 (= e!1883174 tp_is_empty!16289)))

(declare-fun b!2996934 () Bool)

(declare-fun tp!952142 () Bool)

(assert (=> b!2996934 (= e!1883174 tp!952142)))

(assert (= (and b!2996424 ((_ is ElementMatch!9363) (reg!9692 (regTwo!19238 r!17423)))) b!2996932))

(assert (= (and b!2996424 ((_ is Concat!14684) (reg!9692 (regTwo!19238 r!17423)))) b!2996933))

(assert (= (and b!2996424 ((_ is Star!9363) (reg!9692 (regTwo!19238 r!17423)))) b!2996934))

(assert (= (and b!2996424 ((_ is Union!9363) (reg!9692 (regTwo!19238 r!17423)))) b!2996935))

(declare-fun b!2996937 () Bool)

(declare-fun e!1883175 () Bool)

(declare-fun tp!952146 () Bool)

(declare-fun tp!952145 () Bool)

(assert (=> b!2996937 (= e!1883175 (and tp!952146 tp!952145))))

(declare-fun b!2996939 () Bool)

(declare-fun tp!952148 () Bool)

(declare-fun tp!952144 () Bool)

(assert (=> b!2996939 (= e!1883175 (and tp!952148 tp!952144))))

(assert (=> b!2996419 (= tp!952020 e!1883175)))

(declare-fun b!2996936 () Bool)

(assert (=> b!2996936 (= e!1883175 tp_is_empty!16289)))

(declare-fun b!2996938 () Bool)

(declare-fun tp!952147 () Bool)

(assert (=> b!2996938 (= e!1883175 tp!952147)))

(assert (= (and b!2996419 ((_ is ElementMatch!9363) (regOne!19238 (regOne!19238 r!17423)))) b!2996936))

(assert (= (and b!2996419 ((_ is Concat!14684) (regOne!19238 (regOne!19238 r!17423)))) b!2996937))

(assert (= (and b!2996419 ((_ is Star!9363) (regOne!19238 (regOne!19238 r!17423)))) b!2996938))

(assert (= (and b!2996419 ((_ is Union!9363) (regOne!19238 (regOne!19238 r!17423)))) b!2996939))

(declare-fun b!2996941 () Bool)

(declare-fun e!1883176 () Bool)

(declare-fun tp!952151 () Bool)

(declare-fun tp!952150 () Bool)

(assert (=> b!2996941 (= e!1883176 (and tp!952151 tp!952150))))

(declare-fun b!2996943 () Bool)

(declare-fun tp!952153 () Bool)

(declare-fun tp!952149 () Bool)

(assert (=> b!2996943 (= e!1883176 (and tp!952153 tp!952149))))

(assert (=> b!2996419 (= tp!952019 e!1883176)))

(declare-fun b!2996940 () Bool)

(assert (=> b!2996940 (= e!1883176 tp_is_empty!16289)))

(declare-fun b!2996942 () Bool)

(declare-fun tp!952152 () Bool)

(assert (=> b!2996942 (= e!1883176 tp!952152)))

(assert (= (and b!2996419 ((_ is ElementMatch!9363) (regTwo!19238 (regOne!19238 r!17423)))) b!2996940))

(assert (= (and b!2996419 ((_ is Concat!14684) (regTwo!19238 (regOne!19238 r!17423)))) b!2996941))

(assert (= (and b!2996419 ((_ is Star!9363) (regTwo!19238 (regOne!19238 r!17423)))) b!2996942))

(assert (= (and b!2996419 ((_ is Union!9363) (regTwo!19238 (regOne!19238 r!17423)))) b!2996943))

(declare-fun b!2996945 () Bool)

(declare-fun e!1883177 () Bool)

(declare-fun tp!952156 () Bool)

(declare-fun tp!952155 () Bool)

(assert (=> b!2996945 (= e!1883177 (and tp!952156 tp!952155))))

(declare-fun b!2996947 () Bool)

(declare-fun tp!952158 () Bool)

(declare-fun tp!952154 () Bool)

(assert (=> b!2996947 (= e!1883177 (and tp!952158 tp!952154))))

(assert (=> b!2996433 (= tp!952037 e!1883177)))

(declare-fun b!2996944 () Bool)

(assert (=> b!2996944 (= e!1883177 tp_is_empty!16289)))

(declare-fun b!2996946 () Bool)

(declare-fun tp!952157 () Bool)

(assert (=> b!2996946 (= e!1883177 tp!952157)))

(assert (= (and b!2996433 ((_ is ElementMatch!9363) (regOne!19239 (regTwo!19239 r!17423)))) b!2996944))

(assert (= (and b!2996433 ((_ is Concat!14684) (regOne!19239 (regTwo!19239 r!17423)))) b!2996945))

(assert (= (and b!2996433 ((_ is Star!9363) (regOne!19239 (regTwo!19239 r!17423)))) b!2996946))

(assert (= (and b!2996433 ((_ is Union!9363) (regOne!19239 (regTwo!19239 r!17423)))) b!2996947))

(declare-fun b!2996949 () Bool)

(declare-fun e!1883178 () Bool)

(declare-fun tp!952161 () Bool)

(declare-fun tp!952160 () Bool)

(assert (=> b!2996949 (= e!1883178 (and tp!952161 tp!952160))))

(declare-fun b!2996951 () Bool)

(declare-fun tp!952163 () Bool)

(declare-fun tp!952159 () Bool)

(assert (=> b!2996951 (= e!1883178 (and tp!952163 tp!952159))))

(assert (=> b!2996433 (= tp!952033 e!1883178)))

(declare-fun b!2996948 () Bool)

(assert (=> b!2996948 (= e!1883178 tp_is_empty!16289)))

(declare-fun b!2996950 () Bool)

(declare-fun tp!952162 () Bool)

(assert (=> b!2996950 (= e!1883178 tp!952162)))

(assert (= (and b!2996433 ((_ is ElementMatch!9363) (regTwo!19239 (regTwo!19239 r!17423)))) b!2996948))

(assert (= (and b!2996433 ((_ is Concat!14684) (regTwo!19239 (regTwo!19239 r!17423)))) b!2996949))

(assert (= (and b!2996433 ((_ is Star!9363) (regTwo!19239 (regTwo!19239 r!17423)))) b!2996950))

(assert (= (and b!2996433 ((_ is Union!9363) (regTwo!19239 (regTwo!19239 r!17423)))) b!2996951))

(check-sat (not b!2996856) (not d!845549) (not b!2996911) (not b!2996860) (not b!2996672) (not bm!200912) (not b!2996451) (not b!2996905) (not d!845479) (not bm!200927) (not b!2996931) (not b!2996571) (not d!845491) (not bm!200857) (not b!2996618) (not b!2996925) (not b!2996647) (not bm!200930) (not b!2996951) (not b!2996897) (not b!2996945) (not d!845507) (not bm!200867) (not b!2996899) (not bm!200924) (not b!2996852) (not b!2996902) (not b!2996930) (not d!845553) (not b!2996909) (not bm!200879) (not b!2996577) (not b!2996706) (not bm!200923) (not bm!200840) (not b!2996907) (not b!2996844) (not b!2996935) (not b!2996862) (not b!2996922) (not b!2996837) (not bm!200926) (not b!2996586) (not b!2996633) (not b!2996853) (not b!2996574) (not bm!200852) (not bm!200892) (not d!845555) (not b!2996628) (not bm!200920) (not bm!200903) (not bm!200899) (not b!2996943) (not b!2996656) (not b!2996901) (not bm!200900) (not b!2996893) (not bm!200884) (not b!2996947) (not d!845489) (not b!2996439) (not bm!200894) (not b!2996903) (not bm!200889) (not b!2996680) (not b!2996836) (not b!2996915) (not d!845517) (not bm!200898) (not b!2996950) (not bm!200921) (not b!2996733) (not b!2996906) (not b!2996673) (not b!2996694) (not b!2996826) (not bm!200850) (not b!2996455) (not b!2996669) (not d!845525) (not bm!200886) (not bm!200929) (not b!2996913) (not b!2996917) (not b!2996761) (not b!2996942) (not b!2996561) (not d!845537) (not bm!200891) (not d!845545) (not bm!200854) (not b!2996898) (not bm!200915) (not b!2996832) (not bm!200856) (not b!2996624) (not bm!200853) (not b!2996919) (not b!2996784) (not b!2996857) (not b!2996438) (not bm!200883) (not b!2996914) (not b!2996448) (not bm!200910) (not b!2996504) (not b!2996776) (not bm!200874) (not b!2996581) (not b!2996923) (not b!2996849) (not b!2996840) (not b!2996937) (not bm!200905) (not b!2996749) (not b!2996842) (not b!2996575) (not b!2996939) (not bm!200869) (not d!845519) (not d!845523) (not b!2996946) (not b!2996675) (not b!2996456) (not d!845513) (not b!2996845) (not b!2996894) (not b!2996918) (not b!2996921) (not b!2996838) (not bm!200868) (not b!2996614) (not b!2996846) (not bm!200902) (not b!2996910) (not b!2996830) (not b!2996841) (not b!2996854) (not b!2996941) (not bm!200838) (not bm!200839) (not d!845477) (not b!2996933) (not b!2996927) (not b!2996833) (not b!2996926) (not bm!200866) (not bm!200895) (not b!2996861) (not bm!200917) (not b!2996848) (not b!2996492) (not b!2996621) (not b!2996582) (not b!2996934) tp_is_empty!16289 (not b!2996949) (not b!2996829) (not b!2996866) (not b!2996445) (not bm!200931) (not b!2996850) (not bm!200872) (not d!845501) (not b!2996549) (not d!845565) (not b!2996929) (not b!2996622) (not b!2996665) (not d!845561) (not b!2996679) (not d!845483) (not b!2996865) (not bm!200875) (not b!2996938) (not b!2996785) (not b!2996864) (not b!2996629) (not bm!200859) (not bm!200871) (not bm!200888) (not b!2996742) (not b!2996449) (not b!2996828) (not b!2996858) (not bm!200877) (not b!2996834) (not b!2996480) (not d!845541) (not bm!200881) (not bm!200897) (not b!2996895))
(check-sat)
(get-model)

(declare-fun d!845637 () Bool)

(assert (=> d!845637 (= (nullable!3026 lt!1041505) (nullableFct!860 lt!1041505))))

(declare-fun bs!528132 () Bool)

(assert (= bs!528132 d!845637))

(declare-fun m!3350517 () Bool)

(assert (=> bs!528132 m!3350517))

(assert (=> b!2996561 d!845637))

(declare-fun d!845639 () Bool)

(assert (=> d!845639 (= (nullable!3026 (ite c!492743 (reg!9692 (regOne!19238 r!17423)) (ite c!492741 (regOne!19239 (regOne!19238 r!17423)) (regTwo!19238 (regOne!19238 r!17423))))) (nullableFct!860 (ite c!492743 (reg!9692 (regOne!19238 r!17423)) (ite c!492741 (regOne!19239 (regOne!19238 r!17423)) (regTwo!19238 (regOne!19238 r!17423))))))))

(declare-fun bs!528133 () Bool)

(assert (= bs!528133 d!845639))

(declare-fun m!3350519 () Bool)

(assert (=> bs!528133 m!3350519))

(assert (=> b!2996561 d!845639))

(declare-fun b!2997260 () Bool)

(declare-fun res!1235854 () Bool)

(declare-fun e!1883343 () Bool)

(assert (=> b!2997260 (=> res!1235854 e!1883343)))

(assert (=> b!2997260 (= res!1235854 (not (isEmpty!19378 (tail!4909 (tail!4909 (tail!4909 s!11993))))))))

(declare-fun b!2997261 () Bool)

(declare-fun e!1883344 () Bool)

(declare-fun e!1883338 () Bool)

(assert (=> b!2997261 (= e!1883344 e!1883338)))

(declare-fun c!493049 () Bool)

(assert (=> b!2997261 (= c!493049 ((_ is EmptyLang!9363) (derivativeStep!2624 (derivativeStep!2624 lt!1041417 (head!6683 s!11993)) (head!6683 (tail!4909 s!11993)))))))

(declare-fun b!2997262 () Bool)

(declare-fun e!1883339 () Bool)

(declare-fun e!1883342 () Bool)

(assert (=> b!2997262 (= e!1883339 e!1883342)))

(declare-fun res!1235853 () Bool)

(assert (=> b!2997262 (=> (not res!1235853) (not e!1883342))))

(declare-fun lt!1041557 () Bool)

(assert (=> b!2997262 (= res!1235853 (not lt!1041557))))

(declare-fun b!2997263 () Bool)

(declare-fun e!1883340 () Bool)

(assert (=> b!2997263 (= e!1883340 (matchR!4245 (derivativeStep!2624 (derivativeStep!2624 (derivativeStep!2624 lt!1041417 (head!6683 s!11993)) (head!6683 (tail!4909 s!11993))) (head!6683 (tail!4909 (tail!4909 s!11993)))) (tail!4909 (tail!4909 (tail!4909 s!11993)))))))

(declare-fun b!2997264 () Bool)

(assert (=> b!2997264 (= e!1883343 (not (= (head!6683 (tail!4909 (tail!4909 s!11993))) (c!492681 (derivativeStep!2624 (derivativeStep!2624 lt!1041417 (head!6683 s!11993)) (head!6683 (tail!4909 s!11993)))))))))

(declare-fun b!2997265 () Bool)

(declare-fun res!1235855 () Bool)

(declare-fun e!1883341 () Bool)

(assert (=> b!2997265 (=> (not res!1235855) (not e!1883341))))

(declare-fun call!201009 () Bool)

(assert (=> b!2997265 (= res!1235855 (not call!201009))))

(declare-fun b!2997266 () Bool)

(assert (=> b!2997266 (= e!1883340 (nullable!3026 (derivativeStep!2624 (derivativeStep!2624 lt!1041417 (head!6683 s!11993)) (head!6683 (tail!4909 s!11993)))))))

(declare-fun b!2997268 () Bool)

(declare-fun res!1235851 () Bool)

(assert (=> b!2997268 (=> res!1235851 e!1883339)))

(assert (=> b!2997268 (= res!1235851 e!1883341)))

(declare-fun res!1235852 () Bool)

(assert (=> b!2997268 (=> (not res!1235852) (not e!1883341))))

(assert (=> b!2997268 (= res!1235852 lt!1041557)))

(declare-fun b!2997269 () Bool)

(assert (=> b!2997269 (= e!1883344 (= lt!1041557 call!201009))))

(declare-fun b!2997270 () Bool)

(declare-fun res!1235850 () Bool)

(assert (=> b!2997270 (=> (not res!1235850) (not e!1883341))))

(assert (=> b!2997270 (= res!1235850 (isEmpty!19378 (tail!4909 (tail!4909 (tail!4909 s!11993)))))))

(declare-fun d!845641 () Bool)

(assert (=> d!845641 e!1883344))

(declare-fun c!493048 () Bool)

(assert (=> d!845641 (= c!493048 ((_ is EmptyExpr!9363) (derivativeStep!2624 (derivativeStep!2624 lt!1041417 (head!6683 s!11993)) (head!6683 (tail!4909 s!11993)))))))

(assert (=> d!845641 (= lt!1041557 e!1883340)))

(declare-fun c!493050 () Bool)

(assert (=> d!845641 (= c!493050 (isEmpty!19378 (tail!4909 (tail!4909 s!11993))))))

(assert (=> d!845641 (validRegex!4096 (derivativeStep!2624 (derivativeStep!2624 lt!1041417 (head!6683 s!11993)) (head!6683 (tail!4909 s!11993))))))

(assert (=> d!845641 (= (matchR!4245 (derivativeStep!2624 (derivativeStep!2624 lt!1041417 (head!6683 s!11993)) (head!6683 (tail!4909 s!11993))) (tail!4909 (tail!4909 s!11993))) lt!1041557)))

(declare-fun b!2997267 () Bool)

(assert (=> b!2997267 (= e!1883342 e!1883343)))

(declare-fun res!1235849 () Bool)

(assert (=> b!2997267 (=> res!1235849 e!1883343)))

(assert (=> b!2997267 (= res!1235849 call!201009)))

(declare-fun b!2997271 () Bool)

(assert (=> b!2997271 (= e!1883341 (= (head!6683 (tail!4909 (tail!4909 s!11993))) (c!492681 (derivativeStep!2624 (derivativeStep!2624 lt!1041417 (head!6683 s!11993)) (head!6683 (tail!4909 s!11993))))))))

(declare-fun b!2997272 () Bool)

(assert (=> b!2997272 (= e!1883338 (not lt!1041557))))

(declare-fun bm!201004 () Bool)

(assert (=> bm!201004 (= call!201009 (isEmpty!19378 (tail!4909 (tail!4909 s!11993))))))

(declare-fun b!2997273 () Bool)

(declare-fun res!1235856 () Bool)

(assert (=> b!2997273 (=> res!1235856 e!1883339)))

(assert (=> b!2997273 (= res!1235856 (not ((_ is ElementMatch!9363) (derivativeStep!2624 (derivativeStep!2624 lt!1041417 (head!6683 s!11993)) (head!6683 (tail!4909 s!11993))))))))

(assert (=> b!2997273 (= e!1883338 e!1883339)))

(assert (= (and d!845641 c!493050) b!2997266))

(assert (= (and d!845641 (not c!493050)) b!2997263))

(assert (= (and d!845641 c!493048) b!2997269))

(assert (= (and d!845641 (not c!493048)) b!2997261))

(assert (= (and b!2997261 c!493049) b!2997272))

(assert (= (and b!2997261 (not c!493049)) b!2997273))

(assert (= (and b!2997273 (not res!1235856)) b!2997268))

(assert (= (and b!2997268 res!1235852) b!2997265))

(assert (= (and b!2997265 res!1235855) b!2997270))

(assert (= (and b!2997270 res!1235850) b!2997271))

(assert (= (and b!2997268 (not res!1235851)) b!2997262))

(assert (= (and b!2997262 res!1235853) b!2997267))

(assert (= (and b!2997267 (not res!1235849)) b!2997260))

(assert (= (and b!2997260 (not res!1235854)) b!2997264))

(assert (= (or b!2997269 b!2997265 b!2997267) bm!201004))

(assert (=> b!2997260 m!3350099))

(declare-fun m!3350521 () Bool)

(assert (=> b!2997260 m!3350521))

(assert (=> b!2997260 m!3350521))

(declare-fun m!3350523 () Bool)

(assert (=> b!2997260 m!3350523))

(assert (=> b!2997263 m!3350099))

(declare-fun m!3350525 () Bool)

(assert (=> b!2997263 m!3350525))

(assert (=> b!2997263 m!3350105))

(assert (=> b!2997263 m!3350525))

(declare-fun m!3350527 () Bool)

(assert (=> b!2997263 m!3350527))

(assert (=> b!2997263 m!3350099))

(assert (=> b!2997263 m!3350521))

(assert (=> b!2997263 m!3350527))

(assert (=> b!2997263 m!3350521))

(declare-fun m!3350529 () Bool)

(assert (=> b!2997263 m!3350529))

(assert (=> b!2997270 m!3350099))

(assert (=> b!2997270 m!3350521))

(assert (=> b!2997270 m!3350521))

(assert (=> b!2997270 m!3350523))

(assert (=> b!2997266 m!3350105))

(declare-fun m!3350531 () Bool)

(assert (=> b!2997266 m!3350531))

(assert (=> d!845641 m!3350099))

(assert (=> d!845641 m!3350101))

(assert (=> d!845641 m!3350105))

(declare-fun m!3350533 () Bool)

(assert (=> d!845641 m!3350533))

(assert (=> bm!201004 m!3350099))

(assert (=> bm!201004 m!3350101))

(assert (=> b!2997271 m!3350099))

(assert (=> b!2997271 m!3350525))

(assert (=> b!2997264 m!3350099))

(assert (=> b!2997264 m!3350525))

(assert (=> b!2996448 d!845641))

(declare-fun b!2997274 () Bool)

(declare-fun e!1883346 () Regex!9363)

(declare-fun e!1883347 () Regex!9363)

(assert (=> b!2997274 (= e!1883346 e!1883347)))

(declare-fun c!493055 () Bool)

(assert (=> b!2997274 (= c!493055 ((_ is ElementMatch!9363) (derivativeStep!2624 lt!1041417 (head!6683 s!11993))))))

(declare-fun b!2997275 () Bool)

(declare-fun c!493052 () Bool)

(assert (=> b!2997275 (= c!493052 (nullable!3026 (regOne!19238 (derivativeStep!2624 lt!1041417 (head!6683 s!11993)))))))

(declare-fun e!1883348 () Regex!9363)

(declare-fun e!1883349 () Regex!9363)

(assert (=> b!2997275 (= e!1883348 e!1883349)))

(declare-fun b!2997276 () Bool)

(assert (=> b!2997276 (= e!1883346 EmptyLang!9363)))

(declare-fun b!2997277 () Bool)

(declare-fun call!201013 () Regex!9363)

(assert (=> b!2997277 (= e!1883349 (Union!9363 (Concat!14684 call!201013 (regTwo!19238 (derivativeStep!2624 lt!1041417 (head!6683 s!11993)))) EmptyLang!9363))))

(declare-fun call!201011 () Regex!9363)

(declare-fun b!2997278 () Bool)

(assert (=> b!2997278 (= e!1883348 (Concat!14684 call!201011 (derivativeStep!2624 lt!1041417 (head!6683 s!11993))))))

(declare-fun b!2997279 () Bool)

(declare-fun c!493054 () Bool)

(assert (=> b!2997279 (= c!493054 ((_ is Union!9363) (derivativeStep!2624 lt!1041417 (head!6683 s!11993))))))

(declare-fun e!1883345 () Regex!9363)

(assert (=> b!2997279 (= e!1883347 e!1883345)))

(declare-fun call!201010 () Regex!9363)

(declare-fun c!493053 () Bool)

(declare-fun bm!201006 () Bool)

(assert (=> bm!201006 (= call!201010 (derivativeStep!2624 (ite c!493054 (regTwo!19239 (derivativeStep!2624 lt!1041417 (head!6683 s!11993))) (ite c!493053 (reg!9692 (derivativeStep!2624 lt!1041417 (head!6683 s!11993))) (regOne!19238 (derivativeStep!2624 lt!1041417 (head!6683 s!11993))))) (head!6683 (tail!4909 s!11993))))))

(declare-fun bm!201007 () Bool)

(assert (=> bm!201007 (= call!201013 call!201011)))

(declare-fun b!2997280 () Bool)

(assert (=> b!2997280 (= e!1883347 (ite (= (head!6683 (tail!4909 s!11993)) (c!492681 (derivativeStep!2624 lt!1041417 (head!6683 s!11993)))) EmptyExpr!9363 EmptyLang!9363))))

(declare-fun call!201012 () Regex!9363)

(declare-fun bm!201008 () Bool)

(assert (=> bm!201008 (= call!201012 (derivativeStep!2624 (ite c!493054 (regOne!19239 (derivativeStep!2624 lt!1041417 (head!6683 s!11993))) (regTwo!19238 (derivativeStep!2624 lt!1041417 (head!6683 s!11993)))) (head!6683 (tail!4909 s!11993))))))

(declare-fun b!2997281 () Bool)

(assert (=> b!2997281 (= e!1883349 (Union!9363 (Concat!14684 call!201013 (regTwo!19238 (derivativeStep!2624 lt!1041417 (head!6683 s!11993)))) call!201012))))

(declare-fun d!845643 () Bool)

(declare-fun lt!1041558 () Regex!9363)

(assert (=> d!845643 (validRegex!4096 lt!1041558)))

(assert (=> d!845643 (= lt!1041558 e!1883346)))

(declare-fun c!493051 () Bool)

(assert (=> d!845643 (= c!493051 (or ((_ is EmptyExpr!9363) (derivativeStep!2624 lt!1041417 (head!6683 s!11993))) ((_ is EmptyLang!9363) (derivativeStep!2624 lt!1041417 (head!6683 s!11993)))))))

(assert (=> d!845643 (validRegex!4096 (derivativeStep!2624 lt!1041417 (head!6683 s!11993)))))

(assert (=> d!845643 (= (derivativeStep!2624 (derivativeStep!2624 lt!1041417 (head!6683 s!11993)) (head!6683 (tail!4909 s!11993))) lt!1041558)))

(declare-fun bm!201005 () Bool)

(assert (=> bm!201005 (= call!201011 call!201010)))

(declare-fun b!2997282 () Bool)

(assert (=> b!2997282 (= e!1883345 e!1883348)))

(assert (=> b!2997282 (= c!493053 ((_ is Star!9363) (derivativeStep!2624 lt!1041417 (head!6683 s!11993))))))

(declare-fun b!2997283 () Bool)

(assert (=> b!2997283 (= e!1883345 (Union!9363 call!201012 call!201010))))

(assert (= (and d!845643 c!493051) b!2997276))

(assert (= (and d!845643 (not c!493051)) b!2997274))

(assert (= (and b!2997274 c!493055) b!2997280))

(assert (= (and b!2997274 (not c!493055)) b!2997279))

(assert (= (and b!2997279 c!493054) b!2997283))

(assert (= (and b!2997279 (not c!493054)) b!2997282))

(assert (= (and b!2997282 c!493053) b!2997278))

(assert (= (and b!2997282 (not c!493053)) b!2997275))

(assert (= (and b!2997275 c!493052) b!2997281))

(assert (= (and b!2997275 (not c!493052)) b!2997277))

(assert (= (or b!2997281 b!2997277) bm!201007))

(assert (= (or b!2997278 bm!201007) bm!201005))

(assert (= (or b!2997283 bm!201005) bm!201006))

(assert (= (or b!2997283 b!2997281) bm!201008))

(declare-fun m!3350535 () Bool)

(assert (=> b!2997275 m!3350535))

(assert (=> bm!201006 m!3350103))

(declare-fun m!3350537 () Bool)

(assert (=> bm!201006 m!3350537))

(assert (=> bm!201008 m!3350103))

(declare-fun m!3350539 () Bool)

(assert (=> bm!201008 m!3350539))

(declare-fun m!3350541 () Bool)

(assert (=> d!845643 m!3350541))

(assert (=> d!845643 m!3350007))

(assert (=> d!845643 m!3350111))

(assert (=> b!2996448 d!845643))

(declare-fun d!845645 () Bool)

(assert (=> d!845645 (= (head!6683 (tail!4909 s!11993)) (h!40524 (tail!4909 s!11993)))))

(assert (=> b!2996448 d!845645))

(declare-fun d!845647 () Bool)

(assert (=> d!845647 (= (tail!4909 (tail!4909 s!11993)) (t!234293 (tail!4909 s!11993)))))

(assert (=> b!2996448 d!845647))

(declare-fun d!845649 () Bool)

(assert (=> d!845649 (= (nullable!3026 (derivativeStep!2624 (regTwo!19238 r!17423) (head!6683 s!11993))) (nullableFct!860 (derivativeStep!2624 (regTwo!19238 r!17423) (head!6683 s!11993))))))

(declare-fun bs!528134 () Bool)

(assert (= bs!528134 d!845649))

(assert (=> bs!528134 m!3350015))

(declare-fun m!3350543 () Bool)

(assert (=> bs!528134 m!3350543))

(assert (=> b!2996577 d!845649))

(declare-fun b!2997284 () Bool)

(declare-fun e!1883352 () Bool)

(declare-fun e!1883353 () Bool)

(assert (=> b!2997284 (= e!1883352 e!1883353)))

(declare-fun res!1235860 () Bool)

(declare-fun call!201014 () Bool)

(assert (=> b!2997284 (= res!1235860 call!201014)))

(assert (=> b!2997284 (=> res!1235860 e!1883353)))

(declare-fun b!2997285 () Bool)

(declare-fun e!1883354 () Bool)

(assert (=> b!2997285 (= e!1883352 e!1883354)))

(declare-fun res!1235857 () Bool)

(assert (=> b!2997285 (= res!1235857 call!201014)))

(assert (=> b!2997285 (=> (not res!1235857) (not e!1883354))))

(declare-fun bm!201009 () Bool)

(declare-fun call!201015 () Bool)

(declare-fun c!493056 () Bool)

(assert (=> bm!201009 (= call!201015 (nullable!3026 (ite c!493056 (regTwo!19239 (reg!9692 r!17423)) (regTwo!19238 (reg!9692 r!17423)))))))

(declare-fun b!2997286 () Bool)

(declare-fun e!1883351 () Bool)

(declare-fun e!1883355 () Bool)

(assert (=> b!2997286 (= e!1883351 e!1883355)))

(declare-fun res!1235859 () Bool)

(assert (=> b!2997286 (=> res!1235859 e!1883355)))

(assert (=> b!2997286 (= res!1235859 ((_ is Star!9363) (reg!9692 r!17423)))))

(declare-fun b!2997287 () Bool)

(assert (=> b!2997287 (= e!1883353 call!201015)))

(declare-fun d!845651 () Bool)

(declare-fun res!1235858 () Bool)

(declare-fun e!1883350 () Bool)

(assert (=> d!845651 (=> res!1235858 e!1883350)))

(assert (=> d!845651 (= res!1235858 ((_ is EmptyExpr!9363) (reg!9692 r!17423)))))

(assert (=> d!845651 (= (nullableFct!860 (reg!9692 r!17423)) e!1883350)))

(declare-fun bm!201010 () Bool)

(assert (=> bm!201010 (= call!201014 (nullable!3026 (ite c!493056 (regOne!19239 (reg!9692 r!17423)) (regOne!19238 (reg!9692 r!17423)))))))

(declare-fun b!2997288 () Bool)

(assert (=> b!2997288 (= e!1883355 e!1883352)))

(assert (=> b!2997288 (= c!493056 ((_ is Union!9363) (reg!9692 r!17423)))))

(declare-fun b!2997289 () Bool)

(assert (=> b!2997289 (= e!1883350 e!1883351)))

(declare-fun res!1235861 () Bool)

(assert (=> b!2997289 (=> (not res!1235861) (not e!1883351))))

(assert (=> b!2997289 (= res!1235861 (and (not ((_ is EmptyLang!9363) (reg!9692 r!17423))) (not ((_ is ElementMatch!9363) (reg!9692 r!17423)))))))

(declare-fun b!2997290 () Bool)

(assert (=> b!2997290 (= e!1883354 call!201015)))

(assert (= (and d!845651 (not res!1235858)) b!2997289))

(assert (= (and b!2997289 res!1235861) b!2997286))

(assert (= (and b!2997286 (not res!1235859)) b!2997288))

(assert (= (and b!2997288 c!493056) b!2997284))

(assert (= (and b!2997288 (not c!493056)) b!2997285))

(assert (= (and b!2997284 (not res!1235860)) b!2997287))

(assert (= (and b!2997285 res!1235857) b!2997290))

(assert (= (or b!2997287 b!2997290) bm!201009))

(assert (= (or b!2997284 b!2997285) bm!201010))

(declare-fun m!3350545 () Bool)

(assert (=> bm!201009 m!3350545))

(declare-fun m!3350547 () Bool)

(assert (=> bm!201010 m!3350547))

(assert (=> d!845525 d!845651))

(declare-fun d!845653 () Bool)

(assert (=> d!845653 (= (isEmptyLang!453 (ite c!492919 lt!1041517 lt!1041515)) ((_ is EmptyLang!9363) (ite c!492919 lt!1041517 lt!1041515)))))

(assert (=> bm!200900 d!845653))

(declare-fun b!2997291 () Bool)

(declare-fun e!1883357 () Regex!9363)

(declare-fun e!1883358 () Regex!9363)

(assert (=> b!2997291 (= e!1883357 e!1883358)))

(declare-fun c!493061 () Bool)

(assert (=> b!2997291 (= c!493061 ((_ is ElementMatch!9363) (ite c!492906 (regTwo!19239 r!17423) (ite c!492905 (reg!9692 r!17423) (regOne!19238 r!17423)))))))

(declare-fun c!493058 () Bool)

(declare-fun b!2997292 () Bool)

(assert (=> b!2997292 (= c!493058 (nullable!3026 (regOne!19238 (ite c!492906 (regTwo!19239 r!17423) (ite c!492905 (reg!9692 r!17423) (regOne!19238 r!17423))))))))

(declare-fun e!1883359 () Regex!9363)

(declare-fun e!1883360 () Regex!9363)

(assert (=> b!2997292 (= e!1883359 e!1883360)))

(declare-fun b!2997293 () Bool)

(assert (=> b!2997293 (= e!1883357 EmptyLang!9363)))

(declare-fun call!201019 () Regex!9363)

(declare-fun b!2997294 () Bool)

(assert (=> b!2997294 (= e!1883360 (Union!9363 (Concat!14684 call!201019 (regTwo!19238 (ite c!492906 (regTwo!19239 r!17423) (ite c!492905 (reg!9692 r!17423) (regOne!19238 r!17423))))) EmptyLang!9363))))

(declare-fun b!2997295 () Bool)

(declare-fun call!201017 () Regex!9363)

(assert (=> b!2997295 (= e!1883359 (Concat!14684 call!201017 (ite c!492906 (regTwo!19239 r!17423) (ite c!492905 (reg!9692 r!17423) (regOne!19238 r!17423)))))))

(declare-fun c!493060 () Bool)

(declare-fun b!2997296 () Bool)

(assert (=> b!2997296 (= c!493060 ((_ is Union!9363) (ite c!492906 (regTwo!19239 r!17423) (ite c!492905 (reg!9692 r!17423) (regOne!19238 r!17423)))))))

(declare-fun e!1883356 () Regex!9363)

(assert (=> b!2997296 (= e!1883358 e!1883356)))

(declare-fun bm!201012 () Bool)

(declare-fun c!493059 () Bool)

(declare-fun call!201016 () Regex!9363)

(assert (=> bm!201012 (= call!201016 (derivativeStep!2624 (ite c!493060 (regTwo!19239 (ite c!492906 (regTwo!19239 r!17423) (ite c!492905 (reg!9692 r!17423) (regOne!19238 r!17423)))) (ite c!493059 (reg!9692 (ite c!492906 (regTwo!19239 r!17423) (ite c!492905 (reg!9692 r!17423) (regOne!19238 r!17423)))) (regOne!19238 (ite c!492906 (regTwo!19239 r!17423) (ite c!492905 (reg!9692 r!17423) (regOne!19238 r!17423)))))) (head!6683 s!11993)))))

(declare-fun bm!201013 () Bool)

(assert (=> bm!201013 (= call!201019 call!201017)))

(declare-fun b!2997297 () Bool)

(assert (=> b!2997297 (= e!1883358 (ite (= (head!6683 s!11993) (c!492681 (ite c!492906 (regTwo!19239 r!17423) (ite c!492905 (reg!9692 r!17423) (regOne!19238 r!17423))))) EmptyExpr!9363 EmptyLang!9363))))

(declare-fun bm!201014 () Bool)

(declare-fun call!201018 () Regex!9363)

(assert (=> bm!201014 (= call!201018 (derivativeStep!2624 (ite c!493060 (regOne!19239 (ite c!492906 (regTwo!19239 r!17423) (ite c!492905 (reg!9692 r!17423) (regOne!19238 r!17423)))) (regTwo!19238 (ite c!492906 (regTwo!19239 r!17423) (ite c!492905 (reg!9692 r!17423) (regOne!19238 r!17423))))) (head!6683 s!11993)))))

(declare-fun b!2997298 () Bool)

(assert (=> b!2997298 (= e!1883360 (Union!9363 (Concat!14684 call!201019 (regTwo!19238 (ite c!492906 (regTwo!19239 r!17423) (ite c!492905 (reg!9692 r!17423) (regOne!19238 r!17423))))) call!201018))))

(declare-fun d!845655 () Bool)

(declare-fun lt!1041559 () Regex!9363)

(assert (=> d!845655 (validRegex!4096 lt!1041559)))

(assert (=> d!845655 (= lt!1041559 e!1883357)))

(declare-fun c!493057 () Bool)

(assert (=> d!845655 (= c!493057 (or ((_ is EmptyExpr!9363) (ite c!492906 (regTwo!19239 r!17423) (ite c!492905 (reg!9692 r!17423) (regOne!19238 r!17423)))) ((_ is EmptyLang!9363) (ite c!492906 (regTwo!19239 r!17423) (ite c!492905 (reg!9692 r!17423) (regOne!19238 r!17423))))))))

(assert (=> d!845655 (validRegex!4096 (ite c!492906 (regTwo!19239 r!17423) (ite c!492905 (reg!9692 r!17423) (regOne!19238 r!17423))))))

(assert (=> d!845655 (= (derivativeStep!2624 (ite c!492906 (regTwo!19239 r!17423) (ite c!492905 (reg!9692 r!17423) (regOne!19238 r!17423))) (head!6683 s!11993)) lt!1041559)))

(declare-fun bm!201011 () Bool)

(assert (=> bm!201011 (= call!201017 call!201016)))

(declare-fun b!2997299 () Bool)

(assert (=> b!2997299 (= e!1883356 e!1883359)))

(assert (=> b!2997299 (= c!493059 ((_ is Star!9363) (ite c!492906 (regTwo!19239 r!17423) (ite c!492905 (reg!9692 r!17423) (regOne!19238 r!17423)))))))

(declare-fun b!2997300 () Bool)

(assert (=> b!2997300 (= e!1883356 (Union!9363 call!201018 call!201016))))

(assert (= (and d!845655 c!493057) b!2997293))

(assert (= (and d!845655 (not c!493057)) b!2997291))

(assert (= (and b!2997291 c!493061) b!2997297))

(assert (= (and b!2997291 (not c!493061)) b!2997296))

(assert (= (and b!2997296 c!493060) b!2997300))

(assert (= (and b!2997296 (not c!493060)) b!2997299))

(assert (= (and b!2997299 c!493059) b!2997295))

(assert (= (and b!2997299 (not c!493059)) b!2997292))

(assert (= (and b!2997292 c!493058) b!2997298))

(assert (= (and b!2997292 (not c!493058)) b!2997294))

(assert (= (or b!2997298 b!2997294) bm!201013))

(assert (= (or b!2997295 bm!201013) bm!201011))

(assert (= (or b!2997300 bm!201011) bm!201012))

(assert (= (or b!2997300 b!2997298) bm!201014))

(declare-fun m!3350549 () Bool)

(assert (=> b!2997292 m!3350549))

(assert (=> bm!201012 m!3350005))

(declare-fun m!3350551 () Bool)

(assert (=> bm!201012 m!3350551))

(assert (=> bm!201014 m!3350005))

(declare-fun m!3350553 () Bool)

(assert (=> bm!201014 m!3350553))

(declare-fun m!3350555 () Bool)

(assert (=> d!845655 m!3350555))

(declare-fun m!3350557 () Bool)

(assert (=> d!845655 m!3350557))

(assert (=> bm!200886 d!845655))

(declare-fun d!845657 () Bool)

(assert (=> d!845657 (= (nullable!3026 lt!1041525) (nullableFct!860 lt!1041525))))

(declare-fun bs!528135 () Bool)

(assert (= bs!528135 d!845657))

(declare-fun m!3350559 () Bool)

(assert (=> bs!528135 m!3350559))

(assert (=> b!2996761 d!845657))

(declare-fun d!845659 () Bool)

(assert (=> d!845659 (= (nullable!3026 (ite c!492732 (reg!9692 (regTwo!19238 r!17423)) (ite c!492730 (regOne!19239 (regTwo!19238 r!17423)) (regTwo!19238 (regTwo!19238 r!17423))))) (nullableFct!860 (ite c!492732 (reg!9692 (regTwo!19238 r!17423)) (ite c!492730 (regOne!19239 (regTwo!19238 r!17423)) (regTwo!19238 (regTwo!19238 r!17423))))))))

(declare-fun bs!528136 () Bool)

(assert (= bs!528136 d!845659))

(declare-fun m!3350561 () Bool)

(assert (=> bs!528136 m!3350561))

(assert (=> b!2996761 d!845659))

(declare-fun b!2997301 () Bool)

(declare-fun e!1883365 () Bool)

(declare-fun call!201022 () Bool)

(assert (=> b!2997301 (= e!1883365 call!201022)))

(declare-fun b!2997302 () Bool)

(declare-fun e!1883363 () Bool)

(declare-fun call!201020 () Bool)

(assert (=> b!2997302 (= e!1883363 call!201020)))

(declare-fun c!493062 () Bool)

(declare-fun c!493063 () Bool)

(declare-fun bm!201015 () Bool)

(assert (=> bm!201015 (= call!201022 (validRegex!4096 (ite c!493063 (reg!9692 (ite c!492912 (regTwo!19239 (regTwo!19238 r!17423)) (regOne!19238 (regTwo!19238 r!17423)))) (ite c!493062 (regOne!19239 (ite c!492912 (regTwo!19239 (regTwo!19238 r!17423)) (regOne!19238 (regTwo!19238 r!17423)))) (regTwo!19238 (ite c!492912 (regTwo!19239 (regTwo!19238 r!17423)) (regOne!19238 (regTwo!19238 r!17423))))))))))

(declare-fun b!2997304 () Bool)

(declare-fun e!1883366 () Bool)

(declare-fun call!201021 () Bool)

(assert (=> b!2997304 (= e!1883366 call!201021)))

(declare-fun bm!201016 () Bool)

(assert (=> bm!201016 (= call!201021 call!201022)))

(declare-fun b!2997305 () Bool)

(declare-fun e!1883362 () Bool)

(declare-fun e!1883361 () Bool)

(assert (=> b!2997305 (= e!1883362 e!1883361)))

(assert (=> b!2997305 (= c!493062 ((_ is Union!9363) (ite c!492912 (regTwo!19239 (regTwo!19238 r!17423)) (regOne!19238 (regTwo!19238 r!17423)))))))

(declare-fun b!2997306 () Bool)

(assert (=> b!2997306 (= e!1883362 e!1883365)))

(declare-fun res!1235865 () Bool)

(assert (=> b!2997306 (= res!1235865 (not (nullable!3026 (reg!9692 (ite c!492912 (regTwo!19239 (regTwo!19238 r!17423)) (regOne!19238 (regTwo!19238 r!17423)))))))))

(assert (=> b!2997306 (=> (not res!1235865) (not e!1883365))))

(declare-fun b!2997307 () Bool)

(declare-fun res!1235862 () Bool)

(declare-fun e!1883364 () Bool)

(assert (=> b!2997307 (=> res!1235862 e!1883364)))

(assert (=> b!2997307 (= res!1235862 (not ((_ is Concat!14684) (ite c!492912 (regTwo!19239 (regTwo!19238 r!17423)) (regOne!19238 (regTwo!19238 r!17423))))))))

(assert (=> b!2997307 (= e!1883361 e!1883364)))

(declare-fun b!2997308 () Bool)

(assert (=> b!2997308 (= e!1883364 e!1883366)))

(declare-fun res!1235863 () Bool)

(assert (=> b!2997308 (=> (not res!1235863) (not e!1883366))))

(assert (=> b!2997308 (= res!1235863 call!201020)))

(declare-fun bm!201017 () Bool)

(assert (=> bm!201017 (= call!201020 (validRegex!4096 (ite c!493062 (regTwo!19239 (ite c!492912 (regTwo!19239 (regTwo!19238 r!17423)) (regOne!19238 (regTwo!19238 r!17423)))) (regOne!19238 (ite c!492912 (regTwo!19239 (regTwo!19238 r!17423)) (regOne!19238 (regTwo!19238 r!17423)))))))))

(declare-fun b!2997309 () Bool)

(declare-fun e!1883367 () Bool)

(assert (=> b!2997309 (= e!1883367 e!1883362)))

(assert (=> b!2997309 (= c!493063 ((_ is Star!9363) (ite c!492912 (regTwo!19239 (regTwo!19238 r!17423)) (regOne!19238 (regTwo!19238 r!17423)))))))

(declare-fun d!845661 () Bool)

(declare-fun res!1235864 () Bool)

(assert (=> d!845661 (=> res!1235864 e!1883367)))

(assert (=> d!845661 (= res!1235864 ((_ is ElementMatch!9363) (ite c!492912 (regTwo!19239 (regTwo!19238 r!17423)) (regOne!19238 (regTwo!19238 r!17423)))))))

(assert (=> d!845661 (= (validRegex!4096 (ite c!492912 (regTwo!19239 (regTwo!19238 r!17423)) (regOne!19238 (regTwo!19238 r!17423)))) e!1883367)))

(declare-fun b!2997303 () Bool)

(declare-fun res!1235866 () Bool)

(assert (=> b!2997303 (=> (not res!1235866) (not e!1883363))))

(assert (=> b!2997303 (= res!1235866 call!201021)))

(assert (=> b!2997303 (= e!1883361 e!1883363)))

(assert (= (and d!845661 (not res!1235864)) b!2997309))

(assert (= (and b!2997309 c!493063) b!2997306))

(assert (= (and b!2997309 (not c!493063)) b!2997305))

(assert (= (and b!2997306 res!1235865) b!2997301))

(assert (= (and b!2997305 c!493062) b!2997303))

(assert (= (and b!2997305 (not c!493062)) b!2997307))

(assert (= (and b!2997303 res!1235866) b!2997302))

(assert (= (and b!2997307 (not res!1235862)) b!2997308))

(assert (= (and b!2997308 res!1235863) b!2997304))

(assert (= (or b!2997303 b!2997304) bm!201016))

(assert (= (or b!2997302 b!2997308) bm!201017))

(assert (= (or b!2997301 bm!201016) bm!201015))

(declare-fun m!3350563 () Bool)

(assert (=> bm!201015 m!3350563))

(declare-fun m!3350565 () Bool)

(assert (=> b!2997306 m!3350565))

(declare-fun m!3350567 () Bool)

(assert (=> bm!201017 m!3350567))

(assert (=> bm!200897 d!845661))

(declare-fun b!2997310 () Bool)

(declare-fun e!1883375 () Regex!9363)

(declare-fun lt!1041562 () Regex!9363)

(assert (=> b!2997310 (= e!1883375 lt!1041562)))

(declare-fun call!201024 () Regex!9363)

(declare-fun bm!201018 () Bool)

(declare-fun c!493064 () Bool)

(declare-fun c!493066 () Bool)

(assert (=> bm!201018 (= call!201024 (simplify!354 (ite c!493066 (reg!9692 (ite c!492860 (reg!9692 (ite c!492730 (regTwo!19239 (regTwo!19238 r!17423)) (regOne!19238 (regTwo!19238 r!17423)))) (ite c!492858 (regOne!19239 (ite c!492730 (regTwo!19239 (regTwo!19238 r!17423)) (regOne!19238 (regTwo!19238 r!17423)))) (regTwo!19238 (ite c!492730 (regTwo!19239 (regTwo!19238 r!17423)) (regOne!19238 (regTwo!19238 r!17423))))))) (ite c!493064 (regOne!19239 (ite c!492860 (reg!9692 (ite c!492730 (regTwo!19239 (regTwo!19238 r!17423)) (regOne!19238 (regTwo!19238 r!17423)))) (ite c!492858 (regOne!19239 (ite c!492730 (regTwo!19239 (regTwo!19238 r!17423)) (regOne!19238 (regTwo!19238 r!17423)))) (regTwo!19238 (ite c!492730 (regTwo!19239 (regTwo!19238 r!17423)) (regOne!19238 (regTwo!19238 r!17423))))))) (regTwo!19238 (ite c!492860 (reg!9692 (ite c!492730 (regTwo!19239 (regTwo!19238 r!17423)) (regOne!19238 (regTwo!19238 r!17423)))) (ite c!492858 (regOne!19239 (ite c!492730 (regTwo!19239 (regTwo!19238 r!17423)) (regOne!19238 (regTwo!19238 r!17423)))) (regTwo!19238 (ite c!492730 (regTwo!19239 (regTwo!19238 r!17423)) (regOne!19238 (regTwo!19238 r!17423)))))))))))))

(declare-fun b!2997312 () Bool)

(declare-fun e!1883376 () Regex!9363)

(declare-fun lt!1041561 () Regex!9363)

(assert (=> b!2997312 (= e!1883376 (Star!9363 lt!1041561))))

(declare-fun b!2997313 () Bool)

(declare-fun c!493068 () Bool)

(declare-fun lt!1041560 () Regex!9363)

(assert (=> b!2997313 (= c!493068 (isEmptyExpr!470 lt!1041560))))

(declare-fun e!1883373 () Regex!9363)

(declare-fun e!1883377 () Regex!9363)

(assert (=> b!2997313 (= e!1883373 e!1883377)))

(declare-fun b!2997314 () Bool)

(declare-fun e!1883369 () Regex!9363)

(assert (=> b!2997314 (= e!1883369 (ite c!492860 (reg!9692 (ite c!492730 (regTwo!19239 (regTwo!19238 r!17423)) (regOne!19238 (regTwo!19238 r!17423)))) (ite c!492858 (regOne!19239 (ite c!492730 (regTwo!19239 (regTwo!19238 r!17423)) (regOne!19238 (regTwo!19238 r!17423)))) (regTwo!19238 (ite c!492730 (regTwo!19239 (regTwo!19238 r!17423)) (regOne!19238 (regTwo!19238 r!17423)))))))))

(declare-fun call!201026 () Bool)

(declare-fun bm!201019 () Bool)

(assert (=> bm!201019 (= call!201026 (isEmptyLang!453 (ite c!493064 lt!1041562 lt!1041560)))))

(declare-fun bm!201020 () Bool)

(declare-fun call!201029 () Bool)

(declare-fun call!201025 () Bool)

(assert (=> bm!201020 (= call!201029 call!201025)))

(declare-fun bm!201021 () Bool)

(declare-fun lt!1041565 () Regex!9363)

(declare-fun lt!1041563 () Regex!9363)

(assert (=> bm!201021 (= call!201025 (isEmptyLang!453 (ite c!493066 lt!1041561 (ite c!493064 lt!1041565 lt!1041563))))))

(declare-fun b!2997315 () Bool)

(assert (=> b!2997315 (= c!493064 ((_ is Union!9363) (ite c!492860 (reg!9692 (ite c!492730 (regTwo!19239 (regTwo!19238 r!17423)) (regOne!19238 (regTwo!19238 r!17423)))) (ite c!492858 (regOne!19239 (ite c!492730 (regTwo!19239 (regTwo!19238 r!17423)) (regOne!19238 (regTwo!19238 r!17423)))) (regTwo!19238 (ite c!492730 (regTwo!19239 (regTwo!19238 r!17423)) (regOne!19238 (regTwo!19238 r!17423))))))))))

(declare-fun e!1883380 () Regex!9363)

(declare-fun e!1883368 () Regex!9363)

(assert (=> b!2997315 (= e!1883380 e!1883368)))

(declare-fun b!2997316 () Bool)

(declare-fun e!1883372 () Regex!9363)

(assert (=> b!2997316 (= e!1883372 (Concat!14684 lt!1041560 lt!1041563))))

(declare-fun b!2997317 () Bool)

(assert (=> b!2997317 (= e!1883375 (Union!9363 lt!1041562 lt!1041565))))

(declare-fun b!2997318 () Bool)

(declare-fun c!493067 () Bool)

(assert (=> b!2997318 (= c!493067 call!201029)))

(declare-fun e!1883381 () Regex!9363)

(assert (=> b!2997318 (= e!1883381 e!1883375)))

(declare-fun b!2997319 () Bool)

(assert (=> b!2997319 (= e!1883373 EmptyLang!9363)))

(declare-fun b!2997320 () Bool)

(assert (=> b!2997320 (= e!1883377 lt!1041563)))

(declare-fun b!2997321 () Bool)

(assert (=> b!2997321 (= e!1883377 e!1883372)))

(declare-fun c!493074 () Bool)

(declare-fun call!201023 () Bool)

(assert (=> b!2997321 (= c!493074 call!201023)))

(declare-fun b!2997322 () Bool)

(assert (=> b!2997322 (= e!1883376 EmptyExpr!9363)))

(declare-fun b!2997323 () Bool)

(assert (=> b!2997323 (= e!1883372 lt!1041560)))

(declare-fun b!2997324 () Bool)

(assert (=> b!2997324 (= e!1883368 e!1883381)))

(declare-fun call!201027 () Regex!9363)

(assert (=> b!2997324 (= lt!1041562 call!201027)))

(declare-fun call!201028 () Regex!9363)

(assert (=> b!2997324 (= lt!1041565 call!201028)))

(declare-fun c!493065 () Bool)

(assert (=> b!2997324 (= c!493065 call!201026)))

(declare-fun bm!201022 () Bool)

(assert (=> bm!201022 (= call!201023 (isEmptyExpr!470 (ite c!493066 lt!1041561 lt!1041563)))))

(declare-fun lt!1041564 () Regex!9363)

(declare-fun b!2997325 () Bool)

(declare-fun e!1883379 () Bool)

(assert (=> b!2997325 (= e!1883379 (= (nullable!3026 lt!1041564) (nullable!3026 (ite c!492860 (reg!9692 (ite c!492730 (regTwo!19239 (regTwo!19238 r!17423)) (regOne!19238 (regTwo!19238 r!17423)))) (ite c!492858 (regOne!19239 (ite c!492730 (regTwo!19239 (regTwo!19238 r!17423)) (regOne!19238 (regTwo!19238 r!17423)))) (regTwo!19238 (ite c!492730 (regTwo!19239 (regTwo!19238 r!17423)) (regOne!19238 (regTwo!19238 r!17423)))))))))))

(declare-fun b!2997311 () Bool)

(declare-fun e!1883370 () Regex!9363)

(assert (=> b!2997311 (= e!1883370 e!1883369)))

(declare-fun c!493070 () Bool)

(assert (=> b!2997311 (= c!493070 ((_ is ElementMatch!9363) (ite c!492860 (reg!9692 (ite c!492730 (regTwo!19239 (regTwo!19238 r!17423)) (regOne!19238 (regTwo!19238 r!17423)))) (ite c!492858 (regOne!19239 (ite c!492730 (regTwo!19239 (regTwo!19238 r!17423)) (regOne!19238 (regTwo!19238 r!17423)))) (regTwo!19238 (ite c!492730 (regTwo!19239 (regTwo!19238 r!17423)) (regOne!19238 (regTwo!19238 r!17423))))))))))

(declare-fun d!845663 () Bool)

(assert (=> d!845663 e!1883379))

(declare-fun res!1235869 () Bool)

(assert (=> d!845663 (=> (not res!1235869) (not e!1883379))))

(assert (=> d!845663 (= res!1235869 (validRegex!4096 lt!1041564))))

(assert (=> d!845663 (= lt!1041564 e!1883370)))

(declare-fun c!493072 () Bool)

(assert (=> d!845663 (= c!493072 ((_ is EmptyLang!9363) (ite c!492860 (reg!9692 (ite c!492730 (regTwo!19239 (regTwo!19238 r!17423)) (regOne!19238 (regTwo!19238 r!17423)))) (ite c!492858 (regOne!19239 (ite c!492730 (regTwo!19239 (regTwo!19238 r!17423)) (regOne!19238 (regTwo!19238 r!17423)))) (regTwo!19238 (ite c!492730 (regTwo!19239 (regTwo!19238 r!17423)) (regOne!19238 (regTwo!19238 r!17423))))))))))

(assert (=> d!845663 (validRegex!4096 (ite c!492860 (reg!9692 (ite c!492730 (regTwo!19239 (regTwo!19238 r!17423)) (regOne!19238 (regTwo!19238 r!17423)))) (ite c!492858 (regOne!19239 (ite c!492730 (regTwo!19239 (regTwo!19238 r!17423)) (regOne!19238 (regTwo!19238 r!17423)))) (regTwo!19238 (ite c!492730 (regTwo!19239 (regTwo!19238 r!17423)) (regOne!19238 (regTwo!19238 r!17423)))))))))

(assert (=> d!845663 (= (simplify!354 (ite c!492860 (reg!9692 (ite c!492730 (regTwo!19239 (regTwo!19238 r!17423)) (regOne!19238 (regTwo!19238 r!17423)))) (ite c!492858 (regOne!19239 (ite c!492730 (regTwo!19239 (regTwo!19238 r!17423)) (regOne!19238 (regTwo!19238 r!17423)))) (regTwo!19238 (ite c!492730 (regTwo!19239 (regTwo!19238 r!17423)) (regOne!19238 (regTwo!19238 r!17423))))))) lt!1041564)))

(declare-fun b!2997326 () Bool)

(declare-fun e!1883378 () Bool)

(assert (=> b!2997326 (= e!1883378 call!201029)))

(declare-fun bm!201023 () Bool)

(assert (=> bm!201023 (= call!201027 call!201024)))

(declare-fun b!2997327 () Bool)

(declare-fun c!493071 () Bool)

(declare-fun e!1883371 () Bool)

(assert (=> b!2997327 (= c!493071 e!1883371)))

(declare-fun res!1235868 () Bool)

(assert (=> b!2997327 (=> res!1235868 e!1883371)))

(assert (=> b!2997327 (= res!1235868 call!201025)))

(assert (=> b!2997327 (= lt!1041561 call!201024)))

(assert (=> b!2997327 (= e!1883380 e!1883376)))

(declare-fun b!2997328 () Bool)

(assert (=> b!2997328 (= e!1883371 call!201023)))

(declare-fun b!2997329 () Bool)

(assert (=> b!2997329 (= e!1883370 EmptyLang!9363)))

(declare-fun b!2997330 () Bool)

(assert (=> b!2997330 (= e!1883368 e!1883373)))

(assert (=> b!2997330 (= lt!1041560 call!201028)))

(assert (=> b!2997330 (= lt!1041563 call!201027)))

(declare-fun res!1235867 () Bool)

(assert (=> b!2997330 (= res!1235867 call!201026)))

(assert (=> b!2997330 (=> res!1235867 e!1883378)))

(declare-fun c!493069 () Bool)

(assert (=> b!2997330 (= c!493069 e!1883378)))

(declare-fun b!2997331 () Bool)

(declare-fun e!1883374 () Regex!9363)

(assert (=> b!2997331 (= e!1883374 e!1883380)))

(assert (=> b!2997331 (= c!493066 ((_ is Star!9363) (ite c!492860 (reg!9692 (ite c!492730 (regTwo!19239 (regTwo!19238 r!17423)) (regOne!19238 (regTwo!19238 r!17423)))) (ite c!492858 (regOne!19239 (ite c!492730 (regTwo!19239 (regTwo!19238 r!17423)) (regOne!19238 (regTwo!19238 r!17423)))) (regTwo!19238 (ite c!492730 (regTwo!19239 (regTwo!19238 r!17423)) (regOne!19238 (regTwo!19238 r!17423))))))))))

(declare-fun b!2997332 () Bool)

(assert (=> b!2997332 (= e!1883374 EmptyExpr!9363)))

(declare-fun c!493073 () Bool)

(declare-fun b!2997333 () Bool)

(assert (=> b!2997333 (= c!493073 ((_ is EmptyExpr!9363) (ite c!492860 (reg!9692 (ite c!492730 (regTwo!19239 (regTwo!19238 r!17423)) (regOne!19238 (regTwo!19238 r!17423)))) (ite c!492858 (regOne!19239 (ite c!492730 (regTwo!19239 (regTwo!19238 r!17423)) (regOne!19238 (regTwo!19238 r!17423)))) (regTwo!19238 (ite c!492730 (regTwo!19239 (regTwo!19238 r!17423)) (regOne!19238 (regTwo!19238 r!17423))))))))))

(assert (=> b!2997333 (= e!1883369 e!1883374)))

(declare-fun b!2997334 () Bool)

(assert (=> b!2997334 (= e!1883381 lt!1041565)))

(declare-fun bm!201024 () Bool)

(assert (=> bm!201024 (= call!201028 (simplify!354 (ite c!493064 (regTwo!19239 (ite c!492860 (reg!9692 (ite c!492730 (regTwo!19239 (regTwo!19238 r!17423)) (regOne!19238 (regTwo!19238 r!17423)))) (ite c!492858 (regOne!19239 (ite c!492730 (regTwo!19239 (regTwo!19238 r!17423)) (regOne!19238 (regTwo!19238 r!17423)))) (regTwo!19238 (ite c!492730 (regTwo!19239 (regTwo!19238 r!17423)) (regOne!19238 (regTwo!19238 r!17423))))))) (regOne!19238 (ite c!492860 (reg!9692 (ite c!492730 (regTwo!19239 (regTwo!19238 r!17423)) (regOne!19238 (regTwo!19238 r!17423)))) (ite c!492858 (regOne!19239 (ite c!492730 (regTwo!19239 (regTwo!19238 r!17423)) (regOne!19238 (regTwo!19238 r!17423)))) (regTwo!19238 (ite c!492730 (regTwo!19239 (regTwo!19238 r!17423)) (regOne!19238 (regTwo!19238 r!17423))))))))))))

(assert (= (and d!845663 c!493072) b!2997329))

(assert (= (and d!845663 (not c!493072)) b!2997311))

(assert (= (and b!2997311 c!493070) b!2997314))

(assert (= (and b!2997311 (not c!493070)) b!2997333))

(assert (= (and b!2997333 c!493073) b!2997332))

(assert (= (and b!2997333 (not c!493073)) b!2997331))

(assert (= (and b!2997331 c!493066) b!2997327))

(assert (= (and b!2997331 (not c!493066)) b!2997315))

(assert (= (and b!2997327 (not res!1235868)) b!2997328))

(assert (= (and b!2997327 c!493071) b!2997322))

(assert (= (and b!2997327 (not c!493071)) b!2997312))

(assert (= (and b!2997315 c!493064) b!2997324))

(assert (= (and b!2997315 (not c!493064)) b!2997330))

(assert (= (and b!2997324 c!493065) b!2997334))

(assert (= (and b!2997324 (not c!493065)) b!2997318))

(assert (= (and b!2997318 c!493067) b!2997310))

(assert (= (and b!2997318 (not c!493067)) b!2997317))

(assert (= (and b!2997330 (not res!1235867)) b!2997326))

(assert (= (and b!2997330 c!493069) b!2997319))

(assert (= (and b!2997330 (not c!493069)) b!2997313))

(assert (= (and b!2997313 c!493068) b!2997320))

(assert (= (and b!2997313 (not c!493068)) b!2997321))

(assert (= (and b!2997321 c!493074) b!2997323))

(assert (= (and b!2997321 (not c!493074)) b!2997316))

(assert (= (or b!2997324 b!2997330) bm!201023))

(assert (= (or b!2997324 b!2997330) bm!201024))

(assert (= (or b!2997324 b!2997330) bm!201019))

(assert (= (or b!2997318 b!2997326) bm!201020))

(assert (= (or b!2997328 b!2997321) bm!201022))

(assert (= (or b!2997327 bm!201023) bm!201018))

(assert (= (or b!2997327 bm!201020) bm!201021))

(assert (= (and d!845663 res!1235869) b!2997325))

(declare-fun m!3350569 () Bool)

(assert (=> bm!201019 m!3350569))

(declare-fun m!3350571 () Bool)

(assert (=> b!2997325 m!3350571))

(declare-fun m!3350573 () Bool)

(assert (=> b!2997325 m!3350573))

(declare-fun m!3350575 () Bool)

(assert (=> bm!201024 m!3350575))

(declare-fun m!3350577 () Bool)

(assert (=> bm!201018 m!3350577))

(declare-fun m!3350579 () Bool)

(assert (=> bm!201022 m!3350579))

(declare-fun m!3350581 () Bool)

(assert (=> d!845663 m!3350581))

(declare-fun m!3350583 () Bool)

(assert (=> d!845663 m!3350583))

(declare-fun m!3350585 () Bool)

(assert (=> b!2997313 m!3350585))

(declare-fun m!3350587 () Bool)

(assert (=> bm!201021 m!3350587))

(assert (=> bm!200853 d!845663))

(declare-fun d!845665 () Bool)

(assert (=> d!845665 (= (isEmpty!19378 (tail!4909 (tail!4909 s!11993))) ((_ is Nil!35104) (tail!4909 (tail!4909 s!11993))))))

(assert (=> b!2996581 d!845665))

(assert (=> b!2996581 d!845647))

(assert (=> b!2996456 d!845645))

(declare-fun b!2997335 () Bool)

(declare-fun e!1883389 () Regex!9363)

(declare-fun lt!1041568 () Regex!9363)

(assert (=> b!2997335 (= e!1883389 lt!1041568)))

(declare-fun bm!201025 () Bool)

(declare-fun c!493075 () Bool)

(declare-fun call!201031 () Regex!9363)

(declare-fun c!493077 () Bool)

(assert (=> bm!201025 (= call!201031 (simplify!354 (ite c!493077 (reg!9692 (ite c!492919 (regTwo!19239 (ite c!492741 (regTwo!19239 (regOne!19238 r!17423)) (regOne!19238 (regOne!19238 r!17423)))) (regOne!19238 (ite c!492741 (regTwo!19239 (regOne!19238 r!17423)) (regOne!19238 (regOne!19238 r!17423)))))) (ite c!493075 (regOne!19239 (ite c!492919 (regTwo!19239 (ite c!492741 (regTwo!19239 (regOne!19238 r!17423)) (regOne!19238 (regOne!19238 r!17423)))) (regOne!19238 (ite c!492741 (regTwo!19239 (regOne!19238 r!17423)) (regOne!19238 (regOne!19238 r!17423)))))) (regTwo!19238 (ite c!492919 (regTwo!19239 (ite c!492741 (regTwo!19239 (regOne!19238 r!17423)) (regOne!19238 (regOne!19238 r!17423)))) (regOne!19238 (ite c!492741 (regTwo!19239 (regOne!19238 r!17423)) (regOne!19238 (regOne!19238 r!17423))))))))))))

(declare-fun b!2997337 () Bool)

(declare-fun e!1883390 () Regex!9363)

(declare-fun lt!1041567 () Regex!9363)

(assert (=> b!2997337 (= e!1883390 (Star!9363 lt!1041567))))

(declare-fun b!2997338 () Bool)

(declare-fun c!493079 () Bool)

(declare-fun lt!1041566 () Regex!9363)

(assert (=> b!2997338 (= c!493079 (isEmptyExpr!470 lt!1041566))))

(declare-fun e!1883387 () Regex!9363)

(declare-fun e!1883391 () Regex!9363)

(assert (=> b!2997338 (= e!1883387 e!1883391)))

(declare-fun b!2997339 () Bool)

(declare-fun e!1883383 () Regex!9363)

(assert (=> b!2997339 (= e!1883383 (ite c!492919 (regTwo!19239 (ite c!492741 (regTwo!19239 (regOne!19238 r!17423)) (regOne!19238 (regOne!19238 r!17423)))) (regOne!19238 (ite c!492741 (regTwo!19239 (regOne!19238 r!17423)) (regOne!19238 (regOne!19238 r!17423))))))))

(declare-fun call!201033 () Bool)

(declare-fun bm!201026 () Bool)

(assert (=> bm!201026 (= call!201033 (isEmptyLang!453 (ite c!493075 lt!1041568 lt!1041566)))))

(declare-fun bm!201027 () Bool)

(declare-fun call!201036 () Bool)

(declare-fun call!201032 () Bool)

(assert (=> bm!201027 (= call!201036 call!201032)))

(declare-fun bm!201028 () Bool)

(declare-fun lt!1041571 () Regex!9363)

(declare-fun lt!1041569 () Regex!9363)

(assert (=> bm!201028 (= call!201032 (isEmptyLang!453 (ite c!493077 lt!1041567 (ite c!493075 lt!1041571 lt!1041569))))))

(declare-fun b!2997340 () Bool)

(assert (=> b!2997340 (= c!493075 ((_ is Union!9363) (ite c!492919 (regTwo!19239 (ite c!492741 (regTwo!19239 (regOne!19238 r!17423)) (regOne!19238 (regOne!19238 r!17423)))) (regOne!19238 (ite c!492741 (regTwo!19239 (regOne!19238 r!17423)) (regOne!19238 (regOne!19238 r!17423)))))))))

(declare-fun e!1883394 () Regex!9363)

(declare-fun e!1883382 () Regex!9363)

(assert (=> b!2997340 (= e!1883394 e!1883382)))

(declare-fun b!2997341 () Bool)

(declare-fun e!1883386 () Regex!9363)

(assert (=> b!2997341 (= e!1883386 (Concat!14684 lt!1041566 lt!1041569))))

(declare-fun b!2997342 () Bool)

(assert (=> b!2997342 (= e!1883389 (Union!9363 lt!1041568 lt!1041571))))

(declare-fun b!2997343 () Bool)

(declare-fun c!493078 () Bool)

(assert (=> b!2997343 (= c!493078 call!201036)))

(declare-fun e!1883395 () Regex!9363)

(assert (=> b!2997343 (= e!1883395 e!1883389)))

(declare-fun b!2997344 () Bool)

(assert (=> b!2997344 (= e!1883387 EmptyLang!9363)))

(declare-fun b!2997345 () Bool)

(assert (=> b!2997345 (= e!1883391 lt!1041569)))

(declare-fun b!2997346 () Bool)

(assert (=> b!2997346 (= e!1883391 e!1883386)))

(declare-fun c!493085 () Bool)

(declare-fun call!201030 () Bool)

(assert (=> b!2997346 (= c!493085 call!201030)))

(declare-fun b!2997347 () Bool)

(assert (=> b!2997347 (= e!1883390 EmptyExpr!9363)))

(declare-fun b!2997348 () Bool)

(assert (=> b!2997348 (= e!1883386 lt!1041566)))

(declare-fun b!2997349 () Bool)

(assert (=> b!2997349 (= e!1883382 e!1883395)))

(declare-fun call!201034 () Regex!9363)

(assert (=> b!2997349 (= lt!1041568 call!201034)))

(declare-fun call!201035 () Regex!9363)

(assert (=> b!2997349 (= lt!1041571 call!201035)))

(declare-fun c!493076 () Bool)

(assert (=> b!2997349 (= c!493076 call!201033)))

(declare-fun bm!201029 () Bool)

(assert (=> bm!201029 (= call!201030 (isEmptyExpr!470 (ite c!493077 lt!1041567 lt!1041569)))))

(declare-fun e!1883393 () Bool)

(declare-fun b!2997350 () Bool)

(declare-fun lt!1041570 () Regex!9363)

(assert (=> b!2997350 (= e!1883393 (= (nullable!3026 lt!1041570) (nullable!3026 (ite c!492919 (regTwo!19239 (ite c!492741 (regTwo!19239 (regOne!19238 r!17423)) (regOne!19238 (regOne!19238 r!17423)))) (regOne!19238 (ite c!492741 (regTwo!19239 (regOne!19238 r!17423)) (regOne!19238 (regOne!19238 r!17423))))))))))

(declare-fun b!2997336 () Bool)

(declare-fun e!1883384 () Regex!9363)

(assert (=> b!2997336 (= e!1883384 e!1883383)))

(declare-fun c!493081 () Bool)

(assert (=> b!2997336 (= c!493081 ((_ is ElementMatch!9363) (ite c!492919 (regTwo!19239 (ite c!492741 (regTwo!19239 (regOne!19238 r!17423)) (regOne!19238 (regOne!19238 r!17423)))) (regOne!19238 (ite c!492741 (regTwo!19239 (regOne!19238 r!17423)) (regOne!19238 (regOne!19238 r!17423)))))))))

(declare-fun d!845667 () Bool)

(assert (=> d!845667 e!1883393))

(declare-fun res!1235872 () Bool)

(assert (=> d!845667 (=> (not res!1235872) (not e!1883393))))

(assert (=> d!845667 (= res!1235872 (validRegex!4096 lt!1041570))))

(assert (=> d!845667 (= lt!1041570 e!1883384)))

(declare-fun c!493083 () Bool)

(assert (=> d!845667 (= c!493083 ((_ is EmptyLang!9363) (ite c!492919 (regTwo!19239 (ite c!492741 (regTwo!19239 (regOne!19238 r!17423)) (regOne!19238 (regOne!19238 r!17423)))) (regOne!19238 (ite c!492741 (regTwo!19239 (regOne!19238 r!17423)) (regOne!19238 (regOne!19238 r!17423)))))))))

(assert (=> d!845667 (validRegex!4096 (ite c!492919 (regTwo!19239 (ite c!492741 (regTwo!19239 (regOne!19238 r!17423)) (regOne!19238 (regOne!19238 r!17423)))) (regOne!19238 (ite c!492741 (regTwo!19239 (regOne!19238 r!17423)) (regOne!19238 (regOne!19238 r!17423))))))))

(assert (=> d!845667 (= (simplify!354 (ite c!492919 (regTwo!19239 (ite c!492741 (regTwo!19239 (regOne!19238 r!17423)) (regOne!19238 (regOne!19238 r!17423)))) (regOne!19238 (ite c!492741 (regTwo!19239 (regOne!19238 r!17423)) (regOne!19238 (regOne!19238 r!17423)))))) lt!1041570)))

(declare-fun b!2997351 () Bool)

(declare-fun e!1883392 () Bool)

(assert (=> b!2997351 (= e!1883392 call!201036)))

(declare-fun bm!201030 () Bool)

(assert (=> bm!201030 (= call!201034 call!201031)))

(declare-fun b!2997352 () Bool)

(declare-fun c!493082 () Bool)

(declare-fun e!1883385 () Bool)

(assert (=> b!2997352 (= c!493082 e!1883385)))

(declare-fun res!1235871 () Bool)

(assert (=> b!2997352 (=> res!1235871 e!1883385)))

(assert (=> b!2997352 (= res!1235871 call!201032)))

(assert (=> b!2997352 (= lt!1041567 call!201031)))

(assert (=> b!2997352 (= e!1883394 e!1883390)))

(declare-fun b!2997353 () Bool)

(assert (=> b!2997353 (= e!1883385 call!201030)))

(declare-fun b!2997354 () Bool)

(assert (=> b!2997354 (= e!1883384 EmptyLang!9363)))

(declare-fun b!2997355 () Bool)

(assert (=> b!2997355 (= e!1883382 e!1883387)))

(assert (=> b!2997355 (= lt!1041566 call!201035)))

(assert (=> b!2997355 (= lt!1041569 call!201034)))

(declare-fun res!1235870 () Bool)

(assert (=> b!2997355 (= res!1235870 call!201033)))

(assert (=> b!2997355 (=> res!1235870 e!1883392)))

(declare-fun c!493080 () Bool)

(assert (=> b!2997355 (= c!493080 e!1883392)))

(declare-fun b!2997356 () Bool)

(declare-fun e!1883388 () Regex!9363)

(assert (=> b!2997356 (= e!1883388 e!1883394)))

(assert (=> b!2997356 (= c!493077 ((_ is Star!9363) (ite c!492919 (regTwo!19239 (ite c!492741 (regTwo!19239 (regOne!19238 r!17423)) (regOne!19238 (regOne!19238 r!17423)))) (regOne!19238 (ite c!492741 (regTwo!19239 (regOne!19238 r!17423)) (regOne!19238 (regOne!19238 r!17423)))))))))

(declare-fun b!2997357 () Bool)

(assert (=> b!2997357 (= e!1883388 EmptyExpr!9363)))

(declare-fun b!2997358 () Bool)

(declare-fun c!493084 () Bool)

(assert (=> b!2997358 (= c!493084 ((_ is EmptyExpr!9363) (ite c!492919 (regTwo!19239 (ite c!492741 (regTwo!19239 (regOne!19238 r!17423)) (regOne!19238 (regOne!19238 r!17423)))) (regOne!19238 (ite c!492741 (regTwo!19239 (regOne!19238 r!17423)) (regOne!19238 (regOne!19238 r!17423)))))))))

(assert (=> b!2997358 (= e!1883383 e!1883388)))

(declare-fun b!2997359 () Bool)

(assert (=> b!2997359 (= e!1883395 lt!1041571)))

(declare-fun bm!201031 () Bool)

(assert (=> bm!201031 (= call!201035 (simplify!354 (ite c!493075 (regTwo!19239 (ite c!492919 (regTwo!19239 (ite c!492741 (regTwo!19239 (regOne!19238 r!17423)) (regOne!19238 (regOne!19238 r!17423)))) (regOne!19238 (ite c!492741 (regTwo!19239 (regOne!19238 r!17423)) (regOne!19238 (regOne!19238 r!17423)))))) (regOne!19238 (ite c!492919 (regTwo!19239 (ite c!492741 (regTwo!19239 (regOne!19238 r!17423)) (regOne!19238 (regOne!19238 r!17423)))) (regOne!19238 (ite c!492741 (regTwo!19239 (regOne!19238 r!17423)) (regOne!19238 (regOne!19238 r!17423)))))))))))

(assert (= (and d!845667 c!493083) b!2997354))

(assert (= (and d!845667 (not c!493083)) b!2997336))

(assert (= (and b!2997336 c!493081) b!2997339))

(assert (= (and b!2997336 (not c!493081)) b!2997358))

(assert (= (and b!2997358 c!493084) b!2997357))

(assert (= (and b!2997358 (not c!493084)) b!2997356))

(assert (= (and b!2997356 c!493077) b!2997352))

(assert (= (and b!2997356 (not c!493077)) b!2997340))

(assert (= (and b!2997352 (not res!1235871)) b!2997353))

(assert (= (and b!2997352 c!493082) b!2997347))

(assert (= (and b!2997352 (not c!493082)) b!2997337))

(assert (= (and b!2997340 c!493075) b!2997349))

(assert (= (and b!2997340 (not c!493075)) b!2997355))

(assert (= (and b!2997349 c!493076) b!2997359))

(assert (= (and b!2997349 (not c!493076)) b!2997343))

(assert (= (and b!2997343 c!493078) b!2997335))

(assert (= (and b!2997343 (not c!493078)) b!2997342))

(assert (= (and b!2997355 (not res!1235870)) b!2997351))

(assert (= (and b!2997355 c!493080) b!2997344))

(assert (= (and b!2997355 (not c!493080)) b!2997338))

(assert (= (and b!2997338 c!493079) b!2997345))

(assert (= (and b!2997338 (not c!493079)) b!2997346))

(assert (= (and b!2997346 c!493085) b!2997348))

(assert (= (and b!2997346 (not c!493085)) b!2997341))

(assert (= (or b!2997349 b!2997355) bm!201030))

(assert (= (or b!2997349 b!2997355) bm!201031))

(assert (= (or b!2997349 b!2997355) bm!201026))

(assert (= (or b!2997343 b!2997351) bm!201027))

(assert (= (or b!2997353 b!2997346) bm!201029))

(assert (= (or b!2997352 bm!201030) bm!201025))

(assert (= (or b!2997352 bm!201027) bm!201028))

(assert (= (and d!845667 res!1235872) b!2997350))

(declare-fun m!3350589 () Bool)

(assert (=> bm!201026 m!3350589))

(declare-fun m!3350591 () Bool)

(assert (=> b!2997350 m!3350591))

(declare-fun m!3350593 () Bool)

(assert (=> b!2997350 m!3350593))

(declare-fun m!3350595 () Bool)

(assert (=> bm!201031 m!3350595))

(declare-fun m!3350597 () Bool)

(assert (=> bm!201025 m!3350597))

(declare-fun m!3350599 () Bool)

(assert (=> bm!201029 m!3350599))

(declare-fun m!3350601 () Bool)

(assert (=> d!845667 m!3350601))

(declare-fun m!3350603 () Bool)

(assert (=> d!845667 m!3350603))

(declare-fun m!3350605 () Bool)

(assert (=> b!2997338 m!3350605))

(declare-fun m!3350607 () Bool)

(assert (=> bm!201028 m!3350607))

(assert (=> bm!200905 d!845667))

(declare-fun b!2997360 () Bool)

(declare-fun e!1883397 () Regex!9363)

(declare-fun e!1883398 () Regex!9363)

(assert (=> b!2997360 (= e!1883397 e!1883398)))

(declare-fun c!493090 () Bool)

(assert (=> b!2997360 (= c!493090 ((_ is ElementMatch!9363) (ite c!492893 (regTwo!19239 (regTwo!19238 r!17423)) (ite c!492892 (reg!9692 (regTwo!19238 r!17423)) (regOne!19238 (regTwo!19238 r!17423))))))))

(declare-fun b!2997361 () Bool)

(declare-fun c!493087 () Bool)

(assert (=> b!2997361 (= c!493087 (nullable!3026 (regOne!19238 (ite c!492893 (regTwo!19239 (regTwo!19238 r!17423)) (ite c!492892 (reg!9692 (regTwo!19238 r!17423)) (regOne!19238 (regTwo!19238 r!17423)))))))))

(declare-fun e!1883399 () Regex!9363)

(declare-fun e!1883400 () Regex!9363)

(assert (=> b!2997361 (= e!1883399 e!1883400)))

(declare-fun b!2997362 () Bool)

(assert (=> b!2997362 (= e!1883397 EmptyLang!9363)))

(declare-fun call!201040 () Regex!9363)

(declare-fun b!2997363 () Bool)

(assert (=> b!2997363 (= e!1883400 (Union!9363 (Concat!14684 call!201040 (regTwo!19238 (ite c!492893 (regTwo!19239 (regTwo!19238 r!17423)) (ite c!492892 (reg!9692 (regTwo!19238 r!17423)) (regOne!19238 (regTwo!19238 r!17423)))))) EmptyLang!9363))))

(declare-fun b!2997364 () Bool)

(declare-fun call!201038 () Regex!9363)

(assert (=> b!2997364 (= e!1883399 (Concat!14684 call!201038 (ite c!492893 (regTwo!19239 (regTwo!19238 r!17423)) (ite c!492892 (reg!9692 (regTwo!19238 r!17423)) (regOne!19238 (regTwo!19238 r!17423))))))))

(declare-fun c!493089 () Bool)

(declare-fun b!2997365 () Bool)

(assert (=> b!2997365 (= c!493089 ((_ is Union!9363) (ite c!492893 (regTwo!19239 (regTwo!19238 r!17423)) (ite c!492892 (reg!9692 (regTwo!19238 r!17423)) (regOne!19238 (regTwo!19238 r!17423))))))))

(declare-fun e!1883396 () Regex!9363)

(assert (=> b!2997365 (= e!1883398 e!1883396)))

(declare-fun c!493088 () Bool)

(declare-fun call!201037 () Regex!9363)

(declare-fun bm!201033 () Bool)

(assert (=> bm!201033 (= call!201037 (derivativeStep!2624 (ite c!493089 (regTwo!19239 (ite c!492893 (regTwo!19239 (regTwo!19238 r!17423)) (ite c!492892 (reg!9692 (regTwo!19238 r!17423)) (regOne!19238 (regTwo!19238 r!17423))))) (ite c!493088 (reg!9692 (ite c!492893 (regTwo!19239 (regTwo!19238 r!17423)) (ite c!492892 (reg!9692 (regTwo!19238 r!17423)) (regOne!19238 (regTwo!19238 r!17423))))) (regOne!19238 (ite c!492893 (regTwo!19239 (regTwo!19238 r!17423)) (ite c!492892 (reg!9692 (regTwo!19238 r!17423)) (regOne!19238 (regTwo!19238 r!17423))))))) (head!6683 s!11993)))))

(declare-fun bm!201034 () Bool)

(assert (=> bm!201034 (= call!201040 call!201038)))

(declare-fun b!2997366 () Bool)

(assert (=> b!2997366 (= e!1883398 (ite (= (head!6683 s!11993) (c!492681 (ite c!492893 (regTwo!19239 (regTwo!19238 r!17423)) (ite c!492892 (reg!9692 (regTwo!19238 r!17423)) (regOne!19238 (regTwo!19238 r!17423)))))) EmptyExpr!9363 EmptyLang!9363))))

(declare-fun bm!201035 () Bool)

(declare-fun call!201039 () Regex!9363)

(assert (=> bm!201035 (= call!201039 (derivativeStep!2624 (ite c!493089 (regOne!19239 (ite c!492893 (regTwo!19239 (regTwo!19238 r!17423)) (ite c!492892 (reg!9692 (regTwo!19238 r!17423)) (regOne!19238 (regTwo!19238 r!17423))))) (regTwo!19238 (ite c!492893 (regTwo!19239 (regTwo!19238 r!17423)) (ite c!492892 (reg!9692 (regTwo!19238 r!17423)) (regOne!19238 (regTwo!19238 r!17423)))))) (head!6683 s!11993)))))

(declare-fun b!2997367 () Bool)

(assert (=> b!2997367 (= e!1883400 (Union!9363 (Concat!14684 call!201040 (regTwo!19238 (ite c!492893 (regTwo!19239 (regTwo!19238 r!17423)) (ite c!492892 (reg!9692 (regTwo!19238 r!17423)) (regOne!19238 (regTwo!19238 r!17423)))))) call!201039))))

(declare-fun d!845669 () Bool)

(declare-fun lt!1041572 () Regex!9363)

(assert (=> d!845669 (validRegex!4096 lt!1041572)))

(assert (=> d!845669 (= lt!1041572 e!1883397)))

(declare-fun c!493086 () Bool)

(assert (=> d!845669 (= c!493086 (or ((_ is EmptyExpr!9363) (ite c!492893 (regTwo!19239 (regTwo!19238 r!17423)) (ite c!492892 (reg!9692 (regTwo!19238 r!17423)) (regOne!19238 (regTwo!19238 r!17423))))) ((_ is EmptyLang!9363) (ite c!492893 (regTwo!19239 (regTwo!19238 r!17423)) (ite c!492892 (reg!9692 (regTwo!19238 r!17423)) (regOne!19238 (regTwo!19238 r!17423)))))))))

(assert (=> d!845669 (validRegex!4096 (ite c!492893 (regTwo!19239 (regTwo!19238 r!17423)) (ite c!492892 (reg!9692 (regTwo!19238 r!17423)) (regOne!19238 (regTwo!19238 r!17423)))))))

(assert (=> d!845669 (= (derivativeStep!2624 (ite c!492893 (regTwo!19239 (regTwo!19238 r!17423)) (ite c!492892 (reg!9692 (regTwo!19238 r!17423)) (regOne!19238 (regTwo!19238 r!17423)))) (head!6683 s!11993)) lt!1041572)))

(declare-fun bm!201032 () Bool)

(assert (=> bm!201032 (= call!201038 call!201037)))

(declare-fun b!2997368 () Bool)

(assert (=> b!2997368 (= e!1883396 e!1883399)))

(assert (=> b!2997368 (= c!493088 ((_ is Star!9363) (ite c!492893 (regTwo!19239 (regTwo!19238 r!17423)) (ite c!492892 (reg!9692 (regTwo!19238 r!17423)) (regOne!19238 (regTwo!19238 r!17423))))))))

(declare-fun b!2997369 () Bool)

(assert (=> b!2997369 (= e!1883396 (Union!9363 call!201039 call!201037))))

(assert (= (and d!845669 c!493086) b!2997362))

(assert (= (and d!845669 (not c!493086)) b!2997360))

(assert (= (and b!2997360 c!493090) b!2997366))

(assert (= (and b!2997360 (not c!493090)) b!2997365))

(assert (= (and b!2997365 c!493089) b!2997369))

(assert (= (and b!2997365 (not c!493089)) b!2997368))

(assert (= (and b!2997368 c!493088) b!2997364))

(assert (= (and b!2997368 (not c!493088)) b!2997361))

(assert (= (and b!2997361 c!493087) b!2997367))

(assert (= (and b!2997361 (not c!493087)) b!2997363))

(assert (= (or b!2997367 b!2997363) bm!201034))

(assert (= (or b!2997364 bm!201034) bm!201032))

(assert (= (or b!2997369 bm!201032) bm!201033))

(assert (= (or b!2997369 b!2997367) bm!201035))

(declare-fun m!3350609 () Bool)

(assert (=> b!2997361 m!3350609))

(assert (=> bm!201033 m!3350005))

(declare-fun m!3350611 () Bool)

(assert (=> bm!201033 m!3350611))

(assert (=> bm!201035 m!3350005))

(declare-fun m!3350613 () Bool)

(assert (=> bm!201035 m!3350613))

(declare-fun m!3350615 () Bool)

(assert (=> d!845669 m!3350615))

(declare-fun m!3350617 () Bool)

(assert (=> d!845669 m!3350617))

(assert (=> bm!200877 d!845669))

(declare-fun d!845671 () Bool)

(assert (=> d!845671 (= (nullable!3026 (ite c!492875 (regTwo!19239 (regOne!19238 r!17423)) (regTwo!19238 (regOne!19238 r!17423)))) (nullableFct!860 (ite c!492875 (regTwo!19239 (regOne!19238 r!17423)) (regTwo!19238 (regOne!19238 r!17423)))))))

(declare-fun bs!528137 () Bool)

(assert (= bs!528137 d!845671))

(declare-fun m!3350619 () Bool)

(assert (=> bs!528137 m!3350619))

(assert (=> bm!200866 d!845671))

(declare-fun d!845673 () Bool)

(assert (=> d!845673 (= (isEmptyLang!453 (ite c!492878 lt!1041502 (ite c!492876 lt!1041506 lt!1041504))) ((_ is EmptyLang!9363) (ite c!492878 lt!1041502 (ite c!492876 lt!1041506 lt!1041504))))))

(assert (=> bm!200871 d!845673))

(assert (=> b!2996628 d!845665))

(assert (=> b!2996628 d!845647))

(assert (=> b!2996669 d!845497))

(assert (=> b!2996669 d!845481))

(assert (=> d!845545 d!845441))

(declare-fun b!2997370 () Bool)

(declare-fun e!1883405 () Bool)

(declare-fun call!201043 () Bool)

(assert (=> b!2997370 (= e!1883405 call!201043)))

(declare-fun b!2997371 () Bool)

(declare-fun e!1883403 () Bool)

(declare-fun call!201041 () Bool)

(assert (=> b!2997371 (= e!1883403 call!201041)))

(declare-fun c!493092 () Bool)

(declare-fun bm!201036 () Bool)

(declare-fun c!493091 () Bool)

(assert (=> bm!201036 (= call!201043 (validRegex!4096 (ite c!493092 (reg!9692 (simplify!354 (regTwo!19238 r!17423))) (ite c!493091 (regOne!19239 (simplify!354 (regTwo!19238 r!17423))) (regTwo!19238 (simplify!354 (regTwo!19238 r!17423)))))))))

(declare-fun b!2997373 () Bool)

(declare-fun e!1883406 () Bool)

(declare-fun call!201042 () Bool)

(assert (=> b!2997373 (= e!1883406 call!201042)))

(declare-fun bm!201037 () Bool)

(assert (=> bm!201037 (= call!201042 call!201043)))

(declare-fun b!2997374 () Bool)

(declare-fun e!1883402 () Bool)

(declare-fun e!1883401 () Bool)

(assert (=> b!2997374 (= e!1883402 e!1883401)))

(assert (=> b!2997374 (= c!493091 ((_ is Union!9363) (simplify!354 (regTwo!19238 r!17423))))))

(declare-fun b!2997375 () Bool)

(assert (=> b!2997375 (= e!1883402 e!1883405)))

(declare-fun res!1235876 () Bool)

(assert (=> b!2997375 (= res!1235876 (not (nullable!3026 (reg!9692 (simplify!354 (regTwo!19238 r!17423))))))))

(assert (=> b!2997375 (=> (not res!1235876) (not e!1883405))))

(declare-fun b!2997376 () Bool)

(declare-fun res!1235873 () Bool)

(declare-fun e!1883404 () Bool)

(assert (=> b!2997376 (=> res!1235873 e!1883404)))

(assert (=> b!2997376 (= res!1235873 (not ((_ is Concat!14684) (simplify!354 (regTwo!19238 r!17423)))))))

(assert (=> b!2997376 (= e!1883401 e!1883404)))

(declare-fun b!2997377 () Bool)

(assert (=> b!2997377 (= e!1883404 e!1883406)))

(declare-fun res!1235874 () Bool)

(assert (=> b!2997377 (=> (not res!1235874) (not e!1883406))))

(assert (=> b!2997377 (= res!1235874 call!201041)))

(declare-fun bm!201038 () Bool)

(assert (=> bm!201038 (= call!201041 (validRegex!4096 (ite c!493091 (regTwo!19239 (simplify!354 (regTwo!19238 r!17423))) (regOne!19238 (simplify!354 (regTwo!19238 r!17423))))))))

(declare-fun b!2997378 () Bool)

(declare-fun e!1883407 () Bool)

(assert (=> b!2997378 (= e!1883407 e!1883402)))

(assert (=> b!2997378 (= c!493092 ((_ is Star!9363) (simplify!354 (regTwo!19238 r!17423))))))

(declare-fun d!845675 () Bool)

(declare-fun res!1235875 () Bool)

(assert (=> d!845675 (=> res!1235875 e!1883407)))

(assert (=> d!845675 (= res!1235875 ((_ is ElementMatch!9363) (simplify!354 (regTwo!19238 r!17423))))))

(assert (=> d!845675 (= (validRegex!4096 (simplify!354 (regTwo!19238 r!17423))) e!1883407)))

(declare-fun b!2997372 () Bool)

(declare-fun res!1235877 () Bool)

(assert (=> b!2997372 (=> (not res!1235877) (not e!1883403))))

(assert (=> b!2997372 (= res!1235877 call!201042)))

(assert (=> b!2997372 (= e!1883401 e!1883403)))

(assert (= (and d!845675 (not res!1235875)) b!2997378))

(assert (= (and b!2997378 c!493092) b!2997375))

(assert (= (and b!2997378 (not c!493092)) b!2997374))

(assert (= (and b!2997375 res!1235876) b!2997370))

(assert (= (and b!2997374 c!493091) b!2997372))

(assert (= (and b!2997374 (not c!493091)) b!2997376))

(assert (= (and b!2997372 res!1235877) b!2997371))

(assert (= (and b!2997376 (not res!1235873)) b!2997377))

(assert (= (and b!2997377 res!1235874) b!2997373))

(assert (= (or b!2997372 b!2997373) bm!201037))

(assert (= (or b!2997371 b!2997377) bm!201038))

(assert (= (or b!2997370 bm!201037) bm!201036))

(declare-fun m!3350621 () Bool)

(assert (=> bm!201036 m!3350621))

(declare-fun m!3350623 () Bool)

(assert (=> b!2997375 m!3350623))

(declare-fun m!3350625 () Bool)

(assert (=> bm!201038 m!3350625))

(assert (=> d!845545 d!845675))

(declare-fun d!845677 () Bool)

(assert (=> d!845677 (= (isEmptyLang!453 (ite c!492858 lt!1041497 lt!1041495)) ((_ is EmptyLang!9363) (ite c!492858 lt!1041497 lt!1041495)))))

(assert (=> bm!200854 d!845677))

(declare-fun b!2997379 () Bool)

(declare-fun e!1883412 () Bool)

(declare-fun call!201046 () Bool)

(assert (=> b!2997379 (= e!1883412 call!201046)))

(declare-fun b!2997380 () Bool)

(declare-fun e!1883410 () Bool)

(declare-fun call!201044 () Bool)

(assert (=> b!2997380 (= e!1883410 call!201044)))

(declare-fun bm!201039 () Bool)

(declare-fun c!493093 () Bool)

(declare-fun c!493094 () Bool)

(assert (=> bm!201039 (= call!201046 (validRegex!4096 (ite c!493094 (reg!9692 (ite c!492940 (regTwo!19239 lt!1041444) (regOne!19238 lt!1041444))) (ite c!493093 (regOne!19239 (ite c!492940 (regTwo!19239 lt!1041444) (regOne!19238 lt!1041444))) (regTwo!19238 (ite c!492940 (regTwo!19239 lt!1041444) (regOne!19238 lt!1041444)))))))))

(declare-fun b!2997382 () Bool)

(declare-fun e!1883413 () Bool)

(declare-fun call!201045 () Bool)

(assert (=> b!2997382 (= e!1883413 call!201045)))

(declare-fun bm!201040 () Bool)

(assert (=> bm!201040 (= call!201045 call!201046)))

(declare-fun b!2997383 () Bool)

(declare-fun e!1883409 () Bool)

(declare-fun e!1883408 () Bool)

(assert (=> b!2997383 (= e!1883409 e!1883408)))

(assert (=> b!2997383 (= c!493093 ((_ is Union!9363) (ite c!492940 (regTwo!19239 lt!1041444) (regOne!19238 lt!1041444))))))

(declare-fun b!2997384 () Bool)

(assert (=> b!2997384 (= e!1883409 e!1883412)))

(declare-fun res!1235881 () Bool)

(assert (=> b!2997384 (= res!1235881 (not (nullable!3026 (reg!9692 (ite c!492940 (regTwo!19239 lt!1041444) (regOne!19238 lt!1041444))))))))

(assert (=> b!2997384 (=> (not res!1235881) (not e!1883412))))

(declare-fun b!2997385 () Bool)

(declare-fun res!1235878 () Bool)

(declare-fun e!1883411 () Bool)

(assert (=> b!2997385 (=> res!1235878 e!1883411)))

(assert (=> b!2997385 (= res!1235878 (not ((_ is Concat!14684) (ite c!492940 (regTwo!19239 lt!1041444) (regOne!19238 lt!1041444)))))))

(assert (=> b!2997385 (= e!1883408 e!1883411)))

(declare-fun b!2997386 () Bool)

(assert (=> b!2997386 (= e!1883411 e!1883413)))

(declare-fun res!1235879 () Bool)

(assert (=> b!2997386 (=> (not res!1235879) (not e!1883413))))

(assert (=> b!2997386 (= res!1235879 call!201044)))

(declare-fun bm!201041 () Bool)

(assert (=> bm!201041 (= call!201044 (validRegex!4096 (ite c!493093 (regTwo!19239 (ite c!492940 (regTwo!19239 lt!1041444) (regOne!19238 lt!1041444))) (regOne!19238 (ite c!492940 (regTwo!19239 lt!1041444) (regOne!19238 lt!1041444))))))))

(declare-fun b!2997387 () Bool)

(declare-fun e!1883414 () Bool)

(assert (=> b!2997387 (= e!1883414 e!1883409)))

(assert (=> b!2997387 (= c!493094 ((_ is Star!9363) (ite c!492940 (regTwo!19239 lt!1041444) (regOne!19238 lt!1041444))))))

(declare-fun d!845679 () Bool)

(declare-fun res!1235880 () Bool)

(assert (=> d!845679 (=> res!1235880 e!1883414)))

(assert (=> d!845679 (= res!1235880 ((_ is ElementMatch!9363) (ite c!492940 (regTwo!19239 lt!1041444) (regOne!19238 lt!1041444))))))

(assert (=> d!845679 (= (validRegex!4096 (ite c!492940 (regTwo!19239 lt!1041444) (regOne!19238 lt!1041444))) e!1883414)))

(declare-fun b!2997381 () Bool)

(declare-fun res!1235882 () Bool)

(assert (=> b!2997381 (=> (not res!1235882) (not e!1883410))))

(assert (=> b!2997381 (= res!1235882 call!201045)))

(assert (=> b!2997381 (= e!1883408 e!1883410)))

(assert (= (and d!845679 (not res!1235880)) b!2997387))

(assert (= (and b!2997387 c!493094) b!2997384))

(assert (= (and b!2997387 (not c!493094)) b!2997383))

(assert (= (and b!2997384 res!1235881) b!2997379))

(assert (= (and b!2997383 c!493093) b!2997381))

(assert (= (and b!2997383 (not c!493093)) b!2997385))

(assert (= (and b!2997381 res!1235882) b!2997380))

(assert (= (and b!2997385 (not res!1235878)) b!2997386))

(assert (= (and b!2997386 res!1235879) b!2997382))

(assert (= (or b!2997381 b!2997382) bm!201040))

(assert (= (or b!2997380 b!2997386) bm!201041))

(assert (= (or b!2997379 bm!201040) bm!201039))

(declare-fun m!3350627 () Bool)

(assert (=> bm!201039 m!3350627))

(declare-fun m!3350629 () Bool)

(assert (=> b!2997384 m!3350629))

(declare-fun m!3350631 () Bool)

(assert (=> bm!201041 m!3350631))

(assert (=> bm!200917 d!845679))

(declare-fun d!845681 () Bool)

(assert (=> d!845681 (= (isEmptyLang!453 (ite c!492944 lt!1041522 (ite c!492942 lt!1041526 lt!1041524))) ((_ is EmptyLang!9363) (ite c!492944 lt!1041522 (ite c!492942 lt!1041526 lt!1041524))))))

(assert (=> bm!200923 d!845681))

(declare-fun bs!528138 () Bool)

(declare-fun b!2997395 () Bool)

(assert (= bs!528138 (and b!2997395 b!2996377)))

(declare-fun lambda!112051 () Int)

(assert (=> bs!528138 (= (and (= (reg!9692 (regTwo!19239 (regOne!19239 r!17423))) (reg!9692 r!17423)) (= (regTwo!19239 (regOne!19239 r!17423)) r!17423)) (= lambda!112051 lambda!112041))))

(declare-fun bs!528139 () Bool)

(assert (= bs!528139 (and b!2997395 b!2996437)))

(assert (=> bs!528139 (not (= lambda!112051 lambda!112044))))

(declare-fun bs!528140 () Bool)

(assert (= bs!528140 (and b!2997395 b!2996373)))

(assert (=> bs!528140 (not (= lambda!112051 lambda!112042))))

(declare-fun bs!528141 () Bool)

(assert (= bs!528141 (and b!2997395 b!2996783)))

(assert (=> bs!528141 (not (= lambda!112051 lambda!112048))))

(declare-fun bs!528142 () Bool)

(assert (= bs!528142 (and b!2997395 b!2996787)))

(assert (=> bs!528142 (= (and (= (reg!9692 (regTwo!19239 (regOne!19239 r!17423))) (reg!9692 (regTwo!19239 r!17423))) (= (regTwo!19239 (regOne!19239 r!17423)) (regTwo!19239 r!17423))) (= lambda!112051 lambda!112047))))

(declare-fun bs!528143 () Bool)

(assert (= bs!528143 (and b!2997395 b!2996441)))

(assert (=> bs!528143 (= (and (= (reg!9692 (regTwo!19239 (regOne!19239 r!17423))) (reg!9692 (regOne!19239 r!17423))) (= (regTwo!19239 (regOne!19239 r!17423)) (regOne!19239 r!17423))) (= lambda!112051 lambda!112043))))

(assert (=> b!2997395 true))

(assert (=> b!2997395 true))

(declare-fun bs!528144 () Bool)

(declare-fun b!2997391 () Bool)

(assert (= bs!528144 (and b!2997391 b!2996377)))

(declare-fun lambda!112052 () Int)

(assert (=> bs!528144 (not (= lambda!112052 lambda!112041))))

(declare-fun bs!528145 () Bool)

(assert (= bs!528145 (and b!2997391 b!2996437)))

(assert (=> bs!528145 (= (and (= (regOne!19238 (regTwo!19239 (regOne!19239 r!17423))) (regOne!19238 (regOne!19239 r!17423))) (= (regTwo!19238 (regTwo!19239 (regOne!19239 r!17423))) (regTwo!19238 (regOne!19239 r!17423)))) (= lambda!112052 lambda!112044))))

(declare-fun bs!528146 () Bool)

(assert (= bs!528146 (and b!2997391 b!2996373)))

(assert (=> bs!528146 (= (and (= (regOne!19238 (regTwo!19239 (regOne!19239 r!17423))) (regOne!19238 r!17423)) (= (regTwo!19238 (regTwo!19239 (regOne!19239 r!17423))) (regTwo!19238 r!17423))) (= lambda!112052 lambda!112042))))

(declare-fun bs!528147 () Bool)

(assert (= bs!528147 (and b!2997391 b!2996783)))

(assert (=> bs!528147 (= (and (= (regOne!19238 (regTwo!19239 (regOne!19239 r!17423))) (regOne!19238 (regTwo!19239 r!17423))) (= (regTwo!19238 (regTwo!19239 (regOne!19239 r!17423))) (regTwo!19238 (regTwo!19239 r!17423)))) (= lambda!112052 lambda!112048))))

(declare-fun bs!528148 () Bool)

(assert (= bs!528148 (and b!2997391 b!2996441)))

(assert (=> bs!528148 (not (= lambda!112052 lambda!112043))))

(declare-fun bs!528149 () Bool)

(assert (= bs!528149 (and b!2997391 b!2996787)))

(assert (=> bs!528149 (not (= lambda!112052 lambda!112047))))

(declare-fun bs!528150 () Bool)

(assert (= bs!528150 (and b!2997391 b!2997395)))

(assert (=> bs!528150 (not (= lambda!112052 lambda!112051))))

(assert (=> b!2997391 true))

(assert (=> b!2997391 true))

(declare-fun bm!201042 () Bool)

(declare-fun call!201048 () Bool)

(assert (=> bm!201042 (= call!201048 (isEmpty!19378 s!11993))))

(declare-fun b!2997388 () Bool)

(declare-fun c!493095 () Bool)

(assert (=> b!2997388 (= c!493095 ((_ is Union!9363) (regTwo!19239 (regOne!19239 r!17423))))))

(declare-fun e!1883417 () Bool)

(declare-fun e!1883416 () Bool)

(assert (=> b!2997388 (= e!1883417 e!1883416)))

(declare-fun b!2997389 () Bool)

(assert (=> b!2997389 (= e!1883417 (= s!11993 (Cons!35104 (c!492681 (regTwo!19239 (regOne!19239 r!17423))) Nil!35104)))))

(declare-fun b!2997390 () Bool)

(declare-fun e!1883419 () Bool)

(assert (=> b!2997390 (= e!1883416 e!1883419)))

(declare-fun c!493097 () Bool)

(assert (=> b!2997390 (= c!493097 ((_ is Star!9363) (regTwo!19239 (regOne!19239 r!17423))))))

(declare-fun d!845683 () Bool)

(declare-fun c!493096 () Bool)

(assert (=> d!845683 (= c!493096 ((_ is EmptyExpr!9363) (regTwo!19239 (regOne!19239 r!17423))))))

(declare-fun e!1883415 () Bool)

(assert (=> d!845683 (= (matchRSpec!1500 (regTwo!19239 (regOne!19239 r!17423)) s!11993) e!1883415)))

(declare-fun call!201047 () Bool)

(assert (=> b!2997391 (= e!1883419 call!201047)))

(declare-fun b!2997392 () Bool)

(declare-fun e!1883418 () Bool)

(assert (=> b!2997392 (= e!1883418 (matchRSpec!1500 (regTwo!19239 (regTwo!19239 (regOne!19239 r!17423))) s!11993))))

(declare-fun b!2997393 () Bool)

(assert (=> b!2997393 (= e!1883416 e!1883418)))

(declare-fun res!1235883 () Bool)

(assert (=> b!2997393 (= res!1235883 (matchRSpec!1500 (regOne!19239 (regTwo!19239 (regOne!19239 r!17423))) s!11993))))

(assert (=> b!2997393 (=> res!1235883 e!1883418)))

(declare-fun b!2997394 () Bool)

(declare-fun c!493098 () Bool)

(assert (=> b!2997394 (= c!493098 ((_ is ElementMatch!9363) (regTwo!19239 (regOne!19239 r!17423))))))

(declare-fun e!1883420 () Bool)

(assert (=> b!2997394 (= e!1883420 e!1883417)))

(declare-fun e!1883421 () Bool)

(assert (=> b!2997395 (= e!1883421 call!201047)))

(declare-fun b!2997396 () Bool)

(assert (=> b!2997396 (= e!1883415 e!1883420)))

(declare-fun res!1235884 () Bool)

(assert (=> b!2997396 (= res!1235884 (not ((_ is EmptyLang!9363) (regTwo!19239 (regOne!19239 r!17423)))))))

(assert (=> b!2997396 (=> (not res!1235884) (not e!1883420))))

(declare-fun b!2997397 () Bool)

(assert (=> b!2997397 (= e!1883415 call!201048)))

(declare-fun b!2997398 () Bool)

(declare-fun res!1235885 () Bool)

(assert (=> b!2997398 (=> res!1235885 e!1883421)))

(assert (=> b!2997398 (= res!1235885 call!201048)))

(assert (=> b!2997398 (= e!1883419 e!1883421)))

(declare-fun bm!201043 () Bool)

(assert (=> bm!201043 (= call!201047 (Exists!1636 (ite c!493097 lambda!112051 lambda!112052)))))

(assert (= (and d!845683 c!493096) b!2997397))

(assert (= (and d!845683 (not c!493096)) b!2997396))

(assert (= (and b!2997396 res!1235884) b!2997394))

(assert (= (and b!2997394 c!493098) b!2997389))

(assert (= (and b!2997394 (not c!493098)) b!2997388))

(assert (= (and b!2997388 c!493095) b!2997393))

(assert (= (and b!2997388 (not c!493095)) b!2997390))

(assert (= (and b!2997393 (not res!1235883)) b!2997392))

(assert (= (and b!2997390 c!493097) b!2997398))

(assert (= (and b!2997390 (not c!493097)) b!2997391))

(assert (= (and b!2997398 (not res!1235885)) b!2997395))

(assert (= (or b!2997395 b!2997391) bm!201043))

(assert (= (or b!2997397 b!2997398) bm!201042))

(assert (=> bm!201042 m!3349927))

(declare-fun m!3350633 () Bool)

(assert (=> b!2997392 m!3350633))

(declare-fun m!3350635 () Bool)

(assert (=> b!2997393 m!3350635))

(declare-fun m!3350637 () Bool)

(assert (=> bm!201043 m!3350637))

(assert (=> b!2996438 d!845683))

(declare-fun b!2997399 () Bool)

(declare-fun e!1883429 () Regex!9363)

(declare-fun lt!1041575 () Regex!9363)

(assert (=> b!2997399 (= e!1883429 lt!1041575)))

(declare-fun c!493099 () Bool)

(declare-fun c!493101 () Bool)

(declare-fun bm!201044 () Bool)

(declare-fun call!201050 () Regex!9363)

(assert (=> bm!201044 (= call!201050 (simplify!354 (ite c!493101 (reg!9692 (ite c!492858 (regTwo!19239 (ite c!492730 (regTwo!19239 (regTwo!19238 r!17423)) (regOne!19238 (regTwo!19238 r!17423)))) (regOne!19238 (ite c!492730 (regTwo!19239 (regTwo!19238 r!17423)) (regOne!19238 (regTwo!19238 r!17423)))))) (ite c!493099 (regOne!19239 (ite c!492858 (regTwo!19239 (ite c!492730 (regTwo!19239 (regTwo!19238 r!17423)) (regOne!19238 (regTwo!19238 r!17423)))) (regOne!19238 (ite c!492730 (regTwo!19239 (regTwo!19238 r!17423)) (regOne!19238 (regTwo!19238 r!17423)))))) (regTwo!19238 (ite c!492858 (regTwo!19239 (ite c!492730 (regTwo!19239 (regTwo!19238 r!17423)) (regOne!19238 (regTwo!19238 r!17423)))) (regOne!19238 (ite c!492730 (regTwo!19239 (regTwo!19238 r!17423)) (regOne!19238 (regTwo!19238 r!17423))))))))))))

(declare-fun b!2997401 () Bool)

(declare-fun e!1883430 () Regex!9363)

(declare-fun lt!1041574 () Regex!9363)

(assert (=> b!2997401 (= e!1883430 (Star!9363 lt!1041574))))

(declare-fun b!2997402 () Bool)

(declare-fun c!493103 () Bool)

(declare-fun lt!1041573 () Regex!9363)

(assert (=> b!2997402 (= c!493103 (isEmptyExpr!470 lt!1041573))))

(declare-fun e!1883427 () Regex!9363)

(declare-fun e!1883431 () Regex!9363)

(assert (=> b!2997402 (= e!1883427 e!1883431)))

(declare-fun e!1883423 () Regex!9363)

(declare-fun b!2997403 () Bool)

(assert (=> b!2997403 (= e!1883423 (ite c!492858 (regTwo!19239 (ite c!492730 (regTwo!19239 (regTwo!19238 r!17423)) (regOne!19238 (regTwo!19238 r!17423)))) (regOne!19238 (ite c!492730 (regTwo!19239 (regTwo!19238 r!17423)) (regOne!19238 (regTwo!19238 r!17423))))))))

(declare-fun bm!201045 () Bool)

(declare-fun call!201052 () Bool)

(assert (=> bm!201045 (= call!201052 (isEmptyLang!453 (ite c!493099 lt!1041575 lt!1041573)))))

(declare-fun bm!201046 () Bool)

(declare-fun call!201055 () Bool)

(declare-fun call!201051 () Bool)

(assert (=> bm!201046 (= call!201055 call!201051)))

(declare-fun lt!1041578 () Regex!9363)

(declare-fun bm!201047 () Bool)

(declare-fun lt!1041576 () Regex!9363)

(assert (=> bm!201047 (= call!201051 (isEmptyLang!453 (ite c!493101 lt!1041574 (ite c!493099 lt!1041578 lt!1041576))))))

(declare-fun b!2997404 () Bool)

(assert (=> b!2997404 (= c!493099 ((_ is Union!9363) (ite c!492858 (regTwo!19239 (ite c!492730 (regTwo!19239 (regTwo!19238 r!17423)) (regOne!19238 (regTwo!19238 r!17423)))) (regOne!19238 (ite c!492730 (regTwo!19239 (regTwo!19238 r!17423)) (regOne!19238 (regTwo!19238 r!17423)))))))))

(declare-fun e!1883434 () Regex!9363)

(declare-fun e!1883422 () Regex!9363)

(assert (=> b!2997404 (= e!1883434 e!1883422)))

(declare-fun b!2997405 () Bool)

(declare-fun e!1883426 () Regex!9363)

(assert (=> b!2997405 (= e!1883426 (Concat!14684 lt!1041573 lt!1041576))))

(declare-fun b!2997406 () Bool)

(assert (=> b!2997406 (= e!1883429 (Union!9363 lt!1041575 lt!1041578))))

(declare-fun b!2997407 () Bool)

(declare-fun c!493102 () Bool)

(assert (=> b!2997407 (= c!493102 call!201055)))

(declare-fun e!1883435 () Regex!9363)

(assert (=> b!2997407 (= e!1883435 e!1883429)))

(declare-fun b!2997408 () Bool)

(assert (=> b!2997408 (= e!1883427 EmptyLang!9363)))

(declare-fun b!2997409 () Bool)

(assert (=> b!2997409 (= e!1883431 lt!1041576)))

(declare-fun b!2997410 () Bool)

(assert (=> b!2997410 (= e!1883431 e!1883426)))

(declare-fun c!493109 () Bool)

(declare-fun call!201049 () Bool)

(assert (=> b!2997410 (= c!493109 call!201049)))

(declare-fun b!2997411 () Bool)

(assert (=> b!2997411 (= e!1883430 EmptyExpr!9363)))

(declare-fun b!2997412 () Bool)

(assert (=> b!2997412 (= e!1883426 lt!1041573)))

(declare-fun b!2997413 () Bool)

(assert (=> b!2997413 (= e!1883422 e!1883435)))

(declare-fun call!201053 () Regex!9363)

(assert (=> b!2997413 (= lt!1041575 call!201053)))

(declare-fun call!201054 () Regex!9363)

(assert (=> b!2997413 (= lt!1041578 call!201054)))

(declare-fun c!493100 () Bool)

(assert (=> b!2997413 (= c!493100 call!201052)))

(declare-fun bm!201048 () Bool)

(assert (=> bm!201048 (= call!201049 (isEmptyExpr!470 (ite c!493101 lt!1041574 lt!1041576)))))

(declare-fun lt!1041577 () Regex!9363)

(declare-fun e!1883433 () Bool)

(declare-fun b!2997414 () Bool)

(assert (=> b!2997414 (= e!1883433 (= (nullable!3026 lt!1041577) (nullable!3026 (ite c!492858 (regTwo!19239 (ite c!492730 (regTwo!19239 (regTwo!19238 r!17423)) (regOne!19238 (regTwo!19238 r!17423)))) (regOne!19238 (ite c!492730 (regTwo!19239 (regTwo!19238 r!17423)) (regOne!19238 (regTwo!19238 r!17423))))))))))

(declare-fun b!2997400 () Bool)

(declare-fun e!1883424 () Regex!9363)

(assert (=> b!2997400 (= e!1883424 e!1883423)))

(declare-fun c!493105 () Bool)

(assert (=> b!2997400 (= c!493105 ((_ is ElementMatch!9363) (ite c!492858 (regTwo!19239 (ite c!492730 (regTwo!19239 (regTwo!19238 r!17423)) (regOne!19238 (regTwo!19238 r!17423)))) (regOne!19238 (ite c!492730 (regTwo!19239 (regTwo!19238 r!17423)) (regOne!19238 (regTwo!19238 r!17423)))))))))

(declare-fun d!845685 () Bool)

(assert (=> d!845685 e!1883433))

(declare-fun res!1235888 () Bool)

(assert (=> d!845685 (=> (not res!1235888) (not e!1883433))))

(assert (=> d!845685 (= res!1235888 (validRegex!4096 lt!1041577))))

(assert (=> d!845685 (= lt!1041577 e!1883424)))

(declare-fun c!493107 () Bool)

(assert (=> d!845685 (= c!493107 ((_ is EmptyLang!9363) (ite c!492858 (regTwo!19239 (ite c!492730 (regTwo!19239 (regTwo!19238 r!17423)) (regOne!19238 (regTwo!19238 r!17423)))) (regOne!19238 (ite c!492730 (regTwo!19239 (regTwo!19238 r!17423)) (regOne!19238 (regTwo!19238 r!17423)))))))))

(assert (=> d!845685 (validRegex!4096 (ite c!492858 (regTwo!19239 (ite c!492730 (regTwo!19239 (regTwo!19238 r!17423)) (regOne!19238 (regTwo!19238 r!17423)))) (regOne!19238 (ite c!492730 (regTwo!19239 (regTwo!19238 r!17423)) (regOne!19238 (regTwo!19238 r!17423))))))))

(assert (=> d!845685 (= (simplify!354 (ite c!492858 (regTwo!19239 (ite c!492730 (regTwo!19239 (regTwo!19238 r!17423)) (regOne!19238 (regTwo!19238 r!17423)))) (regOne!19238 (ite c!492730 (regTwo!19239 (regTwo!19238 r!17423)) (regOne!19238 (regTwo!19238 r!17423)))))) lt!1041577)))

(declare-fun b!2997415 () Bool)

(declare-fun e!1883432 () Bool)

(assert (=> b!2997415 (= e!1883432 call!201055)))

(declare-fun bm!201049 () Bool)

(assert (=> bm!201049 (= call!201053 call!201050)))

(declare-fun b!2997416 () Bool)

(declare-fun c!493106 () Bool)

(declare-fun e!1883425 () Bool)

(assert (=> b!2997416 (= c!493106 e!1883425)))

(declare-fun res!1235887 () Bool)

(assert (=> b!2997416 (=> res!1235887 e!1883425)))

(assert (=> b!2997416 (= res!1235887 call!201051)))

(assert (=> b!2997416 (= lt!1041574 call!201050)))

(assert (=> b!2997416 (= e!1883434 e!1883430)))

(declare-fun b!2997417 () Bool)

(assert (=> b!2997417 (= e!1883425 call!201049)))

(declare-fun b!2997418 () Bool)

(assert (=> b!2997418 (= e!1883424 EmptyLang!9363)))

(declare-fun b!2997419 () Bool)

(assert (=> b!2997419 (= e!1883422 e!1883427)))

(assert (=> b!2997419 (= lt!1041573 call!201054)))

(assert (=> b!2997419 (= lt!1041576 call!201053)))

(declare-fun res!1235886 () Bool)

(assert (=> b!2997419 (= res!1235886 call!201052)))

(assert (=> b!2997419 (=> res!1235886 e!1883432)))

(declare-fun c!493104 () Bool)

(assert (=> b!2997419 (= c!493104 e!1883432)))

(declare-fun b!2997420 () Bool)

(declare-fun e!1883428 () Regex!9363)

(assert (=> b!2997420 (= e!1883428 e!1883434)))

(assert (=> b!2997420 (= c!493101 ((_ is Star!9363) (ite c!492858 (regTwo!19239 (ite c!492730 (regTwo!19239 (regTwo!19238 r!17423)) (regOne!19238 (regTwo!19238 r!17423)))) (regOne!19238 (ite c!492730 (regTwo!19239 (regTwo!19238 r!17423)) (regOne!19238 (regTwo!19238 r!17423)))))))))

(declare-fun b!2997421 () Bool)

(assert (=> b!2997421 (= e!1883428 EmptyExpr!9363)))

(declare-fun b!2997422 () Bool)

(declare-fun c!493108 () Bool)

(assert (=> b!2997422 (= c!493108 ((_ is EmptyExpr!9363) (ite c!492858 (regTwo!19239 (ite c!492730 (regTwo!19239 (regTwo!19238 r!17423)) (regOne!19238 (regTwo!19238 r!17423)))) (regOne!19238 (ite c!492730 (regTwo!19239 (regTwo!19238 r!17423)) (regOne!19238 (regTwo!19238 r!17423)))))))))

(assert (=> b!2997422 (= e!1883423 e!1883428)))

(declare-fun b!2997423 () Bool)

(assert (=> b!2997423 (= e!1883435 lt!1041578)))

(declare-fun bm!201050 () Bool)

(assert (=> bm!201050 (= call!201054 (simplify!354 (ite c!493099 (regTwo!19239 (ite c!492858 (regTwo!19239 (ite c!492730 (regTwo!19239 (regTwo!19238 r!17423)) (regOne!19238 (regTwo!19238 r!17423)))) (regOne!19238 (ite c!492730 (regTwo!19239 (regTwo!19238 r!17423)) (regOne!19238 (regTwo!19238 r!17423)))))) (regOne!19238 (ite c!492858 (regTwo!19239 (ite c!492730 (regTwo!19239 (regTwo!19238 r!17423)) (regOne!19238 (regTwo!19238 r!17423)))) (regOne!19238 (ite c!492730 (regTwo!19239 (regTwo!19238 r!17423)) (regOne!19238 (regTwo!19238 r!17423)))))))))))

(assert (= (and d!845685 c!493107) b!2997418))

(assert (= (and d!845685 (not c!493107)) b!2997400))

(assert (= (and b!2997400 c!493105) b!2997403))

(assert (= (and b!2997400 (not c!493105)) b!2997422))

(assert (= (and b!2997422 c!493108) b!2997421))

(assert (= (and b!2997422 (not c!493108)) b!2997420))

(assert (= (and b!2997420 c!493101) b!2997416))

(assert (= (and b!2997420 (not c!493101)) b!2997404))

(assert (= (and b!2997416 (not res!1235887)) b!2997417))

(assert (= (and b!2997416 c!493106) b!2997411))

(assert (= (and b!2997416 (not c!493106)) b!2997401))

(assert (= (and b!2997404 c!493099) b!2997413))

(assert (= (and b!2997404 (not c!493099)) b!2997419))

(assert (= (and b!2997413 c!493100) b!2997423))

(assert (= (and b!2997413 (not c!493100)) b!2997407))

(assert (= (and b!2997407 c!493102) b!2997399))

(assert (= (and b!2997407 (not c!493102)) b!2997406))

(assert (= (and b!2997419 (not res!1235886)) b!2997415))

(assert (= (and b!2997419 c!493104) b!2997408))

(assert (= (and b!2997419 (not c!493104)) b!2997402))

(assert (= (and b!2997402 c!493103) b!2997409))

(assert (= (and b!2997402 (not c!493103)) b!2997410))

(assert (= (and b!2997410 c!493109) b!2997412))

(assert (= (and b!2997410 (not c!493109)) b!2997405))

(assert (= (or b!2997413 b!2997419) bm!201049))

(assert (= (or b!2997413 b!2997419) bm!201050))

(assert (= (or b!2997413 b!2997419) bm!201045))

(assert (= (or b!2997407 b!2997415) bm!201046))

(assert (= (or b!2997417 b!2997410) bm!201048))

(assert (= (or b!2997416 bm!201049) bm!201044))

(assert (= (or b!2997416 bm!201046) bm!201047))

(assert (= (and d!845685 res!1235888) b!2997414))

(declare-fun m!3350639 () Bool)

(assert (=> bm!201045 m!3350639))

(declare-fun m!3350641 () Bool)

(assert (=> b!2997414 m!3350641))

(declare-fun m!3350643 () Bool)

(assert (=> b!2997414 m!3350643))

(declare-fun m!3350645 () Bool)

(assert (=> bm!201050 m!3350645))

(declare-fun m!3350647 () Bool)

(assert (=> bm!201044 m!3350647))

(declare-fun m!3350649 () Bool)

(assert (=> bm!201048 m!3350649))

(declare-fun m!3350651 () Bool)

(assert (=> d!845685 m!3350651))

(declare-fun m!3350653 () Bool)

(assert (=> d!845685 m!3350653))

(declare-fun m!3350655 () Bool)

(assert (=> b!2997402 m!3350655))

(declare-fun m!3350657 () Bool)

(assert (=> bm!201047 m!3350657))

(assert (=> bm!200859 d!845685))

(declare-fun d!845687 () Bool)

(assert (=> d!845687 (= (isEmptyExpr!470 (ite c!492921 lt!1041516 lt!1041518)) ((_ is EmptyExpr!9363) (ite c!492921 lt!1041516 lt!1041518)))))

(assert (=> bm!200903 d!845687))

(declare-fun b!2997424 () Bool)

(declare-fun e!1883440 () Bool)

(declare-fun call!201058 () Bool)

(assert (=> b!2997424 (= e!1883440 call!201058)))

(declare-fun b!2997425 () Bool)

(declare-fun e!1883438 () Bool)

(declare-fun call!201056 () Bool)

(assert (=> b!2997425 (= e!1883438 call!201056)))

(declare-fun c!493111 () Bool)

(declare-fun bm!201051 () Bool)

(declare-fun c!493110 () Bool)

(assert (=> bm!201051 (= call!201058 (validRegex!4096 (ite c!493111 (reg!9692 (ite c!492910 (regTwo!19239 (regOne!19238 r!17423)) (regOne!19238 (regOne!19238 r!17423)))) (ite c!493110 (regOne!19239 (ite c!492910 (regTwo!19239 (regOne!19238 r!17423)) (regOne!19238 (regOne!19238 r!17423)))) (regTwo!19238 (ite c!492910 (regTwo!19239 (regOne!19238 r!17423)) (regOne!19238 (regOne!19238 r!17423))))))))))

(declare-fun b!2997427 () Bool)

(declare-fun e!1883441 () Bool)

(declare-fun call!201057 () Bool)

(assert (=> b!2997427 (= e!1883441 call!201057)))

(declare-fun bm!201052 () Bool)

(assert (=> bm!201052 (= call!201057 call!201058)))

(declare-fun b!2997428 () Bool)

(declare-fun e!1883437 () Bool)

(declare-fun e!1883436 () Bool)

(assert (=> b!2997428 (= e!1883437 e!1883436)))

(assert (=> b!2997428 (= c!493110 ((_ is Union!9363) (ite c!492910 (regTwo!19239 (regOne!19238 r!17423)) (regOne!19238 (regOne!19238 r!17423)))))))

(declare-fun b!2997429 () Bool)

(assert (=> b!2997429 (= e!1883437 e!1883440)))

(declare-fun res!1235892 () Bool)

(assert (=> b!2997429 (= res!1235892 (not (nullable!3026 (reg!9692 (ite c!492910 (regTwo!19239 (regOne!19238 r!17423)) (regOne!19238 (regOne!19238 r!17423)))))))))

(assert (=> b!2997429 (=> (not res!1235892) (not e!1883440))))

(declare-fun b!2997430 () Bool)

(declare-fun res!1235889 () Bool)

(declare-fun e!1883439 () Bool)

(assert (=> b!2997430 (=> res!1235889 e!1883439)))

(assert (=> b!2997430 (= res!1235889 (not ((_ is Concat!14684) (ite c!492910 (regTwo!19239 (regOne!19238 r!17423)) (regOne!19238 (regOne!19238 r!17423))))))))

(assert (=> b!2997430 (= e!1883436 e!1883439)))

(declare-fun b!2997431 () Bool)

(assert (=> b!2997431 (= e!1883439 e!1883441)))

(declare-fun res!1235890 () Bool)

(assert (=> b!2997431 (=> (not res!1235890) (not e!1883441))))

(assert (=> b!2997431 (= res!1235890 call!201056)))

(declare-fun bm!201053 () Bool)

(assert (=> bm!201053 (= call!201056 (validRegex!4096 (ite c!493110 (regTwo!19239 (ite c!492910 (regTwo!19239 (regOne!19238 r!17423)) (regOne!19238 (regOne!19238 r!17423)))) (regOne!19238 (ite c!492910 (regTwo!19239 (regOne!19238 r!17423)) (regOne!19238 (regOne!19238 r!17423)))))))))

(declare-fun b!2997432 () Bool)

(declare-fun e!1883442 () Bool)

(assert (=> b!2997432 (= e!1883442 e!1883437)))

(assert (=> b!2997432 (= c!493111 ((_ is Star!9363) (ite c!492910 (regTwo!19239 (regOne!19238 r!17423)) (regOne!19238 (regOne!19238 r!17423)))))))

(declare-fun d!845689 () Bool)

(declare-fun res!1235891 () Bool)

(assert (=> d!845689 (=> res!1235891 e!1883442)))

(assert (=> d!845689 (= res!1235891 ((_ is ElementMatch!9363) (ite c!492910 (regTwo!19239 (regOne!19238 r!17423)) (regOne!19238 (regOne!19238 r!17423)))))))

(assert (=> d!845689 (= (validRegex!4096 (ite c!492910 (regTwo!19239 (regOne!19238 r!17423)) (regOne!19238 (regOne!19238 r!17423)))) e!1883442)))

(declare-fun b!2997426 () Bool)

(declare-fun res!1235893 () Bool)

(assert (=> b!2997426 (=> (not res!1235893) (not e!1883438))))

(assert (=> b!2997426 (= res!1235893 call!201057)))

(assert (=> b!2997426 (= e!1883436 e!1883438)))

(assert (= (and d!845689 (not res!1235891)) b!2997432))

(assert (= (and b!2997432 c!493111) b!2997429))

(assert (= (and b!2997432 (not c!493111)) b!2997428))

(assert (= (and b!2997429 res!1235892) b!2997424))

(assert (= (and b!2997428 c!493110) b!2997426))

(assert (= (and b!2997428 (not c!493110)) b!2997430))

(assert (= (and b!2997426 res!1235893) b!2997425))

(assert (= (and b!2997430 (not res!1235889)) b!2997431))

(assert (= (and b!2997431 res!1235890) b!2997427))

(assert (= (or b!2997426 b!2997427) bm!201052))

(assert (= (or b!2997425 b!2997431) bm!201053))

(assert (= (or b!2997424 bm!201052) bm!201051))

(declare-fun m!3350659 () Bool)

(assert (=> bm!201051 m!3350659))

(declare-fun m!3350661 () Bool)

(assert (=> b!2997429 m!3350661))

(declare-fun m!3350663 () Bool)

(assert (=> bm!201053 m!3350663))

(assert (=> bm!200894 d!845689))

(declare-fun b!2997433 () Bool)

(declare-fun e!1883447 () Bool)

(declare-fun call!201061 () Bool)

(assert (=> b!2997433 (= e!1883447 call!201061)))

(declare-fun b!2997434 () Bool)

(declare-fun e!1883445 () Bool)

(declare-fun call!201059 () Bool)

(assert (=> b!2997434 (= e!1883445 call!201059)))

(declare-fun c!493113 () Bool)

(declare-fun bm!201054 () Bool)

(declare-fun c!493112 () Bool)

(assert (=> bm!201054 (= call!201061 (validRegex!4096 (ite c!493113 (reg!9692 (ite c!492913 (reg!9692 (regTwo!19238 r!17423)) (ite c!492912 (regOne!19239 (regTwo!19238 r!17423)) (regTwo!19238 (regTwo!19238 r!17423))))) (ite c!493112 (regOne!19239 (ite c!492913 (reg!9692 (regTwo!19238 r!17423)) (ite c!492912 (regOne!19239 (regTwo!19238 r!17423)) (regTwo!19238 (regTwo!19238 r!17423))))) (regTwo!19238 (ite c!492913 (reg!9692 (regTwo!19238 r!17423)) (ite c!492912 (regOne!19239 (regTwo!19238 r!17423)) (regTwo!19238 (regTwo!19238 r!17423)))))))))))

(declare-fun b!2997436 () Bool)

(declare-fun e!1883448 () Bool)

(declare-fun call!201060 () Bool)

(assert (=> b!2997436 (= e!1883448 call!201060)))

(declare-fun bm!201055 () Bool)

(assert (=> bm!201055 (= call!201060 call!201061)))

(declare-fun b!2997437 () Bool)

(declare-fun e!1883444 () Bool)

(declare-fun e!1883443 () Bool)

(assert (=> b!2997437 (= e!1883444 e!1883443)))

(assert (=> b!2997437 (= c!493112 ((_ is Union!9363) (ite c!492913 (reg!9692 (regTwo!19238 r!17423)) (ite c!492912 (regOne!19239 (regTwo!19238 r!17423)) (regTwo!19238 (regTwo!19238 r!17423))))))))

(declare-fun b!2997438 () Bool)

(assert (=> b!2997438 (= e!1883444 e!1883447)))

(declare-fun res!1235897 () Bool)

(assert (=> b!2997438 (= res!1235897 (not (nullable!3026 (reg!9692 (ite c!492913 (reg!9692 (regTwo!19238 r!17423)) (ite c!492912 (regOne!19239 (regTwo!19238 r!17423)) (regTwo!19238 (regTwo!19238 r!17423))))))))))

(assert (=> b!2997438 (=> (not res!1235897) (not e!1883447))))

(declare-fun b!2997439 () Bool)

(declare-fun res!1235894 () Bool)

(declare-fun e!1883446 () Bool)

(assert (=> b!2997439 (=> res!1235894 e!1883446)))

(assert (=> b!2997439 (= res!1235894 (not ((_ is Concat!14684) (ite c!492913 (reg!9692 (regTwo!19238 r!17423)) (ite c!492912 (regOne!19239 (regTwo!19238 r!17423)) (regTwo!19238 (regTwo!19238 r!17423)))))))))

(assert (=> b!2997439 (= e!1883443 e!1883446)))

(declare-fun b!2997440 () Bool)

(assert (=> b!2997440 (= e!1883446 e!1883448)))

(declare-fun res!1235895 () Bool)

(assert (=> b!2997440 (=> (not res!1235895) (not e!1883448))))

(assert (=> b!2997440 (= res!1235895 call!201059)))

(declare-fun bm!201056 () Bool)

(assert (=> bm!201056 (= call!201059 (validRegex!4096 (ite c!493112 (regTwo!19239 (ite c!492913 (reg!9692 (regTwo!19238 r!17423)) (ite c!492912 (regOne!19239 (regTwo!19238 r!17423)) (regTwo!19238 (regTwo!19238 r!17423))))) (regOne!19238 (ite c!492913 (reg!9692 (regTwo!19238 r!17423)) (ite c!492912 (regOne!19239 (regTwo!19238 r!17423)) (regTwo!19238 (regTwo!19238 r!17423))))))))))

(declare-fun b!2997441 () Bool)

(declare-fun e!1883449 () Bool)

(assert (=> b!2997441 (= e!1883449 e!1883444)))

(assert (=> b!2997441 (= c!493113 ((_ is Star!9363) (ite c!492913 (reg!9692 (regTwo!19238 r!17423)) (ite c!492912 (regOne!19239 (regTwo!19238 r!17423)) (regTwo!19238 (regTwo!19238 r!17423))))))))

(declare-fun d!845691 () Bool)

(declare-fun res!1235896 () Bool)

(assert (=> d!845691 (=> res!1235896 e!1883449)))

(assert (=> d!845691 (= res!1235896 ((_ is ElementMatch!9363) (ite c!492913 (reg!9692 (regTwo!19238 r!17423)) (ite c!492912 (regOne!19239 (regTwo!19238 r!17423)) (regTwo!19238 (regTwo!19238 r!17423))))))))

(assert (=> d!845691 (= (validRegex!4096 (ite c!492913 (reg!9692 (regTwo!19238 r!17423)) (ite c!492912 (regOne!19239 (regTwo!19238 r!17423)) (regTwo!19238 (regTwo!19238 r!17423))))) e!1883449)))

(declare-fun b!2997435 () Bool)

(declare-fun res!1235898 () Bool)

(assert (=> b!2997435 (=> (not res!1235898) (not e!1883445))))

(assert (=> b!2997435 (= res!1235898 call!201060)))

(assert (=> b!2997435 (= e!1883443 e!1883445)))

(assert (= (and d!845691 (not res!1235896)) b!2997441))

(assert (= (and b!2997441 c!493113) b!2997438))

(assert (= (and b!2997441 (not c!493113)) b!2997437))

(assert (= (and b!2997438 res!1235897) b!2997433))

(assert (= (and b!2997437 c!493112) b!2997435))

(assert (= (and b!2997437 (not c!493112)) b!2997439))

(assert (= (and b!2997435 res!1235898) b!2997434))

(assert (= (and b!2997439 (not res!1235894)) b!2997440))

(assert (= (and b!2997440 res!1235895) b!2997436))

(assert (= (or b!2997435 b!2997436) bm!201055))

(assert (= (or b!2997434 b!2997440) bm!201056))

(assert (= (or b!2997433 bm!201055) bm!201054))

(declare-fun m!3350665 () Bool)

(assert (=> bm!201054 m!3350665))

(declare-fun m!3350667 () Bool)

(assert (=> b!2997438 m!3350667))

(declare-fun m!3350669 () Bool)

(assert (=> bm!201056 m!3350669))

(assert (=> bm!200895 d!845691))

(assert (=> b!2996673 d!845473))

(assert (=> b!2996449 d!845645))

(declare-fun b!2997442 () Bool)

(declare-fun res!1235904 () Bool)

(declare-fun e!1883455 () Bool)

(assert (=> b!2997442 (=> res!1235904 e!1883455)))

(assert (=> b!2997442 (= res!1235904 (not (isEmpty!19378 (tail!4909 (tail!4909 (tail!4909 s!11993))))))))

(declare-fun b!2997443 () Bool)

(declare-fun e!1883456 () Bool)

(declare-fun e!1883450 () Bool)

(assert (=> b!2997443 (= e!1883456 e!1883450)))

(declare-fun c!493115 () Bool)

(assert (=> b!2997443 (= c!493115 ((_ is EmptyLang!9363) (derivativeStep!2624 (derivativeStep!2624 (regTwo!19238 r!17423) (head!6683 s!11993)) (head!6683 (tail!4909 s!11993)))))))

(declare-fun b!2997444 () Bool)

(declare-fun e!1883451 () Bool)

(declare-fun e!1883454 () Bool)

(assert (=> b!2997444 (= e!1883451 e!1883454)))

(declare-fun res!1235903 () Bool)

(assert (=> b!2997444 (=> (not res!1235903) (not e!1883454))))

(declare-fun lt!1041579 () Bool)

(assert (=> b!2997444 (= res!1235903 (not lt!1041579))))

(declare-fun b!2997445 () Bool)

(declare-fun e!1883452 () Bool)

(assert (=> b!2997445 (= e!1883452 (matchR!4245 (derivativeStep!2624 (derivativeStep!2624 (derivativeStep!2624 (regTwo!19238 r!17423) (head!6683 s!11993)) (head!6683 (tail!4909 s!11993))) (head!6683 (tail!4909 (tail!4909 s!11993)))) (tail!4909 (tail!4909 (tail!4909 s!11993)))))))

(declare-fun b!2997446 () Bool)

(assert (=> b!2997446 (= e!1883455 (not (= (head!6683 (tail!4909 (tail!4909 s!11993))) (c!492681 (derivativeStep!2624 (derivativeStep!2624 (regTwo!19238 r!17423) (head!6683 s!11993)) (head!6683 (tail!4909 s!11993)))))))))

(declare-fun b!2997447 () Bool)

(declare-fun res!1235905 () Bool)

(declare-fun e!1883453 () Bool)

(assert (=> b!2997447 (=> (not res!1235905) (not e!1883453))))

(declare-fun call!201062 () Bool)

(assert (=> b!2997447 (= res!1235905 (not call!201062))))

(declare-fun b!2997448 () Bool)

(assert (=> b!2997448 (= e!1883452 (nullable!3026 (derivativeStep!2624 (derivativeStep!2624 (regTwo!19238 r!17423) (head!6683 s!11993)) (head!6683 (tail!4909 s!11993)))))))

(declare-fun b!2997450 () Bool)

(declare-fun res!1235901 () Bool)

(assert (=> b!2997450 (=> res!1235901 e!1883451)))

(assert (=> b!2997450 (= res!1235901 e!1883453)))

(declare-fun res!1235902 () Bool)

(assert (=> b!2997450 (=> (not res!1235902) (not e!1883453))))

(assert (=> b!2997450 (= res!1235902 lt!1041579)))

(declare-fun b!2997451 () Bool)

(assert (=> b!2997451 (= e!1883456 (= lt!1041579 call!201062))))

(declare-fun b!2997452 () Bool)

(declare-fun res!1235900 () Bool)

(assert (=> b!2997452 (=> (not res!1235900) (not e!1883453))))

(assert (=> b!2997452 (= res!1235900 (isEmpty!19378 (tail!4909 (tail!4909 (tail!4909 s!11993)))))))

(declare-fun d!845693 () Bool)

(assert (=> d!845693 e!1883456))

(declare-fun c!493114 () Bool)

(assert (=> d!845693 (= c!493114 ((_ is EmptyExpr!9363) (derivativeStep!2624 (derivativeStep!2624 (regTwo!19238 r!17423) (head!6683 s!11993)) (head!6683 (tail!4909 s!11993)))))))

(assert (=> d!845693 (= lt!1041579 e!1883452)))

(declare-fun c!493116 () Bool)

(assert (=> d!845693 (= c!493116 (isEmpty!19378 (tail!4909 (tail!4909 s!11993))))))

(assert (=> d!845693 (validRegex!4096 (derivativeStep!2624 (derivativeStep!2624 (regTwo!19238 r!17423) (head!6683 s!11993)) (head!6683 (tail!4909 s!11993))))))

(assert (=> d!845693 (= (matchR!4245 (derivativeStep!2624 (derivativeStep!2624 (regTwo!19238 r!17423) (head!6683 s!11993)) (head!6683 (tail!4909 s!11993))) (tail!4909 (tail!4909 s!11993))) lt!1041579)))

(declare-fun b!2997449 () Bool)

(assert (=> b!2997449 (= e!1883454 e!1883455)))

(declare-fun res!1235899 () Bool)

(assert (=> b!2997449 (=> res!1235899 e!1883455)))

(assert (=> b!2997449 (= res!1235899 call!201062)))

(declare-fun b!2997453 () Bool)

(assert (=> b!2997453 (= e!1883453 (= (head!6683 (tail!4909 (tail!4909 s!11993))) (c!492681 (derivativeStep!2624 (derivativeStep!2624 (regTwo!19238 r!17423) (head!6683 s!11993)) (head!6683 (tail!4909 s!11993))))))))

(declare-fun b!2997454 () Bool)

(assert (=> b!2997454 (= e!1883450 (not lt!1041579))))

(declare-fun bm!201057 () Bool)

(assert (=> bm!201057 (= call!201062 (isEmpty!19378 (tail!4909 (tail!4909 s!11993))))))

(declare-fun b!2997455 () Bool)

(declare-fun res!1235906 () Bool)

(assert (=> b!2997455 (=> res!1235906 e!1883451)))

(assert (=> b!2997455 (= res!1235906 (not ((_ is ElementMatch!9363) (derivativeStep!2624 (derivativeStep!2624 (regTwo!19238 r!17423) (head!6683 s!11993)) (head!6683 (tail!4909 s!11993))))))))

(assert (=> b!2997455 (= e!1883450 e!1883451)))

(assert (= (and d!845693 c!493116) b!2997448))

(assert (= (and d!845693 (not c!493116)) b!2997445))

(assert (= (and d!845693 c!493114) b!2997451))

(assert (= (and d!845693 (not c!493114)) b!2997443))

(assert (= (and b!2997443 c!493115) b!2997454))

(assert (= (and b!2997443 (not c!493115)) b!2997455))

(assert (= (and b!2997455 (not res!1235906)) b!2997450))

(assert (= (and b!2997450 res!1235902) b!2997447))

(assert (= (and b!2997447 res!1235905) b!2997452))

(assert (= (and b!2997452 res!1235900) b!2997453))

(assert (= (and b!2997450 (not res!1235901)) b!2997444))

(assert (= (and b!2997444 res!1235903) b!2997449))

(assert (= (and b!2997449 (not res!1235899)) b!2997442))

(assert (= (and b!2997442 (not res!1235904)) b!2997446))

(assert (= (or b!2997451 b!2997447 b!2997449) bm!201057))

(assert (=> b!2997442 m!3350099))

(assert (=> b!2997442 m!3350521))

(assert (=> b!2997442 m!3350521))

(assert (=> b!2997442 m!3350523))

(assert (=> b!2997445 m!3350099))

(assert (=> b!2997445 m!3350525))

(assert (=> b!2997445 m!3350175))

(assert (=> b!2997445 m!3350525))

(declare-fun m!3350671 () Bool)

(assert (=> b!2997445 m!3350671))

(assert (=> b!2997445 m!3350099))

(assert (=> b!2997445 m!3350521))

(assert (=> b!2997445 m!3350671))

(assert (=> b!2997445 m!3350521))

(declare-fun m!3350673 () Bool)

(assert (=> b!2997445 m!3350673))

(assert (=> b!2997452 m!3350099))

(assert (=> b!2997452 m!3350521))

(assert (=> b!2997452 m!3350521))

(assert (=> b!2997452 m!3350523))

(assert (=> b!2997448 m!3350175))

(declare-fun m!3350675 () Bool)

(assert (=> b!2997448 m!3350675))

(assert (=> d!845693 m!3350099))

(assert (=> d!845693 m!3350101))

(assert (=> d!845693 m!3350175))

(declare-fun m!3350677 () Bool)

(assert (=> d!845693 m!3350677))

(assert (=> bm!201057 m!3350099))

(assert (=> bm!201057 m!3350101))

(assert (=> b!2997453 m!3350099))

(assert (=> b!2997453 m!3350525))

(assert (=> b!2997446 m!3350099))

(assert (=> b!2997446 m!3350525))

(assert (=> b!2996574 d!845693))

(declare-fun b!2997456 () Bool)

(declare-fun e!1883458 () Regex!9363)

(declare-fun e!1883459 () Regex!9363)

(assert (=> b!2997456 (= e!1883458 e!1883459)))

(declare-fun c!493121 () Bool)

(assert (=> b!2997456 (= c!493121 ((_ is ElementMatch!9363) (derivativeStep!2624 (regTwo!19238 r!17423) (head!6683 s!11993))))))

(declare-fun b!2997457 () Bool)

(declare-fun c!493118 () Bool)

(assert (=> b!2997457 (= c!493118 (nullable!3026 (regOne!19238 (derivativeStep!2624 (regTwo!19238 r!17423) (head!6683 s!11993)))))))

(declare-fun e!1883460 () Regex!9363)

(declare-fun e!1883461 () Regex!9363)

(assert (=> b!2997457 (= e!1883460 e!1883461)))

(declare-fun b!2997458 () Bool)

(assert (=> b!2997458 (= e!1883458 EmptyLang!9363)))

(declare-fun call!201066 () Regex!9363)

(declare-fun b!2997459 () Bool)

(assert (=> b!2997459 (= e!1883461 (Union!9363 (Concat!14684 call!201066 (regTwo!19238 (derivativeStep!2624 (regTwo!19238 r!17423) (head!6683 s!11993)))) EmptyLang!9363))))

(declare-fun b!2997460 () Bool)

(declare-fun call!201064 () Regex!9363)

(assert (=> b!2997460 (= e!1883460 (Concat!14684 call!201064 (derivativeStep!2624 (regTwo!19238 r!17423) (head!6683 s!11993))))))

(declare-fun b!2997461 () Bool)

(declare-fun c!493120 () Bool)

(assert (=> b!2997461 (= c!493120 ((_ is Union!9363) (derivativeStep!2624 (regTwo!19238 r!17423) (head!6683 s!11993))))))

(declare-fun e!1883457 () Regex!9363)

(assert (=> b!2997461 (= e!1883459 e!1883457)))

(declare-fun call!201063 () Regex!9363)

(declare-fun bm!201059 () Bool)

(declare-fun c!493119 () Bool)

(assert (=> bm!201059 (= call!201063 (derivativeStep!2624 (ite c!493120 (regTwo!19239 (derivativeStep!2624 (regTwo!19238 r!17423) (head!6683 s!11993))) (ite c!493119 (reg!9692 (derivativeStep!2624 (regTwo!19238 r!17423) (head!6683 s!11993))) (regOne!19238 (derivativeStep!2624 (regTwo!19238 r!17423) (head!6683 s!11993))))) (head!6683 (tail!4909 s!11993))))))

(declare-fun bm!201060 () Bool)

(assert (=> bm!201060 (= call!201066 call!201064)))

(declare-fun b!2997462 () Bool)

(assert (=> b!2997462 (= e!1883459 (ite (= (head!6683 (tail!4909 s!11993)) (c!492681 (derivativeStep!2624 (regTwo!19238 r!17423) (head!6683 s!11993)))) EmptyExpr!9363 EmptyLang!9363))))

(declare-fun call!201065 () Regex!9363)

(declare-fun bm!201061 () Bool)

(assert (=> bm!201061 (= call!201065 (derivativeStep!2624 (ite c!493120 (regOne!19239 (derivativeStep!2624 (regTwo!19238 r!17423) (head!6683 s!11993))) (regTwo!19238 (derivativeStep!2624 (regTwo!19238 r!17423) (head!6683 s!11993)))) (head!6683 (tail!4909 s!11993))))))

(declare-fun b!2997463 () Bool)

(assert (=> b!2997463 (= e!1883461 (Union!9363 (Concat!14684 call!201066 (regTwo!19238 (derivativeStep!2624 (regTwo!19238 r!17423) (head!6683 s!11993)))) call!201065))))

(declare-fun d!845695 () Bool)

(declare-fun lt!1041580 () Regex!9363)

(assert (=> d!845695 (validRegex!4096 lt!1041580)))

(assert (=> d!845695 (= lt!1041580 e!1883458)))

(declare-fun c!493117 () Bool)

(assert (=> d!845695 (= c!493117 (or ((_ is EmptyExpr!9363) (derivativeStep!2624 (regTwo!19238 r!17423) (head!6683 s!11993))) ((_ is EmptyLang!9363) (derivativeStep!2624 (regTwo!19238 r!17423) (head!6683 s!11993)))))))

(assert (=> d!845695 (validRegex!4096 (derivativeStep!2624 (regTwo!19238 r!17423) (head!6683 s!11993)))))

(assert (=> d!845695 (= (derivativeStep!2624 (derivativeStep!2624 (regTwo!19238 r!17423) (head!6683 s!11993)) (head!6683 (tail!4909 s!11993))) lt!1041580)))

(declare-fun bm!201058 () Bool)

(assert (=> bm!201058 (= call!201064 call!201063)))

(declare-fun b!2997464 () Bool)

(assert (=> b!2997464 (= e!1883457 e!1883460)))

(assert (=> b!2997464 (= c!493119 ((_ is Star!9363) (derivativeStep!2624 (regTwo!19238 r!17423) (head!6683 s!11993))))))

(declare-fun b!2997465 () Bool)

(assert (=> b!2997465 (= e!1883457 (Union!9363 call!201065 call!201063))))

(assert (= (and d!845695 c!493117) b!2997458))

(assert (= (and d!845695 (not c!493117)) b!2997456))

(assert (= (and b!2997456 c!493121) b!2997462))

(assert (= (and b!2997456 (not c!493121)) b!2997461))

(assert (= (and b!2997461 c!493120) b!2997465))

(assert (= (and b!2997461 (not c!493120)) b!2997464))

(assert (= (and b!2997464 c!493119) b!2997460))

(assert (= (and b!2997464 (not c!493119)) b!2997457))

(assert (= (and b!2997457 c!493118) b!2997463))

(assert (= (and b!2997457 (not c!493118)) b!2997459))

(assert (= (or b!2997463 b!2997459) bm!201060))

(assert (= (or b!2997460 bm!201060) bm!201058))

(assert (= (or b!2997465 bm!201058) bm!201059))

(assert (= (or b!2997465 b!2997463) bm!201061))

(declare-fun m!3350679 () Bool)

(assert (=> b!2997457 m!3350679))

(assert (=> bm!201059 m!3350103))

(declare-fun m!3350681 () Bool)

(assert (=> bm!201059 m!3350681))

(assert (=> bm!201061 m!3350103))

(declare-fun m!3350683 () Bool)

(assert (=> bm!201061 m!3350683))

(declare-fun m!3350685 () Bool)

(assert (=> d!845695 m!3350685))

(assert (=> d!845695 m!3350015))

(assert (=> d!845695 m!3350181))

(assert (=> b!2996574 d!845695))

(assert (=> b!2996574 d!845645))

(assert (=> b!2996574 d!845647))

(declare-fun b!2997466 () Bool)

(declare-fun e!1883464 () Bool)

(declare-fun e!1883465 () Bool)

(assert (=> b!2997466 (= e!1883464 e!1883465)))

(declare-fun res!1235910 () Bool)

(declare-fun call!201067 () Bool)

(assert (=> b!2997466 (= res!1235910 call!201067)))

(assert (=> b!2997466 (=> res!1235910 e!1883465)))

(declare-fun b!2997467 () Bool)

(declare-fun e!1883466 () Bool)

(assert (=> b!2997467 (= e!1883464 e!1883466)))

(declare-fun res!1235907 () Bool)

(assert (=> b!2997467 (= res!1235907 call!201067)))

(assert (=> b!2997467 (=> (not res!1235907) (not e!1883466))))

(declare-fun bm!201062 () Bool)

(declare-fun call!201068 () Bool)

(declare-fun c!493122 () Bool)

(assert (=> bm!201062 (= call!201068 (nullable!3026 (ite c!493122 (regTwo!19239 lt!1041444) (regTwo!19238 lt!1041444))))))

(declare-fun b!2997468 () Bool)

(declare-fun e!1883463 () Bool)

(declare-fun e!1883467 () Bool)

(assert (=> b!2997468 (= e!1883463 e!1883467)))

(declare-fun res!1235909 () Bool)

(assert (=> b!2997468 (=> res!1235909 e!1883467)))

(assert (=> b!2997468 (= res!1235909 ((_ is Star!9363) lt!1041444))))

(declare-fun b!2997469 () Bool)

(assert (=> b!2997469 (= e!1883465 call!201068)))

(declare-fun d!845697 () Bool)

(declare-fun res!1235908 () Bool)

(declare-fun e!1883462 () Bool)

(assert (=> d!845697 (=> res!1235908 e!1883462)))

(assert (=> d!845697 (= res!1235908 ((_ is EmptyExpr!9363) lt!1041444))))

(assert (=> d!845697 (= (nullableFct!860 lt!1041444) e!1883462)))

(declare-fun bm!201063 () Bool)

(assert (=> bm!201063 (= call!201067 (nullable!3026 (ite c!493122 (regOne!19239 lt!1041444) (regOne!19238 lt!1041444))))))

(declare-fun b!2997470 () Bool)

(assert (=> b!2997470 (= e!1883467 e!1883464)))

(assert (=> b!2997470 (= c!493122 ((_ is Union!9363) lt!1041444))))

(declare-fun b!2997471 () Bool)

(assert (=> b!2997471 (= e!1883462 e!1883463)))

(declare-fun res!1235911 () Bool)

(assert (=> b!2997471 (=> (not res!1235911) (not e!1883463))))

(assert (=> b!2997471 (= res!1235911 (and (not ((_ is EmptyLang!9363) lt!1041444)) (not ((_ is ElementMatch!9363) lt!1041444))))))

(declare-fun b!2997472 () Bool)

(assert (=> b!2997472 (= e!1883466 call!201068)))

(assert (= (and d!845697 (not res!1235908)) b!2997471))

(assert (= (and b!2997471 res!1235911) b!2997468))

(assert (= (and b!2997468 (not res!1235909)) b!2997470))

(assert (= (and b!2997470 c!493122) b!2997466))

(assert (= (and b!2997470 (not c!493122)) b!2997467))

(assert (= (and b!2997466 (not res!1235910)) b!2997469))

(assert (= (and b!2997467 res!1235907) b!2997472))

(assert (= (or b!2997469 b!2997472) bm!201062))

(assert (= (or b!2997466 b!2997467) bm!201063))

(declare-fun m!3350687 () Bool)

(assert (=> bm!201062 m!3350687))

(declare-fun m!3350689 () Bool)

(assert (=> bm!201063 m!3350689))

(assert (=> d!845553 d!845697))

(declare-fun b!2997473 () Bool)

(declare-fun e!1883472 () Bool)

(declare-fun call!201071 () Bool)

(assert (=> b!2997473 (= e!1883472 call!201071)))

(declare-fun b!2997474 () Bool)

(declare-fun e!1883470 () Bool)

(declare-fun call!201069 () Bool)

(assert (=> b!2997474 (= e!1883470 call!201069)))

(declare-fun c!493124 () Bool)

(declare-fun c!493123 () Bool)

(declare-fun bm!201064 () Bool)

(assert (=> bm!201064 (= call!201071 (validRegex!4096 (ite c!493124 (reg!9692 (ite c!492908 (regTwo!19239 lt!1041450) (regOne!19238 lt!1041450))) (ite c!493123 (regOne!19239 (ite c!492908 (regTwo!19239 lt!1041450) (regOne!19238 lt!1041450))) (regTwo!19238 (ite c!492908 (regTwo!19239 lt!1041450) (regOne!19238 lt!1041450)))))))))

(declare-fun b!2997476 () Bool)

(declare-fun e!1883473 () Bool)

(declare-fun call!201070 () Bool)

(assert (=> b!2997476 (= e!1883473 call!201070)))

(declare-fun bm!201065 () Bool)

(assert (=> bm!201065 (= call!201070 call!201071)))

(declare-fun b!2997477 () Bool)

(declare-fun e!1883469 () Bool)

(declare-fun e!1883468 () Bool)

(assert (=> b!2997477 (= e!1883469 e!1883468)))

(assert (=> b!2997477 (= c!493123 ((_ is Union!9363) (ite c!492908 (regTwo!19239 lt!1041450) (regOne!19238 lt!1041450))))))

(declare-fun b!2997478 () Bool)

(assert (=> b!2997478 (= e!1883469 e!1883472)))

(declare-fun res!1235915 () Bool)

(assert (=> b!2997478 (= res!1235915 (not (nullable!3026 (reg!9692 (ite c!492908 (regTwo!19239 lt!1041450) (regOne!19238 lt!1041450))))))))

(assert (=> b!2997478 (=> (not res!1235915) (not e!1883472))))

(declare-fun b!2997479 () Bool)

(declare-fun res!1235912 () Bool)

(declare-fun e!1883471 () Bool)

(assert (=> b!2997479 (=> res!1235912 e!1883471)))

(assert (=> b!2997479 (= res!1235912 (not ((_ is Concat!14684) (ite c!492908 (regTwo!19239 lt!1041450) (regOne!19238 lt!1041450)))))))

(assert (=> b!2997479 (= e!1883468 e!1883471)))

(declare-fun b!2997480 () Bool)

(assert (=> b!2997480 (= e!1883471 e!1883473)))

(declare-fun res!1235913 () Bool)

(assert (=> b!2997480 (=> (not res!1235913) (not e!1883473))))

(assert (=> b!2997480 (= res!1235913 call!201069)))

(declare-fun bm!201066 () Bool)

(assert (=> bm!201066 (= call!201069 (validRegex!4096 (ite c!493123 (regTwo!19239 (ite c!492908 (regTwo!19239 lt!1041450) (regOne!19238 lt!1041450))) (regOne!19238 (ite c!492908 (regTwo!19239 lt!1041450) (regOne!19238 lt!1041450))))))))

(declare-fun b!2997481 () Bool)

(declare-fun e!1883474 () Bool)

(assert (=> b!2997481 (= e!1883474 e!1883469)))

(assert (=> b!2997481 (= c!493124 ((_ is Star!9363) (ite c!492908 (regTwo!19239 lt!1041450) (regOne!19238 lt!1041450))))))

(declare-fun d!845699 () Bool)

(declare-fun res!1235914 () Bool)

(assert (=> d!845699 (=> res!1235914 e!1883474)))

(assert (=> d!845699 (= res!1235914 ((_ is ElementMatch!9363) (ite c!492908 (regTwo!19239 lt!1041450) (regOne!19238 lt!1041450))))))

(assert (=> d!845699 (= (validRegex!4096 (ite c!492908 (regTwo!19239 lt!1041450) (regOne!19238 lt!1041450))) e!1883474)))

(declare-fun b!2997475 () Bool)

(declare-fun res!1235916 () Bool)

(assert (=> b!2997475 (=> (not res!1235916) (not e!1883470))))

(assert (=> b!2997475 (= res!1235916 call!201070)))

(assert (=> b!2997475 (= e!1883468 e!1883470)))

(assert (= (and d!845699 (not res!1235914)) b!2997481))

(assert (= (and b!2997481 c!493124) b!2997478))

(assert (= (and b!2997481 (not c!493124)) b!2997477))

(assert (= (and b!2997478 res!1235915) b!2997473))

(assert (= (and b!2997477 c!493123) b!2997475))

(assert (= (and b!2997477 (not c!493123)) b!2997479))

(assert (= (and b!2997475 res!1235916) b!2997474))

(assert (= (and b!2997479 (not res!1235912)) b!2997480))

(assert (= (and b!2997480 res!1235913) b!2997476))

(assert (= (or b!2997475 b!2997476) bm!201065))

(assert (= (or b!2997474 b!2997480) bm!201066))

(assert (= (or b!2997473 bm!201065) bm!201064))

(declare-fun m!3350691 () Bool)

(assert (=> bm!201064 m!3350691))

(declare-fun m!3350693 () Bool)

(assert (=> b!2997478 m!3350693))

(declare-fun m!3350695 () Bool)

(assert (=> bm!201066 m!3350695))

(assert (=> bm!200891 d!845699))

(declare-fun d!845701 () Bool)

(assert (=> d!845701 (= (Exists!1636 (ite c!492957 lambda!112047 lambda!112048)) (choose!17787 (ite c!492957 lambda!112047 lambda!112048)))))

(declare-fun bs!528151 () Bool)

(assert (= bs!528151 d!845701))

(declare-fun m!3350697 () Bool)

(assert (=> bs!528151 m!3350697))

(assert (=> bm!200931 d!845701))

(declare-fun b!2997482 () Bool)

(declare-fun e!1883479 () Bool)

(declare-fun call!201074 () Bool)

(assert (=> b!2997482 (= e!1883479 call!201074)))

(declare-fun b!2997483 () Bool)

(declare-fun e!1883477 () Bool)

(declare-fun call!201072 () Bool)

(assert (=> b!2997483 (= e!1883477 call!201072)))

(declare-fun c!493126 () Bool)

(declare-fun bm!201067 () Bool)

(declare-fun c!493125 () Bool)

(assert (=> bm!201067 (= call!201074 (validRegex!4096 (ite c!493126 (reg!9692 lt!1041505) (ite c!493125 (regOne!19239 lt!1041505) (regTwo!19238 lt!1041505)))))))

(declare-fun b!2997485 () Bool)

(declare-fun e!1883480 () Bool)

(declare-fun call!201073 () Bool)

(assert (=> b!2997485 (= e!1883480 call!201073)))

(declare-fun bm!201068 () Bool)

(assert (=> bm!201068 (= call!201073 call!201074)))

(declare-fun b!2997486 () Bool)

(declare-fun e!1883476 () Bool)

(declare-fun e!1883475 () Bool)

(assert (=> b!2997486 (= e!1883476 e!1883475)))

(assert (=> b!2997486 (= c!493125 ((_ is Union!9363) lt!1041505))))

(declare-fun b!2997487 () Bool)

(assert (=> b!2997487 (= e!1883476 e!1883479)))

(declare-fun res!1235920 () Bool)

(assert (=> b!2997487 (= res!1235920 (not (nullable!3026 (reg!9692 lt!1041505))))))

(assert (=> b!2997487 (=> (not res!1235920) (not e!1883479))))

(declare-fun b!2997488 () Bool)

(declare-fun res!1235917 () Bool)

(declare-fun e!1883478 () Bool)

(assert (=> b!2997488 (=> res!1235917 e!1883478)))

(assert (=> b!2997488 (= res!1235917 (not ((_ is Concat!14684) lt!1041505)))))

(assert (=> b!2997488 (= e!1883475 e!1883478)))

(declare-fun b!2997489 () Bool)

(assert (=> b!2997489 (= e!1883478 e!1883480)))

(declare-fun res!1235918 () Bool)

(assert (=> b!2997489 (=> (not res!1235918) (not e!1883480))))

(assert (=> b!2997489 (= res!1235918 call!201072)))

(declare-fun bm!201069 () Bool)

(assert (=> bm!201069 (= call!201072 (validRegex!4096 (ite c!493125 (regTwo!19239 lt!1041505) (regOne!19238 lt!1041505))))))

(declare-fun b!2997490 () Bool)

(declare-fun e!1883481 () Bool)

(assert (=> b!2997490 (= e!1883481 e!1883476)))

(assert (=> b!2997490 (= c!493126 ((_ is Star!9363) lt!1041505))))

(declare-fun d!845703 () Bool)

(declare-fun res!1235919 () Bool)

(assert (=> d!845703 (=> res!1235919 e!1883481)))

(assert (=> d!845703 (= res!1235919 ((_ is ElementMatch!9363) lt!1041505))))

(assert (=> d!845703 (= (validRegex!4096 lt!1041505) e!1883481)))

(declare-fun b!2997484 () Bool)

(declare-fun res!1235921 () Bool)

(assert (=> b!2997484 (=> (not res!1235921) (not e!1883477))))

(assert (=> b!2997484 (= res!1235921 call!201073)))

(assert (=> b!2997484 (= e!1883475 e!1883477)))

(assert (= (and d!845703 (not res!1235919)) b!2997490))

(assert (= (and b!2997490 c!493126) b!2997487))

(assert (= (and b!2997490 (not c!493126)) b!2997486))

(assert (= (and b!2997487 res!1235920) b!2997482))

(assert (= (and b!2997486 c!493125) b!2997484))

(assert (= (and b!2997486 (not c!493125)) b!2997488))

(assert (= (and b!2997484 res!1235921) b!2997483))

(assert (= (and b!2997488 (not res!1235917)) b!2997489))

(assert (= (and b!2997489 res!1235918) b!2997485))

(assert (= (or b!2997484 b!2997485) bm!201068))

(assert (= (or b!2997483 b!2997489) bm!201069))

(assert (= (or b!2997482 bm!201068) bm!201067))

(declare-fun m!3350699 () Bool)

(assert (=> bm!201067 m!3350699))

(declare-fun m!3350701 () Bool)

(assert (=> b!2997487 m!3350701))

(declare-fun m!3350703 () Bool)

(assert (=> bm!201069 m!3350703))

(assert (=> d!845489 d!845703))

(declare-fun b!2997491 () Bool)

(declare-fun e!1883486 () Bool)

(declare-fun call!201077 () Bool)

(assert (=> b!2997491 (= e!1883486 call!201077)))

(declare-fun b!2997492 () Bool)

(declare-fun e!1883484 () Bool)

(declare-fun call!201075 () Bool)

(assert (=> b!2997492 (= e!1883484 call!201075)))

(declare-fun bm!201070 () Bool)

(declare-fun c!493127 () Bool)

(declare-fun c!493128 () Bool)

(assert (=> bm!201070 (= call!201077 (validRegex!4096 (ite c!493128 (reg!9692 (ite c!492743 (reg!9692 (regOne!19238 r!17423)) (ite c!492741 (regOne!19239 (regOne!19238 r!17423)) (regTwo!19238 (regOne!19238 r!17423))))) (ite c!493127 (regOne!19239 (ite c!492743 (reg!9692 (regOne!19238 r!17423)) (ite c!492741 (regOne!19239 (regOne!19238 r!17423)) (regTwo!19238 (regOne!19238 r!17423))))) (regTwo!19238 (ite c!492743 (reg!9692 (regOne!19238 r!17423)) (ite c!492741 (regOne!19239 (regOne!19238 r!17423)) (regTwo!19238 (regOne!19238 r!17423)))))))))))

(declare-fun b!2997494 () Bool)

(declare-fun e!1883487 () Bool)

(declare-fun call!201076 () Bool)

(assert (=> b!2997494 (= e!1883487 call!201076)))

(declare-fun bm!201071 () Bool)

(assert (=> bm!201071 (= call!201076 call!201077)))

(declare-fun b!2997495 () Bool)

(declare-fun e!1883483 () Bool)

(declare-fun e!1883482 () Bool)

(assert (=> b!2997495 (= e!1883483 e!1883482)))

(assert (=> b!2997495 (= c!493127 ((_ is Union!9363) (ite c!492743 (reg!9692 (regOne!19238 r!17423)) (ite c!492741 (regOne!19239 (regOne!19238 r!17423)) (regTwo!19238 (regOne!19238 r!17423))))))))

(declare-fun b!2997496 () Bool)

(assert (=> b!2997496 (= e!1883483 e!1883486)))

(declare-fun res!1235925 () Bool)

(assert (=> b!2997496 (= res!1235925 (not (nullable!3026 (reg!9692 (ite c!492743 (reg!9692 (regOne!19238 r!17423)) (ite c!492741 (regOne!19239 (regOne!19238 r!17423)) (regTwo!19238 (regOne!19238 r!17423))))))))))

(assert (=> b!2997496 (=> (not res!1235925) (not e!1883486))))

(declare-fun b!2997497 () Bool)

(declare-fun res!1235922 () Bool)

(declare-fun e!1883485 () Bool)

(assert (=> b!2997497 (=> res!1235922 e!1883485)))

(assert (=> b!2997497 (= res!1235922 (not ((_ is Concat!14684) (ite c!492743 (reg!9692 (regOne!19238 r!17423)) (ite c!492741 (regOne!19239 (regOne!19238 r!17423)) (regTwo!19238 (regOne!19238 r!17423)))))))))

(assert (=> b!2997497 (= e!1883482 e!1883485)))

(declare-fun b!2997498 () Bool)

(assert (=> b!2997498 (= e!1883485 e!1883487)))

(declare-fun res!1235923 () Bool)

(assert (=> b!2997498 (=> (not res!1235923) (not e!1883487))))

(assert (=> b!2997498 (= res!1235923 call!201075)))

(declare-fun bm!201072 () Bool)

(assert (=> bm!201072 (= call!201075 (validRegex!4096 (ite c!493127 (regTwo!19239 (ite c!492743 (reg!9692 (regOne!19238 r!17423)) (ite c!492741 (regOne!19239 (regOne!19238 r!17423)) (regTwo!19238 (regOne!19238 r!17423))))) (regOne!19238 (ite c!492743 (reg!9692 (regOne!19238 r!17423)) (ite c!492741 (regOne!19239 (regOne!19238 r!17423)) (regTwo!19238 (regOne!19238 r!17423))))))))))

(declare-fun b!2997499 () Bool)

(declare-fun e!1883488 () Bool)

(assert (=> b!2997499 (= e!1883488 e!1883483)))

(assert (=> b!2997499 (= c!493128 ((_ is Star!9363) (ite c!492743 (reg!9692 (regOne!19238 r!17423)) (ite c!492741 (regOne!19239 (regOne!19238 r!17423)) (regTwo!19238 (regOne!19238 r!17423))))))))

(declare-fun d!845705 () Bool)

(declare-fun res!1235924 () Bool)

(assert (=> d!845705 (=> res!1235924 e!1883488)))

(assert (=> d!845705 (= res!1235924 ((_ is ElementMatch!9363) (ite c!492743 (reg!9692 (regOne!19238 r!17423)) (ite c!492741 (regOne!19239 (regOne!19238 r!17423)) (regTwo!19238 (regOne!19238 r!17423))))))))

(assert (=> d!845705 (= (validRegex!4096 (ite c!492743 (reg!9692 (regOne!19238 r!17423)) (ite c!492741 (regOne!19239 (regOne!19238 r!17423)) (regTwo!19238 (regOne!19238 r!17423))))) e!1883488)))

(declare-fun b!2997493 () Bool)

(declare-fun res!1235926 () Bool)

(assert (=> b!2997493 (=> (not res!1235926) (not e!1883484))))

(assert (=> b!2997493 (= res!1235926 call!201076)))

(assert (=> b!2997493 (= e!1883482 e!1883484)))

(assert (= (and d!845705 (not res!1235924)) b!2997499))

(assert (= (and b!2997499 c!493128) b!2997496))

(assert (= (and b!2997499 (not c!493128)) b!2997495))

(assert (= (and b!2997496 res!1235925) b!2997491))

(assert (= (and b!2997495 c!493127) b!2997493))

(assert (= (and b!2997495 (not c!493127)) b!2997497))

(assert (= (and b!2997493 res!1235926) b!2997492))

(assert (= (and b!2997497 (not res!1235922)) b!2997498))

(assert (= (and b!2997498 res!1235923) b!2997494))

(assert (= (or b!2997493 b!2997494) bm!201071))

(assert (= (or b!2997492 b!2997498) bm!201072))

(assert (= (or b!2997491 bm!201071) bm!201070))

(declare-fun m!3350705 () Bool)

(assert (=> bm!201070 m!3350705))

(declare-fun m!3350707 () Bool)

(assert (=> b!2997496 m!3350707))

(declare-fun m!3350709 () Bool)

(assert (=> bm!201072 m!3350709))

(assert (=> d!845489 d!845705))

(declare-fun b!2997500 () Bool)

(declare-fun e!1883491 () Bool)

(declare-fun e!1883492 () Bool)

(assert (=> b!2997500 (= e!1883491 e!1883492)))

(declare-fun res!1235930 () Bool)

(declare-fun call!201078 () Bool)

(assert (=> b!2997500 (= res!1235930 call!201078)))

(assert (=> b!2997500 (=> res!1235930 e!1883492)))

(declare-fun b!2997501 () Bool)

(declare-fun e!1883493 () Bool)

(assert (=> b!2997501 (= e!1883491 e!1883493)))

(declare-fun res!1235927 () Bool)

(assert (=> b!2997501 (= res!1235927 call!201078)))

(assert (=> b!2997501 (=> (not res!1235927) (not e!1883493))))

(declare-fun bm!201073 () Bool)

(declare-fun call!201079 () Bool)

(declare-fun c!493129 () Bool)

(assert (=> bm!201073 (= call!201079 (nullable!3026 (ite c!493129 (regTwo!19239 lt!1041417) (regTwo!19238 lt!1041417))))))

(declare-fun b!2997502 () Bool)

(declare-fun e!1883490 () Bool)

(declare-fun e!1883494 () Bool)

(assert (=> b!2997502 (= e!1883490 e!1883494)))

(declare-fun res!1235929 () Bool)

(assert (=> b!2997502 (=> res!1235929 e!1883494)))

(assert (=> b!2997502 (= res!1235929 ((_ is Star!9363) lt!1041417))))

(declare-fun b!2997503 () Bool)

(assert (=> b!2997503 (= e!1883492 call!201079)))

(declare-fun d!845707 () Bool)

(declare-fun res!1235928 () Bool)

(declare-fun e!1883489 () Bool)

(assert (=> d!845707 (=> res!1235928 e!1883489)))

(assert (=> d!845707 (= res!1235928 ((_ is EmptyExpr!9363) lt!1041417))))

(assert (=> d!845707 (= (nullableFct!860 lt!1041417) e!1883489)))

(declare-fun bm!201074 () Bool)

(assert (=> bm!201074 (= call!201078 (nullable!3026 (ite c!493129 (regOne!19239 lt!1041417) (regOne!19238 lt!1041417))))))

(declare-fun b!2997504 () Bool)

(assert (=> b!2997504 (= e!1883494 e!1883491)))

(assert (=> b!2997504 (= c!493129 ((_ is Union!9363) lt!1041417))))

(declare-fun b!2997505 () Bool)

(assert (=> b!2997505 (= e!1883489 e!1883490)))

(declare-fun res!1235931 () Bool)

(assert (=> b!2997505 (=> (not res!1235931) (not e!1883490))))

(assert (=> b!2997505 (= res!1235931 (and (not ((_ is EmptyLang!9363) lt!1041417)) (not ((_ is ElementMatch!9363) lt!1041417))))))

(declare-fun b!2997506 () Bool)

(assert (=> b!2997506 (= e!1883493 call!201079)))

(assert (= (and d!845707 (not res!1235928)) b!2997505))

(assert (= (and b!2997505 res!1235931) b!2997502))

(assert (= (and b!2997502 (not res!1235929)) b!2997504))

(assert (= (and b!2997504 c!493129) b!2997500))

(assert (= (and b!2997504 (not c!493129)) b!2997501))

(assert (= (and b!2997500 (not res!1235930)) b!2997503))

(assert (= (and b!2997501 res!1235927) b!2997506))

(assert (= (or b!2997503 b!2997506) bm!201073))

(assert (= (or b!2997500 b!2997501) bm!201074))

(declare-fun m!3350711 () Bool)

(assert (=> bm!201073 m!3350711))

(declare-fun m!3350713 () Bool)

(assert (=> bm!201074 m!3350713))

(assert (=> d!845537 d!845707))

(declare-fun d!845709 () Bool)

(assert (=> d!845709 (= (nullable!3026 (regOne!19238 lt!1041417)) (nullableFct!860 (regOne!19238 lt!1041417)))))

(declare-fun bs!528152 () Bool)

(assert (= bs!528152 d!845709))

(declare-fun m!3350715 () Bool)

(assert (=> bs!528152 m!3350715))

(assert (=> b!2996480 d!845709))

(declare-fun d!845711 () Bool)

(assert (=> d!845711 (= (nullable!3026 (reg!9692 (regTwo!19238 r!17423))) (nullableFct!860 (reg!9692 (regTwo!19238 r!17423))))))

(declare-fun bs!528153 () Bool)

(assert (= bs!528153 d!845711))

(declare-fun m!3350717 () Bool)

(assert (=> bs!528153 m!3350717))

(assert (=> b!2996665 d!845711))

(declare-fun d!845713 () Bool)

(assert (=> d!845713 (= (isEmptyExpr!470 lt!1041501) ((_ is EmptyExpr!9363) lt!1041501))))

(assert (=> b!2996549 d!845713))

(declare-fun b!2997507 () Bool)

(declare-fun e!1883499 () Bool)

(declare-fun call!201082 () Bool)

(assert (=> b!2997507 (= e!1883499 call!201082)))

(declare-fun b!2997508 () Bool)

(declare-fun e!1883497 () Bool)

(declare-fun call!201080 () Bool)

(assert (=> b!2997508 (= e!1883497 call!201080)))

(declare-fun c!493131 () Bool)

(declare-fun bm!201075 () Bool)

(declare-fun c!493130 () Bool)

(assert (=> bm!201075 (= call!201082 (validRegex!4096 (ite c!493131 (reg!9692 lt!1041525) (ite c!493130 (regOne!19239 lt!1041525) (regTwo!19238 lt!1041525)))))))

(declare-fun b!2997510 () Bool)

(declare-fun e!1883500 () Bool)

(declare-fun call!201081 () Bool)

(assert (=> b!2997510 (= e!1883500 call!201081)))

(declare-fun bm!201076 () Bool)

(assert (=> bm!201076 (= call!201081 call!201082)))

(declare-fun b!2997511 () Bool)

(declare-fun e!1883496 () Bool)

(declare-fun e!1883495 () Bool)

(assert (=> b!2997511 (= e!1883496 e!1883495)))

(assert (=> b!2997511 (= c!493130 ((_ is Union!9363) lt!1041525))))

(declare-fun b!2997512 () Bool)

(assert (=> b!2997512 (= e!1883496 e!1883499)))

(declare-fun res!1235935 () Bool)

(assert (=> b!2997512 (= res!1235935 (not (nullable!3026 (reg!9692 lt!1041525))))))

(assert (=> b!2997512 (=> (not res!1235935) (not e!1883499))))

(declare-fun b!2997513 () Bool)

(declare-fun res!1235932 () Bool)

(declare-fun e!1883498 () Bool)

(assert (=> b!2997513 (=> res!1235932 e!1883498)))

(assert (=> b!2997513 (= res!1235932 (not ((_ is Concat!14684) lt!1041525)))))

(assert (=> b!2997513 (= e!1883495 e!1883498)))

(declare-fun b!2997514 () Bool)

(assert (=> b!2997514 (= e!1883498 e!1883500)))

(declare-fun res!1235933 () Bool)

(assert (=> b!2997514 (=> (not res!1235933) (not e!1883500))))

(assert (=> b!2997514 (= res!1235933 call!201080)))

(declare-fun bm!201077 () Bool)

(assert (=> bm!201077 (= call!201080 (validRegex!4096 (ite c!493130 (regTwo!19239 lt!1041525) (regOne!19238 lt!1041525))))))

(declare-fun b!2997515 () Bool)

(declare-fun e!1883501 () Bool)

(assert (=> b!2997515 (= e!1883501 e!1883496)))

(assert (=> b!2997515 (= c!493131 ((_ is Star!9363) lt!1041525))))

(declare-fun d!845715 () Bool)

(declare-fun res!1235934 () Bool)

(assert (=> d!845715 (=> res!1235934 e!1883501)))

(assert (=> d!845715 (= res!1235934 ((_ is ElementMatch!9363) lt!1041525))))

(assert (=> d!845715 (= (validRegex!4096 lt!1041525) e!1883501)))

(declare-fun b!2997509 () Bool)

(declare-fun res!1235936 () Bool)

(assert (=> b!2997509 (=> (not res!1235936) (not e!1883497))))

(assert (=> b!2997509 (= res!1235936 call!201081)))

(assert (=> b!2997509 (= e!1883495 e!1883497)))

(assert (= (and d!845715 (not res!1235934)) b!2997515))

(assert (= (and b!2997515 c!493131) b!2997512))

(assert (= (and b!2997515 (not c!493131)) b!2997511))

(assert (= (and b!2997512 res!1235935) b!2997507))

(assert (= (and b!2997511 c!493130) b!2997509))

(assert (= (and b!2997511 (not c!493130)) b!2997513))

(assert (= (and b!2997509 res!1235936) b!2997508))

(assert (= (and b!2997513 (not res!1235932)) b!2997514))

(assert (= (and b!2997514 res!1235933) b!2997510))

(assert (= (or b!2997509 b!2997510) bm!201076))

(assert (= (or b!2997508 b!2997514) bm!201077))

(assert (= (or b!2997507 bm!201076) bm!201075))

(declare-fun m!3350719 () Bool)

(assert (=> bm!201075 m!3350719))

(declare-fun m!3350721 () Bool)

(assert (=> b!2997512 m!3350721))

(declare-fun m!3350723 () Bool)

(assert (=> bm!201077 m!3350723))

(assert (=> d!845561 d!845715))

(declare-fun b!2997516 () Bool)

(declare-fun e!1883506 () Bool)

(declare-fun call!201085 () Bool)

(assert (=> b!2997516 (= e!1883506 call!201085)))

(declare-fun b!2997517 () Bool)

(declare-fun e!1883504 () Bool)

(declare-fun call!201083 () Bool)

(assert (=> b!2997517 (= e!1883504 call!201083)))

(declare-fun c!493133 () Bool)

(declare-fun c!493132 () Bool)

(declare-fun bm!201078 () Bool)

(assert (=> bm!201078 (= call!201085 (validRegex!4096 (ite c!493133 (reg!9692 (ite c!492732 (reg!9692 (regTwo!19238 r!17423)) (ite c!492730 (regOne!19239 (regTwo!19238 r!17423)) (regTwo!19238 (regTwo!19238 r!17423))))) (ite c!493132 (regOne!19239 (ite c!492732 (reg!9692 (regTwo!19238 r!17423)) (ite c!492730 (regOne!19239 (regTwo!19238 r!17423)) (regTwo!19238 (regTwo!19238 r!17423))))) (regTwo!19238 (ite c!492732 (reg!9692 (regTwo!19238 r!17423)) (ite c!492730 (regOne!19239 (regTwo!19238 r!17423)) (regTwo!19238 (regTwo!19238 r!17423)))))))))))

(declare-fun b!2997519 () Bool)

(declare-fun e!1883507 () Bool)

(declare-fun call!201084 () Bool)

(assert (=> b!2997519 (= e!1883507 call!201084)))

(declare-fun bm!201079 () Bool)

(assert (=> bm!201079 (= call!201084 call!201085)))

(declare-fun b!2997520 () Bool)

(declare-fun e!1883503 () Bool)

(declare-fun e!1883502 () Bool)

(assert (=> b!2997520 (= e!1883503 e!1883502)))

(assert (=> b!2997520 (= c!493132 ((_ is Union!9363) (ite c!492732 (reg!9692 (regTwo!19238 r!17423)) (ite c!492730 (regOne!19239 (regTwo!19238 r!17423)) (regTwo!19238 (regTwo!19238 r!17423))))))))

(declare-fun b!2997521 () Bool)

(assert (=> b!2997521 (= e!1883503 e!1883506)))

(declare-fun res!1235940 () Bool)

(assert (=> b!2997521 (= res!1235940 (not (nullable!3026 (reg!9692 (ite c!492732 (reg!9692 (regTwo!19238 r!17423)) (ite c!492730 (regOne!19239 (regTwo!19238 r!17423)) (regTwo!19238 (regTwo!19238 r!17423))))))))))

(assert (=> b!2997521 (=> (not res!1235940) (not e!1883506))))

(declare-fun b!2997522 () Bool)

(declare-fun res!1235937 () Bool)

(declare-fun e!1883505 () Bool)

(assert (=> b!2997522 (=> res!1235937 e!1883505)))

(assert (=> b!2997522 (= res!1235937 (not ((_ is Concat!14684) (ite c!492732 (reg!9692 (regTwo!19238 r!17423)) (ite c!492730 (regOne!19239 (regTwo!19238 r!17423)) (regTwo!19238 (regTwo!19238 r!17423)))))))))

(assert (=> b!2997522 (= e!1883502 e!1883505)))

(declare-fun b!2997523 () Bool)

(assert (=> b!2997523 (= e!1883505 e!1883507)))

(declare-fun res!1235938 () Bool)

(assert (=> b!2997523 (=> (not res!1235938) (not e!1883507))))

(assert (=> b!2997523 (= res!1235938 call!201083)))

(declare-fun bm!201080 () Bool)

(assert (=> bm!201080 (= call!201083 (validRegex!4096 (ite c!493132 (regTwo!19239 (ite c!492732 (reg!9692 (regTwo!19238 r!17423)) (ite c!492730 (regOne!19239 (regTwo!19238 r!17423)) (regTwo!19238 (regTwo!19238 r!17423))))) (regOne!19238 (ite c!492732 (reg!9692 (regTwo!19238 r!17423)) (ite c!492730 (regOne!19239 (regTwo!19238 r!17423)) (regTwo!19238 (regTwo!19238 r!17423))))))))))

(declare-fun b!2997524 () Bool)

(declare-fun e!1883508 () Bool)

(assert (=> b!2997524 (= e!1883508 e!1883503)))

(assert (=> b!2997524 (= c!493133 ((_ is Star!9363) (ite c!492732 (reg!9692 (regTwo!19238 r!17423)) (ite c!492730 (regOne!19239 (regTwo!19238 r!17423)) (regTwo!19238 (regTwo!19238 r!17423))))))))

(declare-fun d!845717 () Bool)

(declare-fun res!1235939 () Bool)

(assert (=> d!845717 (=> res!1235939 e!1883508)))

(assert (=> d!845717 (= res!1235939 ((_ is ElementMatch!9363) (ite c!492732 (reg!9692 (regTwo!19238 r!17423)) (ite c!492730 (regOne!19239 (regTwo!19238 r!17423)) (regTwo!19238 (regTwo!19238 r!17423))))))))

(assert (=> d!845717 (= (validRegex!4096 (ite c!492732 (reg!9692 (regTwo!19238 r!17423)) (ite c!492730 (regOne!19239 (regTwo!19238 r!17423)) (regTwo!19238 (regTwo!19238 r!17423))))) e!1883508)))

(declare-fun b!2997518 () Bool)

(declare-fun res!1235941 () Bool)

(assert (=> b!2997518 (=> (not res!1235941) (not e!1883504))))

(assert (=> b!2997518 (= res!1235941 call!201084)))

(assert (=> b!2997518 (= e!1883502 e!1883504)))

(assert (= (and d!845717 (not res!1235939)) b!2997524))

(assert (= (and b!2997524 c!493133) b!2997521))

(assert (= (and b!2997524 (not c!493133)) b!2997520))

(assert (= (and b!2997521 res!1235940) b!2997516))

(assert (= (and b!2997520 c!493132) b!2997518))

(assert (= (and b!2997520 (not c!493132)) b!2997522))

(assert (= (and b!2997518 res!1235941) b!2997517))

(assert (= (and b!2997522 (not res!1235937)) b!2997523))

(assert (= (and b!2997523 res!1235938) b!2997519))

(assert (= (or b!2997518 b!2997519) bm!201079))

(assert (= (or b!2997517 b!2997523) bm!201080))

(assert (= (or b!2997516 bm!201079) bm!201078))

(declare-fun m!3350725 () Bool)

(assert (=> bm!201078 m!3350725))

(declare-fun m!3350727 () Bool)

(assert (=> b!2997521 m!3350727))

(declare-fun m!3350729 () Bool)

(assert (=> bm!201080 m!3350729))

(assert (=> d!845561 d!845717))

(declare-fun d!845719 () Bool)

(assert (=> d!845719 (= (nullable!3026 (derivativeStep!2624 r!17423 (head!6683 s!11993))) (nullableFct!860 (derivativeStep!2624 r!17423 (head!6683 s!11993))))))

(declare-fun bs!528154 () Bool)

(assert (= bs!528154 d!845719))

(assert (=> bs!528154 m!3350085))

(declare-fun m!3350731 () Bool)

(assert (=> bs!528154 m!3350731))

(assert (=> b!2996624 d!845719))

(assert (=> bm!200898 d!845441))

(declare-fun b!2997525 () Bool)

(declare-fun e!1883513 () Bool)

(declare-fun call!201088 () Bool)

(assert (=> b!2997525 (= e!1883513 call!201088)))

(declare-fun b!2997526 () Bool)

(declare-fun e!1883511 () Bool)

(declare-fun call!201086 () Bool)

(assert (=> b!2997526 (= e!1883511 call!201086)))

(declare-fun c!493134 () Bool)

(declare-fun bm!201081 () Bool)

(declare-fun c!493135 () Bool)

(assert (=> bm!201081 (= call!201088 (validRegex!4096 (ite c!493135 (reg!9692 (ite c!492941 (reg!9692 lt!1041444) (ite c!492940 (regOne!19239 lt!1041444) (regTwo!19238 lt!1041444)))) (ite c!493134 (regOne!19239 (ite c!492941 (reg!9692 lt!1041444) (ite c!492940 (regOne!19239 lt!1041444) (regTwo!19238 lt!1041444)))) (regTwo!19238 (ite c!492941 (reg!9692 lt!1041444) (ite c!492940 (regOne!19239 lt!1041444) (regTwo!19238 lt!1041444))))))))))

(declare-fun b!2997528 () Bool)

(declare-fun e!1883514 () Bool)

(declare-fun call!201087 () Bool)

(assert (=> b!2997528 (= e!1883514 call!201087)))

(declare-fun bm!201082 () Bool)

(assert (=> bm!201082 (= call!201087 call!201088)))

(declare-fun b!2997529 () Bool)

(declare-fun e!1883510 () Bool)

(declare-fun e!1883509 () Bool)

(assert (=> b!2997529 (= e!1883510 e!1883509)))

(assert (=> b!2997529 (= c!493134 ((_ is Union!9363) (ite c!492941 (reg!9692 lt!1041444) (ite c!492940 (regOne!19239 lt!1041444) (regTwo!19238 lt!1041444)))))))

(declare-fun b!2997530 () Bool)

(assert (=> b!2997530 (= e!1883510 e!1883513)))

(declare-fun res!1235945 () Bool)

(assert (=> b!2997530 (= res!1235945 (not (nullable!3026 (reg!9692 (ite c!492941 (reg!9692 lt!1041444) (ite c!492940 (regOne!19239 lt!1041444) (regTwo!19238 lt!1041444)))))))))

(assert (=> b!2997530 (=> (not res!1235945) (not e!1883513))))

(declare-fun b!2997531 () Bool)

(declare-fun res!1235942 () Bool)

(declare-fun e!1883512 () Bool)

(assert (=> b!2997531 (=> res!1235942 e!1883512)))

(assert (=> b!2997531 (= res!1235942 (not ((_ is Concat!14684) (ite c!492941 (reg!9692 lt!1041444) (ite c!492940 (regOne!19239 lt!1041444) (regTwo!19238 lt!1041444))))))))

(assert (=> b!2997531 (= e!1883509 e!1883512)))

(declare-fun b!2997532 () Bool)

(assert (=> b!2997532 (= e!1883512 e!1883514)))

(declare-fun res!1235943 () Bool)

(assert (=> b!2997532 (=> (not res!1235943) (not e!1883514))))

(assert (=> b!2997532 (= res!1235943 call!201086)))

(declare-fun bm!201083 () Bool)

(assert (=> bm!201083 (= call!201086 (validRegex!4096 (ite c!493134 (regTwo!19239 (ite c!492941 (reg!9692 lt!1041444) (ite c!492940 (regOne!19239 lt!1041444) (regTwo!19238 lt!1041444)))) (regOne!19238 (ite c!492941 (reg!9692 lt!1041444) (ite c!492940 (regOne!19239 lt!1041444) (regTwo!19238 lt!1041444)))))))))

(declare-fun b!2997533 () Bool)

(declare-fun e!1883515 () Bool)

(assert (=> b!2997533 (= e!1883515 e!1883510)))

(assert (=> b!2997533 (= c!493135 ((_ is Star!9363) (ite c!492941 (reg!9692 lt!1041444) (ite c!492940 (regOne!19239 lt!1041444) (regTwo!19238 lt!1041444)))))))

(declare-fun d!845721 () Bool)

(declare-fun res!1235944 () Bool)

(assert (=> d!845721 (=> res!1235944 e!1883515)))

(assert (=> d!845721 (= res!1235944 ((_ is ElementMatch!9363) (ite c!492941 (reg!9692 lt!1041444) (ite c!492940 (regOne!19239 lt!1041444) (regTwo!19238 lt!1041444)))))))

(assert (=> d!845721 (= (validRegex!4096 (ite c!492941 (reg!9692 lt!1041444) (ite c!492940 (regOne!19239 lt!1041444) (regTwo!19238 lt!1041444)))) e!1883515)))

(declare-fun b!2997527 () Bool)

(declare-fun res!1235946 () Bool)

(assert (=> b!2997527 (=> (not res!1235946) (not e!1883511))))

(assert (=> b!2997527 (= res!1235946 call!201087)))

(assert (=> b!2997527 (= e!1883509 e!1883511)))

(assert (= (and d!845721 (not res!1235944)) b!2997533))

(assert (= (and b!2997533 c!493135) b!2997530))

(assert (= (and b!2997533 (not c!493135)) b!2997529))

(assert (= (and b!2997530 res!1235945) b!2997525))

(assert (= (and b!2997529 c!493134) b!2997527))

(assert (= (and b!2997529 (not c!493134)) b!2997531))

(assert (= (and b!2997527 res!1235946) b!2997526))

(assert (= (and b!2997531 (not res!1235942)) b!2997532))

(assert (= (and b!2997532 res!1235943) b!2997528))

(assert (= (or b!2997527 b!2997528) bm!201082))

(assert (= (or b!2997526 b!2997532) bm!201083))

(assert (= (or b!2997525 bm!201082) bm!201081))

(declare-fun m!3350733 () Bool)

(assert (=> bm!201081 m!3350733))

(declare-fun m!3350735 () Bool)

(assert (=> b!2997530 m!3350735))

(declare-fun m!3350737 () Bool)

(assert (=> bm!201083 m!3350737))

(assert (=> bm!200915 d!845721))

(declare-fun d!845723 () Bool)

(assert (=> d!845723 (= (isEmptyExpr!470 (ite c!492860 lt!1041496 lt!1041498)) ((_ is EmptyExpr!9363) (ite c!492860 lt!1041496 lt!1041498)))))

(assert (=> bm!200857 d!845723))

(declare-fun d!845725 () Bool)

(assert (=> d!845725 (= (isEmptyExpr!470 lt!1041521) ((_ is EmptyExpr!9363) lt!1041521))))

(assert (=> b!2996749 d!845725))

(assert (=> b!2996582 d!845645))

(declare-fun b!2997534 () Bool)

(declare-fun e!1883520 () Bool)

(declare-fun call!201091 () Bool)

(assert (=> b!2997534 (= e!1883520 call!201091)))

(declare-fun b!2997535 () Bool)

(declare-fun e!1883518 () Bool)

(declare-fun call!201089 () Bool)

(assert (=> b!2997535 (= e!1883518 call!201089)))

(declare-fun c!493137 () Bool)

(declare-fun bm!201084 () Bool)

(declare-fun c!493136 () Bool)

(assert (=> bm!201084 (= call!201091 (validRegex!4096 (ite c!493137 (reg!9692 (ite c!492911 (reg!9692 (regOne!19238 r!17423)) (ite c!492910 (regOne!19239 (regOne!19238 r!17423)) (regTwo!19238 (regOne!19238 r!17423))))) (ite c!493136 (regOne!19239 (ite c!492911 (reg!9692 (regOne!19238 r!17423)) (ite c!492910 (regOne!19239 (regOne!19238 r!17423)) (regTwo!19238 (regOne!19238 r!17423))))) (regTwo!19238 (ite c!492911 (reg!9692 (regOne!19238 r!17423)) (ite c!492910 (regOne!19239 (regOne!19238 r!17423)) (regTwo!19238 (regOne!19238 r!17423)))))))))))

(declare-fun b!2997537 () Bool)

(declare-fun e!1883521 () Bool)

(declare-fun call!201090 () Bool)

(assert (=> b!2997537 (= e!1883521 call!201090)))

(declare-fun bm!201085 () Bool)

(assert (=> bm!201085 (= call!201090 call!201091)))

(declare-fun b!2997538 () Bool)

(declare-fun e!1883517 () Bool)

(declare-fun e!1883516 () Bool)

(assert (=> b!2997538 (= e!1883517 e!1883516)))

(assert (=> b!2997538 (= c!493136 ((_ is Union!9363) (ite c!492911 (reg!9692 (regOne!19238 r!17423)) (ite c!492910 (regOne!19239 (regOne!19238 r!17423)) (regTwo!19238 (regOne!19238 r!17423))))))))

(declare-fun b!2997539 () Bool)

(assert (=> b!2997539 (= e!1883517 e!1883520)))

(declare-fun res!1235950 () Bool)

(assert (=> b!2997539 (= res!1235950 (not (nullable!3026 (reg!9692 (ite c!492911 (reg!9692 (regOne!19238 r!17423)) (ite c!492910 (regOne!19239 (regOne!19238 r!17423)) (regTwo!19238 (regOne!19238 r!17423))))))))))

(assert (=> b!2997539 (=> (not res!1235950) (not e!1883520))))

(declare-fun b!2997540 () Bool)

(declare-fun res!1235947 () Bool)

(declare-fun e!1883519 () Bool)

(assert (=> b!2997540 (=> res!1235947 e!1883519)))

(assert (=> b!2997540 (= res!1235947 (not ((_ is Concat!14684) (ite c!492911 (reg!9692 (regOne!19238 r!17423)) (ite c!492910 (regOne!19239 (regOne!19238 r!17423)) (regTwo!19238 (regOne!19238 r!17423)))))))))

(assert (=> b!2997540 (= e!1883516 e!1883519)))

(declare-fun b!2997541 () Bool)

(assert (=> b!2997541 (= e!1883519 e!1883521)))

(declare-fun res!1235948 () Bool)

(assert (=> b!2997541 (=> (not res!1235948) (not e!1883521))))

(assert (=> b!2997541 (= res!1235948 call!201089)))

(declare-fun bm!201086 () Bool)

(assert (=> bm!201086 (= call!201089 (validRegex!4096 (ite c!493136 (regTwo!19239 (ite c!492911 (reg!9692 (regOne!19238 r!17423)) (ite c!492910 (regOne!19239 (regOne!19238 r!17423)) (regTwo!19238 (regOne!19238 r!17423))))) (regOne!19238 (ite c!492911 (reg!9692 (regOne!19238 r!17423)) (ite c!492910 (regOne!19239 (regOne!19238 r!17423)) (regTwo!19238 (regOne!19238 r!17423))))))))))

(declare-fun b!2997542 () Bool)

(declare-fun e!1883522 () Bool)

(assert (=> b!2997542 (= e!1883522 e!1883517)))

(assert (=> b!2997542 (= c!493137 ((_ is Star!9363) (ite c!492911 (reg!9692 (regOne!19238 r!17423)) (ite c!492910 (regOne!19239 (regOne!19238 r!17423)) (regTwo!19238 (regOne!19238 r!17423))))))))

(declare-fun d!845727 () Bool)

(declare-fun res!1235949 () Bool)

(assert (=> d!845727 (=> res!1235949 e!1883522)))

(assert (=> d!845727 (= res!1235949 ((_ is ElementMatch!9363) (ite c!492911 (reg!9692 (regOne!19238 r!17423)) (ite c!492910 (regOne!19239 (regOne!19238 r!17423)) (regTwo!19238 (regOne!19238 r!17423))))))))

(assert (=> d!845727 (= (validRegex!4096 (ite c!492911 (reg!9692 (regOne!19238 r!17423)) (ite c!492910 (regOne!19239 (regOne!19238 r!17423)) (regTwo!19238 (regOne!19238 r!17423))))) e!1883522)))

(declare-fun b!2997536 () Bool)

(declare-fun res!1235951 () Bool)

(assert (=> b!2997536 (=> (not res!1235951) (not e!1883518))))

(assert (=> b!2997536 (= res!1235951 call!201090)))

(assert (=> b!2997536 (= e!1883516 e!1883518)))

(assert (= (and d!845727 (not res!1235949)) b!2997542))

(assert (= (and b!2997542 c!493137) b!2997539))

(assert (= (and b!2997542 (not c!493137)) b!2997538))

(assert (= (and b!2997539 res!1235950) b!2997534))

(assert (= (and b!2997538 c!493136) b!2997536))

(assert (= (and b!2997538 (not c!493136)) b!2997540))

(assert (= (and b!2997536 res!1235951) b!2997535))

(assert (= (and b!2997540 (not res!1235947)) b!2997541))

(assert (= (and b!2997541 res!1235948) b!2997537))

(assert (= (or b!2997536 b!2997537) bm!201085))

(assert (= (or b!2997535 b!2997541) bm!201086))

(assert (= (or b!2997534 bm!201085) bm!201084))

(declare-fun m!3350739 () Bool)

(assert (=> bm!201084 m!3350739))

(declare-fun m!3350741 () Bool)

(assert (=> b!2997539 m!3350741))

(declare-fun m!3350743 () Bool)

(assert (=> bm!201086 m!3350743))

(assert (=> bm!200892 d!845727))

(declare-fun b!2997543 () Bool)

(declare-fun e!1883524 () Regex!9363)

(declare-fun e!1883525 () Regex!9363)

(assert (=> b!2997543 (= e!1883524 e!1883525)))

(declare-fun c!493142 () Bool)

(assert (=> b!2997543 (= c!493142 ((_ is ElementMatch!9363) (ite c!492856 (regOne!19239 lt!1041417) (regTwo!19238 lt!1041417))))))

(declare-fun b!2997544 () Bool)

(declare-fun c!493139 () Bool)

(assert (=> b!2997544 (= c!493139 (nullable!3026 (regOne!19238 (ite c!492856 (regOne!19239 lt!1041417) (regTwo!19238 lt!1041417)))))))

(declare-fun e!1883526 () Regex!9363)

(declare-fun e!1883527 () Regex!9363)

(assert (=> b!2997544 (= e!1883526 e!1883527)))

(declare-fun b!2997545 () Bool)

(assert (=> b!2997545 (= e!1883524 EmptyLang!9363)))

(declare-fun call!201095 () Regex!9363)

(declare-fun b!2997546 () Bool)

(assert (=> b!2997546 (= e!1883527 (Union!9363 (Concat!14684 call!201095 (regTwo!19238 (ite c!492856 (regOne!19239 lt!1041417) (regTwo!19238 lt!1041417)))) EmptyLang!9363))))

(declare-fun b!2997547 () Bool)

(declare-fun call!201093 () Regex!9363)

(assert (=> b!2997547 (= e!1883526 (Concat!14684 call!201093 (ite c!492856 (regOne!19239 lt!1041417) (regTwo!19238 lt!1041417))))))

(declare-fun b!2997548 () Bool)

(declare-fun c!493141 () Bool)

(assert (=> b!2997548 (= c!493141 ((_ is Union!9363) (ite c!492856 (regOne!19239 lt!1041417) (regTwo!19238 lt!1041417))))))

(declare-fun e!1883523 () Regex!9363)

(assert (=> b!2997548 (= e!1883525 e!1883523)))

(declare-fun bm!201088 () Bool)

(declare-fun call!201092 () Regex!9363)

(declare-fun c!493140 () Bool)

(assert (=> bm!201088 (= call!201092 (derivativeStep!2624 (ite c!493141 (regTwo!19239 (ite c!492856 (regOne!19239 lt!1041417) (regTwo!19238 lt!1041417))) (ite c!493140 (reg!9692 (ite c!492856 (regOne!19239 lt!1041417) (regTwo!19238 lt!1041417))) (regOne!19238 (ite c!492856 (regOne!19239 lt!1041417) (regTwo!19238 lt!1041417))))) (head!6683 s!11993)))))

(declare-fun bm!201089 () Bool)

(assert (=> bm!201089 (= call!201095 call!201093)))

(declare-fun b!2997549 () Bool)

(assert (=> b!2997549 (= e!1883525 (ite (= (head!6683 s!11993) (c!492681 (ite c!492856 (regOne!19239 lt!1041417) (regTwo!19238 lt!1041417)))) EmptyExpr!9363 EmptyLang!9363))))

(declare-fun call!201094 () Regex!9363)

(declare-fun bm!201090 () Bool)

(assert (=> bm!201090 (= call!201094 (derivativeStep!2624 (ite c!493141 (regOne!19239 (ite c!492856 (regOne!19239 lt!1041417) (regTwo!19238 lt!1041417))) (regTwo!19238 (ite c!492856 (regOne!19239 lt!1041417) (regTwo!19238 lt!1041417)))) (head!6683 s!11993)))))

(declare-fun b!2997550 () Bool)

(assert (=> b!2997550 (= e!1883527 (Union!9363 (Concat!14684 call!201095 (regTwo!19238 (ite c!492856 (regOne!19239 lt!1041417) (regTwo!19238 lt!1041417)))) call!201094))))

(declare-fun d!845729 () Bool)

(declare-fun lt!1041581 () Regex!9363)

(assert (=> d!845729 (validRegex!4096 lt!1041581)))

(assert (=> d!845729 (= lt!1041581 e!1883524)))

(declare-fun c!493138 () Bool)

(assert (=> d!845729 (= c!493138 (or ((_ is EmptyExpr!9363) (ite c!492856 (regOne!19239 lt!1041417) (regTwo!19238 lt!1041417))) ((_ is EmptyLang!9363) (ite c!492856 (regOne!19239 lt!1041417) (regTwo!19238 lt!1041417)))))))

(assert (=> d!845729 (validRegex!4096 (ite c!492856 (regOne!19239 lt!1041417) (regTwo!19238 lt!1041417)))))

(assert (=> d!845729 (= (derivativeStep!2624 (ite c!492856 (regOne!19239 lt!1041417) (regTwo!19238 lt!1041417)) (head!6683 s!11993)) lt!1041581)))

(declare-fun bm!201087 () Bool)

(assert (=> bm!201087 (= call!201093 call!201092)))

(declare-fun b!2997551 () Bool)

(assert (=> b!2997551 (= e!1883523 e!1883526)))

(assert (=> b!2997551 (= c!493140 ((_ is Star!9363) (ite c!492856 (regOne!19239 lt!1041417) (regTwo!19238 lt!1041417))))))

(declare-fun b!2997552 () Bool)

(assert (=> b!2997552 (= e!1883523 (Union!9363 call!201094 call!201092))))

(assert (= (and d!845729 c!493138) b!2997545))

(assert (= (and d!845729 (not c!493138)) b!2997543))

(assert (= (and b!2997543 c!493142) b!2997549))

(assert (= (and b!2997543 (not c!493142)) b!2997548))

(assert (= (and b!2997548 c!493141) b!2997552))

(assert (= (and b!2997548 (not c!493141)) b!2997551))

(assert (= (and b!2997551 c!493140) b!2997547))

(assert (= (and b!2997551 (not c!493140)) b!2997544))

(assert (= (and b!2997544 c!493139) b!2997550))

(assert (= (and b!2997544 (not c!493139)) b!2997546))

(assert (= (or b!2997550 b!2997546) bm!201089))

(assert (= (or b!2997547 bm!201089) bm!201087))

(assert (= (or b!2997552 bm!201087) bm!201088))

(assert (= (or b!2997552 b!2997550) bm!201090))

(declare-fun m!3350745 () Bool)

(assert (=> b!2997544 m!3350745))

(assert (=> bm!201088 m!3350005))

(declare-fun m!3350747 () Bool)

(assert (=> bm!201088 m!3350747))

(assert (=> bm!201090 m!3350005))

(declare-fun m!3350749 () Bool)

(assert (=> bm!201090 m!3350749))

(declare-fun m!3350751 () Bool)

(assert (=> d!845729 m!3350751))

(declare-fun m!3350753 () Bool)

(assert (=> d!845729 m!3350753))

(assert (=> bm!200852 d!845729))

(declare-fun d!845731 () Bool)

(assert (=> d!845731 (= (nullable!3026 (reg!9692 lt!1041444)) (nullableFct!860 (reg!9692 lt!1041444)))))

(declare-fun bs!528155 () Bool)

(assert (= bs!528155 d!845731))

(declare-fun m!3350755 () Bool)

(assert (=> bs!528155 m!3350755))

(assert (=> b!2996742 d!845731))

(assert (=> b!2996629 d!845645))

(assert (=> bm!200930 d!845441))

(declare-fun b!2997553 () Bool)

(declare-fun e!1883532 () Bool)

(declare-fun call!201098 () Bool)

(assert (=> b!2997553 (= e!1883532 call!201098)))

(declare-fun b!2997554 () Bool)

(declare-fun e!1883530 () Bool)

(declare-fun call!201096 () Bool)

(assert (=> b!2997554 (= e!1883530 call!201096)))

(declare-fun c!493144 () Bool)

(declare-fun bm!201091 () Bool)

(declare-fun c!493143 () Bool)

(assert (=> bm!201091 (= call!201098 (validRegex!4096 (ite c!493144 (reg!9692 (ite c!492909 (reg!9692 lt!1041450) (ite c!492908 (regOne!19239 lt!1041450) (regTwo!19238 lt!1041450)))) (ite c!493143 (regOne!19239 (ite c!492909 (reg!9692 lt!1041450) (ite c!492908 (regOne!19239 lt!1041450) (regTwo!19238 lt!1041450)))) (regTwo!19238 (ite c!492909 (reg!9692 lt!1041450) (ite c!492908 (regOne!19239 lt!1041450) (regTwo!19238 lt!1041450))))))))))

(declare-fun b!2997556 () Bool)

(declare-fun e!1883533 () Bool)

(declare-fun call!201097 () Bool)

(assert (=> b!2997556 (= e!1883533 call!201097)))

(declare-fun bm!201092 () Bool)

(assert (=> bm!201092 (= call!201097 call!201098)))

(declare-fun b!2997557 () Bool)

(declare-fun e!1883529 () Bool)

(declare-fun e!1883528 () Bool)

(assert (=> b!2997557 (= e!1883529 e!1883528)))

(assert (=> b!2997557 (= c!493143 ((_ is Union!9363) (ite c!492909 (reg!9692 lt!1041450) (ite c!492908 (regOne!19239 lt!1041450) (regTwo!19238 lt!1041450)))))))

(declare-fun b!2997558 () Bool)

(assert (=> b!2997558 (= e!1883529 e!1883532)))

(declare-fun res!1235955 () Bool)

(assert (=> b!2997558 (= res!1235955 (not (nullable!3026 (reg!9692 (ite c!492909 (reg!9692 lt!1041450) (ite c!492908 (regOne!19239 lt!1041450) (regTwo!19238 lt!1041450)))))))))

(assert (=> b!2997558 (=> (not res!1235955) (not e!1883532))))

(declare-fun b!2997559 () Bool)

(declare-fun res!1235952 () Bool)

(declare-fun e!1883531 () Bool)

(assert (=> b!2997559 (=> res!1235952 e!1883531)))

(assert (=> b!2997559 (= res!1235952 (not ((_ is Concat!14684) (ite c!492909 (reg!9692 lt!1041450) (ite c!492908 (regOne!19239 lt!1041450) (regTwo!19238 lt!1041450))))))))

(assert (=> b!2997559 (= e!1883528 e!1883531)))

(declare-fun b!2997560 () Bool)

(assert (=> b!2997560 (= e!1883531 e!1883533)))

(declare-fun res!1235953 () Bool)

(assert (=> b!2997560 (=> (not res!1235953) (not e!1883533))))

(assert (=> b!2997560 (= res!1235953 call!201096)))

(declare-fun bm!201093 () Bool)

(assert (=> bm!201093 (= call!201096 (validRegex!4096 (ite c!493143 (regTwo!19239 (ite c!492909 (reg!9692 lt!1041450) (ite c!492908 (regOne!19239 lt!1041450) (regTwo!19238 lt!1041450)))) (regOne!19238 (ite c!492909 (reg!9692 lt!1041450) (ite c!492908 (regOne!19239 lt!1041450) (regTwo!19238 lt!1041450)))))))))

(declare-fun b!2997561 () Bool)

(declare-fun e!1883534 () Bool)

(assert (=> b!2997561 (= e!1883534 e!1883529)))

(assert (=> b!2997561 (= c!493144 ((_ is Star!9363) (ite c!492909 (reg!9692 lt!1041450) (ite c!492908 (regOne!19239 lt!1041450) (regTwo!19238 lt!1041450)))))))

(declare-fun d!845733 () Bool)

(declare-fun res!1235954 () Bool)

(assert (=> d!845733 (=> res!1235954 e!1883534)))

(assert (=> d!845733 (= res!1235954 ((_ is ElementMatch!9363) (ite c!492909 (reg!9692 lt!1041450) (ite c!492908 (regOne!19239 lt!1041450) (regTwo!19238 lt!1041450)))))))

(assert (=> d!845733 (= (validRegex!4096 (ite c!492909 (reg!9692 lt!1041450) (ite c!492908 (regOne!19239 lt!1041450) (regTwo!19238 lt!1041450)))) e!1883534)))

(declare-fun b!2997555 () Bool)

(declare-fun res!1235956 () Bool)

(assert (=> b!2997555 (=> (not res!1235956) (not e!1883530))))

(assert (=> b!2997555 (= res!1235956 call!201097)))

(assert (=> b!2997555 (= e!1883528 e!1883530)))

(assert (= (and d!845733 (not res!1235954)) b!2997561))

(assert (= (and b!2997561 c!493144) b!2997558))

(assert (= (and b!2997561 (not c!493144)) b!2997557))

(assert (= (and b!2997558 res!1235955) b!2997553))

(assert (= (and b!2997557 c!493143) b!2997555))

(assert (= (and b!2997557 (not c!493143)) b!2997559))

(assert (= (and b!2997555 res!1235956) b!2997554))

(assert (= (and b!2997559 (not res!1235952)) b!2997560))

(assert (= (and b!2997560 res!1235953) b!2997556))

(assert (= (or b!2997555 b!2997556) bm!201092))

(assert (= (or b!2997554 b!2997560) bm!201093))

(assert (= (or b!2997553 bm!201092) bm!201091))

(declare-fun m!3350757 () Bool)

(assert (=> bm!201091 m!3350757))

(declare-fun m!3350759 () Bool)

(assert (=> b!2997558 m!3350759))

(declare-fun m!3350761 () Bool)

(assert (=> bm!201093 m!3350761))

(assert (=> bm!200889 d!845733))

(declare-fun d!845735 () Bool)

(assert (=> d!845735 (= (nullable!3026 (reg!9692 (regOne!19238 r!17423))) (nullableFct!860 (reg!9692 (regOne!19238 r!17423))))))

(declare-fun bs!528156 () Bool)

(assert (= bs!528156 d!845735))

(declare-fun m!3350763 () Bool)

(assert (=> bs!528156 m!3350763))

(assert (=> b!2996656 d!845735))

(declare-fun b!2997562 () Bool)

(declare-fun e!1883539 () Bool)

(declare-fun call!201101 () Bool)

(assert (=> b!2997562 (= e!1883539 call!201101)))

(declare-fun b!2997563 () Bool)

(declare-fun e!1883537 () Bool)

(declare-fun call!201099 () Bool)

(assert (=> b!2997563 (= e!1883537 call!201099)))

(declare-fun bm!201094 () Bool)

(declare-fun c!493146 () Bool)

(declare-fun c!493145 () Bool)

(assert (=> bm!201094 (= call!201101 (validRegex!4096 (ite c!493146 (reg!9692 (ite c!492938 (regTwo!19239 (ite c!492693 (reg!9692 r!17423) (ite c!492692 (regOne!19239 r!17423) (regTwo!19238 r!17423)))) (regOne!19238 (ite c!492693 (reg!9692 r!17423) (ite c!492692 (regOne!19239 r!17423) (regTwo!19238 r!17423)))))) (ite c!493145 (regOne!19239 (ite c!492938 (regTwo!19239 (ite c!492693 (reg!9692 r!17423) (ite c!492692 (regOne!19239 r!17423) (regTwo!19238 r!17423)))) (regOne!19238 (ite c!492693 (reg!9692 r!17423) (ite c!492692 (regOne!19239 r!17423) (regTwo!19238 r!17423)))))) (regTwo!19238 (ite c!492938 (regTwo!19239 (ite c!492693 (reg!9692 r!17423) (ite c!492692 (regOne!19239 r!17423) (regTwo!19238 r!17423)))) (regOne!19238 (ite c!492693 (reg!9692 r!17423) (ite c!492692 (regOne!19239 r!17423) (regTwo!19238 r!17423))))))))))))

(declare-fun b!2997565 () Bool)

(declare-fun e!1883540 () Bool)

(declare-fun call!201100 () Bool)

(assert (=> b!2997565 (= e!1883540 call!201100)))

(declare-fun bm!201095 () Bool)

(assert (=> bm!201095 (= call!201100 call!201101)))

(declare-fun b!2997566 () Bool)

(declare-fun e!1883536 () Bool)

(declare-fun e!1883535 () Bool)

(assert (=> b!2997566 (= e!1883536 e!1883535)))

(assert (=> b!2997566 (= c!493145 ((_ is Union!9363) (ite c!492938 (regTwo!19239 (ite c!492693 (reg!9692 r!17423) (ite c!492692 (regOne!19239 r!17423) (regTwo!19238 r!17423)))) (regOne!19238 (ite c!492693 (reg!9692 r!17423) (ite c!492692 (regOne!19239 r!17423) (regTwo!19238 r!17423)))))))))

(declare-fun b!2997567 () Bool)

(assert (=> b!2997567 (= e!1883536 e!1883539)))

(declare-fun res!1235960 () Bool)

(assert (=> b!2997567 (= res!1235960 (not (nullable!3026 (reg!9692 (ite c!492938 (regTwo!19239 (ite c!492693 (reg!9692 r!17423) (ite c!492692 (regOne!19239 r!17423) (regTwo!19238 r!17423)))) (regOne!19238 (ite c!492693 (reg!9692 r!17423) (ite c!492692 (regOne!19239 r!17423) (regTwo!19238 r!17423)))))))))))

(assert (=> b!2997567 (=> (not res!1235960) (not e!1883539))))

(declare-fun b!2997568 () Bool)

(declare-fun res!1235957 () Bool)

(declare-fun e!1883538 () Bool)

(assert (=> b!2997568 (=> res!1235957 e!1883538)))

(assert (=> b!2997568 (= res!1235957 (not ((_ is Concat!14684) (ite c!492938 (regTwo!19239 (ite c!492693 (reg!9692 r!17423) (ite c!492692 (regOne!19239 r!17423) (regTwo!19238 r!17423)))) (regOne!19238 (ite c!492693 (reg!9692 r!17423) (ite c!492692 (regOne!19239 r!17423) (regTwo!19238 r!17423))))))))))

(assert (=> b!2997568 (= e!1883535 e!1883538)))

(declare-fun b!2997569 () Bool)

(assert (=> b!2997569 (= e!1883538 e!1883540)))

(declare-fun res!1235958 () Bool)

(assert (=> b!2997569 (=> (not res!1235958) (not e!1883540))))

(assert (=> b!2997569 (= res!1235958 call!201099)))

(declare-fun bm!201096 () Bool)

(assert (=> bm!201096 (= call!201099 (validRegex!4096 (ite c!493145 (regTwo!19239 (ite c!492938 (regTwo!19239 (ite c!492693 (reg!9692 r!17423) (ite c!492692 (regOne!19239 r!17423) (regTwo!19238 r!17423)))) (regOne!19238 (ite c!492693 (reg!9692 r!17423) (ite c!492692 (regOne!19239 r!17423) (regTwo!19238 r!17423)))))) (regOne!19238 (ite c!492938 (regTwo!19239 (ite c!492693 (reg!9692 r!17423) (ite c!492692 (regOne!19239 r!17423) (regTwo!19238 r!17423)))) (regOne!19238 (ite c!492693 (reg!9692 r!17423) (ite c!492692 (regOne!19239 r!17423) (regTwo!19238 r!17423)))))))))))

(declare-fun b!2997570 () Bool)

(declare-fun e!1883541 () Bool)

(assert (=> b!2997570 (= e!1883541 e!1883536)))

(assert (=> b!2997570 (= c!493146 ((_ is Star!9363) (ite c!492938 (regTwo!19239 (ite c!492693 (reg!9692 r!17423) (ite c!492692 (regOne!19239 r!17423) (regTwo!19238 r!17423)))) (regOne!19238 (ite c!492693 (reg!9692 r!17423) (ite c!492692 (regOne!19239 r!17423) (regTwo!19238 r!17423)))))))))

(declare-fun d!845737 () Bool)

(declare-fun res!1235959 () Bool)

(assert (=> d!845737 (=> res!1235959 e!1883541)))

(assert (=> d!845737 (= res!1235959 ((_ is ElementMatch!9363) (ite c!492938 (regTwo!19239 (ite c!492693 (reg!9692 r!17423) (ite c!492692 (regOne!19239 r!17423) (regTwo!19238 r!17423)))) (regOne!19238 (ite c!492693 (reg!9692 r!17423) (ite c!492692 (regOne!19239 r!17423) (regTwo!19238 r!17423)))))))))

(assert (=> d!845737 (= (validRegex!4096 (ite c!492938 (regTwo!19239 (ite c!492693 (reg!9692 r!17423) (ite c!492692 (regOne!19239 r!17423) (regTwo!19238 r!17423)))) (regOne!19238 (ite c!492693 (reg!9692 r!17423) (ite c!492692 (regOne!19239 r!17423) (regTwo!19238 r!17423)))))) e!1883541)))

(declare-fun b!2997564 () Bool)

(declare-fun res!1235961 () Bool)

(assert (=> b!2997564 (=> (not res!1235961) (not e!1883537))))

(assert (=> b!2997564 (= res!1235961 call!201100)))

(assert (=> b!2997564 (= e!1883535 e!1883537)))

(assert (= (and d!845737 (not res!1235959)) b!2997570))

(assert (= (and b!2997570 c!493146) b!2997567))

(assert (= (and b!2997570 (not c!493146)) b!2997566))

(assert (= (and b!2997567 res!1235960) b!2997562))

(assert (= (and b!2997566 c!493145) b!2997564))

(assert (= (and b!2997566 (not c!493145)) b!2997568))

(assert (= (and b!2997564 res!1235961) b!2997563))

(assert (= (and b!2997568 (not res!1235957)) b!2997569))

(assert (= (and b!2997569 res!1235958) b!2997565))

(assert (= (or b!2997564 b!2997565) bm!201095))

(assert (= (or b!2997563 b!2997569) bm!201096))

(assert (= (or b!2997562 bm!201095) bm!201094))

(declare-fun m!3350765 () Bool)

(assert (=> bm!201094 m!3350765))

(declare-fun m!3350767 () Bool)

(assert (=> b!2997567 m!3350767))

(declare-fun m!3350769 () Bool)

(assert (=> bm!201096 m!3350769))

(assert (=> bm!200912 d!845737))

(declare-fun bs!528157 () Bool)

(declare-fun b!2997578 () Bool)

(assert (= bs!528157 (and b!2997578 b!2996377)))

(declare-fun lambda!112053 () Int)

(assert (=> bs!528157 (= (and (= (reg!9692 (regOne!19239 (regOne!19239 r!17423))) (reg!9692 r!17423)) (= (regOne!19239 (regOne!19239 r!17423)) r!17423)) (= lambda!112053 lambda!112041))))

(declare-fun bs!528158 () Bool)

(assert (= bs!528158 (and b!2997578 b!2996437)))

(assert (=> bs!528158 (not (= lambda!112053 lambda!112044))))

(declare-fun bs!528159 () Bool)

(assert (= bs!528159 (and b!2997578 b!2996373)))

(assert (=> bs!528159 (not (= lambda!112053 lambda!112042))))

(declare-fun bs!528160 () Bool)

(assert (= bs!528160 (and b!2997578 b!2997391)))

(assert (=> bs!528160 (not (= lambda!112053 lambda!112052))))

(declare-fun bs!528161 () Bool)

(assert (= bs!528161 (and b!2997578 b!2996783)))

(assert (=> bs!528161 (not (= lambda!112053 lambda!112048))))

(declare-fun bs!528162 () Bool)

(assert (= bs!528162 (and b!2997578 b!2996441)))

(assert (=> bs!528162 (= (and (= (reg!9692 (regOne!19239 (regOne!19239 r!17423))) (reg!9692 (regOne!19239 r!17423))) (= (regOne!19239 (regOne!19239 r!17423)) (regOne!19239 r!17423))) (= lambda!112053 lambda!112043))))

(declare-fun bs!528163 () Bool)

(assert (= bs!528163 (and b!2997578 b!2996787)))

(assert (=> bs!528163 (= (and (= (reg!9692 (regOne!19239 (regOne!19239 r!17423))) (reg!9692 (regTwo!19239 r!17423))) (= (regOne!19239 (regOne!19239 r!17423)) (regTwo!19239 r!17423))) (= lambda!112053 lambda!112047))))

(declare-fun bs!528164 () Bool)

(assert (= bs!528164 (and b!2997578 b!2997395)))

(assert (=> bs!528164 (= (and (= (reg!9692 (regOne!19239 (regOne!19239 r!17423))) (reg!9692 (regTwo!19239 (regOne!19239 r!17423)))) (= (regOne!19239 (regOne!19239 r!17423)) (regTwo!19239 (regOne!19239 r!17423)))) (= lambda!112053 lambda!112051))))

(assert (=> b!2997578 true))

(assert (=> b!2997578 true))

(declare-fun bs!528165 () Bool)

(declare-fun b!2997574 () Bool)

(assert (= bs!528165 (and b!2997574 b!2996377)))

(declare-fun lambda!112054 () Int)

(assert (=> bs!528165 (not (= lambda!112054 lambda!112041))))

(declare-fun bs!528166 () Bool)

(assert (= bs!528166 (and b!2997574 b!2996437)))

(assert (=> bs!528166 (= (and (= (regOne!19238 (regOne!19239 (regOne!19239 r!17423))) (regOne!19238 (regOne!19239 r!17423))) (= (regTwo!19238 (regOne!19239 (regOne!19239 r!17423))) (regTwo!19238 (regOne!19239 r!17423)))) (= lambda!112054 lambda!112044))))

(declare-fun bs!528167 () Bool)

(assert (= bs!528167 (and b!2997574 b!2996373)))

(assert (=> bs!528167 (= (and (= (regOne!19238 (regOne!19239 (regOne!19239 r!17423))) (regOne!19238 r!17423)) (= (regTwo!19238 (regOne!19239 (regOne!19239 r!17423))) (regTwo!19238 r!17423))) (= lambda!112054 lambda!112042))))

(declare-fun bs!528168 () Bool)

(assert (= bs!528168 (and b!2997574 b!2997391)))

(assert (=> bs!528168 (= (and (= (regOne!19238 (regOne!19239 (regOne!19239 r!17423))) (regOne!19238 (regTwo!19239 (regOne!19239 r!17423)))) (= (regTwo!19238 (regOne!19239 (regOne!19239 r!17423))) (regTwo!19238 (regTwo!19239 (regOne!19239 r!17423))))) (= lambda!112054 lambda!112052))))

(declare-fun bs!528169 () Bool)

(assert (= bs!528169 (and b!2997574 b!2996783)))

(assert (=> bs!528169 (= (and (= (regOne!19238 (regOne!19239 (regOne!19239 r!17423))) (regOne!19238 (regTwo!19239 r!17423))) (= (regTwo!19238 (regOne!19239 (regOne!19239 r!17423))) (regTwo!19238 (regTwo!19239 r!17423)))) (= lambda!112054 lambda!112048))))

(declare-fun bs!528170 () Bool)

(assert (= bs!528170 (and b!2997574 b!2996441)))

(assert (=> bs!528170 (not (= lambda!112054 lambda!112043))))

(declare-fun bs!528171 () Bool)

(assert (= bs!528171 (and b!2997574 b!2997578)))

(assert (=> bs!528171 (not (= lambda!112054 lambda!112053))))

(declare-fun bs!528172 () Bool)

(assert (= bs!528172 (and b!2997574 b!2996787)))

(assert (=> bs!528172 (not (= lambda!112054 lambda!112047))))

(declare-fun bs!528173 () Bool)

(assert (= bs!528173 (and b!2997574 b!2997395)))

(assert (=> bs!528173 (not (= lambda!112054 lambda!112051))))

(assert (=> b!2997574 true))

(assert (=> b!2997574 true))

(declare-fun bm!201097 () Bool)

(declare-fun call!201103 () Bool)

(assert (=> bm!201097 (= call!201103 (isEmpty!19378 s!11993))))

(declare-fun b!2997571 () Bool)

(declare-fun c!493147 () Bool)

(assert (=> b!2997571 (= c!493147 ((_ is Union!9363) (regOne!19239 (regOne!19239 r!17423))))))

(declare-fun e!1883544 () Bool)

(declare-fun e!1883543 () Bool)

(assert (=> b!2997571 (= e!1883544 e!1883543)))

(declare-fun b!2997572 () Bool)

(assert (=> b!2997572 (= e!1883544 (= s!11993 (Cons!35104 (c!492681 (regOne!19239 (regOne!19239 r!17423))) Nil!35104)))))

(declare-fun b!2997573 () Bool)

(declare-fun e!1883546 () Bool)

(assert (=> b!2997573 (= e!1883543 e!1883546)))

(declare-fun c!493149 () Bool)

(assert (=> b!2997573 (= c!493149 ((_ is Star!9363) (regOne!19239 (regOne!19239 r!17423))))))

(declare-fun d!845739 () Bool)

(declare-fun c!493148 () Bool)

(assert (=> d!845739 (= c!493148 ((_ is EmptyExpr!9363) (regOne!19239 (regOne!19239 r!17423))))))

(declare-fun e!1883542 () Bool)

(assert (=> d!845739 (= (matchRSpec!1500 (regOne!19239 (regOne!19239 r!17423)) s!11993) e!1883542)))

(declare-fun call!201102 () Bool)

(assert (=> b!2997574 (= e!1883546 call!201102)))

(declare-fun b!2997575 () Bool)

(declare-fun e!1883545 () Bool)

(assert (=> b!2997575 (= e!1883545 (matchRSpec!1500 (regTwo!19239 (regOne!19239 (regOne!19239 r!17423))) s!11993))))

(declare-fun b!2997576 () Bool)

(assert (=> b!2997576 (= e!1883543 e!1883545)))

(declare-fun res!1235962 () Bool)

(assert (=> b!2997576 (= res!1235962 (matchRSpec!1500 (regOne!19239 (regOne!19239 (regOne!19239 r!17423))) s!11993))))

(assert (=> b!2997576 (=> res!1235962 e!1883545)))

(declare-fun b!2997577 () Bool)

(declare-fun c!493150 () Bool)

(assert (=> b!2997577 (= c!493150 ((_ is ElementMatch!9363) (regOne!19239 (regOne!19239 r!17423))))))

(declare-fun e!1883547 () Bool)

(assert (=> b!2997577 (= e!1883547 e!1883544)))

(declare-fun e!1883548 () Bool)

(assert (=> b!2997578 (= e!1883548 call!201102)))

(declare-fun b!2997579 () Bool)

(assert (=> b!2997579 (= e!1883542 e!1883547)))

(declare-fun res!1235963 () Bool)

(assert (=> b!2997579 (= res!1235963 (not ((_ is EmptyLang!9363) (regOne!19239 (regOne!19239 r!17423)))))))

(assert (=> b!2997579 (=> (not res!1235963) (not e!1883547))))

(declare-fun b!2997580 () Bool)

(assert (=> b!2997580 (= e!1883542 call!201103)))

(declare-fun b!2997581 () Bool)

(declare-fun res!1235964 () Bool)

(assert (=> b!2997581 (=> res!1235964 e!1883548)))

(assert (=> b!2997581 (= res!1235964 call!201103)))

(assert (=> b!2997581 (= e!1883546 e!1883548)))

(declare-fun bm!201098 () Bool)

(assert (=> bm!201098 (= call!201102 (Exists!1636 (ite c!493149 lambda!112053 lambda!112054)))))

(assert (= (and d!845739 c!493148) b!2997580))

(assert (= (and d!845739 (not c!493148)) b!2997579))

(assert (= (and b!2997579 res!1235963) b!2997577))

(assert (= (and b!2997577 c!493150) b!2997572))

(assert (= (and b!2997577 (not c!493150)) b!2997571))

(assert (= (and b!2997571 c!493147) b!2997576))

(assert (= (and b!2997571 (not c!493147)) b!2997573))

(assert (= (and b!2997576 (not res!1235962)) b!2997575))

(assert (= (and b!2997573 c!493149) b!2997581))

(assert (= (and b!2997573 (not c!493149)) b!2997574))

(assert (= (and b!2997581 (not res!1235964)) b!2997578))

(assert (= (or b!2997578 b!2997574) bm!201098))

(assert (= (or b!2997580 b!2997581) bm!201097))

(assert (=> bm!201097 m!3349927))

(declare-fun m!3350771 () Bool)

(assert (=> b!2997575 m!3350771))

(declare-fun m!3350773 () Bool)

(assert (=> b!2997576 m!3350773))

(declare-fun m!3350775 () Bool)

(assert (=> bm!201098 m!3350775))

(assert (=> b!2996439 d!845739))

(assert (=> d!845477 d!845497))

(declare-fun b!2997582 () Bool)

(declare-fun e!1883553 () Bool)

(declare-fun call!201106 () Bool)

(assert (=> b!2997582 (= e!1883553 call!201106)))

(declare-fun b!2997583 () Bool)

(declare-fun e!1883551 () Bool)

(declare-fun call!201104 () Bool)

(assert (=> b!2997583 (= e!1883551 call!201104)))

(declare-fun c!493151 () Bool)

(declare-fun c!493152 () Bool)

(declare-fun bm!201099 () Bool)

(assert (=> bm!201099 (= call!201106 (validRegex!4096 (ite c!493152 (reg!9692 (derivativeStep!2624 lt!1041417 (head!6683 s!11993))) (ite c!493151 (regOne!19239 (derivativeStep!2624 lt!1041417 (head!6683 s!11993))) (regTwo!19238 (derivativeStep!2624 lt!1041417 (head!6683 s!11993)))))))))

(declare-fun b!2997585 () Bool)

(declare-fun e!1883554 () Bool)

(declare-fun call!201105 () Bool)

(assert (=> b!2997585 (= e!1883554 call!201105)))

(declare-fun bm!201100 () Bool)

(assert (=> bm!201100 (= call!201105 call!201106)))

(declare-fun b!2997586 () Bool)

(declare-fun e!1883550 () Bool)

(declare-fun e!1883549 () Bool)

(assert (=> b!2997586 (= e!1883550 e!1883549)))

(assert (=> b!2997586 (= c!493151 ((_ is Union!9363) (derivativeStep!2624 lt!1041417 (head!6683 s!11993))))))

(declare-fun b!2997587 () Bool)

(assert (=> b!2997587 (= e!1883550 e!1883553)))

(declare-fun res!1235968 () Bool)

(assert (=> b!2997587 (= res!1235968 (not (nullable!3026 (reg!9692 (derivativeStep!2624 lt!1041417 (head!6683 s!11993))))))))

(assert (=> b!2997587 (=> (not res!1235968) (not e!1883553))))

(declare-fun b!2997588 () Bool)

(declare-fun res!1235965 () Bool)

(declare-fun e!1883552 () Bool)

(assert (=> b!2997588 (=> res!1235965 e!1883552)))

(assert (=> b!2997588 (= res!1235965 (not ((_ is Concat!14684) (derivativeStep!2624 lt!1041417 (head!6683 s!11993)))))))

(assert (=> b!2997588 (= e!1883549 e!1883552)))

(declare-fun b!2997589 () Bool)

(assert (=> b!2997589 (= e!1883552 e!1883554)))

(declare-fun res!1235966 () Bool)

(assert (=> b!2997589 (=> (not res!1235966) (not e!1883554))))

(assert (=> b!2997589 (= res!1235966 call!201104)))

(declare-fun bm!201101 () Bool)

(assert (=> bm!201101 (= call!201104 (validRegex!4096 (ite c!493151 (regTwo!19239 (derivativeStep!2624 lt!1041417 (head!6683 s!11993))) (regOne!19238 (derivativeStep!2624 lt!1041417 (head!6683 s!11993))))))))

(declare-fun b!2997590 () Bool)

(declare-fun e!1883555 () Bool)

(assert (=> b!2997590 (= e!1883555 e!1883550)))

(assert (=> b!2997590 (= c!493152 ((_ is Star!9363) (derivativeStep!2624 lt!1041417 (head!6683 s!11993))))))

(declare-fun d!845741 () Bool)

(declare-fun res!1235967 () Bool)

(assert (=> d!845741 (=> res!1235967 e!1883555)))

(assert (=> d!845741 (= res!1235967 ((_ is ElementMatch!9363) (derivativeStep!2624 lt!1041417 (head!6683 s!11993))))))

(assert (=> d!845741 (= (validRegex!4096 (derivativeStep!2624 lt!1041417 (head!6683 s!11993))) e!1883555)))

(declare-fun b!2997584 () Bool)

(declare-fun res!1235969 () Bool)

(assert (=> b!2997584 (=> (not res!1235969) (not e!1883551))))

(assert (=> b!2997584 (= res!1235969 call!201105)))

(assert (=> b!2997584 (= e!1883549 e!1883551)))

(assert (= (and d!845741 (not res!1235967)) b!2997590))

(assert (= (and b!2997590 c!493152) b!2997587))

(assert (= (and b!2997590 (not c!493152)) b!2997586))

(assert (= (and b!2997587 res!1235968) b!2997582))

(assert (= (and b!2997586 c!493151) b!2997584))

(assert (= (and b!2997586 (not c!493151)) b!2997588))

(assert (= (and b!2997584 res!1235969) b!2997583))

(assert (= (and b!2997588 (not res!1235965)) b!2997589))

(assert (= (and b!2997589 res!1235966) b!2997585))

(assert (= (or b!2997584 b!2997585) bm!201100))

(assert (= (or b!2997583 b!2997589) bm!201101))

(assert (= (or b!2997582 bm!201100) bm!201099))

(declare-fun m!3350777 () Bool)

(assert (=> bm!201099 m!3350777))

(declare-fun m!3350779 () Bool)

(assert (=> b!2997587 m!3350779))

(declare-fun m!3350781 () Bool)

(assert (=> bm!201101 m!3350781))

(assert (=> d!845477 d!845741))

(assert (=> b!2996445 d!845665))

(assert (=> b!2996445 d!845647))

(declare-fun d!845743 () Bool)

(assert (=> d!845743 (= (nullable!3026 lt!1041519) (nullableFct!860 lt!1041519))))

(declare-fun bs!528174 () Bool)

(assert (= bs!528174 d!845743))

(declare-fun m!3350783 () Bool)

(assert (=> bs!528174 m!3350783))

(assert (=> b!2996706 d!845743))

(declare-fun d!845745 () Bool)

(assert (=> d!845745 (= (nullable!3026 (ite c!492741 (regTwo!19239 (regOne!19238 r!17423)) (regOne!19238 (regOne!19238 r!17423)))) (nullableFct!860 (ite c!492741 (regTwo!19239 (regOne!19238 r!17423)) (regOne!19238 (regOne!19238 r!17423)))))))

(declare-fun bs!528175 () Bool)

(assert (= bs!528175 d!845745))

(declare-fun m!3350785 () Bool)

(assert (=> bs!528175 m!3350785))

(assert (=> b!2996706 d!845745))

(declare-fun b!2997591 () Bool)

(declare-fun e!1883560 () Bool)

(declare-fun call!201109 () Bool)

(assert (=> b!2997591 (= e!1883560 call!201109)))

(declare-fun b!2997592 () Bool)

(declare-fun e!1883558 () Bool)

(declare-fun call!201107 () Bool)

(assert (=> b!2997592 (= e!1883558 call!201107)))

(declare-fun c!493154 () Bool)

(declare-fun bm!201102 () Bool)

(declare-fun c!493153 () Bool)

(assert (=> bm!201102 (= call!201109 (validRegex!4096 (ite c!493154 (reg!9692 (ite c!492953 (regTwo!19239 (ite c!492692 (regTwo!19239 r!17423) (regOne!19238 r!17423))) (regOne!19238 (ite c!492692 (regTwo!19239 r!17423) (regOne!19238 r!17423))))) (ite c!493153 (regOne!19239 (ite c!492953 (regTwo!19239 (ite c!492692 (regTwo!19239 r!17423) (regOne!19238 r!17423))) (regOne!19238 (ite c!492692 (regTwo!19239 r!17423) (regOne!19238 r!17423))))) (regTwo!19238 (ite c!492953 (regTwo!19239 (ite c!492692 (regTwo!19239 r!17423) (regOne!19238 r!17423))) (regOne!19238 (ite c!492692 (regTwo!19239 r!17423) (regOne!19238 r!17423)))))))))))

(declare-fun b!2997594 () Bool)

(declare-fun e!1883561 () Bool)

(declare-fun call!201108 () Bool)

(assert (=> b!2997594 (= e!1883561 call!201108)))

(declare-fun bm!201103 () Bool)

(assert (=> bm!201103 (= call!201108 call!201109)))

(declare-fun b!2997595 () Bool)

(declare-fun e!1883557 () Bool)

(declare-fun e!1883556 () Bool)

(assert (=> b!2997595 (= e!1883557 e!1883556)))

(assert (=> b!2997595 (= c!493153 ((_ is Union!9363) (ite c!492953 (regTwo!19239 (ite c!492692 (regTwo!19239 r!17423) (regOne!19238 r!17423))) (regOne!19238 (ite c!492692 (regTwo!19239 r!17423) (regOne!19238 r!17423))))))))

(declare-fun b!2997596 () Bool)

(assert (=> b!2997596 (= e!1883557 e!1883560)))

(declare-fun res!1235973 () Bool)

(assert (=> b!2997596 (= res!1235973 (not (nullable!3026 (reg!9692 (ite c!492953 (regTwo!19239 (ite c!492692 (regTwo!19239 r!17423) (regOne!19238 r!17423))) (regOne!19238 (ite c!492692 (regTwo!19239 r!17423) (regOne!19238 r!17423))))))))))

(assert (=> b!2997596 (=> (not res!1235973) (not e!1883560))))

(declare-fun b!2997597 () Bool)

(declare-fun res!1235970 () Bool)

(declare-fun e!1883559 () Bool)

(assert (=> b!2997597 (=> res!1235970 e!1883559)))

(assert (=> b!2997597 (= res!1235970 (not ((_ is Concat!14684) (ite c!492953 (regTwo!19239 (ite c!492692 (regTwo!19239 r!17423) (regOne!19238 r!17423))) (regOne!19238 (ite c!492692 (regTwo!19239 r!17423) (regOne!19238 r!17423)))))))))

(assert (=> b!2997597 (= e!1883556 e!1883559)))

(declare-fun b!2997598 () Bool)

(assert (=> b!2997598 (= e!1883559 e!1883561)))

(declare-fun res!1235971 () Bool)

(assert (=> b!2997598 (=> (not res!1235971) (not e!1883561))))

(assert (=> b!2997598 (= res!1235971 call!201107)))

(declare-fun bm!201104 () Bool)

(assert (=> bm!201104 (= call!201107 (validRegex!4096 (ite c!493153 (regTwo!19239 (ite c!492953 (regTwo!19239 (ite c!492692 (regTwo!19239 r!17423) (regOne!19238 r!17423))) (regOne!19238 (ite c!492692 (regTwo!19239 r!17423) (regOne!19238 r!17423))))) (regOne!19238 (ite c!492953 (regTwo!19239 (ite c!492692 (regTwo!19239 r!17423) (regOne!19238 r!17423))) (regOne!19238 (ite c!492692 (regTwo!19239 r!17423) (regOne!19238 r!17423))))))))))

(declare-fun b!2997599 () Bool)

(declare-fun e!1883562 () Bool)

(assert (=> b!2997599 (= e!1883562 e!1883557)))

(assert (=> b!2997599 (= c!493154 ((_ is Star!9363) (ite c!492953 (regTwo!19239 (ite c!492692 (regTwo!19239 r!17423) (regOne!19238 r!17423))) (regOne!19238 (ite c!492692 (regTwo!19239 r!17423) (regOne!19238 r!17423))))))))

(declare-fun d!845747 () Bool)

(declare-fun res!1235972 () Bool)

(assert (=> d!845747 (=> res!1235972 e!1883562)))

(assert (=> d!845747 (= res!1235972 ((_ is ElementMatch!9363) (ite c!492953 (regTwo!19239 (ite c!492692 (regTwo!19239 r!17423) (regOne!19238 r!17423))) (regOne!19238 (ite c!492692 (regTwo!19239 r!17423) (regOne!19238 r!17423))))))))

(assert (=> d!845747 (= (validRegex!4096 (ite c!492953 (regTwo!19239 (ite c!492692 (regTwo!19239 r!17423) (regOne!19238 r!17423))) (regOne!19238 (ite c!492692 (regTwo!19239 r!17423) (regOne!19238 r!17423))))) e!1883562)))

(declare-fun b!2997593 () Bool)

(declare-fun res!1235974 () Bool)

(assert (=> b!2997593 (=> (not res!1235974) (not e!1883558))))

(assert (=> b!2997593 (= res!1235974 call!201108)))

(assert (=> b!2997593 (= e!1883556 e!1883558)))

(assert (= (and d!845747 (not res!1235972)) b!2997599))

(assert (= (and b!2997599 c!493154) b!2997596))

(assert (= (and b!2997599 (not c!493154)) b!2997595))

(assert (= (and b!2997596 res!1235973) b!2997591))

(assert (= (and b!2997595 c!493153) b!2997593))

(assert (= (and b!2997595 (not c!493153)) b!2997597))

(assert (= (and b!2997593 res!1235974) b!2997592))

(assert (= (and b!2997597 (not res!1235970)) b!2997598))

(assert (= (and b!2997598 res!1235971) b!2997594))

(assert (= (or b!2997593 b!2997594) bm!201103))

(assert (= (or b!2997592 b!2997598) bm!201104))

(assert (= (or b!2997591 bm!201103) bm!201102))

(declare-fun m!3350787 () Bool)

(assert (=> bm!201102 m!3350787))

(declare-fun m!3350789 () Bool)

(assert (=> b!2997596 m!3350789))

(declare-fun m!3350791 () Bool)

(assert (=> bm!201104 m!3350791))

(assert (=> bm!200929 d!845747))

(declare-fun b!2997600 () Bool)

(declare-fun e!1883567 () Bool)

(declare-fun call!201112 () Bool)

(assert (=> b!2997600 (= e!1883567 call!201112)))

(declare-fun b!2997601 () Bool)

(declare-fun e!1883565 () Bool)

(declare-fun call!201110 () Bool)

(assert (=> b!2997601 (= e!1883565 call!201110)))

(declare-fun c!493155 () Bool)

(declare-fun bm!201105 () Bool)

(declare-fun c!493156 () Bool)

(assert (=> bm!201105 (= call!201112 (validRegex!4096 (ite c!493156 (reg!9692 (ite c!492899 (reg!9692 lt!1041417) (ite c!492898 (regOne!19239 lt!1041417) (regTwo!19238 lt!1041417)))) (ite c!493155 (regOne!19239 (ite c!492899 (reg!9692 lt!1041417) (ite c!492898 (regOne!19239 lt!1041417) (regTwo!19238 lt!1041417)))) (regTwo!19238 (ite c!492899 (reg!9692 lt!1041417) (ite c!492898 (regOne!19239 lt!1041417) (regTwo!19238 lt!1041417))))))))))

(declare-fun b!2997603 () Bool)

(declare-fun e!1883568 () Bool)

(declare-fun call!201111 () Bool)

(assert (=> b!2997603 (= e!1883568 call!201111)))

(declare-fun bm!201106 () Bool)

(assert (=> bm!201106 (= call!201111 call!201112)))

(declare-fun b!2997604 () Bool)

(declare-fun e!1883564 () Bool)

(declare-fun e!1883563 () Bool)

(assert (=> b!2997604 (= e!1883564 e!1883563)))

(assert (=> b!2997604 (= c!493155 ((_ is Union!9363) (ite c!492899 (reg!9692 lt!1041417) (ite c!492898 (regOne!19239 lt!1041417) (regTwo!19238 lt!1041417)))))))

(declare-fun b!2997605 () Bool)

(assert (=> b!2997605 (= e!1883564 e!1883567)))

(declare-fun res!1235978 () Bool)

(assert (=> b!2997605 (= res!1235978 (not (nullable!3026 (reg!9692 (ite c!492899 (reg!9692 lt!1041417) (ite c!492898 (regOne!19239 lt!1041417) (regTwo!19238 lt!1041417)))))))))

(assert (=> b!2997605 (=> (not res!1235978) (not e!1883567))))

(declare-fun b!2997606 () Bool)

(declare-fun res!1235975 () Bool)

(declare-fun e!1883566 () Bool)

(assert (=> b!2997606 (=> res!1235975 e!1883566)))

(assert (=> b!2997606 (= res!1235975 (not ((_ is Concat!14684) (ite c!492899 (reg!9692 lt!1041417) (ite c!492898 (regOne!19239 lt!1041417) (regTwo!19238 lt!1041417))))))))

(assert (=> b!2997606 (= e!1883563 e!1883566)))

(declare-fun b!2997607 () Bool)

(assert (=> b!2997607 (= e!1883566 e!1883568)))

(declare-fun res!1235976 () Bool)

(assert (=> b!2997607 (=> (not res!1235976) (not e!1883568))))

(assert (=> b!2997607 (= res!1235976 call!201110)))

(declare-fun bm!201107 () Bool)

(assert (=> bm!201107 (= call!201110 (validRegex!4096 (ite c!493155 (regTwo!19239 (ite c!492899 (reg!9692 lt!1041417) (ite c!492898 (regOne!19239 lt!1041417) (regTwo!19238 lt!1041417)))) (regOne!19238 (ite c!492899 (reg!9692 lt!1041417) (ite c!492898 (regOne!19239 lt!1041417) (regTwo!19238 lt!1041417)))))))))

(declare-fun b!2997608 () Bool)

(declare-fun e!1883569 () Bool)

(assert (=> b!2997608 (= e!1883569 e!1883564)))

(assert (=> b!2997608 (= c!493156 ((_ is Star!9363) (ite c!492899 (reg!9692 lt!1041417) (ite c!492898 (regOne!19239 lt!1041417) (regTwo!19238 lt!1041417)))))))

(declare-fun d!845749 () Bool)

(declare-fun res!1235977 () Bool)

(assert (=> d!845749 (=> res!1235977 e!1883569)))

(assert (=> d!845749 (= res!1235977 ((_ is ElementMatch!9363) (ite c!492899 (reg!9692 lt!1041417) (ite c!492898 (regOne!19239 lt!1041417) (regTwo!19238 lt!1041417)))))))

(assert (=> d!845749 (= (validRegex!4096 (ite c!492899 (reg!9692 lt!1041417) (ite c!492898 (regOne!19239 lt!1041417) (regTwo!19238 lt!1041417)))) e!1883569)))

(declare-fun b!2997602 () Bool)

(declare-fun res!1235979 () Bool)

(assert (=> b!2997602 (=> (not res!1235979) (not e!1883565))))

(assert (=> b!2997602 (= res!1235979 call!201111)))

(assert (=> b!2997602 (= e!1883563 e!1883565)))

(assert (= (and d!845749 (not res!1235977)) b!2997608))

(assert (= (and b!2997608 c!493156) b!2997605))

(assert (= (and b!2997608 (not c!493156)) b!2997604))

(assert (= (and b!2997605 res!1235978) b!2997600))

(assert (= (and b!2997604 c!493155) b!2997602))

(assert (= (and b!2997604 (not c!493155)) b!2997606))

(assert (= (and b!2997602 res!1235979) b!2997601))

(assert (= (and b!2997606 (not res!1235975)) b!2997607))

(assert (= (and b!2997607 res!1235976) b!2997603))

(assert (= (or b!2997602 b!2997603) bm!201106))

(assert (= (or b!2997601 b!2997607) bm!201107))

(assert (= (or b!2997600 bm!201106) bm!201105))

(declare-fun m!3350793 () Bool)

(assert (=> bm!201105 m!3350793))

(declare-fun m!3350795 () Bool)

(assert (=> b!2997605 m!3350795))

(declare-fun m!3350797 () Bool)

(assert (=> bm!201107 m!3350797))

(assert (=> bm!200881 d!845749))

(declare-fun d!845751 () Bool)

(assert (=> d!845751 (= (nullable!3026 (simplify!354 (regTwo!19238 r!17423))) (nullableFct!860 (simplify!354 (regTwo!19238 r!17423))))))

(declare-fun bs!528176 () Bool)

(assert (= bs!528176 d!845751))

(assert (=> bs!528176 m!3349913))

(declare-fun m!3350799 () Bool)

(assert (=> bs!528176 m!3350799))

(assert (=> b!2996675 d!845751))

(assert (=> b!2996679 d!845497))

(assert (=> b!2996679 d!845481))

(declare-fun b!2997609 () Bool)

(declare-fun e!1883577 () Regex!9363)

(declare-fun lt!1041584 () Regex!9363)

(assert (=> b!2997609 (= e!1883577 lt!1041584)))

(declare-fun bm!201108 () Bool)

(declare-fun c!493157 () Bool)

(declare-fun c!493159 () Bool)

(declare-fun call!201114 () Regex!9363)

(assert (=> bm!201108 (= call!201114 (simplify!354 (ite c!493159 (reg!9692 (ite c!492878 (reg!9692 (ite c!492743 (reg!9692 (regOne!19238 r!17423)) (ite c!492741 (regOne!19239 (regOne!19238 r!17423)) (regTwo!19238 (regOne!19238 r!17423))))) (ite c!492876 (regOne!19239 (ite c!492743 (reg!9692 (regOne!19238 r!17423)) (ite c!492741 (regOne!19239 (regOne!19238 r!17423)) (regTwo!19238 (regOne!19238 r!17423))))) (regTwo!19238 (ite c!492743 (reg!9692 (regOne!19238 r!17423)) (ite c!492741 (regOne!19239 (regOne!19238 r!17423)) (regTwo!19238 (regOne!19238 r!17423)))))))) (ite c!493157 (regOne!19239 (ite c!492878 (reg!9692 (ite c!492743 (reg!9692 (regOne!19238 r!17423)) (ite c!492741 (regOne!19239 (regOne!19238 r!17423)) (regTwo!19238 (regOne!19238 r!17423))))) (ite c!492876 (regOne!19239 (ite c!492743 (reg!9692 (regOne!19238 r!17423)) (ite c!492741 (regOne!19239 (regOne!19238 r!17423)) (regTwo!19238 (regOne!19238 r!17423))))) (regTwo!19238 (ite c!492743 (reg!9692 (regOne!19238 r!17423)) (ite c!492741 (regOne!19239 (regOne!19238 r!17423)) (regTwo!19238 (regOne!19238 r!17423)))))))) (regTwo!19238 (ite c!492878 (reg!9692 (ite c!492743 (reg!9692 (regOne!19238 r!17423)) (ite c!492741 (regOne!19239 (regOne!19238 r!17423)) (regTwo!19238 (regOne!19238 r!17423))))) (ite c!492876 (regOne!19239 (ite c!492743 (reg!9692 (regOne!19238 r!17423)) (ite c!492741 (regOne!19239 (regOne!19238 r!17423)) (regTwo!19238 (regOne!19238 r!17423))))) (regTwo!19238 (ite c!492743 (reg!9692 (regOne!19238 r!17423)) (ite c!492741 (regOne!19239 (regOne!19238 r!17423)) (regTwo!19238 (regOne!19238 r!17423))))))))))))))

(declare-fun b!2997611 () Bool)

(declare-fun e!1883578 () Regex!9363)

(declare-fun lt!1041583 () Regex!9363)

(assert (=> b!2997611 (= e!1883578 (Star!9363 lt!1041583))))

(declare-fun b!2997612 () Bool)

(declare-fun c!493161 () Bool)

(declare-fun lt!1041582 () Regex!9363)

(assert (=> b!2997612 (= c!493161 (isEmptyExpr!470 lt!1041582))))

(declare-fun e!1883575 () Regex!9363)

(declare-fun e!1883579 () Regex!9363)

(assert (=> b!2997612 (= e!1883575 e!1883579)))

(declare-fun b!2997613 () Bool)

(declare-fun e!1883571 () Regex!9363)

(assert (=> b!2997613 (= e!1883571 (ite c!492878 (reg!9692 (ite c!492743 (reg!9692 (regOne!19238 r!17423)) (ite c!492741 (regOne!19239 (regOne!19238 r!17423)) (regTwo!19238 (regOne!19238 r!17423))))) (ite c!492876 (regOne!19239 (ite c!492743 (reg!9692 (regOne!19238 r!17423)) (ite c!492741 (regOne!19239 (regOne!19238 r!17423)) (regTwo!19238 (regOne!19238 r!17423))))) (regTwo!19238 (ite c!492743 (reg!9692 (regOne!19238 r!17423)) (ite c!492741 (regOne!19239 (regOne!19238 r!17423)) (regTwo!19238 (regOne!19238 r!17423))))))))))

(declare-fun call!201116 () Bool)

(declare-fun bm!201109 () Bool)

(assert (=> bm!201109 (= call!201116 (isEmptyLang!453 (ite c!493157 lt!1041584 lt!1041582)))))

(declare-fun bm!201110 () Bool)

(declare-fun call!201119 () Bool)

(declare-fun call!201115 () Bool)

(assert (=> bm!201110 (= call!201119 call!201115)))

(declare-fun bm!201111 () Bool)

(declare-fun lt!1041585 () Regex!9363)

(declare-fun lt!1041587 () Regex!9363)

(assert (=> bm!201111 (= call!201115 (isEmptyLang!453 (ite c!493159 lt!1041583 (ite c!493157 lt!1041587 lt!1041585))))))

(declare-fun b!2997614 () Bool)

(assert (=> b!2997614 (= c!493157 ((_ is Union!9363) (ite c!492878 (reg!9692 (ite c!492743 (reg!9692 (regOne!19238 r!17423)) (ite c!492741 (regOne!19239 (regOne!19238 r!17423)) (regTwo!19238 (regOne!19238 r!17423))))) (ite c!492876 (regOne!19239 (ite c!492743 (reg!9692 (regOne!19238 r!17423)) (ite c!492741 (regOne!19239 (regOne!19238 r!17423)) (regTwo!19238 (regOne!19238 r!17423))))) (regTwo!19238 (ite c!492743 (reg!9692 (regOne!19238 r!17423)) (ite c!492741 (regOne!19239 (regOne!19238 r!17423)) (regTwo!19238 (regOne!19238 r!17423)))))))))))

(declare-fun e!1883582 () Regex!9363)

(declare-fun e!1883570 () Regex!9363)

(assert (=> b!2997614 (= e!1883582 e!1883570)))

(declare-fun b!2997615 () Bool)

(declare-fun e!1883574 () Regex!9363)

(assert (=> b!2997615 (= e!1883574 (Concat!14684 lt!1041582 lt!1041585))))

(declare-fun b!2997616 () Bool)

(assert (=> b!2997616 (= e!1883577 (Union!9363 lt!1041584 lt!1041587))))

(declare-fun b!2997617 () Bool)

(declare-fun c!493160 () Bool)

(assert (=> b!2997617 (= c!493160 call!201119)))

(declare-fun e!1883583 () Regex!9363)

(assert (=> b!2997617 (= e!1883583 e!1883577)))

(declare-fun b!2997618 () Bool)

(assert (=> b!2997618 (= e!1883575 EmptyLang!9363)))

(declare-fun b!2997619 () Bool)

(assert (=> b!2997619 (= e!1883579 lt!1041585)))

(declare-fun b!2997620 () Bool)

(assert (=> b!2997620 (= e!1883579 e!1883574)))

(declare-fun c!493167 () Bool)

(declare-fun call!201113 () Bool)

(assert (=> b!2997620 (= c!493167 call!201113)))

(declare-fun b!2997621 () Bool)

(assert (=> b!2997621 (= e!1883578 EmptyExpr!9363)))

(declare-fun b!2997622 () Bool)

(assert (=> b!2997622 (= e!1883574 lt!1041582)))

(declare-fun b!2997623 () Bool)

(assert (=> b!2997623 (= e!1883570 e!1883583)))

(declare-fun call!201117 () Regex!9363)

(assert (=> b!2997623 (= lt!1041584 call!201117)))

(declare-fun call!201118 () Regex!9363)

(assert (=> b!2997623 (= lt!1041587 call!201118)))

(declare-fun c!493158 () Bool)

(assert (=> b!2997623 (= c!493158 call!201116)))

(declare-fun bm!201112 () Bool)

(assert (=> bm!201112 (= call!201113 (isEmptyExpr!470 (ite c!493159 lt!1041583 lt!1041585)))))

(declare-fun b!2997624 () Bool)

(declare-fun e!1883581 () Bool)

(declare-fun lt!1041586 () Regex!9363)

(assert (=> b!2997624 (= e!1883581 (= (nullable!3026 lt!1041586) (nullable!3026 (ite c!492878 (reg!9692 (ite c!492743 (reg!9692 (regOne!19238 r!17423)) (ite c!492741 (regOne!19239 (regOne!19238 r!17423)) (regTwo!19238 (regOne!19238 r!17423))))) (ite c!492876 (regOne!19239 (ite c!492743 (reg!9692 (regOne!19238 r!17423)) (ite c!492741 (regOne!19239 (regOne!19238 r!17423)) (regTwo!19238 (regOne!19238 r!17423))))) (regTwo!19238 (ite c!492743 (reg!9692 (regOne!19238 r!17423)) (ite c!492741 (regOne!19239 (regOne!19238 r!17423)) (regTwo!19238 (regOne!19238 r!17423))))))))))))

(declare-fun b!2997610 () Bool)

(declare-fun e!1883572 () Regex!9363)

(assert (=> b!2997610 (= e!1883572 e!1883571)))

(declare-fun c!493163 () Bool)

(assert (=> b!2997610 (= c!493163 ((_ is ElementMatch!9363) (ite c!492878 (reg!9692 (ite c!492743 (reg!9692 (regOne!19238 r!17423)) (ite c!492741 (regOne!19239 (regOne!19238 r!17423)) (regTwo!19238 (regOne!19238 r!17423))))) (ite c!492876 (regOne!19239 (ite c!492743 (reg!9692 (regOne!19238 r!17423)) (ite c!492741 (regOne!19239 (regOne!19238 r!17423)) (regTwo!19238 (regOne!19238 r!17423))))) (regTwo!19238 (ite c!492743 (reg!9692 (regOne!19238 r!17423)) (ite c!492741 (regOne!19239 (regOne!19238 r!17423)) (regTwo!19238 (regOne!19238 r!17423)))))))))))

(declare-fun d!845753 () Bool)

(assert (=> d!845753 e!1883581))

(declare-fun res!1235982 () Bool)

(assert (=> d!845753 (=> (not res!1235982) (not e!1883581))))

(assert (=> d!845753 (= res!1235982 (validRegex!4096 lt!1041586))))

(assert (=> d!845753 (= lt!1041586 e!1883572)))

(declare-fun c!493165 () Bool)

(assert (=> d!845753 (= c!493165 ((_ is EmptyLang!9363) (ite c!492878 (reg!9692 (ite c!492743 (reg!9692 (regOne!19238 r!17423)) (ite c!492741 (regOne!19239 (regOne!19238 r!17423)) (regTwo!19238 (regOne!19238 r!17423))))) (ite c!492876 (regOne!19239 (ite c!492743 (reg!9692 (regOne!19238 r!17423)) (ite c!492741 (regOne!19239 (regOne!19238 r!17423)) (regTwo!19238 (regOne!19238 r!17423))))) (regTwo!19238 (ite c!492743 (reg!9692 (regOne!19238 r!17423)) (ite c!492741 (regOne!19239 (regOne!19238 r!17423)) (regTwo!19238 (regOne!19238 r!17423)))))))))))

(assert (=> d!845753 (validRegex!4096 (ite c!492878 (reg!9692 (ite c!492743 (reg!9692 (regOne!19238 r!17423)) (ite c!492741 (regOne!19239 (regOne!19238 r!17423)) (regTwo!19238 (regOne!19238 r!17423))))) (ite c!492876 (regOne!19239 (ite c!492743 (reg!9692 (regOne!19238 r!17423)) (ite c!492741 (regOne!19239 (regOne!19238 r!17423)) (regTwo!19238 (regOne!19238 r!17423))))) (regTwo!19238 (ite c!492743 (reg!9692 (regOne!19238 r!17423)) (ite c!492741 (regOne!19239 (regOne!19238 r!17423)) (regTwo!19238 (regOne!19238 r!17423))))))))))

(assert (=> d!845753 (= (simplify!354 (ite c!492878 (reg!9692 (ite c!492743 (reg!9692 (regOne!19238 r!17423)) (ite c!492741 (regOne!19239 (regOne!19238 r!17423)) (regTwo!19238 (regOne!19238 r!17423))))) (ite c!492876 (regOne!19239 (ite c!492743 (reg!9692 (regOne!19238 r!17423)) (ite c!492741 (regOne!19239 (regOne!19238 r!17423)) (regTwo!19238 (regOne!19238 r!17423))))) (regTwo!19238 (ite c!492743 (reg!9692 (regOne!19238 r!17423)) (ite c!492741 (regOne!19239 (regOne!19238 r!17423)) (regTwo!19238 (regOne!19238 r!17423)))))))) lt!1041586)))

(declare-fun b!2997625 () Bool)

(declare-fun e!1883580 () Bool)

(assert (=> b!2997625 (= e!1883580 call!201119)))

(declare-fun bm!201113 () Bool)

(assert (=> bm!201113 (= call!201117 call!201114)))

(declare-fun b!2997626 () Bool)

(declare-fun c!493164 () Bool)

(declare-fun e!1883573 () Bool)

(assert (=> b!2997626 (= c!493164 e!1883573)))

(declare-fun res!1235981 () Bool)

(assert (=> b!2997626 (=> res!1235981 e!1883573)))

(assert (=> b!2997626 (= res!1235981 call!201115)))

(assert (=> b!2997626 (= lt!1041583 call!201114)))

(assert (=> b!2997626 (= e!1883582 e!1883578)))

(declare-fun b!2997627 () Bool)

(assert (=> b!2997627 (= e!1883573 call!201113)))

(declare-fun b!2997628 () Bool)

(assert (=> b!2997628 (= e!1883572 EmptyLang!9363)))

(declare-fun b!2997629 () Bool)

(assert (=> b!2997629 (= e!1883570 e!1883575)))

(assert (=> b!2997629 (= lt!1041582 call!201118)))

(assert (=> b!2997629 (= lt!1041585 call!201117)))

(declare-fun res!1235980 () Bool)

(assert (=> b!2997629 (= res!1235980 call!201116)))

(assert (=> b!2997629 (=> res!1235980 e!1883580)))

(declare-fun c!493162 () Bool)

(assert (=> b!2997629 (= c!493162 e!1883580)))

(declare-fun b!2997630 () Bool)

(declare-fun e!1883576 () Regex!9363)

(assert (=> b!2997630 (= e!1883576 e!1883582)))

(assert (=> b!2997630 (= c!493159 ((_ is Star!9363) (ite c!492878 (reg!9692 (ite c!492743 (reg!9692 (regOne!19238 r!17423)) (ite c!492741 (regOne!19239 (regOne!19238 r!17423)) (regTwo!19238 (regOne!19238 r!17423))))) (ite c!492876 (regOne!19239 (ite c!492743 (reg!9692 (regOne!19238 r!17423)) (ite c!492741 (regOne!19239 (regOne!19238 r!17423)) (regTwo!19238 (regOne!19238 r!17423))))) (regTwo!19238 (ite c!492743 (reg!9692 (regOne!19238 r!17423)) (ite c!492741 (regOne!19239 (regOne!19238 r!17423)) (regTwo!19238 (regOne!19238 r!17423)))))))))))

(declare-fun b!2997631 () Bool)

(assert (=> b!2997631 (= e!1883576 EmptyExpr!9363)))

(declare-fun c!493166 () Bool)

(declare-fun b!2997632 () Bool)

(assert (=> b!2997632 (= c!493166 ((_ is EmptyExpr!9363) (ite c!492878 (reg!9692 (ite c!492743 (reg!9692 (regOne!19238 r!17423)) (ite c!492741 (regOne!19239 (regOne!19238 r!17423)) (regTwo!19238 (regOne!19238 r!17423))))) (ite c!492876 (regOne!19239 (ite c!492743 (reg!9692 (regOne!19238 r!17423)) (ite c!492741 (regOne!19239 (regOne!19238 r!17423)) (regTwo!19238 (regOne!19238 r!17423))))) (regTwo!19238 (ite c!492743 (reg!9692 (regOne!19238 r!17423)) (ite c!492741 (regOne!19239 (regOne!19238 r!17423)) (regTwo!19238 (regOne!19238 r!17423)))))))))))

(assert (=> b!2997632 (= e!1883571 e!1883576)))

(declare-fun b!2997633 () Bool)

(assert (=> b!2997633 (= e!1883583 lt!1041587)))

(declare-fun bm!201114 () Bool)

(assert (=> bm!201114 (= call!201118 (simplify!354 (ite c!493157 (regTwo!19239 (ite c!492878 (reg!9692 (ite c!492743 (reg!9692 (regOne!19238 r!17423)) (ite c!492741 (regOne!19239 (regOne!19238 r!17423)) (regTwo!19238 (regOne!19238 r!17423))))) (ite c!492876 (regOne!19239 (ite c!492743 (reg!9692 (regOne!19238 r!17423)) (ite c!492741 (regOne!19239 (regOne!19238 r!17423)) (regTwo!19238 (regOne!19238 r!17423))))) (regTwo!19238 (ite c!492743 (reg!9692 (regOne!19238 r!17423)) (ite c!492741 (regOne!19239 (regOne!19238 r!17423)) (regTwo!19238 (regOne!19238 r!17423)))))))) (regOne!19238 (ite c!492878 (reg!9692 (ite c!492743 (reg!9692 (regOne!19238 r!17423)) (ite c!492741 (regOne!19239 (regOne!19238 r!17423)) (regTwo!19238 (regOne!19238 r!17423))))) (ite c!492876 (regOne!19239 (ite c!492743 (reg!9692 (regOne!19238 r!17423)) (ite c!492741 (regOne!19239 (regOne!19238 r!17423)) (regTwo!19238 (regOne!19238 r!17423))))) (regTwo!19238 (ite c!492743 (reg!9692 (regOne!19238 r!17423)) (ite c!492741 (regOne!19239 (regOne!19238 r!17423)) (regTwo!19238 (regOne!19238 r!17423)))))))))))))

(assert (= (and d!845753 c!493165) b!2997628))

(assert (= (and d!845753 (not c!493165)) b!2997610))

(assert (= (and b!2997610 c!493163) b!2997613))

(assert (= (and b!2997610 (not c!493163)) b!2997632))

(assert (= (and b!2997632 c!493166) b!2997631))

(assert (= (and b!2997632 (not c!493166)) b!2997630))

(assert (= (and b!2997630 c!493159) b!2997626))

(assert (= (and b!2997630 (not c!493159)) b!2997614))

(assert (= (and b!2997626 (not res!1235981)) b!2997627))

(assert (= (and b!2997626 c!493164) b!2997621))

(assert (= (and b!2997626 (not c!493164)) b!2997611))

(assert (= (and b!2997614 c!493157) b!2997623))

(assert (= (and b!2997614 (not c!493157)) b!2997629))

(assert (= (and b!2997623 c!493158) b!2997633))

(assert (= (and b!2997623 (not c!493158)) b!2997617))

(assert (= (and b!2997617 c!493160) b!2997609))

(assert (= (and b!2997617 (not c!493160)) b!2997616))

(assert (= (and b!2997629 (not res!1235980)) b!2997625))

(assert (= (and b!2997629 c!493162) b!2997618))

(assert (= (and b!2997629 (not c!493162)) b!2997612))

(assert (= (and b!2997612 c!493161) b!2997619))

(assert (= (and b!2997612 (not c!493161)) b!2997620))

(assert (= (and b!2997620 c!493167) b!2997622))

(assert (= (and b!2997620 (not c!493167)) b!2997615))

(assert (= (or b!2997623 b!2997629) bm!201113))

(assert (= (or b!2997623 b!2997629) bm!201114))

(assert (= (or b!2997623 b!2997629) bm!201109))

(assert (= (or b!2997617 b!2997625) bm!201110))

(assert (= (or b!2997627 b!2997620) bm!201112))

(assert (= (or b!2997626 bm!201113) bm!201108))

(assert (= (or b!2997626 bm!201110) bm!201111))

(assert (= (and d!845753 res!1235982) b!2997624))

(declare-fun m!3350801 () Bool)

(assert (=> bm!201109 m!3350801))

(declare-fun m!3350803 () Bool)

(assert (=> b!2997624 m!3350803))

(declare-fun m!3350805 () Bool)

(assert (=> b!2997624 m!3350805))

(declare-fun m!3350807 () Bool)

(assert (=> bm!201114 m!3350807))

(declare-fun m!3350809 () Bool)

(assert (=> bm!201108 m!3350809))

(declare-fun m!3350811 () Bool)

(assert (=> bm!201112 m!3350811))

(declare-fun m!3350813 () Bool)

(assert (=> d!845753 m!3350813))

(declare-fun m!3350815 () Bool)

(assert (=> d!845753 m!3350815))

(declare-fun m!3350817 () Bool)

(assert (=> b!2997612 m!3350817))

(declare-fun m!3350819 () Bool)

(assert (=> bm!201111 m!3350819))

(assert (=> bm!200868 d!845753))

(declare-fun b!2997634 () Bool)

(declare-fun e!1883588 () Bool)

(declare-fun call!201122 () Bool)

(assert (=> b!2997634 (= e!1883588 call!201122)))

(declare-fun b!2997635 () Bool)

(declare-fun e!1883586 () Bool)

(declare-fun call!201120 () Bool)

(assert (=> b!2997635 (= e!1883586 call!201120)))

(declare-fun bm!201115 () Bool)

(declare-fun c!493169 () Bool)

(declare-fun c!493168 () Bool)

(assert (=> bm!201115 (= call!201122 (validRegex!4096 (ite c!493169 (reg!9692 lt!1041511) (ite c!493168 (regOne!19239 lt!1041511) (regTwo!19238 lt!1041511)))))))

(declare-fun b!2997637 () Bool)

(declare-fun e!1883589 () Bool)

(declare-fun call!201121 () Bool)

(assert (=> b!2997637 (= e!1883589 call!201121)))

(declare-fun bm!201116 () Bool)

(assert (=> bm!201116 (= call!201121 call!201122)))

(declare-fun b!2997638 () Bool)

(declare-fun e!1883585 () Bool)

(declare-fun e!1883584 () Bool)

(assert (=> b!2997638 (= e!1883585 e!1883584)))

(assert (=> b!2997638 (= c!493168 ((_ is Union!9363) lt!1041511))))

(declare-fun b!2997639 () Bool)

(assert (=> b!2997639 (= e!1883585 e!1883588)))

(declare-fun res!1235986 () Bool)

(assert (=> b!2997639 (= res!1235986 (not (nullable!3026 (reg!9692 lt!1041511))))))

(assert (=> b!2997639 (=> (not res!1235986) (not e!1883588))))

(declare-fun b!2997640 () Bool)

(declare-fun res!1235983 () Bool)

(declare-fun e!1883587 () Bool)

(assert (=> b!2997640 (=> res!1235983 e!1883587)))

(assert (=> b!2997640 (= res!1235983 (not ((_ is Concat!14684) lt!1041511)))))

(assert (=> b!2997640 (= e!1883584 e!1883587)))

(declare-fun b!2997641 () Bool)

(assert (=> b!2997641 (= e!1883587 e!1883589)))

(declare-fun res!1235984 () Bool)

(assert (=> b!2997641 (=> (not res!1235984) (not e!1883589))))

(assert (=> b!2997641 (= res!1235984 call!201120)))

(declare-fun bm!201117 () Bool)

(assert (=> bm!201117 (= call!201120 (validRegex!4096 (ite c!493168 (regTwo!19239 lt!1041511) (regOne!19238 lt!1041511))))))

(declare-fun b!2997642 () Bool)

(declare-fun e!1883590 () Bool)

(assert (=> b!2997642 (= e!1883590 e!1883585)))

(assert (=> b!2997642 (= c!493169 ((_ is Star!9363) lt!1041511))))

(declare-fun d!845755 () Bool)

(declare-fun res!1235985 () Bool)

(assert (=> d!845755 (=> res!1235985 e!1883590)))

(assert (=> d!845755 (= res!1235985 ((_ is ElementMatch!9363) lt!1041511))))

(assert (=> d!845755 (= (validRegex!4096 lt!1041511) e!1883590)))

(declare-fun b!2997636 () Bool)

(declare-fun res!1235987 () Bool)

(assert (=> b!2997636 (=> (not res!1235987) (not e!1883586))))

(assert (=> b!2997636 (= res!1235987 call!201121)))

(assert (=> b!2997636 (= e!1883584 e!1883586)))

(assert (= (and d!845755 (not res!1235985)) b!2997642))

(assert (= (and b!2997642 c!493169) b!2997639))

(assert (= (and b!2997642 (not c!493169)) b!2997638))

(assert (= (and b!2997639 res!1235986) b!2997634))

(assert (= (and b!2997638 c!493168) b!2997636))

(assert (= (and b!2997638 (not c!493168)) b!2997640))

(assert (= (and b!2997636 res!1235987) b!2997635))

(assert (= (and b!2997640 (not res!1235983)) b!2997641))

(assert (= (and b!2997641 res!1235984) b!2997637))

(assert (= (or b!2997636 b!2997637) bm!201116))

(assert (= (or b!2997635 b!2997641) bm!201117))

(assert (= (or b!2997634 bm!201116) bm!201115))

(declare-fun m!3350821 () Bool)

(assert (=> bm!201115 m!3350821))

(declare-fun m!3350823 () Bool)

(assert (=> b!2997639 m!3350823))

(declare-fun m!3350825 () Bool)

(assert (=> bm!201117 m!3350825))

(assert (=> d!845519 d!845755))

(assert (=> d!845519 d!845425))

(declare-fun b!2997643 () Bool)

(declare-fun res!1235993 () Bool)

(declare-fun e!1883596 () Bool)

(assert (=> b!2997643 (=> res!1235993 e!1883596)))

(assert (=> b!2997643 (= res!1235993 (not (isEmpty!19378 (tail!4909 (tail!4909 (tail!4909 s!11993))))))))

(declare-fun b!2997644 () Bool)

(declare-fun e!1883597 () Bool)

(declare-fun e!1883591 () Bool)

(assert (=> b!2997644 (= e!1883597 e!1883591)))

(declare-fun c!493171 () Bool)

(assert (=> b!2997644 (= c!493171 ((_ is EmptyLang!9363) (derivativeStep!2624 (derivativeStep!2624 r!17423 (head!6683 s!11993)) (head!6683 (tail!4909 s!11993)))))))

(declare-fun b!2997645 () Bool)

(declare-fun e!1883592 () Bool)

(declare-fun e!1883595 () Bool)

(assert (=> b!2997645 (= e!1883592 e!1883595)))

(declare-fun res!1235992 () Bool)

(assert (=> b!2997645 (=> (not res!1235992) (not e!1883595))))

(declare-fun lt!1041588 () Bool)

(assert (=> b!2997645 (= res!1235992 (not lt!1041588))))

(declare-fun b!2997646 () Bool)

(declare-fun e!1883593 () Bool)

(assert (=> b!2997646 (= e!1883593 (matchR!4245 (derivativeStep!2624 (derivativeStep!2624 (derivativeStep!2624 r!17423 (head!6683 s!11993)) (head!6683 (tail!4909 s!11993))) (head!6683 (tail!4909 (tail!4909 s!11993)))) (tail!4909 (tail!4909 (tail!4909 s!11993)))))))

(declare-fun b!2997647 () Bool)

(assert (=> b!2997647 (= e!1883596 (not (= (head!6683 (tail!4909 (tail!4909 s!11993))) (c!492681 (derivativeStep!2624 (derivativeStep!2624 r!17423 (head!6683 s!11993)) (head!6683 (tail!4909 s!11993)))))))))

(declare-fun b!2997648 () Bool)

(declare-fun res!1235994 () Bool)

(declare-fun e!1883594 () Bool)

(assert (=> b!2997648 (=> (not res!1235994) (not e!1883594))))

(declare-fun call!201123 () Bool)

(assert (=> b!2997648 (= res!1235994 (not call!201123))))

(declare-fun b!2997649 () Bool)

(assert (=> b!2997649 (= e!1883593 (nullable!3026 (derivativeStep!2624 (derivativeStep!2624 r!17423 (head!6683 s!11993)) (head!6683 (tail!4909 s!11993)))))))

(declare-fun b!2997651 () Bool)

(declare-fun res!1235990 () Bool)

(assert (=> b!2997651 (=> res!1235990 e!1883592)))

(assert (=> b!2997651 (= res!1235990 e!1883594)))

(declare-fun res!1235991 () Bool)

(assert (=> b!2997651 (=> (not res!1235991) (not e!1883594))))

(assert (=> b!2997651 (= res!1235991 lt!1041588)))

(declare-fun b!2997652 () Bool)

(assert (=> b!2997652 (= e!1883597 (= lt!1041588 call!201123))))

(declare-fun b!2997653 () Bool)

(declare-fun res!1235989 () Bool)

(assert (=> b!2997653 (=> (not res!1235989) (not e!1883594))))

(assert (=> b!2997653 (= res!1235989 (isEmpty!19378 (tail!4909 (tail!4909 (tail!4909 s!11993)))))))

(declare-fun d!845757 () Bool)

(assert (=> d!845757 e!1883597))

(declare-fun c!493170 () Bool)

(assert (=> d!845757 (= c!493170 ((_ is EmptyExpr!9363) (derivativeStep!2624 (derivativeStep!2624 r!17423 (head!6683 s!11993)) (head!6683 (tail!4909 s!11993)))))))

(assert (=> d!845757 (= lt!1041588 e!1883593)))

(declare-fun c!493172 () Bool)

(assert (=> d!845757 (= c!493172 (isEmpty!19378 (tail!4909 (tail!4909 s!11993))))))

(assert (=> d!845757 (validRegex!4096 (derivativeStep!2624 (derivativeStep!2624 r!17423 (head!6683 s!11993)) (head!6683 (tail!4909 s!11993))))))

(assert (=> d!845757 (= (matchR!4245 (derivativeStep!2624 (derivativeStep!2624 r!17423 (head!6683 s!11993)) (head!6683 (tail!4909 s!11993))) (tail!4909 (tail!4909 s!11993))) lt!1041588)))

(declare-fun b!2997650 () Bool)

(assert (=> b!2997650 (= e!1883595 e!1883596)))

(declare-fun res!1235988 () Bool)

(assert (=> b!2997650 (=> res!1235988 e!1883596)))

(assert (=> b!2997650 (= res!1235988 call!201123)))

(declare-fun b!2997654 () Bool)

(assert (=> b!2997654 (= e!1883594 (= (head!6683 (tail!4909 (tail!4909 s!11993))) (c!492681 (derivativeStep!2624 (derivativeStep!2624 r!17423 (head!6683 s!11993)) (head!6683 (tail!4909 s!11993))))))))

(declare-fun b!2997655 () Bool)

(assert (=> b!2997655 (= e!1883591 (not lt!1041588))))

(declare-fun bm!201118 () Bool)

(assert (=> bm!201118 (= call!201123 (isEmpty!19378 (tail!4909 (tail!4909 s!11993))))))

(declare-fun b!2997656 () Bool)

(declare-fun res!1235995 () Bool)

(assert (=> b!2997656 (=> res!1235995 e!1883592)))

(assert (=> b!2997656 (= res!1235995 (not ((_ is ElementMatch!9363) (derivativeStep!2624 (derivativeStep!2624 r!17423 (head!6683 s!11993)) (head!6683 (tail!4909 s!11993))))))))

(assert (=> b!2997656 (= e!1883591 e!1883592)))

(assert (= (and d!845757 c!493172) b!2997649))

(assert (= (and d!845757 (not c!493172)) b!2997646))

(assert (= (and d!845757 c!493170) b!2997652))

(assert (= (and d!845757 (not c!493170)) b!2997644))

(assert (= (and b!2997644 c!493171) b!2997655))

(assert (= (and b!2997644 (not c!493171)) b!2997656))

(assert (= (and b!2997656 (not res!1235995)) b!2997651))

(assert (= (and b!2997651 res!1235991) b!2997648))

(assert (= (and b!2997648 res!1235994) b!2997653))

(assert (= (and b!2997653 res!1235989) b!2997654))

(assert (= (and b!2997651 (not res!1235990)) b!2997645))

(assert (= (and b!2997645 res!1235992) b!2997650))

(assert (= (and b!2997650 (not res!1235988)) b!2997643))

(assert (= (and b!2997643 (not res!1235993)) b!2997647))

(assert (= (or b!2997652 b!2997648 b!2997650) bm!201118))

(assert (=> b!2997643 m!3350099))

(assert (=> b!2997643 m!3350521))

(assert (=> b!2997643 m!3350521))

(assert (=> b!2997643 m!3350523))

(assert (=> b!2997646 m!3350099))

(assert (=> b!2997646 m!3350525))

(assert (=> b!2997646 m!3350211))

(assert (=> b!2997646 m!3350525))

(declare-fun m!3350827 () Bool)

(assert (=> b!2997646 m!3350827))

(assert (=> b!2997646 m!3350099))

(assert (=> b!2997646 m!3350521))

(assert (=> b!2997646 m!3350827))

(assert (=> b!2997646 m!3350521))

(declare-fun m!3350829 () Bool)

(assert (=> b!2997646 m!3350829))

(assert (=> b!2997653 m!3350099))

(assert (=> b!2997653 m!3350521))

(assert (=> b!2997653 m!3350521))

(assert (=> b!2997653 m!3350523))

(assert (=> b!2997649 m!3350211))

(declare-fun m!3350831 () Bool)

(assert (=> b!2997649 m!3350831))

(assert (=> d!845757 m!3350099))

(assert (=> d!845757 m!3350101))

(assert (=> d!845757 m!3350211))

(declare-fun m!3350833 () Bool)

(assert (=> d!845757 m!3350833))

(assert (=> bm!201118 m!3350099))

(assert (=> bm!201118 m!3350101))

(assert (=> b!2997654 m!3350099))

(assert (=> b!2997654 m!3350525))

(assert (=> b!2997647 m!3350099))

(assert (=> b!2997647 m!3350525))

(assert (=> b!2996621 d!845757))

(declare-fun b!2997657 () Bool)

(declare-fun e!1883599 () Regex!9363)

(declare-fun e!1883600 () Regex!9363)

(assert (=> b!2997657 (= e!1883599 e!1883600)))

(declare-fun c!493177 () Bool)

(assert (=> b!2997657 (= c!493177 ((_ is ElementMatch!9363) (derivativeStep!2624 r!17423 (head!6683 s!11993))))))

(declare-fun b!2997658 () Bool)

(declare-fun c!493174 () Bool)

(assert (=> b!2997658 (= c!493174 (nullable!3026 (regOne!19238 (derivativeStep!2624 r!17423 (head!6683 s!11993)))))))

(declare-fun e!1883601 () Regex!9363)

(declare-fun e!1883602 () Regex!9363)

(assert (=> b!2997658 (= e!1883601 e!1883602)))

(declare-fun b!2997659 () Bool)

(assert (=> b!2997659 (= e!1883599 EmptyLang!9363)))

(declare-fun b!2997660 () Bool)

(declare-fun call!201127 () Regex!9363)

(assert (=> b!2997660 (= e!1883602 (Union!9363 (Concat!14684 call!201127 (regTwo!19238 (derivativeStep!2624 r!17423 (head!6683 s!11993)))) EmptyLang!9363))))

(declare-fun call!201125 () Regex!9363)

(declare-fun b!2997661 () Bool)

(assert (=> b!2997661 (= e!1883601 (Concat!14684 call!201125 (derivativeStep!2624 r!17423 (head!6683 s!11993))))))

(declare-fun b!2997662 () Bool)

(declare-fun c!493176 () Bool)

(assert (=> b!2997662 (= c!493176 ((_ is Union!9363) (derivativeStep!2624 r!17423 (head!6683 s!11993))))))

(declare-fun e!1883598 () Regex!9363)

(assert (=> b!2997662 (= e!1883600 e!1883598)))

(declare-fun c!493175 () Bool)

(declare-fun bm!201120 () Bool)

(declare-fun call!201124 () Regex!9363)

(assert (=> bm!201120 (= call!201124 (derivativeStep!2624 (ite c!493176 (regTwo!19239 (derivativeStep!2624 r!17423 (head!6683 s!11993))) (ite c!493175 (reg!9692 (derivativeStep!2624 r!17423 (head!6683 s!11993))) (regOne!19238 (derivativeStep!2624 r!17423 (head!6683 s!11993))))) (head!6683 (tail!4909 s!11993))))))

(declare-fun bm!201121 () Bool)

(assert (=> bm!201121 (= call!201127 call!201125)))

(declare-fun b!2997663 () Bool)

(assert (=> b!2997663 (= e!1883600 (ite (= (head!6683 (tail!4909 s!11993)) (c!492681 (derivativeStep!2624 r!17423 (head!6683 s!11993)))) EmptyExpr!9363 EmptyLang!9363))))

(declare-fun bm!201122 () Bool)

(declare-fun call!201126 () Regex!9363)

(assert (=> bm!201122 (= call!201126 (derivativeStep!2624 (ite c!493176 (regOne!19239 (derivativeStep!2624 r!17423 (head!6683 s!11993))) (regTwo!19238 (derivativeStep!2624 r!17423 (head!6683 s!11993)))) (head!6683 (tail!4909 s!11993))))))

(declare-fun b!2997664 () Bool)

(assert (=> b!2997664 (= e!1883602 (Union!9363 (Concat!14684 call!201127 (regTwo!19238 (derivativeStep!2624 r!17423 (head!6683 s!11993)))) call!201126))))

(declare-fun d!845759 () Bool)

(declare-fun lt!1041589 () Regex!9363)

(assert (=> d!845759 (validRegex!4096 lt!1041589)))

(assert (=> d!845759 (= lt!1041589 e!1883599)))

(declare-fun c!493173 () Bool)

(assert (=> d!845759 (= c!493173 (or ((_ is EmptyExpr!9363) (derivativeStep!2624 r!17423 (head!6683 s!11993))) ((_ is EmptyLang!9363) (derivativeStep!2624 r!17423 (head!6683 s!11993)))))))

(assert (=> d!845759 (validRegex!4096 (derivativeStep!2624 r!17423 (head!6683 s!11993)))))

(assert (=> d!845759 (= (derivativeStep!2624 (derivativeStep!2624 r!17423 (head!6683 s!11993)) (head!6683 (tail!4909 s!11993))) lt!1041589)))

(declare-fun bm!201119 () Bool)

(assert (=> bm!201119 (= call!201125 call!201124)))

(declare-fun b!2997665 () Bool)

(assert (=> b!2997665 (= e!1883598 e!1883601)))

(assert (=> b!2997665 (= c!493175 ((_ is Star!9363) (derivativeStep!2624 r!17423 (head!6683 s!11993))))))

(declare-fun b!2997666 () Bool)

(assert (=> b!2997666 (= e!1883598 (Union!9363 call!201126 call!201124))))

(assert (= (and d!845759 c!493173) b!2997659))

(assert (= (and d!845759 (not c!493173)) b!2997657))

(assert (= (and b!2997657 c!493177) b!2997663))

(assert (= (and b!2997657 (not c!493177)) b!2997662))

(assert (= (and b!2997662 c!493176) b!2997666))

(assert (= (and b!2997662 (not c!493176)) b!2997665))

(assert (= (and b!2997665 c!493175) b!2997661))

(assert (= (and b!2997665 (not c!493175)) b!2997658))

(assert (= (and b!2997658 c!493174) b!2997664))

(assert (= (and b!2997658 (not c!493174)) b!2997660))

(assert (= (or b!2997664 b!2997660) bm!201121))

(assert (= (or b!2997661 bm!201121) bm!201119))

(assert (= (or b!2997666 bm!201119) bm!201120))

(assert (= (or b!2997666 b!2997664) bm!201122))

(declare-fun m!3350835 () Bool)

(assert (=> b!2997658 m!3350835))

(assert (=> bm!201120 m!3350103))

(declare-fun m!3350837 () Bool)

(assert (=> bm!201120 m!3350837))

(assert (=> bm!201122 m!3350103))

(declare-fun m!3350839 () Bool)

(assert (=> bm!201122 m!3350839))

(declare-fun m!3350841 () Bool)

(assert (=> d!845759 m!3350841))

(assert (=> d!845759 m!3350085))

(assert (=> d!845759 m!3350217))

(assert (=> b!2996621 d!845759))

(assert (=> b!2996621 d!845645))

(assert (=> b!2996621 d!845647))

(assert (=> b!2996575 d!845645))

(declare-fun d!845761 () Bool)

(assert (=> d!845761 (= (isEmptyExpr!470 lt!1041515) ((_ is EmptyExpr!9363) lt!1041515))))

(assert (=> b!2996694 d!845761))

(declare-fun d!845763 () Bool)

(assert (=> d!845763 (= (nullable!3026 lt!1041499) (nullableFct!860 lt!1041499))))

(declare-fun bs!528177 () Bool)

(assert (= bs!528177 d!845763))

(declare-fun m!3350843 () Bool)

(assert (=> bs!528177 m!3350843))

(assert (=> b!2996504 d!845763))

(declare-fun d!845765 () Bool)

(assert (=> d!845765 (= (nullable!3026 (ite c!492730 (regTwo!19239 (regTwo!19238 r!17423)) (regOne!19238 (regTwo!19238 r!17423)))) (nullableFct!860 (ite c!492730 (regTwo!19239 (regTwo!19238 r!17423)) (regOne!19238 (regTwo!19238 r!17423)))))))

(declare-fun bs!528178 () Bool)

(assert (= bs!528178 d!845765))

(declare-fun m!3350845 () Bool)

(assert (=> bs!528178 m!3350845))

(assert (=> b!2996504 d!845765))

(declare-fun d!845767 () Bool)

(assert (=> d!845767 (= (isEmptyLang!453 (ite c!492921 lt!1041516 (ite c!492919 lt!1041520 lt!1041518))) ((_ is EmptyLang!9363) (ite c!492921 lt!1041516 (ite c!492919 lt!1041520 lt!1041518))))))

(assert (=> bm!200902 d!845767))

(declare-fun b!2997667 () Bool)

(declare-fun e!1883610 () Regex!9363)

(declare-fun lt!1041592 () Regex!9363)

(assert (=> b!2997667 (= e!1883610 lt!1041592)))

(declare-fun call!201129 () Regex!9363)

(declare-fun c!493180 () Bool)

(declare-fun bm!201123 () Bool)

(declare-fun c!493178 () Bool)

(assert (=> bm!201123 (= call!201129 (simplify!354 (ite c!493180 (reg!9692 (ite c!492944 (reg!9692 (ite c!492732 (reg!9692 (regTwo!19238 r!17423)) (ite c!492730 (regOne!19239 (regTwo!19238 r!17423)) (regTwo!19238 (regTwo!19238 r!17423))))) (ite c!492942 (regOne!19239 (ite c!492732 (reg!9692 (regTwo!19238 r!17423)) (ite c!492730 (regOne!19239 (regTwo!19238 r!17423)) (regTwo!19238 (regTwo!19238 r!17423))))) (regTwo!19238 (ite c!492732 (reg!9692 (regTwo!19238 r!17423)) (ite c!492730 (regOne!19239 (regTwo!19238 r!17423)) (regTwo!19238 (regTwo!19238 r!17423)))))))) (ite c!493178 (regOne!19239 (ite c!492944 (reg!9692 (ite c!492732 (reg!9692 (regTwo!19238 r!17423)) (ite c!492730 (regOne!19239 (regTwo!19238 r!17423)) (regTwo!19238 (regTwo!19238 r!17423))))) (ite c!492942 (regOne!19239 (ite c!492732 (reg!9692 (regTwo!19238 r!17423)) (ite c!492730 (regOne!19239 (regTwo!19238 r!17423)) (regTwo!19238 (regTwo!19238 r!17423))))) (regTwo!19238 (ite c!492732 (reg!9692 (regTwo!19238 r!17423)) (ite c!492730 (regOne!19239 (regTwo!19238 r!17423)) (regTwo!19238 (regTwo!19238 r!17423)))))))) (regTwo!19238 (ite c!492944 (reg!9692 (ite c!492732 (reg!9692 (regTwo!19238 r!17423)) (ite c!492730 (regOne!19239 (regTwo!19238 r!17423)) (regTwo!19238 (regTwo!19238 r!17423))))) (ite c!492942 (regOne!19239 (ite c!492732 (reg!9692 (regTwo!19238 r!17423)) (ite c!492730 (regOne!19239 (regTwo!19238 r!17423)) (regTwo!19238 (regTwo!19238 r!17423))))) (regTwo!19238 (ite c!492732 (reg!9692 (regTwo!19238 r!17423)) (ite c!492730 (regOne!19239 (regTwo!19238 r!17423)) (regTwo!19238 (regTwo!19238 r!17423))))))))))))))

(declare-fun b!2997669 () Bool)

(declare-fun e!1883611 () Regex!9363)

(declare-fun lt!1041591 () Regex!9363)

(assert (=> b!2997669 (= e!1883611 (Star!9363 lt!1041591))))

(declare-fun b!2997670 () Bool)

(declare-fun c!493182 () Bool)

(declare-fun lt!1041590 () Regex!9363)

(assert (=> b!2997670 (= c!493182 (isEmptyExpr!470 lt!1041590))))

(declare-fun e!1883608 () Regex!9363)

(declare-fun e!1883612 () Regex!9363)

(assert (=> b!2997670 (= e!1883608 e!1883612)))

(declare-fun b!2997671 () Bool)

(declare-fun e!1883604 () Regex!9363)

(assert (=> b!2997671 (= e!1883604 (ite c!492944 (reg!9692 (ite c!492732 (reg!9692 (regTwo!19238 r!17423)) (ite c!492730 (regOne!19239 (regTwo!19238 r!17423)) (regTwo!19238 (regTwo!19238 r!17423))))) (ite c!492942 (regOne!19239 (ite c!492732 (reg!9692 (regTwo!19238 r!17423)) (ite c!492730 (regOne!19239 (regTwo!19238 r!17423)) (regTwo!19238 (regTwo!19238 r!17423))))) (regTwo!19238 (ite c!492732 (reg!9692 (regTwo!19238 r!17423)) (ite c!492730 (regOne!19239 (regTwo!19238 r!17423)) (regTwo!19238 (regTwo!19238 r!17423))))))))))

(declare-fun call!201131 () Bool)

(declare-fun bm!201124 () Bool)

(assert (=> bm!201124 (= call!201131 (isEmptyLang!453 (ite c!493178 lt!1041592 lt!1041590)))))

(declare-fun bm!201125 () Bool)

(declare-fun call!201134 () Bool)

(declare-fun call!201130 () Bool)

(assert (=> bm!201125 (= call!201134 call!201130)))

(declare-fun lt!1041593 () Regex!9363)

(declare-fun lt!1041595 () Regex!9363)

(declare-fun bm!201126 () Bool)

(assert (=> bm!201126 (= call!201130 (isEmptyLang!453 (ite c!493180 lt!1041591 (ite c!493178 lt!1041595 lt!1041593))))))

(declare-fun b!2997672 () Bool)

(assert (=> b!2997672 (= c!493178 ((_ is Union!9363) (ite c!492944 (reg!9692 (ite c!492732 (reg!9692 (regTwo!19238 r!17423)) (ite c!492730 (regOne!19239 (regTwo!19238 r!17423)) (regTwo!19238 (regTwo!19238 r!17423))))) (ite c!492942 (regOne!19239 (ite c!492732 (reg!9692 (regTwo!19238 r!17423)) (ite c!492730 (regOne!19239 (regTwo!19238 r!17423)) (regTwo!19238 (regTwo!19238 r!17423))))) (regTwo!19238 (ite c!492732 (reg!9692 (regTwo!19238 r!17423)) (ite c!492730 (regOne!19239 (regTwo!19238 r!17423)) (regTwo!19238 (regTwo!19238 r!17423)))))))))))

(declare-fun e!1883615 () Regex!9363)

(declare-fun e!1883603 () Regex!9363)

(assert (=> b!2997672 (= e!1883615 e!1883603)))

(declare-fun b!2997673 () Bool)

(declare-fun e!1883607 () Regex!9363)

(assert (=> b!2997673 (= e!1883607 (Concat!14684 lt!1041590 lt!1041593))))

(declare-fun b!2997674 () Bool)

(assert (=> b!2997674 (= e!1883610 (Union!9363 lt!1041592 lt!1041595))))

(declare-fun b!2997675 () Bool)

(declare-fun c!493181 () Bool)

(assert (=> b!2997675 (= c!493181 call!201134)))

(declare-fun e!1883616 () Regex!9363)

(assert (=> b!2997675 (= e!1883616 e!1883610)))

(declare-fun b!2997676 () Bool)

(assert (=> b!2997676 (= e!1883608 EmptyLang!9363)))

(declare-fun b!2997677 () Bool)

(assert (=> b!2997677 (= e!1883612 lt!1041593)))

(declare-fun b!2997678 () Bool)

(assert (=> b!2997678 (= e!1883612 e!1883607)))

(declare-fun c!493188 () Bool)

(declare-fun call!201128 () Bool)

(assert (=> b!2997678 (= c!493188 call!201128)))

(declare-fun b!2997679 () Bool)

(assert (=> b!2997679 (= e!1883611 EmptyExpr!9363)))

(declare-fun b!2997680 () Bool)

(assert (=> b!2997680 (= e!1883607 lt!1041590)))

(declare-fun b!2997681 () Bool)

(assert (=> b!2997681 (= e!1883603 e!1883616)))

(declare-fun call!201132 () Regex!9363)

(assert (=> b!2997681 (= lt!1041592 call!201132)))

(declare-fun call!201133 () Regex!9363)

(assert (=> b!2997681 (= lt!1041595 call!201133)))

(declare-fun c!493179 () Bool)

(assert (=> b!2997681 (= c!493179 call!201131)))

(declare-fun bm!201127 () Bool)

(assert (=> bm!201127 (= call!201128 (isEmptyExpr!470 (ite c!493180 lt!1041591 lt!1041593)))))

(declare-fun lt!1041594 () Regex!9363)

(declare-fun e!1883614 () Bool)

(declare-fun b!2997682 () Bool)

(assert (=> b!2997682 (= e!1883614 (= (nullable!3026 lt!1041594) (nullable!3026 (ite c!492944 (reg!9692 (ite c!492732 (reg!9692 (regTwo!19238 r!17423)) (ite c!492730 (regOne!19239 (regTwo!19238 r!17423)) (regTwo!19238 (regTwo!19238 r!17423))))) (ite c!492942 (regOne!19239 (ite c!492732 (reg!9692 (regTwo!19238 r!17423)) (ite c!492730 (regOne!19239 (regTwo!19238 r!17423)) (regTwo!19238 (regTwo!19238 r!17423))))) (regTwo!19238 (ite c!492732 (reg!9692 (regTwo!19238 r!17423)) (ite c!492730 (regOne!19239 (regTwo!19238 r!17423)) (regTwo!19238 (regTwo!19238 r!17423))))))))))))

(declare-fun b!2997668 () Bool)

(declare-fun e!1883605 () Regex!9363)

(assert (=> b!2997668 (= e!1883605 e!1883604)))

(declare-fun c!493184 () Bool)

(assert (=> b!2997668 (= c!493184 ((_ is ElementMatch!9363) (ite c!492944 (reg!9692 (ite c!492732 (reg!9692 (regTwo!19238 r!17423)) (ite c!492730 (regOne!19239 (regTwo!19238 r!17423)) (regTwo!19238 (regTwo!19238 r!17423))))) (ite c!492942 (regOne!19239 (ite c!492732 (reg!9692 (regTwo!19238 r!17423)) (ite c!492730 (regOne!19239 (regTwo!19238 r!17423)) (regTwo!19238 (regTwo!19238 r!17423))))) (regTwo!19238 (ite c!492732 (reg!9692 (regTwo!19238 r!17423)) (ite c!492730 (regOne!19239 (regTwo!19238 r!17423)) (regTwo!19238 (regTwo!19238 r!17423)))))))))))

(declare-fun d!845769 () Bool)

(assert (=> d!845769 e!1883614))

(declare-fun res!1235998 () Bool)

(assert (=> d!845769 (=> (not res!1235998) (not e!1883614))))

(assert (=> d!845769 (= res!1235998 (validRegex!4096 lt!1041594))))

(assert (=> d!845769 (= lt!1041594 e!1883605)))

(declare-fun c!493186 () Bool)

(assert (=> d!845769 (= c!493186 ((_ is EmptyLang!9363) (ite c!492944 (reg!9692 (ite c!492732 (reg!9692 (regTwo!19238 r!17423)) (ite c!492730 (regOne!19239 (regTwo!19238 r!17423)) (regTwo!19238 (regTwo!19238 r!17423))))) (ite c!492942 (regOne!19239 (ite c!492732 (reg!9692 (regTwo!19238 r!17423)) (ite c!492730 (regOne!19239 (regTwo!19238 r!17423)) (regTwo!19238 (regTwo!19238 r!17423))))) (regTwo!19238 (ite c!492732 (reg!9692 (regTwo!19238 r!17423)) (ite c!492730 (regOne!19239 (regTwo!19238 r!17423)) (regTwo!19238 (regTwo!19238 r!17423)))))))))))

(assert (=> d!845769 (validRegex!4096 (ite c!492944 (reg!9692 (ite c!492732 (reg!9692 (regTwo!19238 r!17423)) (ite c!492730 (regOne!19239 (regTwo!19238 r!17423)) (regTwo!19238 (regTwo!19238 r!17423))))) (ite c!492942 (regOne!19239 (ite c!492732 (reg!9692 (regTwo!19238 r!17423)) (ite c!492730 (regOne!19239 (regTwo!19238 r!17423)) (regTwo!19238 (regTwo!19238 r!17423))))) (regTwo!19238 (ite c!492732 (reg!9692 (regTwo!19238 r!17423)) (ite c!492730 (regOne!19239 (regTwo!19238 r!17423)) (regTwo!19238 (regTwo!19238 r!17423))))))))))

(assert (=> d!845769 (= (simplify!354 (ite c!492944 (reg!9692 (ite c!492732 (reg!9692 (regTwo!19238 r!17423)) (ite c!492730 (regOne!19239 (regTwo!19238 r!17423)) (regTwo!19238 (regTwo!19238 r!17423))))) (ite c!492942 (regOne!19239 (ite c!492732 (reg!9692 (regTwo!19238 r!17423)) (ite c!492730 (regOne!19239 (regTwo!19238 r!17423)) (regTwo!19238 (regTwo!19238 r!17423))))) (regTwo!19238 (ite c!492732 (reg!9692 (regTwo!19238 r!17423)) (ite c!492730 (regOne!19239 (regTwo!19238 r!17423)) (regTwo!19238 (regTwo!19238 r!17423)))))))) lt!1041594)))

(declare-fun b!2997683 () Bool)

(declare-fun e!1883613 () Bool)

(assert (=> b!2997683 (= e!1883613 call!201134)))

(declare-fun bm!201128 () Bool)

(assert (=> bm!201128 (= call!201132 call!201129)))

(declare-fun b!2997684 () Bool)

(declare-fun c!493185 () Bool)

(declare-fun e!1883606 () Bool)

(assert (=> b!2997684 (= c!493185 e!1883606)))

(declare-fun res!1235997 () Bool)

(assert (=> b!2997684 (=> res!1235997 e!1883606)))

(assert (=> b!2997684 (= res!1235997 call!201130)))

(assert (=> b!2997684 (= lt!1041591 call!201129)))

(assert (=> b!2997684 (= e!1883615 e!1883611)))

(declare-fun b!2997685 () Bool)

(assert (=> b!2997685 (= e!1883606 call!201128)))

(declare-fun b!2997686 () Bool)

(assert (=> b!2997686 (= e!1883605 EmptyLang!9363)))

(declare-fun b!2997687 () Bool)

(assert (=> b!2997687 (= e!1883603 e!1883608)))

(assert (=> b!2997687 (= lt!1041590 call!201133)))

(assert (=> b!2997687 (= lt!1041593 call!201132)))

(declare-fun res!1235996 () Bool)

(assert (=> b!2997687 (= res!1235996 call!201131)))

(assert (=> b!2997687 (=> res!1235996 e!1883613)))

(declare-fun c!493183 () Bool)

(assert (=> b!2997687 (= c!493183 e!1883613)))

(declare-fun b!2997688 () Bool)

(declare-fun e!1883609 () Regex!9363)

(assert (=> b!2997688 (= e!1883609 e!1883615)))

(assert (=> b!2997688 (= c!493180 ((_ is Star!9363) (ite c!492944 (reg!9692 (ite c!492732 (reg!9692 (regTwo!19238 r!17423)) (ite c!492730 (regOne!19239 (regTwo!19238 r!17423)) (regTwo!19238 (regTwo!19238 r!17423))))) (ite c!492942 (regOne!19239 (ite c!492732 (reg!9692 (regTwo!19238 r!17423)) (ite c!492730 (regOne!19239 (regTwo!19238 r!17423)) (regTwo!19238 (regTwo!19238 r!17423))))) (regTwo!19238 (ite c!492732 (reg!9692 (regTwo!19238 r!17423)) (ite c!492730 (regOne!19239 (regTwo!19238 r!17423)) (regTwo!19238 (regTwo!19238 r!17423)))))))))))

(declare-fun b!2997689 () Bool)

(assert (=> b!2997689 (= e!1883609 EmptyExpr!9363)))

(declare-fun c!493187 () Bool)

(declare-fun b!2997690 () Bool)

(assert (=> b!2997690 (= c!493187 ((_ is EmptyExpr!9363) (ite c!492944 (reg!9692 (ite c!492732 (reg!9692 (regTwo!19238 r!17423)) (ite c!492730 (regOne!19239 (regTwo!19238 r!17423)) (regTwo!19238 (regTwo!19238 r!17423))))) (ite c!492942 (regOne!19239 (ite c!492732 (reg!9692 (regTwo!19238 r!17423)) (ite c!492730 (regOne!19239 (regTwo!19238 r!17423)) (regTwo!19238 (regTwo!19238 r!17423))))) (regTwo!19238 (ite c!492732 (reg!9692 (regTwo!19238 r!17423)) (ite c!492730 (regOne!19239 (regTwo!19238 r!17423)) (regTwo!19238 (regTwo!19238 r!17423)))))))))))

(assert (=> b!2997690 (= e!1883604 e!1883609)))

(declare-fun b!2997691 () Bool)

(assert (=> b!2997691 (= e!1883616 lt!1041595)))

(declare-fun bm!201129 () Bool)

(assert (=> bm!201129 (= call!201133 (simplify!354 (ite c!493178 (regTwo!19239 (ite c!492944 (reg!9692 (ite c!492732 (reg!9692 (regTwo!19238 r!17423)) (ite c!492730 (regOne!19239 (regTwo!19238 r!17423)) (regTwo!19238 (regTwo!19238 r!17423))))) (ite c!492942 (regOne!19239 (ite c!492732 (reg!9692 (regTwo!19238 r!17423)) (ite c!492730 (regOne!19239 (regTwo!19238 r!17423)) (regTwo!19238 (regTwo!19238 r!17423))))) (regTwo!19238 (ite c!492732 (reg!9692 (regTwo!19238 r!17423)) (ite c!492730 (regOne!19239 (regTwo!19238 r!17423)) (regTwo!19238 (regTwo!19238 r!17423)))))))) (regOne!19238 (ite c!492944 (reg!9692 (ite c!492732 (reg!9692 (regTwo!19238 r!17423)) (ite c!492730 (regOne!19239 (regTwo!19238 r!17423)) (regTwo!19238 (regTwo!19238 r!17423))))) (ite c!492942 (regOne!19239 (ite c!492732 (reg!9692 (regTwo!19238 r!17423)) (ite c!492730 (regOne!19239 (regTwo!19238 r!17423)) (regTwo!19238 (regTwo!19238 r!17423))))) (regTwo!19238 (ite c!492732 (reg!9692 (regTwo!19238 r!17423)) (ite c!492730 (regOne!19239 (regTwo!19238 r!17423)) (regTwo!19238 (regTwo!19238 r!17423)))))))))))))

(assert (= (and d!845769 c!493186) b!2997686))

(assert (= (and d!845769 (not c!493186)) b!2997668))

(assert (= (and b!2997668 c!493184) b!2997671))

(assert (= (and b!2997668 (not c!493184)) b!2997690))

(assert (= (and b!2997690 c!493187) b!2997689))

(assert (= (and b!2997690 (not c!493187)) b!2997688))

(assert (= (and b!2997688 c!493180) b!2997684))

(assert (= (and b!2997688 (not c!493180)) b!2997672))

(assert (= (and b!2997684 (not res!1235997)) b!2997685))

(assert (= (and b!2997684 c!493185) b!2997679))

(assert (= (and b!2997684 (not c!493185)) b!2997669))

(assert (= (and b!2997672 c!493178) b!2997681))

(assert (= (and b!2997672 (not c!493178)) b!2997687))

(assert (= (and b!2997681 c!493179) b!2997691))

(assert (= (and b!2997681 (not c!493179)) b!2997675))

(assert (= (and b!2997675 c!493181) b!2997667))

(assert (= (and b!2997675 (not c!493181)) b!2997674))

(assert (= (and b!2997687 (not res!1235996)) b!2997683))

(assert (= (and b!2997687 c!493183) b!2997676))

(assert (= (and b!2997687 (not c!493183)) b!2997670))

(assert (= (and b!2997670 c!493182) b!2997677))

(assert (= (and b!2997670 (not c!493182)) b!2997678))

(assert (= (and b!2997678 c!493188) b!2997680))

(assert (= (and b!2997678 (not c!493188)) b!2997673))

(assert (= (or b!2997681 b!2997687) bm!201128))

(assert (= (or b!2997681 b!2997687) bm!201129))

(assert (= (or b!2997681 b!2997687) bm!201124))

(assert (= (or b!2997675 b!2997683) bm!201125))

(assert (= (or b!2997685 b!2997678) bm!201127))

(assert (= (or b!2997684 bm!201128) bm!201123))

(assert (= (or b!2997684 bm!201125) bm!201126))

(assert (= (and d!845769 res!1235998) b!2997682))

(declare-fun m!3350847 () Bool)

(assert (=> bm!201124 m!3350847))

(declare-fun m!3350849 () Bool)

(assert (=> b!2997682 m!3350849))

(declare-fun m!3350851 () Bool)

(assert (=> b!2997682 m!3350851))

(declare-fun m!3350853 () Bool)

(assert (=> bm!201129 m!3350853))

(declare-fun m!3350855 () Bool)

(assert (=> bm!201123 m!3350855))

(declare-fun m!3350857 () Bool)

(assert (=> bm!201127 m!3350857))

(declare-fun m!3350859 () Bool)

(assert (=> d!845769 m!3350859))

(declare-fun m!3350861 () Bool)

(assert (=> d!845769 m!3350861))

(declare-fun m!3350863 () Bool)

(assert (=> b!2997670 m!3350863))

(declare-fun m!3350865 () Bool)

(assert (=> bm!201126 m!3350865))

(assert (=> bm!200920 d!845769))

(declare-fun b!2997692 () Bool)

(declare-fun e!1883621 () Bool)

(declare-fun call!201137 () Bool)

(assert (=> b!2997692 (= e!1883621 call!201137)))

(declare-fun b!2997693 () Bool)

(declare-fun e!1883619 () Bool)

(declare-fun call!201135 () Bool)

(assert (=> b!2997693 (= e!1883619 call!201135)))

(declare-fun bm!201130 () Bool)

(declare-fun c!493189 () Bool)

(declare-fun c!493190 () Bool)

(assert (=> bm!201130 (= call!201137 (validRegex!4096 (ite c!493190 (reg!9692 lt!1041494) (ite c!493189 (regOne!19239 lt!1041494) (regTwo!19238 lt!1041494)))))))

(declare-fun b!2997695 () Bool)

(declare-fun e!1883622 () Bool)

(declare-fun call!201136 () Bool)

(assert (=> b!2997695 (= e!1883622 call!201136)))

(declare-fun bm!201131 () Bool)

(assert (=> bm!201131 (= call!201136 call!201137)))

(declare-fun b!2997696 () Bool)

(declare-fun e!1883618 () Bool)

(declare-fun e!1883617 () Bool)

(assert (=> b!2997696 (= e!1883618 e!1883617)))

(assert (=> b!2997696 (= c!493189 ((_ is Union!9363) lt!1041494))))

(declare-fun b!2997697 () Bool)

(assert (=> b!2997697 (= e!1883618 e!1883621)))

(declare-fun res!1236002 () Bool)

(assert (=> b!2997697 (= res!1236002 (not (nullable!3026 (reg!9692 lt!1041494))))))

(assert (=> b!2997697 (=> (not res!1236002) (not e!1883621))))

(declare-fun b!2997698 () Bool)

(declare-fun res!1235999 () Bool)

(declare-fun e!1883620 () Bool)

(assert (=> b!2997698 (=> res!1235999 e!1883620)))

(assert (=> b!2997698 (= res!1235999 (not ((_ is Concat!14684) lt!1041494)))))

(assert (=> b!2997698 (= e!1883617 e!1883620)))

(declare-fun b!2997699 () Bool)

(assert (=> b!2997699 (= e!1883620 e!1883622)))

(declare-fun res!1236000 () Bool)

(assert (=> b!2997699 (=> (not res!1236000) (not e!1883622))))

(assert (=> b!2997699 (= res!1236000 call!201135)))

(declare-fun bm!201132 () Bool)

(assert (=> bm!201132 (= call!201135 (validRegex!4096 (ite c!493189 (regTwo!19239 lt!1041494) (regOne!19238 lt!1041494))))))

(declare-fun b!2997700 () Bool)

(declare-fun e!1883623 () Bool)

(assert (=> b!2997700 (= e!1883623 e!1883618)))

(assert (=> b!2997700 (= c!493190 ((_ is Star!9363) lt!1041494))))

(declare-fun d!845771 () Bool)

(declare-fun res!1236001 () Bool)

(assert (=> d!845771 (=> res!1236001 e!1883623)))

(assert (=> d!845771 (= res!1236001 ((_ is ElementMatch!9363) lt!1041494))))

(assert (=> d!845771 (= (validRegex!4096 lt!1041494) e!1883623)))

(declare-fun b!2997694 () Bool)

(declare-fun res!1236003 () Bool)

(assert (=> b!2997694 (=> (not res!1236003) (not e!1883619))))

(assert (=> b!2997694 (= res!1236003 call!201136)))

(assert (=> b!2997694 (= e!1883617 e!1883619)))

(assert (= (and d!845771 (not res!1236001)) b!2997700))

(assert (= (and b!2997700 c!493190) b!2997697))

(assert (= (and b!2997700 (not c!493190)) b!2997696))

(assert (= (and b!2997697 res!1236002) b!2997692))

(assert (= (and b!2997696 c!493189) b!2997694))

(assert (= (and b!2997696 (not c!493189)) b!2997698))

(assert (= (and b!2997694 res!1236003) b!2997693))

(assert (= (and b!2997698 (not res!1235999)) b!2997699))

(assert (= (and b!2997699 res!1236000) b!2997695))

(assert (= (or b!2997694 b!2997695) bm!201131))

(assert (= (or b!2997693 b!2997699) bm!201132))

(assert (= (or b!2997692 bm!201131) bm!201130))

(declare-fun m!3350867 () Bool)

(assert (=> bm!201130 m!3350867))

(declare-fun m!3350869 () Bool)

(assert (=> b!2997697 m!3350869))

(declare-fun m!3350871 () Bool)

(assert (=> bm!201132 m!3350871))

(assert (=> d!845479 d!845771))

(assert (=> d!845479 d!845511))

(declare-fun b!2997701 () Bool)

(declare-fun e!1883626 () Bool)

(declare-fun e!1883627 () Bool)

(assert (=> b!2997701 (= e!1883626 e!1883627)))

(declare-fun res!1236007 () Bool)

(declare-fun call!201138 () Bool)

(assert (=> b!2997701 (= res!1236007 call!201138)))

(assert (=> b!2997701 (=> res!1236007 e!1883627)))

(declare-fun b!2997702 () Bool)

(declare-fun e!1883628 () Bool)

(assert (=> b!2997702 (= e!1883626 e!1883628)))

(declare-fun res!1236004 () Bool)

(assert (=> b!2997702 (= res!1236004 call!201138)))

(assert (=> b!2997702 (=> (not res!1236004) (not e!1883628))))

(declare-fun bm!201133 () Bool)

(declare-fun call!201139 () Bool)

(declare-fun c!493191 () Bool)

(assert (=> bm!201133 (= call!201139 (nullable!3026 (ite c!493191 (regTwo!19239 (regTwo!19238 r!17423)) (regTwo!19238 (regTwo!19238 r!17423)))))))

(declare-fun b!2997703 () Bool)

(declare-fun e!1883625 () Bool)

(declare-fun e!1883629 () Bool)

(assert (=> b!2997703 (= e!1883625 e!1883629)))

(declare-fun res!1236006 () Bool)

(assert (=> b!2997703 (=> res!1236006 e!1883629)))

(assert (=> b!2997703 (= res!1236006 ((_ is Star!9363) (regTwo!19238 r!17423)))))

(declare-fun b!2997704 () Bool)

(assert (=> b!2997704 (= e!1883627 call!201139)))

(declare-fun d!845773 () Bool)

(declare-fun res!1236005 () Bool)

(declare-fun e!1883624 () Bool)

(assert (=> d!845773 (=> res!1236005 e!1883624)))

(assert (=> d!845773 (= res!1236005 ((_ is EmptyExpr!9363) (regTwo!19238 r!17423)))))

(assert (=> d!845773 (= (nullableFct!860 (regTwo!19238 r!17423)) e!1883624)))

(declare-fun bm!201134 () Bool)

(assert (=> bm!201134 (= call!201138 (nullable!3026 (ite c!493191 (regOne!19239 (regTwo!19238 r!17423)) (regOne!19238 (regTwo!19238 r!17423)))))))

(declare-fun b!2997705 () Bool)

(assert (=> b!2997705 (= e!1883629 e!1883626)))

(assert (=> b!2997705 (= c!493191 ((_ is Union!9363) (regTwo!19238 r!17423)))))

(declare-fun b!2997706 () Bool)

(assert (=> b!2997706 (= e!1883624 e!1883625)))

(declare-fun res!1236008 () Bool)

(assert (=> b!2997706 (=> (not res!1236008) (not e!1883625))))

(assert (=> b!2997706 (= res!1236008 (and (not ((_ is EmptyLang!9363) (regTwo!19238 r!17423))) (not ((_ is ElementMatch!9363) (regTwo!19238 r!17423)))))))

(declare-fun b!2997707 () Bool)

(assert (=> b!2997707 (= e!1883628 call!201139)))

(assert (= (and d!845773 (not res!1236005)) b!2997706))

(assert (= (and b!2997706 res!1236008) b!2997703))

(assert (= (and b!2997703 (not res!1236006)) b!2997705))

(assert (= (and b!2997705 c!493191) b!2997701))

(assert (= (and b!2997705 (not c!493191)) b!2997702))

(assert (= (and b!2997701 (not res!1236007)) b!2997704))

(assert (= (and b!2997702 res!1236004) b!2997707))

(assert (= (or b!2997704 b!2997707) bm!201133))

(assert (= (or b!2997701 b!2997702) bm!201134))

(declare-fun m!3350873 () Bool)

(assert (=> bm!201133 m!3350873))

(declare-fun m!3350875 () Bool)

(assert (=> bm!201134 m!3350875))

(assert (=> d!845555 d!845773))

(assert (=> bm!200840 d!845497))

(declare-fun b!2997708 () Bool)

(declare-fun e!1883634 () Bool)

(declare-fun call!201142 () Bool)

(assert (=> b!2997708 (= e!1883634 call!201142)))

(declare-fun b!2997709 () Bool)

(declare-fun e!1883632 () Bool)

(declare-fun call!201140 () Bool)

(assert (=> b!2997709 (= e!1883632 call!201140)))

(declare-fun bm!201135 () Bool)

(declare-fun c!493192 () Bool)

(declare-fun c!493193 () Bool)

(assert (=> bm!201135 (= call!201142 (validRegex!4096 (ite c!493193 (reg!9692 (ite c!492898 (regTwo!19239 lt!1041417) (regOne!19238 lt!1041417))) (ite c!493192 (regOne!19239 (ite c!492898 (regTwo!19239 lt!1041417) (regOne!19238 lt!1041417))) (regTwo!19238 (ite c!492898 (regTwo!19239 lt!1041417) (regOne!19238 lt!1041417)))))))))

(declare-fun b!2997711 () Bool)

(declare-fun e!1883635 () Bool)

(declare-fun call!201141 () Bool)

(assert (=> b!2997711 (= e!1883635 call!201141)))

(declare-fun bm!201136 () Bool)

(assert (=> bm!201136 (= call!201141 call!201142)))

(declare-fun b!2997712 () Bool)

(declare-fun e!1883631 () Bool)

(declare-fun e!1883630 () Bool)

(assert (=> b!2997712 (= e!1883631 e!1883630)))

(assert (=> b!2997712 (= c!493192 ((_ is Union!9363) (ite c!492898 (regTwo!19239 lt!1041417) (regOne!19238 lt!1041417))))))

(declare-fun b!2997713 () Bool)

(assert (=> b!2997713 (= e!1883631 e!1883634)))

(declare-fun res!1236012 () Bool)

(assert (=> b!2997713 (= res!1236012 (not (nullable!3026 (reg!9692 (ite c!492898 (regTwo!19239 lt!1041417) (regOne!19238 lt!1041417))))))))

(assert (=> b!2997713 (=> (not res!1236012) (not e!1883634))))

(declare-fun b!2997714 () Bool)

(declare-fun res!1236009 () Bool)

(declare-fun e!1883633 () Bool)

(assert (=> b!2997714 (=> res!1236009 e!1883633)))

(assert (=> b!2997714 (= res!1236009 (not ((_ is Concat!14684) (ite c!492898 (regTwo!19239 lt!1041417) (regOne!19238 lt!1041417)))))))

(assert (=> b!2997714 (= e!1883630 e!1883633)))

(declare-fun b!2997715 () Bool)

(assert (=> b!2997715 (= e!1883633 e!1883635)))

(declare-fun res!1236010 () Bool)

(assert (=> b!2997715 (=> (not res!1236010) (not e!1883635))))

(assert (=> b!2997715 (= res!1236010 call!201140)))

(declare-fun bm!201137 () Bool)

(assert (=> bm!201137 (= call!201140 (validRegex!4096 (ite c!493192 (regTwo!19239 (ite c!492898 (regTwo!19239 lt!1041417) (regOne!19238 lt!1041417))) (regOne!19238 (ite c!492898 (regTwo!19239 lt!1041417) (regOne!19238 lt!1041417))))))))

(declare-fun b!2997716 () Bool)

(declare-fun e!1883636 () Bool)

(assert (=> b!2997716 (= e!1883636 e!1883631)))

(assert (=> b!2997716 (= c!493193 ((_ is Star!9363) (ite c!492898 (regTwo!19239 lt!1041417) (regOne!19238 lt!1041417))))))

(declare-fun d!845775 () Bool)

(declare-fun res!1236011 () Bool)

(assert (=> d!845775 (=> res!1236011 e!1883636)))

(assert (=> d!845775 (= res!1236011 ((_ is ElementMatch!9363) (ite c!492898 (regTwo!19239 lt!1041417) (regOne!19238 lt!1041417))))))

(assert (=> d!845775 (= (validRegex!4096 (ite c!492898 (regTwo!19239 lt!1041417) (regOne!19238 lt!1041417))) e!1883636)))

(declare-fun b!2997710 () Bool)

(declare-fun res!1236013 () Bool)

(assert (=> b!2997710 (=> (not res!1236013) (not e!1883632))))

(assert (=> b!2997710 (= res!1236013 call!201141)))

(assert (=> b!2997710 (= e!1883630 e!1883632)))

(assert (= (and d!845775 (not res!1236011)) b!2997716))

(assert (= (and b!2997716 c!493193) b!2997713))

(assert (= (and b!2997716 (not c!493193)) b!2997712))

(assert (= (and b!2997713 res!1236012) b!2997708))

(assert (= (and b!2997712 c!493192) b!2997710))

(assert (= (and b!2997712 (not c!493192)) b!2997714))

(assert (= (and b!2997710 res!1236013) b!2997709))

(assert (= (and b!2997714 (not res!1236009)) b!2997715))

(assert (= (and b!2997715 res!1236010) b!2997711))

(assert (= (or b!2997710 b!2997711) bm!201136))

(assert (= (or b!2997709 b!2997715) bm!201137))

(assert (= (or b!2997708 bm!201136) bm!201135))

(declare-fun m!3350877 () Bool)

(assert (=> bm!201135 m!3350877))

(declare-fun m!3350879 () Bool)

(assert (=> b!2997713 m!3350879))

(declare-fun m!3350881 () Bool)

(assert (=> bm!201137 m!3350881))

(assert (=> bm!200883 d!845775))

(declare-fun b!2997717 () Bool)

(declare-fun e!1883641 () Bool)

(declare-fun call!201145 () Bool)

(assert (=> b!2997717 (= e!1883641 call!201145)))

(declare-fun b!2997718 () Bool)

(declare-fun e!1883639 () Bool)

(declare-fun call!201143 () Bool)

(assert (=> b!2997718 (= e!1883639 call!201143)))

(declare-fun bm!201138 () Bool)

(declare-fun c!493195 () Bool)

(declare-fun c!493194 () Bool)

(assert (=> bm!201138 (= call!201145 (validRegex!4096 (ite c!493195 (reg!9692 (ite c!492939 (reg!9692 (ite c!492693 (reg!9692 r!17423) (ite c!492692 (regOne!19239 r!17423) (regTwo!19238 r!17423)))) (ite c!492938 (regOne!19239 (ite c!492693 (reg!9692 r!17423) (ite c!492692 (regOne!19239 r!17423) (regTwo!19238 r!17423)))) (regTwo!19238 (ite c!492693 (reg!9692 r!17423) (ite c!492692 (regOne!19239 r!17423) (regTwo!19238 r!17423))))))) (ite c!493194 (regOne!19239 (ite c!492939 (reg!9692 (ite c!492693 (reg!9692 r!17423) (ite c!492692 (regOne!19239 r!17423) (regTwo!19238 r!17423)))) (ite c!492938 (regOne!19239 (ite c!492693 (reg!9692 r!17423) (ite c!492692 (regOne!19239 r!17423) (regTwo!19238 r!17423)))) (regTwo!19238 (ite c!492693 (reg!9692 r!17423) (ite c!492692 (regOne!19239 r!17423) (regTwo!19238 r!17423))))))) (regTwo!19238 (ite c!492939 (reg!9692 (ite c!492693 (reg!9692 r!17423) (ite c!492692 (regOne!19239 r!17423) (regTwo!19238 r!17423)))) (ite c!492938 (regOne!19239 (ite c!492693 (reg!9692 r!17423) (ite c!492692 (regOne!19239 r!17423) (regTwo!19238 r!17423)))) (regTwo!19238 (ite c!492693 (reg!9692 r!17423) (ite c!492692 (regOne!19239 r!17423) (regTwo!19238 r!17423)))))))))))))

(declare-fun b!2997720 () Bool)

(declare-fun e!1883642 () Bool)

(declare-fun call!201144 () Bool)

(assert (=> b!2997720 (= e!1883642 call!201144)))

(declare-fun bm!201139 () Bool)

(assert (=> bm!201139 (= call!201144 call!201145)))

(declare-fun b!2997721 () Bool)

(declare-fun e!1883638 () Bool)

(declare-fun e!1883637 () Bool)

(assert (=> b!2997721 (= e!1883638 e!1883637)))

(assert (=> b!2997721 (= c!493194 ((_ is Union!9363) (ite c!492939 (reg!9692 (ite c!492693 (reg!9692 r!17423) (ite c!492692 (regOne!19239 r!17423) (regTwo!19238 r!17423)))) (ite c!492938 (regOne!19239 (ite c!492693 (reg!9692 r!17423) (ite c!492692 (regOne!19239 r!17423) (regTwo!19238 r!17423)))) (regTwo!19238 (ite c!492693 (reg!9692 r!17423) (ite c!492692 (regOne!19239 r!17423) (regTwo!19238 r!17423))))))))))

(declare-fun b!2997722 () Bool)

(assert (=> b!2997722 (= e!1883638 e!1883641)))

(declare-fun res!1236017 () Bool)

(assert (=> b!2997722 (= res!1236017 (not (nullable!3026 (reg!9692 (ite c!492939 (reg!9692 (ite c!492693 (reg!9692 r!17423) (ite c!492692 (regOne!19239 r!17423) (regTwo!19238 r!17423)))) (ite c!492938 (regOne!19239 (ite c!492693 (reg!9692 r!17423) (ite c!492692 (regOne!19239 r!17423) (regTwo!19238 r!17423)))) (regTwo!19238 (ite c!492693 (reg!9692 r!17423) (ite c!492692 (regOne!19239 r!17423) (regTwo!19238 r!17423))))))))))))

(assert (=> b!2997722 (=> (not res!1236017) (not e!1883641))))

(declare-fun b!2997723 () Bool)

(declare-fun res!1236014 () Bool)

(declare-fun e!1883640 () Bool)

(assert (=> b!2997723 (=> res!1236014 e!1883640)))

(assert (=> b!2997723 (= res!1236014 (not ((_ is Concat!14684) (ite c!492939 (reg!9692 (ite c!492693 (reg!9692 r!17423) (ite c!492692 (regOne!19239 r!17423) (regTwo!19238 r!17423)))) (ite c!492938 (regOne!19239 (ite c!492693 (reg!9692 r!17423) (ite c!492692 (regOne!19239 r!17423) (regTwo!19238 r!17423)))) (regTwo!19238 (ite c!492693 (reg!9692 r!17423) (ite c!492692 (regOne!19239 r!17423) (regTwo!19238 r!17423)))))))))))

(assert (=> b!2997723 (= e!1883637 e!1883640)))

(declare-fun b!2997724 () Bool)

(assert (=> b!2997724 (= e!1883640 e!1883642)))

(declare-fun res!1236015 () Bool)

(assert (=> b!2997724 (=> (not res!1236015) (not e!1883642))))

(assert (=> b!2997724 (= res!1236015 call!201143)))

(declare-fun bm!201140 () Bool)

(assert (=> bm!201140 (= call!201143 (validRegex!4096 (ite c!493194 (regTwo!19239 (ite c!492939 (reg!9692 (ite c!492693 (reg!9692 r!17423) (ite c!492692 (regOne!19239 r!17423) (regTwo!19238 r!17423)))) (ite c!492938 (regOne!19239 (ite c!492693 (reg!9692 r!17423) (ite c!492692 (regOne!19239 r!17423) (regTwo!19238 r!17423)))) (regTwo!19238 (ite c!492693 (reg!9692 r!17423) (ite c!492692 (regOne!19239 r!17423) (regTwo!19238 r!17423))))))) (regOne!19238 (ite c!492939 (reg!9692 (ite c!492693 (reg!9692 r!17423) (ite c!492692 (regOne!19239 r!17423) (regTwo!19238 r!17423)))) (ite c!492938 (regOne!19239 (ite c!492693 (reg!9692 r!17423) (ite c!492692 (regOne!19239 r!17423) (regTwo!19238 r!17423)))) (regTwo!19238 (ite c!492693 (reg!9692 r!17423) (ite c!492692 (regOne!19239 r!17423) (regTwo!19238 r!17423))))))))))))

(declare-fun b!2997725 () Bool)

(declare-fun e!1883643 () Bool)

(assert (=> b!2997725 (= e!1883643 e!1883638)))

(assert (=> b!2997725 (= c!493195 ((_ is Star!9363) (ite c!492939 (reg!9692 (ite c!492693 (reg!9692 r!17423) (ite c!492692 (regOne!19239 r!17423) (regTwo!19238 r!17423)))) (ite c!492938 (regOne!19239 (ite c!492693 (reg!9692 r!17423) (ite c!492692 (regOne!19239 r!17423) (regTwo!19238 r!17423)))) (regTwo!19238 (ite c!492693 (reg!9692 r!17423) (ite c!492692 (regOne!19239 r!17423) (regTwo!19238 r!17423))))))))))

(declare-fun d!845777 () Bool)

(declare-fun res!1236016 () Bool)

(assert (=> d!845777 (=> res!1236016 e!1883643)))

(assert (=> d!845777 (= res!1236016 ((_ is ElementMatch!9363) (ite c!492939 (reg!9692 (ite c!492693 (reg!9692 r!17423) (ite c!492692 (regOne!19239 r!17423) (regTwo!19238 r!17423)))) (ite c!492938 (regOne!19239 (ite c!492693 (reg!9692 r!17423) (ite c!492692 (regOne!19239 r!17423) (regTwo!19238 r!17423)))) (regTwo!19238 (ite c!492693 (reg!9692 r!17423) (ite c!492692 (regOne!19239 r!17423) (regTwo!19238 r!17423))))))))))

(assert (=> d!845777 (= (validRegex!4096 (ite c!492939 (reg!9692 (ite c!492693 (reg!9692 r!17423) (ite c!492692 (regOne!19239 r!17423) (regTwo!19238 r!17423)))) (ite c!492938 (regOne!19239 (ite c!492693 (reg!9692 r!17423) (ite c!492692 (regOne!19239 r!17423) (regTwo!19238 r!17423)))) (regTwo!19238 (ite c!492693 (reg!9692 r!17423) (ite c!492692 (regOne!19239 r!17423) (regTwo!19238 r!17423))))))) e!1883643)))

(declare-fun b!2997719 () Bool)

(declare-fun res!1236018 () Bool)

(assert (=> b!2997719 (=> (not res!1236018) (not e!1883639))))

(assert (=> b!2997719 (= res!1236018 call!201144)))

(assert (=> b!2997719 (= e!1883637 e!1883639)))

(assert (= (and d!845777 (not res!1236016)) b!2997725))

(assert (= (and b!2997725 c!493195) b!2997722))

(assert (= (and b!2997725 (not c!493195)) b!2997721))

(assert (= (and b!2997722 res!1236017) b!2997717))

(assert (= (and b!2997721 c!493194) b!2997719))

(assert (= (and b!2997721 (not c!493194)) b!2997723))

(assert (= (and b!2997719 res!1236018) b!2997718))

(assert (= (and b!2997723 (not res!1236014)) b!2997724))

(assert (= (and b!2997724 res!1236015) b!2997720))

(assert (= (or b!2997719 b!2997720) bm!201139))

(assert (= (or b!2997718 b!2997724) bm!201140))

(assert (= (or b!2997717 bm!201139) bm!201138))

(declare-fun m!3350883 () Bool)

(assert (=> bm!201138 m!3350883))

(declare-fun m!3350885 () Bool)

(assert (=> b!2997722 m!3350885))

(declare-fun m!3350887 () Bool)

(assert (=> bm!201140 m!3350887))

(assert (=> bm!200910 d!845777))

(declare-fun d!845779 () Bool)

(assert (=> d!845779 (= (isEmptyExpr!470 lt!1041495) ((_ is EmptyExpr!9363) lt!1041495))))

(assert (=> b!2996492 d!845779))

(declare-fun b!2997726 () Bool)

(declare-fun e!1883648 () Bool)

(declare-fun call!201148 () Bool)

(assert (=> b!2997726 (= e!1883648 call!201148)))

(declare-fun b!2997727 () Bool)

(declare-fun e!1883646 () Bool)

(declare-fun call!201146 () Bool)

(assert (=> b!2997727 (= e!1883646 call!201146)))

(declare-fun bm!201141 () Bool)

(declare-fun c!493197 () Bool)

(declare-fun c!493196 () Bool)

(assert (=> bm!201141 (= call!201148 (validRegex!4096 (ite c!493197 (reg!9692 lt!1041519) (ite c!493196 (regOne!19239 lt!1041519) (regTwo!19238 lt!1041519)))))))

(declare-fun b!2997729 () Bool)

(declare-fun e!1883649 () Bool)

(declare-fun call!201147 () Bool)

(assert (=> b!2997729 (= e!1883649 call!201147)))

(declare-fun bm!201142 () Bool)

(assert (=> bm!201142 (= call!201147 call!201148)))

(declare-fun b!2997730 () Bool)

(declare-fun e!1883645 () Bool)

(declare-fun e!1883644 () Bool)

(assert (=> b!2997730 (= e!1883645 e!1883644)))

(assert (=> b!2997730 (= c!493196 ((_ is Union!9363) lt!1041519))))

(declare-fun b!2997731 () Bool)

(assert (=> b!2997731 (= e!1883645 e!1883648)))

(declare-fun res!1236022 () Bool)

(assert (=> b!2997731 (= res!1236022 (not (nullable!3026 (reg!9692 lt!1041519))))))

(assert (=> b!2997731 (=> (not res!1236022) (not e!1883648))))

(declare-fun b!2997732 () Bool)

(declare-fun res!1236019 () Bool)

(declare-fun e!1883647 () Bool)

(assert (=> b!2997732 (=> res!1236019 e!1883647)))

(assert (=> b!2997732 (= res!1236019 (not ((_ is Concat!14684) lt!1041519)))))

(assert (=> b!2997732 (= e!1883644 e!1883647)))

(declare-fun b!2997733 () Bool)

(assert (=> b!2997733 (= e!1883647 e!1883649)))

(declare-fun res!1236020 () Bool)

(assert (=> b!2997733 (=> (not res!1236020) (not e!1883649))))

(assert (=> b!2997733 (= res!1236020 call!201146)))

(declare-fun bm!201143 () Bool)

(assert (=> bm!201143 (= call!201146 (validRegex!4096 (ite c!493196 (regTwo!19239 lt!1041519) (regOne!19238 lt!1041519))))))

(declare-fun b!2997734 () Bool)

(declare-fun e!1883650 () Bool)

(assert (=> b!2997734 (= e!1883650 e!1883645)))

(assert (=> b!2997734 (= c!493197 ((_ is Star!9363) lt!1041519))))

(declare-fun d!845781 () Bool)

(declare-fun res!1236021 () Bool)

(assert (=> d!845781 (=> res!1236021 e!1883650)))

(assert (=> d!845781 (= res!1236021 ((_ is ElementMatch!9363) lt!1041519))))

(assert (=> d!845781 (= (validRegex!4096 lt!1041519) e!1883650)))

(declare-fun b!2997728 () Bool)

(declare-fun res!1236023 () Bool)

(assert (=> b!2997728 (=> (not res!1236023) (not e!1883646))))

(assert (=> b!2997728 (= res!1236023 call!201147)))

(assert (=> b!2997728 (= e!1883644 e!1883646)))

(assert (= (and d!845781 (not res!1236021)) b!2997734))

(assert (= (and b!2997734 c!493197) b!2997731))

(assert (= (and b!2997734 (not c!493197)) b!2997730))

(assert (= (and b!2997731 res!1236022) b!2997726))

(assert (= (and b!2997730 c!493196) b!2997728))

(assert (= (and b!2997730 (not c!493196)) b!2997732))

(assert (= (and b!2997728 res!1236023) b!2997727))

(assert (= (and b!2997732 (not res!1236019)) b!2997733))

(assert (= (and b!2997733 res!1236020) b!2997729))

(assert (= (or b!2997728 b!2997729) bm!201142))

(assert (= (or b!2997727 b!2997733) bm!201143))

(assert (= (or b!2997726 bm!201142) bm!201141))

(declare-fun m!3350889 () Bool)

(assert (=> bm!201141 m!3350889))

(declare-fun m!3350891 () Bool)

(assert (=> b!2997731 m!3350891))

(declare-fun m!3350893 () Bool)

(assert (=> bm!201143 m!3350893))

(assert (=> d!845549 d!845781))

(declare-fun b!2997735 () Bool)

(declare-fun e!1883655 () Bool)

(declare-fun call!201151 () Bool)

(assert (=> b!2997735 (= e!1883655 call!201151)))

(declare-fun b!2997736 () Bool)

(declare-fun e!1883653 () Bool)

(declare-fun call!201149 () Bool)

(assert (=> b!2997736 (= e!1883653 call!201149)))

(declare-fun c!493199 () Bool)

(declare-fun bm!201144 () Bool)

(declare-fun c!493198 () Bool)

(assert (=> bm!201144 (= call!201151 (validRegex!4096 (ite c!493199 (reg!9692 (ite c!492741 (regTwo!19239 (regOne!19238 r!17423)) (regOne!19238 (regOne!19238 r!17423)))) (ite c!493198 (regOne!19239 (ite c!492741 (regTwo!19239 (regOne!19238 r!17423)) (regOne!19238 (regOne!19238 r!17423)))) (regTwo!19238 (ite c!492741 (regTwo!19239 (regOne!19238 r!17423)) (regOne!19238 (regOne!19238 r!17423))))))))))

(declare-fun b!2997738 () Bool)

(declare-fun e!1883656 () Bool)

(declare-fun call!201150 () Bool)

(assert (=> b!2997738 (= e!1883656 call!201150)))

(declare-fun bm!201145 () Bool)

(assert (=> bm!201145 (= call!201150 call!201151)))

(declare-fun b!2997739 () Bool)

(declare-fun e!1883652 () Bool)

(declare-fun e!1883651 () Bool)

(assert (=> b!2997739 (= e!1883652 e!1883651)))

(assert (=> b!2997739 (= c!493198 ((_ is Union!9363) (ite c!492741 (regTwo!19239 (regOne!19238 r!17423)) (regOne!19238 (regOne!19238 r!17423)))))))

(declare-fun b!2997740 () Bool)

(assert (=> b!2997740 (= e!1883652 e!1883655)))

(declare-fun res!1236027 () Bool)

(assert (=> b!2997740 (= res!1236027 (not (nullable!3026 (reg!9692 (ite c!492741 (regTwo!19239 (regOne!19238 r!17423)) (regOne!19238 (regOne!19238 r!17423)))))))))

(assert (=> b!2997740 (=> (not res!1236027) (not e!1883655))))

(declare-fun b!2997741 () Bool)

(declare-fun res!1236024 () Bool)

(declare-fun e!1883654 () Bool)

(assert (=> b!2997741 (=> res!1236024 e!1883654)))

(assert (=> b!2997741 (= res!1236024 (not ((_ is Concat!14684) (ite c!492741 (regTwo!19239 (regOne!19238 r!17423)) (regOne!19238 (regOne!19238 r!17423))))))))

(assert (=> b!2997741 (= e!1883651 e!1883654)))

(declare-fun b!2997742 () Bool)

(assert (=> b!2997742 (= e!1883654 e!1883656)))

(declare-fun res!1236025 () Bool)

(assert (=> b!2997742 (=> (not res!1236025) (not e!1883656))))

(assert (=> b!2997742 (= res!1236025 call!201149)))

(declare-fun bm!201146 () Bool)

(assert (=> bm!201146 (= call!201149 (validRegex!4096 (ite c!493198 (regTwo!19239 (ite c!492741 (regTwo!19239 (regOne!19238 r!17423)) (regOne!19238 (regOne!19238 r!17423)))) (regOne!19238 (ite c!492741 (regTwo!19239 (regOne!19238 r!17423)) (regOne!19238 (regOne!19238 r!17423)))))))))

(declare-fun b!2997743 () Bool)

(declare-fun e!1883657 () Bool)

(assert (=> b!2997743 (= e!1883657 e!1883652)))

(assert (=> b!2997743 (= c!493199 ((_ is Star!9363) (ite c!492741 (regTwo!19239 (regOne!19238 r!17423)) (regOne!19238 (regOne!19238 r!17423)))))))

(declare-fun d!845783 () Bool)

(declare-fun res!1236026 () Bool)

(assert (=> d!845783 (=> res!1236026 e!1883657)))

(assert (=> d!845783 (= res!1236026 ((_ is ElementMatch!9363) (ite c!492741 (regTwo!19239 (regOne!19238 r!17423)) (regOne!19238 (regOne!19238 r!17423)))))))

(assert (=> d!845783 (= (validRegex!4096 (ite c!492741 (regTwo!19239 (regOne!19238 r!17423)) (regOne!19238 (regOne!19238 r!17423)))) e!1883657)))

(declare-fun b!2997737 () Bool)

(declare-fun res!1236028 () Bool)

(assert (=> b!2997737 (=> (not res!1236028) (not e!1883653))))

(assert (=> b!2997737 (= res!1236028 call!201150)))

(assert (=> b!2997737 (= e!1883651 e!1883653)))

(assert (= (and d!845783 (not res!1236026)) b!2997743))

(assert (= (and b!2997743 c!493199) b!2997740))

(assert (= (and b!2997743 (not c!493199)) b!2997739))

(assert (= (and b!2997740 res!1236027) b!2997735))

(assert (= (and b!2997739 c!493198) b!2997737))

(assert (= (and b!2997739 (not c!493198)) b!2997741))

(assert (= (and b!2997737 res!1236028) b!2997736))

(assert (= (and b!2997741 (not res!1236024)) b!2997742))

(assert (= (and b!2997742 res!1236025) b!2997738))

(assert (= (or b!2997737 b!2997738) bm!201145))

(assert (= (or b!2997736 b!2997742) bm!201146))

(assert (= (or b!2997735 bm!201145) bm!201144))

(declare-fun m!3350895 () Bool)

(assert (=> bm!201144 m!3350895))

(declare-fun m!3350897 () Bool)

(assert (=> b!2997740 m!3350897))

(declare-fun m!3350899 () Bool)

(assert (=> bm!201146 m!3350899))

(assert (=> d!845549 d!845783))

(declare-fun d!845785 () Bool)

(assert (=> d!845785 (= (isEmptyLang!453 (ite c!492942 lt!1041523 lt!1041521)) ((_ is EmptyLang!9363) (ite c!492942 lt!1041523 lt!1041521)))))

(assert (=> bm!200921 d!845785))

(declare-fun b!2997744 () Bool)

(declare-fun e!1883665 () Regex!9363)

(declare-fun lt!1041598 () Regex!9363)

(assert (=> b!2997744 (= e!1883665 lt!1041598)))

(declare-fun c!493202 () Bool)

(declare-fun bm!201147 () Bool)

(declare-fun c!493200 () Bool)

(declare-fun call!201153 () Regex!9363)

(assert (=> bm!201147 (= call!201153 (simplify!354 (ite c!493202 (reg!9692 (ite c!492876 (regTwo!19239 (ite c!492743 (reg!9692 (regOne!19238 r!17423)) (ite c!492741 (regOne!19239 (regOne!19238 r!17423)) (regTwo!19238 (regOne!19238 r!17423))))) (regOne!19238 (ite c!492743 (reg!9692 (regOne!19238 r!17423)) (ite c!492741 (regOne!19239 (regOne!19238 r!17423)) (regTwo!19238 (regOne!19238 r!17423))))))) (ite c!493200 (regOne!19239 (ite c!492876 (regTwo!19239 (ite c!492743 (reg!9692 (regOne!19238 r!17423)) (ite c!492741 (regOne!19239 (regOne!19238 r!17423)) (regTwo!19238 (regOne!19238 r!17423))))) (regOne!19238 (ite c!492743 (reg!9692 (regOne!19238 r!17423)) (ite c!492741 (regOne!19239 (regOne!19238 r!17423)) (regTwo!19238 (regOne!19238 r!17423))))))) (regTwo!19238 (ite c!492876 (regTwo!19239 (ite c!492743 (reg!9692 (regOne!19238 r!17423)) (ite c!492741 (regOne!19239 (regOne!19238 r!17423)) (regTwo!19238 (regOne!19238 r!17423))))) (regOne!19238 (ite c!492743 (reg!9692 (regOne!19238 r!17423)) (ite c!492741 (regOne!19239 (regOne!19238 r!17423)) (regTwo!19238 (regOne!19238 r!17423)))))))))))))

(declare-fun b!2997746 () Bool)

(declare-fun e!1883666 () Regex!9363)

(declare-fun lt!1041597 () Regex!9363)

(assert (=> b!2997746 (= e!1883666 (Star!9363 lt!1041597))))

(declare-fun b!2997747 () Bool)

(declare-fun c!493204 () Bool)

(declare-fun lt!1041596 () Regex!9363)

(assert (=> b!2997747 (= c!493204 (isEmptyExpr!470 lt!1041596))))

(declare-fun e!1883663 () Regex!9363)

(declare-fun e!1883667 () Regex!9363)

(assert (=> b!2997747 (= e!1883663 e!1883667)))

(declare-fun e!1883659 () Regex!9363)

(declare-fun b!2997748 () Bool)

(assert (=> b!2997748 (= e!1883659 (ite c!492876 (regTwo!19239 (ite c!492743 (reg!9692 (regOne!19238 r!17423)) (ite c!492741 (regOne!19239 (regOne!19238 r!17423)) (regTwo!19238 (regOne!19238 r!17423))))) (regOne!19238 (ite c!492743 (reg!9692 (regOne!19238 r!17423)) (ite c!492741 (regOne!19239 (regOne!19238 r!17423)) (regTwo!19238 (regOne!19238 r!17423)))))))))

(declare-fun call!201155 () Bool)

(declare-fun bm!201148 () Bool)

(assert (=> bm!201148 (= call!201155 (isEmptyLang!453 (ite c!493200 lt!1041598 lt!1041596)))))

(declare-fun bm!201149 () Bool)

(declare-fun call!201158 () Bool)

(declare-fun call!201154 () Bool)

(assert (=> bm!201149 (= call!201158 call!201154)))

(declare-fun lt!1041601 () Regex!9363)

(declare-fun bm!201150 () Bool)

(declare-fun lt!1041599 () Regex!9363)

(assert (=> bm!201150 (= call!201154 (isEmptyLang!453 (ite c!493202 lt!1041597 (ite c!493200 lt!1041601 lt!1041599))))))

(declare-fun b!2997749 () Bool)

(assert (=> b!2997749 (= c!493200 ((_ is Union!9363) (ite c!492876 (regTwo!19239 (ite c!492743 (reg!9692 (regOne!19238 r!17423)) (ite c!492741 (regOne!19239 (regOne!19238 r!17423)) (regTwo!19238 (regOne!19238 r!17423))))) (regOne!19238 (ite c!492743 (reg!9692 (regOne!19238 r!17423)) (ite c!492741 (regOne!19239 (regOne!19238 r!17423)) (regTwo!19238 (regOne!19238 r!17423))))))))))

(declare-fun e!1883670 () Regex!9363)

(declare-fun e!1883658 () Regex!9363)

(assert (=> b!2997749 (= e!1883670 e!1883658)))

(declare-fun b!2997750 () Bool)

(declare-fun e!1883662 () Regex!9363)

(assert (=> b!2997750 (= e!1883662 (Concat!14684 lt!1041596 lt!1041599))))

(declare-fun b!2997751 () Bool)

(assert (=> b!2997751 (= e!1883665 (Union!9363 lt!1041598 lt!1041601))))

(declare-fun b!2997752 () Bool)

(declare-fun c!493203 () Bool)

(assert (=> b!2997752 (= c!493203 call!201158)))

(declare-fun e!1883671 () Regex!9363)

(assert (=> b!2997752 (= e!1883671 e!1883665)))

(declare-fun b!2997753 () Bool)

(assert (=> b!2997753 (= e!1883663 EmptyLang!9363)))

(declare-fun b!2997754 () Bool)

(assert (=> b!2997754 (= e!1883667 lt!1041599)))

(declare-fun b!2997755 () Bool)

(assert (=> b!2997755 (= e!1883667 e!1883662)))

(declare-fun c!493210 () Bool)

(declare-fun call!201152 () Bool)

(assert (=> b!2997755 (= c!493210 call!201152)))

(declare-fun b!2997756 () Bool)

(assert (=> b!2997756 (= e!1883666 EmptyExpr!9363)))

(declare-fun b!2997757 () Bool)

(assert (=> b!2997757 (= e!1883662 lt!1041596)))

(declare-fun b!2997758 () Bool)

(assert (=> b!2997758 (= e!1883658 e!1883671)))

(declare-fun call!201156 () Regex!9363)

(assert (=> b!2997758 (= lt!1041598 call!201156)))

(declare-fun call!201157 () Regex!9363)

(assert (=> b!2997758 (= lt!1041601 call!201157)))

(declare-fun c!493201 () Bool)

(assert (=> b!2997758 (= c!493201 call!201155)))

(declare-fun bm!201151 () Bool)

(assert (=> bm!201151 (= call!201152 (isEmptyExpr!470 (ite c!493202 lt!1041597 lt!1041599)))))

(declare-fun b!2997759 () Bool)

(declare-fun lt!1041600 () Regex!9363)

(declare-fun e!1883669 () Bool)

(assert (=> b!2997759 (= e!1883669 (= (nullable!3026 lt!1041600) (nullable!3026 (ite c!492876 (regTwo!19239 (ite c!492743 (reg!9692 (regOne!19238 r!17423)) (ite c!492741 (regOne!19239 (regOne!19238 r!17423)) (regTwo!19238 (regOne!19238 r!17423))))) (regOne!19238 (ite c!492743 (reg!9692 (regOne!19238 r!17423)) (ite c!492741 (regOne!19239 (regOne!19238 r!17423)) (regTwo!19238 (regOne!19238 r!17423)))))))))))

(declare-fun b!2997745 () Bool)

(declare-fun e!1883660 () Regex!9363)

(assert (=> b!2997745 (= e!1883660 e!1883659)))

(declare-fun c!493206 () Bool)

(assert (=> b!2997745 (= c!493206 ((_ is ElementMatch!9363) (ite c!492876 (regTwo!19239 (ite c!492743 (reg!9692 (regOne!19238 r!17423)) (ite c!492741 (regOne!19239 (regOne!19238 r!17423)) (regTwo!19238 (regOne!19238 r!17423))))) (regOne!19238 (ite c!492743 (reg!9692 (regOne!19238 r!17423)) (ite c!492741 (regOne!19239 (regOne!19238 r!17423)) (regTwo!19238 (regOne!19238 r!17423))))))))))

(declare-fun d!845787 () Bool)

(assert (=> d!845787 e!1883669))

(declare-fun res!1236031 () Bool)

(assert (=> d!845787 (=> (not res!1236031) (not e!1883669))))

(assert (=> d!845787 (= res!1236031 (validRegex!4096 lt!1041600))))

(assert (=> d!845787 (= lt!1041600 e!1883660)))

(declare-fun c!493208 () Bool)

(assert (=> d!845787 (= c!493208 ((_ is EmptyLang!9363) (ite c!492876 (regTwo!19239 (ite c!492743 (reg!9692 (regOne!19238 r!17423)) (ite c!492741 (regOne!19239 (regOne!19238 r!17423)) (regTwo!19238 (regOne!19238 r!17423))))) (regOne!19238 (ite c!492743 (reg!9692 (regOne!19238 r!17423)) (ite c!492741 (regOne!19239 (regOne!19238 r!17423)) (regTwo!19238 (regOne!19238 r!17423))))))))))

(assert (=> d!845787 (validRegex!4096 (ite c!492876 (regTwo!19239 (ite c!492743 (reg!9692 (regOne!19238 r!17423)) (ite c!492741 (regOne!19239 (regOne!19238 r!17423)) (regTwo!19238 (regOne!19238 r!17423))))) (regOne!19238 (ite c!492743 (reg!9692 (regOne!19238 r!17423)) (ite c!492741 (regOne!19239 (regOne!19238 r!17423)) (regTwo!19238 (regOne!19238 r!17423)))))))))

(assert (=> d!845787 (= (simplify!354 (ite c!492876 (regTwo!19239 (ite c!492743 (reg!9692 (regOne!19238 r!17423)) (ite c!492741 (regOne!19239 (regOne!19238 r!17423)) (regTwo!19238 (regOne!19238 r!17423))))) (regOne!19238 (ite c!492743 (reg!9692 (regOne!19238 r!17423)) (ite c!492741 (regOne!19239 (regOne!19238 r!17423)) (regTwo!19238 (regOne!19238 r!17423))))))) lt!1041600)))

(declare-fun b!2997760 () Bool)

(declare-fun e!1883668 () Bool)

(assert (=> b!2997760 (= e!1883668 call!201158)))

(declare-fun bm!201152 () Bool)

(assert (=> bm!201152 (= call!201156 call!201153)))

(declare-fun b!2997761 () Bool)

(declare-fun c!493207 () Bool)

(declare-fun e!1883661 () Bool)

(assert (=> b!2997761 (= c!493207 e!1883661)))

(declare-fun res!1236030 () Bool)

(assert (=> b!2997761 (=> res!1236030 e!1883661)))

(assert (=> b!2997761 (= res!1236030 call!201154)))

(assert (=> b!2997761 (= lt!1041597 call!201153)))

(assert (=> b!2997761 (= e!1883670 e!1883666)))

(declare-fun b!2997762 () Bool)

(assert (=> b!2997762 (= e!1883661 call!201152)))

(declare-fun b!2997763 () Bool)

(assert (=> b!2997763 (= e!1883660 EmptyLang!9363)))

(declare-fun b!2997764 () Bool)

(assert (=> b!2997764 (= e!1883658 e!1883663)))

(assert (=> b!2997764 (= lt!1041596 call!201157)))

(assert (=> b!2997764 (= lt!1041599 call!201156)))

(declare-fun res!1236029 () Bool)

(assert (=> b!2997764 (= res!1236029 call!201155)))

(assert (=> b!2997764 (=> res!1236029 e!1883668)))

(declare-fun c!493205 () Bool)

(assert (=> b!2997764 (= c!493205 e!1883668)))

(declare-fun b!2997765 () Bool)

(declare-fun e!1883664 () Regex!9363)

(assert (=> b!2997765 (= e!1883664 e!1883670)))

(assert (=> b!2997765 (= c!493202 ((_ is Star!9363) (ite c!492876 (regTwo!19239 (ite c!492743 (reg!9692 (regOne!19238 r!17423)) (ite c!492741 (regOne!19239 (regOne!19238 r!17423)) (regTwo!19238 (regOne!19238 r!17423))))) (regOne!19238 (ite c!492743 (reg!9692 (regOne!19238 r!17423)) (ite c!492741 (regOne!19239 (regOne!19238 r!17423)) (regTwo!19238 (regOne!19238 r!17423))))))))))

(declare-fun b!2997766 () Bool)

(assert (=> b!2997766 (= e!1883664 EmptyExpr!9363)))

(declare-fun c!493209 () Bool)

(declare-fun b!2997767 () Bool)

(assert (=> b!2997767 (= c!493209 ((_ is EmptyExpr!9363) (ite c!492876 (regTwo!19239 (ite c!492743 (reg!9692 (regOne!19238 r!17423)) (ite c!492741 (regOne!19239 (regOne!19238 r!17423)) (regTwo!19238 (regOne!19238 r!17423))))) (regOne!19238 (ite c!492743 (reg!9692 (regOne!19238 r!17423)) (ite c!492741 (regOne!19239 (regOne!19238 r!17423)) (regTwo!19238 (regOne!19238 r!17423))))))))))

(assert (=> b!2997767 (= e!1883659 e!1883664)))

(declare-fun b!2997768 () Bool)

(assert (=> b!2997768 (= e!1883671 lt!1041601)))

(declare-fun bm!201153 () Bool)

(assert (=> bm!201153 (= call!201157 (simplify!354 (ite c!493200 (regTwo!19239 (ite c!492876 (regTwo!19239 (ite c!492743 (reg!9692 (regOne!19238 r!17423)) (ite c!492741 (regOne!19239 (regOne!19238 r!17423)) (regTwo!19238 (regOne!19238 r!17423))))) (regOne!19238 (ite c!492743 (reg!9692 (regOne!19238 r!17423)) (ite c!492741 (regOne!19239 (regOne!19238 r!17423)) (regTwo!19238 (regOne!19238 r!17423))))))) (regOne!19238 (ite c!492876 (regTwo!19239 (ite c!492743 (reg!9692 (regOne!19238 r!17423)) (ite c!492741 (regOne!19239 (regOne!19238 r!17423)) (regTwo!19238 (regOne!19238 r!17423))))) (regOne!19238 (ite c!492743 (reg!9692 (regOne!19238 r!17423)) (ite c!492741 (regOne!19239 (regOne!19238 r!17423)) (regTwo!19238 (regOne!19238 r!17423))))))))))))

(assert (= (and d!845787 c!493208) b!2997763))

(assert (= (and d!845787 (not c!493208)) b!2997745))

(assert (= (and b!2997745 c!493206) b!2997748))

(assert (= (and b!2997745 (not c!493206)) b!2997767))

(assert (= (and b!2997767 c!493209) b!2997766))

(assert (= (and b!2997767 (not c!493209)) b!2997765))

(assert (= (and b!2997765 c!493202) b!2997761))

(assert (= (and b!2997765 (not c!493202)) b!2997749))

(assert (= (and b!2997761 (not res!1236030)) b!2997762))

(assert (= (and b!2997761 c!493207) b!2997756))

(assert (= (and b!2997761 (not c!493207)) b!2997746))

(assert (= (and b!2997749 c!493200) b!2997758))

(assert (= (and b!2997749 (not c!493200)) b!2997764))

(assert (= (and b!2997758 c!493201) b!2997768))

(assert (= (and b!2997758 (not c!493201)) b!2997752))

(assert (= (and b!2997752 c!493203) b!2997744))

(assert (= (and b!2997752 (not c!493203)) b!2997751))

(assert (= (and b!2997764 (not res!1236029)) b!2997760))

(assert (= (and b!2997764 c!493205) b!2997753))

(assert (= (and b!2997764 (not c!493205)) b!2997747))

(assert (= (and b!2997747 c!493204) b!2997754))

(assert (= (and b!2997747 (not c!493204)) b!2997755))

(assert (= (and b!2997755 c!493210) b!2997757))

(assert (= (and b!2997755 (not c!493210)) b!2997750))

(assert (= (or b!2997758 b!2997764) bm!201152))

(assert (= (or b!2997758 b!2997764) bm!201153))

(assert (= (or b!2997758 b!2997764) bm!201148))

(assert (= (or b!2997752 b!2997760) bm!201149))

(assert (= (or b!2997762 b!2997755) bm!201151))

(assert (= (or b!2997761 bm!201152) bm!201147))

(assert (= (or b!2997761 bm!201149) bm!201150))

(assert (= (and d!845787 res!1236031) b!2997759))

(declare-fun m!3350901 () Bool)

(assert (=> bm!201148 m!3350901))

(declare-fun m!3350903 () Bool)

(assert (=> b!2997759 m!3350903))

(declare-fun m!3350905 () Bool)

(assert (=> b!2997759 m!3350905))

(declare-fun m!3350907 () Bool)

(assert (=> bm!201153 m!3350907))

(declare-fun m!3350909 () Bool)

(assert (=> bm!201147 m!3350909))

(declare-fun m!3350911 () Bool)

(assert (=> bm!201151 m!3350911))

(declare-fun m!3350913 () Bool)

(assert (=> d!845787 m!3350913))

(declare-fun m!3350915 () Bool)

(assert (=> d!845787 m!3350915))

(declare-fun m!3350917 () Bool)

(assert (=> b!2997747 m!3350917))

(declare-fun m!3350919 () Bool)

(assert (=> bm!201150 m!3350919))

(assert (=> bm!200874 d!845787))

(declare-fun b!2997769 () Bool)

(declare-fun e!1883676 () Bool)

(declare-fun call!201161 () Bool)

(assert (=> b!2997769 (= e!1883676 call!201161)))

(declare-fun b!2997770 () Bool)

(declare-fun e!1883674 () Bool)

(declare-fun call!201159 () Bool)

(assert (=> b!2997770 (= e!1883674 call!201159)))

(declare-fun c!493211 () Bool)

(declare-fun c!493212 () Bool)

(declare-fun bm!201154 () Bool)

(assert (=> bm!201154 (= call!201161 (validRegex!4096 (ite c!493212 (reg!9692 lt!1041508) (ite c!493211 (regOne!19239 lt!1041508) (regTwo!19238 lt!1041508)))))))

(declare-fun b!2997772 () Bool)

(declare-fun e!1883677 () Bool)

(declare-fun call!201160 () Bool)

(assert (=> b!2997772 (= e!1883677 call!201160)))

(declare-fun bm!201155 () Bool)

(assert (=> bm!201155 (= call!201160 call!201161)))

(declare-fun b!2997773 () Bool)

(declare-fun e!1883673 () Bool)

(declare-fun e!1883672 () Bool)

(assert (=> b!2997773 (= e!1883673 e!1883672)))

(assert (=> b!2997773 (= c!493211 ((_ is Union!9363) lt!1041508))))

(declare-fun b!2997774 () Bool)

(assert (=> b!2997774 (= e!1883673 e!1883676)))

(declare-fun res!1236035 () Bool)

(assert (=> b!2997774 (= res!1236035 (not (nullable!3026 (reg!9692 lt!1041508))))))

(assert (=> b!2997774 (=> (not res!1236035) (not e!1883676))))

(declare-fun b!2997775 () Bool)

(declare-fun res!1236032 () Bool)

(declare-fun e!1883675 () Bool)

(assert (=> b!2997775 (=> res!1236032 e!1883675)))

(assert (=> b!2997775 (= res!1236032 (not ((_ is Concat!14684) lt!1041508)))))

(assert (=> b!2997775 (= e!1883672 e!1883675)))

(declare-fun b!2997776 () Bool)

(assert (=> b!2997776 (= e!1883675 e!1883677)))

(declare-fun res!1236033 () Bool)

(assert (=> b!2997776 (=> (not res!1236033) (not e!1883677))))

(assert (=> b!2997776 (= res!1236033 call!201159)))

(declare-fun bm!201156 () Bool)

(assert (=> bm!201156 (= call!201159 (validRegex!4096 (ite c!493211 (regTwo!19239 lt!1041508) (regOne!19238 lt!1041508))))))

(declare-fun b!2997777 () Bool)

(declare-fun e!1883678 () Bool)

(assert (=> b!2997777 (= e!1883678 e!1883673)))

(assert (=> b!2997777 (= c!493212 ((_ is Star!9363) lt!1041508))))

(declare-fun d!845789 () Bool)

(declare-fun res!1236034 () Bool)

(assert (=> d!845789 (=> res!1236034 e!1883678)))

(assert (=> d!845789 (= res!1236034 ((_ is ElementMatch!9363) lt!1041508))))

(assert (=> d!845789 (= (validRegex!4096 lt!1041508) e!1883678)))

(declare-fun b!2997771 () Bool)

(declare-fun res!1236036 () Bool)

(assert (=> b!2997771 (=> (not res!1236036) (not e!1883674))))

(assert (=> b!2997771 (= res!1236036 call!201160)))

(assert (=> b!2997771 (= e!1883672 e!1883674)))

(assert (= (and d!845789 (not res!1236034)) b!2997777))

(assert (= (and b!2997777 c!493212) b!2997774))

(assert (= (and b!2997777 (not c!493212)) b!2997773))

(assert (= (and b!2997774 res!1236035) b!2997769))

(assert (= (and b!2997773 c!493211) b!2997771))

(assert (= (and b!2997773 (not c!493211)) b!2997775))

(assert (= (and b!2997771 res!1236036) b!2997770))

(assert (= (and b!2997775 (not res!1236032)) b!2997776))

(assert (= (and b!2997776 res!1236033) b!2997772))

(assert (= (or b!2997771 b!2997772) bm!201155))

(assert (= (or b!2997770 b!2997776) bm!201156))

(assert (= (or b!2997769 bm!201155) bm!201154))

(declare-fun m!3350921 () Bool)

(assert (=> bm!201154 m!3350921))

(declare-fun m!3350923 () Bool)

(assert (=> b!2997774 m!3350923))

(declare-fun m!3350925 () Bool)

(assert (=> bm!201156 m!3350925))

(assert (=> d!845507 d!845789))

(assert (=> d!845507 d!845543))

(declare-fun b!2997778 () Bool)

(declare-fun e!1883681 () Bool)

(declare-fun e!1883682 () Bool)

(assert (=> b!2997778 (= e!1883681 e!1883682)))

(declare-fun res!1236040 () Bool)

(declare-fun call!201162 () Bool)

(assert (=> b!2997778 (= res!1236040 call!201162)))

(assert (=> b!2997778 (=> res!1236040 e!1883682)))

(declare-fun b!2997779 () Bool)

(declare-fun e!1883683 () Bool)

(assert (=> b!2997779 (= e!1883681 e!1883683)))

(declare-fun res!1236037 () Bool)

(assert (=> b!2997779 (= res!1236037 call!201162)))

(assert (=> b!2997779 (=> (not res!1236037) (not e!1883683))))

(declare-fun bm!201157 () Bool)

(declare-fun call!201163 () Bool)

(declare-fun c!493213 () Bool)

(assert (=> bm!201157 (= call!201163 (nullable!3026 (ite c!493213 (regTwo!19239 r!17423) (regTwo!19238 r!17423))))))

(declare-fun b!2997780 () Bool)

(declare-fun e!1883680 () Bool)

(declare-fun e!1883684 () Bool)

(assert (=> b!2997780 (= e!1883680 e!1883684)))

(declare-fun res!1236039 () Bool)

(assert (=> b!2997780 (=> res!1236039 e!1883684)))

(assert (=> b!2997780 (= res!1236039 ((_ is Star!9363) r!17423))))

(declare-fun b!2997781 () Bool)

(assert (=> b!2997781 (= e!1883682 call!201163)))

(declare-fun d!845791 () Bool)

(declare-fun res!1236038 () Bool)

(declare-fun e!1883679 () Bool)

(assert (=> d!845791 (=> res!1236038 e!1883679)))

(assert (=> d!845791 (= res!1236038 ((_ is EmptyExpr!9363) r!17423))))

(assert (=> d!845791 (= (nullableFct!860 r!17423) e!1883679)))

(declare-fun bm!201158 () Bool)

(assert (=> bm!201158 (= call!201162 (nullable!3026 (ite c!493213 (regOne!19239 r!17423) (regOne!19238 r!17423))))))

(declare-fun b!2997782 () Bool)

(assert (=> b!2997782 (= e!1883684 e!1883681)))

(assert (=> b!2997782 (= c!493213 ((_ is Union!9363) r!17423))))

(declare-fun b!2997783 () Bool)

(assert (=> b!2997783 (= e!1883679 e!1883680)))

(declare-fun res!1236041 () Bool)

(assert (=> b!2997783 (=> (not res!1236041) (not e!1883680))))

(assert (=> b!2997783 (= res!1236041 (and (not ((_ is EmptyLang!9363) r!17423)) (not ((_ is ElementMatch!9363) r!17423))))))

(declare-fun b!2997784 () Bool)

(assert (=> b!2997784 (= e!1883683 call!201163)))

(assert (= (and d!845791 (not res!1236038)) b!2997783))

(assert (= (and b!2997783 res!1236041) b!2997780))

(assert (= (and b!2997780 (not res!1236039)) b!2997782))

(assert (= (and b!2997782 c!493213) b!2997778))

(assert (= (and b!2997782 (not c!493213)) b!2997779))

(assert (= (and b!2997778 (not res!1236040)) b!2997781))

(assert (= (and b!2997779 res!1236037) b!2997784))

(assert (= (or b!2997781 b!2997784) bm!201157))

(assert (= (or b!2997778 b!2997779) bm!201158))

(declare-fun m!3350927 () Bool)

(assert (=> bm!201157 m!3350927))

(declare-fun m!3350929 () Bool)

(assert (=> bm!201158 m!3350929))

(assert (=> d!845565 d!845791))

(assert (=> bm!200875 d!845497))

(declare-fun b!2997785 () Bool)

(declare-fun e!1883689 () Bool)

(declare-fun call!201166 () Bool)

(assert (=> b!2997785 (= e!1883689 call!201166)))

(declare-fun b!2997786 () Bool)

(declare-fun e!1883687 () Bool)

(declare-fun call!201164 () Bool)

(assert (=> b!2997786 (= e!1883687 call!201164)))

(declare-fun c!493214 () Bool)

(declare-fun c!493215 () Bool)

(declare-fun bm!201159 () Bool)

(assert (=> bm!201159 (= call!201166 (validRegex!4096 (ite c!493215 (reg!9692 (ite c!492954 (reg!9692 (ite c!492692 (regTwo!19239 r!17423) (regOne!19238 r!17423))) (ite c!492953 (regOne!19239 (ite c!492692 (regTwo!19239 r!17423) (regOne!19238 r!17423))) (regTwo!19238 (ite c!492692 (regTwo!19239 r!17423) (regOne!19238 r!17423)))))) (ite c!493214 (regOne!19239 (ite c!492954 (reg!9692 (ite c!492692 (regTwo!19239 r!17423) (regOne!19238 r!17423))) (ite c!492953 (regOne!19239 (ite c!492692 (regTwo!19239 r!17423) (regOne!19238 r!17423))) (regTwo!19238 (ite c!492692 (regTwo!19239 r!17423) (regOne!19238 r!17423)))))) (regTwo!19238 (ite c!492954 (reg!9692 (ite c!492692 (regTwo!19239 r!17423) (regOne!19238 r!17423))) (ite c!492953 (regOne!19239 (ite c!492692 (regTwo!19239 r!17423) (regOne!19238 r!17423))) (regTwo!19238 (ite c!492692 (regTwo!19239 r!17423) (regOne!19238 r!17423))))))))))))

(declare-fun b!2997788 () Bool)

(declare-fun e!1883690 () Bool)

(declare-fun call!201165 () Bool)

(assert (=> b!2997788 (= e!1883690 call!201165)))

(declare-fun bm!201160 () Bool)

(assert (=> bm!201160 (= call!201165 call!201166)))

(declare-fun b!2997789 () Bool)

(declare-fun e!1883686 () Bool)

(declare-fun e!1883685 () Bool)

(assert (=> b!2997789 (= e!1883686 e!1883685)))

(assert (=> b!2997789 (= c!493214 ((_ is Union!9363) (ite c!492954 (reg!9692 (ite c!492692 (regTwo!19239 r!17423) (regOne!19238 r!17423))) (ite c!492953 (regOne!19239 (ite c!492692 (regTwo!19239 r!17423) (regOne!19238 r!17423))) (regTwo!19238 (ite c!492692 (regTwo!19239 r!17423) (regOne!19238 r!17423)))))))))

(declare-fun b!2997790 () Bool)

(assert (=> b!2997790 (= e!1883686 e!1883689)))

(declare-fun res!1236045 () Bool)

(assert (=> b!2997790 (= res!1236045 (not (nullable!3026 (reg!9692 (ite c!492954 (reg!9692 (ite c!492692 (regTwo!19239 r!17423) (regOne!19238 r!17423))) (ite c!492953 (regOne!19239 (ite c!492692 (regTwo!19239 r!17423) (regOne!19238 r!17423))) (regTwo!19238 (ite c!492692 (regTwo!19239 r!17423) (regOne!19238 r!17423)))))))))))

(assert (=> b!2997790 (=> (not res!1236045) (not e!1883689))))

(declare-fun b!2997791 () Bool)

(declare-fun res!1236042 () Bool)

(declare-fun e!1883688 () Bool)

(assert (=> b!2997791 (=> res!1236042 e!1883688)))

(assert (=> b!2997791 (= res!1236042 (not ((_ is Concat!14684) (ite c!492954 (reg!9692 (ite c!492692 (regTwo!19239 r!17423) (regOne!19238 r!17423))) (ite c!492953 (regOne!19239 (ite c!492692 (regTwo!19239 r!17423) (regOne!19238 r!17423))) (regTwo!19238 (ite c!492692 (regTwo!19239 r!17423) (regOne!19238 r!17423))))))))))

(assert (=> b!2997791 (= e!1883685 e!1883688)))

(declare-fun b!2997792 () Bool)

(assert (=> b!2997792 (= e!1883688 e!1883690)))

(declare-fun res!1236043 () Bool)

(assert (=> b!2997792 (=> (not res!1236043) (not e!1883690))))

(assert (=> b!2997792 (= res!1236043 call!201164)))

(declare-fun bm!201161 () Bool)

(assert (=> bm!201161 (= call!201164 (validRegex!4096 (ite c!493214 (regTwo!19239 (ite c!492954 (reg!9692 (ite c!492692 (regTwo!19239 r!17423) (regOne!19238 r!17423))) (ite c!492953 (regOne!19239 (ite c!492692 (regTwo!19239 r!17423) (regOne!19238 r!17423))) (regTwo!19238 (ite c!492692 (regTwo!19239 r!17423) (regOne!19238 r!17423)))))) (regOne!19238 (ite c!492954 (reg!9692 (ite c!492692 (regTwo!19239 r!17423) (regOne!19238 r!17423))) (ite c!492953 (regOne!19239 (ite c!492692 (regTwo!19239 r!17423) (regOne!19238 r!17423))) (regTwo!19238 (ite c!492692 (regTwo!19239 r!17423) (regOne!19238 r!17423)))))))))))

(declare-fun b!2997793 () Bool)

(declare-fun e!1883691 () Bool)

(assert (=> b!2997793 (= e!1883691 e!1883686)))

(assert (=> b!2997793 (= c!493215 ((_ is Star!9363) (ite c!492954 (reg!9692 (ite c!492692 (regTwo!19239 r!17423) (regOne!19238 r!17423))) (ite c!492953 (regOne!19239 (ite c!492692 (regTwo!19239 r!17423) (regOne!19238 r!17423))) (regTwo!19238 (ite c!492692 (regTwo!19239 r!17423) (regOne!19238 r!17423)))))))))

(declare-fun d!845793 () Bool)

(declare-fun res!1236044 () Bool)

(assert (=> d!845793 (=> res!1236044 e!1883691)))

(assert (=> d!845793 (= res!1236044 ((_ is ElementMatch!9363) (ite c!492954 (reg!9692 (ite c!492692 (regTwo!19239 r!17423) (regOne!19238 r!17423))) (ite c!492953 (regOne!19239 (ite c!492692 (regTwo!19239 r!17423) (regOne!19238 r!17423))) (regTwo!19238 (ite c!492692 (regTwo!19239 r!17423) (regOne!19238 r!17423)))))))))

(assert (=> d!845793 (= (validRegex!4096 (ite c!492954 (reg!9692 (ite c!492692 (regTwo!19239 r!17423) (regOne!19238 r!17423))) (ite c!492953 (regOne!19239 (ite c!492692 (regTwo!19239 r!17423) (regOne!19238 r!17423))) (regTwo!19238 (ite c!492692 (regTwo!19239 r!17423) (regOne!19238 r!17423)))))) e!1883691)))

(declare-fun b!2997787 () Bool)

(declare-fun res!1236046 () Bool)

(assert (=> b!2997787 (=> (not res!1236046) (not e!1883687))))

(assert (=> b!2997787 (= res!1236046 call!201165)))

(assert (=> b!2997787 (= e!1883685 e!1883687)))

(assert (= (and d!845793 (not res!1236044)) b!2997793))

(assert (= (and b!2997793 c!493215) b!2997790))

(assert (= (and b!2997793 (not c!493215)) b!2997789))

(assert (= (and b!2997790 res!1236045) b!2997785))

(assert (= (and b!2997789 c!493214) b!2997787))

(assert (= (and b!2997789 (not c!493214)) b!2997791))

(assert (= (and b!2997787 res!1236046) b!2997786))

(assert (= (and b!2997791 (not res!1236042)) b!2997792))

(assert (= (and b!2997792 res!1236043) b!2997788))

(assert (= (or b!2997787 b!2997788) bm!201160))

(assert (= (or b!2997786 b!2997792) bm!201161))

(assert (= (or b!2997785 bm!201160) bm!201159))

(declare-fun m!3350931 () Bool)

(assert (=> bm!201159 m!3350931))

(declare-fun m!3350933 () Bool)

(assert (=> b!2997790 m!3350933))

(declare-fun m!3350935 () Bool)

(assert (=> bm!201161 m!3350935))

(assert (=> bm!200927 d!845793))

(declare-fun d!845795 () Bool)

(assert (=> d!845795 (= (nullable!3026 (reg!9692 (ite c!492693 (reg!9692 r!17423) (ite c!492692 (regOne!19239 r!17423) (regTwo!19238 r!17423))))) (nullableFct!860 (reg!9692 (ite c!492693 (reg!9692 r!17423) (ite c!492692 (regOne!19239 r!17423) (regTwo!19238 r!17423))))))))

(declare-fun bs!528179 () Bool)

(assert (= bs!528179 d!845795))

(declare-fun m!3350937 () Bool)

(assert (=> bs!528179 m!3350937))

(assert (=> b!2996733 d!845795))

(assert (=> d!845513 d!845469))

(assert (=> d!845513 d!845449))

(declare-fun d!845797 () Bool)

(assert (=> d!845797 (= (isEmptyLang!453 (ite c!492860 lt!1041496 (ite c!492858 lt!1041500 lt!1041498))) ((_ is EmptyLang!9363) (ite c!492860 lt!1041496 (ite c!492858 lt!1041500 lt!1041498))))))

(assert (=> bm!200856 d!845797))

(declare-fun d!845799 () Bool)

(assert (=> d!845799 true))

(assert (=> d!845799 true))

(declare-fun res!1236049 () Bool)

(assert (=> d!845799 (= (choose!17787 (ite c!492831 lambda!112041 lambda!112042)) res!1236049)))

(assert (=> d!845491 d!845799))

(declare-fun b!2997794 () Bool)

(declare-fun e!1883699 () Regex!9363)

(declare-fun lt!1041604 () Regex!9363)

(assert (=> b!2997794 (= e!1883699 lt!1041604)))

(declare-fun c!493216 () Bool)

(declare-fun bm!201162 () Bool)

(declare-fun call!201168 () Regex!9363)

(declare-fun c!493218 () Bool)

(assert (=> bm!201162 (= call!201168 (simplify!354 (ite c!493218 (reg!9692 (ite c!492942 (regTwo!19239 (ite c!492732 (reg!9692 (regTwo!19238 r!17423)) (ite c!492730 (regOne!19239 (regTwo!19238 r!17423)) (regTwo!19238 (regTwo!19238 r!17423))))) (regOne!19238 (ite c!492732 (reg!9692 (regTwo!19238 r!17423)) (ite c!492730 (regOne!19239 (regTwo!19238 r!17423)) (regTwo!19238 (regTwo!19238 r!17423))))))) (ite c!493216 (regOne!19239 (ite c!492942 (regTwo!19239 (ite c!492732 (reg!9692 (regTwo!19238 r!17423)) (ite c!492730 (regOne!19239 (regTwo!19238 r!17423)) (regTwo!19238 (regTwo!19238 r!17423))))) (regOne!19238 (ite c!492732 (reg!9692 (regTwo!19238 r!17423)) (ite c!492730 (regOne!19239 (regTwo!19238 r!17423)) (regTwo!19238 (regTwo!19238 r!17423))))))) (regTwo!19238 (ite c!492942 (regTwo!19239 (ite c!492732 (reg!9692 (regTwo!19238 r!17423)) (ite c!492730 (regOne!19239 (regTwo!19238 r!17423)) (regTwo!19238 (regTwo!19238 r!17423))))) (regOne!19238 (ite c!492732 (reg!9692 (regTwo!19238 r!17423)) (ite c!492730 (regOne!19239 (regTwo!19238 r!17423)) (regTwo!19238 (regTwo!19238 r!17423)))))))))))))

(declare-fun b!2997796 () Bool)

(declare-fun e!1883700 () Regex!9363)

(declare-fun lt!1041603 () Regex!9363)

(assert (=> b!2997796 (= e!1883700 (Star!9363 lt!1041603))))

(declare-fun b!2997797 () Bool)

(declare-fun c!493220 () Bool)

(declare-fun lt!1041602 () Regex!9363)

(assert (=> b!2997797 (= c!493220 (isEmptyExpr!470 lt!1041602))))

(declare-fun e!1883697 () Regex!9363)

(declare-fun e!1883701 () Regex!9363)

(assert (=> b!2997797 (= e!1883697 e!1883701)))

(declare-fun e!1883693 () Regex!9363)

(declare-fun b!2997798 () Bool)

(assert (=> b!2997798 (= e!1883693 (ite c!492942 (regTwo!19239 (ite c!492732 (reg!9692 (regTwo!19238 r!17423)) (ite c!492730 (regOne!19239 (regTwo!19238 r!17423)) (regTwo!19238 (regTwo!19238 r!17423))))) (regOne!19238 (ite c!492732 (reg!9692 (regTwo!19238 r!17423)) (ite c!492730 (regOne!19239 (regTwo!19238 r!17423)) (regTwo!19238 (regTwo!19238 r!17423)))))))))

(declare-fun bm!201163 () Bool)

(declare-fun call!201170 () Bool)

(assert (=> bm!201163 (= call!201170 (isEmptyLang!453 (ite c!493216 lt!1041604 lt!1041602)))))

(declare-fun bm!201164 () Bool)

(declare-fun call!201173 () Bool)

(declare-fun call!201169 () Bool)

(assert (=> bm!201164 (= call!201173 call!201169)))

(declare-fun lt!1041607 () Regex!9363)

(declare-fun lt!1041605 () Regex!9363)

(declare-fun bm!201165 () Bool)

(assert (=> bm!201165 (= call!201169 (isEmptyLang!453 (ite c!493218 lt!1041603 (ite c!493216 lt!1041607 lt!1041605))))))

(declare-fun b!2997799 () Bool)

(assert (=> b!2997799 (= c!493216 ((_ is Union!9363) (ite c!492942 (regTwo!19239 (ite c!492732 (reg!9692 (regTwo!19238 r!17423)) (ite c!492730 (regOne!19239 (regTwo!19238 r!17423)) (regTwo!19238 (regTwo!19238 r!17423))))) (regOne!19238 (ite c!492732 (reg!9692 (regTwo!19238 r!17423)) (ite c!492730 (regOne!19239 (regTwo!19238 r!17423)) (regTwo!19238 (regTwo!19238 r!17423))))))))))

(declare-fun e!1883704 () Regex!9363)

(declare-fun e!1883692 () Regex!9363)

(assert (=> b!2997799 (= e!1883704 e!1883692)))

(declare-fun b!2997800 () Bool)

(declare-fun e!1883696 () Regex!9363)

(assert (=> b!2997800 (= e!1883696 (Concat!14684 lt!1041602 lt!1041605))))

(declare-fun b!2997801 () Bool)

(assert (=> b!2997801 (= e!1883699 (Union!9363 lt!1041604 lt!1041607))))

(declare-fun b!2997802 () Bool)

(declare-fun c!493219 () Bool)

(assert (=> b!2997802 (= c!493219 call!201173)))

(declare-fun e!1883705 () Regex!9363)

(assert (=> b!2997802 (= e!1883705 e!1883699)))

(declare-fun b!2997803 () Bool)

(assert (=> b!2997803 (= e!1883697 EmptyLang!9363)))

(declare-fun b!2997804 () Bool)

(assert (=> b!2997804 (= e!1883701 lt!1041605)))

(declare-fun b!2997805 () Bool)

(assert (=> b!2997805 (= e!1883701 e!1883696)))

(declare-fun c!493226 () Bool)

(declare-fun call!201167 () Bool)

(assert (=> b!2997805 (= c!493226 call!201167)))

(declare-fun b!2997806 () Bool)

(assert (=> b!2997806 (= e!1883700 EmptyExpr!9363)))

(declare-fun b!2997807 () Bool)

(assert (=> b!2997807 (= e!1883696 lt!1041602)))

(declare-fun b!2997808 () Bool)

(assert (=> b!2997808 (= e!1883692 e!1883705)))

(declare-fun call!201171 () Regex!9363)

(assert (=> b!2997808 (= lt!1041604 call!201171)))

(declare-fun call!201172 () Regex!9363)

(assert (=> b!2997808 (= lt!1041607 call!201172)))

(declare-fun c!493217 () Bool)

(assert (=> b!2997808 (= c!493217 call!201170)))

(declare-fun bm!201166 () Bool)

(assert (=> bm!201166 (= call!201167 (isEmptyExpr!470 (ite c!493218 lt!1041603 lt!1041605)))))

(declare-fun b!2997809 () Bool)

(declare-fun e!1883703 () Bool)

(declare-fun lt!1041606 () Regex!9363)

(assert (=> b!2997809 (= e!1883703 (= (nullable!3026 lt!1041606) (nullable!3026 (ite c!492942 (regTwo!19239 (ite c!492732 (reg!9692 (regTwo!19238 r!17423)) (ite c!492730 (regOne!19239 (regTwo!19238 r!17423)) (regTwo!19238 (regTwo!19238 r!17423))))) (regOne!19238 (ite c!492732 (reg!9692 (regTwo!19238 r!17423)) (ite c!492730 (regOne!19239 (regTwo!19238 r!17423)) (regTwo!19238 (regTwo!19238 r!17423)))))))))))

(declare-fun b!2997795 () Bool)

(declare-fun e!1883694 () Regex!9363)

(assert (=> b!2997795 (= e!1883694 e!1883693)))

(declare-fun c!493222 () Bool)

(assert (=> b!2997795 (= c!493222 ((_ is ElementMatch!9363) (ite c!492942 (regTwo!19239 (ite c!492732 (reg!9692 (regTwo!19238 r!17423)) (ite c!492730 (regOne!19239 (regTwo!19238 r!17423)) (regTwo!19238 (regTwo!19238 r!17423))))) (regOne!19238 (ite c!492732 (reg!9692 (regTwo!19238 r!17423)) (ite c!492730 (regOne!19239 (regTwo!19238 r!17423)) (regTwo!19238 (regTwo!19238 r!17423))))))))))

(declare-fun d!845801 () Bool)

(assert (=> d!845801 e!1883703))

(declare-fun res!1236052 () Bool)

(assert (=> d!845801 (=> (not res!1236052) (not e!1883703))))

(assert (=> d!845801 (= res!1236052 (validRegex!4096 lt!1041606))))

(assert (=> d!845801 (= lt!1041606 e!1883694)))

(declare-fun c!493224 () Bool)

(assert (=> d!845801 (= c!493224 ((_ is EmptyLang!9363) (ite c!492942 (regTwo!19239 (ite c!492732 (reg!9692 (regTwo!19238 r!17423)) (ite c!492730 (regOne!19239 (regTwo!19238 r!17423)) (regTwo!19238 (regTwo!19238 r!17423))))) (regOne!19238 (ite c!492732 (reg!9692 (regTwo!19238 r!17423)) (ite c!492730 (regOne!19239 (regTwo!19238 r!17423)) (regTwo!19238 (regTwo!19238 r!17423))))))))))

(assert (=> d!845801 (validRegex!4096 (ite c!492942 (regTwo!19239 (ite c!492732 (reg!9692 (regTwo!19238 r!17423)) (ite c!492730 (regOne!19239 (regTwo!19238 r!17423)) (regTwo!19238 (regTwo!19238 r!17423))))) (regOne!19238 (ite c!492732 (reg!9692 (regTwo!19238 r!17423)) (ite c!492730 (regOne!19239 (regTwo!19238 r!17423)) (regTwo!19238 (regTwo!19238 r!17423)))))))))

(assert (=> d!845801 (= (simplify!354 (ite c!492942 (regTwo!19239 (ite c!492732 (reg!9692 (regTwo!19238 r!17423)) (ite c!492730 (regOne!19239 (regTwo!19238 r!17423)) (regTwo!19238 (regTwo!19238 r!17423))))) (regOne!19238 (ite c!492732 (reg!9692 (regTwo!19238 r!17423)) (ite c!492730 (regOne!19239 (regTwo!19238 r!17423)) (regTwo!19238 (regTwo!19238 r!17423))))))) lt!1041606)))

(declare-fun b!2997810 () Bool)

(declare-fun e!1883702 () Bool)

(assert (=> b!2997810 (= e!1883702 call!201173)))

(declare-fun bm!201167 () Bool)

(assert (=> bm!201167 (= call!201171 call!201168)))

(declare-fun b!2997811 () Bool)

(declare-fun c!493223 () Bool)

(declare-fun e!1883695 () Bool)

(assert (=> b!2997811 (= c!493223 e!1883695)))

(declare-fun res!1236051 () Bool)

(assert (=> b!2997811 (=> res!1236051 e!1883695)))

(assert (=> b!2997811 (= res!1236051 call!201169)))

(assert (=> b!2997811 (= lt!1041603 call!201168)))

(assert (=> b!2997811 (= e!1883704 e!1883700)))

(declare-fun b!2997812 () Bool)

(assert (=> b!2997812 (= e!1883695 call!201167)))

(declare-fun b!2997813 () Bool)

(assert (=> b!2997813 (= e!1883694 EmptyLang!9363)))

(declare-fun b!2997814 () Bool)

(assert (=> b!2997814 (= e!1883692 e!1883697)))

(assert (=> b!2997814 (= lt!1041602 call!201172)))

(assert (=> b!2997814 (= lt!1041605 call!201171)))

(declare-fun res!1236050 () Bool)

(assert (=> b!2997814 (= res!1236050 call!201170)))

(assert (=> b!2997814 (=> res!1236050 e!1883702)))

(declare-fun c!493221 () Bool)

(assert (=> b!2997814 (= c!493221 e!1883702)))

(declare-fun b!2997815 () Bool)

(declare-fun e!1883698 () Regex!9363)

(assert (=> b!2997815 (= e!1883698 e!1883704)))

(assert (=> b!2997815 (= c!493218 ((_ is Star!9363) (ite c!492942 (regTwo!19239 (ite c!492732 (reg!9692 (regTwo!19238 r!17423)) (ite c!492730 (regOne!19239 (regTwo!19238 r!17423)) (regTwo!19238 (regTwo!19238 r!17423))))) (regOne!19238 (ite c!492732 (reg!9692 (regTwo!19238 r!17423)) (ite c!492730 (regOne!19239 (regTwo!19238 r!17423)) (regTwo!19238 (regTwo!19238 r!17423))))))))))

(declare-fun b!2997816 () Bool)

(assert (=> b!2997816 (= e!1883698 EmptyExpr!9363)))

(declare-fun c!493225 () Bool)

(declare-fun b!2997817 () Bool)

(assert (=> b!2997817 (= c!493225 ((_ is EmptyExpr!9363) (ite c!492942 (regTwo!19239 (ite c!492732 (reg!9692 (regTwo!19238 r!17423)) (ite c!492730 (regOne!19239 (regTwo!19238 r!17423)) (regTwo!19238 (regTwo!19238 r!17423))))) (regOne!19238 (ite c!492732 (reg!9692 (regTwo!19238 r!17423)) (ite c!492730 (regOne!19239 (regTwo!19238 r!17423)) (regTwo!19238 (regTwo!19238 r!17423))))))))))

(assert (=> b!2997817 (= e!1883693 e!1883698)))

(declare-fun b!2997818 () Bool)

(assert (=> b!2997818 (= e!1883705 lt!1041607)))

(declare-fun bm!201168 () Bool)

(assert (=> bm!201168 (= call!201172 (simplify!354 (ite c!493216 (regTwo!19239 (ite c!492942 (regTwo!19239 (ite c!492732 (reg!9692 (regTwo!19238 r!17423)) (ite c!492730 (regOne!19239 (regTwo!19238 r!17423)) (regTwo!19238 (regTwo!19238 r!17423))))) (regOne!19238 (ite c!492732 (reg!9692 (regTwo!19238 r!17423)) (ite c!492730 (regOne!19239 (regTwo!19238 r!17423)) (regTwo!19238 (regTwo!19238 r!17423))))))) (regOne!19238 (ite c!492942 (regTwo!19239 (ite c!492732 (reg!9692 (regTwo!19238 r!17423)) (ite c!492730 (regOne!19239 (regTwo!19238 r!17423)) (regTwo!19238 (regTwo!19238 r!17423))))) (regOne!19238 (ite c!492732 (reg!9692 (regTwo!19238 r!17423)) (ite c!492730 (regOne!19239 (regTwo!19238 r!17423)) (regTwo!19238 (regTwo!19238 r!17423))))))))))))

(assert (= (and d!845801 c!493224) b!2997813))

(assert (= (and d!845801 (not c!493224)) b!2997795))

(assert (= (and b!2997795 c!493222) b!2997798))

(assert (= (and b!2997795 (not c!493222)) b!2997817))

(assert (= (and b!2997817 c!493225) b!2997816))

(assert (= (and b!2997817 (not c!493225)) b!2997815))

(assert (= (and b!2997815 c!493218) b!2997811))

(assert (= (and b!2997815 (not c!493218)) b!2997799))

(assert (= (and b!2997811 (not res!1236051)) b!2997812))

(assert (= (and b!2997811 c!493223) b!2997806))

(assert (= (and b!2997811 (not c!493223)) b!2997796))

(assert (= (and b!2997799 c!493216) b!2997808))

(assert (= (and b!2997799 (not c!493216)) b!2997814))

(assert (= (and b!2997808 c!493217) b!2997818))

(assert (= (and b!2997808 (not c!493217)) b!2997802))

(assert (= (and b!2997802 c!493219) b!2997794))

(assert (= (and b!2997802 (not c!493219)) b!2997801))

(assert (= (and b!2997814 (not res!1236050)) b!2997810))

(assert (= (and b!2997814 c!493221) b!2997803))

(assert (= (and b!2997814 (not c!493221)) b!2997797))

(assert (= (and b!2997797 c!493220) b!2997804))

(assert (= (and b!2997797 (not c!493220)) b!2997805))

(assert (= (and b!2997805 c!493226) b!2997807))

(assert (= (and b!2997805 (not c!493226)) b!2997800))

(assert (= (or b!2997808 b!2997814) bm!201167))

(assert (= (or b!2997808 b!2997814) bm!201168))

(assert (= (or b!2997808 b!2997814) bm!201163))

(assert (= (or b!2997802 b!2997810) bm!201164))

(assert (= (or b!2997812 b!2997805) bm!201166))

(assert (= (or b!2997811 bm!201167) bm!201162))

(assert (= (or b!2997811 bm!201164) bm!201165))

(assert (= (and d!845801 res!1236052) b!2997809))

(declare-fun m!3350939 () Bool)

(assert (=> bm!201163 m!3350939))

(declare-fun m!3350941 () Bool)

(assert (=> b!2997809 m!3350941))

(declare-fun m!3350943 () Bool)

(assert (=> b!2997809 m!3350943))

(declare-fun m!3350945 () Bool)

(assert (=> bm!201168 m!3350945))

(declare-fun m!3350947 () Bool)

(assert (=> bm!201162 m!3350947))

(declare-fun m!3350949 () Bool)

(assert (=> bm!201166 m!3350949))

(declare-fun m!3350951 () Bool)

(assert (=> d!845801 m!3350951))

(declare-fun m!3350953 () Bool)

(assert (=> d!845801 m!3350953))

(declare-fun m!3350955 () Bool)

(assert (=> b!2997797 m!3350955))

(declare-fun m!3350957 () Bool)

(assert (=> bm!201165 m!3350957))

(assert (=> bm!200926 d!845801))

(assert (=> b!2996571 d!845665))

(assert (=> b!2996571 d!845647))

(assert (=> d!845501 d!845497))

(declare-fun b!2997819 () Bool)

(declare-fun e!1883710 () Bool)

(declare-fun call!201176 () Bool)

(assert (=> b!2997819 (= e!1883710 call!201176)))

(declare-fun b!2997820 () Bool)

(declare-fun e!1883708 () Bool)

(declare-fun call!201174 () Bool)

(assert (=> b!2997820 (= e!1883708 call!201174)))

(declare-fun c!493228 () Bool)

(declare-fun c!493227 () Bool)

(declare-fun bm!201169 () Bool)

(assert (=> bm!201169 (= call!201176 (validRegex!4096 (ite c!493228 (reg!9692 (derivativeStep!2624 (regTwo!19238 r!17423) (head!6683 s!11993))) (ite c!493227 (regOne!19239 (derivativeStep!2624 (regTwo!19238 r!17423) (head!6683 s!11993))) (regTwo!19238 (derivativeStep!2624 (regTwo!19238 r!17423) (head!6683 s!11993)))))))))

(declare-fun b!2997822 () Bool)

(declare-fun e!1883711 () Bool)

(declare-fun call!201175 () Bool)

(assert (=> b!2997822 (= e!1883711 call!201175)))

(declare-fun bm!201170 () Bool)

(assert (=> bm!201170 (= call!201175 call!201176)))

(declare-fun b!2997823 () Bool)

(declare-fun e!1883707 () Bool)

(declare-fun e!1883706 () Bool)

(assert (=> b!2997823 (= e!1883707 e!1883706)))

(assert (=> b!2997823 (= c!493227 ((_ is Union!9363) (derivativeStep!2624 (regTwo!19238 r!17423) (head!6683 s!11993))))))

(declare-fun b!2997824 () Bool)

(assert (=> b!2997824 (= e!1883707 e!1883710)))

(declare-fun res!1236056 () Bool)

(assert (=> b!2997824 (= res!1236056 (not (nullable!3026 (reg!9692 (derivativeStep!2624 (regTwo!19238 r!17423) (head!6683 s!11993))))))))

(assert (=> b!2997824 (=> (not res!1236056) (not e!1883710))))

(declare-fun b!2997825 () Bool)

(declare-fun res!1236053 () Bool)

(declare-fun e!1883709 () Bool)

(assert (=> b!2997825 (=> res!1236053 e!1883709)))

(assert (=> b!2997825 (= res!1236053 (not ((_ is Concat!14684) (derivativeStep!2624 (regTwo!19238 r!17423) (head!6683 s!11993)))))))

(assert (=> b!2997825 (= e!1883706 e!1883709)))

(declare-fun b!2997826 () Bool)

(assert (=> b!2997826 (= e!1883709 e!1883711)))

(declare-fun res!1236054 () Bool)

(assert (=> b!2997826 (=> (not res!1236054) (not e!1883711))))

(assert (=> b!2997826 (= res!1236054 call!201174)))

(declare-fun bm!201171 () Bool)

(assert (=> bm!201171 (= call!201174 (validRegex!4096 (ite c!493227 (regTwo!19239 (derivativeStep!2624 (regTwo!19238 r!17423) (head!6683 s!11993))) (regOne!19238 (derivativeStep!2624 (regTwo!19238 r!17423) (head!6683 s!11993))))))))

(declare-fun b!2997827 () Bool)

(declare-fun e!1883712 () Bool)

(assert (=> b!2997827 (= e!1883712 e!1883707)))

(assert (=> b!2997827 (= c!493228 ((_ is Star!9363) (derivativeStep!2624 (regTwo!19238 r!17423) (head!6683 s!11993))))))

(declare-fun d!845803 () Bool)

(declare-fun res!1236055 () Bool)

(assert (=> d!845803 (=> res!1236055 e!1883712)))

(assert (=> d!845803 (= res!1236055 ((_ is ElementMatch!9363) (derivativeStep!2624 (regTwo!19238 r!17423) (head!6683 s!11993))))))

(assert (=> d!845803 (= (validRegex!4096 (derivativeStep!2624 (regTwo!19238 r!17423) (head!6683 s!11993))) e!1883712)))

(declare-fun b!2997821 () Bool)

(declare-fun res!1236057 () Bool)

(assert (=> b!2997821 (=> (not res!1236057) (not e!1883708))))

(assert (=> b!2997821 (= res!1236057 call!201175)))

(assert (=> b!2997821 (= e!1883706 e!1883708)))

(assert (= (and d!845803 (not res!1236055)) b!2997827))

(assert (= (and b!2997827 c!493228) b!2997824))

(assert (= (and b!2997827 (not c!493228)) b!2997823))

(assert (= (and b!2997824 res!1236056) b!2997819))

(assert (= (and b!2997823 c!493227) b!2997821))

(assert (= (and b!2997823 (not c!493227)) b!2997825))

(assert (= (and b!2997821 res!1236057) b!2997820))

(assert (= (and b!2997825 (not res!1236053)) b!2997826))

(assert (= (and b!2997826 res!1236054) b!2997822))

(assert (= (or b!2997821 b!2997822) bm!201170))

(assert (= (or b!2997820 b!2997826) bm!201171))

(assert (= (or b!2997819 bm!201170) bm!201169))

(declare-fun m!3350959 () Bool)

(assert (=> bm!201169 m!3350959))

(declare-fun m!3350961 () Bool)

(assert (=> b!2997824 m!3350961))

(declare-fun m!3350963 () Bool)

(assert (=> bm!201171 m!3350963))

(assert (=> d!845501 d!845803))

(assert (=> b!2996633 d!845423))

(declare-fun d!845805 () Bool)

(assert (=> d!845805 (= (nullable!3026 (reg!9692 lt!1041450)) (nullableFct!860 (reg!9692 lt!1041450)))))

(declare-fun bs!528180 () Bool)

(assert (= bs!528180 d!845805))

(declare-fun m!3350965 () Bool)

(assert (=> bs!528180 m!3350965))

(assert (=> b!2996647 d!845805))

(declare-fun bs!528181 () Bool)

(declare-fun b!2997835 () Bool)

(assert (= bs!528181 (and b!2997835 b!2996377)))

(declare-fun lambda!112055 () Int)

(assert (=> bs!528181 (= (and (= (reg!9692 (regTwo!19239 (regTwo!19239 r!17423))) (reg!9692 r!17423)) (= (regTwo!19239 (regTwo!19239 r!17423)) r!17423)) (= lambda!112055 lambda!112041))))

(declare-fun bs!528182 () Bool)

(assert (= bs!528182 (and b!2997835 b!2996437)))

(assert (=> bs!528182 (not (= lambda!112055 lambda!112044))))

(declare-fun bs!528183 () Bool)

(assert (= bs!528183 (and b!2997835 b!2996373)))

(assert (=> bs!528183 (not (= lambda!112055 lambda!112042))))

(declare-fun bs!528184 () Bool)

(assert (= bs!528184 (and b!2997835 b!2997391)))

(assert (=> bs!528184 (not (= lambda!112055 lambda!112052))))

(declare-fun bs!528185 () Bool)

(assert (= bs!528185 (and b!2997835 b!2996441)))

(assert (=> bs!528185 (= (and (= (reg!9692 (regTwo!19239 (regTwo!19239 r!17423))) (reg!9692 (regOne!19239 r!17423))) (= (regTwo!19239 (regTwo!19239 r!17423)) (regOne!19239 r!17423))) (= lambda!112055 lambda!112043))))

(declare-fun bs!528186 () Bool)

(assert (= bs!528186 (and b!2997835 b!2997578)))

(assert (=> bs!528186 (= (and (= (reg!9692 (regTwo!19239 (regTwo!19239 r!17423))) (reg!9692 (regOne!19239 (regOne!19239 r!17423)))) (= (regTwo!19239 (regTwo!19239 r!17423)) (regOne!19239 (regOne!19239 r!17423)))) (= lambda!112055 lambda!112053))))

(declare-fun bs!528187 () Bool)

(assert (= bs!528187 (and b!2997835 b!2996783)))

(assert (=> bs!528187 (not (= lambda!112055 lambda!112048))))

(declare-fun bs!528188 () Bool)

(assert (= bs!528188 (and b!2997835 b!2997574)))

(assert (=> bs!528188 (not (= lambda!112055 lambda!112054))))

(declare-fun bs!528189 () Bool)

(assert (= bs!528189 (and b!2997835 b!2996787)))

(assert (=> bs!528189 (= (and (= (reg!9692 (regTwo!19239 (regTwo!19239 r!17423))) (reg!9692 (regTwo!19239 r!17423))) (= (regTwo!19239 (regTwo!19239 r!17423)) (regTwo!19239 r!17423))) (= lambda!112055 lambda!112047))))

(declare-fun bs!528190 () Bool)

(assert (= bs!528190 (and b!2997835 b!2997395)))

(assert (=> bs!528190 (= (and (= (reg!9692 (regTwo!19239 (regTwo!19239 r!17423))) (reg!9692 (regTwo!19239 (regOne!19239 r!17423)))) (= (regTwo!19239 (regTwo!19239 r!17423)) (regTwo!19239 (regOne!19239 r!17423)))) (= lambda!112055 lambda!112051))))

(assert (=> b!2997835 true))

(assert (=> b!2997835 true))

(declare-fun bs!528191 () Bool)

(declare-fun b!2997831 () Bool)

(assert (= bs!528191 (and b!2997831 b!2996377)))

(declare-fun lambda!112056 () Int)

(assert (=> bs!528191 (not (= lambda!112056 lambda!112041))))

(declare-fun bs!528192 () Bool)

(assert (= bs!528192 (and b!2997831 b!2996437)))

(assert (=> bs!528192 (= (and (= (regOne!19238 (regTwo!19239 (regTwo!19239 r!17423))) (regOne!19238 (regOne!19239 r!17423))) (= (regTwo!19238 (regTwo!19239 (regTwo!19239 r!17423))) (regTwo!19238 (regOne!19239 r!17423)))) (= lambda!112056 lambda!112044))))

(declare-fun bs!528193 () Bool)

(assert (= bs!528193 (and b!2997831 b!2996373)))

(assert (=> bs!528193 (= (and (= (regOne!19238 (regTwo!19239 (regTwo!19239 r!17423))) (regOne!19238 r!17423)) (= (regTwo!19238 (regTwo!19239 (regTwo!19239 r!17423))) (regTwo!19238 r!17423))) (= lambda!112056 lambda!112042))))

(declare-fun bs!528194 () Bool)

(assert (= bs!528194 (and b!2997831 b!2997391)))

(assert (=> bs!528194 (= (and (= (regOne!19238 (regTwo!19239 (regTwo!19239 r!17423))) (regOne!19238 (regTwo!19239 (regOne!19239 r!17423)))) (= (regTwo!19238 (regTwo!19239 (regTwo!19239 r!17423))) (regTwo!19238 (regTwo!19239 (regOne!19239 r!17423))))) (= lambda!112056 lambda!112052))))

(declare-fun bs!528195 () Bool)

(assert (= bs!528195 (and b!2997831 b!2996441)))

(assert (=> bs!528195 (not (= lambda!112056 lambda!112043))))

(declare-fun bs!528196 () Bool)

(assert (= bs!528196 (and b!2997831 b!2997578)))

(assert (=> bs!528196 (not (= lambda!112056 lambda!112053))))

(declare-fun bs!528197 () Bool)

(assert (= bs!528197 (and b!2997831 b!2997835)))

(assert (=> bs!528197 (not (= lambda!112056 lambda!112055))))

(declare-fun bs!528198 () Bool)

(assert (= bs!528198 (and b!2997831 b!2996783)))

(assert (=> bs!528198 (= (and (= (regOne!19238 (regTwo!19239 (regTwo!19239 r!17423))) (regOne!19238 (regTwo!19239 r!17423))) (= (regTwo!19238 (regTwo!19239 (regTwo!19239 r!17423))) (regTwo!19238 (regTwo!19239 r!17423)))) (= lambda!112056 lambda!112048))))

(declare-fun bs!528199 () Bool)

(assert (= bs!528199 (and b!2997831 b!2997574)))

(assert (=> bs!528199 (= (and (= (regOne!19238 (regTwo!19239 (regTwo!19239 r!17423))) (regOne!19238 (regOne!19239 (regOne!19239 r!17423)))) (= (regTwo!19238 (regTwo!19239 (regTwo!19239 r!17423))) (regTwo!19238 (regOne!19239 (regOne!19239 r!17423))))) (= lambda!112056 lambda!112054))))

(declare-fun bs!528200 () Bool)

(assert (= bs!528200 (and b!2997831 b!2996787)))

(assert (=> bs!528200 (not (= lambda!112056 lambda!112047))))

(declare-fun bs!528201 () Bool)

(assert (= bs!528201 (and b!2997831 b!2997395)))

(assert (=> bs!528201 (not (= lambda!112056 lambda!112051))))

(assert (=> b!2997831 true))

(assert (=> b!2997831 true))

(declare-fun bm!201172 () Bool)

(declare-fun call!201178 () Bool)

(assert (=> bm!201172 (= call!201178 (isEmpty!19378 s!11993))))

(declare-fun b!2997828 () Bool)

(declare-fun c!493229 () Bool)

(assert (=> b!2997828 (= c!493229 ((_ is Union!9363) (regTwo!19239 (regTwo!19239 r!17423))))))

(declare-fun e!1883715 () Bool)

(declare-fun e!1883714 () Bool)

(assert (=> b!2997828 (= e!1883715 e!1883714)))

(declare-fun b!2997829 () Bool)

(assert (=> b!2997829 (= e!1883715 (= s!11993 (Cons!35104 (c!492681 (regTwo!19239 (regTwo!19239 r!17423))) Nil!35104)))))

(declare-fun b!2997830 () Bool)

(declare-fun e!1883717 () Bool)

(assert (=> b!2997830 (= e!1883714 e!1883717)))

(declare-fun c!493231 () Bool)

(assert (=> b!2997830 (= c!493231 ((_ is Star!9363) (regTwo!19239 (regTwo!19239 r!17423))))))

(declare-fun d!845807 () Bool)

(declare-fun c!493230 () Bool)

(assert (=> d!845807 (= c!493230 ((_ is EmptyExpr!9363) (regTwo!19239 (regTwo!19239 r!17423))))))

(declare-fun e!1883713 () Bool)

(assert (=> d!845807 (= (matchRSpec!1500 (regTwo!19239 (regTwo!19239 r!17423)) s!11993) e!1883713)))

(declare-fun call!201177 () Bool)

(assert (=> b!2997831 (= e!1883717 call!201177)))

(declare-fun b!2997832 () Bool)

(declare-fun e!1883716 () Bool)

(assert (=> b!2997832 (= e!1883716 (matchRSpec!1500 (regTwo!19239 (regTwo!19239 (regTwo!19239 r!17423))) s!11993))))

(declare-fun b!2997833 () Bool)

(assert (=> b!2997833 (= e!1883714 e!1883716)))

(declare-fun res!1236058 () Bool)

(assert (=> b!2997833 (= res!1236058 (matchRSpec!1500 (regOne!19239 (regTwo!19239 (regTwo!19239 r!17423))) s!11993))))

(assert (=> b!2997833 (=> res!1236058 e!1883716)))

(declare-fun b!2997834 () Bool)

(declare-fun c!493232 () Bool)

(assert (=> b!2997834 (= c!493232 ((_ is ElementMatch!9363) (regTwo!19239 (regTwo!19239 r!17423))))))

(declare-fun e!1883718 () Bool)

(assert (=> b!2997834 (= e!1883718 e!1883715)))

(declare-fun e!1883719 () Bool)

(assert (=> b!2997835 (= e!1883719 call!201177)))

(declare-fun b!2997836 () Bool)

(assert (=> b!2997836 (= e!1883713 e!1883718)))

(declare-fun res!1236059 () Bool)

(assert (=> b!2997836 (= res!1236059 (not ((_ is EmptyLang!9363) (regTwo!19239 (regTwo!19239 r!17423)))))))

(assert (=> b!2997836 (=> (not res!1236059) (not e!1883718))))

(declare-fun b!2997837 () Bool)

(assert (=> b!2997837 (= e!1883713 call!201178)))

(declare-fun b!2997838 () Bool)

(declare-fun res!1236060 () Bool)

(assert (=> b!2997838 (=> res!1236060 e!1883719)))

(assert (=> b!2997838 (= res!1236060 call!201178)))

(assert (=> b!2997838 (= e!1883717 e!1883719)))

(declare-fun bm!201173 () Bool)

(assert (=> bm!201173 (= call!201177 (Exists!1636 (ite c!493231 lambda!112055 lambda!112056)))))

(assert (= (and d!845807 c!493230) b!2997837))

(assert (= (and d!845807 (not c!493230)) b!2997836))

(assert (= (and b!2997836 res!1236059) b!2997834))

(assert (= (and b!2997834 c!493232) b!2997829))

(assert (= (and b!2997834 (not c!493232)) b!2997828))

(assert (= (and b!2997828 c!493229) b!2997833))

(assert (= (and b!2997828 (not c!493229)) b!2997830))

(assert (= (and b!2997833 (not res!1236058)) b!2997832))

(assert (= (and b!2997830 c!493231) b!2997838))

(assert (= (and b!2997830 (not c!493231)) b!2997831))

(assert (= (and b!2997838 (not res!1236060)) b!2997835))

(assert (= (or b!2997835 b!2997831) bm!201173))

(assert (= (or b!2997837 b!2997838) bm!201172))

(assert (=> bm!201172 m!3349927))

(declare-fun m!3350967 () Bool)

(assert (=> b!2997832 m!3350967))

(declare-fun m!3350969 () Bool)

(assert (=> b!2997833 m!3350969))

(declare-fun m!3350971 () Bool)

(assert (=> bm!201173 m!3350971))

(assert (=> b!2996784 d!845807))

(assert (=> b!2996618 d!845665))

(assert (=> b!2996618 d!845647))

(declare-fun d!845809 () Bool)

(assert (=> d!845809 (= (isEmptyExpr!470 (ite c!492878 lt!1041502 lt!1041504)) ((_ is EmptyExpr!9363) (ite c!492878 lt!1041502 lt!1041504)))))

(assert (=> bm!200872 d!845809))

(assert (=> d!845517 d!845497))

(declare-fun b!2997839 () Bool)

(declare-fun e!1883724 () Bool)

(declare-fun call!201181 () Bool)

(assert (=> b!2997839 (= e!1883724 call!201181)))

(declare-fun b!2997840 () Bool)

(declare-fun e!1883722 () Bool)

(declare-fun call!201179 () Bool)

(assert (=> b!2997840 (= e!1883722 call!201179)))

(declare-fun bm!201174 () Bool)

(declare-fun c!493234 () Bool)

(declare-fun c!493233 () Bool)

(assert (=> bm!201174 (= call!201181 (validRegex!4096 (ite c!493234 (reg!9692 (derivativeStep!2624 r!17423 (head!6683 s!11993))) (ite c!493233 (regOne!19239 (derivativeStep!2624 r!17423 (head!6683 s!11993))) (regTwo!19238 (derivativeStep!2624 r!17423 (head!6683 s!11993)))))))))

(declare-fun b!2997842 () Bool)

(declare-fun e!1883725 () Bool)

(declare-fun call!201180 () Bool)

(assert (=> b!2997842 (= e!1883725 call!201180)))

(declare-fun bm!201175 () Bool)

(assert (=> bm!201175 (= call!201180 call!201181)))

(declare-fun b!2997843 () Bool)

(declare-fun e!1883721 () Bool)

(declare-fun e!1883720 () Bool)

(assert (=> b!2997843 (= e!1883721 e!1883720)))

(assert (=> b!2997843 (= c!493233 ((_ is Union!9363) (derivativeStep!2624 r!17423 (head!6683 s!11993))))))

(declare-fun b!2997844 () Bool)

(assert (=> b!2997844 (= e!1883721 e!1883724)))

(declare-fun res!1236064 () Bool)

(assert (=> b!2997844 (= res!1236064 (not (nullable!3026 (reg!9692 (derivativeStep!2624 r!17423 (head!6683 s!11993))))))))

(assert (=> b!2997844 (=> (not res!1236064) (not e!1883724))))

(declare-fun b!2997845 () Bool)

(declare-fun res!1236061 () Bool)

(declare-fun e!1883723 () Bool)

(assert (=> b!2997845 (=> res!1236061 e!1883723)))

(assert (=> b!2997845 (= res!1236061 (not ((_ is Concat!14684) (derivativeStep!2624 r!17423 (head!6683 s!11993)))))))

(assert (=> b!2997845 (= e!1883720 e!1883723)))

(declare-fun b!2997846 () Bool)

(assert (=> b!2997846 (= e!1883723 e!1883725)))

(declare-fun res!1236062 () Bool)

(assert (=> b!2997846 (=> (not res!1236062) (not e!1883725))))

(assert (=> b!2997846 (= res!1236062 call!201179)))

(declare-fun bm!201176 () Bool)

(assert (=> bm!201176 (= call!201179 (validRegex!4096 (ite c!493233 (regTwo!19239 (derivativeStep!2624 r!17423 (head!6683 s!11993))) (regOne!19238 (derivativeStep!2624 r!17423 (head!6683 s!11993))))))))

(declare-fun b!2997847 () Bool)

(declare-fun e!1883726 () Bool)

(assert (=> b!2997847 (= e!1883726 e!1883721)))

(assert (=> b!2997847 (= c!493234 ((_ is Star!9363) (derivativeStep!2624 r!17423 (head!6683 s!11993))))))

(declare-fun d!845811 () Bool)

(declare-fun res!1236063 () Bool)

(assert (=> d!845811 (=> res!1236063 e!1883726)))

(assert (=> d!845811 (= res!1236063 ((_ is ElementMatch!9363) (derivativeStep!2624 r!17423 (head!6683 s!11993))))))

(assert (=> d!845811 (= (validRegex!4096 (derivativeStep!2624 r!17423 (head!6683 s!11993))) e!1883726)))

(declare-fun b!2997841 () Bool)

(declare-fun res!1236065 () Bool)

(assert (=> b!2997841 (=> (not res!1236065) (not e!1883722))))

(assert (=> b!2997841 (= res!1236065 call!201180)))

(assert (=> b!2997841 (= e!1883720 e!1883722)))

(assert (= (and d!845811 (not res!1236063)) b!2997847))

(assert (= (and b!2997847 c!493234) b!2997844))

(assert (= (and b!2997847 (not c!493234)) b!2997843))

(assert (= (and b!2997844 res!1236064) b!2997839))

(assert (= (and b!2997843 c!493233) b!2997841))

(assert (= (and b!2997843 (not c!493233)) b!2997845))

(assert (= (and b!2997841 res!1236065) b!2997840))

(assert (= (and b!2997845 (not res!1236061)) b!2997846))

(assert (= (and b!2997846 res!1236062) b!2997842))

(assert (= (or b!2997841 b!2997842) bm!201175))

(assert (= (or b!2997840 b!2997846) bm!201176))

(assert (= (or b!2997839 bm!201175) bm!201174))

(declare-fun m!3350973 () Bool)

(assert (=> bm!201174 m!3350973))

(declare-fun m!3350975 () Bool)

(assert (=> b!2997844 m!3350975))

(declare-fun m!3350977 () Bool)

(assert (=> bm!201176 m!3350977))

(assert (=> d!845517 d!845811))

(assert (=> b!2996622 d!845645))

(assert (=> b!2996680 d!845473))

(declare-fun d!845813 () Bool)

(assert (=> d!845813 (= (isEmptyExpr!470 (ite c!492944 lt!1041522 lt!1041524)) ((_ is EmptyExpr!9363) (ite c!492944 lt!1041522 lt!1041524)))))

(assert (=> bm!200924 d!845813))

(declare-fun d!845815 () Bool)

(assert (=> d!845815 (= (Exists!1636 (ite c!492838 lambda!112043 lambda!112044)) (choose!17787 (ite c!492838 lambda!112043 lambda!112044)))))

(declare-fun bs!528202 () Bool)

(assert (= bs!528202 d!845815))

(declare-fun m!3350979 () Bool)

(assert (=> bs!528202 m!3350979))

(assert (=> bm!200839 d!845815))

(declare-fun d!845817 () Bool)

(assert (=> d!845817 (= (nullable!3026 (derivativeStep!2624 lt!1041417 (head!6683 s!11993))) (nullableFct!860 (derivativeStep!2624 lt!1041417 (head!6683 s!11993))))))

(declare-fun bs!528203 () Bool)

(assert (= bs!528203 d!845817))

(assert (=> bs!528203 m!3350007))

(declare-fun m!3350981 () Bool)

(assert (=> bs!528203 m!3350981))

(assert (=> b!2996451 d!845817))

(assert (=> b!2996455 d!845665))

(assert (=> b!2996455 d!845647))

(declare-fun d!845819 () Bool)

(assert (=> d!845819 (= (nullable!3026 (regOne!19238 (regTwo!19238 r!17423))) (nullableFct!860 (regOne!19238 (regTwo!19238 r!17423))))))

(declare-fun bs!528204 () Bool)

(assert (= bs!528204 d!845819))

(declare-fun m!3350983 () Bool)

(assert (=> bs!528204 m!3350983))

(assert (=> b!2996586 d!845819))

(declare-fun d!845821 () Bool)

(assert (=> d!845821 (= (nullable!3026 (reg!9692 lt!1041417)) (nullableFct!860 (reg!9692 lt!1041417)))))

(declare-fun bs!528205 () Bool)

(assert (= bs!528205 d!845821))

(declare-fun m!3350985 () Bool)

(assert (=> bs!528205 m!3350985))

(assert (=> b!2996614 d!845821))

(declare-fun b!2997848 () Bool)

(declare-fun e!1883731 () Bool)

(declare-fun call!201184 () Bool)

(assert (=> b!2997848 (= e!1883731 call!201184)))

(declare-fun b!2997849 () Bool)

(declare-fun e!1883729 () Bool)

(declare-fun call!201182 () Bool)

(assert (=> b!2997849 (= e!1883729 call!201182)))

(declare-fun bm!201177 () Bool)

(declare-fun c!493235 () Bool)

(declare-fun c!493236 () Bool)

(assert (=> bm!201177 (= call!201184 (validRegex!4096 (ite c!493236 (reg!9692 lt!1041499) (ite c!493235 (regOne!19239 lt!1041499) (regTwo!19238 lt!1041499)))))))

(declare-fun b!2997851 () Bool)

(declare-fun e!1883732 () Bool)

(declare-fun call!201183 () Bool)

(assert (=> b!2997851 (= e!1883732 call!201183)))

(declare-fun bm!201178 () Bool)

(assert (=> bm!201178 (= call!201183 call!201184)))

(declare-fun b!2997852 () Bool)

(declare-fun e!1883728 () Bool)

(declare-fun e!1883727 () Bool)

(assert (=> b!2997852 (= e!1883728 e!1883727)))

(assert (=> b!2997852 (= c!493235 ((_ is Union!9363) lt!1041499))))

(declare-fun b!2997853 () Bool)

(assert (=> b!2997853 (= e!1883728 e!1883731)))

(declare-fun res!1236069 () Bool)

(assert (=> b!2997853 (= res!1236069 (not (nullable!3026 (reg!9692 lt!1041499))))))

(assert (=> b!2997853 (=> (not res!1236069) (not e!1883731))))

(declare-fun b!2997854 () Bool)

(declare-fun res!1236066 () Bool)

(declare-fun e!1883730 () Bool)

(assert (=> b!2997854 (=> res!1236066 e!1883730)))

(assert (=> b!2997854 (= res!1236066 (not ((_ is Concat!14684) lt!1041499)))))

(assert (=> b!2997854 (= e!1883727 e!1883730)))

(declare-fun b!2997855 () Bool)

(assert (=> b!2997855 (= e!1883730 e!1883732)))

(declare-fun res!1236067 () Bool)

(assert (=> b!2997855 (=> (not res!1236067) (not e!1883732))))

(assert (=> b!2997855 (= res!1236067 call!201182)))

(declare-fun bm!201179 () Bool)

(assert (=> bm!201179 (= call!201182 (validRegex!4096 (ite c!493235 (regTwo!19239 lt!1041499) (regOne!19238 lt!1041499))))))

(declare-fun b!2997856 () Bool)

(declare-fun e!1883733 () Bool)

(assert (=> b!2997856 (= e!1883733 e!1883728)))

(assert (=> b!2997856 (= c!493236 ((_ is Star!9363) lt!1041499))))

(declare-fun d!845823 () Bool)

(declare-fun res!1236068 () Bool)

(assert (=> d!845823 (=> res!1236068 e!1883733)))

(assert (=> d!845823 (= res!1236068 ((_ is ElementMatch!9363) lt!1041499))))

(assert (=> d!845823 (= (validRegex!4096 lt!1041499) e!1883733)))

(declare-fun b!2997850 () Bool)

(declare-fun res!1236070 () Bool)

(assert (=> b!2997850 (=> (not res!1236070) (not e!1883729))))

(assert (=> b!2997850 (= res!1236070 call!201183)))

(assert (=> b!2997850 (= e!1883727 e!1883729)))

(assert (= (and d!845823 (not res!1236068)) b!2997856))

(assert (= (and b!2997856 c!493236) b!2997853))

(assert (= (and b!2997856 (not c!493236)) b!2997852))

(assert (= (and b!2997853 res!1236069) b!2997848))

(assert (= (and b!2997852 c!493235) b!2997850))

(assert (= (and b!2997852 (not c!493235)) b!2997854))

(assert (= (and b!2997850 res!1236070) b!2997849))

(assert (= (and b!2997854 (not res!1236066)) b!2997855))

(assert (= (and b!2997855 res!1236067) b!2997851))

(assert (= (or b!2997850 b!2997851) bm!201178))

(assert (= (or b!2997849 b!2997855) bm!201179))

(assert (= (or b!2997848 bm!201178) bm!201177))

(declare-fun m!3350987 () Bool)

(assert (=> bm!201177 m!3350987))

(declare-fun m!3350989 () Bool)

(assert (=> b!2997853 m!3350989))

(declare-fun m!3350991 () Bool)

(assert (=> bm!201179 m!3350991))

(assert (=> d!845483 d!845823))

(declare-fun b!2997857 () Bool)

(declare-fun e!1883738 () Bool)

(declare-fun call!201187 () Bool)

(assert (=> b!2997857 (= e!1883738 call!201187)))

(declare-fun b!2997858 () Bool)

(declare-fun e!1883736 () Bool)

(declare-fun call!201185 () Bool)

(assert (=> b!2997858 (= e!1883736 call!201185)))

(declare-fun c!493237 () Bool)

(declare-fun bm!201180 () Bool)

(declare-fun c!493238 () Bool)

(assert (=> bm!201180 (= call!201187 (validRegex!4096 (ite c!493238 (reg!9692 (ite c!492730 (regTwo!19239 (regTwo!19238 r!17423)) (regOne!19238 (regTwo!19238 r!17423)))) (ite c!493237 (regOne!19239 (ite c!492730 (regTwo!19239 (regTwo!19238 r!17423)) (regOne!19238 (regTwo!19238 r!17423)))) (regTwo!19238 (ite c!492730 (regTwo!19239 (regTwo!19238 r!17423)) (regOne!19238 (regTwo!19238 r!17423))))))))))

(declare-fun b!2997860 () Bool)

(declare-fun e!1883739 () Bool)

(declare-fun call!201186 () Bool)

(assert (=> b!2997860 (= e!1883739 call!201186)))

(declare-fun bm!201181 () Bool)

(assert (=> bm!201181 (= call!201186 call!201187)))

(declare-fun b!2997861 () Bool)

(declare-fun e!1883735 () Bool)

(declare-fun e!1883734 () Bool)

(assert (=> b!2997861 (= e!1883735 e!1883734)))

(assert (=> b!2997861 (= c!493237 ((_ is Union!9363) (ite c!492730 (regTwo!19239 (regTwo!19238 r!17423)) (regOne!19238 (regTwo!19238 r!17423)))))))

(declare-fun b!2997862 () Bool)

(assert (=> b!2997862 (= e!1883735 e!1883738)))

(declare-fun res!1236074 () Bool)

(assert (=> b!2997862 (= res!1236074 (not (nullable!3026 (reg!9692 (ite c!492730 (regTwo!19239 (regTwo!19238 r!17423)) (regOne!19238 (regTwo!19238 r!17423)))))))))

(assert (=> b!2997862 (=> (not res!1236074) (not e!1883738))))

(declare-fun b!2997863 () Bool)

(declare-fun res!1236071 () Bool)

(declare-fun e!1883737 () Bool)

(assert (=> b!2997863 (=> res!1236071 e!1883737)))

(assert (=> b!2997863 (= res!1236071 (not ((_ is Concat!14684) (ite c!492730 (regTwo!19239 (regTwo!19238 r!17423)) (regOne!19238 (regTwo!19238 r!17423))))))))

(assert (=> b!2997863 (= e!1883734 e!1883737)))

(declare-fun b!2997864 () Bool)

(assert (=> b!2997864 (= e!1883737 e!1883739)))

(declare-fun res!1236072 () Bool)

(assert (=> b!2997864 (=> (not res!1236072) (not e!1883739))))

(assert (=> b!2997864 (= res!1236072 call!201185)))

(declare-fun bm!201182 () Bool)

(assert (=> bm!201182 (= call!201185 (validRegex!4096 (ite c!493237 (regTwo!19239 (ite c!492730 (regTwo!19239 (regTwo!19238 r!17423)) (regOne!19238 (regTwo!19238 r!17423)))) (regOne!19238 (ite c!492730 (regTwo!19239 (regTwo!19238 r!17423)) (regOne!19238 (regTwo!19238 r!17423)))))))))

(declare-fun b!2997865 () Bool)

(declare-fun e!1883740 () Bool)

(assert (=> b!2997865 (= e!1883740 e!1883735)))

(assert (=> b!2997865 (= c!493238 ((_ is Star!9363) (ite c!492730 (regTwo!19239 (regTwo!19238 r!17423)) (regOne!19238 (regTwo!19238 r!17423)))))))

(declare-fun d!845825 () Bool)

(declare-fun res!1236073 () Bool)

(assert (=> d!845825 (=> res!1236073 e!1883740)))

(assert (=> d!845825 (= res!1236073 ((_ is ElementMatch!9363) (ite c!492730 (regTwo!19239 (regTwo!19238 r!17423)) (regOne!19238 (regTwo!19238 r!17423)))))))

(assert (=> d!845825 (= (validRegex!4096 (ite c!492730 (regTwo!19239 (regTwo!19238 r!17423)) (regOne!19238 (regTwo!19238 r!17423)))) e!1883740)))

(declare-fun b!2997859 () Bool)

(declare-fun res!1236075 () Bool)

(assert (=> b!2997859 (=> (not res!1236075) (not e!1883736))))

(assert (=> b!2997859 (= res!1236075 call!201186)))

(assert (=> b!2997859 (= e!1883734 e!1883736)))

(assert (= (and d!845825 (not res!1236073)) b!2997865))

(assert (= (and b!2997865 c!493238) b!2997862))

(assert (= (and b!2997865 (not c!493238)) b!2997861))

(assert (= (and b!2997862 res!1236074) b!2997857))

(assert (= (and b!2997861 c!493237) b!2997859))

(assert (= (and b!2997861 (not c!493237)) b!2997863))

(assert (= (and b!2997859 res!1236075) b!2997858))

(assert (= (and b!2997863 (not res!1236071)) b!2997864))

(assert (= (and b!2997864 res!1236072) b!2997860))

(assert (= (or b!2997859 b!2997860) bm!201181))

(assert (= (or b!2997858 b!2997864) bm!201182))

(assert (= (or b!2997857 bm!201181) bm!201180))

(declare-fun m!3350993 () Bool)

(assert (=> bm!201180 m!3350993))

(declare-fun m!3350995 () Bool)

(assert (=> b!2997862 m!3350995))

(declare-fun m!3350997 () Bool)

(assert (=> bm!201182 m!3350997))

(assert (=> d!845483 d!845825))

(declare-fun d!845827 () Bool)

(assert (=> d!845827 (= (isEmptyLang!453 (ite c!492876 lt!1041503 lt!1041501)) ((_ is EmptyLang!9363) (ite c!492876 lt!1041503 lt!1041501)))))

(assert (=> bm!200869 d!845827))

(declare-fun b!2997866 () Bool)

(declare-fun e!1883742 () Regex!9363)

(declare-fun e!1883743 () Regex!9363)

(assert (=> b!2997866 (= e!1883742 e!1883743)))

(declare-fun c!493243 () Bool)

(assert (=> b!2997866 (= c!493243 ((_ is ElementMatch!9363) (ite c!492856 (regTwo!19239 lt!1041417) (ite c!492855 (reg!9692 lt!1041417) (regOne!19238 lt!1041417)))))))

(declare-fun c!493240 () Bool)

(declare-fun b!2997867 () Bool)

(assert (=> b!2997867 (= c!493240 (nullable!3026 (regOne!19238 (ite c!492856 (regTwo!19239 lt!1041417) (ite c!492855 (reg!9692 lt!1041417) (regOne!19238 lt!1041417))))))))

(declare-fun e!1883744 () Regex!9363)

(declare-fun e!1883745 () Regex!9363)

(assert (=> b!2997867 (= e!1883744 e!1883745)))

(declare-fun b!2997868 () Bool)

(assert (=> b!2997868 (= e!1883742 EmptyLang!9363)))

(declare-fun b!2997869 () Bool)

(declare-fun call!201191 () Regex!9363)

(assert (=> b!2997869 (= e!1883745 (Union!9363 (Concat!14684 call!201191 (regTwo!19238 (ite c!492856 (regTwo!19239 lt!1041417) (ite c!492855 (reg!9692 lt!1041417) (regOne!19238 lt!1041417))))) EmptyLang!9363))))

(declare-fun b!2997870 () Bool)

(declare-fun call!201189 () Regex!9363)

(assert (=> b!2997870 (= e!1883744 (Concat!14684 call!201189 (ite c!492856 (regTwo!19239 lt!1041417) (ite c!492855 (reg!9692 lt!1041417) (regOne!19238 lt!1041417)))))))

(declare-fun b!2997871 () Bool)

(declare-fun c!493242 () Bool)

(assert (=> b!2997871 (= c!493242 ((_ is Union!9363) (ite c!492856 (regTwo!19239 lt!1041417) (ite c!492855 (reg!9692 lt!1041417) (regOne!19238 lt!1041417)))))))

(declare-fun e!1883741 () Regex!9363)

(assert (=> b!2997871 (= e!1883743 e!1883741)))

(declare-fun c!493241 () Bool)

(declare-fun call!201188 () Regex!9363)

(declare-fun bm!201184 () Bool)

(assert (=> bm!201184 (= call!201188 (derivativeStep!2624 (ite c!493242 (regTwo!19239 (ite c!492856 (regTwo!19239 lt!1041417) (ite c!492855 (reg!9692 lt!1041417) (regOne!19238 lt!1041417)))) (ite c!493241 (reg!9692 (ite c!492856 (regTwo!19239 lt!1041417) (ite c!492855 (reg!9692 lt!1041417) (regOne!19238 lt!1041417)))) (regOne!19238 (ite c!492856 (regTwo!19239 lt!1041417) (ite c!492855 (reg!9692 lt!1041417) (regOne!19238 lt!1041417)))))) (head!6683 s!11993)))))

(declare-fun bm!201185 () Bool)

(assert (=> bm!201185 (= call!201191 call!201189)))

(declare-fun b!2997872 () Bool)

(assert (=> b!2997872 (= e!1883743 (ite (= (head!6683 s!11993) (c!492681 (ite c!492856 (regTwo!19239 lt!1041417) (ite c!492855 (reg!9692 lt!1041417) (regOne!19238 lt!1041417))))) EmptyExpr!9363 EmptyLang!9363))))

(declare-fun call!201190 () Regex!9363)

(declare-fun bm!201186 () Bool)

(assert (=> bm!201186 (= call!201190 (derivativeStep!2624 (ite c!493242 (regOne!19239 (ite c!492856 (regTwo!19239 lt!1041417) (ite c!492855 (reg!9692 lt!1041417) (regOne!19238 lt!1041417)))) (regTwo!19238 (ite c!492856 (regTwo!19239 lt!1041417) (ite c!492855 (reg!9692 lt!1041417) (regOne!19238 lt!1041417))))) (head!6683 s!11993)))))

(declare-fun b!2997873 () Bool)

(assert (=> b!2997873 (= e!1883745 (Union!9363 (Concat!14684 call!201191 (regTwo!19238 (ite c!492856 (regTwo!19239 lt!1041417) (ite c!492855 (reg!9692 lt!1041417) (regOne!19238 lt!1041417))))) call!201190))))

(declare-fun d!845829 () Bool)

(declare-fun lt!1041608 () Regex!9363)

(assert (=> d!845829 (validRegex!4096 lt!1041608)))

(assert (=> d!845829 (= lt!1041608 e!1883742)))

(declare-fun c!493239 () Bool)

(assert (=> d!845829 (= c!493239 (or ((_ is EmptyExpr!9363) (ite c!492856 (regTwo!19239 lt!1041417) (ite c!492855 (reg!9692 lt!1041417) (regOne!19238 lt!1041417)))) ((_ is EmptyLang!9363) (ite c!492856 (regTwo!19239 lt!1041417) (ite c!492855 (reg!9692 lt!1041417) (regOne!19238 lt!1041417))))))))

(assert (=> d!845829 (validRegex!4096 (ite c!492856 (regTwo!19239 lt!1041417) (ite c!492855 (reg!9692 lt!1041417) (regOne!19238 lt!1041417))))))

(assert (=> d!845829 (= (derivativeStep!2624 (ite c!492856 (regTwo!19239 lt!1041417) (ite c!492855 (reg!9692 lt!1041417) (regOne!19238 lt!1041417))) (head!6683 s!11993)) lt!1041608)))

(declare-fun bm!201183 () Bool)

(assert (=> bm!201183 (= call!201189 call!201188)))

(declare-fun b!2997874 () Bool)

(assert (=> b!2997874 (= e!1883741 e!1883744)))

(assert (=> b!2997874 (= c!493241 ((_ is Star!9363) (ite c!492856 (regTwo!19239 lt!1041417) (ite c!492855 (reg!9692 lt!1041417) (regOne!19238 lt!1041417)))))))

(declare-fun b!2997875 () Bool)

(assert (=> b!2997875 (= e!1883741 (Union!9363 call!201190 call!201188))))

(assert (= (and d!845829 c!493239) b!2997868))

(assert (= (and d!845829 (not c!493239)) b!2997866))

(assert (= (and b!2997866 c!493243) b!2997872))

(assert (= (and b!2997866 (not c!493243)) b!2997871))

(assert (= (and b!2997871 c!493242) b!2997875))

(assert (= (and b!2997871 (not c!493242)) b!2997874))

(assert (= (and b!2997874 c!493241) b!2997870))

(assert (= (and b!2997874 (not c!493241)) b!2997867))

(assert (= (and b!2997867 c!493240) b!2997873))

(assert (= (and b!2997867 (not c!493240)) b!2997869))

(assert (= (or b!2997873 b!2997869) bm!201185))

(assert (= (or b!2997870 bm!201185) bm!201183))

(assert (= (or b!2997875 bm!201183) bm!201184))

(assert (= (or b!2997875 b!2997873) bm!201186))

(declare-fun m!3350999 () Bool)

(assert (=> b!2997867 m!3350999))

(assert (=> bm!201184 m!3350005))

(declare-fun m!3351001 () Bool)

(assert (=> bm!201184 m!3351001))

(assert (=> bm!201186 m!3350005))

(declare-fun m!3351003 () Bool)

(assert (=> bm!201186 m!3351003))

(declare-fun m!3351005 () Bool)

(assert (=> d!845829 m!3351005))

(declare-fun m!3351007 () Bool)

(assert (=> d!845829 m!3351007))

(assert (=> bm!200850 d!845829))

(declare-fun b!2997876 () Bool)

(declare-fun e!1883747 () Regex!9363)

(declare-fun e!1883748 () Regex!9363)

(assert (=> b!2997876 (= e!1883747 e!1883748)))

(declare-fun c!493248 () Bool)

(assert (=> b!2997876 (= c!493248 ((_ is ElementMatch!9363) (ite c!492906 (regOne!19239 r!17423) (regTwo!19238 r!17423))))))

(declare-fun b!2997877 () Bool)

(declare-fun c!493245 () Bool)

(assert (=> b!2997877 (= c!493245 (nullable!3026 (regOne!19238 (ite c!492906 (regOne!19239 r!17423) (regTwo!19238 r!17423)))))))

(declare-fun e!1883749 () Regex!9363)

(declare-fun e!1883750 () Regex!9363)

(assert (=> b!2997877 (= e!1883749 e!1883750)))

(declare-fun b!2997878 () Bool)

(assert (=> b!2997878 (= e!1883747 EmptyLang!9363)))

(declare-fun call!201195 () Regex!9363)

(declare-fun b!2997879 () Bool)

(assert (=> b!2997879 (= e!1883750 (Union!9363 (Concat!14684 call!201195 (regTwo!19238 (ite c!492906 (regOne!19239 r!17423) (regTwo!19238 r!17423)))) EmptyLang!9363))))

(declare-fun call!201193 () Regex!9363)

(declare-fun b!2997880 () Bool)

(assert (=> b!2997880 (= e!1883749 (Concat!14684 call!201193 (ite c!492906 (regOne!19239 r!17423) (regTwo!19238 r!17423))))))

(declare-fun b!2997881 () Bool)

(declare-fun c!493247 () Bool)

(assert (=> b!2997881 (= c!493247 ((_ is Union!9363) (ite c!492906 (regOne!19239 r!17423) (regTwo!19238 r!17423))))))

(declare-fun e!1883746 () Regex!9363)

(assert (=> b!2997881 (= e!1883748 e!1883746)))

(declare-fun c!493246 () Bool)

(declare-fun call!201192 () Regex!9363)

(declare-fun bm!201188 () Bool)

(assert (=> bm!201188 (= call!201192 (derivativeStep!2624 (ite c!493247 (regTwo!19239 (ite c!492906 (regOne!19239 r!17423) (regTwo!19238 r!17423))) (ite c!493246 (reg!9692 (ite c!492906 (regOne!19239 r!17423) (regTwo!19238 r!17423))) (regOne!19238 (ite c!492906 (regOne!19239 r!17423) (regTwo!19238 r!17423))))) (head!6683 s!11993)))))

(declare-fun bm!201189 () Bool)

(assert (=> bm!201189 (= call!201195 call!201193)))

(declare-fun b!2997882 () Bool)

(assert (=> b!2997882 (= e!1883748 (ite (= (head!6683 s!11993) (c!492681 (ite c!492906 (regOne!19239 r!17423) (regTwo!19238 r!17423)))) EmptyExpr!9363 EmptyLang!9363))))

(declare-fun call!201194 () Regex!9363)

(declare-fun bm!201190 () Bool)

(assert (=> bm!201190 (= call!201194 (derivativeStep!2624 (ite c!493247 (regOne!19239 (ite c!492906 (regOne!19239 r!17423) (regTwo!19238 r!17423))) (regTwo!19238 (ite c!492906 (regOne!19239 r!17423) (regTwo!19238 r!17423)))) (head!6683 s!11993)))))

(declare-fun b!2997883 () Bool)

(assert (=> b!2997883 (= e!1883750 (Union!9363 (Concat!14684 call!201195 (regTwo!19238 (ite c!492906 (regOne!19239 r!17423) (regTwo!19238 r!17423)))) call!201194))))

(declare-fun d!845831 () Bool)

(declare-fun lt!1041609 () Regex!9363)

(assert (=> d!845831 (validRegex!4096 lt!1041609)))

(assert (=> d!845831 (= lt!1041609 e!1883747)))

(declare-fun c!493244 () Bool)

(assert (=> d!845831 (= c!493244 (or ((_ is EmptyExpr!9363) (ite c!492906 (regOne!19239 r!17423) (regTwo!19238 r!17423))) ((_ is EmptyLang!9363) (ite c!492906 (regOne!19239 r!17423) (regTwo!19238 r!17423)))))))

(assert (=> d!845831 (validRegex!4096 (ite c!492906 (regOne!19239 r!17423) (regTwo!19238 r!17423)))))

(assert (=> d!845831 (= (derivativeStep!2624 (ite c!492906 (regOne!19239 r!17423) (regTwo!19238 r!17423)) (head!6683 s!11993)) lt!1041609)))

(declare-fun bm!201187 () Bool)

(assert (=> bm!201187 (= call!201193 call!201192)))

(declare-fun b!2997884 () Bool)

(assert (=> b!2997884 (= e!1883746 e!1883749)))

(assert (=> b!2997884 (= c!493246 ((_ is Star!9363) (ite c!492906 (regOne!19239 r!17423) (regTwo!19238 r!17423))))))

(declare-fun b!2997885 () Bool)

(assert (=> b!2997885 (= e!1883746 (Union!9363 call!201194 call!201192))))

(assert (= (and d!845831 c!493244) b!2997878))

(assert (= (and d!845831 (not c!493244)) b!2997876))

(assert (= (and b!2997876 c!493248) b!2997882))

(assert (= (and b!2997876 (not c!493248)) b!2997881))

(assert (= (and b!2997881 c!493247) b!2997885))

(assert (= (and b!2997881 (not c!493247)) b!2997884))

(assert (= (and b!2997884 c!493246) b!2997880))

(assert (= (and b!2997884 (not c!493246)) b!2997877))

(assert (= (and b!2997877 c!493245) b!2997883))

(assert (= (and b!2997877 (not c!493245)) b!2997879))

(assert (= (or b!2997883 b!2997879) bm!201189))

(assert (= (or b!2997880 bm!201189) bm!201187))

(assert (= (or b!2997885 bm!201187) bm!201188))

(assert (= (or b!2997885 b!2997883) bm!201190))

(declare-fun m!3351009 () Bool)

(assert (=> b!2997877 m!3351009))

(assert (=> bm!201188 m!3350005))

(declare-fun m!3351011 () Bool)

(assert (=> bm!201188 m!3351011))

(assert (=> bm!201190 m!3350005))

(declare-fun m!3351013 () Bool)

(assert (=> bm!201190 m!3351013))

(declare-fun m!3351015 () Bool)

(assert (=> d!845831 m!3351015))

(declare-fun m!3351017 () Bool)

(assert (=> d!845831 m!3351017))

(assert (=> bm!200888 d!845831))

(assert (=> d!845541 d!845445))

(assert (=> d!845541 d!845545))

(assert (=> d!845541 d!845429))

(declare-fun d!845833 () Bool)

(assert (=> d!845833 (= (nullable!3026 (ite c!492875 (regOne!19239 (regOne!19238 r!17423)) (regOne!19238 (regOne!19238 r!17423)))) (nullableFct!860 (ite c!492875 (regOne!19239 (regOne!19238 r!17423)) (regOne!19238 (regOne!19238 r!17423)))))))

(declare-fun bs!528206 () Bool)

(assert (= bs!528206 d!845833))

(declare-fun m!3351019 () Bool)

(assert (=> bs!528206 m!3351019))

(assert (=> bm!200867 d!845833))

(assert (=> bm!200838 d!845441))

(assert (=> bm!200884 d!845497))

(declare-fun b!2997886 () Bool)

(declare-fun res!1236081 () Bool)

(declare-fun e!1883756 () Bool)

(assert (=> b!2997886 (=> res!1236081 e!1883756)))

(assert (=> b!2997886 (= res!1236081 (not (isEmpty!19378 (tail!4909 (tail!4909 s!11993)))))))

(declare-fun b!2997887 () Bool)

(declare-fun e!1883757 () Bool)

(declare-fun e!1883751 () Bool)

(assert (=> b!2997887 (= e!1883757 e!1883751)))

(declare-fun c!493250 () Bool)

(assert (=> b!2997887 (= c!493250 ((_ is EmptyLang!9363) (derivativeStep!2624 (simplify!354 (regTwo!19238 r!17423)) (head!6683 s!11993))))))

(declare-fun b!2997888 () Bool)

(declare-fun e!1883752 () Bool)

(declare-fun e!1883755 () Bool)

(assert (=> b!2997888 (= e!1883752 e!1883755)))

(declare-fun res!1236080 () Bool)

(assert (=> b!2997888 (=> (not res!1236080) (not e!1883755))))

(declare-fun lt!1041610 () Bool)

(assert (=> b!2997888 (= res!1236080 (not lt!1041610))))

(declare-fun b!2997889 () Bool)

(declare-fun e!1883753 () Bool)

(assert (=> b!2997889 (= e!1883753 (matchR!4245 (derivativeStep!2624 (derivativeStep!2624 (simplify!354 (regTwo!19238 r!17423)) (head!6683 s!11993)) (head!6683 (tail!4909 s!11993))) (tail!4909 (tail!4909 s!11993))))))

(declare-fun b!2997890 () Bool)

(assert (=> b!2997890 (= e!1883756 (not (= (head!6683 (tail!4909 s!11993)) (c!492681 (derivativeStep!2624 (simplify!354 (regTwo!19238 r!17423)) (head!6683 s!11993))))))))

(declare-fun b!2997891 () Bool)

(declare-fun res!1236082 () Bool)

(declare-fun e!1883754 () Bool)

(assert (=> b!2997891 (=> (not res!1236082) (not e!1883754))))

(declare-fun call!201196 () Bool)

(assert (=> b!2997891 (= res!1236082 (not call!201196))))

(declare-fun b!2997892 () Bool)

(assert (=> b!2997892 (= e!1883753 (nullable!3026 (derivativeStep!2624 (simplify!354 (regTwo!19238 r!17423)) (head!6683 s!11993))))))

(declare-fun b!2997894 () Bool)

(declare-fun res!1236078 () Bool)

(assert (=> b!2997894 (=> res!1236078 e!1883752)))

(assert (=> b!2997894 (= res!1236078 e!1883754)))

(declare-fun res!1236079 () Bool)

(assert (=> b!2997894 (=> (not res!1236079) (not e!1883754))))

(assert (=> b!2997894 (= res!1236079 lt!1041610)))

(declare-fun b!2997895 () Bool)

(assert (=> b!2997895 (= e!1883757 (= lt!1041610 call!201196))))

(declare-fun b!2997896 () Bool)

(declare-fun res!1236077 () Bool)

(assert (=> b!2997896 (=> (not res!1236077) (not e!1883754))))

(assert (=> b!2997896 (= res!1236077 (isEmpty!19378 (tail!4909 (tail!4909 s!11993))))))

(declare-fun d!845835 () Bool)

(assert (=> d!845835 e!1883757))

(declare-fun c!493249 () Bool)

(assert (=> d!845835 (= c!493249 ((_ is EmptyExpr!9363) (derivativeStep!2624 (simplify!354 (regTwo!19238 r!17423)) (head!6683 s!11993))))))

(assert (=> d!845835 (= lt!1041610 e!1883753)))

(declare-fun c!493251 () Bool)

(assert (=> d!845835 (= c!493251 (isEmpty!19378 (tail!4909 s!11993)))))

(assert (=> d!845835 (validRegex!4096 (derivativeStep!2624 (simplify!354 (regTwo!19238 r!17423)) (head!6683 s!11993)))))

(assert (=> d!845835 (= (matchR!4245 (derivativeStep!2624 (simplify!354 (regTwo!19238 r!17423)) (head!6683 s!11993)) (tail!4909 s!11993)) lt!1041610)))

(declare-fun b!2997893 () Bool)

(assert (=> b!2997893 (= e!1883755 e!1883756)))

(declare-fun res!1236076 () Bool)

(assert (=> b!2997893 (=> res!1236076 e!1883756)))

(assert (=> b!2997893 (= res!1236076 call!201196)))

(declare-fun b!2997897 () Bool)

(assert (=> b!2997897 (= e!1883754 (= (head!6683 (tail!4909 s!11993)) (c!492681 (derivativeStep!2624 (simplify!354 (regTwo!19238 r!17423)) (head!6683 s!11993)))))))

(declare-fun b!2997898 () Bool)

(assert (=> b!2997898 (= e!1883751 (not lt!1041610))))

(declare-fun bm!201191 () Bool)

(assert (=> bm!201191 (= call!201196 (isEmpty!19378 (tail!4909 s!11993)))))

(declare-fun b!2997899 () Bool)

(declare-fun res!1236083 () Bool)

(assert (=> b!2997899 (=> res!1236083 e!1883752)))

(assert (=> b!2997899 (= res!1236083 (not ((_ is ElementMatch!9363) (derivativeStep!2624 (simplify!354 (regTwo!19238 r!17423)) (head!6683 s!11993)))))))

(assert (=> b!2997899 (= e!1883751 e!1883752)))

(assert (= (and d!845835 c!493251) b!2997892))

(assert (= (and d!845835 (not c!493251)) b!2997889))

(assert (= (and d!845835 c!493249) b!2997895))

(assert (= (and d!845835 (not c!493249)) b!2997887))

(assert (= (and b!2997887 c!493250) b!2997898))

(assert (= (and b!2997887 (not c!493250)) b!2997899))

(assert (= (and b!2997899 (not res!1236083)) b!2997894))

(assert (= (and b!2997894 res!1236079) b!2997891))

(assert (= (and b!2997891 res!1236082) b!2997896))

(assert (= (and b!2997896 res!1236077) b!2997897))

(assert (= (and b!2997894 (not res!1236078)) b!2997888))

(assert (= (and b!2997888 res!1236080) b!2997893))

(assert (= (and b!2997893 (not res!1236076)) b!2997886))

(assert (= (and b!2997886 (not res!1236081)) b!2997890))

(assert (= (or b!2997895 b!2997891 b!2997893) bm!201191))

(assert (=> b!2997886 m!3350001))

(assert (=> b!2997886 m!3350099))

(assert (=> b!2997886 m!3350099))

(assert (=> b!2997886 m!3350101))

(assert (=> b!2997889 m!3350001))

(assert (=> b!2997889 m!3350103))

(assert (=> b!2997889 m!3350249))

(assert (=> b!2997889 m!3350103))

(declare-fun m!3351021 () Bool)

(assert (=> b!2997889 m!3351021))

(assert (=> b!2997889 m!3350001))

(assert (=> b!2997889 m!3350099))

(assert (=> b!2997889 m!3351021))

(assert (=> b!2997889 m!3350099))

(declare-fun m!3351023 () Bool)

(assert (=> b!2997889 m!3351023))

(assert (=> b!2997896 m!3350001))

(assert (=> b!2997896 m!3350099))

(assert (=> b!2997896 m!3350099))

(assert (=> b!2997896 m!3350101))

(assert (=> b!2997892 m!3350249))

(declare-fun m!3351025 () Bool)

(assert (=> b!2997892 m!3351025))

(assert (=> d!845835 m!3350001))

(assert (=> d!845835 m!3350003))

(assert (=> d!845835 m!3350249))

(declare-fun m!3351027 () Bool)

(assert (=> d!845835 m!3351027))

(assert (=> bm!201191 m!3350001))

(assert (=> bm!201191 m!3350003))

(assert (=> b!2997897 m!3350001))

(assert (=> b!2997897 m!3350103))

(assert (=> b!2997890 m!3350001))

(assert (=> b!2997890 m!3350103))

(assert (=> b!2996672 d!845835))

(declare-fun b!2997900 () Bool)

(declare-fun e!1883759 () Regex!9363)

(declare-fun e!1883760 () Regex!9363)

(assert (=> b!2997900 (= e!1883759 e!1883760)))

(declare-fun c!493256 () Bool)

(assert (=> b!2997900 (= c!493256 ((_ is ElementMatch!9363) (simplify!354 (regTwo!19238 r!17423))))))

(declare-fun b!2997901 () Bool)

(declare-fun c!493253 () Bool)

(assert (=> b!2997901 (= c!493253 (nullable!3026 (regOne!19238 (simplify!354 (regTwo!19238 r!17423)))))))

(declare-fun e!1883761 () Regex!9363)

(declare-fun e!1883762 () Regex!9363)

(assert (=> b!2997901 (= e!1883761 e!1883762)))

(declare-fun b!2997902 () Bool)

(assert (=> b!2997902 (= e!1883759 EmptyLang!9363)))

(declare-fun b!2997903 () Bool)

(declare-fun call!201200 () Regex!9363)

(assert (=> b!2997903 (= e!1883762 (Union!9363 (Concat!14684 call!201200 (regTwo!19238 (simplify!354 (regTwo!19238 r!17423)))) EmptyLang!9363))))

(declare-fun b!2997904 () Bool)

(declare-fun call!201198 () Regex!9363)

(assert (=> b!2997904 (= e!1883761 (Concat!14684 call!201198 (simplify!354 (regTwo!19238 r!17423))))))

(declare-fun b!2997905 () Bool)

(declare-fun c!493255 () Bool)

(assert (=> b!2997905 (= c!493255 ((_ is Union!9363) (simplify!354 (regTwo!19238 r!17423))))))

(declare-fun e!1883758 () Regex!9363)

(assert (=> b!2997905 (= e!1883760 e!1883758)))

(declare-fun c!493254 () Bool)

(declare-fun call!201197 () Regex!9363)

(declare-fun bm!201193 () Bool)

(assert (=> bm!201193 (= call!201197 (derivativeStep!2624 (ite c!493255 (regTwo!19239 (simplify!354 (regTwo!19238 r!17423))) (ite c!493254 (reg!9692 (simplify!354 (regTwo!19238 r!17423))) (regOne!19238 (simplify!354 (regTwo!19238 r!17423))))) (head!6683 s!11993)))))

(declare-fun bm!201194 () Bool)

(assert (=> bm!201194 (= call!201200 call!201198)))

(declare-fun b!2997906 () Bool)

(assert (=> b!2997906 (= e!1883760 (ite (= (head!6683 s!11993) (c!492681 (simplify!354 (regTwo!19238 r!17423)))) EmptyExpr!9363 EmptyLang!9363))))

(declare-fun call!201199 () Regex!9363)

(declare-fun bm!201195 () Bool)

(assert (=> bm!201195 (= call!201199 (derivativeStep!2624 (ite c!493255 (regOne!19239 (simplify!354 (regTwo!19238 r!17423))) (regTwo!19238 (simplify!354 (regTwo!19238 r!17423)))) (head!6683 s!11993)))))

(declare-fun b!2997907 () Bool)

(assert (=> b!2997907 (= e!1883762 (Union!9363 (Concat!14684 call!201200 (regTwo!19238 (simplify!354 (regTwo!19238 r!17423)))) call!201199))))

(declare-fun d!845837 () Bool)

(declare-fun lt!1041611 () Regex!9363)

(assert (=> d!845837 (validRegex!4096 lt!1041611)))

(assert (=> d!845837 (= lt!1041611 e!1883759)))

(declare-fun c!493252 () Bool)

(assert (=> d!845837 (= c!493252 (or ((_ is EmptyExpr!9363) (simplify!354 (regTwo!19238 r!17423))) ((_ is EmptyLang!9363) (simplify!354 (regTwo!19238 r!17423)))))))

(assert (=> d!845837 (validRegex!4096 (simplify!354 (regTwo!19238 r!17423)))))

(assert (=> d!845837 (= (derivativeStep!2624 (simplify!354 (regTwo!19238 r!17423)) (head!6683 s!11993)) lt!1041611)))

(declare-fun bm!201192 () Bool)

(assert (=> bm!201192 (= call!201198 call!201197)))

(declare-fun b!2997908 () Bool)

(assert (=> b!2997908 (= e!1883758 e!1883761)))

(assert (=> b!2997908 (= c!493254 ((_ is Star!9363) (simplify!354 (regTwo!19238 r!17423))))))

(declare-fun b!2997909 () Bool)

(assert (=> b!2997909 (= e!1883758 (Union!9363 call!201199 call!201197))))

(assert (= (and d!845837 c!493252) b!2997902))

(assert (= (and d!845837 (not c!493252)) b!2997900))

(assert (= (and b!2997900 c!493256) b!2997906))

(assert (= (and b!2997900 (not c!493256)) b!2997905))

(assert (= (and b!2997905 c!493255) b!2997909))

(assert (= (and b!2997905 (not c!493255)) b!2997908))

(assert (= (and b!2997908 c!493254) b!2997904))

(assert (= (and b!2997908 (not c!493254)) b!2997901))

(assert (= (and b!2997901 c!493253) b!2997907))

(assert (= (and b!2997901 (not c!493253)) b!2997903))

(assert (= (or b!2997907 b!2997903) bm!201194))

(assert (= (or b!2997904 bm!201194) bm!201192))

(assert (= (or b!2997909 bm!201192) bm!201193))

(assert (= (or b!2997909 b!2997907) bm!201195))

(declare-fun m!3351029 () Bool)

(assert (=> b!2997901 m!3351029))

(assert (=> bm!201193 m!3350005))

(declare-fun m!3351031 () Bool)

(assert (=> bm!201193 m!3351031))

(assert (=> bm!201195 m!3350005))

(declare-fun m!3351033 () Bool)

(assert (=> bm!201195 m!3351033))

(declare-fun m!3351035 () Bool)

(assert (=> d!845837 m!3351035))

(assert (=> d!845837 m!3349913))

(assert (=> d!845837 m!3350255))

(assert (=> b!2996672 d!845837))

(assert (=> b!2996672 d!845473))

(assert (=> b!2996672 d!845481))

(declare-fun b!2997910 () Bool)

(declare-fun e!1883764 () Regex!9363)

(declare-fun e!1883765 () Regex!9363)

(assert (=> b!2997910 (= e!1883764 e!1883765)))

(declare-fun c!493261 () Bool)

(assert (=> b!2997910 (= c!493261 ((_ is ElementMatch!9363) (ite c!492893 (regOne!19239 (regTwo!19238 r!17423)) (regTwo!19238 (regTwo!19238 r!17423)))))))

(declare-fun b!2997911 () Bool)

(declare-fun c!493258 () Bool)

(assert (=> b!2997911 (= c!493258 (nullable!3026 (regOne!19238 (ite c!492893 (regOne!19239 (regTwo!19238 r!17423)) (regTwo!19238 (regTwo!19238 r!17423))))))))

(declare-fun e!1883766 () Regex!9363)

(declare-fun e!1883767 () Regex!9363)

(assert (=> b!2997911 (= e!1883766 e!1883767)))

(declare-fun b!2997912 () Bool)

(assert (=> b!2997912 (= e!1883764 EmptyLang!9363)))

(declare-fun call!201204 () Regex!9363)

(declare-fun b!2997913 () Bool)

(assert (=> b!2997913 (= e!1883767 (Union!9363 (Concat!14684 call!201204 (regTwo!19238 (ite c!492893 (regOne!19239 (regTwo!19238 r!17423)) (regTwo!19238 (regTwo!19238 r!17423))))) EmptyLang!9363))))

(declare-fun b!2997914 () Bool)

(declare-fun call!201202 () Regex!9363)

(assert (=> b!2997914 (= e!1883766 (Concat!14684 call!201202 (ite c!492893 (regOne!19239 (regTwo!19238 r!17423)) (regTwo!19238 (regTwo!19238 r!17423)))))))

(declare-fun b!2997915 () Bool)

(declare-fun c!493260 () Bool)

(assert (=> b!2997915 (= c!493260 ((_ is Union!9363) (ite c!492893 (regOne!19239 (regTwo!19238 r!17423)) (regTwo!19238 (regTwo!19238 r!17423)))))))

(declare-fun e!1883763 () Regex!9363)

(assert (=> b!2997915 (= e!1883765 e!1883763)))

(declare-fun c!493259 () Bool)

(declare-fun call!201201 () Regex!9363)

(declare-fun bm!201197 () Bool)

(assert (=> bm!201197 (= call!201201 (derivativeStep!2624 (ite c!493260 (regTwo!19239 (ite c!492893 (regOne!19239 (regTwo!19238 r!17423)) (regTwo!19238 (regTwo!19238 r!17423)))) (ite c!493259 (reg!9692 (ite c!492893 (regOne!19239 (regTwo!19238 r!17423)) (regTwo!19238 (regTwo!19238 r!17423)))) (regOne!19238 (ite c!492893 (regOne!19239 (regTwo!19238 r!17423)) (regTwo!19238 (regTwo!19238 r!17423)))))) (head!6683 s!11993)))))

(declare-fun bm!201198 () Bool)

(assert (=> bm!201198 (= call!201204 call!201202)))

(declare-fun b!2997916 () Bool)

(assert (=> b!2997916 (= e!1883765 (ite (= (head!6683 s!11993) (c!492681 (ite c!492893 (regOne!19239 (regTwo!19238 r!17423)) (regTwo!19238 (regTwo!19238 r!17423))))) EmptyExpr!9363 EmptyLang!9363))))

(declare-fun bm!201199 () Bool)

(declare-fun call!201203 () Regex!9363)

(assert (=> bm!201199 (= call!201203 (derivativeStep!2624 (ite c!493260 (regOne!19239 (ite c!492893 (regOne!19239 (regTwo!19238 r!17423)) (regTwo!19238 (regTwo!19238 r!17423)))) (regTwo!19238 (ite c!492893 (regOne!19239 (regTwo!19238 r!17423)) (regTwo!19238 (regTwo!19238 r!17423))))) (head!6683 s!11993)))))

(declare-fun b!2997917 () Bool)

(assert (=> b!2997917 (= e!1883767 (Union!9363 (Concat!14684 call!201204 (regTwo!19238 (ite c!492893 (regOne!19239 (regTwo!19238 r!17423)) (regTwo!19238 (regTwo!19238 r!17423))))) call!201203))))

(declare-fun d!845839 () Bool)

(declare-fun lt!1041612 () Regex!9363)

(assert (=> d!845839 (validRegex!4096 lt!1041612)))

(assert (=> d!845839 (= lt!1041612 e!1883764)))

(declare-fun c!493257 () Bool)

(assert (=> d!845839 (= c!493257 (or ((_ is EmptyExpr!9363) (ite c!492893 (regOne!19239 (regTwo!19238 r!17423)) (regTwo!19238 (regTwo!19238 r!17423)))) ((_ is EmptyLang!9363) (ite c!492893 (regOne!19239 (regTwo!19238 r!17423)) (regTwo!19238 (regTwo!19238 r!17423))))))))

(assert (=> d!845839 (validRegex!4096 (ite c!492893 (regOne!19239 (regTwo!19238 r!17423)) (regTwo!19238 (regTwo!19238 r!17423))))))

(assert (=> d!845839 (= (derivativeStep!2624 (ite c!492893 (regOne!19239 (regTwo!19238 r!17423)) (regTwo!19238 (regTwo!19238 r!17423))) (head!6683 s!11993)) lt!1041612)))

(declare-fun bm!201196 () Bool)

(assert (=> bm!201196 (= call!201202 call!201201)))

(declare-fun b!2997918 () Bool)

(assert (=> b!2997918 (= e!1883763 e!1883766)))

(assert (=> b!2997918 (= c!493259 ((_ is Star!9363) (ite c!492893 (regOne!19239 (regTwo!19238 r!17423)) (regTwo!19238 (regTwo!19238 r!17423)))))))

(declare-fun b!2997919 () Bool)

(assert (=> b!2997919 (= e!1883763 (Union!9363 call!201203 call!201201))))

(assert (= (and d!845839 c!493257) b!2997912))

(assert (= (and d!845839 (not c!493257)) b!2997910))

(assert (= (and b!2997910 c!493261) b!2997916))

(assert (= (and b!2997910 (not c!493261)) b!2997915))

(assert (= (and b!2997915 c!493260) b!2997919))

(assert (= (and b!2997915 (not c!493260)) b!2997918))

(assert (= (and b!2997918 c!493259) b!2997914))

(assert (= (and b!2997918 (not c!493259)) b!2997911))

(assert (= (and b!2997911 c!493258) b!2997917))

(assert (= (and b!2997911 (not c!493258)) b!2997913))

(assert (= (or b!2997917 b!2997913) bm!201198))

(assert (= (or b!2997914 bm!201198) bm!201196))

(assert (= (or b!2997919 bm!201196) bm!201197))

(assert (= (or b!2997919 b!2997917) bm!201199))

(declare-fun m!3351037 () Bool)

(assert (=> b!2997911 m!3351037))

(assert (=> bm!201197 m!3350005))

(declare-fun m!3351039 () Bool)

(assert (=> bm!201197 m!3351039))

(assert (=> bm!201199 m!3350005))

(declare-fun m!3351041 () Bool)

(assert (=> bm!201199 m!3351041))

(declare-fun m!3351043 () Bool)

(assert (=> d!845839 m!3351043))

(declare-fun m!3351045 () Bool)

(assert (=> d!845839 m!3351045))

(assert (=> bm!200879 d!845839))

(declare-fun d!845841 () Bool)

(assert (=> d!845841 (= (nullable!3026 (reg!9692 (ite c!492692 (regTwo!19239 r!17423) (regOne!19238 r!17423)))) (nullableFct!860 (reg!9692 (ite c!492692 (regTwo!19239 r!17423) (regOne!19238 r!17423)))))))

(declare-fun bs!528207 () Bool)

(assert (= bs!528207 d!845841))

(declare-fun m!3351047 () Bool)

(assert (=> bs!528207 m!3351047))

(assert (=> b!2996776 d!845841))

(declare-fun b!2997920 () Bool)

(declare-fun e!1883770 () Bool)

(declare-fun e!1883771 () Bool)

(assert (=> b!2997920 (= e!1883770 e!1883771)))

(declare-fun res!1236087 () Bool)

(declare-fun call!201205 () Bool)

(assert (=> b!2997920 (= res!1236087 call!201205)))

(assert (=> b!2997920 (=> res!1236087 e!1883771)))

(declare-fun b!2997921 () Bool)

(declare-fun e!1883772 () Bool)

(assert (=> b!2997921 (= e!1883770 e!1883772)))

(declare-fun res!1236084 () Bool)

(assert (=> b!2997921 (= res!1236084 call!201205)))

(assert (=> b!2997921 (=> (not res!1236084) (not e!1883772))))

(declare-fun bm!201200 () Bool)

(declare-fun call!201206 () Bool)

(declare-fun c!493262 () Bool)

(assert (=> bm!201200 (= call!201206 (nullable!3026 (ite c!493262 (regTwo!19239 lt!1041450) (regTwo!19238 lt!1041450))))))

(declare-fun b!2997922 () Bool)

(declare-fun e!1883769 () Bool)

(declare-fun e!1883773 () Bool)

(assert (=> b!2997922 (= e!1883769 e!1883773)))

(declare-fun res!1236086 () Bool)

(assert (=> b!2997922 (=> res!1236086 e!1883773)))

(assert (=> b!2997922 (= res!1236086 ((_ is Star!9363) lt!1041450))))

(declare-fun b!2997923 () Bool)

(assert (=> b!2997923 (= e!1883771 call!201206)))

(declare-fun d!845843 () Bool)

(declare-fun res!1236085 () Bool)

(declare-fun e!1883768 () Bool)

(assert (=> d!845843 (=> res!1236085 e!1883768)))

(assert (=> d!845843 (= res!1236085 ((_ is EmptyExpr!9363) lt!1041450))))

(assert (=> d!845843 (= (nullableFct!860 lt!1041450) e!1883768)))

(declare-fun bm!201201 () Bool)

(assert (=> bm!201201 (= call!201205 (nullable!3026 (ite c!493262 (regOne!19239 lt!1041450) (regOne!19238 lt!1041450))))))

(declare-fun b!2997924 () Bool)

(assert (=> b!2997924 (= e!1883773 e!1883770)))

(assert (=> b!2997924 (= c!493262 ((_ is Union!9363) lt!1041450))))

(declare-fun b!2997925 () Bool)

(assert (=> b!2997925 (= e!1883768 e!1883769)))

(declare-fun res!1236088 () Bool)

(assert (=> b!2997925 (=> (not res!1236088) (not e!1883769))))

(assert (=> b!2997925 (= res!1236088 (and (not ((_ is EmptyLang!9363) lt!1041450)) (not ((_ is ElementMatch!9363) lt!1041450))))))

(declare-fun b!2997926 () Bool)

(assert (=> b!2997926 (= e!1883772 call!201206)))

(assert (= (and d!845843 (not res!1236085)) b!2997925))

(assert (= (and b!2997925 res!1236088) b!2997922))

(assert (= (and b!2997922 (not res!1236086)) b!2997924))

(assert (= (and b!2997924 c!493262) b!2997920))

(assert (= (and b!2997924 (not c!493262)) b!2997921))

(assert (= (and b!2997920 (not res!1236087)) b!2997923))

(assert (= (and b!2997921 res!1236084) b!2997926))

(assert (= (or b!2997923 b!2997926) bm!201200))

(assert (= (or b!2997920 b!2997921) bm!201201))

(declare-fun m!3351049 () Bool)

(assert (=> bm!201200 m!3351049))

(declare-fun m!3351051 () Bool)

(assert (=> bm!201201 m!3351051))

(assert (=> d!845523 d!845843))

(declare-fun b!2997927 () Bool)

(declare-fun e!1883781 () Regex!9363)

(declare-fun lt!1041615 () Regex!9363)

(assert (=> b!2997927 (= e!1883781 lt!1041615)))

(declare-fun c!493265 () Bool)

(declare-fun c!493263 () Bool)

(declare-fun bm!201202 () Bool)

(declare-fun call!201208 () Regex!9363)

(assert (=> bm!201202 (= call!201208 (simplify!354 (ite c!493265 (reg!9692 (ite c!492921 (reg!9692 (ite c!492741 (regTwo!19239 (regOne!19238 r!17423)) (regOne!19238 (regOne!19238 r!17423)))) (ite c!492919 (regOne!19239 (ite c!492741 (regTwo!19239 (regOne!19238 r!17423)) (regOne!19238 (regOne!19238 r!17423)))) (regTwo!19238 (ite c!492741 (regTwo!19239 (regOne!19238 r!17423)) (regOne!19238 (regOne!19238 r!17423))))))) (ite c!493263 (regOne!19239 (ite c!492921 (reg!9692 (ite c!492741 (regTwo!19239 (regOne!19238 r!17423)) (regOne!19238 (regOne!19238 r!17423)))) (ite c!492919 (regOne!19239 (ite c!492741 (regTwo!19239 (regOne!19238 r!17423)) (regOne!19238 (regOne!19238 r!17423)))) (regTwo!19238 (ite c!492741 (regTwo!19239 (regOne!19238 r!17423)) (regOne!19238 (regOne!19238 r!17423))))))) (regTwo!19238 (ite c!492921 (reg!9692 (ite c!492741 (regTwo!19239 (regOne!19238 r!17423)) (regOne!19238 (regOne!19238 r!17423)))) (ite c!492919 (regOne!19239 (ite c!492741 (regTwo!19239 (regOne!19238 r!17423)) (regOne!19238 (regOne!19238 r!17423)))) (regTwo!19238 (ite c!492741 (regTwo!19239 (regOne!19238 r!17423)) (regOne!19238 (regOne!19238 r!17423)))))))))))))

(declare-fun b!2997929 () Bool)

(declare-fun e!1883782 () Regex!9363)

(declare-fun lt!1041614 () Regex!9363)

(assert (=> b!2997929 (= e!1883782 (Star!9363 lt!1041614))))

(declare-fun b!2997930 () Bool)

(declare-fun c!493267 () Bool)

(declare-fun lt!1041613 () Regex!9363)

(assert (=> b!2997930 (= c!493267 (isEmptyExpr!470 lt!1041613))))

(declare-fun e!1883779 () Regex!9363)

(declare-fun e!1883783 () Regex!9363)

(assert (=> b!2997930 (= e!1883779 e!1883783)))

(declare-fun b!2997931 () Bool)

(declare-fun e!1883775 () Regex!9363)

(assert (=> b!2997931 (= e!1883775 (ite c!492921 (reg!9692 (ite c!492741 (regTwo!19239 (regOne!19238 r!17423)) (regOne!19238 (regOne!19238 r!17423)))) (ite c!492919 (regOne!19239 (ite c!492741 (regTwo!19239 (regOne!19238 r!17423)) (regOne!19238 (regOne!19238 r!17423)))) (regTwo!19238 (ite c!492741 (regTwo!19239 (regOne!19238 r!17423)) (regOne!19238 (regOne!19238 r!17423)))))))))

(declare-fun bm!201203 () Bool)

(declare-fun call!201210 () Bool)

(assert (=> bm!201203 (= call!201210 (isEmptyLang!453 (ite c!493263 lt!1041615 lt!1041613)))))

(declare-fun bm!201204 () Bool)

(declare-fun call!201213 () Bool)

(declare-fun call!201209 () Bool)

(assert (=> bm!201204 (= call!201213 call!201209)))

(declare-fun bm!201205 () Bool)

(declare-fun lt!1041616 () Regex!9363)

(declare-fun lt!1041618 () Regex!9363)

(assert (=> bm!201205 (= call!201209 (isEmptyLang!453 (ite c!493265 lt!1041614 (ite c!493263 lt!1041618 lt!1041616))))))

(declare-fun b!2997932 () Bool)

(assert (=> b!2997932 (= c!493263 ((_ is Union!9363) (ite c!492921 (reg!9692 (ite c!492741 (regTwo!19239 (regOne!19238 r!17423)) (regOne!19238 (regOne!19238 r!17423)))) (ite c!492919 (regOne!19239 (ite c!492741 (regTwo!19239 (regOne!19238 r!17423)) (regOne!19238 (regOne!19238 r!17423)))) (regTwo!19238 (ite c!492741 (regTwo!19239 (regOne!19238 r!17423)) (regOne!19238 (regOne!19238 r!17423))))))))))

(declare-fun e!1883786 () Regex!9363)

(declare-fun e!1883774 () Regex!9363)

(assert (=> b!2997932 (= e!1883786 e!1883774)))

(declare-fun b!2997933 () Bool)

(declare-fun e!1883778 () Regex!9363)

(assert (=> b!2997933 (= e!1883778 (Concat!14684 lt!1041613 lt!1041616))))

(declare-fun b!2997934 () Bool)

(assert (=> b!2997934 (= e!1883781 (Union!9363 lt!1041615 lt!1041618))))

(declare-fun b!2997935 () Bool)

(declare-fun c!493266 () Bool)

(assert (=> b!2997935 (= c!493266 call!201213)))

(declare-fun e!1883787 () Regex!9363)

(assert (=> b!2997935 (= e!1883787 e!1883781)))

(declare-fun b!2997936 () Bool)

(assert (=> b!2997936 (= e!1883779 EmptyLang!9363)))

(declare-fun b!2997937 () Bool)

(assert (=> b!2997937 (= e!1883783 lt!1041616)))

(declare-fun b!2997938 () Bool)

(assert (=> b!2997938 (= e!1883783 e!1883778)))

(declare-fun c!493273 () Bool)

(declare-fun call!201207 () Bool)

(assert (=> b!2997938 (= c!493273 call!201207)))

(declare-fun b!2997939 () Bool)

(assert (=> b!2997939 (= e!1883782 EmptyExpr!9363)))

(declare-fun b!2997940 () Bool)

(assert (=> b!2997940 (= e!1883778 lt!1041613)))

(declare-fun b!2997941 () Bool)

(assert (=> b!2997941 (= e!1883774 e!1883787)))

(declare-fun call!201211 () Regex!9363)

(assert (=> b!2997941 (= lt!1041615 call!201211)))

(declare-fun call!201212 () Regex!9363)

(assert (=> b!2997941 (= lt!1041618 call!201212)))

(declare-fun c!493264 () Bool)

(assert (=> b!2997941 (= c!493264 call!201210)))

(declare-fun bm!201206 () Bool)

(assert (=> bm!201206 (= call!201207 (isEmptyExpr!470 (ite c!493265 lt!1041614 lt!1041616)))))

(declare-fun b!2997942 () Bool)

(declare-fun lt!1041617 () Regex!9363)

(declare-fun e!1883785 () Bool)

(assert (=> b!2997942 (= e!1883785 (= (nullable!3026 lt!1041617) (nullable!3026 (ite c!492921 (reg!9692 (ite c!492741 (regTwo!19239 (regOne!19238 r!17423)) (regOne!19238 (regOne!19238 r!17423)))) (ite c!492919 (regOne!19239 (ite c!492741 (regTwo!19239 (regOne!19238 r!17423)) (regOne!19238 (regOne!19238 r!17423)))) (regTwo!19238 (ite c!492741 (regTwo!19239 (regOne!19238 r!17423)) (regOne!19238 (regOne!19238 r!17423)))))))))))

(declare-fun b!2997928 () Bool)

(declare-fun e!1883776 () Regex!9363)

(assert (=> b!2997928 (= e!1883776 e!1883775)))

(declare-fun c!493269 () Bool)

(assert (=> b!2997928 (= c!493269 ((_ is ElementMatch!9363) (ite c!492921 (reg!9692 (ite c!492741 (regTwo!19239 (regOne!19238 r!17423)) (regOne!19238 (regOne!19238 r!17423)))) (ite c!492919 (regOne!19239 (ite c!492741 (regTwo!19239 (regOne!19238 r!17423)) (regOne!19238 (regOne!19238 r!17423)))) (regTwo!19238 (ite c!492741 (regTwo!19239 (regOne!19238 r!17423)) (regOne!19238 (regOne!19238 r!17423))))))))))

(declare-fun d!845845 () Bool)

(assert (=> d!845845 e!1883785))

(declare-fun res!1236091 () Bool)

(assert (=> d!845845 (=> (not res!1236091) (not e!1883785))))

(assert (=> d!845845 (= res!1236091 (validRegex!4096 lt!1041617))))

(assert (=> d!845845 (= lt!1041617 e!1883776)))

(declare-fun c!493271 () Bool)

(assert (=> d!845845 (= c!493271 ((_ is EmptyLang!9363) (ite c!492921 (reg!9692 (ite c!492741 (regTwo!19239 (regOne!19238 r!17423)) (regOne!19238 (regOne!19238 r!17423)))) (ite c!492919 (regOne!19239 (ite c!492741 (regTwo!19239 (regOne!19238 r!17423)) (regOne!19238 (regOne!19238 r!17423)))) (regTwo!19238 (ite c!492741 (regTwo!19239 (regOne!19238 r!17423)) (regOne!19238 (regOne!19238 r!17423))))))))))

(assert (=> d!845845 (validRegex!4096 (ite c!492921 (reg!9692 (ite c!492741 (regTwo!19239 (regOne!19238 r!17423)) (regOne!19238 (regOne!19238 r!17423)))) (ite c!492919 (regOne!19239 (ite c!492741 (regTwo!19239 (regOne!19238 r!17423)) (regOne!19238 (regOne!19238 r!17423)))) (regTwo!19238 (ite c!492741 (regTwo!19239 (regOne!19238 r!17423)) (regOne!19238 (regOne!19238 r!17423)))))))))

(assert (=> d!845845 (= (simplify!354 (ite c!492921 (reg!9692 (ite c!492741 (regTwo!19239 (regOne!19238 r!17423)) (regOne!19238 (regOne!19238 r!17423)))) (ite c!492919 (regOne!19239 (ite c!492741 (regTwo!19239 (regOne!19238 r!17423)) (regOne!19238 (regOne!19238 r!17423)))) (regTwo!19238 (ite c!492741 (regTwo!19239 (regOne!19238 r!17423)) (regOne!19238 (regOne!19238 r!17423))))))) lt!1041617)))

(declare-fun b!2997943 () Bool)

(declare-fun e!1883784 () Bool)

(assert (=> b!2997943 (= e!1883784 call!201213)))

(declare-fun bm!201207 () Bool)

(assert (=> bm!201207 (= call!201211 call!201208)))

(declare-fun b!2997944 () Bool)

(declare-fun c!493270 () Bool)

(declare-fun e!1883777 () Bool)

(assert (=> b!2997944 (= c!493270 e!1883777)))

(declare-fun res!1236090 () Bool)

(assert (=> b!2997944 (=> res!1236090 e!1883777)))

(assert (=> b!2997944 (= res!1236090 call!201209)))

(assert (=> b!2997944 (= lt!1041614 call!201208)))

(assert (=> b!2997944 (= e!1883786 e!1883782)))

(declare-fun b!2997945 () Bool)

(assert (=> b!2997945 (= e!1883777 call!201207)))

(declare-fun b!2997946 () Bool)

(assert (=> b!2997946 (= e!1883776 EmptyLang!9363)))

(declare-fun b!2997947 () Bool)

(assert (=> b!2997947 (= e!1883774 e!1883779)))

(assert (=> b!2997947 (= lt!1041613 call!201212)))

(assert (=> b!2997947 (= lt!1041616 call!201211)))

(declare-fun res!1236089 () Bool)

(assert (=> b!2997947 (= res!1236089 call!201210)))

(assert (=> b!2997947 (=> res!1236089 e!1883784)))

(declare-fun c!493268 () Bool)

(assert (=> b!2997947 (= c!493268 e!1883784)))

(declare-fun b!2997948 () Bool)

(declare-fun e!1883780 () Regex!9363)

(assert (=> b!2997948 (= e!1883780 e!1883786)))

(assert (=> b!2997948 (= c!493265 ((_ is Star!9363) (ite c!492921 (reg!9692 (ite c!492741 (regTwo!19239 (regOne!19238 r!17423)) (regOne!19238 (regOne!19238 r!17423)))) (ite c!492919 (regOne!19239 (ite c!492741 (regTwo!19239 (regOne!19238 r!17423)) (regOne!19238 (regOne!19238 r!17423)))) (regTwo!19238 (ite c!492741 (regTwo!19239 (regOne!19238 r!17423)) (regOne!19238 (regOne!19238 r!17423))))))))))

(declare-fun b!2997949 () Bool)

(assert (=> b!2997949 (= e!1883780 EmptyExpr!9363)))

(declare-fun b!2997950 () Bool)

(declare-fun c!493272 () Bool)

(assert (=> b!2997950 (= c!493272 ((_ is EmptyExpr!9363) (ite c!492921 (reg!9692 (ite c!492741 (regTwo!19239 (regOne!19238 r!17423)) (regOne!19238 (regOne!19238 r!17423)))) (ite c!492919 (regOne!19239 (ite c!492741 (regTwo!19239 (regOne!19238 r!17423)) (regOne!19238 (regOne!19238 r!17423)))) (regTwo!19238 (ite c!492741 (regTwo!19239 (regOne!19238 r!17423)) (regOne!19238 (regOne!19238 r!17423))))))))))

(assert (=> b!2997950 (= e!1883775 e!1883780)))

(declare-fun b!2997951 () Bool)

(assert (=> b!2997951 (= e!1883787 lt!1041618)))

(declare-fun bm!201208 () Bool)

(assert (=> bm!201208 (= call!201212 (simplify!354 (ite c!493263 (regTwo!19239 (ite c!492921 (reg!9692 (ite c!492741 (regTwo!19239 (regOne!19238 r!17423)) (regOne!19238 (regOne!19238 r!17423)))) (ite c!492919 (regOne!19239 (ite c!492741 (regTwo!19239 (regOne!19238 r!17423)) (regOne!19238 (regOne!19238 r!17423)))) (regTwo!19238 (ite c!492741 (regTwo!19239 (regOne!19238 r!17423)) (regOne!19238 (regOne!19238 r!17423))))))) (regOne!19238 (ite c!492921 (reg!9692 (ite c!492741 (regTwo!19239 (regOne!19238 r!17423)) (regOne!19238 (regOne!19238 r!17423)))) (ite c!492919 (regOne!19239 (ite c!492741 (regTwo!19239 (regOne!19238 r!17423)) (regOne!19238 (regOne!19238 r!17423)))) (regTwo!19238 (ite c!492741 (regTwo!19239 (regOne!19238 r!17423)) (regOne!19238 (regOne!19238 r!17423))))))))))))

(assert (= (and d!845845 c!493271) b!2997946))

(assert (= (and d!845845 (not c!493271)) b!2997928))

(assert (= (and b!2997928 c!493269) b!2997931))

(assert (= (and b!2997928 (not c!493269)) b!2997950))

(assert (= (and b!2997950 c!493272) b!2997949))

(assert (= (and b!2997950 (not c!493272)) b!2997948))

(assert (= (and b!2997948 c!493265) b!2997944))

(assert (= (and b!2997948 (not c!493265)) b!2997932))

(assert (= (and b!2997944 (not res!1236090)) b!2997945))

(assert (= (and b!2997944 c!493270) b!2997939))

(assert (= (and b!2997944 (not c!493270)) b!2997929))

(assert (= (and b!2997932 c!493263) b!2997941))

(assert (= (and b!2997932 (not c!493263)) b!2997947))

(assert (= (and b!2997941 c!493264) b!2997951))

(assert (= (and b!2997941 (not c!493264)) b!2997935))

(assert (= (and b!2997935 c!493266) b!2997927))

(assert (= (and b!2997935 (not c!493266)) b!2997934))

(assert (= (and b!2997947 (not res!1236089)) b!2997943))

(assert (= (and b!2997947 c!493268) b!2997936))

(assert (= (and b!2997947 (not c!493268)) b!2997930))

(assert (= (and b!2997930 c!493267) b!2997937))

(assert (= (and b!2997930 (not c!493267)) b!2997938))

(assert (= (and b!2997938 c!493273) b!2997940))

(assert (= (and b!2997938 (not c!493273)) b!2997933))

(assert (= (or b!2997941 b!2997947) bm!201207))

(assert (= (or b!2997941 b!2997947) bm!201208))

(assert (= (or b!2997941 b!2997947) bm!201203))

(assert (= (or b!2997935 b!2997943) bm!201204))

(assert (= (or b!2997945 b!2997938) bm!201206))

(assert (= (or b!2997944 bm!201207) bm!201202))

(assert (= (or b!2997944 bm!201204) bm!201205))

(assert (= (and d!845845 res!1236091) b!2997942))

(declare-fun m!3351053 () Bool)

(assert (=> bm!201203 m!3351053))

(declare-fun m!3351055 () Bool)

(assert (=> b!2997942 m!3351055))

(declare-fun m!3351057 () Bool)

(assert (=> b!2997942 m!3351057))

(declare-fun m!3351059 () Bool)

(assert (=> bm!201208 m!3351059))

(declare-fun m!3351061 () Bool)

(assert (=> bm!201202 m!3351061))

(declare-fun m!3351063 () Bool)

(assert (=> bm!201206 m!3351063))

(declare-fun m!3351065 () Bool)

(assert (=> d!845845 m!3351065))

(declare-fun m!3351067 () Bool)

(assert (=> d!845845 m!3351067))

(declare-fun m!3351069 () Bool)

(assert (=> b!2997930 m!3351069))

(declare-fun m!3351071 () Bool)

(assert (=> bm!201205 m!3351071))

(assert (=> bm!200899 d!845845))

(declare-fun bs!528208 () Bool)

(declare-fun b!2997959 () Bool)

(assert (= bs!528208 (and b!2997959 b!2996377)))

(declare-fun lambda!112057 () Int)

(assert (=> bs!528208 (= (and (= (reg!9692 (regOne!19239 (regTwo!19239 r!17423))) (reg!9692 r!17423)) (= (regOne!19239 (regTwo!19239 r!17423)) r!17423)) (= lambda!112057 lambda!112041))))

(declare-fun bs!528209 () Bool)

(assert (= bs!528209 (and b!2997959 b!2996437)))

(assert (=> bs!528209 (not (= lambda!112057 lambda!112044))))

(declare-fun bs!528210 () Bool)

(assert (= bs!528210 (and b!2997959 b!2996373)))

(assert (=> bs!528210 (not (= lambda!112057 lambda!112042))))

(declare-fun bs!528211 () Bool)

(assert (= bs!528211 (and b!2997959 b!2997391)))

(assert (=> bs!528211 (not (= lambda!112057 lambda!112052))))

(declare-fun bs!528212 () Bool)

(assert (= bs!528212 (and b!2997959 b!2996441)))

(assert (=> bs!528212 (= (and (= (reg!9692 (regOne!19239 (regTwo!19239 r!17423))) (reg!9692 (regOne!19239 r!17423))) (= (regOne!19239 (regTwo!19239 r!17423)) (regOne!19239 r!17423))) (= lambda!112057 lambda!112043))))

(declare-fun bs!528213 () Bool)

(assert (= bs!528213 (and b!2997959 b!2997831)))

(assert (=> bs!528213 (not (= lambda!112057 lambda!112056))))

(declare-fun bs!528214 () Bool)

(assert (= bs!528214 (and b!2997959 b!2997578)))

(assert (=> bs!528214 (= (and (= (reg!9692 (regOne!19239 (regTwo!19239 r!17423))) (reg!9692 (regOne!19239 (regOne!19239 r!17423)))) (= (regOne!19239 (regTwo!19239 r!17423)) (regOne!19239 (regOne!19239 r!17423)))) (= lambda!112057 lambda!112053))))

(declare-fun bs!528215 () Bool)

(assert (= bs!528215 (and b!2997959 b!2997835)))

(assert (=> bs!528215 (= (and (= (reg!9692 (regOne!19239 (regTwo!19239 r!17423))) (reg!9692 (regTwo!19239 (regTwo!19239 r!17423)))) (= (regOne!19239 (regTwo!19239 r!17423)) (regTwo!19239 (regTwo!19239 r!17423)))) (= lambda!112057 lambda!112055))))

(declare-fun bs!528216 () Bool)

(assert (= bs!528216 (and b!2997959 b!2996783)))

(assert (=> bs!528216 (not (= lambda!112057 lambda!112048))))

(declare-fun bs!528217 () Bool)

(assert (= bs!528217 (and b!2997959 b!2997574)))

(assert (=> bs!528217 (not (= lambda!112057 lambda!112054))))

(declare-fun bs!528218 () Bool)

(assert (= bs!528218 (and b!2997959 b!2996787)))

(assert (=> bs!528218 (= (and (= (reg!9692 (regOne!19239 (regTwo!19239 r!17423))) (reg!9692 (regTwo!19239 r!17423))) (= (regOne!19239 (regTwo!19239 r!17423)) (regTwo!19239 r!17423))) (= lambda!112057 lambda!112047))))

(declare-fun bs!528219 () Bool)

(assert (= bs!528219 (and b!2997959 b!2997395)))

(assert (=> bs!528219 (= (and (= (reg!9692 (regOne!19239 (regTwo!19239 r!17423))) (reg!9692 (regTwo!19239 (regOne!19239 r!17423)))) (= (regOne!19239 (regTwo!19239 r!17423)) (regTwo!19239 (regOne!19239 r!17423)))) (= lambda!112057 lambda!112051))))

(assert (=> b!2997959 true))

(assert (=> b!2997959 true))

(declare-fun bs!528220 () Bool)

(declare-fun b!2997955 () Bool)

(assert (= bs!528220 (and b!2997955 b!2996377)))

(declare-fun lambda!112058 () Int)

(assert (=> bs!528220 (not (= lambda!112058 lambda!112041))))

(declare-fun bs!528221 () Bool)

(assert (= bs!528221 (and b!2997955 b!2996437)))

(assert (=> bs!528221 (= (and (= (regOne!19238 (regOne!19239 (regTwo!19239 r!17423))) (regOne!19238 (regOne!19239 r!17423))) (= (regTwo!19238 (regOne!19239 (regTwo!19239 r!17423))) (regTwo!19238 (regOne!19239 r!17423)))) (= lambda!112058 lambda!112044))))

(declare-fun bs!528222 () Bool)

(assert (= bs!528222 (and b!2997955 b!2996373)))

(assert (=> bs!528222 (= (and (= (regOne!19238 (regOne!19239 (regTwo!19239 r!17423))) (regOne!19238 r!17423)) (= (regTwo!19238 (regOne!19239 (regTwo!19239 r!17423))) (regTwo!19238 r!17423))) (= lambda!112058 lambda!112042))))

(declare-fun bs!528223 () Bool)

(assert (= bs!528223 (and b!2997955 b!2997391)))

(assert (=> bs!528223 (= (and (= (regOne!19238 (regOne!19239 (regTwo!19239 r!17423))) (regOne!19238 (regTwo!19239 (regOne!19239 r!17423)))) (= (regTwo!19238 (regOne!19239 (regTwo!19239 r!17423))) (regTwo!19238 (regTwo!19239 (regOne!19239 r!17423))))) (= lambda!112058 lambda!112052))))

(declare-fun bs!528224 () Bool)

(assert (= bs!528224 (and b!2997955 b!2996441)))

(assert (=> bs!528224 (not (= lambda!112058 lambda!112043))))

(declare-fun bs!528225 () Bool)

(assert (= bs!528225 (and b!2997955 b!2997831)))

(assert (=> bs!528225 (= (and (= (regOne!19238 (regOne!19239 (regTwo!19239 r!17423))) (regOne!19238 (regTwo!19239 (regTwo!19239 r!17423)))) (= (regTwo!19238 (regOne!19239 (regTwo!19239 r!17423))) (regTwo!19238 (regTwo!19239 (regTwo!19239 r!17423))))) (= lambda!112058 lambda!112056))))

(declare-fun bs!528226 () Bool)

(assert (= bs!528226 (and b!2997955 b!2997578)))

(assert (=> bs!528226 (not (= lambda!112058 lambda!112053))))

(declare-fun bs!528227 () Bool)

(assert (= bs!528227 (and b!2997955 b!2997959)))

(assert (=> bs!528227 (not (= lambda!112058 lambda!112057))))

(declare-fun bs!528228 () Bool)

(assert (= bs!528228 (and b!2997955 b!2997835)))

(assert (=> bs!528228 (not (= lambda!112058 lambda!112055))))

(declare-fun bs!528229 () Bool)

(assert (= bs!528229 (and b!2997955 b!2996783)))

(assert (=> bs!528229 (= (and (= (regOne!19238 (regOne!19239 (regTwo!19239 r!17423))) (regOne!19238 (regTwo!19239 r!17423))) (= (regTwo!19238 (regOne!19239 (regTwo!19239 r!17423))) (regTwo!19238 (regTwo!19239 r!17423)))) (= lambda!112058 lambda!112048))))

(declare-fun bs!528230 () Bool)

(assert (= bs!528230 (and b!2997955 b!2997574)))

(assert (=> bs!528230 (= (and (= (regOne!19238 (regOne!19239 (regTwo!19239 r!17423))) (regOne!19238 (regOne!19239 (regOne!19239 r!17423)))) (= (regTwo!19238 (regOne!19239 (regTwo!19239 r!17423))) (regTwo!19238 (regOne!19239 (regOne!19239 r!17423))))) (= lambda!112058 lambda!112054))))

(declare-fun bs!528231 () Bool)

(assert (= bs!528231 (and b!2997955 b!2996787)))

(assert (=> bs!528231 (not (= lambda!112058 lambda!112047))))

(declare-fun bs!528232 () Bool)

(assert (= bs!528232 (and b!2997955 b!2997395)))

(assert (=> bs!528232 (not (= lambda!112058 lambda!112051))))

(assert (=> b!2997955 true))

(assert (=> b!2997955 true))

(declare-fun bm!201209 () Bool)

(declare-fun call!201215 () Bool)

(assert (=> bm!201209 (= call!201215 (isEmpty!19378 s!11993))))

(declare-fun b!2997952 () Bool)

(declare-fun c!493274 () Bool)

(assert (=> b!2997952 (= c!493274 ((_ is Union!9363) (regOne!19239 (regTwo!19239 r!17423))))))

(declare-fun e!1883790 () Bool)

(declare-fun e!1883789 () Bool)

(assert (=> b!2997952 (= e!1883790 e!1883789)))

(declare-fun b!2997953 () Bool)

(assert (=> b!2997953 (= e!1883790 (= s!11993 (Cons!35104 (c!492681 (regOne!19239 (regTwo!19239 r!17423))) Nil!35104)))))

(declare-fun b!2997954 () Bool)

(declare-fun e!1883792 () Bool)

(assert (=> b!2997954 (= e!1883789 e!1883792)))

(declare-fun c!493276 () Bool)

(assert (=> b!2997954 (= c!493276 ((_ is Star!9363) (regOne!19239 (regTwo!19239 r!17423))))))

(declare-fun d!845847 () Bool)

(declare-fun c!493275 () Bool)

(assert (=> d!845847 (= c!493275 ((_ is EmptyExpr!9363) (regOne!19239 (regTwo!19239 r!17423))))))

(declare-fun e!1883788 () Bool)

(assert (=> d!845847 (= (matchRSpec!1500 (regOne!19239 (regTwo!19239 r!17423)) s!11993) e!1883788)))

(declare-fun call!201214 () Bool)

(assert (=> b!2997955 (= e!1883792 call!201214)))

(declare-fun b!2997956 () Bool)

(declare-fun e!1883791 () Bool)

(assert (=> b!2997956 (= e!1883791 (matchRSpec!1500 (regTwo!19239 (regOne!19239 (regTwo!19239 r!17423))) s!11993))))

(declare-fun b!2997957 () Bool)

(assert (=> b!2997957 (= e!1883789 e!1883791)))

(declare-fun res!1236092 () Bool)

(assert (=> b!2997957 (= res!1236092 (matchRSpec!1500 (regOne!19239 (regOne!19239 (regTwo!19239 r!17423))) s!11993))))

(assert (=> b!2997957 (=> res!1236092 e!1883791)))

(declare-fun b!2997958 () Bool)

(declare-fun c!493277 () Bool)

(assert (=> b!2997958 (= c!493277 ((_ is ElementMatch!9363) (regOne!19239 (regTwo!19239 r!17423))))))

(declare-fun e!1883793 () Bool)

(assert (=> b!2997958 (= e!1883793 e!1883790)))

(declare-fun e!1883794 () Bool)

(assert (=> b!2997959 (= e!1883794 call!201214)))

(declare-fun b!2997960 () Bool)

(assert (=> b!2997960 (= e!1883788 e!1883793)))

(declare-fun res!1236093 () Bool)

(assert (=> b!2997960 (= res!1236093 (not ((_ is EmptyLang!9363) (regOne!19239 (regTwo!19239 r!17423)))))))

(assert (=> b!2997960 (=> (not res!1236093) (not e!1883793))))

(declare-fun b!2997961 () Bool)

(assert (=> b!2997961 (= e!1883788 call!201215)))

(declare-fun b!2997962 () Bool)

(declare-fun res!1236094 () Bool)

(assert (=> b!2997962 (=> res!1236094 e!1883794)))

(assert (=> b!2997962 (= res!1236094 call!201215)))

(assert (=> b!2997962 (= e!1883792 e!1883794)))

(declare-fun bm!201210 () Bool)

(assert (=> bm!201210 (= call!201214 (Exists!1636 (ite c!493276 lambda!112057 lambda!112058)))))

(assert (= (and d!845847 c!493275) b!2997961))

(assert (= (and d!845847 (not c!493275)) b!2997960))

(assert (= (and b!2997960 res!1236093) b!2997958))

(assert (= (and b!2997958 c!493277) b!2997953))

(assert (= (and b!2997958 (not c!493277)) b!2997952))

(assert (= (and b!2997952 c!493274) b!2997957))

(assert (= (and b!2997952 (not c!493274)) b!2997954))

(assert (= (and b!2997957 (not res!1236092)) b!2997956))

(assert (= (and b!2997954 c!493276) b!2997962))

(assert (= (and b!2997954 (not c!493276)) b!2997955))

(assert (= (and b!2997962 (not res!1236094)) b!2997959))

(assert (= (or b!2997959 b!2997955) bm!201210))

(assert (= (or b!2997961 b!2997962) bm!201209))

(assert (=> bm!201209 m!3349927))

(declare-fun m!3351073 () Bool)

(assert (=> b!2997956 m!3351073))

(declare-fun m!3351075 () Bool)

(assert (=> b!2997957 m!3351075))

(declare-fun m!3351077 () Bool)

(assert (=> bm!201210 m!3351077))

(assert (=> b!2996785 d!845847))

(declare-fun b!2997964 () Bool)

(declare-fun e!1883795 () Bool)

(declare-fun tp!952292 () Bool)

(declare-fun tp!952291 () Bool)

(assert (=> b!2997964 (= e!1883795 (and tp!952292 tp!952291))))

(declare-fun b!2997966 () Bool)

(declare-fun tp!952294 () Bool)

(declare-fun tp!952290 () Bool)

(assert (=> b!2997966 (= e!1883795 (and tp!952294 tp!952290))))

(assert (=> b!2996937 (= tp!952146 e!1883795)))

(declare-fun b!2997963 () Bool)

(assert (=> b!2997963 (= e!1883795 tp_is_empty!16289)))

(declare-fun b!2997965 () Bool)

(declare-fun tp!952293 () Bool)

(assert (=> b!2997965 (= e!1883795 tp!952293)))

(assert (= (and b!2996937 ((_ is ElementMatch!9363) (regOne!19238 (regOne!19238 (regOne!19238 r!17423))))) b!2997963))

(assert (= (and b!2996937 ((_ is Concat!14684) (regOne!19238 (regOne!19238 (regOne!19238 r!17423))))) b!2997964))

(assert (= (and b!2996937 ((_ is Star!9363) (regOne!19238 (regOne!19238 (regOne!19238 r!17423))))) b!2997965))

(assert (= (and b!2996937 ((_ is Union!9363) (regOne!19238 (regOne!19238 (regOne!19238 r!17423))))) b!2997966))

(declare-fun b!2997968 () Bool)

(declare-fun e!1883796 () Bool)

(declare-fun tp!952297 () Bool)

(declare-fun tp!952296 () Bool)

(assert (=> b!2997968 (= e!1883796 (and tp!952297 tp!952296))))

(declare-fun b!2997970 () Bool)

(declare-fun tp!952299 () Bool)

(declare-fun tp!952295 () Bool)

(assert (=> b!2997970 (= e!1883796 (and tp!952299 tp!952295))))

(assert (=> b!2996937 (= tp!952145 e!1883796)))

(declare-fun b!2997967 () Bool)

(assert (=> b!2997967 (= e!1883796 tp_is_empty!16289)))

(declare-fun b!2997969 () Bool)

(declare-fun tp!952298 () Bool)

(assert (=> b!2997969 (= e!1883796 tp!952298)))

(assert (= (and b!2996937 ((_ is ElementMatch!9363) (regTwo!19238 (regOne!19238 (regOne!19238 r!17423))))) b!2997967))

(assert (= (and b!2996937 ((_ is Concat!14684) (regTwo!19238 (regOne!19238 (regOne!19238 r!17423))))) b!2997968))

(assert (= (and b!2996937 ((_ is Star!9363) (regTwo!19238 (regOne!19238 (regOne!19238 r!17423))))) b!2997969))

(assert (= (and b!2996937 ((_ is Union!9363) (regTwo!19238 (regOne!19238 (regOne!19238 r!17423))))) b!2997970))

(declare-fun b!2997972 () Bool)

(declare-fun e!1883797 () Bool)

(declare-fun tp!952302 () Bool)

(declare-fun tp!952301 () Bool)

(assert (=> b!2997972 (= e!1883797 (and tp!952302 tp!952301))))

(declare-fun b!2997974 () Bool)

(declare-fun tp!952304 () Bool)

(declare-fun tp!952300 () Bool)

(assert (=> b!2997974 (= e!1883797 (and tp!952304 tp!952300))))

(assert (=> b!2996848 (= tp!952066 e!1883797)))

(declare-fun b!2997971 () Bool)

(assert (=> b!2997971 (= e!1883797 tp_is_empty!16289)))

(declare-fun b!2997973 () Bool)

(declare-fun tp!952303 () Bool)

(assert (=> b!2997973 (= e!1883797 tp!952303)))

(assert (= (and b!2996848 ((_ is ElementMatch!9363) (regOne!19238 (regTwo!19238 (regTwo!19238 r!17423))))) b!2997971))

(assert (= (and b!2996848 ((_ is Concat!14684) (regOne!19238 (regTwo!19238 (regTwo!19238 r!17423))))) b!2997972))

(assert (= (and b!2996848 ((_ is Star!9363) (regOne!19238 (regTwo!19238 (regTwo!19238 r!17423))))) b!2997973))

(assert (= (and b!2996848 ((_ is Union!9363) (regOne!19238 (regTwo!19238 (regTwo!19238 r!17423))))) b!2997974))

(declare-fun b!2997976 () Bool)

(declare-fun e!1883798 () Bool)

(declare-fun tp!952307 () Bool)

(declare-fun tp!952306 () Bool)

(assert (=> b!2997976 (= e!1883798 (and tp!952307 tp!952306))))

(declare-fun b!2997978 () Bool)

(declare-fun tp!952309 () Bool)

(declare-fun tp!952305 () Bool)

(assert (=> b!2997978 (= e!1883798 (and tp!952309 tp!952305))))

(assert (=> b!2996848 (= tp!952065 e!1883798)))

(declare-fun b!2997975 () Bool)

(assert (=> b!2997975 (= e!1883798 tp_is_empty!16289)))

(declare-fun b!2997977 () Bool)

(declare-fun tp!952308 () Bool)

(assert (=> b!2997977 (= e!1883798 tp!952308)))

(assert (= (and b!2996848 ((_ is ElementMatch!9363) (regTwo!19238 (regTwo!19238 (regTwo!19238 r!17423))))) b!2997975))

(assert (= (and b!2996848 ((_ is Concat!14684) (regTwo!19238 (regTwo!19238 (regTwo!19238 r!17423))))) b!2997976))

(assert (= (and b!2996848 ((_ is Star!9363) (regTwo!19238 (regTwo!19238 (regTwo!19238 r!17423))))) b!2997977))

(assert (= (and b!2996848 ((_ is Union!9363) (regTwo!19238 (regTwo!19238 (regTwo!19238 r!17423))))) b!2997978))

(declare-fun b!2997980 () Bool)

(declare-fun e!1883799 () Bool)

(declare-fun tp!952312 () Bool)

(declare-fun tp!952311 () Bool)

(assert (=> b!2997980 (= e!1883799 (and tp!952312 tp!952311))))

(declare-fun b!2997982 () Bool)

(declare-fun tp!952314 () Bool)

(declare-fun tp!952310 () Bool)

(assert (=> b!2997982 (= e!1883799 (and tp!952314 tp!952310))))

(assert (=> b!2996895 (= tp!952093 e!1883799)))

(declare-fun b!2997979 () Bool)

(assert (=> b!2997979 (= e!1883799 tp_is_empty!16289)))

(declare-fun b!2997981 () Bool)

(declare-fun tp!952313 () Bool)

(assert (=> b!2997981 (= e!1883799 tp!952313)))

(assert (= (and b!2996895 ((_ is ElementMatch!9363) (regOne!19239 (regTwo!19238 (regTwo!19239 r!17423))))) b!2997979))

(assert (= (and b!2996895 ((_ is Concat!14684) (regOne!19239 (regTwo!19238 (regTwo!19239 r!17423))))) b!2997980))

(assert (= (and b!2996895 ((_ is Star!9363) (regOne!19239 (regTwo!19238 (regTwo!19239 r!17423))))) b!2997981))

(assert (= (and b!2996895 ((_ is Union!9363) (regOne!19239 (regTwo!19238 (regTwo!19239 r!17423))))) b!2997982))

(declare-fun b!2997984 () Bool)

(declare-fun e!1883800 () Bool)

(declare-fun tp!952317 () Bool)

(declare-fun tp!952316 () Bool)

(assert (=> b!2997984 (= e!1883800 (and tp!952317 tp!952316))))

(declare-fun b!2997986 () Bool)

(declare-fun tp!952319 () Bool)

(declare-fun tp!952315 () Bool)

(assert (=> b!2997986 (= e!1883800 (and tp!952319 tp!952315))))

(assert (=> b!2996895 (= tp!952089 e!1883800)))

(declare-fun b!2997983 () Bool)

(assert (=> b!2997983 (= e!1883800 tp_is_empty!16289)))

(declare-fun b!2997985 () Bool)

(declare-fun tp!952318 () Bool)

(assert (=> b!2997985 (= e!1883800 tp!952318)))

(assert (= (and b!2996895 ((_ is ElementMatch!9363) (regTwo!19239 (regTwo!19238 (regTwo!19239 r!17423))))) b!2997983))

(assert (= (and b!2996895 ((_ is Concat!14684) (regTwo!19239 (regTwo!19238 (regTwo!19239 r!17423))))) b!2997984))

(assert (= (and b!2996895 ((_ is Star!9363) (regTwo!19239 (regTwo!19238 (regTwo!19239 r!17423))))) b!2997985))

(assert (= (and b!2996895 ((_ is Union!9363) (regTwo!19239 (regTwo!19238 (regTwo!19239 r!17423))))) b!2997986))

(declare-fun b!2997988 () Bool)

(declare-fun e!1883801 () Bool)

(declare-fun tp!952322 () Bool)

(declare-fun tp!952321 () Bool)

(assert (=> b!2997988 (= e!1883801 (and tp!952322 tp!952321))))

(declare-fun b!2997990 () Bool)

(declare-fun tp!952324 () Bool)

(declare-fun tp!952320 () Bool)

(assert (=> b!2997990 (= e!1883801 (and tp!952324 tp!952320))))

(assert (=> b!2996893 (= tp!952091 e!1883801)))

(declare-fun b!2997987 () Bool)

(assert (=> b!2997987 (= e!1883801 tp_is_empty!16289)))

(declare-fun b!2997989 () Bool)

(declare-fun tp!952323 () Bool)

(assert (=> b!2997989 (= e!1883801 tp!952323)))

(assert (= (and b!2996893 ((_ is ElementMatch!9363) (regOne!19238 (regTwo!19238 (regTwo!19239 r!17423))))) b!2997987))

(assert (= (and b!2996893 ((_ is Concat!14684) (regOne!19238 (regTwo!19238 (regTwo!19239 r!17423))))) b!2997988))

(assert (= (and b!2996893 ((_ is Star!9363) (regOne!19238 (regTwo!19238 (regTwo!19239 r!17423))))) b!2997989))

(assert (= (and b!2996893 ((_ is Union!9363) (regOne!19238 (regTwo!19238 (regTwo!19239 r!17423))))) b!2997990))

(declare-fun b!2997992 () Bool)

(declare-fun e!1883802 () Bool)

(declare-fun tp!952327 () Bool)

(declare-fun tp!952326 () Bool)

(assert (=> b!2997992 (= e!1883802 (and tp!952327 tp!952326))))

(declare-fun b!2997994 () Bool)

(declare-fun tp!952329 () Bool)

(declare-fun tp!952325 () Bool)

(assert (=> b!2997994 (= e!1883802 (and tp!952329 tp!952325))))

(assert (=> b!2996893 (= tp!952090 e!1883802)))

(declare-fun b!2997991 () Bool)

(assert (=> b!2997991 (= e!1883802 tp_is_empty!16289)))

(declare-fun b!2997993 () Bool)

(declare-fun tp!952328 () Bool)

(assert (=> b!2997993 (= e!1883802 tp!952328)))

(assert (= (and b!2996893 ((_ is ElementMatch!9363) (regTwo!19238 (regTwo!19238 (regTwo!19239 r!17423))))) b!2997991))

(assert (= (and b!2996893 ((_ is Concat!14684) (regTwo!19238 (regTwo!19238 (regTwo!19239 r!17423))))) b!2997992))

(assert (= (and b!2996893 ((_ is Star!9363) (regTwo!19238 (regTwo!19238 (regTwo!19239 r!17423))))) b!2997993))

(assert (= (and b!2996893 ((_ is Union!9363) (regTwo!19238 (regTwo!19238 (regTwo!19239 r!17423))))) b!2997994))

(declare-fun b!2997996 () Bool)

(declare-fun e!1883803 () Bool)

(declare-fun tp!952332 () Bool)

(declare-fun tp!952331 () Bool)

(assert (=> b!2997996 (= e!1883803 (and tp!952332 tp!952331))))

(declare-fun b!2997998 () Bool)

(declare-fun tp!952334 () Bool)

(declare-fun tp!952330 () Bool)

(assert (=> b!2997998 (= e!1883803 (and tp!952334 tp!952330))))

(assert (=> b!2996850 (= tp!952068 e!1883803)))

(declare-fun b!2997995 () Bool)

(assert (=> b!2997995 (= e!1883803 tp_is_empty!16289)))

(declare-fun b!2997997 () Bool)

(declare-fun tp!952333 () Bool)

(assert (=> b!2997997 (= e!1883803 tp!952333)))

(assert (= (and b!2996850 ((_ is ElementMatch!9363) (regOne!19239 (regTwo!19238 (regTwo!19238 r!17423))))) b!2997995))

(assert (= (and b!2996850 ((_ is Concat!14684) (regOne!19239 (regTwo!19238 (regTwo!19238 r!17423))))) b!2997996))

(assert (= (and b!2996850 ((_ is Star!9363) (regOne!19239 (regTwo!19238 (regTwo!19238 r!17423))))) b!2997997))

(assert (= (and b!2996850 ((_ is Union!9363) (regOne!19239 (regTwo!19238 (regTwo!19238 r!17423))))) b!2997998))

(declare-fun b!2998000 () Bool)

(declare-fun e!1883804 () Bool)

(declare-fun tp!952337 () Bool)

(declare-fun tp!952336 () Bool)

(assert (=> b!2998000 (= e!1883804 (and tp!952337 tp!952336))))

(declare-fun b!2998002 () Bool)

(declare-fun tp!952339 () Bool)

(declare-fun tp!952335 () Bool)

(assert (=> b!2998002 (= e!1883804 (and tp!952339 tp!952335))))

(assert (=> b!2996850 (= tp!952064 e!1883804)))

(declare-fun b!2997999 () Bool)

(assert (=> b!2997999 (= e!1883804 tp_is_empty!16289)))

(declare-fun b!2998001 () Bool)

(declare-fun tp!952338 () Bool)

(assert (=> b!2998001 (= e!1883804 tp!952338)))

(assert (= (and b!2996850 ((_ is ElementMatch!9363) (regTwo!19239 (regTwo!19238 (regTwo!19238 r!17423))))) b!2997999))

(assert (= (and b!2996850 ((_ is Concat!14684) (regTwo!19239 (regTwo!19238 (regTwo!19238 r!17423))))) b!2998000))

(assert (= (and b!2996850 ((_ is Star!9363) (regTwo!19239 (regTwo!19238 (regTwo!19238 r!17423))))) b!2998001))

(assert (= (and b!2996850 ((_ is Union!9363) (regTwo!19239 (regTwo!19238 (regTwo!19238 r!17423))))) b!2998002))

(declare-fun b!2998004 () Bool)

(declare-fun e!1883805 () Bool)

(declare-fun tp!952342 () Bool)

(declare-fun tp!952341 () Bool)

(assert (=> b!2998004 (= e!1883805 (and tp!952342 tp!952341))))

(declare-fun b!2998006 () Bool)

(declare-fun tp!952344 () Bool)

(declare-fun tp!952340 () Bool)

(assert (=> b!2998006 (= e!1883805 (and tp!952344 tp!952340))))

(assert (=> b!2996832 (= tp!952046 e!1883805)))

(declare-fun b!2998003 () Bool)

(assert (=> b!2998003 (= e!1883805 tp_is_empty!16289)))

(declare-fun b!2998005 () Bool)

(declare-fun tp!952343 () Bool)

(assert (=> b!2998005 (= e!1883805 tp!952343)))

(assert (= (and b!2996832 ((_ is ElementMatch!9363) (regOne!19238 (regOne!19238 (reg!9692 r!17423))))) b!2998003))

(assert (= (and b!2996832 ((_ is Concat!14684) (regOne!19238 (regOne!19238 (reg!9692 r!17423))))) b!2998004))

(assert (= (and b!2996832 ((_ is Star!9363) (regOne!19238 (regOne!19238 (reg!9692 r!17423))))) b!2998005))

(assert (= (and b!2996832 ((_ is Union!9363) (regOne!19238 (regOne!19238 (reg!9692 r!17423))))) b!2998006))

(declare-fun b!2998008 () Bool)

(declare-fun e!1883806 () Bool)

(declare-fun tp!952347 () Bool)

(declare-fun tp!952346 () Bool)

(assert (=> b!2998008 (= e!1883806 (and tp!952347 tp!952346))))

(declare-fun b!2998010 () Bool)

(declare-fun tp!952349 () Bool)

(declare-fun tp!952345 () Bool)

(assert (=> b!2998010 (= e!1883806 (and tp!952349 tp!952345))))

(assert (=> b!2996832 (= tp!952045 e!1883806)))

(declare-fun b!2998007 () Bool)

(assert (=> b!2998007 (= e!1883806 tp_is_empty!16289)))

(declare-fun b!2998009 () Bool)

(declare-fun tp!952348 () Bool)

(assert (=> b!2998009 (= e!1883806 tp!952348)))

(assert (= (and b!2996832 ((_ is ElementMatch!9363) (regTwo!19238 (regOne!19238 (reg!9692 r!17423))))) b!2998007))

(assert (= (and b!2996832 ((_ is Concat!14684) (regTwo!19238 (regOne!19238 (reg!9692 r!17423))))) b!2998008))

(assert (= (and b!2996832 ((_ is Star!9363) (regTwo!19238 (regOne!19238 (reg!9692 r!17423))))) b!2998009))

(assert (= (and b!2996832 ((_ is Union!9363) (regTwo!19238 (regOne!19238 (reg!9692 r!17423))))) b!2998010))

(declare-fun b!2998012 () Bool)

(declare-fun e!1883807 () Bool)

(declare-fun tp!952352 () Bool)

(declare-fun tp!952351 () Bool)

(assert (=> b!2998012 (= e!1883807 (and tp!952352 tp!952351))))

(declare-fun b!2998014 () Bool)

(declare-fun tp!952354 () Bool)

(declare-fun tp!952350 () Bool)

(assert (=> b!2998014 (= e!1883807 (and tp!952354 tp!952350))))

(assert (=> b!2996841 (= tp!952057 e!1883807)))

(declare-fun b!2998011 () Bool)

(assert (=> b!2998011 (= e!1883807 tp_is_empty!16289)))

(declare-fun b!2998013 () Bool)

(declare-fun tp!952353 () Bool)

(assert (=> b!2998013 (= e!1883807 tp!952353)))

(assert (= (and b!2996841 ((_ is ElementMatch!9363) (reg!9692 (reg!9692 (regOne!19239 r!17423))))) b!2998011))

(assert (= (and b!2996841 ((_ is Concat!14684) (reg!9692 (reg!9692 (regOne!19239 r!17423))))) b!2998012))

(assert (= (and b!2996841 ((_ is Star!9363) (reg!9692 (reg!9692 (regOne!19239 r!17423))))) b!2998013))

(assert (= (and b!2996841 ((_ is Union!9363) (reg!9692 (reg!9692 (regOne!19239 r!17423))))) b!2998014))

(declare-fun b!2998016 () Bool)

(declare-fun e!1883808 () Bool)

(declare-fun tp!952357 () Bool)

(declare-fun tp!952356 () Bool)

(assert (=> b!2998016 (= e!1883808 (and tp!952357 tp!952356))))

(declare-fun b!2998018 () Bool)

(declare-fun tp!952359 () Bool)

(declare-fun tp!952355 () Bool)

(assert (=> b!2998018 (= e!1883808 (and tp!952359 tp!952355))))

(assert (=> b!2996939 (= tp!952148 e!1883808)))

(declare-fun b!2998015 () Bool)

(assert (=> b!2998015 (= e!1883808 tp_is_empty!16289)))

(declare-fun b!2998017 () Bool)

(declare-fun tp!952358 () Bool)

(assert (=> b!2998017 (= e!1883808 tp!952358)))

(assert (= (and b!2996939 ((_ is ElementMatch!9363) (regOne!19239 (regOne!19238 (regOne!19238 r!17423))))) b!2998015))

(assert (= (and b!2996939 ((_ is Concat!14684) (regOne!19239 (regOne!19238 (regOne!19238 r!17423))))) b!2998016))

(assert (= (and b!2996939 ((_ is Star!9363) (regOne!19239 (regOne!19238 (regOne!19238 r!17423))))) b!2998017))

(assert (= (and b!2996939 ((_ is Union!9363) (regOne!19239 (regOne!19238 (regOne!19238 r!17423))))) b!2998018))

(declare-fun b!2998020 () Bool)

(declare-fun e!1883809 () Bool)

(declare-fun tp!952362 () Bool)

(declare-fun tp!952361 () Bool)

(assert (=> b!2998020 (= e!1883809 (and tp!952362 tp!952361))))

(declare-fun b!2998022 () Bool)

(declare-fun tp!952364 () Bool)

(declare-fun tp!952360 () Bool)

(assert (=> b!2998022 (= e!1883809 (and tp!952364 tp!952360))))

(assert (=> b!2996939 (= tp!952144 e!1883809)))

(declare-fun b!2998019 () Bool)

(assert (=> b!2998019 (= e!1883809 tp_is_empty!16289)))

(declare-fun b!2998021 () Bool)

(declare-fun tp!952363 () Bool)

(assert (=> b!2998021 (= e!1883809 tp!952363)))

(assert (= (and b!2996939 ((_ is ElementMatch!9363) (regTwo!19239 (regOne!19238 (regOne!19238 r!17423))))) b!2998019))

(assert (= (and b!2996939 ((_ is Concat!14684) (regTwo!19239 (regOne!19238 (regOne!19238 r!17423))))) b!2998020))

(assert (= (and b!2996939 ((_ is Star!9363) (regTwo!19239 (regOne!19238 (regOne!19238 r!17423))))) b!2998021))

(assert (= (and b!2996939 ((_ is Union!9363) (regTwo!19239 (regOne!19238 (regOne!19238 r!17423))))) b!2998022))

(declare-fun b!2998024 () Bool)

(declare-fun e!1883810 () Bool)

(declare-fun tp!952367 () Bool)

(declare-fun tp!952366 () Bool)

(assert (=> b!2998024 (= e!1883810 (and tp!952367 tp!952366))))

(declare-fun b!2998026 () Bool)

(declare-fun tp!952369 () Bool)

(declare-fun tp!952365 () Bool)

(assert (=> b!2998026 (= e!1883810 (and tp!952369 tp!952365))))

(assert (=> b!2996945 (= tp!952156 e!1883810)))

(declare-fun b!2998023 () Bool)

(assert (=> b!2998023 (= e!1883810 tp_is_empty!16289)))

(declare-fun b!2998025 () Bool)

(declare-fun tp!952368 () Bool)

(assert (=> b!2998025 (= e!1883810 tp!952368)))

(assert (= (and b!2996945 ((_ is ElementMatch!9363) (regOne!19238 (regOne!19239 (regTwo!19239 r!17423))))) b!2998023))

(assert (= (and b!2996945 ((_ is Concat!14684) (regOne!19238 (regOne!19239 (regTwo!19239 r!17423))))) b!2998024))

(assert (= (and b!2996945 ((_ is Star!9363) (regOne!19238 (regOne!19239 (regTwo!19239 r!17423))))) b!2998025))

(assert (= (and b!2996945 ((_ is Union!9363) (regOne!19238 (regOne!19239 (regTwo!19239 r!17423))))) b!2998026))

(declare-fun b!2998028 () Bool)

(declare-fun e!1883811 () Bool)

(declare-fun tp!952372 () Bool)

(declare-fun tp!952371 () Bool)

(assert (=> b!2998028 (= e!1883811 (and tp!952372 tp!952371))))

(declare-fun b!2998030 () Bool)

(declare-fun tp!952374 () Bool)

(declare-fun tp!952370 () Bool)

(assert (=> b!2998030 (= e!1883811 (and tp!952374 tp!952370))))

(assert (=> b!2996945 (= tp!952155 e!1883811)))

(declare-fun b!2998027 () Bool)

(assert (=> b!2998027 (= e!1883811 tp_is_empty!16289)))

(declare-fun b!2998029 () Bool)

(declare-fun tp!952373 () Bool)

(assert (=> b!2998029 (= e!1883811 tp!952373)))

(assert (= (and b!2996945 ((_ is ElementMatch!9363) (regTwo!19238 (regOne!19239 (regTwo!19239 r!17423))))) b!2998027))

(assert (= (and b!2996945 ((_ is Concat!14684) (regTwo!19238 (regOne!19239 (regTwo!19239 r!17423))))) b!2998028))

(assert (= (and b!2996945 ((_ is Star!9363) (regTwo!19238 (regOne!19239 (regTwo!19239 r!17423))))) b!2998029))

(assert (= (and b!2996945 ((_ is Union!9363) (regTwo!19238 (regOne!19239 (regTwo!19239 r!17423))))) b!2998030))

(declare-fun b!2998032 () Bool)

(declare-fun e!1883812 () Bool)

(declare-fun tp!952377 () Bool)

(declare-fun tp!952376 () Bool)

(assert (=> b!2998032 (= e!1883812 (and tp!952377 tp!952376))))

(declare-fun b!2998034 () Bool)

(declare-fun tp!952379 () Bool)

(declare-fun tp!952375 () Bool)

(assert (=> b!2998034 (= e!1883812 (and tp!952379 tp!952375))))

(assert (=> b!2996834 (= tp!952048 e!1883812)))

(declare-fun b!2998031 () Bool)

(assert (=> b!2998031 (= e!1883812 tp_is_empty!16289)))

(declare-fun b!2998033 () Bool)

(declare-fun tp!952378 () Bool)

(assert (=> b!2998033 (= e!1883812 tp!952378)))

(assert (= (and b!2996834 ((_ is ElementMatch!9363) (regOne!19239 (regOne!19238 (reg!9692 r!17423))))) b!2998031))

(assert (= (and b!2996834 ((_ is Concat!14684) (regOne!19239 (regOne!19238 (reg!9692 r!17423))))) b!2998032))

(assert (= (and b!2996834 ((_ is Star!9363) (regOne!19239 (regOne!19238 (reg!9692 r!17423))))) b!2998033))

(assert (= (and b!2996834 ((_ is Union!9363) (regOne!19239 (regOne!19238 (reg!9692 r!17423))))) b!2998034))

(declare-fun b!2998036 () Bool)

(declare-fun e!1883813 () Bool)

(declare-fun tp!952382 () Bool)

(declare-fun tp!952381 () Bool)

(assert (=> b!2998036 (= e!1883813 (and tp!952382 tp!952381))))

(declare-fun b!2998038 () Bool)

(declare-fun tp!952384 () Bool)

(declare-fun tp!952380 () Bool)

(assert (=> b!2998038 (= e!1883813 (and tp!952384 tp!952380))))

(assert (=> b!2996834 (= tp!952044 e!1883813)))

(declare-fun b!2998035 () Bool)

(assert (=> b!2998035 (= e!1883813 tp_is_empty!16289)))

(declare-fun b!2998037 () Bool)

(declare-fun tp!952383 () Bool)

(assert (=> b!2998037 (= e!1883813 tp!952383)))

(assert (= (and b!2996834 ((_ is ElementMatch!9363) (regTwo!19239 (regOne!19238 (reg!9692 r!17423))))) b!2998035))

(assert (= (and b!2996834 ((_ is Concat!14684) (regTwo!19239 (regOne!19238 (reg!9692 r!17423))))) b!2998036))

(assert (= (and b!2996834 ((_ is Star!9363) (regTwo!19239 (regOne!19238 (reg!9692 r!17423))))) b!2998037))

(assert (= (and b!2996834 ((_ is Union!9363) (regTwo!19239 (regOne!19238 (reg!9692 r!17423))))) b!2998038))

(declare-fun b!2998040 () Bool)

(declare-fun e!1883814 () Bool)

(declare-fun tp!952387 () Bool)

(declare-fun tp!952386 () Bool)

(assert (=> b!2998040 (= e!1883814 (and tp!952387 tp!952386))))

(declare-fun b!2998042 () Bool)

(declare-fun tp!952389 () Bool)

(declare-fun tp!952385 () Bool)

(assert (=> b!2998042 (= e!1883814 (and tp!952389 tp!952385))))

(assert (=> b!2996913 (= tp!952116 e!1883814)))

(declare-fun b!2998039 () Bool)

(assert (=> b!2998039 (= e!1883814 tp_is_empty!16289)))

(declare-fun b!2998041 () Bool)

(declare-fun tp!952388 () Bool)

(assert (=> b!2998041 (= e!1883814 tp!952388)))

(assert (= (and b!2996913 ((_ is ElementMatch!9363) (regOne!19238 (regOne!19239 (regTwo!19238 r!17423))))) b!2998039))

(assert (= (and b!2996913 ((_ is Concat!14684) (regOne!19238 (regOne!19239 (regTwo!19238 r!17423))))) b!2998040))

(assert (= (and b!2996913 ((_ is Star!9363) (regOne!19238 (regOne!19239 (regTwo!19238 r!17423))))) b!2998041))

(assert (= (and b!2996913 ((_ is Union!9363) (regOne!19238 (regOne!19239 (regTwo!19238 r!17423))))) b!2998042))

(declare-fun b!2998044 () Bool)

(declare-fun e!1883815 () Bool)

(declare-fun tp!952392 () Bool)

(declare-fun tp!952391 () Bool)

(assert (=> b!2998044 (= e!1883815 (and tp!952392 tp!952391))))

(declare-fun b!2998046 () Bool)

(declare-fun tp!952394 () Bool)

(declare-fun tp!952390 () Bool)

(assert (=> b!2998046 (= e!1883815 (and tp!952394 tp!952390))))

(assert (=> b!2996913 (= tp!952115 e!1883815)))

(declare-fun b!2998043 () Bool)

(assert (=> b!2998043 (= e!1883815 tp_is_empty!16289)))

(declare-fun b!2998045 () Bool)

(declare-fun tp!952393 () Bool)

(assert (=> b!2998045 (= e!1883815 tp!952393)))

(assert (= (and b!2996913 ((_ is ElementMatch!9363) (regTwo!19238 (regOne!19239 (regTwo!19238 r!17423))))) b!2998043))

(assert (= (and b!2996913 ((_ is Concat!14684) (regTwo!19238 (regOne!19239 (regTwo!19238 r!17423))))) b!2998044))

(assert (= (and b!2996913 ((_ is Star!9363) (regTwo!19238 (regOne!19239 (regTwo!19238 r!17423))))) b!2998045))

(assert (= (and b!2996913 ((_ is Union!9363) (regTwo!19238 (regOne!19239 (regTwo!19238 r!17423))))) b!2998046))

(declare-fun b!2998048 () Bool)

(declare-fun e!1883816 () Bool)

(declare-fun tp!952397 () Bool)

(declare-fun tp!952396 () Bool)

(assert (=> b!2998048 (= e!1883816 (and tp!952397 tp!952396))))

(declare-fun b!2998050 () Bool)

(declare-fun tp!952399 () Bool)

(declare-fun tp!952395 () Bool)

(assert (=> b!2998050 (= e!1883816 (and tp!952399 tp!952395))))

(assert (=> b!2996947 (= tp!952158 e!1883816)))

(declare-fun b!2998047 () Bool)

(assert (=> b!2998047 (= e!1883816 tp_is_empty!16289)))

(declare-fun b!2998049 () Bool)

(declare-fun tp!952398 () Bool)

(assert (=> b!2998049 (= e!1883816 tp!952398)))

(assert (= (and b!2996947 ((_ is ElementMatch!9363) (regOne!19239 (regOne!19239 (regTwo!19239 r!17423))))) b!2998047))

(assert (= (and b!2996947 ((_ is Concat!14684) (regOne!19239 (regOne!19239 (regTwo!19239 r!17423))))) b!2998048))

(assert (= (and b!2996947 ((_ is Star!9363) (regOne!19239 (regOne!19239 (regTwo!19239 r!17423))))) b!2998049))

(assert (= (and b!2996947 ((_ is Union!9363) (regOne!19239 (regOne!19239 (regTwo!19239 r!17423))))) b!2998050))

(declare-fun b!2998052 () Bool)

(declare-fun e!1883817 () Bool)

(declare-fun tp!952402 () Bool)

(declare-fun tp!952401 () Bool)

(assert (=> b!2998052 (= e!1883817 (and tp!952402 tp!952401))))

(declare-fun b!2998054 () Bool)

(declare-fun tp!952404 () Bool)

(declare-fun tp!952400 () Bool)

(assert (=> b!2998054 (= e!1883817 (and tp!952404 tp!952400))))

(assert (=> b!2996947 (= tp!952154 e!1883817)))

(declare-fun b!2998051 () Bool)

(assert (=> b!2998051 (= e!1883817 tp_is_empty!16289)))

(declare-fun b!2998053 () Bool)

(declare-fun tp!952403 () Bool)

(assert (=> b!2998053 (= e!1883817 tp!952403)))

(assert (= (and b!2996947 ((_ is ElementMatch!9363) (regTwo!19239 (regOne!19239 (regTwo!19239 r!17423))))) b!2998051))

(assert (= (and b!2996947 ((_ is Concat!14684) (regTwo!19239 (regOne!19239 (regTwo!19239 r!17423))))) b!2998052))

(assert (= (and b!2996947 ((_ is Star!9363) (regTwo!19239 (regOne!19239 (regTwo!19239 r!17423))))) b!2998053))

(assert (= (and b!2996947 ((_ is Union!9363) (regTwo!19239 (regOne!19239 (regTwo!19239 r!17423))))) b!2998054))

(declare-fun b!2998056 () Bool)

(declare-fun e!1883818 () Bool)

(declare-fun tp!952407 () Bool)

(declare-fun tp!952406 () Bool)

(assert (=> b!2998056 (= e!1883818 (and tp!952407 tp!952406))))

(declare-fun b!2998058 () Bool)

(declare-fun tp!952409 () Bool)

(declare-fun tp!952405 () Bool)

(assert (=> b!2998058 (= e!1883818 (and tp!952409 tp!952405))))

(assert (=> b!2996860 (= tp!952081 e!1883818)))

(declare-fun b!2998055 () Bool)

(assert (=> b!2998055 (= e!1883818 tp_is_empty!16289)))

(declare-fun b!2998057 () Bool)

(declare-fun tp!952408 () Bool)

(assert (=> b!2998057 (= e!1883818 tp!952408)))

(assert (= (and b!2996860 ((_ is ElementMatch!9363) (regOne!19238 (regTwo!19238 (regOne!19239 r!17423))))) b!2998055))

(assert (= (and b!2996860 ((_ is Concat!14684) (regOne!19238 (regTwo!19238 (regOne!19239 r!17423))))) b!2998056))

(assert (= (and b!2996860 ((_ is Star!9363) (regOne!19238 (regTwo!19238 (regOne!19239 r!17423))))) b!2998057))

(assert (= (and b!2996860 ((_ is Union!9363) (regOne!19238 (regTwo!19238 (regOne!19239 r!17423))))) b!2998058))

(declare-fun b!2998060 () Bool)

(declare-fun e!1883819 () Bool)

(declare-fun tp!952412 () Bool)

(declare-fun tp!952411 () Bool)

(assert (=> b!2998060 (= e!1883819 (and tp!952412 tp!952411))))

(declare-fun b!2998062 () Bool)

(declare-fun tp!952414 () Bool)

(declare-fun tp!952410 () Bool)

(assert (=> b!2998062 (= e!1883819 (and tp!952414 tp!952410))))

(assert (=> b!2996860 (= tp!952080 e!1883819)))

(declare-fun b!2998059 () Bool)

(assert (=> b!2998059 (= e!1883819 tp_is_empty!16289)))

(declare-fun b!2998061 () Bool)

(declare-fun tp!952413 () Bool)

(assert (=> b!2998061 (= e!1883819 tp!952413)))

(assert (= (and b!2996860 ((_ is ElementMatch!9363) (regTwo!19238 (regTwo!19238 (regOne!19239 r!17423))))) b!2998059))

(assert (= (and b!2996860 ((_ is Concat!14684) (regTwo!19238 (regTwo!19238 (regOne!19239 r!17423))))) b!2998060))

(assert (= (and b!2996860 ((_ is Star!9363) (regTwo!19238 (regTwo!19238 (regOne!19239 r!17423))))) b!2998061))

(assert (= (and b!2996860 ((_ is Union!9363) (regTwo!19238 (regTwo!19238 (regOne!19239 r!17423))))) b!2998062))

(declare-fun b!2998064 () Bool)

(declare-fun e!1883820 () Bool)

(declare-fun tp!952417 () Bool)

(declare-fun tp!952416 () Bool)

(assert (=> b!2998064 (= e!1883820 (and tp!952417 tp!952416))))

(declare-fun b!2998066 () Bool)

(declare-fun tp!952419 () Bool)

(declare-fun tp!952415 () Bool)

(assert (=> b!2998066 (= e!1883820 (and tp!952419 tp!952415))))

(assert (=> b!2996906 (= tp!952107 e!1883820)))

(declare-fun b!2998063 () Bool)

(assert (=> b!2998063 (= e!1883820 tp_is_empty!16289)))

(declare-fun b!2998065 () Bool)

(declare-fun tp!952418 () Bool)

(assert (=> b!2998065 (= e!1883820 tp!952418)))

(assert (= (and b!2996906 ((_ is ElementMatch!9363) (reg!9692 (regOne!19239 (regOne!19238 r!17423))))) b!2998063))

(assert (= (and b!2996906 ((_ is Concat!14684) (reg!9692 (regOne!19239 (regOne!19238 r!17423))))) b!2998064))

(assert (= (and b!2996906 ((_ is Star!9363) (reg!9692 (regOne!19239 (regOne!19238 r!17423))))) b!2998065))

(assert (= (and b!2996906 ((_ is Union!9363) (reg!9692 (regOne!19239 (regOne!19238 r!17423))))) b!2998066))

(declare-fun b!2998068 () Bool)

(declare-fun e!1883821 () Bool)

(declare-fun tp!952422 () Bool)

(declare-fun tp!952421 () Bool)

(assert (=> b!2998068 (= e!1883821 (and tp!952422 tp!952421))))

(declare-fun b!2998070 () Bool)

(declare-fun tp!952424 () Bool)

(declare-fun tp!952420 () Bool)

(assert (=> b!2998070 (= e!1883821 (and tp!952424 tp!952420))))

(assert (=> b!2996915 (= tp!952118 e!1883821)))

(declare-fun b!2998067 () Bool)

(assert (=> b!2998067 (= e!1883821 tp_is_empty!16289)))

(declare-fun b!2998069 () Bool)

(declare-fun tp!952423 () Bool)

(assert (=> b!2998069 (= e!1883821 tp!952423)))

(assert (= (and b!2996915 ((_ is ElementMatch!9363) (regOne!19239 (regOne!19239 (regTwo!19238 r!17423))))) b!2998067))

(assert (= (and b!2996915 ((_ is Concat!14684) (regOne!19239 (regOne!19239 (regTwo!19238 r!17423))))) b!2998068))

(assert (= (and b!2996915 ((_ is Star!9363) (regOne!19239 (regOne!19239 (regTwo!19238 r!17423))))) b!2998069))

(assert (= (and b!2996915 ((_ is Union!9363) (regOne!19239 (regOne!19239 (regTwo!19238 r!17423))))) b!2998070))

(declare-fun b!2998072 () Bool)

(declare-fun e!1883822 () Bool)

(declare-fun tp!952427 () Bool)

(declare-fun tp!952426 () Bool)

(assert (=> b!2998072 (= e!1883822 (and tp!952427 tp!952426))))

(declare-fun b!2998074 () Bool)

(declare-fun tp!952429 () Bool)

(declare-fun tp!952425 () Bool)

(assert (=> b!2998074 (= e!1883822 (and tp!952429 tp!952425))))

(assert (=> b!2996915 (= tp!952114 e!1883822)))

(declare-fun b!2998071 () Bool)

(assert (=> b!2998071 (= e!1883822 tp_is_empty!16289)))

(declare-fun b!2998073 () Bool)

(declare-fun tp!952428 () Bool)

(assert (=> b!2998073 (= e!1883822 tp!952428)))

(assert (= (and b!2996915 ((_ is ElementMatch!9363) (regTwo!19239 (regOne!19239 (regTwo!19238 r!17423))))) b!2998071))

(assert (= (and b!2996915 ((_ is Concat!14684) (regTwo!19239 (regOne!19239 (regTwo!19238 r!17423))))) b!2998072))

(assert (= (and b!2996915 ((_ is Star!9363) (regTwo!19239 (regOne!19239 (regTwo!19238 r!17423))))) b!2998073))

(assert (= (and b!2996915 ((_ is Union!9363) (regTwo!19239 (regOne!19239 (regTwo!19238 r!17423))))) b!2998074))

(declare-fun b!2998076 () Bool)

(declare-fun e!1883823 () Bool)

(declare-fun tp!952432 () Bool)

(declare-fun tp!952431 () Bool)

(assert (=> b!2998076 (= e!1883823 (and tp!952432 tp!952431))))

(declare-fun b!2998078 () Bool)

(declare-fun tp!952434 () Bool)

(declare-fun tp!952430 () Bool)

(assert (=> b!2998078 (= e!1883823 (and tp!952434 tp!952430))))

(assert (=> b!2996897 (= tp!952096 e!1883823)))

(declare-fun b!2998075 () Bool)

(assert (=> b!2998075 (= e!1883823 tp_is_empty!16289)))

(declare-fun b!2998077 () Bool)

(declare-fun tp!952433 () Bool)

(assert (=> b!2998077 (= e!1883823 tp!952433)))

(assert (= (and b!2996897 ((_ is ElementMatch!9363) (regOne!19238 (regOne!19239 (reg!9692 r!17423))))) b!2998075))

(assert (= (and b!2996897 ((_ is Concat!14684) (regOne!19238 (regOne!19239 (reg!9692 r!17423))))) b!2998076))

(assert (= (and b!2996897 ((_ is Star!9363) (regOne!19238 (regOne!19239 (reg!9692 r!17423))))) b!2998077))

(assert (= (and b!2996897 ((_ is Union!9363) (regOne!19238 (regOne!19239 (reg!9692 r!17423))))) b!2998078))

(declare-fun b!2998080 () Bool)

(declare-fun e!1883824 () Bool)

(declare-fun tp!952437 () Bool)

(declare-fun tp!952436 () Bool)

(assert (=> b!2998080 (= e!1883824 (and tp!952437 tp!952436))))

(declare-fun b!2998082 () Bool)

(declare-fun tp!952439 () Bool)

(declare-fun tp!952435 () Bool)

(assert (=> b!2998082 (= e!1883824 (and tp!952439 tp!952435))))

(assert (=> b!2996897 (= tp!952095 e!1883824)))

(declare-fun b!2998079 () Bool)

(assert (=> b!2998079 (= e!1883824 tp_is_empty!16289)))

(declare-fun b!2998081 () Bool)

(declare-fun tp!952438 () Bool)

(assert (=> b!2998081 (= e!1883824 tp!952438)))

(assert (= (and b!2996897 ((_ is ElementMatch!9363) (regTwo!19238 (regOne!19239 (reg!9692 r!17423))))) b!2998079))

(assert (= (and b!2996897 ((_ is Concat!14684) (regTwo!19238 (regOne!19239 (reg!9692 r!17423))))) b!2998080))

(assert (= (and b!2996897 ((_ is Star!9363) (regTwo!19238 (regOne!19239 (reg!9692 r!17423))))) b!2998081))

(assert (= (and b!2996897 ((_ is Union!9363) (regTwo!19238 (regOne!19239 (reg!9692 r!17423))))) b!2998082))

(declare-fun b!2998084 () Bool)

(declare-fun e!1883825 () Bool)

(declare-fun tp!952442 () Bool)

(declare-fun tp!952441 () Bool)

(assert (=> b!2998084 (= e!1883825 (and tp!952442 tp!952441))))

(declare-fun b!2998086 () Bool)

(declare-fun tp!952444 () Bool)

(declare-fun tp!952440 () Bool)

(assert (=> b!2998086 (= e!1883825 (and tp!952444 tp!952440))))

(assert (=> b!2996856 (= tp!952076 e!1883825)))

(declare-fun b!2998083 () Bool)

(assert (=> b!2998083 (= e!1883825 tp_is_empty!16289)))

(declare-fun b!2998085 () Bool)

(declare-fun tp!952443 () Bool)

(assert (=> b!2998085 (= e!1883825 tp!952443)))

(assert (= (and b!2996856 ((_ is ElementMatch!9363) (regOne!19238 (regOne!19238 (regOne!19239 r!17423))))) b!2998083))

(assert (= (and b!2996856 ((_ is Concat!14684) (regOne!19238 (regOne!19238 (regOne!19239 r!17423))))) b!2998084))

(assert (= (and b!2996856 ((_ is Star!9363) (regOne!19238 (regOne!19238 (regOne!19239 r!17423))))) b!2998085))

(assert (= (and b!2996856 ((_ is Union!9363) (regOne!19238 (regOne!19238 (regOne!19239 r!17423))))) b!2998086))

(declare-fun b!2998088 () Bool)

(declare-fun e!1883826 () Bool)

(declare-fun tp!952447 () Bool)

(declare-fun tp!952446 () Bool)

(assert (=> b!2998088 (= e!1883826 (and tp!952447 tp!952446))))

(declare-fun b!2998090 () Bool)

(declare-fun tp!952449 () Bool)

(declare-fun tp!952445 () Bool)

(assert (=> b!2998090 (= e!1883826 (and tp!952449 tp!952445))))

(assert (=> b!2996856 (= tp!952075 e!1883826)))

(declare-fun b!2998087 () Bool)

(assert (=> b!2998087 (= e!1883826 tp_is_empty!16289)))

(declare-fun b!2998089 () Bool)

(declare-fun tp!952448 () Bool)

(assert (=> b!2998089 (= e!1883826 tp!952448)))

(assert (= (and b!2996856 ((_ is ElementMatch!9363) (regTwo!19238 (regOne!19238 (regOne!19239 r!17423))))) b!2998087))

(assert (= (and b!2996856 ((_ is Concat!14684) (regTwo!19238 (regOne!19238 (regOne!19239 r!17423))))) b!2998088))

(assert (= (and b!2996856 ((_ is Star!9363) (regTwo!19238 (regOne!19238 (regOne!19239 r!17423))))) b!2998089))

(assert (= (and b!2996856 ((_ is Union!9363) (regTwo!19238 (regOne!19238 (regOne!19239 r!17423))))) b!2998090))

(declare-fun b!2998092 () Bool)

(declare-fun e!1883827 () Bool)

(declare-fun tp!952452 () Bool)

(declare-fun tp!952451 () Bool)

(assert (=> b!2998092 (= e!1883827 (and tp!952452 tp!952451))))

(declare-fun b!2998094 () Bool)

(declare-fun tp!952454 () Bool)

(declare-fun tp!952450 () Bool)

(assert (=> b!2998094 (= e!1883827 (and tp!952454 tp!952450))))

(assert (=> b!2996935 (= tp!952143 e!1883827)))

(declare-fun b!2998091 () Bool)

(assert (=> b!2998091 (= e!1883827 tp_is_empty!16289)))

(declare-fun b!2998093 () Bool)

(declare-fun tp!952453 () Bool)

(assert (=> b!2998093 (= e!1883827 tp!952453)))

(assert (= (and b!2996935 ((_ is ElementMatch!9363) (regOne!19239 (reg!9692 (regTwo!19238 r!17423))))) b!2998091))

(assert (= (and b!2996935 ((_ is Concat!14684) (regOne!19239 (reg!9692 (regTwo!19238 r!17423))))) b!2998092))

(assert (= (and b!2996935 ((_ is Star!9363) (regOne!19239 (reg!9692 (regTwo!19238 r!17423))))) b!2998093))

(assert (= (and b!2996935 ((_ is Union!9363) (regOne!19239 (reg!9692 (regTwo!19238 r!17423))))) b!2998094))

(declare-fun b!2998096 () Bool)

(declare-fun e!1883828 () Bool)

(declare-fun tp!952457 () Bool)

(declare-fun tp!952456 () Bool)

(assert (=> b!2998096 (= e!1883828 (and tp!952457 tp!952456))))

(declare-fun b!2998098 () Bool)

(declare-fun tp!952459 () Bool)

(declare-fun tp!952455 () Bool)

(assert (=> b!2998098 (= e!1883828 (and tp!952459 tp!952455))))

(assert (=> b!2996935 (= tp!952139 e!1883828)))

(declare-fun b!2998095 () Bool)

(assert (=> b!2998095 (= e!1883828 tp_is_empty!16289)))

(declare-fun b!2998097 () Bool)

(declare-fun tp!952458 () Bool)

(assert (=> b!2998097 (= e!1883828 tp!952458)))

(assert (= (and b!2996935 ((_ is ElementMatch!9363) (regTwo!19239 (reg!9692 (regTwo!19238 r!17423))))) b!2998095))

(assert (= (and b!2996935 ((_ is Concat!14684) (regTwo!19239 (reg!9692 (regTwo!19238 r!17423))))) b!2998096))

(assert (= (and b!2996935 ((_ is Star!9363) (regTwo!19239 (reg!9692 (regTwo!19238 r!17423))))) b!2998097))

(assert (= (and b!2996935 ((_ is Union!9363) (regTwo!19239 (reg!9692 (regTwo!19238 r!17423))))) b!2998098))

(declare-fun b!2998100 () Bool)

(declare-fun e!1883829 () Bool)

(declare-fun tp!952462 () Bool)

(declare-fun tp!952461 () Bool)

(assert (=> b!2998100 (= e!1883829 (and tp!952462 tp!952461))))

(declare-fun b!2998102 () Bool)

(declare-fun tp!952464 () Bool)

(declare-fun tp!952460 () Bool)

(assert (=> b!2998102 (= e!1883829 (and tp!952464 tp!952460))))

(assert (=> b!2996942 (= tp!952152 e!1883829)))

(declare-fun b!2998099 () Bool)

(assert (=> b!2998099 (= e!1883829 tp_is_empty!16289)))

(declare-fun b!2998101 () Bool)

(declare-fun tp!952463 () Bool)

(assert (=> b!2998101 (= e!1883829 tp!952463)))

(assert (= (and b!2996942 ((_ is ElementMatch!9363) (reg!9692 (regTwo!19238 (regOne!19238 r!17423))))) b!2998099))

(assert (= (and b!2996942 ((_ is Concat!14684) (reg!9692 (regTwo!19238 (regOne!19238 r!17423))))) b!2998100))

(assert (= (and b!2996942 ((_ is Star!9363) (reg!9692 (regTwo!19238 (regOne!19238 r!17423))))) b!2998101))

(assert (= (and b!2996942 ((_ is Union!9363) (reg!9692 (regTwo!19238 (regOne!19238 r!17423))))) b!2998102))

(declare-fun b!2998104 () Bool)

(declare-fun e!1883830 () Bool)

(declare-fun tp!952467 () Bool)

(declare-fun tp!952466 () Bool)

(assert (=> b!2998104 (= e!1883830 (and tp!952467 tp!952466))))

(declare-fun b!2998106 () Bool)

(declare-fun tp!952469 () Bool)

(declare-fun tp!952465 () Bool)

(assert (=> b!2998106 (= e!1883830 (and tp!952469 tp!952465))))

(assert (=> b!2996933 (= tp!952141 e!1883830)))

(declare-fun b!2998103 () Bool)

(assert (=> b!2998103 (= e!1883830 tp_is_empty!16289)))

(declare-fun b!2998105 () Bool)

(declare-fun tp!952468 () Bool)

(assert (=> b!2998105 (= e!1883830 tp!952468)))

(assert (= (and b!2996933 ((_ is ElementMatch!9363) (regOne!19238 (reg!9692 (regTwo!19238 r!17423))))) b!2998103))

(assert (= (and b!2996933 ((_ is Concat!14684) (regOne!19238 (reg!9692 (regTwo!19238 r!17423))))) b!2998104))

(assert (= (and b!2996933 ((_ is Star!9363) (regOne!19238 (reg!9692 (regTwo!19238 r!17423))))) b!2998105))

(assert (= (and b!2996933 ((_ is Union!9363) (regOne!19238 (reg!9692 (regTwo!19238 r!17423))))) b!2998106))

(declare-fun b!2998108 () Bool)

(declare-fun e!1883831 () Bool)

(declare-fun tp!952472 () Bool)

(declare-fun tp!952471 () Bool)

(assert (=> b!2998108 (= e!1883831 (and tp!952472 tp!952471))))

(declare-fun b!2998110 () Bool)

(declare-fun tp!952474 () Bool)

(declare-fun tp!952470 () Bool)

(assert (=> b!2998110 (= e!1883831 (and tp!952474 tp!952470))))

(assert (=> b!2996933 (= tp!952140 e!1883831)))

(declare-fun b!2998107 () Bool)

(assert (=> b!2998107 (= e!1883831 tp_is_empty!16289)))

(declare-fun b!2998109 () Bool)

(declare-fun tp!952473 () Bool)

(assert (=> b!2998109 (= e!1883831 tp!952473)))

(assert (= (and b!2996933 ((_ is ElementMatch!9363) (regTwo!19238 (reg!9692 (regTwo!19238 r!17423))))) b!2998107))

(assert (= (and b!2996933 ((_ is Concat!14684) (regTwo!19238 (reg!9692 (regTwo!19238 r!17423))))) b!2998108))

(assert (= (and b!2996933 ((_ is Star!9363) (regTwo!19238 (reg!9692 (regTwo!19238 r!17423))))) b!2998109))

(assert (= (and b!2996933 ((_ is Union!9363) (regTwo!19238 (reg!9692 (regTwo!19238 r!17423))))) b!2998110))

(declare-fun b!2998112 () Bool)

(declare-fun e!1883832 () Bool)

(declare-fun tp!952477 () Bool)

(declare-fun tp!952476 () Bool)

(assert (=> b!2998112 (= e!1883832 (and tp!952477 tp!952476))))

(declare-fun b!2998114 () Bool)

(declare-fun tp!952479 () Bool)

(declare-fun tp!952475 () Bool)

(assert (=> b!2998114 (= e!1883832 (and tp!952479 tp!952475))))

(assert (=> b!2996898 (= tp!952097 e!1883832)))

(declare-fun b!2998111 () Bool)

(assert (=> b!2998111 (= e!1883832 tp_is_empty!16289)))

(declare-fun b!2998113 () Bool)

(declare-fun tp!952478 () Bool)

(assert (=> b!2998113 (= e!1883832 tp!952478)))

(assert (= (and b!2996898 ((_ is ElementMatch!9363) (reg!9692 (regOne!19239 (reg!9692 r!17423))))) b!2998111))

(assert (= (and b!2996898 ((_ is Concat!14684) (reg!9692 (regOne!19239 (reg!9692 r!17423))))) b!2998112))

(assert (= (and b!2996898 ((_ is Star!9363) (reg!9692 (regOne!19239 (reg!9692 r!17423))))) b!2998113))

(assert (= (and b!2996898 ((_ is Union!9363) (reg!9692 (regOne!19239 (reg!9692 r!17423))))) b!2998114))

(declare-fun b!2998116 () Bool)

(declare-fun e!1883833 () Bool)

(declare-fun tp!952482 () Bool)

(declare-fun tp!952481 () Bool)

(assert (=> b!2998116 (= e!1883833 (and tp!952482 tp!952481))))

(declare-fun b!2998118 () Bool)

(declare-fun tp!952484 () Bool)

(declare-fun tp!952480 () Bool)

(assert (=> b!2998118 (= e!1883833 (and tp!952484 tp!952480))))

(assert (=> b!2996861 (= tp!952082 e!1883833)))

(declare-fun b!2998115 () Bool)

(assert (=> b!2998115 (= e!1883833 tp_is_empty!16289)))

(declare-fun b!2998117 () Bool)

(declare-fun tp!952483 () Bool)

(assert (=> b!2998117 (= e!1883833 tp!952483)))

(assert (= (and b!2996861 ((_ is ElementMatch!9363) (reg!9692 (regTwo!19238 (regOne!19239 r!17423))))) b!2998115))

(assert (= (and b!2996861 ((_ is Concat!14684) (reg!9692 (regTwo!19238 (regOne!19239 r!17423))))) b!2998116))

(assert (= (and b!2996861 ((_ is Star!9363) (reg!9692 (regTwo!19238 (regOne!19239 r!17423))))) b!2998117))

(assert (= (and b!2996861 ((_ is Union!9363) (reg!9692 (regTwo!19238 (regOne!19239 r!17423))))) b!2998118))

(declare-fun b!2998120 () Bool)

(declare-fun e!1883834 () Bool)

(declare-fun tp!952487 () Bool)

(declare-fun tp!952486 () Bool)

(assert (=> b!2998120 (= e!1883834 (and tp!952487 tp!952486))))

(declare-fun b!2998122 () Bool)

(declare-fun tp!952489 () Bool)

(declare-fun tp!952485 () Bool)

(assert (=> b!2998122 (= e!1883834 (and tp!952489 tp!952485))))

(assert (=> b!2996907 (= tp!952108 e!1883834)))

(declare-fun b!2998119 () Bool)

(assert (=> b!2998119 (= e!1883834 tp_is_empty!16289)))

(declare-fun b!2998121 () Bool)

(declare-fun tp!952488 () Bool)

(assert (=> b!2998121 (= e!1883834 tp!952488)))

(assert (= (and b!2996907 ((_ is ElementMatch!9363) (regOne!19239 (regOne!19239 (regOne!19238 r!17423))))) b!2998119))

(assert (= (and b!2996907 ((_ is Concat!14684) (regOne!19239 (regOne!19239 (regOne!19238 r!17423))))) b!2998120))

(assert (= (and b!2996907 ((_ is Star!9363) (regOne!19239 (regOne!19239 (regOne!19238 r!17423))))) b!2998121))

(assert (= (and b!2996907 ((_ is Union!9363) (regOne!19239 (regOne!19239 (regOne!19238 r!17423))))) b!2998122))

(declare-fun b!2998124 () Bool)

(declare-fun e!1883835 () Bool)

(declare-fun tp!952492 () Bool)

(declare-fun tp!952491 () Bool)

(assert (=> b!2998124 (= e!1883835 (and tp!952492 tp!952491))))

(declare-fun b!2998126 () Bool)

(declare-fun tp!952494 () Bool)

(declare-fun tp!952490 () Bool)

(assert (=> b!2998126 (= e!1883835 (and tp!952494 tp!952490))))

(assert (=> b!2996907 (= tp!952104 e!1883835)))

(declare-fun b!2998123 () Bool)

(assert (=> b!2998123 (= e!1883835 tp_is_empty!16289)))

(declare-fun b!2998125 () Bool)

(declare-fun tp!952493 () Bool)

(assert (=> b!2998125 (= e!1883835 tp!952493)))

(assert (= (and b!2996907 ((_ is ElementMatch!9363) (regTwo!19239 (regOne!19239 (regOne!19238 r!17423))))) b!2998123))

(assert (= (and b!2996907 ((_ is Concat!14684) (regTwo!19239 (regOne!19239 (regOne!19238 r!17423))))) b!2998124))

(assert (= (and b!2996907 ((_ is Star!9363) (regTwo!19239 (regOne!19239 (regOne!19238 r!17423))))) b!2998125))

(assert (= (and b!2996907 ((_ is Union!9363) (regTwo!19239 (regOne!19239 (regOne!19238 r!17423))))) b!2998126))

(declare-fun b!2998128 () Bool)

(declare-fun e!1883836 () Bool)

(declare-fun tp!952497 () Bool)

(declare-fun tp!952496 () Bool)

(assert (=> b!2998128 (= e!1883836 (and tp!952497 tp!952496))))

(declare-fun b!2998130 () Bool)

(declare-fun tp!952499 () Bool)

(declare-fun tp!952495 () Bool)

(assert (=> b!2998130 (= e!1883836 (and tp!952499 tp!952495))))

(assert (=> b!2996858 (= tp!952078 e!1883836)))

(declare-fun b!2998127 () Bool)

(assert (=> b!2998127 (= e!1883836 tp_is_empty!16289)))

(declare-fun b!2998129 () Bool)

(declare-fun tp!952498 () Bool)

(assert (=> b!2998129 (= e!1883836 tp!952498)))

(assert (= (and b!2996858 ((_ is ElementMatch!9363) (regOne!19239 (regOne!19238 (regOne!19239 r!17423))))) b!2998127))

(assert (= (and b!2996858 ((_ is Concat!14684) (regOne!19239 (regOne!19238 (regOne!19239 r!17423))))) b!2998128))

(assert (= (and b!2996858 ((_ is Star!9363) (regOne!19239 (regOne!19238 (regOne!19239 r!17423))))) b!2998129))

(assert (= (and b!2996858 ((_ is Union!9363) (regOne!19239 (regOne!19238 (regOne!19239 r!17423))))) b!2998130))

(declare-fun b!2998132 () Bool)

(declare-fun e!1883837 () Bool)

(declare-fun tp!952502 () Bool)

(declare-fun tp!952501 () Bool)

(assert (=> b!2998132 (= e!1883837 (and tp!952502 tp!952501))))

(declare-fun b!2998134 () Bool)

(declare-fun tp!952504 () Bool)

(declare-fun tp!952500 () Bool)

(assert (=> b!2998134 (= e!1883837 (and tp!952504 tp!952500))))

(assert (=> b!2996858 (= tp!952074 e!1883837)))

(declare-fun b!2998131 () Bool)

(assert (=> b!2998131 (= e!1883837 tp_is_empty!16289)))

(declare-fun b!2998133 () Bool)

(declare-fun tp!952503 () Bool)

(assert (=> b!2998133 (= e!1883837 tp!952503)))

(assert (= (and b!2996858 ((_ is ElementMatch!9363) (regTwo!19239 (regOne!19238 (regOne!19239 r!17423))))) b!2998131))

(assert (= (and b!2996858 ((_ is Concat!14684) (regTwo!19239 (regOne!19238 (regOne!19239 r!17423))))) b!2998132))

(assert (= (and b!2996858 ((_ is Star!9363) (regTwo!19239 (regOne!19238 (regOne!19239 r!17423))))) b!2998133))

(assert (= (and b!2996858 ((_ is Union!9363) (regTwo!19239 (regOne!19238 (regOne!19239 r!17423))))) b!2998134))

(declare-fun b!2998136 () Bool)

(declare-fun e!1883838 () Bool)

(declare-fun tp!952507 () Bool)

(declare-fun tp!952506 () Bool)

(assert (=> b!2998136 (= e!1883838 (and tp!952507 tp!952506))))

(declare-fun b!2998138 () Bool)

(declare-fun tp!952509 () Bool)

(declare-fun tp!952505 () Bool)

(assert (=> b!2998138 (= e!1883838 (and tp!952509 tp!952505))))

(assert (=> b!2996846 (= tp!952063 e!1883838)))

(declare-fun b!2998135 () Bool)

(assert (=> b!2998135 (= e!1883838 tp_is_empty!16289)))

(declare-fun b!2998137 () Bool)

(declare-fun tp!952508 () Bool)

(assert (=> b!2998137 (= e!1883838 tp!952508)))

(assert (= (and b!2996846 ((_ is ElementMatch!9363) (regOne!19239 (regOne!19238 (regTwo!19238 r!17423))))) b!2998135))

(assert (= (and b!2996846 ((_ is Concat!14684) (regOne!19239 (regOne!19238 (regTwo!19238 r!17423))))) b!2998136))

(assert (= (and b!2996846 ((_ is Star!9363) (regOne!19239 (regOne!19238 (regTwo!19238 r!17423))))) b!2998137))

(assert (= (and b!2996846 ((_ is Union!9363) (regOne!19239 (regOne!19238 (regTwo!19238 r!17423))))) b!2998138))

(declare-fun b!2998140 () Bool)

(declare-fun e!1883839 () Bool)

(declare-fun tp!952512 () Bool)

(declare-fun tp!952511 () Bool)

(assert (=> b!2998140 (= e!1883839 (and tp!952512 tp!952511))))

(declare-fun b!2998142 () Bool)

(declare-fun tp!952514 () Bool)

(declare-fun tp!952510 () Bool)

(assert (=> b!2998142 (= e!1883839 (and tp!952514 tp!952510))))

(assert (=> b!2996846 (= tp!952059 e!1883839)))

(declare-fun b!2998139 () Bool)

(assert (=> b!2998139 (= e!1883839 tp_is_empty!16289)))

(declare-fun b!2998141 () Bool)

(declare-fun tp!952513 () Bool)

(assert (=> b!2998141 (= e!1883839 tp!952513)))

(assert (= (and b!2996846 ((_ is ElementMatch!9363) (regTwo!19239 (regOne!19238 (regTwo!19238 r!17423))))) b!2998139))

(assert (= (and b!2996846 ((_ is Concat!14684) (regTwo!19239 (regOne!19238 (regTwo!19238 r!17423))))) b!2998140))

(assert (= (and b!2996846 ((_ is Star!9363) (regTwo!19239 (regOne!19238 (regTwo!19238 r!17423))))) b!2998141))

(assert (= (and b!2996846 ((_ is Union!9363) (regTwo!19239 (regOne!19238 (regTwo!19238 r!17423))))) b!2998142))

(declare-fun b!2998144 () Bool)

(declare-fun e!1883840 () Bool)

(declare-fun tp!952517 () Bool)

(declare-fun tp!952516 () Bool)

(assert (=> b!2998144 (= e!1883840 (and tp!952517 tp!952516))))

(declare-fun b!2998146 () Bool)

(declare-fun tp!952519 () Bool)

(declare-fun tp!952515 () Bool)

(assert (=> b!2998146 (= e!1883840 (and tp!952519 tp!952515))))

(assert (=> b!2996926 (= tp!952132 e!1883840)))

(declare-fun b!2998143 () Bool)

(assert (=> b!2998143 (= e!1883840 tp_is_empty!16289)))

(declare-fun b!2998145 () Bool)

(declare-fun tp!952518 () Bool)

(assert (=> b!2998145 (= e!1883840 tp!952518)))

(assert (= (and b!2996926 ((_ is ElementMatch!9363) (reg!9692 (regOne!19239 (regOne!19239 r!17423))))) b!2998143))

(assert (= (and b!2996926 ((_ is Concat!14684) (reg!9692 (regOne!19239 (regOne!19239 r!17423))))) b!2998144))

(assert (= (and b!2996926 ((_ is Star!9363) (reg!9692 (regOne!19239 (regOne!19239 r!17423))))) b!2998145))

(assert (= (and b!2996926 ((_ is Union!9363) (reg!9692 (regOne!19239 (regOne!19239 r!17423))))) b!2998146))

(declare-fun b!2998148 () Bool)

(declare-fun e!1883841 () Bool)

(declare-fun tp!952522 () Bool)

(declare-fun tp!952521 () Bool)

(assert (=> b!2998148 (= e!1883841 (and tp!952522 tp!952521))))

(declare-fun b!2998150 () Bool)

(declare-fun tp!952524 () Bool)

(declare-fun tp!952520 () Bool)

(assert (=> b!2998150 (= e!1883841 (and tp!952524 tp!952520))))

(assert (=> b!2996929 (= tp!952136 e!1883841)))

(declare-fun b!2998147 () Bool)

(assert (=> b!2998147 (= e!1883841 tp_is_empty!16289)))

(declare-fun b!2998149 () Bool)

(declare-fun tp!952523 () Bool)

(assert (=> b!2998149 (= e!1883841 tp!952523)))

(assert (= (and b!2996929 ((_ is ElementMatch!9363) (regOne!19238 (regTwo!19239 (regOne!19239 r!17423))))) b!2998147))

(assert (= (and b!2996929 ((_ is Concat!14684) (regOne!19238 (regTwo!19239 (regOne!19239 r!17423))))) b!2998148))

(assert (= (and b!2996929 ((_ is Star!9363) (regOne!19238 (regTwo!19239 (regOne!19239 r!17423))))) b!2998149))

(assert (= (and b!2996929 ((_ is Union!9363) (regOne!19238 (regTwo!19239 (regOne!19239 r!17423))))) b!2998150))

(declare-fun b!2998152 () Bool)

(declare-fun e!1883842 () Bool)

(declare-fun tp!952527 () Bool)

(declare-fun tp!952526 () Bool)

(assert (=> b!2998152 (= e!1883842 (and tp!952527 tp!952526))))

(declare-fun b!2998154 () Bool)

(declare-fun tp!952529 () Bool)

(declare-fun tp!952525 () Bool)

(assert (=> b!2998154 (= e!1883842 (and tp!952529 tp!952525))))

(assert (=> b!2996929 (= tp!952135 e!1883842)))

(declare-fun b!2998151 () Bool)

(assert (=> b!2998151 (= e!1883842 tp_is_empty!16289)))

(declare-fun b!2998153 () Bool)

(declare-fun tp!952528 () Bool)

(assert (=> b!2998153 (= e!1883842 tp!952528)))

(assert (= (and b!2996929 ((_ is ElementMatch!9363) (regTwo!19238 (regTwo!19239 (regOne!19239 r!17423))))) b!2998151))

(assert (= (and b!2996929 ((_ is Concat!14684) (regTwo!19238 (regTwo!19239 (regOne!19239 r!17423))))) b!2998152))

(assert (= (and b!2996929 ((_ is Star!9363) (regTwo!19238 (regTwo!19239 (regOne!19239 r!17423))))) b!2998153))

(assert (= (and b!2996929 ((_ is Union!9363) (regTwo!19238 (regTwo!19239 (regOne!19239 r!17423))))) b!2998154))

(declare-fun b!2998156 () Bool)

(declare-fun e!1883843 () Bool)

(declare-fun tp!952532 () Bool)

(declare-fun tp!952531 () Bool)

(assert (=> b!2998156 (= e!1883843 (and tp!952532 tp!952531))))

(declare-fun b!2998158 () Bool)

(declare-fun tp!952534 () Bool)

(declare-fun tp!952530 () Bool)

(assert (=> b!2998158 (= e!1883843 (and tp!952534 tp!952530))))

(assert (=> b!2996844 (= tp!952061 e!1883843)))

(declare-fun b!2998155 () Bool)

(assert (=> b!2998155 (= e!1883843 tp_is_empty!16289)))

(declare-fun b!2998157 () Bool)

(declare-fun tp!952533 () Bool)

(assert (=> b!2998157 (= e!1883843 tp!952533)))

(assert (= (and b!2996844 ((_ is ElementMatch!9363) (regOne!19238 (regOne!19238 (regTwo!19238 r!17423))))) b!2998155))

(assert (= (and b!2996844 ((_ is Concat!14684) (regOne!19238 (regOne!19238 (regTwo!19238 r!17423))))) b!2998156))

(assert (= (and b!2996844 ((_ is Star!9363) (regOne!19238 (regOne!19238 (regTwo!19238 r!17423))))) b!2998157))

(assert (= (and b!2996844 ((_ is Union!9363) (regOne!19238 (regOne!19238 (regTwo!19238 r!17423))))) b!2998158))

(declare-fun b!2998160 () Bool)

(declare-fun e!1883844 () Bool)

(declare-fun tp!952537 () Bool)

(declare-fun tp!952536 () Bool)

(assert (=> b!2998160 (= e!1883844 (and tp!952537 tp!952536))))

(declare-fun b!2998162 () Bool)

(declare-fun tp!952539 () Bool)

(declare-fun tp!952535 () Bool)

(assert (=> b!2998162 (= e!1883844 (and tp!952539 tp!952535))))

(assert (=> b!2996844 (= tp!952060 e!1883844)))

(declare-fun b!2998159 () Bool)

(assert (=> b!2998159 (= e!1883844 tp_is_empty!16289)))

(declare-fun b!2998161 () Bool)

(declare-fun tp!952538 () Bool)

(assert (=> b!2998161 (= e!1883844 tp!952538)))

(assert (= (and b!2996844 ((_ is ElementMatch!9363) (regTwo!19238 (regOne!19238 (regTwo!19238 r!17423))))) b!2998159))

(assert (= (and b!2996844 ((_ is Concat!14684) (regTwo!19238 (regOne!19238 (regTwo!19238 r!17423))))) b!2998160))

(assert (= (and b!2996844 ((_ is Star!9363) (regTwo!19238 (regOne!19238 (regTwo!19238 r!17423))))) b!2998161))

(assert (= (and b!2996844 ((_ is Union!9363) (regTwo!19238 (regOne!19238 (regTwo!19238 r!17423))))) b!2998162))

(declare-fun b!2998164 () Bool)

(declare-fun e!1883845 () Bool)

(declare-fun tp!952542 () Bool)

(declare-fun tp!952541 () Bool)

(assert (=> b!2998164 (= e!1883845 (and tp!952542 tp!952541))))

(declare-fun b!2998166 () Bool)

(declare-fun tp!952544 () Bool)

(declare-fun tp!952540 () Bool)

(assert (=> b!2998166 (= e!1883845 (and tp!952544 tp!952540))))

(assert (=> b!2996853 (= tp!952072 e!1883845)))

(declare-fun b!2998163 () Bool)

(assert (=> b!2998163 (= e!1883845 tp_is_empty!16289)))

(declare-fun b!2998165 () Bool)

(declare-fun tp!952543 () Bool)

(assert (=> b!2998165 (= e!1883845 tp!952543)))

(assert (= (and b!2996853 ((_ is ElementMatch!9363) (reg!9692 (reg!9692 (regTwo!19239 r!17423))))) b!2998163))

(assert (= (and b!2996853 ((_ is Concat!14684) (reg!9692 (reg!9692 (regTwo!19239 r!17423))))) b!2998164))

(assert (= (and b!2996853 ((_ is Star!9363) (reg!9692 (reg!9692 (regTwo!19239 r!17423))))) b!2998165))

(assert (= (and b!2996853 ((_ is Union!9363) (reg!9692 (reg!9692 (regTwo!19239 r!17423))))) b!2998166))

(declare-fun b!2998168 () Bool)

(declare-fun e!1883846 () Bool)

(declare-fun tp!952547 () Bool)

(declare-fun tp!952546 () Bool)

(assert (=> b!2998168 (= e!1883846 (and tp!952547 tp!952546))))

(declare-fun b!2998170 () Bool)

(declare-fun tp!952549 () Bool)

(declare-fun tp!952545 () Bool)

(assert (=> b!2998170 (= e!1883846 (and tp!952549 tp!952545))))

(assert (=> b!2996931 (= tp!952138 e!1883846)))

(declare-fun b!2998167 () Bool)

(assert (=> b!2998167 (= e!1883846 tp_is_empty!16289)))

(declare-fun b!2998169 () Bool)

(declare-fun tp!952548 () Bool)

(assert (=> b!2998169 (= e!1883846 tp!952548)))

(assert (= (and b!2996931 ((_ is ElementMatch!9363) (regOne!19239 (regTwo!19239 (regOne!19239 r!17423))))) b!2998167))

(assert (= (and b!2996931 ((_ is Concat!14684) (regOne!19239 (regTwo!19239 (regOne!19239 r!17423))))) b!2998168))

(assert (= (and b!2996931 ((_ is Star!9363) (regOne!19239 (regTwo!19239 (regOne!19239 r!17423))))) b!2998169))

(assert (= (and b!2996931 ((_ is Union!9363) (regOne!19239 (regTwo!19239 (regOne!19239 r!17423))))) b!2998170))

(declare-fun b!2998172 () Bool)

(declare-fun e!1883847 () Bool)

(declare-fun tp!952552 () Bool)

(declare-fun tp!952551 () Bool)

(assert (=> b!2998172 (= e!1883847 (and tp!952552 tp!952551))))

(declare-fun b!2998174 () Bool)

(declare-fun tp!952554 () Bool)

(declare-fun tp!952550 () Bool)

(assert (=> b!2998174 (= e!1883847 (and tp!952554 tp!952550))))

(assert (=> b!2996931 (= tp!952134 e!1883847)))

(declare-fun b!2998171 () Bool)

(assert (=> b!2998171 (= e!1883847 tp_is_empty!16289)))

(declare-fun b!2998173 () Bool)

(declare-fun tp!952553 () Bool)

(assert (=> b!2998173 (= e!1883847 tp!952553)))

(assert (= (and b!2996931 ((_ is ElementMatch!9363) (regTwo!19239 (regTwo!19239 (regOne!19239 r!17423))))) b!2998171))

(assert (= (and b!2996931 ((_ is Concat!14684) (regTwo!19239 (regTwo!19239 (regOne!19239 r!17423))))) b!2998172))

(assert (= (and b!2996931 ((_ is Star!9363) (regTwo!19239 (regTwo!19239 (regOne!19239 r!17423))))) b!2998173))

(assert (= (and b!2996931 ((_ is Union!9363) (regTwo!19239 (regTwo!19239 (regOne!19239 r!17423))))) b!2998174))

(declare-fun b!2998176 () Bool)

(declare-fun e!1883848 () Bool)

(declare-fun tp!952557 () Bool)

(declare-fun tp!952556 () Bool)

(assert (=> b!2998176 (= e!1883848 (and tp!952557 tp!952556))))

(declare-fun b!2998178 () Bool)

(declare-fun tp!952559 () Bool)

(declare-fun tp!952555 () Bool)

(assert (=> b!2998178 (= e!1883848 (and tp!952559 tp!952555))))

(assert (=> b!2996830 (= tp!952043 e!1883848)))

(declare-fun b!2998175 () Bool)

(assert (=> b!2998175 (= e!1883848 tp_is_empty!16289)))

(declare-fun b!2998177 () Bool)

(declare-fun tp!952558 () Bool)

(assert (=> b!2998177 (= e!1883848 tp!952558)))

(assert (= (and b!2996830 ((_ is ElementMatch!9363) (regOne!19239 (reg!9692 (reg!9692 r!17423))))) b!2998175))

(assert (= (and b!2996830 ((_ is Concat!14684) (regOne!19239 (reg!9692 (reg!9692 r!17423))))) b!2998176))

(assert (= (and b!2996830 ((_ is Star!9363) (regOne!19239 (reg!9692 (reg!9692 r!17423))))) b!2998177))

(assert (= (and b!2996830 ((_ is Union!9363) (regOne!19239 (reg!9692 (reg!9692 r!17423))))) b!2998178))

(declare-fun b!2998180 () Bool)

(declare-fun e!1883849 () Bool)

(declare-fun tp!952562 () Bool)

(declare-fun tp!952561 () Bool)

(assert (=> b!2998180 (= e!1883849 (and tp!952562 tp!952561))))

(declare-fun b!2998182 () Bool)

(declare-fun tp!952564 () Bool)

(declare-fun tp!952560 () Bool)

(assert (=> b!2998182 (= e!1883849 (and tp!952564 tp!952560))))

(assert (=> b!2996830 (= tp!952039 e!1883849)))

(declare-fun b!2998179 () Bool)

(assert (=> b!2998179 (= e!1883849 tp_is_empty!16289)))

(declare-fun b!2998181 () Bool)

(declare-fun tp!952563 () Bool)

(assert (=> b!2998181 (= e!1883849 tp!952563)))

(assert (= (and b!2996830 ((_ is ElementMatch!9363) (regTwo!19239 (reg!9692 (reg!9692 r!17423))))) b!2998179))

(assert (= (and b!2996830 ((_ is Concat!14684) (regTwo!19239 (reg!9692 (reg!9692 r!17423))))) b!2998180))

(assert (= (and b!2996830 ((_ is Star!9363) (regTwo!19239 (reg!9692 (reg!9692 r!17423))))) b!2998181))

(assert (= (and b!2996830 ((_ is Union!9363) (regTwo!19239 (reg!9692 (reg!9692 r!17423))))) b!2998182))

(declare-fun b!2998184 () Bool)

(declare-fun e!1883850 () Bool)

(declare-fun tp!952567 () Bool)

(declare-fun tp!952566 () Bool)

(assert (=> b!2998184 (= e!1883850 (and tp!952567 tp!952566))))

(declare-fun b!2998186 () Bool)

(declare-fun tp!952569 () Bool)

(declare-fun tp!952565 () Bool)

(assert (=> b!2998186 (= e!1883850 (and tp!952569 tp!952565))))

(assert (=> b!2996918 (= tp!952122 e!1883850)))

(declare-fun b!2998183 () Bool)

(assert (=> b!2998183 (= e!1883850 tp_is_empty!16289)))

(declare-fun b!2998185 () Bool)

(declare-fun tp!952568 () Bool)

(assert (=> b!2998185 (= e!1883850 tp!952568)))

(assert (= (and b!2996918 ((_ is ElementMatch!9363) (reg!9692 (regTwo!19239 (regTwo!19238 r!17423))))) b!2998183))

(assert (= (and b!2996918 ((_ is Concat!14684) (reg!9692 (regTwo!19239 (regTwo!19238 r!17423))))) b!2998184))

(assert (= (and b!2996918 ((_ is Star!9363) (reg!9692 (regTwo!19239 (regTwo!19238 r!17423))))) b!2998185))

(assert (= (and b!2996918 ((_ is Union!9363) (reg!9692 (regTwo!19239 (regTwo!19238 r!17423))))) b!2998186))

(declare-fun b!2998188 () Bool)

(declare-fun e!1883851 () Bool)

(declare-fun tp!952572 () Bool)

(declare-fun tp!952571 () Bool)

(assert (=> b!2998188 (= e!1883851 (and tp!952572 tp!952571))))

(declare-fun b!2998190 () Bool)

(declare-fun tp!952574 () Bool)

(declare-fun tp!952570 () Bool)

(assert (=> b!2998190 (= e!1883851 (and tp!952574 tp!952570))))

(assert (=> b!2996951 (= tp!952163 e!1883851)))

(declare-fun b!2998187 () Bool)

(assert (=> b!2998187 (= e!1883851 tp_is_empty!16289)))

(declare-fun b!2998189 () Bool)

(declare-fun tp!952573 () Bool)

(assert (=> b!2998189 (= e!1883851 tp!952573)))

(assert (= (and b!2996951 ((_ is ElementMatch!9363) (regOne!19239 (regTwo!19239 (regTwo!19239 r!17423))))) b!2998187))

(assert (= (and b!2996951 ((_ is Concat!14684) (regOne!19239 (regTwo!19239 (regTwo!19239 r!17423))))) b!2998188))

(assert (= (and b!2996951 ((_ is Star!9363) (regOne!19239 (regTwo!19239 (regTwo!19239 r!17423))))) b!2998189))

(assert (= (and b!2996951 ((_ is Union!9363) (regOne!19239 (regTwo!19239 (regTwo!19239 r!17423))))) b!2998190))

(declare-fun b!2998192 () Bool)

(declare-fun e!1883852 () Bool)

(declare-fun tp!952577 () Bool)

(declare-fun tp!952576 () Bool)

(assert (=> b!2998192 (= e!1883852 (and tp!952577 tp!952576))))

(declare-fun b!2998194 () Bool)

(declare-fun tp!952579 () Bool)

(declare-fun tp!952575 () Bool)

(assert (=> b!2998194 (= e!1883852 (and tp!952579 tp!952575))))

(assert (=> b!2996951 (= tp!952159 e!1883852)))

(declare-fun b!2998191 () Bool)

(assert (=> b!2998191 (= e!1883852 tp_is_empty!16289)))

(declare-fun b!2998193 () Bool)

(declare-fun tp!952578 () Bool)

(assert (=> b!2998193 (= e!1883852 tp!952578)))

(assert (= (and b!2996951 ((_ is ElementMatch!9363) (regTwo!19239 (regTwo!19239 (regTwo!19239 r!17423))))) b!2998191))

(assert (= (and b!2996951 ((_ is Concat!14684) (regTwo!19239 (regTwo!19239 (regTwo!19239 r!17423))))) b!2998192))

(assert (= (and b!2996951 ((_ is Star!9363) (regTwo!19239 (regTwo!19239 (regTwo!19239 r!17423))))) b!2998193))

(assert (= (and b!2996951 ((_ is Union!9363) (regTwo!19239 (regTwo!19239 (regTwo!19239 r!17423))))) b!2998194))

(declare-fun b!2998196 () Bool)

(declare-fun e!1883853 () Bool)

(declare-fun tp!952582 () Bool)

(declare-fun tp!952581 () Bool)

(assert (=> b!2998196 (= e!1883853 (and tp!952582 tp!952581))))

(declare-fun b!2998198 () Bool)

(declare-fun tp!952584 () Bool)

(declare-fun tp!952580 () Bool)

(assert (=> b!2998198 (= e!1883853 (and tp!952584 tp!952580))))

(assert (=> b!2996921 (= tp!952126 e!1883853)))

(declare-fun b!2998195 () Bool)

(assert (=> b!2998195 (= e!1883853 tp_is_empty!16289)))

(declare-fun b!2998197 () Bool)

(declare-fun tp!952583 () Bool)

(assert (=> b!2998197 (= e!1883853 tp!952583)))

(assert (= (and b!2996921 ((_ is ElementMatch!9363) (regOne!19238 (reg!9692 (regOne!19238 r!17423))))) b!2998195))

(assert (= (and b!2996921 ((_ is Concat!14684) (regOne!19238 (reg!9692 (regOne!19238 r!17423))))) b!2998196))

(assert (= (and b!2996921 ((_ is Star!9363) (regOne!19238 (reg!9692 (regOne!19238 r!17423))))) b!2998197))

(assert (= (and b!2996921 ((_ is Union!9363) (regOne!19238 (reg!9692 (regOne!19238 r!17423))))) b!2998198))

(declare-fun b!2998200 () Bool)

(declare-fun e!1883854 () Bool)

(declare-fun tp!952587 () Bool)

(declare-fun tp!952586 () Bool)

(assert (=> b!2998200 (= e!1883854 (and tp!952587 tp!952586))))

(declare-fun b!2998202 () Bool)

(declare-fun tp!952589 () Bool)

(declare-fun tp!952585 () Bool)

(assert (=> b!2998202 (= e!1883854 (and tp!952589 tp!952585))))

(assert (=> b!2996921 (= tp!952125 e!1883854)))

(declare-fun b!2998199 () Bool)

(assert (=> b!2998199 (= e!1883854 tp_is_empty!16289)))

(declare-fun b!2998201 () Bool)

(declare-fun tp!952588 () Bool)

(assert (=> b!2998201 (= e!1883854 tp!952588)))

(assert (= (and b!2996921 ((_ is ElementMatch!9363) (regTwo!19238 (reg!9692 (regOne!19238 r!17423))))) b!2998199))

(assert (= (and b!2996921 ((_ is Concat!14684) (regTwo!19238 (reg!9692 (regOne!19238 r!17423))))) b!2998200))

(assert (= (and b!2996921 ((_ is Star!9363) (regTwo!19238 (reg!9692 (regOne!19238 r!17423))))) b!2998201))

(assert (= (and b!2996921 ((_ is Union!9363) (regTwo!19238 (reg!9692 (regOne!19238 r!17423))))) b!2998202))

(declare-fun b!2998204 () Bool)

(declare-fun e!1883855 () Bool)

(declare-fun tp!952592 () Bool)

(declare-fun tp!952591 () Bool)

(assert (=> b!2998204 (= e!1883855 (and tp!952592 tp!952591))))

(declare-fun b!2998206 () Bool)

(declare-fun tp!952594 () Bool)

(declare-fun tp!952590 () Bool)

(assert (=> b!2998206 (= e!1883855 (and tp!952594 tp!952590))))

(assert (=> b!2996828 (= tp!952041 e!1883855)))

(declare-fun b!2998203 () Bool)

(assert (=> b!2998203 (= e!1883855 tp_is_empty!16289)))

(declare-fun b!2998205 () Bool)

(declare-fun tp!952593 () Bool)

(assert (=> b!2998205 (= e!1883855 tp!952593)))

(assert (= (and b!2996828 ((_ is ElementMatch!9363) (regOne!19238 (reg!9692 (reg!9692 r!17423))))) b!2998203))

(assert (= (and b!2996828 ((_ is Concat!14684) (regOne!19238 (reg!9692 (reg!9692 r!17423))))) b!2998204))

(assert (= (and b!2996828 ((_ is Star!9363) (regOne!19238 (reg!9692 (reg!9692 r!17423))))) b!2998205))

(assert (= (and b!2996828 ((_ is Union!9363) (regOne!19238 (reg!9692 (reg!9692 r!17423))))) b!2998206))

(declare-fun b!2998208 () Bool)

(declare-fun e!1883856 () Bool)

(declare-fun tp!952597 () Bool)

(declare-fun tp!952596 () Bool)

(assert (=> b!2998208 (= e!1883856 (and tp!952597 tp!952596))))

(declare-fun b!2998210 () Bool)

(declare-fun tp!952599 () Bool)

(declare-fun tp!952595 () Bool)

(assert (=> b!2998210 (= e!1883856 (and tp!952599 tp!952595))))

(assert (=> b!2996828 (= tp!952040 e!1883856)))

(declare-fun b!2998207 () Bool)

(assert (=> b!2998207 (= e!1883856 tp_is_empty!16289)))

(declare-fun b!2998209 () Bool)

(declare-fun tp!952598 () Bool)

(assert (=> b!2998209 (= e!1883856 tp!952598)))

(assert (= (and b!2996828 ((_ is ElementMatch!9363) (regTwo!19238 (reg!9692 (reg!9692 r!17423))))) b!2998207))

(assert (= (and b!2996828 ((_ is Concat!14684) (regTwo!19238 (reg!9692 (reg!9692 r!17423))))) b!2998208))

(assert (= (and b!2996828 ((_ is Star!9363) (regTwo!19238 (reg!9692 (reg!9692 r!17423))))) b!2998209))

(assert (= (and b!2996828 ((_ is Union!9363) (regTwo!19238 (reg!9692 (reg!9692 r!17423))))) b!2998210))

(declare-fun b!2998212 () Bool)

(declare-fun e!1883857 () Bool)

(declare-fun tp!952602 () Bool)

(declare-fun tp!952601 () Bool)

(assert (=> b!2998212 (= e!1883857 (and tp!952602 tp!952601))))

(declare-fun b!2998214 () Bool)

(declare-fun tp!952604 () Bool)

(declare-fun tp!952600 () Bool)

(assert (=> b!2998214 (= e!1883857 (and tp!952604 tp!952600))))

(assert (=> b!2996837 (= tp!952052 e!1883857)))

(declare-fun b!2998211 () Bool)

(assert (=> b!2998211 (= e!1883857 tp_is_empty!16289)))

(declare-fun b!2998213 () Bool)

(declare-fun tp!952603 () Bool)

(assert (=> b!2998213 (= e!1883857 tp!952603)))

(assert (= (and b!2996837 ((_ is ElementMatch!9363) (reg!9692 (regTwo!19238 (reg!9692 r!17423))))) b!2998211))

(assert (= (and b!2996837 ((_ is Concat!14684) (reg!9692 (regTwo!19238 (reg!9692 r!17423))))) b!2998212))

(assert (= (and b!2996837 ((_ is Star!9363) (reg!9692 (regTwo!19238 (reg!9692 r!17423))))) b!2998213))

(assert (= (and b!2996837 ((_ is Union!9363) (reg!9692 (regTwo!19238 (reg!9692 r!17423))))) b!2998214))

(declare-fun b!2998216 () Bool)

(declare-fun e!1883858 () Bool)

(declare-fun tp!952607 () Bool)

(declare-fun tp!952606 () Bool)

(assert (=> b!2998216 (= e!1883858 (and tp!952607 tp!952606))))

(declare-fun b!2998218 () Bool)

(declare-fun tp!952609 () Bool)

(declare-fun tp!952605 () Bool)

(assert (=> b!2998218 (= e!1883858 (and tp!952609 tp!952605))))

(assert (=> b!2996923 (= tp!952128 e!1883858)))

(declare-fun b!2998215 () Bool)

(assert (=> b!2998215 (= e!1883858 tp_is_empty!16289)))

(declare-fun b!2998217 () Bool)

(declare-fun tp!952608 () Bool)

(assert (=> b!2998217 (= e!1883858 tp!952608)))

(assert (= (and b!2996923 ((_ is ElementMatch!9363) (regOne!19239 (reg!9692 (regOne!19238 r!17423))))) b!2998215))

(assert (= (and b!2996923 ((_ is Concat!14684) (regOne!19239 (reg!9692 (regOne!19238 r!17423))))) b!2998216))

(assert (= (and b!2996923 ((_ is Star!9363) (regOne!19239 (reg!9692 (regOne!19238 r!17423))))) b!2998217))

(assert (= (and b!2996923 ((_ is Union!9363) (regOne!19239 (reg!9692 (regOne!19238 r!17423))))) b!2998218))

(declare-fun b!2998220 () Bool)

(declare-fun e!1883859 () Bool)

(declare-fun tp!952612 () Bool)

(declare-fun tp!952611 () Bool)

(assert (=> b!2998220 (= e!1883859 (and tp!952612 tp!952611))))

(declare-fun b!2998222 () Bool)

(declare-fun tp!952614 () Bool)

(declare-fun tp!952610 () Bool)

(assert (=> b!2998222 (= e!1883859 (and tp!952614 tp!952610))))

(assert (=> b!2996923 (= tp!952124 e!1883859)))

(declare-fun b!2998219 () Bool)

(assert (=> b!2998219 (= e!1883859 tp_is_empty!16289)))

(declare-fun b!2998221 () Bool)

(declare-fun tp!952613 () Bool)

(assert (=> b!2998221 (= e!1883859 tp!952613)))

(assert (= (and b!2996923 ((_ is ElementMatch!9363) (regTwo!19239 (reg!9692 (regOne!19238 r!17423))))) b!2998219))

(assert (= (and b!2996923 ((_ is Concat!14684) (regTwo!19239 (reg!9692 (regOne!19238 r!17423))))) b!2998220))

(assert (= (and b!2996923 ((_ is Star!9363) (regTwo!19239 (reg!9692 (regOne!19238 r!17423))))) b!2998221))

(assert (= (and b!2996923 ((_ is Union!9363) (regTwo!19239 (reg!9692 (regOne!19238 r!17423))))) b!2998222))

(declare-fun b!2998224 () Bool)

(declare-fun e!1883860 () Bool)

(declare-fun tp!952617 () Bool)

(declare-fun tp!952616 () Bool)

(assert (=> b!2998224 (= e!1883860 (and tp!952617 tp!952616))))

(declare-fun b!2998226 () Bool)

(declare-fun tp!952619 () Bool)

(declare-fun tp!952615 () Bool)

(assert (=> b!2998226 (= e!1883860 (and tp!952619 tp!952615))))

(assert (=> b!2996902 (= tp!952102 e!1883860)))

(declare-fun b!2998223 () Bool)

(assert (=> b!2998223 (= e!1883860 tp_is_empty!16289)))

(declare-fun b!2998225 () Bool)

(declare-fun tp!952618 () Bool)

(assert (=> b!2998225 (= e!1883860 tp!952618)))

(assert (= (and b!2996902 ((_ is ElementMatch!9363) (reg!9692 (regTwo!19239 (reg!9692 r!17423))))) b!2998223))

(assert (= (and b!2996902 ((_ is Concat!14684) (reg!9692 (regTwo!19239 (reg!9692 r!17423))))) b!2998224))

(assert (= (and b!2996902 ((_ is Star!9363) (reg!9692 (regTwo!19239 (reg!9692 r!17423))))) b!2998225))

(assert (= (and b!2996902 ((_ is Union!9363) (reg!9692 (regTwo!19239 (reg!9692 r!17423))))) b!2998226))

(declare-fun b!2998228 () Bool)

(declare-fun e!1883861 () Bool)

(declare-fun tp!952622 () Bool)

(declare-fun tp!952621 () Bool)

(assert (=> b!2998228 (= e!1883861 (and tp!952622 tp!952621))))

(declare-fun b!2998230 () Bool)

(declare-fun tp!952624 () Bool)

(declare-fun tp!952620 () Bool)

(assert (=> b!2998230 (= e!1883861 (and tp!952624 tp!952620))))

(assert (=> b!2996911 (= tp!952113 e!1883861)))

(declare-fun b!2998227 () Bool)

(assert (=> b!2998227 (= e!1883861 tp_is_empty!16289)))

(declare-fun b!2998229 () Bool)

(declare-fun tp!952623 () Bool)

(assert (=> b!2998229 (= e!1883861 tp!952623)))

(assert (= (and b!2996911 ((_ is ElementMatch!9363) (regOne!19239 (regTwo!19239 (regOne!19238 r!17423))))) b!2998227))

(assert (= (and b!2996911 ((_ is Concat!14684) (regOne!19239 (regTwo!19239 (regOne!19238 r!17423))))) b!2998228))

(assert (= (and b!2996911 ((_ is Star!9363) (regOne!19239 (regTwo!19239 (regOne!19238 r!17423))))) b!2998229))

(assert (= (and b!2996911 ((_ is Union!9363) (regOne!19239 (regTwo!19239 (regOne!19238 r!17423))))) b!2998230))

(declare-fun b!2998232 () Bool)

(declare-fun e!1883862 () Bool)

(declare-fun tp!952627 () Bool)

(declare-fun tp!952626 () Bool)

(assert (=> b!2998232 (= e!1883862 (and tp!952627 tp!952626))))

(declare-fun b!2998234 () Bool)

(declare-fun tp!952629 () Bool)

(declare-fun tp!952625 () Bool)

(assert (=> b!2998234 (= e!1883862 (and tp!952629 tp!952625))))

(assert (=> b!2996911 (= tp!952109 e!1883862)))

(declare-fun b!2998231 () Bool)

(assert (=> b!2998231 (= e!1883862 tp_is_empty!16289)))

(declare-fun b!2998233 () Bool)

(declare-fun tp!952628 () Bool)

(assert (=> b!2998233 (= e!1883862 tp!952628)))

(assert (= (and b!2996911 ((_ is ElementMatch!9363) (regTwo!19239 (regTwo!19239 (regOne!19238 r!17423))))) b!2998231))

(assert (= (and b!2996911 ((_ is Concat!14684) (regTwo!19239 (regTwo!19239 (regOne!19238 r!17423))))) b!2998232))

(assert (= (and b!2996911 ((_ is Star!9363) (regTwo!19239 (regTwo!19239 (regOne!19238 r!17423))))) b!2998233))

(assert (= (and b!2996911 ((_ is Union!9363) (regTwo!19239 (regTwo!19239 (regOne!19238 r!17423))))) b!2998234))

(declare-fun b!2998236 () Bool)

(declare-fun e!1883863 () Bool)

(declare-fun tp!952632 () Bool)

(declare-fun tp!952631 () Bool)

(assert (=> b!2998236 (= e!1883863 (and tp!952632 tp!952631))))

(declare-fun b!2998238 () Bool)

(declare-fun tp!952634 () Bool)

(declare-fun tp!952630 () Bool)

(assert (=> b!2998238 (= e!1883863 (and tp!952634 tp!952630))))

(assert (=> b!2996909 (= tp!952111 e!1883863)))

(declare-fun b!2998235 () Bool)

(assert (=> b!2998235 (= e!1883863 tp_is_empty!16289)))

(declare-fun b!2998237 () Bool)

(declare-fun tp!952633 () Bool)

(assert (=> b!2998237 (= e!1883863 tp!952633)))

(assert (= (and b!2996909 ((_ is ElementMatch!9363) (regOne!19238 (regTwo!19239 (regOne!19238 r!17423))))) b!2998235))

(assert (= (and b!2996909 ((_ is Concat!14684) (regOne!19238 (regTwo!19239 (regOne!19238 r!17423))))) b!2998236))

(assert (= (and b!2996909 ((_ is Star!9363) (regOne!19238 (regTwo!19239 (regOne!19238 r!17423))))) b!2998237))

(assert (= (and b!2996909 ((_ is Union!9363) (regOne!19238 (regTwo!19239 (regOne!19238 r!17423))))) b!2998238))

(declare-fun b!2998240 () Bool)

(declare-fun e!1883864 () Bool)

(declare-fun tp!952637 () Bool)

(declare-fun tp!952636 () Bool)

(assert (=> b!2998240 (= e!1883864 (and tp!952637 tp!952636))))

(declare-fun b!2998242 () Bool)

(declare-fun tp!952639 () Bool)

(declare-fun tp!952635 () Bool)

(assert (=> b!2998242 (= e!1883864 (and tp!952639 tp!952635))))

(assert (=> b!2996909 (= tp!952110 e!1883864)))

(declare-fun b!2998239 () Bool)

(assert (=> b!2998239 (= e!1883864 tp_is_empty!16289)))

(declare-fun b!2998241 () Bool)

(declare-fun tp!952638 () Bool)

(assert (=> b!2998241 (= e!1883864 tp!952638)))

(assert (= (and b!2996909 ((_ is ElementMatch!9363) (regTwo!19238 (regTwo!19239 (regOne!19238 r!17423))))) b!2998239))

(assert (= (and b!2996909 ((_ is Concat!14684) (regTwo!19238 (regTwo!19239 (regOne!19238 r!17423))))) b!2998240))

(assert (= (and b!2996909 ((_ is Star!9363) (regTwo!19238 (regTwo!19239 (regOne!19238 r!17423))))) b!2998241))

(assert (= (and b!2996909 ((_ is Union!9363) (regTwo!19238 (regTwo!19239 (regOne!19238 r!17423))))) b!2998242))

(declare-fun b!2998244 () Bool)

(declare-fun e!1883865 () Bool)

(declare-fun tp!952642 () Bool)

(declare-fun tp!952641 () Bool)

(assert (=> b!2998244 (= e!1883865 (and tp!952642 tp!952641))))

(declare-fun b!2998246 () Bool)

(declare-fun tp!952644 () Bool)

(declare-fun tp!952640 () Bool)

(assert (=> b!2998246 (= e!1883865 (and tp!952644 tp!952640))))

(assert (=> b!2996894 (= tp!952092 e!1883865)))

(declare-fun b!2998243 () Bool)

(assert (=> b!2998243 (= e!1883865 tp_is_empty!16289)))

(declare-fun b!2998245 () Bool)

(declare-fun tp!952643 () Bool)

(assert (=> b!2998245 (= e!1883865 tp!952643)))

(assert (= (and b!2996894 ((_ is ElementMatch!9363) (reg!9692 (regTwo!19238 (regTwo!19239 r!17423))))) b!2998243))

(assert (= (and b!2996894 ((_ is Concat!14684) (reg!9692 (regTwo!19238 (regTwo!19239 r!17423))))) b!2998244))

(assert (= (and b!2996894 ((_ is Star!9363) (reg!9692 (regTwo!19238 (regTwo!19239 r!17423))))) b!2998245))

(assert (= (and b!2996894 ((_ is Union!9363) (reg!9692 (regTwo!19238 (regTwo!19239 r!17423))))) b!2998246))

(declare-fun b!2998248 () Bool)

(declare-fun e!1883866 () Bool)

(declare-fun tp!952647 () Bool)

(declare-fun tp!952646 () Bool)

(assert (=> b!2998248 (= e!1883866 (and tp!952647 tp!952646))))

(declare-fun b!2998250 () Bool)

(declare-fun tp!952649 () Bool)

(declare-fun tp!952645 () Bool)

(assert (=> b!2998250 (= e!1883866 (and tp!952649 tp!952645))))

(assert (=> b!2996903 (= tp!952103 e!1883866)))

(declare-fun b!2998247 () Bool)

(assert (=> b!2998247 (= e!1883866 tp_is_empty!16289)))

(declare-fun b!2998249 () Bool)

(declare-fun tp!952648 () Bool)

(assert (=> b!2998249 (= e!1883866 tp!952648)))

(assert (= (and b!2996903 ((_ is ElementMatch!9363) (regOne!19239 (regTwo!19239 (reg!9692 r!17423))))) b!2998247))

(assert (= (and b!2996903 ((_ is Concat!14684) (regOne!19239 (regTwo!19239 (reg!9692 r!17423))))) b!2998248))

(assert (= (and b!2996903 ((_ is Star!9363) (regOne!19239 (regTwo!19239 (reg!9692 r!17423))))) b!2998249))

(assert (= (and b!2996903 ((_ is Union!9363) (regOne!19239 (regTwo!19239 (reg!9692 r!17423))))) b!2998250))

(declare-fun b!2998252 () Bool)

(declare-fun e!1883867 () Bool)

(declare-fun tp!952652 () Bool)

(declare-fun tp!952651 () Bool)

(assert (=> b!2998252 (= e!1883867 (and tp!952652 tp!952651))))

(declare-fun b!2998254 () Bool)

(declare-fun tp!952654 () Bool)

(declare-fun tp!952650 () Bool)

(assert (=> b!2998254 (= e!1883867 (and tp!952654 tp!952650))))

(assert (=> b!2996903 (= tp!952099 e!1883867)))

(declare-fun b!2998251 () Bool)

(assert (=> b!2998251 (= e!1883867 tp_is_empty!16289)))

(declare-fun b!2998253 () Bool)

(declare-fun tp!952653 () Bool)

(assert (=> b!2998253 (= e!1883867 tp!952653)))

(assert (= (and b!2996903 ((_ is ElementMatch!9363) (regTwo!19239 (regTwo!19239 (reg!9692 r!17423))))) b!2998251))

(assert (= (and b!2996903 ((_ is Concat!14684) (regTwo!19239 (regTwo!19239 (reg!9692 r!17423))))) b!2998252))

(assert (= (and b!2996903 ((_ is Star!9363) (regTwo!19239 (regTwo!19239 (reg!9692 r!17423))))) b!2998253))

(assert (= (and b!2996903 ((_ is Union!9363) (regTwo!19239 (regTwo!19239 (reg!9692 r!17423))))) b!2998254))

(declare-fun b!2998256 () Bool)

(declare-fun e!1883868 () Bool)

(declare-fun tp!952657 () Bool)

(declare-fun tp!952656 () Bool)

(assert (=> b!2998256 (= e!1883868 (and tp!952657 tp!952656))))

(declare-fun b!2998258 () Bool)

(declare-fun tp!952659 () Bool)

(declare-fun tp!952655 () Bool)

(assert (=> b!2998258 (= e!1883868 (and tp!952659 tp!952655))))

(assert (=> b!2996946 (= tp!952157 e!1883868)))

(declare-fun b!2998255 () Bool)

(assert (=> b!2998255 (= e!1883868 tp_is_empty!16289)))

(declare-fun b!2998257 () Bool)

(declare-fun tp!952658 () Bool)

(assert (=> b!2998257 (= e!1883868 tp!952658)))

(assert (= (and b!2996946 ((_ is ElementMatch!9363) (reg!9692 (regOne!19239 (regTwo!19239 r!17423))))) b!2998255))

(assert (= (and b!2996946 ((_ is Concat!14684) (reg!9692 (regOne!19239 (regTwo!19239 r!17423))))) b!2998256))

(assert (= (and b!2996946 ((_ is Star!9363) (reg!9692 (regOne!19239 (regTwo!19239 r!17423))))) b!2998257))

(assert (= (and b!2996946 ((_ is Union!9363) (reg!9692 (regOne!19239 (regTwo!19239 r!17423))))) b!2998258))

(declare-fun b!2998260 () Bool)

(declare-fun e!1883869 () Bool)

(declare-fun tp!952662 () Bool)

(declare-fun tp!952661 () Bool)

(assert (=> b!2998260 (= e!1883869 (and tp!952662 tp!952661))))

(declare-fun b!2998262 () Bool)

(declare-fun tp!952664 () Bool)

(declare-fun tp!952660 () Bool)

(assert (=> b!2998262 (= e!1883869 (and tp!952664 tp!952660))))

(assert (=> b!2996864 (= tp!952086 e!1883869)))

(declare-fun b!2998259 () Bool)

(assert (=> b!2998259 (= e!1883869 tp_is_empty!16289)))

(declare-fun b!2998261 () Bool)

(declare-fun tp!952663 () Bool)

(assert (=> b!2998261 (= e!1883869 tp!952663)))

(assert (= (and b!2996864 ((_ is ElementMatch!9363) (regOne!19238 (regOne!19238 (regTwo!19239 r!17423))))) b!2998259))

(assert (= (and b!2996864 ((_ is Concat!14684) (regOne!19238 (regOne!19238 (regTwo!19239 r!17423))))) b!2998260))

(assert (= (and b!2996864 ((_ is Star!9363) (regOne!19238 (regOne!19238 (regTwo!19239 r!17423))))) b!2998261))

(assert (= (and b!2996864 ((_ is Union!9363) (regOne!19238 (regOne!19238 (regTwo!19239 r!17423))))) b!2998262))

(declare-fun b!2998264 () Bool)

(declare-fun e!1883870 () Bool)

(declare-fun tp!952667 () Bool)

(declare-fun tp!952666 () Bool)

(assert (=> b!2998264 (= e!1883870 (and tp!952667 tp!952666))))

(declare-fun b!2998266 () Bool)

(declare-fun tp!952669 () Bool)

(declare-fun tp!952665 () Bool)

(assert (=> b!2998266 (= e!1883870 (and tp!952669 tp!952665))))

(assert (=> b!2996864 (= tp!952085 e!1883870)))

(declare-fun b!2998263 () Bool)

(assert (=> b!2998263 (= e!1883870 tp_is_empty!16289)))

(declare-fun b!2998265 () Bool)

(declare-fun tp!952668 () Bool)

(assert (=> b!2998265 (= e!1883870 tp!952668)))

(assert (= (and b!2996864 ((_ is ElementMatch!9363) (regTwo!19238 (regOne!19238 (regTwo!19239 r!17423))))) b!2998263))

(assert (= (and b!2996864 ((_ is Concat!14684) (regTwo!19238 (regOne!19238 (regTwo!19239 r!17423))))) b!2998264))

(assert (= (and b!2996864 ((_ is Star!9363) (regTwo!19238 (regOne!19238 (regTwo!19239 r!17423))))) b!2998265))

(assert (= (and b!2996864 ((_ is Union!9363) (regTwo!19238 (regOne!19238 (regTwo!19239 r!17423))))) b!2998266))

(declare-fun b!2998268 () Bool)

(declare-fun e!1883871 () Bool)

(declare-fun tp!952672 () Bool)

(declare-fun tp!952671 () Bool)

(assert (=> b!2998268 (= e!1883871 (and tp!952672 tp!952671))))

(declare-fun b!2998270 () Bool)

(declare-fun tp!952674 () Bool)

(declare-fun tp!952670 () Bool)

(assert (=> b!2998270 (= e!1883871 (and tp!952674 tp!952670))))

(assert (=> b!2996938 (= tp!952147 e!1883871)))

(declare-fun b!2998267 () Bool)

(assert (=> b!2998267 (= e!1883871 tp_is_empty!16289)))

(declare-fun b!2998269 () Bool)

(declare-fun tp!952673 () Bool)

(assert (=> b!2998269 (= e!1883871 tp!952673)))

(assert (= (and b!2996938 ((_ is ElementMatch!9363) (reg!9692 (regOne!19238 (regOne!19238 r!17423))))) b!2998267))

(assert (= (and b!2996938 ((_ is Concat!14684) (reg!9692 (regOne!19238 (regOne!19238 r!17423))))) b!2998268))

(assert (= (and b!2996938 ((_ is Star!9363) (reg!9692 (regOne!19238 (regOne!19238 r!17423))))) b!2998269))

(assert (= (and b!2996938 ((_ is Union!9363) (reg!9692 (regOne!19238 (regOne!19238 r!17423))))) b!2998270))

(declare-fun b!2998272 () Bool)

(declare-fun e!1883872 () Bool)

(declare-fun tp!952677 () Bool)

(declare-fun tp!952676 () Bool)

(assert (=> b!2998272 (= e!1883872 (and tp!952677 tp!952676))))

(declare-fun b!2998274 () Bool)

(declare-fun tp!952679 () Bool)

(declare-fun tp!952675 () Bool)

(assert (=> b!2998274 (= e!1883872 (and tp!952679 tp!952675))))

(assert (=> b!2996840 (= tp!952056 e!1883872)))

(declare-fun b!2998271 () Bool)

(assert (=> b!2998271 (= e!1883872 tp_is_empty!16289)))

(declare-fun b!2998273 () Bool)

(declare-fun tp!952678 () Bool)

(assert (=> b!2998273 (= e!1883872 tp!952678)))

(assert (= (and b!2996840 ((_ is ElementMatch!9363) (regOne!19238 (reg!9692 (regOne!19239 r!17423))))) b!2998271))

(assert (= (and b!2996840 ((_ is Concat!14684) (regOne!19238 (reg!9692 (regOne!19239 r!17423))))) b!2998272))

(assert (= (and b!2996840 ((_ is Star!9363) (regOne!19238 (reg!9692 (regOne!19239 r!17423))))) b!2998273))

(assert (= (and b!2996840 ((_ is Union!9363) (regOne!19238 (reg!9692 (regOne!19239 r!17423))))) b!2998274))

(declare-fun b!2998276 () Bool)

(declare-fun e!1883873 () Bool)

(declare-fun tp!952682 () Bool)

(declare-fun tp!952681 () Bool)

(assert (=> b!2998276 (= e!1883873 (and tp!952682 tp!952681))))

(declare-fun b!2998278 () Bool)

(declare-fun tp!952684 () Bool)

(declare-fun tp!952680 () Bool)

(assert (=> b!2998278 (= e!1883873 (and tp!952684 tp!952680))))

(assert (=> b!2996840 (= tp!952055 e!1883873)))

(declare-fun b!2998275 () Bool)

(assert (=> b!2998275 (= e!1883873 tp_is_empty!16289)))

(declare-fun b!2998277 () Bool)

(declare-fun tp!952683 () Bool)

(assert (=> b!2998277 (= e!1883873 tp!952683)))

(assert (= (and b!2996840 ((_ is ElementMatch!9363) (regTwo!19238 (reg!9692 (regOne!19239 r!17423))))) b!2998275))

(assert (= (and b!2996840 ((_ is Concat!14684) (regTwo!19238 (reg!9692 (regOne!19239 r!17423))))) b!2998276))

(assert (= (and b!2996840 ((_ is Star!9363) (regTwo!19238 (reg!9692 (regOne!19239 r!17423))))) b!2998277))

(assert (= (and b!2996840 ((_ is Union!9363) (regTwo!19238 (reg!9692 (regOne!19239 r!17423))))) b!2998278))

(declare-fun b!2998280 () Bool)

(declare-fun e!1883874 () Bool)

(declare-fun tp!952687 () Bool)

(declare-fun tp!952686 () Bool)

(assert (=> b!2998280 (= e!1883874 (and tp!952687 tp!952686))))

(declare-fun b!2998282 () Bool)

(declare-fun tp!952689 () Bool)

(declare-fun tp!952685 () Bool)

(assert (=> b!2998282 (= e!1883874 (and tp!952689 tp!952685))))

(assert (=> b!2996849 (= tp!952067 e!1883874)))

(declare-fun b!2998279 () Bool)

(assert (=> b!2998279 (= e!1883874 tp_is_empty!16289)))

(declare-fun b!2998281 () Bool)

(declare-fun tp!952688 () Bool)

(assert (=> b!2998281 (= e!1883874 tp!952688)))

(assert (= (and b!2996849 ((_ is ElementMatch!9363) (reg!9692 (regTwo!19238 (regTwo!19238 r!17423))))) b!2998279))

(assert (= (and b!2996849 ((_ is Concat!14684) (reg!9692 (regTwo!19238 (regTwo!19238 r!17423))))) b!2998280))

(assert (= (and b!2996849 ((_ is Star!9363) (reg!9692 (regTwo!19238 (regTwo!19238 r!17423))))) b!2998281))

(assert (= (and b!2996849 ((_ is Union!9363) (reg!9692 (regTwo!19238 (regTwo!19238 r!17423))))) b!2998282))

(declare-fun b!2998284 () Bool)

(declare-fun e!1883875 () Bool)

(declare-fun tp!952692 () Bool)

(declare-fun tp!952691 () Bool)

(assert (=> b!2998284 (= e!1883875 (and tp!952692 tp!952691))))

(declare-fun b!2998286 () Bool)

(declare-fun tp!952694 () Bool)

(declare-fun tp!952690 () Bool)

(assert (=> b!2998286 (= e!1883875 (and tp!952694 tp!952690))))

(assert (=> b!2996842 (= tp!952058 e!1883875)))

(declare-fun b!2998283 () Bool)

(assert (=> b!2998283 (= e!1883875 tp_is_empty!16289)))

(declare-fun b!2998285 () Bool)

(declare-fun tp!952693 () Bool)

(assert (=> b!2998285 (= e!1883875 tp!952693)))

(assert (= (and b!2996842 ((_ is ElementMatch!9363) (regOne!19239 (reg!9692 (regOne!19239 r!17423))))) b!2998283))

(assert (= (and b!2996842 ((_ is Concat!14684) (regOne!19239 (reg!9692 (regOne!19239 r!17423))))) b!2998284))

(assert (= (and b!2996842 ((_ is Star!9363) (regOne!19239 (reg!9692 (regOne!19239 r!17423))))) b!2998285))

(assert (= (and b!2996842 ((_ is Union!9363) (regOne!19239 (reg!9692 (regOne!19239 r!17423))))) b!2998286))

(declare-fun b!2998288 () Bool)

(declare-fun e!1883876 () Bool)

(declare-fun tp!952697 () Bool)

(declare-fun tp!952696 () Bool)

(assert (=> b!2998288 (= e!1883876 (and tp!952697 tp!952696))))

(declare-fun b!2998290 () Bool)

(declare-fun tp!952699 () Bool)

(declare-fun tp!952695 () Bool)

(assert (=> b!2998290 (= e!1883876 (and tp!952699 tp!952695))))

(assert (=> b!2996842 (= tp!952054 e!1883876)))

(declare-fun b!2998287 () Bool)

(assert (=> b!2998287 (= e!1883876 tp_is_empty!16289)))

(declare-fun b!2998289 () Bool)

(declare-fun tp!952698 () Bool)

(assert (=> b!2998289 (= e!1883876 tp!952698)))

(assert (= (and b!2996842 ((_ is ElementMatch!9363) (regTwo!19239 (reg!9692 (regOne!19239 r!17423))))) b!2998287))

(assert (= (and b!2996842 ((_ is Concat!14684) (regTwo!19239 (reg!9692 (regOne!19239 r!17423))))) b!2998288))

(assert (= (and b!2996842 ((_ is Star!9363) (regTwo!19239 (reg!9692 (regOne!19239 r!17423))))) b!2998289))

(assert (= (and b!2996842 ((_ is Union!9363) (regTwo!19239 (reg!9692 (regOne!19239 r!17423))))) b!2998290))

(declare-fun b!2998292 () Bool)

(declare-fun e!1883877 () Bool)

(declare-fun tp!952702 () Bool)

(declare-fun tp!952701 () Bool)

(assert (=> b!2998292 (= e!1883877 (and tp!952702 tp!952701))))

(declare-fun b!2998294 () Bool)

(declare-fun tp!952704 () Bool)

(declare-fun tp!952700 () Bool)

(assert (=> b!2998294 (= e!1883877 (and tp!952704 tp!952700))))

(assert (=> b!2996833 (= tp!952047 e!1883877)))

(declare-fun b!2998291 () Bool)

(assert (=> b!2998291 (= e!1883877 tp_is_empty!16289)))

(declare-fun b!2998293 () Bool)

(declare-fun tp!952703 () Bool)

(assert (=> b!2998293 (= e!1883877 tp!952703)))

(assert (= (and b!2996833 ((_ is ElementMatch!9363) (reg!9692 (regOne!19238 (reg!9692 r!17423))))) b!2998291))

(assert (= (and b!2996833 ((_ is Concat!14684) (reg!9692 (regOne!19238 (reg!9692 r!17423))))) b!2998292))

(assert (= (and b!2996833 ((_ is Star!9363) (reg!9692 (regOne!19238 (reg!9692 r!17423))))) b!2998293))

(assert (= (and b!2996833 ((_ is Union!9363) (reg!9692 (regOne!19238 (reg!9692 r!17423))))) b!2998294))

(declare-fun b!2998296 () Bool)

(declare-fun e!1883878 () Bool)

(declare-fun tp!952707 () Bool)

(declare-fun tp!952706 () Bool)

(assert (=> b!2998296 (= e!1883878 (and tp!952707 tp!952706))))

(declare-fun b!2998298 () Bool)

(declare-fun tp!952709 () Bool)

(declare-fun tp!952705 () Bool)

(assert (=> b!2998298 (= e!1883878 (and tp!952709 tp!952705))))

(assert (=> b!2996865 (= tp!952087 e!1883878)))

(declare-fun b!2998295 () Bool)

(assert (=> b!2998295 (= e!1883878 tp_is_empty!16289)))

(declare-fun b!2998297 () Bool)

(declare-fun tp!952708 () Bool)

(assert (=> b!2998297 (= e!1883878 tp!952708)))

(assert (= (and b!2996865 ((_ is ElementMatch!9363) (reg!9692 (regOne!19238 (regTwo!19239 r!17423))))) b!2998295))

(assert (= (and b!2996865 ((_ is Concat!14684) (reg!9692 (regOne!19238 (regTwo!19239 r!17423))))) b!2998296))

(assert (= (and b!2996865 ((_ is Star!9363) (reg!9692 (regOne!19238 (regTwo!19239 r!17423))))) b!2998297))

(assert (= (and b!2996865 ((_ is Union!9363) (reg!9692 (regOne!19238 (regTwo!19239 r!17423))))) b!2998298))

(declare-fun b!2998299 () Bool)

(declare-fun e!1883879 () Bool)

(declare-fun tp!952710 () Bool)

(assert (=> b!2998299 (= e!1883879 (and tp_is_empty!16289 tp!952710))))

(assert (=> b!2996826 (= tp!952038 e!1883879)))

(assert (= (and b!2996826 ((_ is Cons!35104) (t!234293 (t!234293 (t!234293 s!11993))))) b!2998299))

(declare-fun b!2998301 () Bool)

(declare-fun e!1883880 () Bool)

(declare-fun tp!952713 () Bool)

(declare-fun tp!952712 () Bool)

(assert (=> b!2998301 (= e!1883880 (and tp!952713 tp!952712))))

(declare-fun b!2998303 () Bool)

(declare-fun tp!952715 () Bool)

(declare-fun tp!952711 () Bool)

(assert (=> b!2998303 (= e!1883880 (and tp!952715 tp!952711))))

(assert (=> b!2996914 (= tp!952117 e!1883880)))

(declare-fun b!2998300 () Bool)

(assert (=> b!2998300 (= e!1883880 tp_is_empty!16289)))

(declare-fun b!2998302 () Bool)

(declare-fun tp!952714 () Bool)

(assert (=> b!2998302 (= e!1883880 tp!952714)))

(assert (= (and b!2996914 ((_ is ElementMatch!9363) (reg!9692 (regOne!19239 (regTwo!19238 r!17423))))) b!2998300))

(assert (= (and b!2996914 ((_ is Concat!14684) (reg!9692 (regOne!19239 (regTwo!19238 r!17423))))) b!2998301))

(assert (= (and b!2996914 ((_ is Star!9363) (reg!9692 (regOne!19239 (regTwo!19238 r!17423))))) b!2998302))

(assert (= (and b!2996914 ((_ is Union!9363) (reg!9692 (regOne!19239 (regTwo!19238 r!17423))))) b!2998303))

(declare-fun b!2998305 () Bool)

(declare-fun e!1883881 () Bool)

(declare-fun tp!952718 () Bool)

(declare-fun tp!952717 () Bool)

(assert (=> b!2998305 (= e!1883881 (and tp!952718 tp!952717))))

(declare-fun b!2998307 () Bool)

(declare-fun tp!952720 () Bool)

(declare-fun tp!952716 () Bool)

(assert (=> b!2998307 (= e!1883881 (and tp!952720 tp!952716))))

(assert (=> b!2996866 (= tp!952088 e!1883881)))

(declare-fun b!2998304 () Bool)

(assert (=> b!2998304 (= e!1883881 tp_is_empty!16289)))

(declare-fun b!2998306 () Bool)

(declare-fun tp!952719 () Bool)

(assert (=> b!2998306 (= e!1883881 tp!952719)))

(assert (= (and b!2996866 ((_ is ElementMatch!9363) (regOne!19239 (regOne!19238 (regTwo!19239 r!17423))))) b!2998304))

(assert (= (and b!2996866 ((_ is Concat!14684) (regOne!19239 (regOne!19238 (regTwo!19239 r!17423))))) b!2998305))

(assert (= (and b!2996866 ((_ is Star!9363) (regOne!19239 (regOne!19238 (regTwo!19239 r!17423))))) b!2998306))

(assert (= (and b!2996866 ((_ is Union!9363) (regOne!19239 (regOne!19238 (regTwo!19239 r!17423))))) b!2998307))

(declare-fun b!2998309 () Bool)

(declare-fun e!1883882 () Bool)

(declare-fun tp!952723 () Bool)

(declare-fun tp!952722 () Bool)

(assert (=> b!2998309 (= e!1883882 (and tp!952723 tp!952722))))

(declare-fun b!2998311 () Bool)

(declare-fun tp!952725 () Bool)

(declare-fun tp!952721 () Bool)

(assert (=> b!2998311 (= e!1883882 (and tp!952725 tp!952721))))

(assert (=> b!2996866 (= tp!952084 e!1883882)))

(declare-fun b!2998308 () Bool)

(assert (=> b!2998308 (= e!1883882 tp_is_empty!16289)))

(declare-fun b!2998310 () Bool)

(declare-fun tp!952724 () Bool)

(assert (=> b!2998310 (= e!1883882 tp!952724)))

(assert (= (and b!2996866 ((_ is ElementMatch!9363) (regTwo!19239 (regOne!19238 (regTwo!19239 r!17423))))) b!2998308))

(assert (= (and b!2996866 ((_ is Concat!14684) (regTwo!19239 (regOne!19238 (regTwo!19239 r!17423))))) b!2998309))

(assert (= (and b!2996866 ((_ is Star!9363) (regTwo!19239 (regOne!19238 (regTwo!19239 r!17423))))) b!2998310))

(assert (= (and b!2996866 ((_ is Union!9363) (regTwo!19239 (regOne!19238 (regTwo!19239 r!17423))))) b!2998311))

(declare-fun b!2998313 () Bool)

(declare-fun e!1883883 () Bool)

(declare-fun tp!952728 () Bool)

(declare-fun tp!952727 () Bool)

(assert (=> b!2998313 (= e!1883883 (and tp!952728 tp!952727))))

(declare-fun b!2998315 () Bool)

(declare-fun tp!952730 () Bool)

(declare-fun tp!952726 () Bool)

(assert (=> b!2998315 (= e!1883883 (and tp!952730 tp!952726))))

(assert (=> b!2996905 (= tp!952106 e!1883883)))

(declare-fun b!2998312 () Bool)

(assert (=> b!2998312 (= e!1883883 tp_is_empty!16289)))

(declare-fun b!2998314 () Bool)

(declare-fun tp!952729 () Bool)

(assert (=> b!2998314 (= e!1883883 tp!952729)))

(assert (= (and b!2996905 ((_ is ElementMatch!9363) (regOne!19238 (regOne!19239 (regOne!19238 r!17423))))) b!2998312))

(assert (= (and b!2996905 ((_ is Concat!14684) (regOne!19238 (regOne!19239 (regOne!19238 r!17423))))) b!2998313))

(assert (= (and b!2996905 ((_ is Star!9363) (regOne!19238 (regOne!19239 (regOne!19238 r!17423))))) b!2998314))

(assert (= (and b!2996905 ((_ is Union!9363) (regOne!19238 (regOne!19239 (regOne!19238 r!17423))))) b!2998315))

(declare-fun b!2998317 () Bool)

(declare-fun e!1883884 () Bool)

(declare-fun tp!952733 () Bool)

(declare-fun tp!952732 () Bool)

(assert (=> b!2998317 (= e!1883884 (and tp!952733 tp!952732))))

(declare-fun b!2998319 () Bool)

(declare-fun tp!952735 () Bool)

(declare-fun tp!952731 () Bool)

(assert (=> b!2998319 (= e!1883884 (and tp!952735 tp!952731))))

(assert (=> b!2996905 (= tp!952105 e!1883884)))

(declare-fun b!2998316 () Bool)

(assert (=> b!2998316 (= e!1883884 tp_is_empty!16289)))

(declare-fun b!2998318 () Bool)

(declare-fun tp!952734 () Bool)

(assert (=> b!2998318 (= e!1883884 tp!952734)))

(assert (= (and b!2996905 ((_ is ElementMatch!9363) (regTwo!19238 (regOne!19239 (regOne!19238 r!17423))))) b!2998316))

(assert (= (and b!2996905 ((_ is Concat!14684) (regTwo!19238 (regOne!19239 (regOne!19238 r!17423))))) b!2998317))

(assert (= (and b!2996905 ((_ is Star!9363) (regTwo!19238 (regOne!19239 (regOne!19238 r!17423))))) b!2998318))

(assert (= (and b!2996905 ((_ is Union!9363) (regTwo!19238 (regOne!19239 (regOne!19238 r!17423))))) b!2998319))

(declare-fun b!2998321 () Bool)

(declare-fun e!1883885 () Bool)

(declare-fun tp!952738 () Bool)

(declare-fun tp!952737 () Bool)

(assert (=> b!2998321 (= e!1883885 (and tp!952738 tp!952737))))

(declare-fun b!2998323 () Bool)

(declare-fun tp!952740 () Bool)

(declare-fun tp!952736 () Bool)

(assert (=> b!2998323 (= e!1883885 (and tp!952740 tp!952736))))

(assert (=> b!2996852 (= tp!952071 e!1883885)))

(declare-fun b!2998320 () Bool)

(assert (=> b!2998320 (= e!1883885 tp_is_empty!16289)))

(declare-fun b!2998322 () Bool)

(declare-fun tp!952739 () Bool)

(assert (=> b!2998322 (= e!1883885 tp!952739)))

(assert (= (and b!2996852 ((_ is ElementMatch!9363) (regOne!19238 (reg!9692 (regTwo!19239 r!17423))))) b!2998320))

(assert (= (and b!2996852 ((_ is Concat!14684) (regOne!19238 (reg!9692 (regTwo!19239 r!17423))))) b!2998321))

(assert (= (and b!2996852 ((_ is Star!9363) (regOne!19238 (reg!9692 (regTwo!19239 r!17423))))) b!2998322))

(assert (= (and b!2996852 ((_ is Union!9363) (regOne!19238 (reg!9692 (regTwo!19239 r!17423))))) b!2998323))

(declare-fun b!2998325 () Bool)

(declare-fun e!1883886 () Bool)

(declare-fun tp!952743 () Bool)

(declare-fun tp!952742 () Bool)

(assert (=> b!2998325 (= e!1883886 (and tp!952743 tp!952742))))

(declare-fun b!2998327 () Bool)

(declare-fun tp!952745 () Bool)

(declare-fun tp!952741 () Bool)

(assert (=> b!2998327 (= e!1883886 (and tp!952745 tp!952741))))

(assert (=> b!2996852 (= tp!952070 e!1883886)))

(declare-fun b!2998324 () Bool)

(assert (=> b!2998324 (= e!1883886 tp_is_empty!16289)))

(declare-fun b!2998326 () Bool)

(declare-fun tp!952744 () Bool)

(assert (=> b!2998326 (= e!1883886 tp!952744)))

(assert (= (and b!2996852 ((_ is ElementMatch!9363) (regTwo!19238 (reg!9692 (regTwo!19239 r!17423))))) b!2998324))

(assert (= (and b!2996852 ((_ is Concat!14684) (regTwo!19238 (reg!9692 (regTwo!19239 r!17423))))) b!2998325))

(assert (= (and b!2996852 ((_ is Star!9363) (regTwo!19238 (reg!9692 (regTwo!19239 r!17423))))) b!2998326))

(assert (= (and b!2996852 ((_ is Union!9363) (regTwo!19238 (reg!9692 (regTwo!19239 r!17423))))) b!2998327))

(declare-fun b!2998329 () Bool)

(declare-fun e!1883887 () Bool)

(declare-fun tp!952748 () Bool)

(declare-fun tp!952747 () Bool)

(assert (=> b!2998329 (= e!1883887 (and tp!952748 tp!952747))))

(declare-fun b!2998331 () Bool)

(declare-fun tp!952750 () Bool)

(declare-fun tp!952746 () Bool)

(assert (=> b!2998331 (= e!1883887 (and tp!952750 tp!952746))))

(assert (=> b!2996934 (= tp!952142 e!1883887)))

(declare-fun b!2998328 () Bool)

(assert (=> b!2998328 (= e!1883887 tp_is_empty!16289)))

(declare-fun b!2998330 () Bool)

(declare-fun tp!952749 () Bool)

(assert (=> b!2998330 (= e!1883887 tp!952749)))

(assert (= (and b!2996934 ((_ is ElementMatch!9363) (reg!9692 (reg!9692 (regTwo!19238 r!17423))))) b!2998328))

(assert (= (and b!2996934 ((_ is Concat!14684) (reg!9692 (reg!9692 (regTwo!19238 r!17423))))) b!2998329))

(assert (= (and b!2996934 ((_ is Star!9363) (reg!9692 (reg!9692 (regTwo!19238 r!17423))))) b!2998330))

(assert (= (and b!2996934 ((_ is Union!9363) (reg!9692 (reg!9692 (regTwo!19238 r!17423))))) b!2998331))

(declare-fun b!2998333 () Bool)

(declare-fun e!1883888 () Bool)

(declare-fun tp!952753 () Bool)

(declare-fun tp!952752 () Bool)

(assert (=> b!2998333 (= e!1883888 (and tp!952753 tp!952752))))

(declare-fun b!2998335 () Bool)

(declare-fun tp!952755 () Bool)

(declare-fun tp!952751 () Bool)

(assert (=> b!2998335 (= e!1883888 (and tp!952755 tp!952751))))

(assert (=> b!2996899 (= tp!952098 e!1883888)))

(declare-fun b!2998332 () Bool)

(assert (=> b!2998332 (= e!1883888 tp_is_empty!16289)))

(declare-fun b!2998334 () Bool)

(declare-fun tp!952754 () Bool)

(assert (=> b!2998334 (= e!1883888 tp!952754)))

(assert (= (and b!2996899 ((_ is ElementMatch!9363) (regOne!19239 (regOne!19239 (reg!9692 r!17423))))) b!2998332))

(assert (= (and b!2996899 ((_ is Concat!14684) (regOne!19239 (regOne!19239 (reg!9692 r!17423))))) b!2998333))

(assert (= (and b!2996899 ((_ is Star!9363) (regOne!19239 (regOne!19239 (reg!9692 r!17423))))) b!2998334))

(assert (= (and b!2996899 ((_ is Union!9363) (regOne!19239 (regOne!19239 (reg!9692 r!17423))))) b!2998335))

(declare-fun b!2998337 () Bool)

(declare-fun e!1883889 () Bool)

(declare-fun tp!952758 () Bool)

(declare-fun tp!952757 () Bool)

(assert (=> b!2998337 (= e!1883889 (and tp!952758 tp!952757))))

(declare-fun b!2998339 () Bool)

(declare-fun tp!952760 () Bool)

(declare-fun tp!952756 () Bool)

(assert (=> b!2998339 (= e!1883889 (and tp!952760 tp!952756))))

(assert (=> b!2996899 (= tp!952094 e!1883889)))

(declare-fun b!2998336 () Bool)

(assert (=> b!2998336 (= e!1883889 tp_is_empty!16289)))

(declare-fun b!2998338 () Bool)

(declare-fun tp!952759 () Bool)

(assert (=> b!2998338 (= e!1883889 tp!952759)))

(assert (= (and b!2996899 ((_ is ElementMatch!9363) (regTwo!19239 (regOne!19239 (reg!9692 r!17423))))) b!2998336))

(assert (= (and b!2996899 ((_ is Concat!14684) (regTwo!19239 (regOne!19239 (reg!9692 r!17423))))) b!2998337))

(assert (= (and b!2996899 ((_ is Star!9363) (regTwo!19239 (regOne!19239 (reg!9692 r!17423))))) b!2998338))

(assert (= (and b!2996899 ((_ is Union!9363) (regTwo!19239 (regOne!19239 (reg!9692 r!17423))))) b!2998339))

(declare-fun b!2998341 () Bool)

(declare-fun e!1883890 () Bool)

(declare-fun tp!952763 () Bool)

(declare-fun tp!952762 () Bool)

(assert (=> b!2998341 (= e!1883890 (and tp!952763 tp!952762))))

(declare-fun b!2998343 () Bool)

(declare-fun tp!952765 () Bool)

(declare-fun tp!952761 () Bool)

(assert (=> b!2998343 (= e!1883890 (and tp!952765 tp!952761))))

(assert (=> b!2996862 (= tp!952083 e!1883890)))

(declare-fun b!2998340 () Bool)

(assert (=> b!2998340 (= e!1883890 tp_is_empty!16289)))

(declare-fun b!2998342 () Bool)

(declare-fun tp!952764 () Bool)

(assert (=> b!2998342 (= e!1883890 tp!952764)))

(assert (= (and b!2996862 ((_ is ElementMatch!9363) (regOne!19239 (regTwo!19238 (regOne!19239 r!17423))))) b!2998340))

(assert (= (and b!2996862 ((_ is Concat!14684) (regOne!19239 (regTwo!19238 (regOne!19239 r!17423))))) b!2998341))

(assert (= (and b!2996862 ((_ is Star!9363) (regOne!19239 (regTwo!19238 (regOne!19239 r!17423))))) b!2998342))

(assert (= (and b!2996862 ((_ is Union!9363) (regOne!19239 (regTwo!19238 (regOne!19239 r!17423))))) b!2998343))

(declare-fun b!2998345 () Bool)

(declare-fun e!1883891 () Bool)

(declare-fun tp!952768 () Bool)

(declare-fun tp!952767 () Bool)

(assert (=> b!2998345 (= e!1883891 (and tp!952768 tp!952767))))

(declare-fun b!2998347 () Bool)

(declare-fun tp!952770 () Bool)

(declare-fun tp!952766 () Bool)

(assert (=> b!2998347 (= e!1883891 (and tp!952770 tp!952766))))

(assert (=> b!2996862 (= tp!952079 e!1883891)))

(declare-fun b!2998344 () Bool)

(assert (=> b!2998344 (= e!1883891 tp_is_empty!16289)))

(declare-fun b!2998346 () Bool)

(declare-fun tp!952769 () Bool)

(assert (=> b!2998346 (= e!1883891 tp!952769)))

(assert (= (and b!2996862 ((_ is ElementMatch!9363) (regTwo!19239 (regTwo!19238 (regOne!19239 r!17423))))) b!2998344))

(assert (= (and b!2996862 ((_ is Concat!14684) (regTwo!19239 (regTwo!19238 (regOne!19239 r!17423))))) b!2998345))

(assert (= (and b!2996862 ((_ is Star!9363) (regTwo!19239 (regTwo!19238 (regOne!19239 r!17423))))) b!2998346))

(assert (= (and b!2996862 ((_ is Union!9363) (regTwo!19239 (regTwo!19238 (regOne!19239 r!17423))))) b!2998347))

(declare-fun b!2998349 () Bool)

(declare-fun e!1883892 () Bool)

(declare-fun tp!952773 () Bool)

(declare-fun tp!952772 () Bool)

(assert (=> b!2998349 (= e!1883892 (and tp!952773 tp!952772))))

(declare-fun b!2998351 () Bool)

(declare-fun tp!952775 () Bool)

(declare-fun tp!952771 () Bool)

(assert (=> b!2998351 (= e!1883892 (and tp!952775 tp!952771))))

(assert (=> b!2996941 (= tp!952151 e!1883892)))

(declare-fun b!2998348 () Bool)

(assert (=> b!2998348 (= e!1883892 tp_is_empty!16289)))

(declare-fun b!2998350 () Bool)

(declare-fun tp!952774 () Bool)

(assert (=> b!2998350 (= e!1883892 tp!952774)))

(assert (= (and b!2996941 ((_ is ElementMatch!9363) (regOne!19238 (regTwo!19238 (regOne!19238 r!17423))))) b!2998348))

(assert (= (and b!2996941 ((_ is Concat!14684) (regOne!19238 (regTwo!19238 (regOne!19238 r!17423))))) b!2998349))

(assert (= (and b!2996941 ((_ is Star!9363) (regOne!19238 (regTwo!19238 (regOne!19238 r!17423))))) b!2998350))

(assert (= (and b!2996941 ((_ is Union!9363) (regOne!19238 (regTwo!19238 (regOne!19238 r!17423))))) b!2998351))

(declare-fun b!2998353 () Bool)

(declare-fun e!1883893 () Bool)

(declare-fun tp!952778 () Bool)

(declare-fun tp!952777 () Bool)

(assert (=> b!2998353 (= e!1883893 (and tp!952778 tp!952777))))

(declare-fun b!2998355 () Bool)

(declare-fun tp!952780 () Bool)

(declare-fun tp!952776 () Bool)

(assert (=> b!2998355 (= e!1883893 (and tp!952780 tp!952776))))

(assert (=> b!2996941 (= tp!952150 e!1883893)))

(declare-fun b!2998352 () Bool)

(assert (=> b!2998352 (= e!1883893 tp_is_empty!16289)))

(declare-fun b!2998354 () Bool)

(declare-fun tp!952779 () Bool)

(assert (=> b!2998354 (= e!1883893 tp!952779)))

(assert (= (and b!2996941 ((_ is ElementMatch!9363) (regTwo!19238 (regTwo!19238 (regOne!19238 r!17423))))) b!2998352))

(assert (= (and b!2996941 ((_ is Concat!14684) (regTwo!19238 (regTwo!19238 (regOne!19238 r!17423))))) b!2998353))

(assert (= (and b!2996941 ((_ is Star!9363) (regTwo!19238 (regTwo!19238 (regOne!19238 r!17423))))) b!2998354))

(assert (= (and b!2996941 ((_ is Union!9363) (regTwo!19238 (regTwo!19238 (regOne!19238 r!17423))))) b!2998355))

(declare-fun b!2998357 () Bool)

(declare-fun e!1883894 () Bool)

(declare-fun tp!952783 () Bool)

(declare-fun tp!952782 () Bool)

(assert (=> b!2998357 (= e!1883894 (and tp!952783 tp!952782))))

(declare-fun b!2998359 () Bool)

(declare-fun tp!952785 () Bool)

(declare-fun tp!952781 () Bool)

(assert (=> b!2998359 (= e!1883894 (and tp!952785 tp!952781))))

(assert (=> b!2996836 (= tp!952051 e!1883894)))

(declare-fun b!2998356 () Bool)

(assert (=> b!2998356 (= e!1883894 tp_is_empty!16289)))

(declare-fun b!2998358 () Bool)

(declare-fun tp!952784 () Bool)

(assert (=> b!2998358 (= e!1883894 tp!952784)))

(assert (= (and b!2996836 ((_ is ElementMatch!9363) (regOne!19238 (regTwo!19238 (reg!9692 r!17423))))) b!2998356))

(assert (= (and b!2996836 ((_ is Concat!14684) (regOne!19238 (regTwo!19238 (reg!9692 r!17423))))) b!2998357))

(assert (= (and b!2996836 ((_ is Star!9363) (regOne!19238 (regTwo!19238 (reg!9692 r!17423))))) b!2998358))

(assert (= (and b!2996836 ((_ is Union!9363) (regOne!19238 (regTwo!19238 (reg!9692 r!17423))))) b!2998359))

(declare-fun b!2998361 () Bool)

(declare-fun e!1883895 () Bool)

(declare-fun tp!952788 () Bool)

(declare-fun tp!952787 () Bool)

(assert (=> b!2998361 (= e!1883895 (and tp!952788 tp!952787))))

(declare-fun b!2998363 () Bool)

(declare-fun tp!952790 () Bool)

(declare-fun tp!952786 () Bool)

(assert (=> b!2998363 (= e!1883895 (and tp!952790 tp!952786))))

(assert (=> b!2996836 (= tp!952050 e!1883895)))

(declare-fun b!2998360 () Bool)

(assert (=> b!2998360 (= e!1883895 tp_is_empty!16289)))

(declare-fun b!2998362 () Bool)

(declare-fun tp!952789 () Bool)

(assert (=> b!2998362 (= e!1883895 tp!952789)))

(assert (= (and b!2996836 ((_ is ElementMatch!9363) (regTwo!19238 (regTwo!19238 (reg!9692 r!17423))))) b!2998360))

(assert (= (and b!2996836 ((_ is Concat!14684) (regTwo!19238 (regTwo!19238 (reg!9692 r!17423))))) b!2998361))

(assert (= (and b!2996836 ((_ is Star!9363) (regTwo!19238 (regTwo!19238 (reg!9692 r!17423))))) b!2998362))

(assert (= (and b!2996836 ((_ is Union!9363) (regTwo!19238 (regTwo!19238 (reg!9692 r!17423))))) b!2998363))

(declare-fun b!2998365 () Bool)

(declare-fun e!1883896 () Bool)

(declare-fun tp!952793 () Bool)

(declare-fun tp!952792 () Bool)

(assert (=> b!2998365 (= e!1883896 (and tp!952793 tp!952792))))

(declare-fun b!2998367 () Bool)

(declare-fun tp!952795 () Bool)

(declare-fun tp!952791 () Bool)

(assert (=> b!2998367 (= e!1883896 (and tp!952795 tp!952791))))

(assert (=> b!2996845 (= tp!952062 e!1883896)))

(declare-fun b!2998364 () Bool)

(assert (=> b!2998364 (= e!1883896 tp_is_empty!16289)))

(declare-fun b!2998366 () Bool)

(declare-fun tp!952794 () Bool)

(assert (=> b!2998366 (= e!1883896 tp!952794)))

(assert (= (and b!2996845 ((_ is ElementMatch!9363) (reg!9692 (regOne!19238 (regTwo!19238 r!17423))))) b!2998364))

(assert (= (and b!2996845 ((_ is Concat!14684) (reg!9692 (regOne!19238 (regTwo!19238 r!17423))))) b!2998365))

(assert (= (and b!2996845 ((_ is Star!9363) (reg!9692 (regOne!19238 (regTwo!19238 r!17423))))) b!2998366))

(assert (= (and b!2996845 ((_ is Union!9363) (reg!9692 (regOne!19238 (regTwo!19238 r!17423))))) b!2998367))

(declare-fun b!2998369 () Bool)

(declare-fun e!1883897 () Bool)

(declare-fun tp!952798 () Bool)

(declare-fun tp!952797 () Bool)

(assert (=> b!2998369 (= e!1883897 (and tp!952798 tp!952797))))

(declare-fun b!2998371 () Bool)

(declare-fun tp!952800 () Bool)

(declare-fun tp!952796 () Bool)

(assert (=> b!2998371 (= e!1883897 (and tp!952800 tp!952796))))

(assert (=> b!2996925 (= tp!952131 e!1883897)))

(declare-fun b!2998368 () Bool)

(assert (=> b!2998368 (= e!1883897 tp_is_empty!16289)))

(declare-fun b!2998370 () Bool)

(declare-fun tp!952799 () Bool)

(assert (=> b!2998370 (= e!1883897 tp!952799)))

(assert (= (and b!2996925 ((_ is ElementMatch!9363) (regOne!19238 (regOne!19239 (regOne!19239 r!17423))))) b!2998368))

(assert (= (and b!2996925 ((_ is Concat!14684) (regOne!19238 (regOne!19239 (regOne!19239 r!17423))))) b!2998369))

(assert (= (and b!2996925 ((_ is Star!9363) (regOne!19238 (regOne!19239 (regOne!19239 r!17423))))) b!2998370))

(assert (= (and b!2996925 ((_ is Union!9363) (regOne!19238 (regOne!19239 (regOne!19239 r!17423))))) b!2998371))

(declare-fun b!2998373 () Bool)

(declare-fun e!1883898 () Bool)

(declare-fun tp!952803 () Bool)

(declare-fun tp!952802 () Bool)

(assert (=> b!2998373 (= e!1883898 (and tp!952803 tp!952802))))

(declare-fun b!2998375 () Bool)

(declare-fun tp!952805 () Bool)

(declare-fun tp!952801 () Bool)

(assert (=> b!2998375 (= e!1883898 (and tp!952805 tp!952801))))

(assert (=> b!2996925 (= tp!952130 e!1883898)))

(declare-fun b!2998372 () Bool)

(assert (=> b!2998372 (= e!1883898 tp_is_empty!16289)))

(declare-fun b!2998374 () Bool)

(declare-fun tp!952804 () Bool)

(assert (=> b!2998374 (= e!1883898 tp!952804)))

(assert (= (and b!2996925 ((_ is ElementMatch!9363) (regTwo!19238 (regOne!19239 (regOne!19239 r!17423))))) b!2998372))

(assert (= (and b!2996925 ((_ is Concat!14684) (regTwo!19238 (regOne!19239 (regOne!19239 r!17423))))) b!2998373))

(assert (= (and b!2996925 ((_ is Star!9363) (regTwo!19238 (regOne!19239 (regOne!19239 r!17423))))) b!2998374))

(assert (= (and b!2996925 ((_ is Union!9363) (regTwo!19238 (regOne!19239 (regOne!19239 r!17423))))) b!2998375))

(declare-fun b!2998377 () Bool)

(declare-fun e!1883899 () Bool)

(declare-fun tp!952808 () Bool)

(declare-fun tp!952807 () Bool)

(assert (=> b!2998377 (= e!1883899 (and tp!952808 tp!952807))))

(declare-fun b!2998379 () Bool)

(declare-fun tp!952810 () Bool)

(declare-fun tp!952806 () Bool)

(assert (=> b!2998379 (= e!1883899 (and tp!952810 tp!952806))))

(assert (=> b!2996949 (= tp!952161 e!1883899)))

(declare-fun b!2998376 () Bool)

(assert (=> b!2998376 (= e!1883899 tp_is_empty!16289)))

(declare-fun b!2998378 () Bool)

(declare-fun tp!952809 () Bool)

(assert (=> b!2998378 (= e!1883899 tp!952809)))

(assert (= (and b!2996949 ((_ is ElementMatch!9363) (regOne!19238 (regTwo!19239 (regTwo!19239 r!17423))))) b!2998376))

(assert (= (and b!2996949 ((_ is Concat!14684) (regOne!19238 (regTwo!19239 (regTwo!19239 r!17423))))) b!2998377))

(assert (= (and b!2996949 ((_ is Star!9363) (regOne!19238 (regTwo!19239 (regTwo!19239 r!17423))))) b!2998378))

(assert (= (and b!2996949 ((_ is Union!9363) (regOne!19238 (regTwo!19239 (regTwo!19239 r!17423))))) b!2998379))

(declare-fun b!2998381 () Bool)

(declare-fun e!1883900 () Bool)

(declare-fun tp!952813 () Bool)

(declare-fun tp!952812 () Bool)

(assert (=> b!2998381 (= e!1883900 (and tp!952813 tp!952812))))

(declare-fun b!2998383 () Bool)

(declare-fun tp!952815 () Bool)

(declare-fun tp!952811 () Bool)

(assert (=> b!2998383 (= e!1883900 (and tp!952815 tp!952811))))

(assert (=> b!2996949 (= tp!952160 e!1883900)))

(declare-fun b!2998380 () Bool)

(assert (=> b!2998380 (= e!1883900 tp_is_empty!16289)))

(declare-fun b!2998382 () Bool)

(declare-fun tp!952814 () Bool)

(assert (=> b!2998382 (= e!1883900 tp!952814)))

(assert (= (and b!2996949 ((_ is ElementMatch!9363) (regTwo!19238 (regTwo!19239 (regTwo!19239 r!17423))))) b!2998380))

(assert (= (and b!2996949 ((_ is Concat!14684) (regTwo!19238 (regTwo!19239 (regTwo!19239 r!17423))))) b!2998381))

(assert (= (and b!2996949 ((_ is Star!9363) (regTwo!19238 (regTwo!19239 (regTwo!19239 r!17423))))) b!2998382))

(assert (= (and b!2996949 ((_ is Union!9363) (regTwo!19238 (regTwo!19239 (regTwo!19239 r!17423))))) b!2998383))

(declare-fun b!2998385 () Bool)

(declare-fun e!1883901 () Bool)

(declare-fun tp!952818 () Bool)

(declare-fun tp!952817 () Bool)

(assert (=> b!2998385 (= e!1883901 (and tp!952818 tp!952817))))

(declare-fun b!2998387 () Bool)

(declare-fun tp!952820 () Bool)

(declare-fun tp!952816 () Bool)

(assert (=> b!2998387 (= e!1883901 (and tp!952820 tp!952816))))

(assert (=> b!2996943 (= tp!952153 e!1883901)))

(declare-fun b!2998384 () Bool)

(assert (=> b!2998384 (= e!1883901 tp_is_empty!16289)))

(declare-fun b!2998386 () Bool)

(declare-fun tp!952819 () Bool)

(assert (=> b!2998386 (= e!1883901 tp!952819)))

(assert (= (and b!2996943 ((_ is ElementMatch!9363) (regOne!19239 (regTwo!19238 (regOne!19238 r!17423))))) b!2998384))

(assert (= (and b!2996943 ((_ is Concat!14684) (regOne!19239 (regTwo!19238 (regOne!19238 r!17423))))) b!2998385))

(assert (= (and b!2996943 ((_ is Star!9363) (regOne!19239 (regTwo!19238 (regOne!19238 r!17423))))) b!2998386))

(assert (= (and b!2996943 ((_ is Union!9363) (regOne!19239 (regTwo!19238 (regOne!19238 r!17423))))) b!2998387))

(declare-fun b!2998389 () Bool)

(declare-fun e!1883902 () Bool)

(declare-fun tp!952823 () Bool)

(declare-fun tp!952822 () Bool)

(assert (=> b!2998389 (= e!1883902 (and tp!952823 tp!952822))))

(declare-fun b!2998391 () Bool)

(declare-fun tp!952825 () Bool)

(declare-fun tp!952821 () Bool)

(assert (=> b!2998391 (= e!1883902 (and tp!952825 tp!952821))))

(assert (=> b!2996943 (= tp!952149 e!1883902)))

(declare-fun b!2998388 () Bool)

(assert (=> b!2998388 (= e!1883902 tp_is_empty!16289)))

(declare-fun b!2998390 () Bool)

(declare-fun tp!952824 () Bool)

(assert (=> b!2998390 (= e!1883902 tp!952824)))

(assert (= (and b!2996943 ((_ is ElementMatch!9363) (regTwo!19239 (regTwo!19238 (regOne!19238 r!17423))))) b!2998388))

(assert (= (and b!2996943 ((_ is Concat!14684) (regTwo!19239 (regTwo!19238 (regOne!19238 r!17423))))) b!2998389))

(assert (= (and b!2996943 ((_ is Star!9363) (regTwo!19239 (regTwo!19238 (regOne!19238 r!17423))))) b!2998390))

(assert (= (and b!2996943 ((_ is Union!9363) (regTwo!19239 (regTwo!19238 (regOne!19238 r!17423))))) b!2998391))

(declare-fun b!2998393 () Bool)

(declare-fun e!1883903 () Bool)

(declare-fun tp!952828 () Bool)

(declare-fun tp!952827 () Bool)

(assert (=> b!2998393 (= e!1883903 (and tp!952828 tp!952827))))

(declare-fun b!2998395 () Bool)

(declare-fun tp!952830 () Bool)

(declare-fun tp!952826 () Bool)

(assert (=> b!2998395 (= e!1883903 (and tp!952830 tp!952826))))

(assert (=> b!2996854 (= tp!952073 e!1883903)))

(declare-fun b!2998392 () Bool)

(assert (=> b!2998392 (= e!1883903 tp_is_empty!16289)))

(declare-fun b!2998394 () Bool)

(declare-fun tp!952829 () Bool)

(assert (=> b!2998394 (= e!1883903 tp!952829)))

(assert (= (and b!2996854 ((_ is ElementMatch!9363) (regOne!19239 (reg!9692 (regTwo!19239 r!17423))))) b!2998392))

(assert (= (and b!2996854 ((_ is Concat!14684) (regOne!19239 (reg!9692 (regTwo!19239 r!17423))))) b!2998393))

(assert (= (and b!2996854 ((_ is Star!9363) (regOne!19239 (reg!9692 (regTwo!19239 r!17423))))) b!2998394))

(assert (= (and b!2996854 ((_ is Union!9363) (regOne!19239 (reg!9692 (regTwo!19239 r!17423))))) b!2998395))

(declare-fun b!2998397 () Bool)

(declare-fun e!1883904 () Bool)

(declare-fun tp!952833 () Bool)

(declare-fun tp!952832 () Bool)

(assert (=> b!2998397 (= e!1883904 (and tp!952833 tp!952832))))

(declare-fun b!2998399 () Bool)

(declare-fun tp!952835 () Bool)

(declare-fun tp!952831 () Bool)

(assert (=> b!2998399 (= e!1883904 (and tp!952835 tp!952831))))

(assert (=> b!2996854 (= tp!952069 e!1883904)))

(declare-fun b!2998396 () Bool)

(assert (=> b!2998396 (= e!1883904 tp_is_empty!16289)))

(declare-fun b!2998398 () Bool)

(declare-fun tp!952834 () Bool)

(assert (=> b!2998398 (= e!1883904 tp!952834)))

(assert (= (and b!2996854 ((_ is ElementMatch!9363) (regTwo!19239 (reg!9692 (regTwo!19239 r!17423))))) b!2998396))

(assert (= (and b!2996854 ((_ is Concat!14684) (regTwo!19239 (reg!9692 (regTwo!19239 r!17423))))) b!2998397))

(assert (= (and b!2996854 ((_ is Star!9363) (regTwo!19239 (reg!9692 (regTwo!19239 r!17423))))) b!2998398))

(assert (= (and b!2996854 ((_ is Union!9363) (regTwo!19239 (reg!9692 (regTwo!19239 r!17423))))) b!2998399))

(declare-fun b!2998401 () Bool)

(declare-fun e!1883905 () Bool)

(declare-fun tp!952838 () Bool)

(declare-fun tp!952837 () Bool)

(assert (=> b!2998401 (= e!1883905 (and tp!952838 tp!952837))))

(declare-fun b!2998403 () Bool)

(declare-fun tp!952840 () Bool)

(declare-fun tp!952836 () Bool)

(assert (=> b!2998403 (= e!1883905 (and tp!952840 tp!952836))))

(assert (=> b!2996857 (= tp!952077 e!1883905)))

(declare-fun b!2998400 () Bool)

(assert (=> b!2998400 (= e!1883905 tp_is_empty!16289)))

(declare-fun b!2998402 () Bool)

(declare-fun tp!952839 () Bool)

(assert (=> b!2998402 (= e!1883905 tp!952839)))

(assert (= (and b!2996857 ((_ is ElementMatch!9363) (reg!9692 (regOne!19238 (regOne!19239 r!17423))))) b!2998400))

(assert (= (and b!2996857 ((_ is Concat!14684) (reg!9692 (regOne!19238 (regOne!19239 r!17423))))) b!2998401))

(assert (= (and b!2996857 ((_ is Star!9363) (reg!9692 (regOne!19238 (regOne!19239 r!17423))))) b!2998402))

(assert (= (and b!2996857 ((_ is Union!9363) (reg!9692 (regOne!19238 (regOne!19239 r!17423))))) b!2998403))

(declare-fun b!2998405 () Bool)

(declare-fun e!1883906 () Bool)

(declare-fun tp!952843 () Bool)

(declare-fun tp!952842 () Bool)

(assert (=> b!2998405 (= e!1883906 (and tp!952843 tp!952842))))

(declare-fun b!2998407 () Bool)

(declare-fun tp!952845 () Bool)

(declare-fun tp!952841 () Bool)

(assert (=> b!2998407 (= e!1883906 (and tp!952845 tp!952841))))

(assert (=> b!2996829 (= tp!952042 e!1883906)))

(declare-fun b!2998404 () Bool)

(assert (=> b!2998404 (= e!1883906 tp_is_empty!16289)))

(declare-fun b!2998406 () Bool)

(declare-fun tp!952844 () Bool)

(assert (=> b!2998406 (= e!1883906 tp!952844)))

(assert (= (and b!2996829 ((_ is ElementMatch!9363) (reg!9692 (reg!9692 (reg!9692 r!17423))))) b!2998404))

(assert (= (and b!2996829 ((_ is Concat!14684) (reg!9692 (reg!9692 (reg!9692 r!17423))))) b!2998405))

(assert (= (and b!2996829 ((_ is Star!9363) (reg!9692 (reg!9692 (reg!9692 r!17423))))) b!2998406))

(assert (= (and b!2996829 ((_ is Union!9363) (reg!9692 (reg!9692 (reg!9692 r!17423))))) b!2998407))

(declare-fun b!2998409 () Bool)

(declare-fun e!1883907 () Bool)

(declare-fun tp!952848 () Bool)

(declare-fun tp!952847 () Bool)

(assert (=> b!2998409 (= e!1883907 (and tp!952848 tp!952847))))

(declare-fun b!2998411 () Bool)

(declare-fun tp!952850 () Bool)

(declare-fun tp!952846 () Bool)

(assert (=> b!2998411 (= e!1883907 (and tp!952850 tp!952846))))

(assert (=> b!2996917 (= tp!952121 e!1883907)))

(declare-fun b!2998408 () Bool)

(assert (=> b!2998408 (= e!1883907 tp_is_empty!16289)))

(declare-fun b!2998410 () Bool)

(declare-fun tp!952849 () Bool)

(assert (=> b!2998410 (= e!1883907 tp!952849)))

(assert (= (and b!2996917 ((_ is ElementMatch!9363) (regOne!19238 (regTwo!19239 (regTwo!19238 r!17423))))) b!2998408))

(assert (= (and b!2996917 ((_ is Concat!14684) (regOne!19238 (regTwo!19239 (regTwo!19238 r!17423))))) b!2998409))

(assert (= (and b!2996917 ((_ is Star!9363) (regOne!19238 (regTwo!19239 (regTwo!19238 r!17423))))) b!2998410))

(assert (= (and b!2996917 ((_ is Union!9363) (regOne!19238 (regTwo!19239 (regTwo!19238 r!17423))))) b!2998411))

(declare-fun b!2998413 () Bool)

(declare-fun e!1883908 () Bool)

(declare-fun tp!952853 () Bool)

(declare-fun tp!952852 () Bool)

(assert (=> b!2998413 (= e!1883908 (and tp!952853 tp!952852))))

(declare-fun b!2998415 () Bool)

(declare-fun tp!952855 () Bool)

(declare-fun tp!952851 () Bool)

(assert (=> b!2998415 (= e!1883908 (and tp!952855 tp!952851))))

(assert (=> b!2996917 (= tp!952120 e!1883908)))

(declare-fun b!2998412 () Bool)

(assert (=> b!2998412 (= e!1883908 tp_is_empty!16289)))

(declare-fun b!2998414 () Bool)

(declare-fun tp!952854 () Bool)

(assert (=> b!2998414 (= e!1883908 tp!952854)))

(assert (= (and b!2996917 ((_ is ElementMatch!9363) (regTwo!19238 (regTwo!19239 (regTwo!19238 r!17423))))) b!2998412))

(assert (= (and b!2996917 ((_ is Concat!14684) (regTwo!19238 (regTwo!19239 (regTwo!19238 r!17423))))) b!2998413))

(assert (= (and b!2996917 ((_ is Star!9363) (regTwo!19238 (regTwo!19239 (regTwo!19238 r!17423))))) b!2998414))

(assert (= (and b!2996917 ((_ is Union!9363) (regTwo!19238 (regTwo!19239 (regTwo!19238 r!17423))))) b!2998415))

(declare-fun b!2998417 () Bool)

(declare-fun e!1883909 () Bool)

(declare-fun tp!952858 () Bool)

(declare-fun tp!952857 () Bool)

(assert (=> b!2998417 (= e!1883909 (and tp!952858 tp!952857))))

(declare-fun b!2998419 () Bool)

(declare-fun tp!952860 () Bool)

(declare-fun tp!952856 () Bool)

(assert (=> b!2998419 (= e!1883909 (and tp!952860 tp!952856))))

(assert (=> b!2996950 (= tp!952162 e!1883909)))

(declare-fun b!2998416 () Bool)

(assert (=> b!2998416 (= e!1883909 tp_is_empty!16289)))

(declare-fun b!2998418 () Bool)

(declare-fun tp!952859 () Bool)

(assert (=> b!2998418 (= e!1883909 tp!952859)))

(assert (= (and b!2996950 ((_ is ElementMatch!9363) (reg!9692 (regTwo!19239 (regTwo!19239 r!17423))))) b!2998416))

(assert (= (and b!2996950 ((_ is Concat!14684) (reg!9692 (regTwo!19239 (regTwo!19239 r!17423))))) b!2998417))

(assert (= (and b!2996950 ((_ is Star!9363) (reg!9692 (regTwo!19239 (regTwo!19239 r!17423))))) b!2998418))

(assert (= (and b!2996950 ((_ is Union!9363) (reg!9692 (regTwo!19239 (regTwo!19239 r!17423))))) b!2998419))

(declare-fun b!2998421 () Bool)

(declare-fun e!1883910 () Bool)

(declare-fun tp!952863 () Bool)

(declare-fun tp!952862 () Bool)

(assert (=> b!2998421 (= e!1883910 (and tp!952863 tp!952862))))

(declare-fun b!2998423 () Bool)

(declare-fun tp!952865 () Bool)

(declare-fun tp!952861 () Bool)

(assert (=> b!2998423 (= e!1883910 (and tp!952865 tp!952861))))

(assert (=> b!2996930 (= tp!952137 e!1883910)))

(declare-fun b!2998420 () Bool)

(assert (=> b!2998420 (= e!1883910 tp_is_empty!16289)))

(declare-fun b!2998422 () Bool)

(declare-fun tp!952864 () Bool)

(assert (=> b!2998422 (= e!1883910 tp!952864)))

(assert (= (and b!2996930 ((_ is ElementMatch!9363) (reg!9692 (regTwo!19239 (regOne!19239 r!17423))))) b!2998420))

(assert (= (and b!2996930 ((_ is Concat!14684) (reg!9692 (regTwo!19239 (regOne!19239 r!17423))))) b!2998421))

(assert (= (and b!2996930 ((_ is Star!9363) (reg!9692 (regTwo!19239 (regOne!19239 r!17423))))) b!2998422))

(assert (= (and b!2996930 ((_ is Union!9363) (reg!9692 (regTwo!19239 (regOne!19239 r!17423))))) b!2998423))

(declare-fun b!2998425 () Bool)

(declare-fun e!1883911 () Bool)

(declare-fun tp!952868 () Bool)

(declare-fun tp!952867 () Bool)

(assert (=> b!2998425 (= e!1883911 (and tp!952868 tp!952867))))

(declare-fun b!2998427 () Bool)

(declare-fun tp!952870 () Bool)

(declare-fun tp!952866 () Bool)

(assert (=> b!2998427 (= e!1883911 (and tp!952870 tp!952866))))

(assert (=> b!2996838 (= tp!952053 e!1883911)))

(declare-fun b!2998424 () Bool)

(assert (=> b!2998424 (= e!1883911 tp_is_empty!16289)))

(declare-fun b!2998426 () Bool)

(declare-fun tp!952869 () Bool)

(assert (=> b!2998426 (= e!1883911 tp!952869)))

(assert (= (and b!2996838 ((_ is ElementMatch!9363) (regOne!19239 (regTwo!19238 (reg!9692 r!17423))))) b!2998424))

(assert (= (and b!2996838 ((_ is Concat!14684) (regOne!19239 (regTwo!19238 (reg!9692 r!17423))))) b!2998425))

(assert (= (and b!2996838 ((_ is Star!9363) (regOne!19239 (regTwo!19238 (reg!9692 r!17423))))) b!2998426))

(assert (= (and b!2996838 ((_ is Union!9363) (regOne!19239 (regTwo!19238 (reg!9692 r!17423))))) b!2998427))

(declare-fun b!2998429 () Bool)

(declare-fun e!1883912 () Bool)

(declare-fun tp!952873 () Bool)

(declare-fun tp!952872 () Bool)

(assert (=> b!2998429 (= e!1883912 (and tp!952873 tp!952872))))

(declare-fun b!2998431 () Bool)

(declare-fun tp!952875 () Bool)

(declare-fun tp!952871 () Bool)

(assert (=> b!2998431 (= e!1883912 (and tp!952875 tp!952871))))

(assert (=> b!2996838 (= tp!952049 e!1883912)))

(declare-fun b!2998428 () Bool)

(assert (=> b!2998428 (= e!1883912 tp_is_empty!16289)))

(declare-fun b!2998430 () Bool)

(declare-fun tp!952874 () Bool)

(assert (=> b!2998430 (= e!1883912 tp!952874)))

(assert (= (and b!2996838 ((_ is ElementMatch!9363) (regTwo!19239 (regTwo!19238 (reg!9692 r!17423))))) b!2998428))

(assert (= (and b!2996838 ((_ is Concat!14684) (regTwo!19239 (regTwo!19238 (reg!9692 r!17423))))) b!2998429))

(assert (= (and b!2996838 ((_ is Star!9363) (regTwo!19239 (regTwo!19238 (reg!9692 r!17423))))) b!2998430))

(assert (= (and b!2996838 ((_ is Union!9363) (regTwo!19239 (regTwo!19238 (reg!9692 r!17423))))) b!2998431))

(declare-fun b!2998433 () Bool)

(declare-fun e!1883913 () Bool)

(declare-fun tp!952878 () Bool)

(declare-fun tp!952877 () Bool)

(assert (=> b!2998433 (= e!1883913 (and tp!952878 tp!952877))))

(declare-fun b!2998435 () Bool)

(declare-fun tp!952880 () Bool)

(declare-fun tp!952876 () Bool)

(assert (=> b!2998435 (= e!1883913 (and tp!952880 tp!952876))))

(assert (=> b!2996901 (= tp!952101 e!1883913)))

(declare-fun b!2998432 () Bool)

(assert (=> b!2998432 (= e!1883913 tp_is_empty!16289)))

(declare-fun b!2998434 () Bool)

(declare-fun tp!952879 () Bool)

(assert (=> b!2998434 (= e!1883913 tp!952879)))

(assert (= (and b!2996901 ((_ is ElementMatch!9363) (regOne!19238 (regTwo!19239 (reg!9692 r!17423))))) b!2998432))

(assert (= (and b!2996901 ((_ is Concat!14684) (regOne!19238 (regTwo!19239 (reg!9692 r!17423))))) b!2998433))

(assert (= (and b!2996901 ((_ is Star!9363) (regOne!19238 (regTwo!19239 (reg!9692 r!17423))))) b!2998434))

(assert (= (and b!2996901 ((_ is Union!9363) (regOne!19238 (regTwo!19239 (reg!9692 r!17423))))) b!2998435))

(declare-fun b!2998437 () Bool)

(declare-fun e!1883914 () Bool)

(declare-fun tp!952883 () Bool)

(declare-fun tp!952882 () Bool)

(assert (=> b!2998437 (= e!1883914 (and tp!952883 tp!952882))))

(declare-fun b!2998439 () Bool)

(declare-fun tp!952885 () Bool)

(declare-fun tp!952881 () Bool)

(assert (=> b!2998439 (= e!1883914 (and tp!952885 tp!952881))))

(assert (=> b!2996901 (= tp!952100 e!1883914)))

(declare-fun b!2998436 () Bool)

(assert (=> b!2998436 (= e!1883914 tp_is_empty!16289)))

(declare-fun b!2998438 () Bool)

(declare-fun tp!952884 () Bool)

(assert (=> b!2998438 (= e!1883914 tp!952884)))

(assert (= (and b!2996901 ((_ is ElementMatch!9363) (regTwo!19238 (regTwo!19239 (reg!9692 r!17423))))) b!2998436))

(assert (= (and b!2996901 ((_ is Concat!14684) (regTwo!19238 (regTwo!19239 (reg!9692 r!17423))))) b!2998437))

(assert (= (and b!2996901 ((_ is Star!9363) (regTwo!19238 (regTwo!19239 (reg!9692 r!17423))))) b!2998438))

(assert (= (and b!2996901 ((_ is Union!9363) (regTwo!19238 (regTwo!19239 (reg!9692 r!17423))))) b!2998439))

(declare-fun b!2998441 () Bool)

(declare-fun e!1883915 () Bool)

(declare-fun tp!952888 () Bool)

(declare-fun tp!952887 () Bool)

(assert (=> b!2998441 (= e!1883915 (and tp!952888 tp!952887))))

(declare-fun b!2998443 () Bool)

(declare-fun tp!952890 () Bool)

(declare-fun tp!952886 () Bool)

(assert (=> b!2998443 (= e!1883915 (and tp!952890 tp!952886))))

(assert (=> b!2996922 (= tp!952127 e!1883915)))

(declare-fun b!2998440 () Bool)

(assert (=> b!2998440 (= e!1883915 tp_is_empty!16289)))

(declare-fun b!2998442 () Bool)

(declare-fun tp!952889 () Bool)

(assert (=> b!2998442 (= e!1883915 tp!952889)))

(assert (= (and b!2996922 ((_ is ElementMatch!9363) (reg!9692 (reg!9692 (regOne!19238 r!17423))))) b!2998440))

(assert (= (and b!2996922 ((_ is Concat!14684) (reg!9692 (reg!9692 (regOne!19238 r!17423))))) b!2998441))

(assert (= (and b!2996922 ((_ is Star!9363) (reg!9692 (reg!9692 (regOne!19238 r!17423))))) b!2998442))

(assert (= (and b!2996922 ((_ is Union!9363) (reg!9692 (reg!9692 (regOne!19238 r!17423))))) b!2998443))

(declare-fun b!2998445 () Bool)

(declare-fun e!1883916 () Bool)

(declare-fun tp!952893 () Bool)

(declare-fun tp!952892 () Bool)

(assert (=> b!2998445 (= e!1883916 (and tp!952893 tp!952892))))

(declare-fun b!2998447 () Bool)

(declare-fun tp!952895 () Bool)

(declare-fun tp!952891 () Bool)

(assert (=> b!2998447 (= e!1883916 (and tp!952895 tp!952891))))

(assert (=> b!2996927 (= tp!952133 e!1883916)))

(declare-fun b!2998444 () Bool)

(assert (=> b!2998444 (= e!1883916 tp_is_empty!16289)))

(declare-fun b!2998446 () Bool)

(declare-fun tp!952894 () Bool)

(assert (=> b!2998446 (= e!1883916 tp!952894)))

(assert (= (and b!2996927 ((_ is ElementMatch!9363) (regOne!19239 (regOne!19239 (regOne!19239 r!17423))))) b!2998444))

(assert (= (and b!2996927 ((_ is Concat!14684) (regOne!19239 (regOne!19239 (regOne!19239 r!17423))))) b!2998445))

(assert (= (and b!2996927 ((_ is Star!9363) (regOne!19239 (regOne!19239 (regOne!19239 r!17423))))) b!2998446))

(assert (= (and b!2996927 ((_ is Union!9363) (regOne!19239 (regOne!19239 (regOne!19239 r!17423))))) b!2998447))

(declare-fun b!2998449 () Bool)

(declare-fun e!1883917 () Bool)

(declare-fun tp!952898 () Bool)

(declare-fun tp!952897 () Bool)

(assert (=> b!2998449 (= e!1883917 (and tp!952898 tp!952897))))

(declare-fun b!2998451 () Bool)

(declare-fun tp!952900 () Bool)

(declare-fun tp!952896 () Bool)

(assert (=> b!2998451 (= e!1883917 (and tp!952900 tp!952896))))

(assert (=> b!2996927 (= tp!952129 e!1883917)))

(declare-fun b!2998448 () Bool)

(assert (=> b!2998448 (= e!1883917 tp_is_empty!16289)))

(declare-fun b!2998450 () Bool)

(declare-fun tp!952899 () Bool)

(assert (=> b!2998450 (= e!1883917 tp!952899)))

(assert (= (and b!2996927 ((_ is ElementMatch!9363) (regTwo!19239 (regOne!19239 (regOne!19239 r!17423))))) b!2998448))

(assert (= (and b!2996927 ((_ is Concat!14684) (regTwo!19239 (regOne!19239 (regOne!19239 r!17423))))) b!2998449))

(assert (= (and b!2996927 ((_ is Star!9363) (regTwo!19239 (regOne!19239 (regOne!19239 r!17423))))) b!2998450))

(assert (= (and b!2996927 ((_ is Union!9363) (regTwo!19239 (regOne!19239 (regOne!19239 r!17423))))) b!2998451))

(declare-fun b!2998453 () Bool)

(declare-fun e!1883918 () Bool)

(declare-fun tp!952903 () Bool)

(declare-fun tp!952902 () Bool)

(assert (=> b!2998453 (= e!1883918 (and tp!952903 tp!952902))))

(declare-fun b!2998455 () Bool)

(declare-fun tp!952905 () Bool)

(declare-fun tp!952901 () Bool)

(assert (=> b!2998455 (= e!1883918 (and tp!952905 tp!952901))))

(assert (=> b!2996910 (= tp!952112 e!1883918)))

(declare-fun b!2998452 () Bool)

(assert (=> b!2998452 (= e!1883918 tp_is_empty!16289)))

(declare-fun b!2998454 () Bool)

(declare-fun tp!952904 () Bool)

(assert (=> b!2998454 (= e!1883918 tp!952904)))

(assert (= (and b!2996910 ((_ is ElementMatch!9363) (reg!9692 (regTwo!19239 (regOne!19238 r!17423))))) b!2998452))

(assert (= (and b!2996910 ((_ is Concat!14684) (reg!9692 (regTwo!19239 (regOne!19238 r!17423))))) b!2998453))

(assert (= (and b!2996910 ((_ is Star!9363) (reg!9692 (regTwo!19239 (regOne!19238 r!17423))))) b!2998454))

(assert (= (and b!2996910 ((_ is Union!9363) (reg!9692 (regTwo!19239 (regOne!19238 r!17423))))) b!2998455))

(declare-fun b!2998457 () Bool)

(declare-fun e!1883919 () Bool)

(declare-fun tp!952908 () Bool)

(declare-fun tp!952907 () Bool)

(assert (=> b!2998457 (= e!1883919 (and tp!952908 tp!952907))))

(declare-fun b!2998459 () Bool)

(declare-fun tp!952910 () Bool)

(declare-fun tp!952906 () Bool)

(assert (=> b!2998459 (= e!1883919 (and tp!952910 tp!952906))))

(assert (=> b!2996919 (= tp!952123 e!1883919)))

(declare-fun b!2998456 () Bool)

(assert (=> b!2998456 (= e!1883919 tp_is_empty!16289)))

(declare-fun b!2998458 () Bool)

(declare-fun tp!952909 () Bool)

(assert (=> b!2998458 (= e!1883919 tp!952909)))

(assert (= (and b!2996919 ((_ is ElementMatch!9363) (regOne!19239 (regTwo!19239 (regTwo!19238 r!17423))))) b!2998456))

(assert (= (and b!2996919 ((_ is Concat!14684) (regOne!19239 (regTwo!19239 (regTwo!19238 r!17423))))) b!2998457))

(assert (= (and b!2996919 ((_ is Star!9363) (regOne!19239 (regTwo!19239 (regTwo!19238 r!17423))))) b!2998458))

(assert (= (and b!2996919 ((_ is Union!9363) (regOne!19239 (regTwo!19239 (regTwo!19238 r!17423))))) b!2998459))

(declare-fun b!2998461 () Bool)

(declare-fun e!1883920 () Bool)

(declare-fun tp!952913 () Bool)

(declare-fun tp!952912 () Bool)

(assert (=> b!2998461 (= e!1883920 (and tp!952913 tp!952912))))

(declare-fun b!2998463 () Bool)

(declare-fun tp!952915 () Bool)

(declare-fun tp!952911 () Bool)

(assert (=> b!2998463 (= e!1883920 (and tp!952915 tp!952911))))

(assert (=> b!2996919 (= tp!952119 e!1883920)))

(declare-fun b!2998460 () Bool)

(assert (=> b!2998460 (= e!1883920 tp_is_empty!16289)))

(declare-fun b!2998462 () Bool)

(declare-fun tp!952914 () Bool)

(assert (=> b!2998462 (= e!1883920 tp!952914)))

(assert (= (and b!2996919 ((_ is ElementMatch!9363) (regTwo!19239 (regTwo!19239 (regTwo!19238 r!17423))))) b!2998460))

(assert (= (and b!2996919 ((_ is Concat!14684) (regTwo!19239 (regTwo!19239 (regTwo!19238 r!17423))))) b!2998461))

(assert (= (and b!2996919 ((_ is Star!9363) (regTwo!19239 (regTwo!19239 (regTwo!19238 r!17423))))) b!2998462))

(assert (= (and b!2996919 ((_ is Union!9363) (regTwo!19239 (regTwo!19239 (regTwo!19238 r!17423))))) b!2998463))

(check-sat (not bm!201069) (not bm!201008) (not b!2998453) (not b!2998158) (not bm!201102) (not b!2997306) (not b!2997263) (not b!2998415) (not b!2997260) (not bm!201143) (not bm!201107) (not b!2997862) (not b!2998153) (not b!2998272) (not b!2998451) (not bm!201081) (not b!2998280) (not d!845657) (not b!2998421) (not b!2998378) (not b!2998112) (not b!2998041) (not b!2998194) (not bm!201018) (not b!2998101) (not bm!201114) (not b!2998025) (not d!845751) (not b!2998423) (not b!2998210) (not bm!201015) (not b!2998399) (not b!2998261) (not b!2998216) (not b!2998009) (not b!2998045) (not b!2998102) (not b!2998309) (not b!2997654) (not b!2998446) (not b!2998177) (not b!2998129) (not b!2998337) (not b!2998136) (not b!2998162) (not b!2997429) (not b!2998285) (not b!2997445) (not b!2997414) (not d!845639) (not b!2998142) (not b!2998113) (not b!2998439) (not b!2998341) (not d!845841) (not b!2998157) (not b!2997976) (not b!2998366) (not d!845805) (not bm!201184) (not b!2998276) (not b!2998321) (not b!2998088) (not b!2998108) (not b!2998459) (not b!2998375) (not b!2997790) (not b!2998410) (not b!2998050) (not bm!201088) (not b!2997973) (not bm!201048) (not b!2998166) (not b!2998234) (not bm!201072) (not bm!201188) (not b!2998098) (not bm!201132) (not b!2998105) (not b!2998339) (not bm!201045) (not bm!201177) (not b!2998030) (not b!2997646) (not b!2997647) (not b!2998070) (not b!2998313) (not b!2997478) (not b!2998125) (not b!2998017) (not b!2998393) (not d!845753) (not b!2998402) (not b!2998355) (not bm!201009) (not b!2998292) (not b!2998056) (not b!2998082) (not b!2998438) (not b!2997965) (not b!2997853) (not bm!201138) (not b!2998365) (not b!2998401) (not b!2998149) (not bm!201197) (not bm!201028) (not b!2998264) (not b!2998053) (not bm!201061) (not b!2997997) (not b!2998010) (not b!2998061) (not b!2997361) (not b!2998370) (not b!2997350) (not b!2998100) (not b!2997988) (not b!2998064) (not bm!201147) (not b!2998205) (not b!2997271) (not b!2997993) (not b!2998164) (not b!2998301) (not b!2998289) (not b!2998268) (not b!2998128) (not b!2997682) (not b!2998331) (not b!2998202) (not b!2998389) (not d!845821) (not b!2997612) (not bm!201050) (not b!2997731) (not b!2998120) (not b!2998165) (not b!2998455) (not d!845685) (not b!2998437) (not b!2997658) (not bm!201067) (not b!2998073) (not b!2998066) (not d!845719) (not b!2998345) (not bm!201126) (not b!2998318) (not bm!201120) (not bm!201205) (not bm!201190) (not b!2997596) (not b!2998303) (not b!2997833) (not b!2997968) (not b!2997990) (not d!845763) (not b!2998040) (not b!2998013) (not b!2998463) (not b!2998212) (not d!845693) (not b!2997649) (not b!2998426) (not d!845795) (not b!2998441) (not b!2998449) (not b!2997544) (not bm!201101) (not b!2998398) (not b!2998405) (not b!2998092) (not bm!201129) (not bm!201153) (not bm!201200) (not b!2998278) (not b!2998004) (not b!2997969) (not bm!201006) (not b!2998002) (not bm!201104) (not d!845711) (not b!2998106) (not b!2998221) (not bm!201176) (not d!845801) (not b!2998233) (not d!845829) (not b!2998134) (not b!2998016) (not b!2997957) (not b!2998096) (not b!2998260) (not b!2997994) (not b!2998327) (not d!845729) (not bm!201051) (not b!2998110) (not bm!201174) (not b!2998433) (not bm!201165) (not bm!201169) (not bm!201135) (not b!2998192) (not bm!201105) (not bm!201057) (not b!2998228) (not b!2998224) (not b!2998371) (not b!2997980) (not b!2997576) (not b!2998037) (not b!2998265) (not b!2998201) (not b!2998217) (not bm!201209) (not b!2998062) (not b!2998184) (not b!2998253) (not b!2998353) (not b!2998081) (not b!2998387) (not b!2998323) (not b!2998266) (not d!845659) (not b!2998286) (not b!2998457) (not b!2997832) (not b!2998342) (not b!2997575) (not b!2998021) (not b!2998036) (not b!2998020) (not b!2998197) (not b!2998214) (not d!845845) (not bm!201133) (not b!2998000) (not b!2998240) (not b!2998168) (not b!2998132) (not bm!201042) (not d!845765) (not bm!201012) (not b!2998138) (not bm!201173) (not bm!201033) (not b!2997496) (not b!2997896) (not bm!201112) (not b!2997530) (not b!2998029) (not b!2998418) (not b!2998206) (not b!2998244) (not b!2997325) (not b!2998104) (not b!2998390) (not b!2997964) (not b!2998078) (not bm!201038) (not b!2998190) (not bm!201210) (not b!2998072) (not b!2998369) (not d!845839) (not b!2998391) (not b!2998018) (not d!845641) (not b!2997996) (not b!2998213) (not bm!201090) (not b!2998461) (not bm!201096) (not bm!201195) (not b!2998080) (not b!2998093) (not b!2998277) (not bm!201070) (not b!2998306) (not b!2998385) (not b!2998074) (not b!2998334) (not b!2998150) (not d!845787) (not b!2998001) (not bm!201202) (not b!2998188) (not b!2998225) (not b!2998343) (not b!2997740) (not b!2998333) (not b!2998226) (not b!2998373) (not b!2998160) (not bm!201148) (not d!845757) (not bm!201094) (not bm!201004) (not d!845663) (not b!2998293) (not b!2998185) (not b!2998262) (not b!2997992) (not b!2997774) (not b!2998152) (not b!2997824) (not b!2998026) (not bm!201206) (not bm!201159) (not b!2998443) (not b!2998377) (not b!2997970) (not b!2998383) (not b!2998403) (not b!2998084) (not b!2998338) (not b!2998121) (not b!2997759) (not d!845815) (not b!2997442) (not b!2998431) (not bm!201063) (not b!2997984) (not b!2998299) (not b!2998284) (not b!2998411) (not b!2998220) (not b!2997670) (not b!2998222) (not bm!201021) (not d!845759) (not bm!201022) (not bm!201141) (not b!2998022) (not b!2998005) (not bm!201075) (not b!2998252) (not b!2998294) (not b!2997438) (not b!2998044) (not b!2997402) (not d!845731) (not b!2998434) (not b!2997977) (not b!2997275) (not b!2998367) (not b!2998374) (not b!2997375) (not bm!201080) (not b!2998361) (not b!2998296) (not b!2998209) (not bm!201162) (not b!2998060) (not b!2998270) (not bm!201154) (not b!2998427) (not b!2997643) (not bm!201118) (not b!2998315) (not b!2998141) (not b!2998032) (not b!2998462) (not b!2998208) (not b!2998148) (not b!2998319) (not b!2998397) (not b!2997886) (not bm!201180) (not d!845837) (not bm!201074) (not b!2998241) (not bm!201029) (not b!2998357) (not b!2998245) (not b!2998351) (not b!2997809) (not b!2998198) (not d!845735) (not b!2998242) (not bm!201179) (not b!2997338) (not b!2997567) (not b!2998349) (not b!2998024) (not bm!201047) (not bm!201191) (not b!2998180) (not bm!201097) (not b!2998126) (not bm!201156) (not b!2998288) (not b!2998281) (not b!2998196) (not d!845743) (not b!2998273) (not b!2998089) (not b!2998350) (not b!2998406) (not bm!201134) (not b!2997264) (not b!2998012) (not bm!201041) (not b!2998114) (not bm!201163) (not b!2998170) (not b!2997998) (not b!2998347) (not d!845643) (not b!2998269) (not b!2998386) (not b!2998122) (not bm!201111) (not b!2998118) (not bm!201144) (not b!2998181) (not b!2998169) (not b!2998290) (not b!2998109) (not b!2998200) (not b!2998117) (not b!2997697) (not b!2998238) (not b!2998049) (not b!2997942) (not b!2998137) (not bm!201127) (not b!2997989) (not b!2998097) (not b!2998033) (not b!2998186) (not bm!201199) (not b!2998014) (not b!2997985) (not bm!201140) (not b!2997453) (not bm!201083) (not b!2997457) (not d!845769) (not b!2998425) (not bm!201193) (not b!2997978) (not b!2998090) (not b!2998381) (not b!2998454) (not d!845669) (not b!2997986) (not b!2997890) (not b!2997911) (not b!2997392) (not bm!201124) (not bm!201035) (not b!2998237) (not d!845831) (not b!2998382) (not b!2998258) (not b!2998249) (not b!2998058) (not b!2998409) (not bm!201203) (not b!2998442) (not bm!201064) (not bm!201056) (not bm!201123) (not bm!201014) (not bm!201122) (not b!2998218) (not b!2998069) (not d!845667) (not b!2998256) (not b!2997292) (not b!2998314) (not b!2998176) (not b!2997889) (not b!2998173) (not b!2997972) (not b!2998250) (not bm!201182) (not bm!201151) (not b!2997966) (not bm!201137) (not b!2998204) (not b!2997844) (not b!2998052) (not b!2998359) (not b!2997930) (not b!2998257) (not b!2998395) (not b!2998145) (not b!2998335) (not b!2997512) (not b!2997653) (not b!2998130) (not b!2997897) (not bm!201039) (not b!2998422) (not b!2998317) (not bm!201026) (not b!2998229) (not d!845701) (not bm!201109) (not b!2998048) (not b!2997448) (not b!2997797) (not bm!201117) (not bm!201062) (not bm!201115) (not d!845671) (not b!2998298) (not bm!201171) (not b!2998068) (not b!2998144) (not bm!201093) (not b!2998154) (not bm!201086) (not b!2998034) (not b!2997877) (not b!2997587) (not b!2998054) (not b!2998076) (not b!2998246) (not b!2998124) (not bm!201066) (not b!2997624) (not d!845637) (not bm!201019) (not bm!201078) (not bm!201044) (not bm!201099) (not bm!201073) (not b!2998006) (not b!2998407) (not b!2998065) (not b!2998116) (not b!2998178) (not b!2998419) (not b!2998307) (not d!845745) (not b!2998232) (not d!845819) (not b!2998254) (not b!2998358) (not b!2998085) (not b!2998362) (not b!2998182) (not b!2998311) (not bm!201150) (not bm!201108) (not b!2998326) (not b!2998322) tp_is_empty!16289 (not b!2998413) (not b!2997722) (not bm!201161) (not b!2997487) (not d!845695) (not b!2997521) (not b!2998297) (not bm!201024) (not d!845649) (not d!845833) (not b!2998379) (not b!2998435) (not b!2998394) (not b!2998230) (not b!2998274) (not bm!201146) (not b!2998458) (not b!2997639) (not b!2997974) (not b!2998330) (not bm!201031) (not b!2998038) (not b!2997605) (not b!2998325) (not b!2998174) (not b!2997446) (not bm!201158) (not d!845817) (not bm!201186) (not bm!201025) (not bm!201084) (not b!2997452) (not b!2998329) (not bm!201077) (not b!2998146) (not b!2998236) (not bm!201054) (not bm!201098) (not bm!201059) (not b!2997539) (not bm!201043) (not b!2998172) (not b!2998310) (not b!2998414) (not b!2998008) (not b!2998363) (not b!2998057) (not b!2998042) (not b!2998305) (not b!2998417) (not b!2998450) (not b!2997981) (not d!845709) (not b!2998133) (not b!2997313) (not b!2998248) (not bm!201036) (not d!845835) (not bm!201168) (not b!2998086) (not b!2998193) (not b!2998429) (not bm!201166) (not bm!201172) (not b!2997747) (not bm!201130) (not b!2997713) (not b!2998094) (not bm!201010) (not b!2997901) (not bm!201053) (not b!2997266) (not b!2998189) (not b!2998447) (not bm!201017) (not b!2997270) (not b!2998077) (not b!2997892) (not b!2998161) (not b!2998346) (not b!2997982) (not b!2998028) (not b!2997393) (not b!2997956) (not bm!201201) (not b!2997558) (not b!2998046) (not b!2997384) (not d!845655) (not bm!201208) (not bm!201091) (not b!2998302) (not bm!201157) (not b!2998354) (not b!2998430) (not b!2997867) (not b!2998140) (not b!2998156) (not b!2998445) (not b!2998282))
(check-sat)
