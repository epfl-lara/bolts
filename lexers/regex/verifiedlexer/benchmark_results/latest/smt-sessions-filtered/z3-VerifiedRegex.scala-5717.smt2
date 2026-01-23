; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!284280 () Bool)

(assert start!284280)

(declare-fun b!2918726 () Bool)

(declare-fun e!1841520 () Bool)

(declare-fun tp!936825 () Bool)

(assert (=> b!2918726 (= e!1841520 tp!936825)))

(declare-fun b!2918727 () Bool)

(declare-fun tp!936822 () Bool)

(declare-fun tp!936823 () Bool)

(assert (=> b!2918727 (= e!1841520 (and tp!936822 tp!936823))))

(declare-fun b!2918728 () Bool)

(declare-fun tp!936820 () Bool)

(declare-fun tp!936821 () Bool)

(assert (=> b!2918728 (= e!1841520 (and tp!936820 tp!936821))))

(declare-fun res!1204970 () Bool)

(declare-fun e!1841518 () Bool)

(assert (=> start!284280 (=> (not res!1204970) (not e!1841518))))

(declare-datatypes ((C!18156 0))(
  ( (C!18157 (val!11114 Int)) )
))
(declare-datatypes ((Regex!8985 0))(
  ( (ElementMatch!8985 (c!476171 C!18156)) (Concat!14306 (regOne!18482 Regex!8985) (regTwo!18482 Regex!8985)) (EmptyExpr!8985) (Star!8985 (reg!9314 Regex!8985)) (EmptyLang!8985) (Union!8985 (regOne!18483 Regex!8985) (regTwo!18483 Regex!8985)) )
))
(declare-fun r!17423 () Regex!8985)

(declare-fun validRegex!3718 (Regex!8985) Bool)

(assert (=> start!284280 (= res!1204970 (validRegex!3718 r!17423))))

(assert (=> start!284280 e!1841518))

(assert (=> start!284280 e!1841520))

(declare-fun e!1841519 () Bool)

(assert (=> start!284280 e!1841519))

(declare-fun b!2918729 () Bool)

(declare-fun tp_is_empty!15533 () Bool)

(declare-fun tp!936824 () Bool)

(assert (=> b!2918729 (= e!1841519 (and tp_is_empty!15533 tp!936824))))

(declare-fun b!2918730 () Bool)

(declare-fun e!1841521 () Bool)

(assert (=> b!2918730 (= e!1841518 (not e!1841521))))

(declare-fun res!1204969 () Bool)

(assert (=> b!2918730 (=> res!1204969 e!1841521)))

(declare-fun lt!1025333 () Bool)

(get-info :version)

(assert (=> b!2918730 (= res!1204969 (or (not lt!1025333) ((_ is Concat!14306) r!17423) (not ((_ is Union!8985) r!17423))))))

(declare-datatypes ((List!34850 0))(
  ( (Nil!34726) (Cons!34726 (h!40146 C!18156) (t!233915 List!34850)) )
))
(declare-fun s!11993 () List!34850)

(declare-fun matchRSpec!1122 (Regex!8985 List!34850) Bool)

(assert (=> b!2918730 (= lt!1025333 (matchRSpec!1122 r!17423 s!11993))))

(declare-fun matchR!3867 (Regex!8985 List!34850) Bool)

(assert (=> b!2918730 (= lt!1025333 (matchR!3867 r!17423 s!11993))))

(declare-datatypes ((Unit!48309 0))(
  ( (Unit!48310) )
))
(declare-fun lt!1025332 () Unit!48309)

(declare-fun mainMatchTheorem!1122 (Regex!8985 List!34850) Unit!48309)

(assert (=> b!2918730 (= lt!1025332 (mainMatchTheorem!1122 r!17423 s!11993))))

(declare-fun b!2918731 () Bool)

(assert (=> b!2918731 (= e!1841520 tp_is_empty!15533)))

(declare-fun b!2918732 () Bool)

(assert (=> b!2918732 (= e!1841521 (validRegex!3718 (regOne!18483 r!17423)))))

(declare-fun e!1841517 () Bool)

(assert (=> b!2918732 e!1841517))

(declare-fun res!1204968 () Bool)

(assert (=> b!2918732 (=> res!1204968 e!1841517)))

(assert (=> b!2918732 (= res!1204968 (matchR!3867 (regOne!18483 r!17423) s!11993))))

(declare-fun lt!1025331 () Unit!48309)

(declare-fun lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!234 (Regex!8985 Regex!8985 List!34850) Unit!48309)

(assert (=> b!2918732 (= lt!1025331 (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!234 (regOne!18483 r!17423) (regTwo!18483 r!17423) s!11993))))

(declare-fun b!2918733 () Bool)

(assert (=> b!2918733 (= e!1841517 (matchR!3867 (regTwo!18483 r!17423) s!11993))))

(assert (= (and start!284280 res!1204970) b!2918730))

(assert (= (and b!2918730 (not res!1204969)) b!2918732))

(assert (= (and b!2918732 (not res!1204968)) b!2918733))

(assert (= (and start!284280 ((_ is ElementMatch!8985) r!17423)) b!2918731))

(assert (= (and start!284280 ((_ is Concat!14306) r!17423)) b!2918728))

(assert (= (and start!284280 ((_ is Star!8985) r!17423)) b!2918726))

(assert (= (and start!284280 ((_ is Union!8985) r!17423)) b!2918727))

(assert (= (and start!284280 ((_ is Cons!34726) s!11993)) b!2918729))

(declare-fun m!3316269 () Bool)

(assert (=> start!284280 m!3316269))

(declare-fun m!3316271 () Bool)

(assert (=> b!2918730 m!3316271))

(declare-fun m!3316273 () Bool)

(assert (=> b!2918730 m!3316273))

(declare-fun m!3316275 () Bool)

(assert (=> b!2918730 m!3316275))

(declare-fun m!3316277 () Bool)

(assert (=> b!2918732 m!3316277))

(declare-fun m!3316279 () Bool)

(assert (=> b!2918732 m!3316279))

(declare-fun m!3316281 () Bool)

(assert (=> b!2918732 m!3316281))

(declare-fun m!3316283 () Bool)

(assert (=> b!2918733 m!3316283))

(check-sat tp_is_empty!15533 (not b!2918732) (not b!2918728) (not b!2918730) (not b!2918726) (not start!284280) (not b!2918733) (not b!2918729) (not b!2918727))
(check-sat)
(get-model)

(declare-fun b!2918789 () Bool)

(declare-fun res!1205002 () Bool)

(declare-fun e!1841560 () Bool)

(assert (=> b!2918789 (=> (not res!1205002) (not e!1841560))))

