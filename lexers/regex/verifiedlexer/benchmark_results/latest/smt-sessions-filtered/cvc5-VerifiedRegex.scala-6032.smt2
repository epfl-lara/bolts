; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!295038 () Bool)

(assert start!295038)

(declare-fun b!3117120 () Bool)

(declare-fun e!1946678 () Bool)

(declare-fun e!1946674 () Bool)

(assert (=> b!3117120 (= e!1946678 e!1946674)))

(declare-fun res!1275796 () Bool)

(assert (=> b!3117120 (=> res!1275796 e!1946674)))

(declare-datatypes ((C!19414 0))(
  ( (C!19415 (val!11743 Int)) )
))
(declare-datatypes ((Regex!9614 0))(
  ( (ElementMatch!9614 (c!522192 C!19414)) (Concat!14935 (regOne!19740 Regex!9614) (regTwo!19740 Regex!9614)) (EmptyExpr!9614) (Star!9614 (reg!9943 Regex!9614)) (EmptyLang!9614) (Union!9614 (regOne!19741 Regex!9614) (regTwo!19741 Regex!9614)) )
))
(declare-fun lt!1058456 () Regex!9614)

(declare-fun isEmptyLang!665 (Regex!9614) Bool)

(assert (=> b!3117120 (= res!1275796 (not (isEmptyLang!665 lt!1058456)))))

(declare-fun r!17423 () Regex!9614)

(declare-fun simplify!569 (Regex!9614) Regex!9614)

(assert (=> b!3117120 (= lt!1058456 (simplify!569 (reg!9943 r!17423)))))

(declare-fun res!1275793 () Bool)

(declare-fun e!1946675 () Bool)

(assert (=> start!295038 (=> (not res!1275793) (not e!1946675))))

(declare-fun validRegex!4347 (Regex!9614) Bool)

(assert (=> start!295038 (= res!1275793 (validRegex!4347 r!17423))))

(assert (=> start!295038 e!1946675))

(declare-fun e!1946676 () Bool)

(assert (=> start!295038 e!1946676))

(declare-fun e!1946679 () Bool)

(assert (=> start!295038 e!1946679))

(declare-fun b!3117121 () Bool)

(declare-fun tp!977434 () Bool)

(declare-fun tp!977435 () Bool)

(assert (=> b!3117121 (= e!1946676 (and tp!977434 tp!977435))))

(declare-fun b!3117122 () Bool)

(declare-fun tp_is_empty!16791 () Bool)

(declare-fun tp!977432 () Bool)

(assert (=> b!3117122 (= e!1946679 (and tp_is_empty!16791 tp!977432))))

(declare-fun b!3117123 () Bool)

(declare-fun e!1946677 () Bool)

(assert (=> b!3117123 (= e!1946674 e!1946677)))

(declare-fun res!1275795 () Bool)

(assert (=> b!3117123 (=> res!1275795 e!1946677)))

(declare-fun lt!1058453 () Bool)

(assert (=> b!3117123 (= res!1275795 lt!1058453)))

(declare-datatypes ((List!35479 0))(
  ( (Nil!35355) (Cons!35355 (h!40775 C!19414) (t!234544 List!35479)) )
))
(declare-fun s!11993 () List!35479)

(declare-fun matchR!4496 (Regex!9614 List!35479) Bool)

(assert (=> b!3117123 (= lt!1058453 (matchR!4496 lt!1058456 s!11993))))

(assert (=> b!3117123 (= lt!1058453 (matchR!4496 (reg!9943 r!17423) s!11993))))

(declare-datatypes ((Unit!49667 0))(
  ( (Unit!49668) )
))
(declare-fun lt!1058457 () Unit!49667)

(declare-fun lemmaSimplifySound!357 (Regex!9614 List!35479) Unit!49667)

(assert (=> b!3117123 (= lt!1058457 (lemmaSimplifySound!357 (reg!9943 r!17423) s!11993))))

(declare-fun b!3117124 () Bool)

(assert (=> b!3117124 (= e!1946676 tp_is_empty!16791)))

(declare-fun b!3117125 () Bool)

(declare-fun tp!977430 () Bool)

(assert (=> b!3117125 (= e!1946676 tp!977430)))

(declare-fun b!3117126 () Bool)

(declare-fun tp!977431 () Bool)

(declare-fun tp!977433 () Bool)

(assert (=> b!3117126 (= e!1946676 (and tp!977431 tp!977433))))

(declare-fun b!3117127 () Bool)

(assert (=> b!3117127 (= e!1946675 (not e!1946678))))

(declare-fun res!1275794 () Bool)

(assert (=> b!3117127 (=> res!1275794 e!1946678)))

(declare-fun lt!1058454 () Bool)

(assert (=> b!3117127 (= res!1275794 (or lt!1058454 (is-Concat!14935 r!17423) (is-Union!9614 r!17423) (not (is-Star!9614 r!17423))))))

(declare-fun matchRSpec!1751 (Regex!9614 List!35479) Bool)

(assert (=> b!3117127 (= lt!1058454 (matchRSpec!1751 r!17423 s!11993))))

(assert (=> b!3117127 (= lt!1058454 (matchR!4496 r!17423 s!11993))))

(declare-fun lt!1058455 () Unit!49667)

(declare-fun mainMatchTheorem!1751 (Regex!9614 List!35479) Unit!49667)

(assert (=> b!3117127 (= lt!1058455 (mainMatchTheorem!1751 r!17423 s!11993))))

(declare-fun b!3117128 () Bool)

(assert (=> b!3117128 (= e!1946677 (not (matchR!4496 (simplify!569 r!17423) s!11993)))))

(assert (= (and start!295038 res!1275793) b!3117127))

(assert (= (and b!3117127 (not res!1275794)) b!3117120))

(assert (= (and b!3117120 (not res!1275796)) b!3117123))

(assert (= (and b!3117123 (not res!1275795)) b!3117128))

(assert (= (and start!295038 (is-ElementMatch!9614 r!17423)) b!3117124))

(assert (= (and start!295038 (is-Concat!14935 r!17423)) b!3117126))

(assert (= (and start!295038 (is-Star!9614 r!17423)) b!3117125))

(assert (= (and start!295038 (is-Union!9614 r!17423)) b!3117121))

(assert (= (and start!295038 (is-Cons!35355 s!11993)) b!3117122))

(declare-fun m!3406869 () Bool)

(assert (=> b!3117128 m!3406869))

(assert (=> b!3117128 m!3406869))

(declare-fun m!3406871 () Bool)

(assert (=> b!3117128 m!3406871))

(declare-fun m!3406873 () Bool)

(assert (=> b!3117123 m!3406873))

(declare-fun m!3406875 () Bool)

(assert (=> b!3117123 m!3406875))

(declare-fun m!3406877 () Bool)

(assert (=> b!3117123 m!3406877))

(declare-fun m!3406879 () Bool)

(assert (=> start!295038 m!3406879))

(declare-fun m!3406881 () Bool)

(assert (=> b!3117127 m!3406881))

(declare-fun m!3406883 () Bool)

(assert (=> b!3117127 m!3406883))

(declare-fun m!3406885 () Bool)

(assert (=> b!3117127 m!3406885))

(declare-fun m!3406887 () Bool)

(assert (=> b!3117120 m!3406887))

(declare-fun m!3406889 () Bool)

(assert (=> b!3117120 m!3406889))

(push 1)

(assert (not b!3117123))

(assert (not b!3117127))

(assert (not b!3117125))

(assert (not b!3117128))

(assert (not b!3117121))

(assert tp_is_empty!16791)

(assert (not start!295038))

(assert (not b!3117120))

(assert (not b!3117126))

(assert (not b!3117122))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!3117240 () Bool)

(declare-fun e!1946740 () Bool)

(declare-fun e!1946744 () Bool)

(assert (=> b!3117240 (= e!1946740 e!1946744)))

(declare-fun res!1275861 () Bool)

(assert (=> b!3117240 (=> res!1275861 e!1946744)))

(declare-fun call!221255 () Bool)

(assert (=> b!3117240 (= res!1275861 call!221255)))

(declare-fun b!3117241 () Bool)

(declare-fun res!1275864 () Bool)

(declare-fun e!1946746 () Bool)

(assert (=> b!3117241 (=> (not res!1275864) (not e!1946746))))

(declare-fun isEmpty!19698 (List!35479) Bool)

(declare-fun tail!5132 (List!35479) List!35479)

(assert (=> b!3117241 (= res!1275864 (isEmpty!19698 (tail!5132 s!11993)))))

(declare-fun b!3117242 () Bool)

(declare-fun e!1946745 () Bool)

(declare-fun lt!1058479 () Bool)

(assert (=> b!3117242 (= e!1946745 (= lt!1058479 call!221255))))

(declare-fun b!3117243 () Bool)

(declare-fun res!1275857 () Bool)

(declare-fun e!1946743 () Bool)

(assert (=> b!3117243 (=> res!1275857 e!1946743)))

(assert (=> b!3117243 (= res!1275857 (not (is-ElementMatch!9614 lt!1058456)))))

(declare-fun e!1946742 () Bool)

(assert (=> b!3117243 (= e!1946742 e!1946743)))

(declare-fun d!862223 () Bool)

(assert (=> d!862223 e!1946745))

(declare-fun c!522213 () Bool)

(assert (=> d!862223 (= c!522213 (is-EmptyExpr!9614 lt!1058456))))

(declare-fun e!1946741 () Bool)

(assert (=> d!862223 (= lt!1058479 e!1946741)))

(declare-fun c!522212 () Bool)

(assert (=> d!862223 (= c!522212 (isEmpty!19698 s!11993))))

(assert (=> d!862223 (validRegex!4347 lt!1058456)))

(assert (=> d!862223 (= (matchR!4496 lt!1058456 s!11993) lt!1058479)))

(declare-fun b!3117244 () Bool)