(declare-fun isEmpty!18983 (List!34850) Bool)

(declare-fun tail!4712 (List!34850) List!34850)

(assert (=> b!2918789 (= res!1205002 (isEmpty!18983 (tail!4712 s!11993)))))

(declare-fun b!2918790 () Bool)

(declare-fun res!1205003 () Bool)

(declare-fun e!1841559 () Bool)

(assert (=> b!2918790 (=> res!1205003 e!1841559)))

(assert (=> b!2918790 (= res!1205003 (not ((_ is ElementMatch!8985) (regTwo!18483 r!17423))))))

(declare-fun e!1841563 () Bool)

(assert (=> b!2918790 (= e!1841563 e!1841559)))

(declare-fun b!2918791 () Bool)

(declare-fun e!1841561 () Bool)

(assert (=> b!2918791 (= e!1841561 e!1841563)))

(declare-fun c!476184 () Bool)

(assert (=> b!2918791 (= c!476184 ((_ is EmptyLang!8985) (regTwo!18483 r!17423)))))

(declare-fun b!2918792 () Bool)

(declare-fun e!1841562 () Bool)

(assert (=> b!2918792 (= e!1841559 e!1841562)))

(declare-fun res!1205006 () Bool)

(assert (=> b!2918792 (=> (not res!1205006) (not e!1841562))))

(declare-fun lt!1025336 () Bool)

(assert (=> b!2918792 (= res!1205006 (not lt!1025336))))

(declare-fun b!2918793 () Bool)

(declare-fun e!1841557 () Bool)

(declare-fun derivativeStep!2427 (Regex!8985 C!18156) Regex!8985)

(declare-fun head!6486 (List!34850) C!18156)

(assert (=> b!2918793 (= e!1841557 (matchR!3867 (derivativeStep!2427 (regTwo!18483 r!17423) (head!6486 s!11993)) (tail!4712 s!11993)))))

(declare-fun b!2918794 () Bool)

(declare-fun nullable!2813 (Regex!8985) Bool)

(assert (=> b!2918794 (= e!1841557 (nullable!2813 (regTwo!18483 r!17423)))))

(declare-fun b!2918796 () Bool)

(declare-fun e!1841558 () Bool)

(assert (=> b!2918796 (= e!1841558 (not (= (head!6486 s!11993) (c!476171 (regTwo!18483 r!17423)))))))

(declare-fun b!2918797 () Bool)

(assert (=> b!2918797 (= e!1841560 (= (head!6486 s!11993) (c!476171 (regTwo!18483 r!17423))))))

(declare-fun b!2918798 () Bool)

(declare-fun res!1205008 () Bool)

(assert (=> b!2918798 (=> (not res!1205008) (not e!1841560))))

(declare-fun call!190870 () Bool)

(assert (=> b!2918798 (= res!1205008 (not call!190870))))

(declare-fun b!2918799 () Bool)

(assert (=> b!2918799 (= e!1841563 (not lt!1025336))))

(declare-fun d!838390 () Bool)

(assert (=> d!838390 e!1841561))

(declare-fun c!476185 () Bool)

(assert (=> d!838390 (= c!476185 ((_ is EmptyExpr!8985) (regTwo!18483 r!17423)))))

(assert (=> d!838390 (= lt!1025336 e!1841557)))

(declare-fun c!476186 () Bool)

(assert (=> d!838390 (= c!476186 (isEmpty!18983 s!11993))))

(assert (=> d!838390 (validRegex!3718 (regTwo!18483 r!17423))))

(assert (=> d!838390 (= (matchR!3867 (regTwo!18483 r!17423) s!11993) lt!1025336)))

(declare-fun b!2918795 () Bool)

(assert (=> b!2918795 (= e!1841562 e!1841558)))

(declare-fun res!1205007 () Bool)

(assert (=> b!2918795 (=> res!1205007 e!1841558)))

(assert (=> b!2918795 (= res!1205007 call!190870)))

(declare-fun b!2918800 () Bool)

(declare-fun res!1205004 () Bool)

(assert (=> b!2918800 (=> res!1205004 e!1841558)))

(assert (=> b!2918800 (= res!1205004 (not (isEmpty!18983 (tail!4712 s!11993))))))

(declare-fun b!2918801 () Bool)

(declare-fun res!1205005 () Bool)

(assert (=> b!2918801 (=> res!1205005 e!1841559)))

(assert (=> b!2918801 (= res!1205005 e!1841560)))

(declare-fun res!1205009 () Bool)

(assert (=> b!2918801 (=> (not res!1205009) (not e!1841560))))

(assert (=> b!2918801 (= res!1205009 lt!1025336)))

(declare-fun bm!190865 () Bool)

(assert (=> bm!190865 (= call!190870 (isEmpty!18983 s!11993))))

(declare-fun b!2918802 () Bool)

(assert (=> b!2918802 (= e!1841561 (= lt!1025336 call!190870))))

(assert (= (and d!838390 c!476186) b!2918794))

(assert (= (and d!838390 (not c!476186)) b!2918793))

(assert (= (and d!838390 c!476185) b!2918802))

(assert (= (and d!838390 (not c!476185)) b!2918791))

(assert (= (and b!2918791 c!476184) b!2918799))

(assert (= (and b!2918791 (not c!476184)) b!2918790))

(assert (= (and b!2918790 (not res!1205003)) b!2918801))

(assert (= (and b!2918801 res!1205009) b!2918798))

(assert (= (and b!2918798 res!1205008) b!2918789))

(assert (= (and b!2918789 res!1205002) b!2918797))

(assert (= (and b!2918801 (not res!1205005)) b!2918792))

(assert (= (and b!2918792 res!1205006) b!2918795))

(assert (= (and b!2918795 (not res!1205007)) b!2918800))

(assert (= (and b!2918800 (not res!1205004)) b!2918796))

(assert (= (or b!2918802 b!2918795 b!2918798) bm!190865))

(declare-fun m!3316291 () Bool)

(assert (=> d!838390 m!3316291))

(declare-fun m!3316293 () Bool)

(assert (=> d!838390 m!3316293))

(declare-fun m!3316295 () Bool)

(assert (=> b!2918800 m!3316295))

(assert (=> b!2918800 m!3316295))

(declare-fun m!3316297 () Bool)

(assert (=> b!2918800 m!3316297))

(declare-fun m!3316299 () Bool)

(assert (=> b!2918797 m!3316299))

(assert (=> b!2918789 m!3316295))

(assert (=> b!2918789 m!3316295))

(assert (=> b!2918789 m!3316297))

(assert (=> b!2918796 m!3316299))

(assert (=> b!2918793 m!3316299))

(assert (=> b!2918793 m!3316299))

(declare-fun m!3316301 () Bool)

(assert (=> b!2918793 m!3316301))

(assert (=> b!2918793 m!3316295))

(assert (=> b!2918793 m!3316301))

(assert (=> b!2918793 m!3316295))

(declare-fun m!3316303 () Bool)

(assert (=> b!2918793 m!3316303))

(assert (=> bm!190865 m!3316291))

(declare-fun m!3316305 () Bool)

(assert (=> b!2918794 m!3316305))

(assert (=> b!2918733 d!838390))

(declare-fun bm!190874 () Bool)

(declare-fun call!190880 () Bool)

(declare-fun c!476197 () Bool)

(assert (=> bm!190874 (= call!190880 (validRegex!3718 (ite c!476197 (regTwo!18483 (regOne!18483 r!17423)) (regOne!18482 (regOne!18483 r!17423)))))))

(declare-fun b!2918849 () Bool)

(declare-fun res!1205036 () Bool)

(declare-fun e!1841594 () Bool)

(assert (=> b!2918849 (=> res!1205036 e!1841594)))

(assert (=> b!2918849 (= res!1205036 (not ((_ is Concat!14306) (regOne!18483 r!17423))))))

(declare-fun e!1841593 () Bool)

(assert (=> b!2918849 (= e!1841593 e!1841594)))

(declare-fun bm!190875 () Bool)

(declare-fun call!190881 () Bool)

(declare-fun call!190879 () Bool)

(assert (=> bm!190875 (= call!190881 call!190879)))

(declare-fun b!2918850 () Bool)

(declare-fun res!1205039 () Bool)

(declare-fun e!1841595 () Bool)

(assert (=> b!2918850 (=> (not res!1205039) (not e!1841595))))

(assert (=> b!2918850 (= res!1205039 call!190881)))

(assert (=> b!2918850 (= e!1841593 e!1841595)))

(declare-fun d!838396 () Bool)

(declare-fun res!1205037 () Bool)

(declare-fun e!1841598 () Bool)

(assert (=> d!838396 (=> res!1205037 e!1841598)))

(assert (=> d!838396 (= res!1205037 ((_ is ElementMatch!8985) (regOne!18483 r!17423)))))

(assert (=> d!838396 (= (validRegex!3718 (regOne!18483 r!17423)) e!1841598)))

(declare-fun b!2918851 () Bool)

(declare-fun e!1841597 () Bool)

(assert (=> b!2918851 (= e!1841594 e!1841597)))

(declare-fun res!1205038 () Bool)

(assert (=> b!2918851 (=> (not res!1205038) (not e!1841597))))

(assert (=> b!2918851 (= res!1205038 call!190880)))

(declare-fun b!2918852 () Bool)

(declare-fun e!1841592 () Bool)

(assert (=> b!2918852 (= e!1841598 e!1841592)))

(declare-fun c!476198 () Bool)

(assert (=> b!2918852 (= c!476198 ((_ is Star!8985) (regOne!18483 r!17423)))))

(declare-fun b!2918853 () Bool)

(declare-fun e!1841596 () Bool)

(assert (=> b!2918853 (= e!1841596 call!190879)))

(declare-fun bm!190876 () Bool)

(assert (=> bm!190876 (= call!190879 (validRegex!3718 (ite c!476198 (reg!9314 (regOne!18483 r!17423)) (ite c!476197 (regOne!18483 (regOne!18483 r!17423)) (regTwo!18482 (regOne!18483 r!17423))))))))

(declare-fun b!2918854 () Bool)

(assert (=> b!2918854 (= e!1841592 e!1841593)))

(assert (=> b!2918854 (= c!476197 ((_ is Union!8985) (regOne!18483 r!17423)))))

(declare-fun b!2918855 () Bool)

(assert (=> b!2918855 (= e!1841597 call!190881)))

(declare-fun b!2918856 () Bool)

(assert (=> b!2918856 (= e!1841592 e!1841596)))

(declare-fun res!1205040 () Bool)

(assert (=> b!2918856 (= res!1205040 (not (nullable!2813 (reg!9314 (regOne!18483 r!17423)))))))

(assert (=> b!2918856 (=> (not res!1205040) (not e!1841596))))

(declare-fun b!2918857 () Bool)

(assert (=> b!2918857 (= e!1841595 call!190880)))

(assert (= (and d!838396 (not res!1205037)) b!2918852))

(assert (= (and b!2918852 c!476198) b!2918856))

(assert (= (and b!2918852 (not c!476198)) b!2918854))

(assert (= (and b!2918856 res!1205040) b!2918853))

(assert (= (and b!2918854 c!476197) b!2918850))

(assert (= (and b!2918854 (not c!476197)) b!2918849))

(assert (= (and b!2918850 res!1205039) b!2918857))

(assert (= (and b!2918849 (not res!1205036)) b!2918851))

(assert (= (and b!2918851 res!1205038) b!2918855))

(assert (= (or b!2918850 b!2918855) bm!190875))

(assert (= (or b!2918857 b!2918851) bm!190874))

(assert (= (or b!2918853 bm!190875) bm!190876))

(declare-fun m!3316307 () Bool)

(assert (=> bm!190874 m!3316307))

(declare-fun m!3316309 () Bool)

(assert (=> bm!190876 m!3316309))

(declare-fun m!3316311 () Bool)

(assert (=> b!2918856 m!3316311))

(assert (=> b!2918732 d!838396))

(declare-fun b!2918872 () Bool)

(declare-fun res!1205049 () Bool)

(declare-fun e!1841609 () Bool)

(assert (=> b!2918872 (=> (not res!1205049) (not e!1841609))))

(assert (=> b!2918872 (= res!1205049 (isEmpty!18983 (tail!4712 s!11993)))))

(declare-fun b!2918873 () Bool)

(declare-fun res!1205050 () Bool)

(declare-fun e!1841608 () Bool)

(assert (=> b!2918873 (=> res!1205050 e!1841608)))

(assert (=> b!2918873 (= res!1205050 (not ((_ is ElementMatch!8985) (regOne!18483 r!17423))))))

(declare-fun e!1841612 () Bool)

(assert (=> b!2918873 (= e!1841612 e!1841608)))

(declare-fun b!2918874 () Bool)

(declare-fun e!1841610 () Bool)

(assert (=> b!2918874 (= e!1841610 e!1841612)))

(declare-fun c!476202 () Bool)

(assert (=> b!2918874 (= c!476202 ((_ is EmptyLang!8985) (regOne!18483 r!17423)))))

(declare-fun b!2918875 () Bool)