(assert (=> b!3117244 (= e!1946743 e!1946740)))

(declare-fun res!1275863 () Bool)

(assert (=> b!3117244 (=> (not res!1275863) (not e!1946740))))

(assert (=> b!3117244 (= res!1275863 (not lt!1058479))))

(declare-fun b!3117245 () Bool)

(assert (=> b!3117245 (= e!1946742 (not lt!1058479))))

(declare-fun b!3117246 () Bool)

(declare-fun res!1275860 () Bool)

(assert (=> b!3117246 (=> (not res!1275860) (not e!1946746))))

(assert (=> b!3117246 (= res!1275860 (not call!221255))))

(declare-fun b!3117247 () Bool)

(declare-fun res!1275859 () Bool)

(assert (=> b!3117247 (=> res!1275859 e!1946744)))

(assert (=> b!3117247 (= res!1275859 (not (isEmpty!19698 (tail!5132 s!11993))))))

(declare-fun bm!221250 () Bool)

(assert (=> bm!221250 (= call!221255 (isEmpty!19698 s!11993))))

(declare-fun b!3117248 () Bool)

(declare-fun derivativeStep!2847 (Regex!9614 C!19414) Regex!9614)

(declare-fun head!6906 (List!35479) C!19414)

(assert (=> b!3117248 (= e!1946741 (matchR!4496 (derivativeStep!2847 lt!1058456 (head!6906 s!11993)) (tail!5132 s!11993)))))

(declare-fun b!3117249 () Bool)

(assert (=> b!3117249 (= e!1946746 (= (head!6906 s!11993) (c!522192 lt!1058456)))))

(declare-fun b!3117250 () Bool)

(declare-fun nullable!3252 (Regex!9614) Bool)

(assert (=> b!3117250 (= e!1946741 (nullable!3252 lt!1058456))))

(declare-fun b!3117251 () Bool)

(declare-fun res!1275858 () Bool)

(assert (=> b!3117251 (=> res!1275858 e!1946743)))

(assert (=> b!3117251 (= res!1275858 e!1946746)))

(declare-fun res!1275862 () Bool)

(assert (=> b!3117251 (=> (not res!1275862) (not e!1946746))))

(assert (=> b!3117251 (= res!1275862 lt!1058479)))

(declare-fun b!3117252 () Bool)

(assert (=> b!3117252 (= e!1946744 (not (= (head!6906 s!11993) (c!522192 lt!1058456))))))

(declare-fun b!3117253 () Bool)

(assert (=> b!3117253 (= e!1946745 e!1946742)))

(declare-fun c!522214 () Bool)

(assert (=> b!3117253 (= c!522214 (is-EmptyLang!9614 lt!1058456))))

(assert (= (and d!862223 c!522212) b!3117250))

(assert (= (and d!862223 (not c!522212)) b!3117248))

(assert (= (and d!862223 c!522213) b!3117242))

(assert (= (and d!862223 (not c!522213)) b!3117253))

(assert (= (and b!3117253 c!522214) b!3117245))

(assert (= (and b!3117253 (not c!522214)) b!3117243))

(assert (= (and b!3117243 (not res!1275857)) b!3117251))

(assert (= (and b!3117251 res!1275862) b!3117246))

(assert (= (and b!3117246 res!1275860) b!3117241))

(assert (= (and b!3117241 res!1275864) b!3117249))

(assert (= (and b!3117251 (not res!1275858)) b!3117244))

(assert (= (and b!3117244 res!1275863) b!3117240))

(assert (= (and b!3117240 (not res!1275861)) b!3117247))

(assert (= (and b!3117247 (not res!1275859)) b!3117252))

(assert (= (or b!3117242 b!3117240 b!3117246) bm!221250))

(declare-fun m!3406937 () Bool)

(assert (=> b!3117248 m!3406937))

(assert (=> b!3117248 m!3406937))

(declare-fun m!3406939 () Bool)

(assert (=> b!3117248 m!3406939))

(declare-fun m!3406941 () Bool)

(assert (=> b!3117248 m!3406941))

(assert (=> b!3117248 m!3406939))

(assert (=> b!3117248 m!3406941))

(declare-fun m!3406943 () Bool)

(assert (=> b!3117248 m!3406943))

(declare-fun m!3406945 () Bool)

(assert (=> b!3117250 m!3406945))

(declare-fun m!3406947 () Bool)

(assert (=> bm!221250 m!3406947))

(assert (=> d!862223 m!3406947))

(declare-fun m!3406949 () Bool)

(assert (=> d!862223 m!3406949))

(assert (=> b!3117252 m!3406937))

(assert (=> b!3117249 m!3406937))

(assert (=> b!3117241 m!3406941))

(assert (=> b!3117241 m!3406941))

(declare-fun m!3406951 () Bool)

(assert (=> b!3117241 m!3406951))

(assert (=> b!3117247 m!3406941))

(assert (=> b!3117247 m!3406941))

(assert (=> b!3117247 m!3406951))

(assert (=> b!3117123 d!862223))

(declare-fun b!3117254 () Bool)

(declare-fun e!1946747 () Bool)

(declare-fun e!1946751 () Bool)

(assert (=> b!3117254 (= e!1946747 e!1946751)))

(declare-fun res!1275869 () Bool)

(assert (=> b!3117254 (=> res!1275869 e!1946751)))

(declare-fun call!221256 () Bool)

(assert (=> b!3117254 (= res!1275869 call!221256)))

(declare-fun b!3117255 () Bool)

(declare-fun res!1275872 () Bool)

(declare-fun e!1946753 () Bool)

(assert (=> b!3117255 (=> (not res!1275872) (not e!1946753))))

(assert (=> b!3117255 (= res!1275872 (isEmpty!19698 (tail!5132 s!11993)))))

(declare-fun b!3117256 () Bool)

(declare-fun e!1946752 () Bool)

(declare-fun lt!1058480 () Bool)

(assert (=> b!3117256 (= e!1946752 (= lt!1058480 call!221256))))

(declare-fun b!3117257 () Bool)

(declare-fun res!1275865 () Bool)

(declare-fun e!1946750 () Bool)

(assert (=> b!3117257 (=> res!1275865 e!1946750)))

(assert (=> b!3117257 (= res!1275865 (not (is-ElementMatch!9614 (reg!9943 r!17423))))))

(declare-fun e!1946749 () Bool)

(assert (=> b!3117257 (= e!1946749 e!1946750)))

(declare-fun d!862231 () Bool)

(assert (=> d!862231 e!1946752))

(declare-fun c!522216 () Bool)

(assert (=> d!862231 (= c!522216 (is-EmptyExpr!9614 (reg!9943 r!17423)))))

(declare-fun e!1946748 () Bool)

(assert (=> d!862231 (= lt!1058480 e!1946748)))

(declare-fun c!522215 () Bool)

(assert (=> d!862231 (= c!522215 (isEmpty!19698 s!11993))))

(assert (=> d!862231 (validRegex!4347 (reg!9943 r!17423))))

(assert (=> d!862231 (= (matchR!4496 (reg!9943 r!17423) s!11993) lt!1058480)))

(declare-fun b!3117258 () Bool)

(assert (=> b!3117258 (= e!1946750 e!1946747)))

(declare-fun res!1275871 () Bool)

(assert (=> b!3117258 (=> (not res!1275871) (not e!1946747))))

(assert (=> b!3117258 (= res!1275871 (not lt!1058480))))

(declare-fun b!3117259 () Bool)

(assert (=> b!3117259 (= e!1946749 (not lt!1058480))))

(declare-fun b!3117260 () Bool)

(declare-fun res!1275868 () Bool)

(assert (=> b!3117260 (=> (not res!1275868) (not e!1946753))))

(assert (=> b!3117260 (= res!1275868 (not call!221256))))

(declare-fun b!3117261 () Bool)

(declare-fun res!1275867 () Bool)

(assert (=> b!3117261 (=> res!1275867 e!1946751)))

(assert (=> b!3117261 (= res!1275867 (not (isEmpty!19698 (tail!5132 s!11993))))))

(declare-fun bm!221251 () Bool)

(assert (=> bm!221251 (= call!221256 (isEmpty!19698 s!11993))))

(declare-fun b!3117262 () Bool)

(assert (=> b!3117262 (= e!1946748 (matchR!4496 (derivativeStep!2847 (reg!9943 r!17423) (head!6906 s!11993)) (tail!5132 s!11993)))))

(declare-fun b!3117263 () Bool)

(assert (=> b!3117263 (= e!1946753 (= (head!6906 s!11993) (c!522192 (reg!9943 r!17423))))))

(declare-fun b!3117264 () Bool)

(assert (=> b!3117264 (= e!1946748 (nullable!3252 (reg!9943 r!17423)))))

(declare-fun b!3117265 () Bool)

(declare-fun res!1275866 () Bool)

(assert (=> b!3117265 (=> res!1275866 e!1946750)))

(assert (=> b!3117265 (= res!1275866 e!1946753)))

(declare-fun res!1275870 () Bool)

(assert (=> b!3117265 (=> (not res!1275870) (not e!1946753))))

(assert (=> b!3117265 (= res!1275870 lt!1058480)))

(declare-fun b!3117266 () Bool)

(assert (=> b!3117266 (= e!1946751 (not (= (head!6906 s!11993) (c!522192 (reg!9943 r!17423)))))))

(declare-fun b!3117267 () Bool)

(assert (=> b!3117267 (= e!1946752 e!1946749)))

(declare-fun c!522217 () Bool)

(assert (=> b!3117267 (= c!522217 (is-EmptyLang!9614 (reg!9943 r!17423)))))

(assert (= (and d!862231 c!522215) b!3117264))

(assert (= (and d!862231 (not c!522215)) b!3117262))

(assert (= (and d!862231 c!522216) b!3117256))

(assert (= (and d!862231 (not c!522216)) b!3117267))