(declare-fun e!1841611 () Bool)

(assert (=> b!2918875 (= e!1841608 e!1841611)))

(declare-fun res!1205053 () Bool)

(assert (=> b!2918875 (=> (not res!1205053) (not e!1841611))))

(declare-fun lt!1025340 () Bool)

(assert (=> b!2918875 (= res!1205053 (not lt!1025340))))

(declare-fun b!2918876 () Bool)

(declare-fun e!1841606 () Bool)

(assert (=> b!2918876 (= e!1841606 (matchR!3867 (derivativeStep!2427 (regOne!18483 r!17423) (head!6486 s!11993)) (tail!4712 s!11993)))))

(declare-fun b!2918877 () Bool)

(assert (=> b!2918877 (= e!1841606 (nullable!2813 (regOne!18483 r!17423)))))

(declare-fun b!2918879 () Bool)

(declare-fun e!1841607 () Bool)

(assert (=> b!2918879 (= e!1841607 (not (= (head!6486 s!11993) (c!476171 (regOne!18483 r!17423)))))))

(declare-fun b!2918880 () Bool)

(assert (=> b!2918880 (= e!1841609 (= (head!6486 s!11993) (c!476171 (regOne!18483 r!17423))))))

(declare-fun b!2918881 () Bool)

(declare-fun res!1205055 () Bool)

(assert (=> b!2918881 (=> (not res!1205055) (not e!1841609))))

(declare-fun call!190883 () Bool)

(assert (=> b!2918881 (= res!1205055 (not call!190883))))

(declare-fun b!2918882 () Bool)

(assert (=> b!2918882 (= e!1841612 (not lt!1025340))))

(declare-fun d!838398 () Bool)

(assert (=> d!838398 e!1841610))

(declare-fun c!476203 () Bool)

(assert (=> d!838398 (= c!476203 ((_ is EmptyExpr!8985) (regOne!18483 r!17423)))))

(assert (=> d!838398 (= lt!1025340 e!1841606)))

(declare-fun c!476204 () Bool)

(assert (=> d!838398 (= c!476204 (isEmpty!18983 s!11993))))

(assert (=> d!838398 (validRegex!3718 (regOne!18483 r!17423))))

(assert (=> d!838398 (= (matchR!3867 (regOne!18483 r!17423) s!11993) lt!1025340)))

(declare-fun b!2918878 () Bool)

(assert (=> b!2918878 (= e!1841611 e!1841607)))

(declare-fun res!1205054 () Bool)

(assert (=> b!2918878 (=> res!1205054 e!1841607)))

(assert (=> b!2918878 (= res!1205054 call!190883)))

(declare-fun b!2918883 () Bool)

(declare-fun res!1205051 () Bool)

(assert (=> b!2918883 (=> res!1205051 e!1841607)))

(assert (=> b!2918883 (= res!1205051 (not (isEmpty!18983 (tail!4712 s!11993))))))

(declare-fun b!2918884 () Bool)

(declare-fun res!1205052 () Bool)

(assert (=> b!2918884 (=> res!1205052 e!1841608)))

(assert (=> b!2918884 (= res!1205052 e!1841609)))

(declare-fun res!1205056 () Bool)

(assert (=> b!2918884 (=> (not res!1205056) (not e!1841609))))

(assert (=> b!2918884 (= res!1205056 lt!1025340)))

(declare-fun bm!190878 () Bool)

(assert (=> bm!190878 (= call!190883 (isEmpty!18983 s!11993))))

(declare-fun b!2918885 () Bool)

(assert (=> b!2918885 (= e!1841610 (= lt!1025340 call!190883))))

(assert (= (and d!838398 c!476204) b!2918877))

(assert (= (and d!838398 (not c!476204)) b!2918876))

(assert (= (and d!838398 c!476203) b!2918885))

(assert (= (and d!838398 (not c!476203)) b!2918874))

(assert (= (and b!2918874 c!476202) b!2918882))

(assert (= (and b!2918874 (not c!476202)) b!2918873))

(assert (= (and b!2918873 (not res!1205050)) b!2918884))

(assert (= (and b!2918884 res!1205056) b!2918881))

(assert (= (and b!2918881 res!1205055) b!2918872))

(assert (= (and b!2918872 res!1205049) b!2918880))

(assert (= (and b!2918884 (not res!1205052)) b!2918875))

(assert (= (and b!2918875 res!1205053) b!2918878))

(assert (= (and b!2918878 (not res!1205054)) b!2918883))

(assert (= (and b!2918883 (not res!1205051)) b!2918879))

(assert (= (or b!2918885 b!2918878 b!2918881) bm!190878))

(assert (=> d!838398 m!3316291))

(assert (=> d!838398 m!3316277))

(assert (=> b!2918883 m!3316295))

(assert (=> b!2918883 m!3316295))

(assert (=> b!2918883 m!3316297))

(assert (=> b!2918880 m!3316299))

(assert (=> b!2918872 m!3316295))

(assert (=> b!2918872 m!3316295))

(assert (=> b!2918872 m!3316297))

(assert (=> b!2918879 m!3316299))

(assert (=> b!2918876 m!3316299))

(assert (=> b!2918876 m!3316299))

(declare-fun m!3316327 () Bool)

(assert (=> b!2918876 m!3316327))

(assert (=> b!2918876 m!3316295))

(assert (=> b!2918876 m!3316327))

(assert (=> b!2918876 m!3316295))

(declare-fun m!3316329 () Bool)

(assert (=> b!2918876 m!3316329))

(assert (=> bm!190878 m!3316291))

(declare-fun m!3316331 () Bool)

(assert (=> b!2918877 m!3316331))

(assert (=> b!2918732 d!838398))

(declare-fun d!838402 () Bool)

(declare-fun e!1841623 () Bool)

(assert (=> d!838402 e!1841623))

(declare-fun res!1205068 () Bool)

(assert (=> d!838402 (=> res!1205068 e!1841623)))

(assert (=> d!838402 (= res!1205068 (matchR!3867 (regOne!18483 r!17423) s!11993))))

(declare-fun lt!1025346 () Unit!48309)

(declare-fun choose!17205 (Regex!8985 Regex!8985 List!34850) Unit!48309)

(assert (=> d!838402 (= lt!1025346 (choose!17205 (regOne!18483 r!17423) (regTwo!18483 r!17423) s!11993))))

(declare-fun e!1841624 () Bool)

(assert (=> d!838402 e!1841624))

(declare-fun res!1205067 () Bool)

(assert (=> d!838402 (=> (not res!1205067) (not e!1841624))))

(assert (=> d!838402 (= res!1205067 (validRegex!3718 (regOne!18483 r!17423)))))

(assert (=> d!838402 (= (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!234 (regOne!18483 r!17423) (regTwo!18483 r!17423) s!11993) lt!1025346)))

(declare-fun b!2918896 () Bool)

(assert (=> b!2918896 (= e!1841624 (validRegex!3718 (regTwo!18483 r!17423)))))

(declare-fun b!2918897 () Bool)

(assert (=> b!2918897 (= e!1841623 (matchR!3867 (regTwo!18483 r!17423) s!11993))))

(assert (= (and d!838402 res!1205067) b!2918896))

(assert (= (and d!838402 (not res!1205068)) b!2918897))

(assert (=> d!838402 m!3316279))

(declare-fun m!3316337 () Bool)

(assert (=> d!838402 m!3316337))

(assert (=> d!838402 m!3316277))

(assert (=> b!2918896 m!3316293))

(assert (=> b!2918897 m!3316283))

(assert (=> b!2918732 d!838402))

(declare-fun bm!190879 () Bool)

(declare-fun call!190885 () Bool)

(declare-fun c!476205 () Bool)

(assert (=> bm!190879 (= call!190885 (validRegex!3718 (ite c!476205 (regTwo!18483 r!17423) (regOne!18482 r!17423))))))

(declare-fun b!2918898 () Bool)

(declare-fun res!1205069 () Bool)

(declare-fun e!1841627 () Bool)

(assert (=> b!2918898 (=> res!1205069 e!1841627)))

(assert (=> b!2918898 (= res!1205069 (not ((_ is Concat!14306) r!17423)))))

(declare-fun e!1841626 () Bool)

(assert (=> b!2918898 (= e!1841626 e!1841627)))

(declare-fun bm!190880 () Bool)

(declare-fun call!190886 () Bool)

(declare-fun call!190884 () Bool)

(assert (=> bm!190880 (= call!190886 call!190884)))

(declare-fun b!2918899 () Bool)

(declare-fun res!1205072 () Bool)

(declare-fun e!1841628 () Bool)

(assert (=> b!2918899 (=> (not res!1205072) (not e!1841628))))

(assert (=> b!2918899 (= res!1205072 call!190886)))

(assert (=> b!2918899 (= e!1841626 e!1841628)))

(declare-fun d!838406 () Bool)

(declare-fun res!1205070 () Bool)

(declare-fun e!1841631 () Bool)

(assert (=> d!838406 (=> res!1205070 e!1841631)))

(assert (=> d!838406 (= res!1205070 ((_ is ElementMatch!8985) r!17423))))

(assert (=> d!838406 (= (validRegex!3718 r!17423) e!1841631)))

(declare-fun b!2918900 () Bool)

(declare-fun e!1841630 () Bool)

(assert (=> b!2918900 (= e!1841627 e!1841630)))

(declare-fun res!1205071 () Bool)

(assert (=> b!2918900 (=> (not res!1205071) (not e!1841630))))

(assert (=> b!2918900 (= res!1205071 call!190885)))

(declare-fun b!2918901 () Bool)

(declare-fun e!1841625 () Bool)

(assert (=> b!2918901 (= e!1841631 e!1841625)))

(declare-fun c!476206 () Bool)

(assert (=> b!2918901 (= c!476206 ((_ is Star!8985) r!17423))))

(declare-fun b!2918902 () Bool)

(declare-fun e!1841629 () Bool)

(assert (=> b!2918902 (= e!1841629 call!190884)))

(declare-fun bm!190881 () Bool)

(assert (=> bm!190881 (= call!190884 (validRegex!3718 (ite c!476206 (reg!9314 r!17423) (ite c!476205 (regOne!18483 r!17423) (regTwo!18482 r!17423)))))))

(declare-fun b!2918903 () Bool)

(assert (=> b!2918903 (= e!1841625 e!1841626)))

(assert (=> b!2918903 (= c!476205 ((_ is Union!8985) r!17423))))

(declare-fun b!2918904 () Bool)

(assert (=> b!2918904 (= e!1841630 call!190886)))

(declare-fun b!2918905 () Bool)

(assert (=> b!2918905 (= e!1841625 e!1841629)))

(declare-fun res!1205073 () Bool)

(assert (=> b!2918905 (= res!1205073 (not (nullable!2813 (reg!9314 r!17423))))))

(assert (=> b!2918905 (=> (not res!1205073) (not e!1841629))))

(declare-fun b!2918906 () Bool)

(assert (=> b!2918906 (= e!1841628 call!190885)))

(assert (= (and d!838406 (not res!1205070)) b!2918901))

(assert (= (and b!2918901 c!476206) b!2918905))

(assert (= (and b!2918901 (not c!476206)) b!2918903))

(assert (= (and b!2918905 res!1205073) b!2918902))

(assert (= (and b!2918903 c!476205) b!2918899))

(assert (= (and b!2918903 (not c!476205)) b!2918898))

(assert (= (and b!2918899 res!1205072) b!2918906))

(assert (= (and b!2918898 (not res!1205069)) b!2918900))

(assert (= (and b!2918900 res!1205071) b!2918904))

(assert (= (or b!2918899 b!2918904) bm!190880))

(assert (= (or b!2918906 b!2918900) bm!190879))

(assert (= (or b!2918902 bm!190880) bm!190881))

(declare-fun m!3316339 () Bool)

(assert (=> bm!190879 m!3316339))

(declare-fun m!3316341 () Bool)

(assert (=> bm!190881 m!3316341))

(declare-fun m!3316343 () Bool)

(assert (=> b!2918905 m!3316343))

(assert (=> start!284280 d!838406))

(declare-fun b!2919061 () Bool)

(assert (=> b!2919061 true))

(assert (=> b!2919061 true))

(declare-fun bs!524927 () Bool)

(declare-fun b!2919063 () Bool)

(assert (= bs!524927 (and b!2919063 b!2919061)))

(declare-fun lambda!108618 () Int)

(declare-fun lambda!108617 () Int)

(assert (=> bs!524927 (not (= lambda!108618 lambda!108617))))

(assert (=> b!2919063 true))

(assert (=> b!2919063 true))

(declare-fun d!838408 () Bool)

(declare-fun c!476237 () Bool)

(assert (=> d!838408 (= c!476237 ((_ is EmptyExpr!8985) r!17423))))

(declare-fun e!1841712 () Bool)

(assert (=> d!838408 (= (matchRSpec!1122 r!17423 s!11993) e!1841712)))

(declare-fun b!2919058 () Bool)

(declare-fun c!476238 () Bool)

(assert (=> b!2919058 (= c!476238 ((_ is Union!8985) r!17423))))