(assert (= (and b!3117267 c!522217) b!3117259))

(assert (= (and b!3117267 (not c!522217)) b!3117257))

(assert (= (and b!3117257 (not res!1275865)) b!3117265))

(assert (= (and b!3117265 res!1275870) b!3117260))

(assert (= (and b!3117260 res!1275868) b!3117255))

(assert (= (and b!3117255 res!1275872) b!3117263))

(assert (= (and b!3117265 (not res!1275866)) b!3117258))

(assert (= (and b!3117258 res!1275871) b!3117254))

(assert (= (and b!3117254 (not res!1275869)) b!3117261))

(assert (= (and b!3117261 (not res!1275867)) b!3117266))

(assert (= (or b!3117256 b!3117254 b!3117260) bm!221251))

(assert (=> b!3117262 m!3406937))

(assert (=> b!3117262 m!3406937))

(declare-fun m!3406953 () Bool)

(assert (=> b!3117262 m!3406953))

(assert (=> b!3117262 m!3406941))

(assert (=> b!3117262 m!3406953))

(assert (=> b!3117262 m!3406941))

(declare-fun m!3406955 () Bool)

(assert (=> b!3117262 m!3406955))

(declare-fun m!3406957 () Bool)

(assert (=> b!3117264 m!3406957))

(assert (=> bm!221251 m!3406947))

(assert (=> d!862231 m!3406947))

(declare-fun m!3406959 () Bool)

(assert (=> d!862231 m!3406959))

(assert (=> b!3117266 m!3406937))

(assert (=> b!3117263 m!3406937))

(assert (=> b!3117255 m!3406941))

(assert (=> b!3117255 m!3406941))

(assert (=> b!3117255 m!3406951))

(assert (=> b!3117261 m!3406941))

(assert (=> b!3117261 m!3406941))

(assert (=> b!3117261 m!3406951))

(assert (=> b!3117123 d!862231))

(declare-fun d!862233 () Bool)

(assert (=> d!862233 (= (matchR!4496 (reg!9943 r!17423) s!11993) (matchR!4496 (simplify!569 (reg!9943 r!17423)) s!11993))))

(declare-fun lt!1058486 () Unit!49667)

(declare-fun choose!18437 (Regex!9614 List!35479) Unit!49667)

(assert (=> d!862233 (= lt!1058486 (choose!18437 (reg!9943 r!17423) s!11993))))

(assert (=> d!862233 (validRegex!4347 (reg!9943 r!17423))))

(assert (=> d!862233 (= (lemmaSimplifySound!357 (reg!9943 r!17423) s!11993) lt!1058486)))

(declare-fun bs!535861 () Bool)

(assert (= bs!535861 d!862233))

(assert (=> bs!535861 m!3406875))

(declare-fun m!3406965 () Bool)

(assert (=> bs!535861 m!3406965))

(assert (=> bs!535861 m!3406889))

(assert (=> bs!535861 m!3406959))

(assert (=> bs!535861 m!3406889))

(declare-fun m!3406967 () Bool)

(assert (=> bs!535861 m!3406967))

(assert (=> b!3117123 d!862233))

(declare-fun b!3117268 () Bool)

(declare-fun e!1946754 () Bool)

(declare-fun e!1946758 () Bool)

(assert (=> b!3117268 (= e!1946754 e!1946758)))

(declare-fun res!1275877 () Bool)

(assert (=> b!3117268 (=> res!1275877 e!1946758)))

(declare-fun call!221257 () Bool)

(assert (=> b!3117268 (= res!1275877 call!221257)))

(declare-fun b!3117269 () Bool)

(declare-fun res!1275880 () Bool)

(declare-fun e!1946760 () Bool)

(assert (=> b!3117269 (=> (not res!1275880) (not e!1946760))))

(assert (=> b!3117269 (= res!1275880 (isEmpty!19698 (tail!5132 s!11993)))))

(declare-fun b!3117270 () Bool)

(declare-fun e!1946759 () Bool)

(declare-fun lt!1058487 () Bool)

(assert (=> b!3117270 (= e!1946759 (= lt!1058487 call!221257))))

(declare-fun b!3117271 () Bool)

(declare-fun res!1275873 () Bool)

(declare-fun e!1946757 () Bool)

(assert (=> b!3117271 (=> res!1275873 e!1946757)))

(assert (=> b!3117271 (= res!1275873 (not (is-ElementMatch!9614 (simplify!569 r!17423))))))

(declare-fun e!1946756 () Bool)

(assert (=> b!3117271 (= e!1946756 e!1946757)))

(declare-fun d!862239 () Bool)

(assert (=> d!862239 e!1946759))

(declare-fun c!522219 () Bool)

(assert (=> d!862239 (= c!522219 (is-EmptyExpr!9614 (simplify!569 r!17423)))))

(declare-fun e!1946755 () Bool)

(assert (=> d!862239 (= lt!1058487 e!1946755)))

(declare-fun c!522218 () Bool)

(assert (=> d!862239 (= c!522218 (isEmpty!19698 s!11993))))

(assert (=> d!862239 (validRegex!4347 (simplify!569 r!17423))))

(assert (=> d!862239 (= (matchR!4496 (simplify!569 r!17423) s!11993) lt!1058487)))

(declare-fun b!3117272 () Bool)

(assert (=> b!3117272 (= e!1946757 e!1946754)))

(declare-fun res!1275879 () Bool)

(assert (=> b!3117272 (=> (not res!1275879) (not e!1946754))))

(assert (=> b!3117272 (= res!1275879 (not lt!1058487))))

(declare-fun b!3117273 () Bool)

(assert (=> b!3117273 (= e!1946756 (not lt!1058487))))

(declare-fun b!3117274 () Bool)

(declare-fun res!1275876 () Bool)

(assert (=> b!3117274 (=> (not res!1275876) (not e!1946760))))

(assert (=> b!3117274 (= res!1275876 (not call!221257))))

(declare-fun b!3117275 () Bool)

(declare-fun res!1275875 () Bool)

(assert (=> b!3117275 (=> res!1275875 e!1946758)))

(assert (=> b!3117275 (= res!1275875 (not (isEmpty!19698 (tail!5132 s!11993))))))

(declare-fun bm!221252 () Bool)

(assert (=> bm!221252 (= call!221257 (isEmpty!19698 s!11993))))

(declare-fun b!3117276 () Bool)

(assert (=> b!3117276 (= e!1946755 (matchR!4496 (derivativeStep!2847 (simplify!569 r!17423) (head!6906 s!11993)) (tail!5132 s!11993)))))

(declare-fun b!3117277 () Bool)

(assert (=> b!3117277 (= e!1946760 (= (head!6906 s!11993) (c!522192 (simplify!569 r!17423))))))

(declare-fun b!3117278 () Bool)

(assert (=> b!3117278 (= e!1946755 (nullable!3252 (simplify!569 r!17423)))))

(declare-fun b!3117279 () Bool)

(declare-fun res!1275874 () Bool)

(assert (=> b!3117279 (=> res!1275874 e!1946757)))

(assert (=> b!3117279 (= res!1275874 e!1946760)))

(declare-fun res!1275878 () Bool)

(assert (=> b!3117279 (=> (not res!1275878) (not e!1946760))))

(assert (=> b!3117279 (= res!1275878 lt!1058487)))

(declare-fun b!3117280 () Bool)

(assert (=> b!3117280 (= e!1946758 (not (= (head!6906 s!11993) (c!522192 (simplify!569 r!17423)))))))

(declare-fun b!3117281 () Bool)

(assert (=> b!3117281 (= e!1946759 e!1946756)))

(declare-fun c!522220 () Bool)

(assert (=> b!3117281 (= c!522220 (is-EmptyLang!9614 (simplify!569 r!17423)))))

(assert (= (and d!862239 c!522218) b!3117278))

(assert (= (and d!862239 (not c!522218)) b!3117276))

(assert (= (and d!862239 c!522219) b!3117270))

(assert (= (and d!862239 (not c!522219)) b!3117281))

(assert (= (and b!3117281 c!522220) b!3117273))

(assert (= (and b!3117281 (not c!522220)) b!3117271))

(assert (= (and b!3117271 (not res!1275873)) b!3117279))

(assert (= (and b!3117279 res!1275878) b!3117274))

(assert (= (and b!3117274 res!1275876) b!3117269))

(assert (= (and b!3117269 res!1275880) b!3117277))

(assert (= (and b!3117279 (not res!1275874)) b!3117272))

(assert (= (and b!3117272 res!1275879) b!3117268))

(assert (= (and b!3117268 (not res!1275877)) b!3117275))

(assert (= (and b!3117275 (not res!1275875)) b!3117280))

(assert (= (or b!3117270 b!3117268 b!3117274) bm!221252))

(assert (=> b!3117276 m!3406937))

(assert (=> b!3117276 m!3406869))

(assert (=> b!3117276 m!3406937))

(declare-fun m!3406969 () Bool)

(assert (=> b!3117276 m!3406969))

(assert (=> b!3117276 m!3406941))

(assert (=> b!3117276 m!3406969))

(assert (=> b!3117276 m!3406941))

(declare-fun m!3406971 () Bool)

(assert (=> b!3117276 m!3406971))

(assert (=> b!3117278 m!3406869))

(declare-fun m!3406973 () Bool)

(assert (=> b!3117278 m!3406973))

(assert (=> bm!221252 m!3406947))

(assert (=> d!862239 m!3406947))

(assert (=> d!862239 m!3406869))

(declare-fun m!3406975 () Bool)

(assert (=> d!862239 m!3406975))

(assert (=> b!3117280 m!3406937))

(assert (=> b!3117277 m!3406937))

(assert (=> b!3117269 m!3406941))

(assert (=> b!3117269 m!3406941))

(assert (=> b!3117269 m!3406951))

(assert (=> b!3117275 m!3406941))

(assert (=> b!3117275 m!3406941))