(declare-fun e!1841709 () Bool)

(declare-fun e!1841706 () Bool)

(assert (=> b!2919058 (= e!1841709 e!1841706)))

(declare-fun b!2919059 () Bool)

(assert (=> b!2919059 (= e!1841709 (= s!11993 (Cons!34726 (c!476171 r!17423) Nil!34726)))))

(declare-fun b!2919060 () Bool)

(declare-fun c!476236 () Bool)

(assert (=> b!2919060 (= c!476236 ((_ is ElementMatch!8985) r!17423))))

(declare-fun e!1841707 () Bool)

(assert (=> b!2919060 (= e!1841707 e!1841709)))

(declare-fun e!1841711 () Bool)

(declare-fun call!190903 () Bool)

(assert (=> b!2919061 (= e!1841711 call!190903)))

(declare-fun b!2919062 () Bool)

(declare-fun call!190902 () Bool)

(assert (=> b!2919062 (= e!1841712 call!190902)))

(declare-fun e!1841708 () Bool)

(assert (=> b!2919063 (= e!1841708 call!190903)))

(declare-fun bm!190897 () Bool)

(assert (=> bm!190897 (= call!190902 (isEmpty!18983 s!11993))))

(declare-fun b!2919064 () Bool)

(assert (=> b!2919064 (= e!1841706 e!1841708)))

(declare-fun c!476235 () Bool)

(assert (=> b!2919064 (= c!476235 ((_ is Star!8985) r!17423))))

(declare-fun b!2919065 () Bool)

(declare-fun e!1841710 () Bool)

(assert (=> b!2919065 (= e!1841706 e!1841710)))

(declare-fun res!1205131 () Bool)

(assert (=> b!2919065 (= res!1205131 (matchRSpec!1122 (regOne!18483 r!17423) s!11993))))

(assert (=> b!2919065 (=> res!1205131 e!1841710)))

(declare-fun b!2919066 () Bool)

(assert (=> b!2919066 (= e!1841712 e!1841707)))

(declare-fun res!1205130 () Bool)

(assert (=> b!2919066 (= res!1205130 (not ((_ is EmptyLang!8985) r!17423)))))

(assert (=> b!2919066 (=> (not res!1205130) (not e!1841707))))

(declare-fun b!2919067 () Bool)

(assert (=> b!2919067 (= e!1841710 (matchRSpec!1122 (regTwo!18483 r!17423) s!11993))))

(declare-fun b!2919068 () Bool)

(declare-fun res!1205132 () Bool)

(assert (=> b!2919068 (=> res!1205132 e!1841711)))

(assert (=> b!2919068 (= res!1205132 call!190902)))

(assert (=> b!2919068 (= e!1841708 e!1841711)))

(declare-fun bm!190898 () Bool)

(declare-fun Exists!1363 (Int) Bool)

(assert (=> bm!190898 (= call!190903 (Exists!1363 (ite c!476235 lambda!108617 lambda!108618)))))

(assert (= (and d!838408 c!476237) b!2919062))

(assert (= (and d!838408 (not c!476237)) b!2919066))

(assert (= (and b!2919066 res!1205130) b!2919060))

(assert (= (and b!2919060 c!476236) b!2919059))

(assert (= (and b!2919060 (not c!476236)) b!2919058))

(assert (= (and b!2919058 c!476238) b!2919065))

(assert (= (and b!2919058 (not c!476238)) b!2919064))

(assert (= (and b!2919065 (not res!1205131)) b!2919067))

(assert (= (and b!2919064 c!476235) b!2919068))

(assert (= (and b!2919064 (not c!476235)) b!2919063))

(assert (= (and b!2919068 (not res!1205132)) b!2919061))

(assert (= (or b!2919061 b!2919063) bm!190898))

(assert (= (or b!2919062 b!2919068) bm!190897))

(assert (=> bm!190897 m!3316291))

(declare-fun m!3316371 () Bool)

(assert (=> b!2919065 m!3316371))

(declare-fun m!3316373 () Bool)

(assert (=> b!2919067 m!3316373))

(declare-fun m!3316375 () Bool)

(assert (=> bm!190898 m!3316375))

(assert (=> b!2918730 d!838408))

(declare-fun b!2919073 () Bool)

(declare-fun res!1205133 () Bool)

(declare-fun e!1841716 () Bool)

(assert (=> b!2919073 (=> (not res!1205133) (not e!1841716))))

(assert (=> b!2919073 (= res!1205133 (isEmpty!18983 (tail!4712 s!11993)))))

(declare-fun b!2919074 () Bool)

(declare-fun res!1205134 () Bool)

(declare-fun e!1841715 () Bool)

(assert (=> b!2919074 (=> res!1205134 e!1841715)))

(assert (=> b!2919074 (= res!1205134 (not ((_ is ElementMatch!8985) r!17423)))))

(declare-fun e!1841719 () Bool)

(assert (=> b!2919074 (= e!1841719 e!1841715)))

(declare-fun b!2919075 () Bool)

(declare-fun e!1841717 () Bool)

(assert (=> b!2919075 (= e!1841717 e!1841719)))

(declare-fun c!476239 () Bool)

(assert (=> b!2919075 (= c!476239 ((_ is EmptyLang!8985) r!17423))))

(declare-fun b!2919076 () Bool)

(declare-fun e!1841718 () Bool)

(assert (=> b!2919076 (= e!1841715 e!1841718)))

(declare-fun res!1205137 () Bool)

(assert (=> b!2919076 (=> (not res!1205137) (not e!1841718))))

(declare-fun lt!1025352 () Bool)

(assert (=> b!2919076 (= res!1205137 (not lt!1025352))))

(declare-fun b!2919077 () Bool)

(declare-fun e!1841713 () Bool)

(assert (=> b!2919077 (= e!1841713 (matchR!3867 (derivativeStep!2427 r!17423 (head!6486 s!11993)) (tail!4712 s!11993)))))

(declare-fun b!2919078 () Bool)

(assert (=> b!2919078 (= e!1841713 (nullable!2813 r!17423))))

(declare-fun b!2919080 () Bool)

(declare-fun e!1841714 () Bool)

(assert (=> b!2919080 (= e!1841714 (not (= (head!6486 s!11993) (c!476171 r!17423))))))

(declare-fun b!2919081 () Bool)

(assert (=> b!2919081 (= e!1841716 (= (head!6486 s!11993) (c!476171 r!17423)))))

(declare-fun b!2919082 () Bool)

(declare-fun res!1205139 () Bool)

(assert (=> b!2919082 (=> (not res!1205139) (not e!1841716))))

(declare-fun call!190904 () Bool)

(assert (=> b!2919082 (= res!1205139 (not call!190904))))

(declare-fun b!2919083 () Bool)

(assert (=> b!2919083 (= e!1841719 (not lt!1025352))))

(declare-fun d!838418 () Bool)

(assert (=> d!838418 e!1841717))

(declare-fun c!476240 () Bool)

(assert (=> d!838418 (= c!476240 ((_ is EmptyExpr!8985) r!17423))))

(assert (=> d!838418 (= lt!1025352 e!1841713)))

(declare-fun c!476241 () Bool)

(assert (=> d!838418 (= c!476241 (isEmpty!18983 s!11993))))

(assert (=> d!838418 (validRegex!3718 r!17423)))

(assert (=> d!838418 (= (matchR!3867 r!17423 s!11993) lt!1025352)))

(declare-fun b!2919079 () Bool)

(assert (=> b!2919079 (= e!1841718 e!1841714)))

(declare-fun res!1205138 () Bool)

(assert (=> b!2919079 (=> res!1205138 e!1841714)))

(assert (=> b!2919079 (= res!1205138 call!190904)))

(declare-fun b!2919084 () Bool)

(declare-fun res!1205135 () Bool)

(assert (=> b!2919084 (=> res!1205135 e!1841714)))

(assert (=> b!2919084 (= res!1205135 (not (isEmpty!18983 (tail!4712 s!11993))))))

(declare-fun b!2919085 () Bool)

(declare-fun res!1205136 () Bool)

(assert (=> b!2919085 (=> res!1205136 e!1841715)))

(assert (=> b!2919085 (= res!1205136 e!1841716)))

(declare-fun res!1205140 () Bool)

(assert (=> b!2919085 (=> (not res!1205140) (not e!1841716))))

(assert (=> b!2919085 (= res!1205140 lt!1025352)))

(declare-fun bm!190899 () Bool)

(assert (=> bm!190899 (= call!190904 (isEmpty!18983 s!11993))))

(declare-fun b!2919086 () Bool)

(assert (=> b!2919086 (= e!1841717 (= lt!1025352 call!190904))))

(assert (= (and d!838418 c!476241) b!2919078))

(assert (= (and d!838418 (not c!476241)) b!2919077))

(assert (= (and d!838418 c!476240) b!2919086))

(assert (= (and d!838418 (not c!476240)) b!2919075))

(assert (= (and b!2919075 c!476239) b!2919083))

(assert (= (and b!2919075 (not c!476239)) b!2919074))

(assert (= (and b!2919074 (not res!1205134)) b!2919085))

(assert (= (and b!2919085 res!1205140) b!2919082))

(assert (= (and b!2919082 res!1205139) b!2919073))

(assert (= (and b!2919073 res!1205133) b!2919081))

(assert (= (and b!2919085 (not res!1205136)) b!2919076))

(assert (= (and b!2919076 res!1205137) b!2919079))

(assert (= (and b!2919079 (not res!1205138)) b!2919084))

(assert (= (and b!2919084 (not res!1205135)) b!2919080))

(assert (= (or b!2919086 b!2919079 b!2919082) bm!190899))

(assert (=> d!838418 m!3316291))

(assert (=> d!838418 m!3316269))

(assert (=> b!2919084 m!3316295))

(assert (=> b!2919084 m!3316295))

(assert (=> b!2919084 m!3316297))

(assert (=> b!2919081 m!3316299))

(assert (=> b!2919073 m!3316295))

(assert (=> b!2919073 m!3316295))

(assert (=> b!2919073 m!3316297))

(assert (=> b!2919080 m!3316299))

(assert (=> b!2919077 m!3316299))

(assert (=> b!2919077 m!3316299))

(declare-fun m!3316377 () Bool)

(assert (=> b!2919077 m!3316377))

(assert (=> b!2919077 m!3316295))

(assert (=> b!2919077 m!3316377))

(assert (=> b!2919077 m!3316295))

(declare-fun m!3316379 () Bool)

(assert (=> b!2919077 m!3316379))

(assert (=> bm!190899 m!3316291))

(declare-fun m!3316381 () Bool)

(assert (=> b!2919078 m!3316381))

(assert (=> b!2918730 d!838418))

(declare-fun d!838420 () Bool)

(assert (=> d!838420 (= (matchR!3867 r!17423 s!11993) (matchRSpec!1122 r!17423 s!11993))))

(declare-fun lt!1025355 () Unit!48309)

(declare-fun choose!17206 (Regex!8985 List!34850) Unit!48309)

(assert (=> d!838420 (= lt!1025355 (choose!17206 r!17423 s!11993))))

(assert (=> d!838420 (validRegex!3718 r!17423)))

(assert (=> d!838420 (= (mainMatchTheorem!1122 r!17423 s!11993) lt!1025355)))

(declare-fun bs!524928 () Bool)

(assert (= bs!524928 d!838420))

(assert (=> bs!524928 m!3316273))

(assert (=> bs!524928 m!3316271))

(declare-fun m!3316383 () Bool)

(assert (=> bs!524928 m!3316383))

(assert (=> bs!524928 m!3316269))

(assert (=> b!2918730 d!838420))

(declare-fun b!2919100 () Bool)

(declare-fun e!1841722 () Bool)

(declare-fun tp!936876 () Bool)

(declare-fun tp!936877 () Bool)

(assert (=> b!2919100 (= e!1841722 (and tp!936876 tp!936877))))

(declare-fun b!2919097 () Bool)

(assert (=> b!2919097 (= e!1841722 tp_is_empty!15533)))

(declare-fun b!2919099 () Bool)

(declare-fun tp!936875 () Bool)

(assert (=> b!2919099 (= e!1841722 tp!936875)))

(declare-fun b!2919098 () Bool)

(declare-fun tp!936874 () Bool)

(declare-fun tp!936878 () Bool)

(assert (=> b!2919098 (= e!1841722 (and tp!936874 tp!936878))))

(assert (=> b!2918728 (= tp!936820 e!1841722)))

(assert (= (and b!2918728 ((_ is ElementMatch!8985) (regOne!18482 r!17423))) b!2919097))

(assert (= (and b!2918728 ((_ is Concat!14306) (regOne!18482 r!17423))) b!2919098))

(assert (= (and b!2918728 ((_ is Star!8985) (regOne!18482 r!17423))) b!2919099))

(assert (= (and b!2918728 ((_ is Union!8985) (regOne!18482 r!17423))) b!2919100))

(declare-fun b!2919104 () Bool)

(declare-fun e!1841723 () Bool)

(declare-fun tp!936881 () Bool)

(declare-fun tp!936882 () Bool)