(assert (=> b!3117275 m!3406951))

(assert (=> b!3117128 d!862239))

(declare-fun bm!221294 () Bool)

(declare-fun call!221301 () Bool)

(declare-fun call!221304 () Bool)

(assert (=> bm!221294 (= call!221301 call!221304)))

(declare-fun b!3117425 () Bool)

(declare-fun e!1946856 () Bool)

(declare-fun lt!1058522 () Regex!9614)

(assert (=> b!3117425 (= e!1946856 (= (nullable!3252 lt!1058522) (nullable!3252 r!17423)))))

(declare-fun lt!1058523 () Regex!9614)

(declare-fun bm!221295 () Bool)

(declare-fun lt!1058520 () Regex!9614)

(declare-fun c!522288 () Bool)

(declare-fun call!221305 () Bool)

(declare-fun isEmptyExpr!663 (Regex!9614) Bool)

(assert (=> bm!221295 (= call!221305 (isEmptyExpr!663 (ite c!522288 lt!1058520 lt!1058523)))))

(declare-fun b!3117426 () Bool)

(declare-fun c!522281 () Bool)

(assert (=> b!3117426 (= c!522281 (is-EmptyExpr!9614 r!17423))))

(declare-fun e!1946850 () Regex!9614)

(declare-fun e!1946854 () Regex!9614)

(assert (=> b!3117426 (= e!1946850 e!1946854)))

(declare-fun b!3117427 () Bool)

(declare-fun e!1946857 () Regex!9614)

(declare-fun lt!1058521 () Regex!9614)

(declare-fun lt!1058518 () Regex!9614)

(assert (=> b!3117427 (= e!1946857 (Union!9614 lt!1058521 lt!1058518))))

(declare-fun b!3117428 () Bool)

(declare-fun e!1946849 () Regex!9614)

(declare-fun lt!1058519 () Regex!9614)

(assert (=> b!3117428 (= e!1946849 (Concat!14935 lt!1058523 lt!1058519))))

(declare-fun b!3117429 () Bool)

(assert (=> b!3117429 (= e!1946850 r!17423)))

(declare-fun b!3117430 () Bool)

(assert (=> b!3117430 (= e!1946854 EmptyExpr!9614)))

(declare-fun c!522282 () Bool)

(declare-fun bm!221297 () Bool)

(declare-fun call!221299 () Bool)

(assert (=> bm!221297 (= call!221299 (isEmptyLang!665 (ite c!522282 lt!1058518 lt!1058519)))))

(declare-fun b!3117431 () Bool)

(declare-fun e!1946853 () Bool)

(assert (=> b!3117431 (= e!1946853 call!221299)))

(declare-fun b!3117432 () Bool)

(declare-fun e!1946847 () Regex!9614)

(assert (=> b!3117432 (= e!1946854 e!1946847)))

(assert (=> b!3117432 (= c!522288 (is-Star!9614 r!17423))))

(declare-fun call!221302 () Regex!9614)

(declare-fun bm!221298 () Bool)

(assert (=> bm!221298 (= call!221302 (simplify!569 (ite c!522288 (reg!9943 r!17423) (ite c!522282 (regOne!19741 r!17423) (regTwo!19740 r!17423)))))))

(declare-fun b!3117433 () Bool)

(assert (=> b!3117433 (= c!522282 (is-Union!9614 r!17423))))

(declare-fun e!1946852 () Regex!9614)

(assert (=> b!3117433 (= e!1946847 e!1946852)))

(declare-fun d!862241 () Bool)

(assert (=> d!862241 e!1946856))

(declare-fun res!1275906 () Bool)

(assert (=> d!862241 (=> (not res!1275906) (not e!1946856))))

(assert (=> d!862241 (= res!1275906 (validRegex!4347 lt!1058522))))

(declare-fun e!1946851 () Regex!9614)

(assert (=> d!862241 (= lt!1058522 e!1946851)))

(declare-fun c!522287 () Bool)

(assert (=> d!862241 (= c!522287 (is-EmptyLang!9614 r!17423))))

(assert (=> d!862241 (validRegex!4347 r!17423)))

(assert (=> d!862241 (= (simplify!569 r!17423) lt!1058522)))

(declare-fun bm!221296 () Bool)

(declare-fun call!221303 () Regex!9614)

(assert (=> bm!221296 (= call!221303 call!221302)))

(declare-fun b!3117434 () Bool)

(declare-fun e!1946858 () Regex!9614)

(assert (=> b!3117434 (= e!1946858 lt!1058518)))

(declare-fun b!3117435 () Bool)

(assert (=> b!3117435 (= e!1946849 lt!1058523)))

(declare-fun b!3117436 () Bool)

(declare-fun c!522286 () Bool)

(assert (=> b!3117436 (= c!522286 call!221299)))

(assert (=> b!3117436 (= e!1946858 e!1946857)))

(declare-fun b!3117437 () Bool)

(declare-fun e!1946848 () Regex!9614)

(assert (=> b!3117437 (= e!1946848 (Star!9614 lt!1058520))))

(declare-fun b!3117438 () Bool)

(declare-fun e!1946845 () Regex!9614)

(assert (=> b!3117438 (= e!1946845 e!1946849)))

(declare-fun c!522285 () Bool)

(assert (=> b!3117438 (= c!522285 (isEmptyExpr!663 lt!1058519))))

(declare-fun b!3117439 () Bool)

(assert (=> b!3117439 (= e!1946845 lt!1058519)))

(declare-fun b!3117440 () Bool)

(declare-fun e!1946846 () Bool)

(assert (=> b!3117440 (= e!1946846 call!221305)))

(declare-fun bm!221299 () Bool)

(assert (=> bm!221299 (= call!221304 (isEmptyLang!665 (ite c!522288 lt!1058520 (ite c!522282 lt!1058521 lt!1058523))))))

(declare-fun b!3117441 () Bool)

(assert (=> b!3117441 (= e!1946857 lt!1058521)))

(declare-fun b!3117442 () Bool)

(declare-fun c!522280 () Bool)

(assert (=> b!3117442 (= c!522280 e!1946846)))

(declare-fun res!1275908 () Bool)

(assert (=> b!3117442 (=> res!1275908 e!1946846)))

(assert (=> b!3117442 (= res!1275908 call!221304)))

(assert (=> b!3117442 (= lt!1058520 call!221302)))

(assert (=> b!3117442 (= e!1946847 e!1946848)))

(declare-fun b!3117443 () Bool)

(declare-fun e!1946855 () Regex!9614)

(assert (=> b!3117443 (= e!1946855 EmptyLang!9614)))

(declare-fun bm!221300 () Bool)

(declare-fun call!221300 () Regex!9614)

(assert (=> bm!221300 (= call!221300 (simplify!569 (ite c!522282 (regTwo!19741 r!17423) (regOne!19740 r!17423))))))

(declare-fun b!3117444 () Bool)

(assert (=> b!3117444 (= e!1946852 e!1946858)))

(assert (=> b!3117444 (= lt!1058521 call!221303)))

(assert (=> b!3117444 (= lt!1058518 call!221300)))

(declare-fun c!522289 () Bool)

(assert (=> b!3117444 (= c!522289 call!221301)))

(declare-fun b!3117445 () Bool)

(declare-fun c!522284 () Bool)

(assert (=> b!3117445 (= c!522284 call!221305)))

(assert (=> b!3117445 (= e!1946855 e!1946845)))

(declare-fun b!3117446 () Bool)

(assert (=> b!3117446 (= e!1946851 EmptyLang!9614)))

(declare-fun b!3117447 () Bool)

(assert (=> b!3117447 (= e!1946851 e!1946850)))

(declare-fun c!522290 () Bool)

(assert (=> b!3117447 (= c!522290 (is-ElementMatch!9614 r!17423))))

(declare-fun b!3117448 () Bool)

(assert (=> b!3117448 (= e!1946848 EmptyExpr!9614)))

(declare-fun b!3117449 () Bool)

(assert (=> b!3117449 (= e!1946852 e!1946855)))

(assert (=> b!3117449 (= lt!1058523 call!221300)))

(assert (=> b!3117449 (= lt!1058519 call!221303)))

(declare-fun res!1275907 () Bool)

(assert (=> b!3117449 (= res!1275907 call!221301)))

(assert (=> b!3117449 (=> res!1275907 e!1946853)))

(declare-fun c!522283 () Bool)

(assert (=> b!3117449 (= c!522283 e!1946853)))

(assert (= (and d!862241 c!522287) b!3117446))

(assert (= (and d!862241 (not c!522287)) b!3117447))

(assert (= (and b!3117447 c!522290) b!3117429))

(assert (= (and b!3117447 (not c!522290)) b!3117426))

(assert (= (and b!3117426 c!522281) b!3117430))

(assert (= (and b!3117426 (not c!522281)) b!3117432))

(assert (= (and b!3117432 c!522288) b!3117442))

(assert (= (and b!3117432 (not c!522288)) b!3117433))

(assert (= (and b!3117442 (not res!1275908)) b!3117440))

(assert (= (and b!3117442 c!522280) b!3117448))

(assert (= (and b!3117442 (not c!522280)) b!3117437))

(assert (= (and b!3117433 c!522282) b!3117444))

(assert (= (and b!3117433 (not c!522282)) b!3117449))

(assert (= (and b!3117444 c!522289) b!3117434))

(assert (= (and b!3117444 (not c!522289)) b!3117436))

(assert (= (and b!3117436 c!522286) b!3117441))

(assert (= (and b!3117436 (not c!522286)) b!3117427))

(assert (= (and b!3117449 (not res!1275907)) b!3117431))

(assert (= (and b!3117449 c!522283) b!3117443))

(assert (= (and b!3117449 (not c!522283)) b!3117445))

(assert (= (and b!3117445 c!522284) b!3117439))

(assert (= (and b!3117445 (not c!522284)) b!3117438))

(assert (= (and b!3117438 c!522285) b!3117435))

(assert (= (and b!3117438 (not c!522285)) b!3117428))

(assert (= (or b!3117444 b!3117449) bm!221296))

(assert (= (or b!3117444 b!3117449) bm!221300))

(assert (= (or b!3117436 b!3117431) bm!221297))

(assert (= (or b!3117444 b!3117449) bm!221294))

(assert (= (or b!3117440 b!3117445) bm!221295))

(assert (= (or b!3117442 bm!221296) bm!221298))

(assert (= (or b!3117442 bm!221294) bm!221299))

(assert (= (and d!862241 res!1275906) b!3117425))

(declare-fun m!3406993 () Bool)

(assert (=> d!862241 m!3406993))

(assert (=> d!862241 m!3406879))

(declare-fun m!3406995 () Bool)

(assert (=> bm!221300 m!3406995))

(declare-fun m!3406997 () Bool)

(assert (=> b!3117438 m!3406997))

(declare-fun m!3406999 () Bool)

(assert (=> bm!221299 m!3406999))

(declare-fun m!3407001 () Bool)

(assert (=> bm!221295 m!3407001))

(declare-fun m!3407003 () Bool)

(assert (=> bm!221298 m!3407003))

(declare-fun m!3407005 () Bool)

(assert (=> bm!221297 m!3407005))

(declare-fun m!3407007 () Bool)

(assert (=> b!3117425 m!3407007))

(declare-fun m!3407009 () Bool)

(assert (=> b!3117425 m!3407009))

(assert (=> b!3117128 d!862241))

(declare-fun b!3117519 () Bool)

(assert (=> b!3117519 true))

(assert (=> b!3117519 true))

(declare-fun bs!535862 () Bool)

(declare-fun b!3117522 () Bool)

(assert (= bs!535862 (and b!3117522 b!3117519)))

(declare-fun lambda!115162 () Int)

(declare-fun lambda!115161 () Int)

(assert (=> bs!535862 (not (= lambda!115162 lambda!115161))))

(assert (=> b!3117522 true))

(assert (=> b!3117522 true))

(declare-fun bm!221308 () Bool)

(declare-fun c!522312 () Bool)

(declare-fun call!221314 () Bool)

(declare-fun Exists!1868 (Int) Bool)

(assert (=> bm!221308 (= call!221314 (Exists!1868 (ite c!522312 lambda!115161 lambda!115162)))))

(declare-fun b!3117513 () Bool)

(declare-fun e!1946902 () Bool)

(assert (=> b!3117513 (= e!1946902 (matchRSpec!1751 (regTwo!19741 r!17423) s!11993))))

(declare-fun b!3117514 () Bool)

(declare-fun e!1946904 () Bool)

(declare-fun e!1946900 () Bool)

(assert (=> b!3117514 (= e!1946904 e!1946900)))

(assert (=> b!3117514 (= c!522312 (is-Star!9614 r!17423))))

(declare-fun bm!221309 () Bool)

(declare-fun call!221313 () Bool)

(assert (=> bm!221309 (= call!221313 (isEmpty!19698 s!11993))))

(declare-fun b!3117515 () Bool)

(declare-fun c!522311 () Bool)

(assert (=> b!3117515 (= c!522311 (is-Union!9614 r!17423))))

(declare-fun e!1946903 () Bool)

(assert (=> b!3117515 (= e!1946903 e!1946904)))

(declare-fun b!3117516 () Bool)

(declare-fun c!522310 () Bool)

(assert (=> b!3117516 (= c!522310 (is-ElementMatch!9614 r!17423))))

(declare-fun e!1946901 () Bool)

(assert (=> b!3117516 (= e!1946901 e!1946903)))

(declare-fun b!3117517 () Bool)

(declare-fun e!1946898 () Bool)

(assert (=> b!3117517 (= e!1946898 call!221313)))

(declare-fun b!3117518 () Bool)

(assert (=> b!3117518 (= e!1946904 e!1946902)))

(declare-fun res!1275936 () Bool)

(assert (=> b!3117518 (= res!1275936 (matchRSpec!1751 (regOne!19741 r!17423) s!11993))))

(assert (=> b!3117518 (=> res!1275936 e!1946902)))

(declare-fun e!1946899 () Bool)

(assert (=> b!3117519 (= e!1946899 call!221314)))

(declare-fun d!862245 () Bool)

(declare-fun c!522309 () Bool)

(assert (=> d!862245 (= c!522309 (is-EmptyExpr!9614 r!17423))))

(assert (=> d!862245 (= (matchRSpec!1751 r!17423 s!11993) e!1946898)))

(declare-fun b!3117520 () Bool)

(assert (=> b!3117520 (= e!1946898 e!1946901)))

(declare-fun res!1275937 () Bool)

(assert (=> b!3117520 (= res!1275937 (not (is-EmptyLang!9614 r!17423)))))

(assert (=> b!3117520 (=> (not res!1275937) (not e!1946901))))

(declare-fun b!3117521 () Bool)

(assert (=> b!3117521 (= e!1946903 (= s!11993 (Cons!35355 (c!522192 r!17423) Nil!35355)))))

(assert (=> b!3117522 (= e!1946900 call!221314)))

(declare-fun b!3117523 () Bool)

(declare-fun res!1275938 () Bool)

(assert (=> b!3117523 (=> res!1275938 e!1946899)))

(assert (=> b!3117523 (= res!1275938 call!221313)))

(assert (=> b!3117523 (= e!1946900 e!1946899)))

(assert (= (and d!862245 c!522309) b!3117517))

(assert (= (and d!862245 (not c!522309)) b!3117520))

(assert (= (and b!3117520 res!1275937) b!3117516))

(assert (= (and b!3117516 c!522310) b!3117521))

(assert (= (and b!3117516 (not c!522310)) b!3117515))

(assert (= (and b!3117515 c!522311) b!3117518))

(assert (= (and b!3117515 (not c!522311)) b!3117514))

(assert (= (and b!3117518 (not res!1275936)) b!3117513))

(assert (= (and b!3117514 c!522312) b!3117523))

(assert (= (and b!3117514 (not c!522312)) b!3117522))

(assert (= (and b!3117523 (not res!1275938)) b!3117519))

(assert (= (or b!3117519 b!3117522) bm!221308))

(assert (= (or b!3117517 b!3117523) bm!221309))

(declare-fun m!3407015 () Bool)

(assert (=> bm!221308 m!3407015))

(declare-fun m!3407017 () Bool)

(assert (=> b!3117513 m!3407017))

(assert (=> bm!221309 m!3406947))

(declare-fun m!3407019 () Bool)

(assert (=> b!3117518 m!3407019))

(assert (=> b!3117127 d!862245))

(declare-fun b!3117528 () Bool)

(declare-fun e!1946905 () Bool)

(declare-fun e!1946909 () Bool)

(assert (=> b!3117528 (= e!1946905 e!1946909)))

(declare-fun res!1275943 () Bool)

(assert (=> b!3117528 (=> res!1275943 e!1946909)))

(declare-fun call!221315 () Bool)

(assert (=> b!3117528 (= res!1275943 call!221315)))

(declare-fun b!3117529 () Bool)

(declare-fun res!1275946 () Bool)

(declare-fun e!1946911 () Bool)

(assert (=> b!3117529 (=> (not res!1275946) (not e!1946911))))

(assert (=> b!3117529 (= res!1275946 (isEmpty!19698 (tail!5132 s!11993)))))

(declare-fun b!3117530 () Bool)

(declare-fun e!1946910 () Bool)

(declare-fun lt!1058524 () Bool)

(assert (=> b!3117530 (= e!1946910 (= lt!1058524 call!221315))))

(declare-fun b!3117531 () Bool)

(declare-fun res!1275939 () Bool)

(declare-fun e!1946908 () Bool)

(assert (=> b!3117531 (=> res!1275939 e!1946908)))

(assert (=> b!3117531 (= res!1275939 (not (is-ElementMatch!9614 r!17423)))))

(declare-fun e!1946907 () Bool)

(assert (=> b!3117531 (= e!1946907 e!1946908)))

(declare-fun d!862249 () Bool)

(assert (=> d!862249 e!1946910))

(declare-fun c!522314 () Bool)

(assert (=> d!862249 (= c!522314 (is-EmptyExpr!9614 r!17423))))

(declare-fun e!1946906 () Bool)

(assert (=> d!862249 (= lt!1058524 e!1946906)))

(declare-fun c!522313 () Bool)

(assert (=> d!862249 (= c!522313 (isEmpty!19698 s!11993))))

(assert (=> d!862249 (validRegex!4347 r!17423)))

(assert (=> d!862249 (= (matchR!4496 r!17423 s!11993) lt!1058524)))

(declare-fun b!3117532 () Bool)

(assert (=> b!3117532 (= e!1946908 e!1946905)))

(declare-fun res!1275945 () Bool)

(assert (=> b!3117532 (=> (not res!1275945) (not e!1946905))))

(assert (=> b!3117532 (= res!1275945 (not lt!1058524))))

(declare-fun b!3117533 () Bool)

(assert (=> b!3117533 (= e!1946907 (not lt!1058524))))

(declare-fun b!3117534 () Bool)

(declare-fun res!1275942 () Bool)

(assert (=> b!3117534 (=> (not res!1275942) (not e!1946911))))

(assert (=> b!3117534 (= res!1275942 (not call!221315))))

(declare-fun b!3117535 () Bool)

(declare-fun res!1275941 () Bool)

(assert (=> b!3117535 (=> res!1275941 e!1946909)))

(assert (=> b!3117535 (= res!1275941 (not (isEmpty!19698 (tail!5132 s!11993))))))

(declare-fun bm!221310 () Bool)

(assert (=> bm!221310 (= call!221315 (isEmpty!19698 s!11993))))

(declare-fun b!3117536 () Bool)