(assert (=> b!2919104 (= e!1841723 (and tp!936881 tp!936882))))

(declare-fun b!2919101 () Bool)

(assert (=> b!2919101 (= e!1841723 tp_is_empty!15533)))

(declare-fun b!2919103 () Bool)

(declare-fun tp!936880 () Bool)

(assert (=> b!2919103 (= e!1841723 tp!936880)))

(declare-fun b!2919102 () Bool)

(declare-fun tp!936879 () Bool)

(declare-fun tp!936883 () Bool)

(assert (=> b!2919102 (= e!1841723 (and tp!936879 tp!936883))))

(assert (=> b!2918728 (= tp!936821 e!1841723)))

(assert (= (and b!2918728 ((_ is ElementMatch!8985) (regTwo!18482 r!17423))) b!2919101))

(assert (= (and b!2918728 ((_ is Concat!14306) (regTwo!18482 r!17423))) b!2919102))

(assert (= (and b!2918728 ((_ is Star!8985) (regTwo!18482 r!17423))) b!2919103))

(assert (= (and b!2918728 ((_ is Union!8985) (regTwo!18482 r!17423))) b!2919104))

(declare-fun b!2919108 () Bool)

(declare-fun e!1841724 () Bool)

(declare-fun tp!936886 () Bool)

(declare-fun tp!936887 () Bool)

(assert (=> b!2919108 (= e!1841724 (and tp!936886 tp!936887))))

(declare-fun b!2919105 () Bool)

(assert (=> b!2919105 (= e!1841724 tp_is_empty!15533)))

(declare-fun b!2919107 () Bool)

(declare-fun tp!936885 () Bool)

(assert (=> b!2919107 (= e!1841724 tp!936885)))

(declare-fun b!2919106 () Bool)

(declare-fun tp!936884 () Bool)

(declare-fun tp!936888 () Bool)

(assert (=> b!2919106 (= e!1841724 (and tp!936884 tp!936888))))

(assert (=> b!2918727 (= tp!936822 e!1841724)))

(assert (= (and b!2918727 ((_ is ElementMatch!8985) (regOne!18483 r!17423))) b!2919105))

(assert (= (and b!2918727 ((_ is Concat!14306) (regOne!18483 r!17423))) b!2919106))

(assert (= (and b!2918727 ((_ is Star!8985) (regOne!18483 r!17423))) b!2919107))

(assert (= (and b!2918727 ((_ is Union!8985) (regOne!18483 r!17423))) b!2919108))

(declare-fun b!2919112 () Bool)

(declare-fun e!1841725 () Bool)

(declare-fun tp!936891 () Bool)

(declare-fun tp!936892 () Bool)

(assert (=> b!2919112 (= e!1841725 (and tp!936891 tp!936892))))

(declare-fun b!2919109 () Bool)

(assert (=> b!2919109 (= e!1841725 tp_is_empty!15533)))

(declare-fun b!2919111 () Bool)

(declare-fun tp!936890 () Bool)

(assert (=> b!2919111 (= e!1841725 tp!936890)))

(declare-fun b!2919110 () Bool)

(declare-fun tp!936889 () Bool)

(declare-fun tp!936893 () Bool)

(assert (=> b!2919110 (= e!1841725 (and tp!936889 tp!936893))))

(assert (=> b!2918727 (= tp!936823 e!1841725)))

(assert (= (and b!2918727 ((_ is ElementMatch!8985) (regTwo!18483 r!17423))) b!2919109))

(assert (= (and b!2918727 ((_ is Concat!14306) (regTwo!18483 r!17423))) b!2919110))

(assert (= (and b!2918727 ((_ is Star!8985) (regTwo!18483 r!17423))) b!2919111))

(assert (= (and b!2918727 ((_ is Union!8985) (regTwo!18483 r!17423))) b!2919112))

(declare-fun b!2919116 () Bool)

(declare-fun e!1841726 () Bool)

(declare-fun tp!936896 () Bool)

(declare-fun tp!936897 () Bool)

(assert (=> b!2919116 (= e!1841726 (and tp!936896 tp!936897))))

(declare-fun b!2919113 () Bool)

(assert (=> b!2919113 (= e!1841726 tp_is_empty!15533)))

(declare-fun b!2919115 () Bool)

(declare-fun tp!936895 () Bool)

(assert (=> b!2919115 (= e!1841726 tp!936895)))

(declare-fun b!2919114 () Bool)

(declare-fun tp!936894 () Bool)

(declare-fun tp!936898 () Bool)

(assert (=> b!2919114 (= e!1841726 (and tp!936894 tp!936898))))

(assert (=> b!2918726 (= tp!936825 e!1841726)))

(assert (= (and b!2918726 ((_ is ElementMatch!8985) (reg!9314 r!17423))) b!2919113))

(assert (= (and b!2918726 ((_ is Concat!14306) (reg!9314 r!17423))) b!2919114))

(assert (= (and b!2918726 ((_ is Star!8985) (reg!9314 r!17423))) b!2919115))

(assert (= (and b!2918726 ((_ is Union!8985) (reg!9314 r!17423))) b!2919116))

(declare-fun b!2919121 () Bool)

(declare-fun e!1841729 () Bool)

(declare-fun tp!936901 () Bool)

(assert (=> b!2919121 (= e!1841729 (and tp_is_empty!15533 tp!936901))))

(assert (=> b!2918729 (= tp!936824 e!1841729)))

(assert (= (and b!2918729 ((_ is Cons!34726) (t!233915 s!11993))) b!2919121))

(check-sat (not bm!190899) (not b!2919099) (not b!2918797) (not d!838390) (not b!2918793) (not b!2919114) (not b!2918872) (not b!2919084) (not b!2919116) (not bm!190865) (not b!2918880) (not b!2919073) (not d!838398) tp_is_empty!15533 (not b!2919102) (not bm!190878) (not b!2918876) (not b!2919081) (not bm!190879) (not b!2918897) (not b!2918796) (not b!2919108) (not b!2918879) (not b!2919100) (not b!2919110) (not bm!190876) (not b!2919077) (not b!2918794) (not b!2919098) (not b!2918877) (not b!2919115) (not b!2919080) (not b!2918883) (not b!2919104) (not b!2918856) (not b!2919121) (not bm!190881) (not b!2919111) (not d!838418) (not b!2919065) (not b!2918896) (not b!2919112) (not b!2919103) (not d!838402) (not b!2918905) (not b!2919107) (not b!2919067) (not bm!190898) (not b!2918789) (not d!838420) (not b!2919078) (not b!2918800) (not bm!190874) (not bm!190897) (not b!2919106))
(check-sat)