(assert (=> b!3117536 (= e!1946906 (matchR!4496 (derivativeStep!2847 r!17423 (head!6906 s!11993)) (tail!5132 s!11993)))))

(declare-fun b!3117537 () Bool)

(assert (=> b!3117537 (= e!1946911 (= (head!6906 s!11993) (c!522192 r!17423)))))

(declare-fun b!3117538 () Bool)

(assert (=> b!3117538 (= e!1946906 (nullable!3252 r!17423))))

(declare-fun b!3117539 () Bool)

(declare-fun res!1275940 () Bool)

(assert (=> b!3117539 (=> res!1275940 e!1946908)))

(assert (=> b!3117539 (= res!1275940 e!1946911)))

(declare-fun res!1275944 () Bool)

(assert (=> b!3117539 (=> (not res!1275944) (not e!1946911))))

(assert (=> b!3117539 (= res!1275944 lt!1058524)))

(declare-fun b!3117540 () Bool)

(assert (=> b!3117540 (= e!1946909 (not (= (head!6906 s!11993) (c!522192 r!17423))))))

(declare-fun b!3117541 () Bool)

(assert (=> b!3117541 (= e!1946910 e!1946907)))

(declare-fun c!522315 () Bool)

(assert (=> b!3117541 (= c!522315 (is-EmptyLang!9614 r!17423))))

(assert (= (and d!862249 c!522313) b!3117538))

(assert (= (and d!862249 (not c!522313)) b!3117536))

(assert (= (and d!862249 c!522314) b!3117530))

(assert (= (and d!862249 (not c!522314)) b!3117541))

(assert (= (and b!3117541 c!522315) b!3117533))

(assert (= (and b!3117541 (not c!522315)) b!3117531))

(assert (= (and b!3117531 (not res!1275939)) b!3117539))

(assert (= (and b!3117539 res!1275944) b!3117534))

(assert (= (and b!3117534 res!1275942) b!3117529))

(assert (= (and b!3117529 res!1275946) b!3117537))

(assert (= (and b!3117539 (not res!1275940)) b!3117532))

(assert (= (and b!3117532 res!1275945) b!3117528))

(assert (= (and b!3117528 (not res!1275943)) b!3117535))

(assert (= (and b!3117535 (not res!1275941)) b!3117540))

(assert (= (or b!3117530 b!3117528 b!3117534) bm!221310))

(assert (=> b!3117536 m!3406937))

(assert (=> b!3117536 m!3406937))

(declare-fun m!3407021 () Bool)

(assert (=> b!3117536 m!3407021))

(assert (=> b!3117536 m!3406941))

(assert (=> b!3117536 m!3407021))

(assert (=> b!3117536 m!3406941))

(declare-fun m!3407023 () Bool)

(assert (=> b!3117536 m!3407023))

(assert (=> b!3117538 m!3407009))

(assert (=> bm!221310 m!3406947))

(assert (=> d!862249 m!3406947))

(assert (=> d!862249 m!3406879))

(assert (=> b!3117540 m!3406937))

(assert (=> b!3117537 m!3406937))

(assert (=> b!3117529 m!3406941))

(assert (=> b!3117529 m!3406941))

(assert (=> b!3117529 m!3406951))

(assert (=> b!3117535 m!3406941))

(assert (=> b!3117535 m!3406941))

(assert (=> b!3117535 m!3406951))

(assert (=> b!3117127 d!862249))

(declare-fun d!862251 () Bool)

(assert (=> d!862251 (= (matchR!4496 r!17423 s!11993) (matchRSpec!1751 r!17423 s!11993))))

(declare-fun lt!1058527 () Unit!49667)

(declare-fun choose!18439 (Regex!9614 List!35479) Unit!49667)

(assert (=> d!862251 (= lt!1058527 (choose!18439 r!17423 s!11993))))

(assert (=> d!862251 (validRegex!4347 r!17423)))

(assert (=> d!862251 (= (mainMatchTheorem!1751 r!17423 s!11993) lt!1058527)))

(declare-fun bs!535863 () Bool)

(assert (= bs!535863 d!862251))

(assert (=> bs!535863 m!3406883))

(assert (=> bs!535863 m!3406881))

(declare-fun m!3407025 () Bool)

(assert (=> bs!535863 m!3407025))

(assert (=> bs!535863 m!3406879))

(assert (=> b!3117127 d!862251))

(declare-fun c!522320 () Bool)

(declare-fun call!221322 () Bool)

(declare-fun bm!221317 () Bool)

(declare-fun c!522321 () Bool)

(assert (=> bm!221317 (= call!221322 (validRegex!4347 (ite c!522320 (reg!9943 r!17423) (ite c!522321 (regOne!19741 r!17423) (regTwo!19740 r!17423)))))))

(declare-fun bm!221318 () Bool)

(declare-fun call!221324 () Bool)

(assert (=> bm!221318 (= call!221324 (validRegex!4347 (ite c!522321 (regTwo!19741 r!17423) (regOne!19740 r!17423))))))

(declare-fun b!3117566 () Bool)

(declare-fun res!1275965 () Bool)

(declare-fun e!1946930 () Bool)

(assert (=> b!3117566 (=> res!1275965 e!1946930)))

(assert (=> b!3117566 (= res!1275965 (not (is-Concat!14935 r!17423)))))

(declare-fun e!1946928 () Bool)

(assert (=> b!3117566 (= e!1946928 e!1946930)))

(declare-fun b!3117567 () Bool)

(declare-fun res!1275964 () Bool)

(declare-fun e!1946929 () Bool)

(assert (=> b!3117567 (=> (not res!1275964) (not e!1946929))))

(declare-fun call!221323 () Bool)

(assert (=> b!3117567 (= res!1275964 call!221323)))

(assert (=> b!3117567 (= e!1946928 e!1946929)))

(declare-fun d!862253 () Bool)

(declare-fun res!1275963 () Bool)

(declare-fun e!1946932 () Bool)

(assert (=> d!862253 (=> res!1275963 e!1946932)))

(assert (=> d!862253 (= res!1275963 (is-ElementMatch!9614 r!17423))))

(assert (=> d!862253 (= (validRegex!4347 r!17423) e!1946932)))

(declare-fun b!3117568 () Bool)

(declare-fun e!1946931 () Bool)

(assert (=> b!3117568 (= e!1946930 e!1946931)))

(declare-fun res!1275966 () Bool)

(assert (=> b!3117568 (=> (not res!1275966) (not e!1946931))))

(assert (=> b!3117568 (= res!1275966 call!221324)))

(declare-fun b!3117569 () Bool)

(declare-fun e!1946933 () Bool)

(assert (=> b!3117569 (= e!1946932 e!1946933)))

(assert (=> b!3117569 (= c!522320 (is-Star!9614 r!17423))))

(declare-fun b!3117570 () Bool)

(assert (=> b!3117570 (= e!1946933 e!1946928)))

(assert (=> b!3117570 (= c!522321 (is-Union!9614 r!17423))))

(declare-fun b!3117571 () Bool)

(assert (=> b!3117571 (= e!1946929 call!221324)))

(declare-fun b!3117572 () Bool)

(declare-fun e!1946934 () Bool)

(assert (=> b!3117572 (= e!1946934 call!221322)))

(declare-fun b!3117573 () Bool)

(assert (=> b!3117573 (= e!1946933 e!1946934)))

(declare-fun res!1275967 () Bool)

(assert (=> b!3117573 (= res!1275967 (not (nullable!3252 (reg!9943 r!17423))))))

(assert (=> b!3117573 (=> (not res!1275967) (not e!1946934))))

(declare-fun b!3117574 () Bool)

(assert (=> b!3117574 (= e!1946931 call!221323)))

(declare-fun bm!221319 () Bool)

(assert (=> bm!221319 (= call!221323 call!221322)))

(assert (= (and d!862253 (not res!1275963)) b!3117569))

(assert (= (and b!3117569 c!522320) b!3117573))

(assert (= (and b!3117569 (not c!522320)) b!3117570))

(assert (= (and b!3117573 res!1275967) b!3117572))

(assert (= (and b!3117570 c!522321) b!3117567))

(assert (= (and b!3117570 (not c!522321)) b!3117566))

(assert (= (and b!3117567 res!1275964) b!3117571))

(assert (= (and b!3117566 (not res!1275965)) b!3117568))

(assert (= (and b!3117568 res!1275966) b!3117574))

(assert (= (or b!3117567 b!3117574) bm!221319))

(assert (= (or b!3117571 b!3117568) bm!221318))

(assert (= (or b!3117572 bm!221319) bm!221317))

(declare-fun m!3407027 () Bool)

(assert (=> bm!221317 m!3407027))

(declare-fun m!3407029 () Bool)

(assert (=> bm!221318 m!3407029))

(assert (=> b!3117573 m!3406957))

(assert (=> start!295038 d!862253))

(declare-fun d!862255 () Bool)

(assert (=> d!862255 (= (isEmptyLang!665 lt!1058456) (is-EmptyLang!9614 lt!1058456))))

(assert (=> b!3117120 d!862255))

(declare-fun bm!221320 () Bool)

(declare-fun call!221327 () Bool)

(declare-fun call!221330 () Bool)

(assert (=> bm!221320 (= call!221327 call!221330)))

(declare-fun b!3117579 () Bool)

(declare-fun e!1946948 () Bool)

(declare-fun lt!1058532 () Regex!9614)

(assert (=> b!3117579 (= e!1946948 (= (nullable!3252 lt!1058532) (nullable!3252 (reg!9943 r!17423))))))

(declare-fun lt!1058533 () Regex!9614)

(declare-fun bm!221321 () Bool)

(declare-fun call!221331 () Bool)

(declare-fun lt!1058530 () Regex!9614)

(declare-fun c!522330 () Bool)

(assert (=> bm!221321 (= call!221331 (isEmptyExpr!663 (ite c!522330 lt!1058530 lt!1058533)))))

(declare-fun b!3117580 () Bool)

(declare-fun c!522323 () Bool)

(assert (=> b!3117580 (= c!522323 (is-EmptyExpr!9614 (reg!9943 r!17423)))))

(declare-fun e!1946942 () Regex!9614)

(declare-fun e!1946946 () Regex!9614)

(assert (=> b!3117580 (= e!1946942 e!1946946)))

(declare-fun b!3117581 () Bool)

(declare-fun e!1946949 () Regex!9614)

(declare-fun lt!1058531 () Regex!9614)

(declare-fun lt!1058528 () Regex!9614)

(assert (=> b!3117581 (= e!1946949 (Union!9614 lt!1058531 lt!1058528))))

(declare-fun b!3117582 () Bool)

(declare-fun e!1946941 () Regex!9614)

(declare-fun lt!1058529 () Regex!9614)

(assert (=> b!3117582 (= e!1946941 (Concat!14935 lt!1058533 lt!1058529))))

(declare-fun b!3117583 () Bool)

(assert (=> b!3117583 (= e!1946942 (reg!9943 r!17423))))

(declare-fun b!3117584 () Bool)

(assert (=> b!3117584 (= e!1946946 EmptyExpr!9614)))

(declare-fun c!522324 () Bool)

(declare-fun call!221325 () Bool)

(declare-fun bm!221323 () Bool)

(assert (=> bm!221323 (= call!221325 (isEmptyLang!665 (ite c!522324 lt!1058528 lt!1058529)))))

(declare-fun b!3117585 () Bool)

(declare-fun e!1946945 () Bool)

(assert (=> b!3117585 (= e!1946945 call!221325)))

(declare-fun b!3117586 () Bool)

(declare-fun e!1946939 () Regex!9614)

(assert (=> b!3117586 (= e!1946946 e!1946939)))

(assert (=> b!3117586 (= c!522330 (is-Star!9614 (reg!9943 r!17423)))))

(declare-fun bm!221324 () Bool)

(declare-fun call!221328 () Regex!9614)

(assert (=> bm!221324 (= call!221328 (simplify!569 (ite c!522330 (reg!9943 (reg!9943 r!17423)) (ite c!522324 (regOne!19741 (reg!9943 r!17423)) (regTwo!19740 (reg!9943 r!17423))))))))

(declare-fun b!3117587 () Bool)

(assert (=> b!3117587 (= c!522324 (is-Union!9614 (reg!9943 r!17423)))))

(declare-fun e!1946944 () Regex!9614)

(assert (=> b!3117587 (= e!1946939 e!1946944)))

(declare-fun d!862257 () Bool)

(assert (=> d!862257 e!1946948))

(declare-fun res!1275972 () Bool)

(assert (=> d!862257 (=> (not res!1275972) (not e!1946948))))

(assert (=> d!862257 (= res!1275972 (validRegex!4347 lt!1058532))))

(declare-fun e!1946943 () Regex!9614)

(assert (=> d!862257 (= lt!1058532 e!1946943)))

(declare-fun c!522329 () Bool)

(assert (=> d!862257 (= c!522329 (is-EmptyLang!9614 (reg!9943 r!17423)))))

(assert (=> d!862257 (validRegex!4347 (reg!9943 r!17423))))

(assert (=> d!862257 (= (simplify!569 (reg!9943 r!17423)) lt!1058532)))

(declare-fun bm!221322 () Bool)

(declare-fun call!221329 () Regex!9614)

(assert (=> bm!221322 (= call!221329 call!221328)))

(declare-fun b!3117588 () Bool)

(declare-fun e!1946950 () Regex!9614)

(assert (=> b!3117588 (= e!1946950 lt!1058528)))

(declare-fun b!3117589 () Bool)

(assert (=> b!3117589 (= e!1946941 lt!1058533)))

(declare-fun b!3117590 () Bool)

(declare-fun c!522328 () Bool)

(assert (=> b!3117590 (= c!522328 call!221325)))

(assert (=> b!3117590 (= e!1946950 e!1946949)))

(declare-fun b!3117591 () Bool)

(declare-fun e!1946940 () Regex!9614)

(assert (=> b!3117591 (= e!1946940 (Star!9614 lt!1058530))))

(declare-fun b!3117592 () Bool)

(declare-fun e!1946937 () Regex!9614)

(assert (=> b!3117592 (= e!1946937 e!1946941)))

(declare-fun c!522327 () Bool)

(assert (=> b!3117592 (= c!522327 (isEmptyExpr!663 lt!1058529))))

(declare-fun b!3117593 () Bool)

(assert (=> b!3117593 (= e!1946937 lt!1058529)))

(declare-fun b!3117594 () Bool)

(declare-fun e!1946938 () Bool)

(assert (=> b!3117594 (= e!1946938 call!221331)))

(declare-fun bm!221325 () Bool)

(assert (=> bm!221325 (= call!221330 (isEmptyLang!665 (ite c!522330 lt!1058530 (ite c!522324 lt!1058531 lt!1058533))))))

(declare-fun b!3117595 () Bool)

(assert (=> b!3117595 (= e!1946949 lt!1058531)))

(declare-fun b!3117596 () Bool)

(declare-fun c!522322 () Bool)

(assert (=> b!3117596 (= c!522322 e!1946938)))

(declare-fun res!1275974 () Bool)

(assert (=> b!3117596 (=> res!1275974 e!1946938)))

(assert (=> b!3117596 (= res!1275974 call!221330)))

(assert (=> b!3117596 (= lt!1058530 call!221328)))

(assert (=> b!3117596 (= e!1946939 e!1946940)))

(declare-fun b!3117597 () Bool)

(declare-fun e!1946947 () Regex!9614)

(assert (=> b!3117597 (= e!1946947 EmptyLang!9614)))

(declare-fun bm!221326 () Bool)

(declare-fun call!221326 () Regex!9614)

(assert (=> bm!221326 (= call!221326 (simplify!569 (ite c!522324 (regTwo!19741 (reg!9943 r!17423)) (regOne!19740 (reg!9943 r!17423)))))))

(declare-fun b!3117598 () Bool)

(assert (=> b!3117598 (= e!1946944 e!1946950)))

(assert (=> b!3117598 (= lt!1058531 call!221329)))

(assert (=> b!3117598 (= lt!1058528 call!221326)))

(declare-fun c!522331 () Bool)

(assert (=> b!3117598 (= c!522331 call!221327)))

(declare-fun b!3117599 () Bool)

(declare-fun c!522326 () Bool)

(assert (=> b!3117599 (= c!522326 call!221331)))

(assert (=> b!3117599 (= e!1946947 e!1946937)))

(declare-fun b!3117600 () Bool)

(assert (=> b!3117600 (= e!1946943 EmptyLang!9614)))

(declare-fun b!3117601 () Bool)

(assert (=> b!3117601 (= e!1946943 e!1946942)))

(declare-fun c!522332 () Bool)

(assert (=> b!3117601 (= c!522332 (is-ElementMatch!9614 (reg!9943 r!17423)))))

(declare-fun b!3117602 () Bool)

(assert (=> b!3117602 (= e!1946940 EmptyExpr!9614)))

(declare-fun b!3117603 () Bool)

(assert (=> b!3117603 (= e!1946944 e!1946947)))

(assert (=> b!3117603 (= lt!1058533 call!221326)))

(assert (=> b!3117603 (= lt!1058529 call!221329)))

(declare-fun res!1275973 () Bool)

(assert (=> b!3117603 (= res!1275973 call!221327)))

(assert (=> b!3117603 (=> res!1275973 e!1946945)))

(declare-fun c!522325 () Bool)

(assert (=> b!3117603 (= c!522325 e!1946945)))

(assert (= (and d!862257 c!522329) b!3117600))

(assert (= (and d!862257 (not c!522329)) b!3117601))

(assert (= (and b!3117601 c!522332) b!3117583))

(assert (= (and b!3117601 (not c!522332)) b!3117580))

(assert (= (and b!3117580 c!522323) b!3117584))

(assert (= (and b!3117580 (not c!522323)) b!3117586))

(assert (= (and b!3117586 c!522330) b!3117596))

(assert (= (and b!3117586 (not c!522330)) b!3117587))

(assert (= (and b!3117596 (not res!1275974)) b!3117594))

(assert (= (and b!3117596 c!522322) b!3117602))

(assert (= (and b!3117596 (not c!522322)) b!3117591))

(assert (= (and b!3117587 c!522324) b!3117598))

(assert (= (and b!3117587 (not c!522324)) b!3117603))

(assert (= (and b!3117598 c!522331) b!3117588))

(assert (= (and b!3117598 (not c!522331)) b!3117590))

(assert (= (and b!3117590 c!522328) b!3117595))

(assert (= (and b!3117590 (not c!522328)) b!3117581))

(assert (= (and b!3117603 (not res!1275973)) b!3117585))

(assert (= (and b!3117603 c!522325) b!3117597))

(assert (= (and b!3117603 (not c!522325)) b!3117599))

(assert (= (and b!3117599 c!522326) b!3117593))

(assert (= (and b!3117599 (not c!522326)) b!3117592))

(assert (= (and b!3117592 c!522327) b!3117589))

(assert (= (and b!3117592 (not c!522327)) b!3117582))

(assert (= (or b!3117598 b!3117603) bm!221322))

(assert (= (or b!3117598 b!3117603) bm!221326))

(assert (= (or b!3117590 b!3117585) bm!221323))

(assert (= (or b!3117598 b!3117603) bm!221320))

(assert (= (or b!3117594 b!3117599) bm!221321))

(assert (= (or b!3117596 bm!221322) bm!221324))

(assert (= (or b!3117596 bm!221320) bm!221325))

(assert (= (and d!862257 res!1275972) b!3117579))

(declare-fun m!3407031 () Bool)

(assert (=> d!862257 m!3407031))

(assert (=> d!862257 m!3406959))

(declare-fun m!3407033 () Bool)

(assert (=> bm!221326 m!3407033))

(declare-fun m!3407035 () Bool)

(assert (=> b!3117592 m!3407035))

(declare-fun m!3407037 () Bool)

(assert (=> bm!221325 m!3407037))

(declare-fun m!3407039 () Bool)

(assert (=> bm!221321 m!3407039))

(declare-fun m!3407041 () Bool)

(assert (=> bm!221324 m!3407041))

(declare-fun m!3407043 () Bool)

(assert (=> bm!221323 m!3407043))

(declare-fun m!3407045 () Bool)

(assert (=> b!3117579 m!3407045))

(assert (=> b!3117579 m!3406957))

(assert (=> b!3117120 d!862257))

(declare-fun b!3117617 () Bool)

(declare-fun e!1946953 () Bool)

(declare-fun tp!977467 () Bool)

(declare-fun tp!977466 () Bool)

(assert (=> b!3117617 (= e!1946953 (and tp!977467 tp!977466))))

(declare-fun b!3117616 () Bool)

(declare-fun tp!977468 () Bool)

(assert (=> b!3117616 (= e!1946953 tp!977468)))

(assert (=> b!3117125 (= tp!977430 e!1946953)))

(declare-fun b!3117615 () Bool)

(declare-fun tp!977464 () Bool)

(declare-fun tp!977465 () Bool)

(assert (=> b!3117615 (= e!1946953 (and tp!977464 tp!977465))))

(declare-fun b!3117614 () Bool)

(assert (=> b!3117614 (= e!1946953 tp_is_empty!16791)))

(assert (= (and b!3117125 (is-ElementMatch!9614 (reg!9943 r!17423))) b!3117614))

(assert (= (and b!3117125 (is-Concat!14935 (reg!9943 r!17423))) b!3117615))

(assert (= (and b!3117125 (is-Star!9614 (reg!9943 r!17423))) b!3117616))

(assert (= (and b!3117125 (is-Union!9614 (reg!9943 r!17423))) b!3117617))

(declare-fun b!3117622 () Bool)

(declare-fun e!1946956 () Bool)

(declare-fun tp!977471 () Bool)

(assert (=> b!3117622 (= e!1946956 (and tp_is_empty!16791 tp!977471))))

(assert (=> b!3117122 (= tp!977432 e!1946956)))

(assert (= (and b!3117122 (is-Cons!35355 (t!234544 s!11993))) b!3117622))

(declare-fun b!3117626 () Bool)

(declare-fun e!1946957 () Bool)

(declare-fun tp!977475 () Bool)

(declare-fun tp!977474 () Bool)

(assert (=> b!3117626 (= e!1946957 (and tp!977475 tp!977474))))

(declare-fun b!3117625 () Bool)

(declare-fun tp!977476 () Bool)

(assert (=> b!3117625 (= e!1946957 tp!977476)))

(assert (=> b!3117121 (= tp!977434 e!1946957)))

(declare-fun b!3117624 () Bool)

(declare-fun tp!977472 () Bool)

(declare-fun tp!977473 () Bool)

(assert (=> b!3117624 (= e!1946957 (and tp!977472 tp!977473))))

(declare-fun b!3117623 () Bool)

(assert (=> b!3117623 (= e!1946957 tp_is_empty!16791)))

(assert (= (and b!3117121 (is-ElementMatch!9614 (regOne!19741 r!17423))) b!3117623))

(assert (= (and b!3117121 (is-Concat!14935 (regOne!19741 r!17423))) b!3117624))

(assert (= (and b!3117121 (is-Star!9614 (regOne!19741 r!17423))) b!3117625))

(assert (= (and b!3117121 (is-Union!9614 (regOne!19741 r!17423))) b!3117626))

(declare-fun b!3117630 () Bool)

(declare-fun e!1946958 () Bool)

(declare-fun tp!977480 () Bool)

(declare-fun tp!977479 () Bool)

(assert (=> b!3117630 (= e!1946958 (and tp!977480 tp!977479))))

(declare-fun b!3117629 () Bool)

(declare-fun tp!977481 () Bool)

(assert (=> b!3117629 (= e!1946958 tp!977481)))

(assert (=> b!3117121 (= tp!977435 e!1946958)))

(declare-fun b!3117628 () Bool)

(declare-fun tp!977477 () Bool)

(declare-fun tp!977478 () Bool)

(assert (=> b!3117628 (= e!1946958 (and tp!977477 tp!977478))))

(declare-fun b!3117627 () Bool)

(assert (=> b!3117627 (= e!1946958 tp_is_empty!16791)))

(assert (= (and b!3117121 (is-ElementMatch!9614 (regTwo!19741 r!17423))) b!3117627))

(assert (= (and b!3117121 (is-Concat!14935 (regTwo!19741 r!17423))) b!3117628))

(assert (= (and b!3117121 (is-Star!9614 (regTwo!19741 r!17423))) b!3117629))

(assert (= (and b!3117121 (is-Union!9614 (regTwo!19741 r!17423))) b!3117630))

(declare-fun b!3117634 () Bool)

(declare-fun e!1946959 () Bool)

(declare-fun tp!977485 () Bool)

(declare-fun tp!977484 () Bool)

(assert (=> b!3117634 (= e!1946959 (and tp!977485 tp!977484))))

(declare-fun b!3117633 () Bool)

(declare-fun tp!977486 () Bool)

(assert (=> b!3117633 (= e!1946959 tp!977486)))

(assert (=> b!3117126 (= tp!977431 e!1946959)))

(declare-fun b!3117632 () Bool)

(declare-fun tp!977482 () Bool)

(declare-fun tp!977483 () Bool)

(assert (=> b!3117632 (= e!1946959 (and tp!977482 tp!977483))))

(declare-fun b!3117631 () Bool)

(assert (=> b!3117631 (= e!1946959 tp_is_empty!16791)))

(assert (= (and b!3117126 (is-ElementMatch!9614 (regOne!19740 r!17423))) b!3117631))

(assert (= (and b!3117126 (is-Concat!14935 (regOne!19740 r!17423))) b!3117632))

(assert (= (and b!3117126 (is-Star!9614 (regOne!19740 r!17423))) b!3117633))

(assert (= (and b!3117126 (is-Union!9614 (regOne!19740 r!17423))) b!3117634))

(declare-fun b!3117638 () Bool)

(declare-fun e!1946960 () Bool)

(declare-fun tp!977490 () Bool)

(declare-fun tp!977489 () Bool)

(assert (=> b!3117638 (= e!1946960 (and tp!977490 tp!977489))))

(declare-fun b!3117637 () Bool)

(declare-fun tp!977491 () Bool)

(assert (=> b!3117637 (= e!1946960 tp!977491)))

(assert (=> b!3117126 (= tp!977433 e!1946960)))

(declare-fun b!3117636 () Bool)

(declare-fun tp!977487 () Bool)

(declare-fun tp!977488 () Bool)

(assert (=> b!3117636 (= e!1946960 (and tp!977487 tp!977488))))

(declare-fun b!3117635 () Bool)

(assert (=> b!3117635 (= e!1946960 tp_is_empty!16791)))

(assert (= (and b!3117126 (is-ElementMatch!9614 (regTwo!19740 r!17423))) b!3117635))

(assert (= (and b!3117126 (is-Concat!14935 (regTwo!19740 r!17423))) b!3117636))

(assert (= (and b!3117126 (is-Star!9614 (regTwo!19740 r!17423))) b!3117637))

(assert (= (and b!3117126 (is-Union!9614 (regTwo!19740 r!17423))) b!3117638))

(push 1)

(assert (not bm!221300))

(assert (not b!3117636))

(assert (not b!3117269))

(assert (not b!3117252))

(assert (not b!3117537))

(assert (not b!3117250))

(assert (not bm!221321))

(assert (not b!3117628))

(assert (not b!3117276))

(assert (not b!3117263))

(assert (not b!3117248))

(assert (not bm!221297))

(assert (not b!3117241))

(assert (not b!3117266))

(assert (not b!3117518))

(assert (not b!3117262))

(assert (not b!3117278))

(assert (not b!3117626))

(assert (not b!3117513))

(assert (not b!3117277))

(assert (not bm!221324))

(assert (not b!3117637))

(assert (not b!3117630))

(assert (not b!3117247))

(assert (not bm!221326))

(assert (not bm!221323))

(assert (not b!3117438))

(assert (not bm!221252))

(assert (not b!3117622))

(assert (not b!3117638))

(assert (not bm!221317))

(assert (not b!3117255))

(assert (not b!3117632))

(assert (not d!862231))

(assert (not b!3117280))

(assert (not b!3117633))

(assert (not bm!221325))

(assert (not b!3117625))

(assert (not d!862239))

(assert (not d!862249))

(assert (not b!3117275))

(assert (not b!3117540))

(assert (not d!862233))

(assert (not b!3117261))

(assert (not b!3117536))

(assert (not bm!221298))

(assert (not b!3117592))

(assert (not bm!221310))

(assert (not b!3117617))

(assert (not bm!221295))

(assert (not b!3117425))

(assert (not bm!221318))

(assert tp_is_empty!16791)

(assert (not bm!221251))

(assert (not b!3117535))

(assert (not d!862241))

(assert (not b!3117634))

(assert (not b!3117538))

(assert (not bm!221309))

(assert (not d!862223))

(assert (not bm!221250))

(assert (not b!3117579))

(assert (not bm!221308))

(assert (not b!3117249))

(assert (not b!3117615))

(assert (not b!3117264))

(assert (not d!862251))

(assert (not b!3117624))

(assert (not b!3117529))

(assert (not bm!221299))

(assert (not d!862257))

(assert (not b!3117616))

(assert (not b!3117629))

(assert (not b!3117573))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

