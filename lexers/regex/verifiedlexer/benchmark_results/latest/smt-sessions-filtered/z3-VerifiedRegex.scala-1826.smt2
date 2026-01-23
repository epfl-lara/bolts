; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!91062 () Bool)

(assert start!91062)

(declare-fun b!1058529 () Bool)

(declare-fun e!671936 () Bool)

(declare-datatypes ((C!6392 0))(
  ( (C!6393 (val!3444 Int)) )
))
(declare-datatypes ((Regex!2911 0))(
  ( (ElementMatch!2911 (c!177258 C!6392)) (Concat!4744 (regOne!6334 Regex!2911) (regTwo!6334 Regex!2911)) (EmptyExpr!2911) (Star!2911 (reg!3240 Regex!2911)) (EmptyLang!2911) (Union!2911 (regOne!6335 Regex!2911) (regTwo!6335 Regex!2911)) )
))
(declare-fun lt!359415 () Regex!2911)

(declare-datatypes ((List!10141 0))(
  ( (Nil!10125) (Cons!10125 (h!15526 C!6392) (t!101187 List!10141)) )
))
(declare-fun s!10566 () List!10141)

(declare-fun matchR!1447 (Regex!2911 List!10141) Bool)

(assert (=> b!1058529 (= e!671936 (matchR!1447 lt!359415 s!10566))))

(declare-fun b!1058530 () Bool)

(declare-fun e!671937 () Bool)

(declare-fun e!671935 () Bool)

(assert (=> b!1058530 (= e!671937 (not e!671935))))

(declare-fun res!473175 () Bool)

(assert (=> b!1058530 (=> res!473175 e!671935)))

(declare-fun lt!359417 () Bool)

(declare-fun r!15766 () Regex!2911)

(get-info :version)

(assert (=> b!1058530 (= res!473175 (or lt!359417 (and ((_ is Concat!4744) r!15766) ((_ is EmptyExpr!2911) (regOne!6334 r!15766))) (and ((_ is Concat!4744) r!15766) ((_ is EmptyExpr!2911) (regTwo!6334 r!15766))) ((_ is Concat!4744) r!15766) (not ((_ is Union!2911) r!15766))))))

(declare-fun matchRSpec!710 (Regex!2911 List!10141) Bool)

(assert (=> b!1058530 (= lt!359417 (matchRSpec!710 r!15766 s!10566))))

(assert (=> b!1058530 (= lt!359417 (matchR!1447 r!15766 s!10566))))

(declare-datatypes ((Unit!15497 0))(
  ( (Unit!15498) )
))
(declare-fun lt!359418 () Unit!15497)

(declare-fun mainMatchTheorem!710 (Regex!2911 List!10141) Unit!15497)

(assert (=> b!1058530 (= lt!359418 (mainMatchTheorem!710 r!15766 s!10566))))

(declare-fun b!1058532 () Bool)

(declare-fun e!671933 () Bool)

(declare-fun tp_is_empty!5465 () Bool)

(declare-fun tp!318338 () Bool)

(assert (=> b!1058532 (= e!671933 (and tp_is_empty!5465 tp!318338))))

(declare-fun b!1058533 () Bool)

(declare-fun e!671934 () Bool)

(declare-fun e!671939 () Bool)

(assert (=> b!1058533 (= e!671934 e!671939)))

(declare-fun res!473173 () Bool)

(assert (=> b!1058533 (=> res!473173 e!671939)))

(declare-fun lt!359416 () Bool)

(assert (=> b!1058533 (= res!473173 (not lt!359416))))

(assert (=> b!1058533 e!671936))

(declare-fun res!473171 () Bool)

(assert (=> b!1058533 (=> res!473171 e!671936)))

(assert (=> b!1058533 (= res!473171 lt!359416)))

(declare-fun lt!359423 () Regex!2911)

(assert (=> b!1058533 (= lt!359416 (matchR!1447 lt!359423 s!10566))))

(declare-fun lt!359420 () Unit!15497)

(declare-fun lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!90 (Regex!2911 Regex!2911 List!10141) Unit!15497)

(assert (=> b!1058533 (= lt!359420 (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!90 lt!359423 lt!359415 s!10566))))

(declare-fun lt!359419 () Regex!2911)

(assert (=> b!1058533 (matchRSpec!710 lt!359419 s!10566)))

(declare-fun lt!359421 () Unit!15497)

(assert (=> b!1058533 (= lt!359421 (mainMatchTheorem!710 lt!359419 s!10566))))

(declare-fun b!1058534 () Bool)

(declare-fun e!671932 () Bool)

(declare-fun tp!318335 () Bool)

(declare-fun tp!318340 () Bool)

(assert (=> b!1058534 (= e!671932 (and tp!318335 tp!318340))))

(declare-fun b!1058535 () Bool)

(declare-fun e!671938 () Bool)

(declare-fun validRegex!1380 (Regex!2911) Bool)

(assert (=> b!1058535 (= e!671938 (validRegex!1380 (regTwo!6335 r!15766)))))

(declare-fun b!1058536 () Bool)

(assert (=> b!1058536 (= e!671932 tp_is_empty!5465)))

(declare-fun res!473172 () Bool)

(assert (=> start!91062 (=> (not res!473172) (not e!671937))))

(assert (=> start!91062 (= res!473172 (validRegex!1380 r!15766))))

(assert (=> start!91062 e!671937))

(assert (=> start!91062 e!671932))

(assert (=> start!91062 e!671933))

(declare-fun b!1058531 () Bool)

(declare-fun tp!318336 () Bool)

(declare-fun tp!318337 () Bool)

(assert (=> b!1058531 (= e!671932 (and tp!318336 tp!318337))))

(declare-fun b!1058537 () Bool)

(assert (=> b!1058537 (= e!671939 e!671938)))

(declare-fun res!473176 () Bool)

(assert (=> b!1058537 (=> (not res!473176) (not e!671938))))

(assert (=> b!1058537 (= res!473176 (validRegex!1380 (regOne!6335 r!15766)))))

(assert (=> b!1058537 (matchR!1447 (regOne!6335 r!15766) s!10566)))

(declare-fun lt!359422 () Unit!15497)

(declare-fun lemmaRemoveUselessConcatSound!274 (Regex!2911 List!10141) Unit!15497)

(assert (=> b!1058537 (= lt!359422 (lemmaRemoveUselessConcatSound!274 (regOne!6335 r!15766) s!10566))))

(declare-fun b!1058538 () Bool)

(assert (=> b!1058538 (= e!671935 e!671934)))

(declare-fun res!473174 () Bool)

(assert (=> b!1058538 (=> res!473174 e!671934)))

(assert (=> b!1058538 (= res!473174 (not (matchR!1447 lt!359419 s!10566)))))

(assert (=> b!1058538 (= lt!359419 (Union!2911 lt!359423 lt!359415))))

(declare-fun removeUselessConcat!460 (Regex!2911) Regex!2911)

(assert (=> b!1058538 (= lt!359415 (removeUselessConcat!460 (regTwo!6335 r!15766)))))

(assert (=> b!1058538 (= lt!359423 (removeUselessConcat!460 (regOne!6335 r!15766)))))

(declare-fun b!1058539 () Bool)

(declare-fun tp!318339 () Bool)

(assert (=> b!1058539 (= e!671932 tp!318339)))

(assert (= (and start!91062 res!473172) b!1058530))

(assert (= (and b!1058530 (not res!473175)) b!1058538))

(assert (= (and b!1058538 (not res!473174)) b!1058533))

(assert (= (and b!1058533 (not res!473171)) b!1058529))

(assert (= (and b!1058533 (not res!473173)) b!1058537))

(assert (= (and b!1058537 res!473176) b!1058535))

(assert (= (and start!91062 ((_ is ElementMatch!2911) r!15766)) b!1058536))

(assert (= (and start!91062 ((_ is Concat!4744) r!15766)) b!1058534))

(assert (= (and start!91062 ((_ is Star!2911) r!15766)) b!1058539))

(assert (= (and start!91062 ((_ is Union!2911) r!15766)) b!1058531))

(assert (= (and start!91062 ((_ is Cons!10125) s!10566)) b!1058532))

(declare-fun m!1220025 () Bool)

(assert (=> b!1058529 m!1220025))

(declare-fun m!1220027 () Bool)

(assert (=> b!1058530 m!1220027))

(declare-fun m!1220029 () Bool)

(assert (=> b!1058530 m!1220029))

(declare-fun m!1220031 () Bool)

(assert (=> b!1058530 m!1220031))

(declare-fun m!1220033 () Bool)

(assert (=> b!1058535 m!1220033))

(declare-fun m!1220035 () Bool)

(assert (=> b!1058538 m!1220035))

(declare-fun m!1220037 () Bool)

(assert (=> b!1058538 m!1220037))

(declare-fun m!1220039 () Bool)

(assert (=> b!1058538 m!1220039))

(declare-fun m!1220041 () Bool)

(assert (=> b!1058537 m!1220041))

(declare-fun m!1220043 () Bool)

(assert (=> b!1058537 m!1220043))

(declare-fun m!1220045 () Bool)

(assert (=> b!1058537 m!1220045))

(declare-fun m!1220047 () Bool)

(assert (=> b!1058533 m!1220047))

(declare-fun m!1220049 () Bool)

(assert (=> b!1058533 m!1220049))

(declare-fun m!1220051 () Bool)

(assert (=> b!1058533 m!1220051))

(declare-fun m!1220053 () Bool)

(assert (=> b!1058533 m!1220053))

(declare-fun m!1220055 () Bool)

(assert (=> start!91062 m!1220055))

(check-sat (not b!1058537) (not b!1058535) (not b!1058538) (not b!1058529) (not start!91062) (not b!1058533) (not b!1058530) (not b!1058532) (not b!1058531) (not b!1058534) (not b!1058539) tp_is_empty!5465)
(check-sat)
(get-model)

(declare-fun b!1058765 () Bool)

(assert (=> b!1058765 true))

(assert (=> b!1058765 true))

(declare-fun bs!251765 () Bool)

(declare-fun b!1058761 () Bool)

(assert (= bs!251765 (and b!1058761 b!1058765)))

(declare-fun lambda!38280 () Int)

(declare-fun lambda!38279 () Int)

(assert (=> bs!251765 (not (= lambda!38280 lambda!38279))))

(assert (=> b!1058761 true))

(assert (=> b!1058761 true))

(declare-fun b!1058756 () Bool)

(declare-fun e!672065 () Bool)

(declare-fun e!672068 () Bool)

(assert (=> b!1058756 (= e!672065 e!672068)))

(declare-fun res!473282 () Bool)

(assert (=> b!1058756 (= res!473282 (not ((_ is EmptyLang!2911) r!15766)))))

(assert (=> b!1058756 (=> (not res!473282) (not e!672068))))

(declare-fun b!1058757 () Bool)

(declare-fun e!672066 () Bool)

(assert (=> b!1058757 (= e!672066 (matchRSpec!710 (regTwo!6335 r!15766) s!10566))))

(declare-fun b!1058758 () Bool)

(declare-fun e!672064 () Bool)

(declare-fun e!672067 () Bool)

(assert (=> b!1058758 (= e!672064 e!672067)))

(declare-fun c!177314 () Bool)

(assert (=> b!1058758 (= c!177314 ((_ is Star!2911) r!15766))))

(declare-fun b!1058759 () Bool)

(declare-fun c!177315 () Bool)

(assert (=> b!1058759 (= c!177315 ((_ is ElementMatch!2911) r!15766))))

(declare-fun e!672063 () Bool)

(assert (=> b!1058759 (= e!672068 e!672063)))

(declare-fun b!1058760 () Bool)

(assert (=> b!1058760 (= e!672063 (= s!10566 (Cons!10125 (c!177258 r!15766) Nil!10125)))))

(declare-fun call!75868 () Bool)

(assert (=> b!1058761 (= e!672067 call!75868)))

(declare-fun d!300423 () Bool)

(declare-fun c!177316 () Bool)

(assert (=> d!300423 (= c!177316 ((_ is EmptyExpr!2911) r!15766))))

(assert (=> d!300423 (= (matchRSpec!710 r!15766 s!10566) e!672065)))

(declare-fun b!1058762 () Bool)

(declare-fun call!75867 () Bool)

(assert (=> b!1058762 (= e!672065 call!75867)))

(declare-fun b!1058763 () Bool)

(assert (=> b!1058763 (= e!672064 e!672066)))

(declare-fun res!473283 () Bool)

(assert (=> b!1058763 (= res!473283 (matchRSpec!710 (regOne!6335 r!15766) s!10566))))

(assert (=> b!1058763 (=> res!473283 e!672066)))

(declare-fun b!1058764 () Bool)

(declare-fun c!177313 () Bool)

(assert (=> b!1058764 (= c!177313 ((_ is Union!2911) r!15766))))

(assert (=> b!1058764 (= e!672063 e!672064)))

(declare-fun bm!75862 () Bool)

(declare-fun Exists!637 (Int) Bool)

(assert (=> bm!75862 (= call!75868 (Exists!637 (ite c!177314 lambda!38279 lambda!38280)))))

(declare-fun e!672062 () Bool)

(assert (=> b!1058765 (= e!672062 call!75868)))

(declare-fun b!1058766 () Bool)

(declare-fun res!473281 () Bool)

(assert (=> b!1058766 (=> res!473281 e!672062)))

(assert (=> b!1058766 (= res!473281 call!75867)))

(assert (=> b!1058766 (= e!672067 e!672062)))

(declare-fun bm!75863 () Bool)

(declare-fun isEmpty!6543 (List!10141) Bool)

(assert (=> bm!75863 (= call!75867 (isEmpty!6543 s!10566))))

(assert (= (and d!300423 c!177316) b!1058762))

(assert (= (and d!300423 (not c!177316)) b!1058756))

(assert (= (and b!1058756 res!473282) b!1058759))

(assert (= (and b!1058759 c!177315) b!1058760))

(assert (= (and b!1058759 (not c!177315)) b!1058764))

(assert (= (and b!1058764 c!177313) b!1058763))

(assert (= (and b!1058764 (not c!177313)) b!1058758))

(assert (= (and b!1058763 (not res!473283)) b!1058757))

(assert (= (and b!1058758 c!177314) b!1058766))

(assert (= (and b!1058758 (not c!177314)) b!1058761))

(assert (= (and b!1058766 (not res!473281)) b!1058765))

(assert (= (or b!1058765 b!1058761) bm!75862))

(assert (= (or b!1058762 b!1058766) bm!75863))

(declare-fun m!1220115 () Bool)

(assert (=> b!1058757 m!1220115))

(declare-fun m!1220117 () Bool)

(assert (=> b!1058763 m!1220117))

(declare-fun m!1220119 () Bool)

(assert (=> bm!75862 m!1220119))

(declare-fun m!1220121 () Bool)

(assert (=> bm!75863 m!1220121))

(assert (=> b!1058530 d!300423))

(declare-fun b!1058870 () Bool)

(declare-fun e!672133 () Bool)

(declare-fun nullable!1003 (Regex!2911) Bool)

(assert (=> b!1058870 (= e!672133 (nullable!1003 r!15766))))

(declare-fun b!1058871 () Bool)

(declare-fun e!672127 () Bool)

(declare-fun head!1958 (List!10141) C!6392)

(assert (=> b!1058871 (= e!672127 (not (= (head!1958 s!10566) (c!177258 r!15766))))))

(declare-fun b!1058872 () Bool)

(declare-fun res!473325 () Bool)

(declare-fun e!672131 () Bool)

(assert (=> b!1058872 (=> (not res!473325) (not e!672131))))

(declare-fun tail!1520 (List!10141) List!10141)

(assert (=> b!1058872 (= res!473325 (isEmpty!6543 (tail!1520 s!10566)))))

(declare-fun bm!75895 () Bool)

(declare-fun call!75900 () Bool)

(assert (=> bm!75895 (= call!75900 (isEmpty!6543 s!10566))))

(declare-fun b!1058873 () Bool)

(declare-fun e!672129 () Bool)

(assert (=> b!1058873 (= e!672129 e!672127)))

(declare-fun res!473326 () Bool)

(assert (=> b!1058873 (=> res!473326 e!672127)))

(assert (=> b!1058873 (= res!473326 call!75900)))

(declare-fun b!1058874 () Bool)

(declare-fun res!473330 () Bool)

(declare-fun e!672132 () Bool)

(assert (=> b!1058874 (=> res!473330 e!672132)))

(assert (=> b!1058874 (= res!473330 (not ((_ is ElementMatch!2911) r!15766)))))

(declare-fun e!672130 () Bool)

(assert (=> b!1058874 (= e!672130 e!672132)))

(declare-fun b!1058875 () Bool)

(declare-fun e!672128 () Bool)

(assert (=> b!1058875 (= e!672128 e!672130)))

(declare-fun c!177345 () Bool)

(assert (=> b!1058875 (= c!177345 ((_ is EmptyLang!2911) r!15766))))

(declare-fun b!1058876 () Bool)

(declare-fun lt!359447 () Bool)

(assert (=> b!1058876 (= e!672128 (= lt!359447 call!75900))))

(declare-fun d!300445 () Bool)

(assert (=> d!300445 e!672128))

(declare-fun c!177344 () Bool)

(assert (=> d!300445 (= c!177344 ((_ is EmptyExpr!2911) r!15766))))

(assert (=> d!300445 (= lt!359447 e!672133)))

(declare-fun c!177346 () Bool)

(assert (=> d!300445 (= c!177346 (isEmpty!6543 s!10566))))

(assert (=> d!300445 (validRegex!1380 r!15766)))

(assert (=> d!300445 (= (matchR!1447 r!15766 s!10566) lt!359447)))

(declare-fun b!1058877 () Bool)

(assert (=> b!1058877 (= e!672131 (= (head!1958 s!10566) (c!177258 r!15766)))))

(declare-fun b!1058878 () Bool)

(declare-fun res!473329 () Bool)

(assert (=> b!1058878 (=> res!473329 e!672127)))

(assert (=> b!1058878 (= res!473329 (not (isEmpty!6543 (tail!1520 s!10566))))))

(declare-fun b!1058879 () Bool)

(assert (=> b!1058879 (= e!672130 (not lt!359447))))

(declare-fun b!1058880 () Bool)

(assert (=> b!1058880 (= e!672132 e!672129)))

(declare-fun res!473331 () Bool)

(assert (=> b!1058880 (=> (not res!473331) (not e!672129))))

(assert (=> b!1058880 (= res!473331 (not lt!359447))))

(declare-fun b!1058881 () Bool)

(declare-fun res!473328 () Bool)

(assert (=> b!1058881 (=> (not res!473328) (not e!672131))))

(assert (=> b!1058881 (= res!473328 (not call!75900))))

(declare-fun b!1058882 () Bool)

(declare-fun res!473327 () Bool)

(assert (=> b!1058882 (=> res!473327 e!672132)))

(assert (=> b!1058882 (= res!473327 e!672131)))

(declare-fun res!473332 () Bool)

(assert (=> b!1058882 (=> (not res!473332) (not e!672131))))

(assert (=> b!1058882 (= res!473332 lt!359447)))

(declare-fun b!1058883 () Bool)

(declare-fun derivativeStep!803 (Regex!2911 C!6392) Regex!2911)

(assert (=> b!1058883 (= e!672133 (matchR!1447 (derivativeStep!803 r!15766 (head!1958 s!10566)) (tail!1520 s!10566)))))

(assert (= (and d!300445 c!177346) b!1058870))

(assert (= (and d!300445 (not c!177346)) b!1058883))

(assert (= (and d!300445 c!177344) b!1058876))

(assert (= (and d!300445 (not c!177344)) b!1058875))

(assert (= (and b!1058875 c!177345) b!1058879))

(assert (= (and b!1058875 (not c!177345)) b!1058874))

(assert (= (and b!1058874 (not res!473330)) b!1058882))

(assert (= (and b!1058882 res!473332) b!1058881))

(assert (= (and b!1058881 res!473328) b!1058872))

(assert (= (and b!1058872 res!473325) b!1058877))

(assert (= (and b!1058882 (not res!473327)) b!1058880))

(assert (= (and b!1058880 res!473331) b!1058873))

(assert (= (and b!1058873 (not res!473326)) b!1058878))

(assert (= (and b!1058878 (not res!473329)) b!1058871))

(assert (= (or b!1058876 b!1058873 b!1058881) bm!75895))

(declare-fun m!1220167 () Bool)

(assert (=> b!1058878 m!1220167))

(assert (=> b!1058878 m!1220167))

(declare-fun m!1220169 () Bool)

(assert (=> b!1058878 m!1220169))

(assert (=> bm!75895 m!1220121))

(assert (=> b!1058872 m!1220167))

(assert (=> b!1058872 m!1220167))

(assert (=> b!1058872 m!1220169))

(declare-fun m!1220171 () Bool)

(assert (=> b!1058871 m!1220171))

(declare-fun m!1220173 () Bool)

(assert (=> b!1058870 m!1220173))

(assert (=> b!1058883 m!1220171))

(assert (=> b!1058883 m!1220171))

(declare-fun m!1220175 () Bool)

(assert (=> b!1058883 m!1220175))

(assert (=> b!1058883 m!1220167))

(assert (=> b!1058883 m!1220175))

(assert (=> b!1058883 m!1220167))

(declare-fun m!1220177 () Bool)

(assert (=> b!1058883 m!1220177))

(assert (=> d!300445 m!1220121))

(assert (=> d!300445 m!1220055))

(assert (=> b!1058877 m!1220171))

(assert (=> b!1058530 d!300445))

(declare-fun d!300459 () Bool)

(assert (=> d!300459 (= (matchR!1447 r!15766 s!10566) (matchRSpec!710 r!15766 s!10566))))

(declare-fun lt!359450 () Unit!15497)

(declare-fun choose!6740 (Regex!2911 List!10141) Unit!15497)

(assert (=> d!300459 (= lt!359450 (choose!6740 r!15766 s!10566))))

(assert (=> d!300459 (validRegex!1380 r!15766)))

(assert (=> d!300459 (= (mainMatchTheorem!710 r!15766 s!10566) lt!359450)))

(declare-fun bs!251772 () Bool)

(assert (= bs!251772 d!300459))

(assert (=> bs!251772 m!1220029))

(assert (=> bs!251772 m!1220027))

(declare-fun m!1220179 () Bool)

(assert (=> bs!251772 m!1220179))

(assert (=> bs!251772 m!1220055))

(assert (=> b!1058530 d!300459))

(declare-fun b!1058933 () Bool)

(declare-fun e!672162 () Bool)

(declare-fun e!672156 () Bool)

(assert (=> b!1058933 (= e!672162 e!672156)))

(declare-fun c!177352 () Bool)

(assert (=> b!1058933 (= c!177352 ((_ is Union!2911) (regOne!6335 r!15766)))))

(declare-fun b!1058934 () Bool)

(declare-fun res!473343 () Bool)

(declare-fun e!672157 () Bool)

(assert (=> b!1058934 (=> (not res!473343) (not e!672157))))

(declare-fun call!75907 () Bool)

(assert (=> b!1058934 (= res!473343 call!75907)))

(assert (=> b!1058934 (= e!672156 e!672157)))

(declare-fun b!1058935 () Bool)

(declare-fun e!672159 () Bool)

(assert (=> b!1058935 (= e!672162 e!672159)))

(declare-fun res!473344 () Bool)

(assert (=> b!1058935 (= res!473344 (not (nullable!1003 (reg!3240 (regOne!6335 r!15766)))))))

(assert (=> b!1058935 (=> (not res!473344) (not e!672159))))

(declare-fun b!1058936 () Bool)

(declare-fun res!473347 () Bool)

(declare-fun e!672158 () Bool)

(assert (=> b!1058936 (=> res!473347 e!672158)))

(assert (=> b!1058936 (= res!473347 (not ((_ is Concat!4744) (regOne!6335 r!15766))))))

(assert (=> b!1058936 (= e!672156 e!672158)))

(declare-fun b!1058937 () Bool)

(declare-fun e!672161 () Bool)

(declare-fun call!75908 () Bool)

(assert (=> b!1058937 (= e!672161 call!75908)))

(declare-fun d!300461 () Bool)

(declare-fun res!473345 () Bool)

(declare-fun e!672160 () Bool)

(assert (=> d!300461 (=> res!473345 e!672160)))

(assert (=> d!300461 (= res!473345 ((_ is ElementMatch!2911) (regOne!6335 r!15766)))))

(assert (=> d!300461 (= (validRegex!1380 (regOne!6335 r!15766)) e!672160)))

(declare-fun bm!75902 () Bool)

(assert (=> bm!75902 (= call!75907 (validRegex!1380 (ite c!177352 (regOne!6335 (regOne!6335 r!15766)) (regOne!6334 (regOne!6335 r!15766)))))))

(declare-fun b!1058938 () Bool)

(declare-fun call!75909 () Bool)

(assert (=> b!1058938 (= e!672159 call!75909)))

(declare-fun b!1058939 () Bool)

(assert (=> b!1058939 (= e!672157 call!75908)))

(declare-fun b!1058940 () Bool)

(assert (=> b!1058940 (= e!672160 e!672162)))

(declare-fun c!177351 () Bool)

(assert (=> b!1058940 (= c!177351 ((_ is Star!2911) (regOne!6335 r!15766)))))

(declare-fun bm!75903 () Bool)

(assert (=> bm!75903 (= call!75909 (validRegex!1380 (ite c!177351 (reg!3240 (regOne!6335 r!15766)) (ite c!177352 (regTwo!6335 (regOne!6335 r!15766)) (regTwo!6334 (regOne!6335 r!15766))))))))

(declare-fun b!1058941 () Bool)

(assert (=> b!1058941 (= e!672158 e!672161)))

(declare-fun res!473346 () Bool)

(assert (=> b!1058941 (=> (not res!473346) (not e!672161))))

(assert (=> b!1058941 (= res!473346 call!75907)))

(declare-fun bm!75904 () Bool)

(assert (=> bm!75904 (= call!75908 call!75909)))

(assert (= (and d!300461 (not res!473345)) b!1058940))

(assert (= (and b!1058940 c!177351) b!1058935))

(assert (= (and b!1058940 (not c!177351)) b!1058933))

(assert (= (and b!1058935 res!473344) b!1058938))

(assert (= (and b!1058933 c!177352) b!1058934))

(assert (= (and b!1058933 (not c!177352)) b!1058936))

(assert (= (and b!1058934 res!473343) b!1058939))

(assert (= (and b!1058936 (not res!473347)) b!1058941))

(assert (= (and b!1058941 res!473346) b!1058937))

(assert (= (or b!1058939 b!1058937) bm!75904))

(assert (= (or b!1058934 b!1058941) bm!75902))

(assert (= (or b!1058938 bm!75904) bm!75903))

(declare-fun m!1220181 () Bool)

(assert (=> b!1058935 m!1220181))

(declare-fun m!1220183 () Bool)

(assert (=> bm!75902 m!1220183))

(declare-fun m!1220185 () Bool)

(assert (=> bm!75903 m!1220185))

(assert (=> b!1058537 d!300461))

(declare-fun b!1058942 () Bool)

(declare-fun e!672169 () Bool)

(assert (=> b!1058942 (= e!672169 (nullable!1003 (regOne!6335 r!15766)))))

(declare-fun b!1058943 () Bool)

(declare-fun e!672163 () Bool)

(assert (=> b!1058943 (= e!672163 (not (= (head!1958 s!10566) (c!177258 (regOne!6335 r!15766)))))))

(declare-fun b!1058944 () Bool)

(declare-fun res!473348 () Bool)

(declare-fun e!672167 () Bool)

(assert (=> b!1058944 (=> (not res!473348) (not e!672167))))

(assert (=> b!1058944 (= res!473348 (isEmpty!6543 (tail!1520 s!10566)))))

(declare-fun bm!75905 () Bool)

(declare-fun call!75910 () Bool)

(assert (=> bm!75905 (= call!75910 (isEmpty!6543 s!10566))))

(declare-fun b!1058945 () Bool)

(declare-fun e!672165 () Bool)

(assert (=> b!1058945 (= e!672165 e!672163)))

(declare-fun res!473349 () Bool)

(assert (=> b!1058945 (=> res!473349 e!672163)))

(assert (=> b!1058945 (= res!473349 call!75910)))

(declare-fun b!1058946 () Bool)

(declare-fun res!473353 () Bool)

(declare-fun e!672168 () Bool)

(assert (=> b!1058946 (=> res!473353 e!672168)))

(assert (=> b!1058946 (= res!473353 (not ((_ is ElementMatch!2911) (regOne!6335 r!15766))))))

(declare-fun e!672166 () Bool)

(assert (=> b!1058946 (= e!672166 e!672168)))

(declare-fun b!1058947 () Bool)

(declare-fun e!672164 () Bool)

(assert (=> b!1058947 (= e!672164 e!672166)))

(declare-fun c!177354 () Bool)

(assert (=> b!1058947 (= c!177354 ((_ is EmptyLang!2911) (regOne!6335 r!15766)))))

(declare-fun b!1058948 () Bool)

(declare-fun lt!359451 () Bool)

(assert (=> b!1058948 (= e!672164 (= lt!359451 call!75910))))

(declare-fun d!300463 () Bool)

(assert (=> d!300463 e!672164))

(declare-fun c!177353 () Bool)

(assert (=> d!300463 (= c!177353 ((_ is EmptyExpr!2911) (regOne!6335 r!15766)))))

(assert (=> d!300463 (= lt!359451 e!672169)))

(declare-fun c!177355 () Bool)

(assert (=> d!300463 (= c!177355 (isEmpty!6543 s!10566))))

(assert (=> d!300463 (validRegex!1380 (regOne!6335 r!15766))))

(assert (=> d!300463 (= (matchR!1447 (regOne!6335 r!15766) s!10566) lt!359451)))

(declare-fun b!1058949 () Bool)

(assert (=> b!1058949 (= e!672167 (= (head!1958 s!10566) (c!177258 (regOne!6335 r!15766))))))

(declare-fun b!1058950 () Bool)

(declare-fun res!473352 () Bool)

(assert (=> b!1058950 (=> res!473352 e!672163)))

(assert (=> b!1058950 (= res!473352 (not (isEmpty!6543 (tail!1520 s!10566))))))

(declare-fun b!1058951 () Bool)

(assert (=> b!1058951 (= e!672166 (not lt!359451))))

(declare-fun b!1058952 () Bool)

(assert (=> b!1058952 (= e!672168 e!672165)))

(declare-fun res!473354 () Bool)

(assert (=> b!1058952 (=> (not res!473354) (not e!672165))))

(assert (=> b!1058952 (= res!473354 (not lt!359451))))

(declare-fun b!1058953 () Bool)

(declare-fun res!473351 () Bool)

(assert (=> b!1058953 (=> (not res!473351) (not e!672167))))

(assert (=> b!1058953 (= res!473351 (not call!75910))))

(declare-fun b!1058954 () Bool)

(declare-fun res!473350 () Bool)

(assert (=> b!1058954 (=> res!473350 e!672168)))

(assert (=> b!1058954 (= res!473350 e!672167)))

(declare-fun res!473355 () Bool)

(assert (=> b!1058954 (=> (not res!473355) (not e!672167))))

(assert (=> b!1058954 (= res!473355 lt!359451)))

(declare-fun b!1058955 () Bool)

(assert (=> b!1058955 (= e!672169 (matchR!1447 (derivativeStep!803 (regOne!6335 r!15766) (head!1958 s!10566)) (tail!1520 s!10566)))))

(assert (= (and d!300463 c!177355) b!1058942))

(assert (= (and d!300463 (not c!177355)) b!1058955))

(assert (= (and d!300463 c!177353) b!1058948))

(assert (= (and d!300463 (not c!177353)) b!1058947))

(assert (= (and b!1058947 c!177354) b!1058951))

(assert (= (and b!1058947 (not c!177354)) b!1058946))

(assert (= (and b!1058946 (not res!473353)) b!1058954))

(assert (= (and b!1058954 res!473355) b!1058953))

(assert (= (and b!1058953 res!473351) b!1058944))

(assert (= (and b!1058944 res!473348) b!1058949))

(assert (= (and b!1058954 (not res!473350)) b!1058952))

(assert (= (and b!1058952 res!473354) b!1058945))

(assert (= (and b!1058945 (not res!473349)) b!1058950))

(assert (= (and b!1058950 (not res!473352)) b!1058943))

(assert (= (or b!1058948 b!1058945 b!1058953) bm!75905))

(assert (=> b!1058950 m!1220167))

(assert (=> b!1058950 m!1220167))

(assert (=> b!1058950 m!1220169))

(assert (=> bm!75905 m!1220121))

(assert (=> b!1058944 m!1220167))

(assert (=> b!1058944 m!1220167))

(assert (=> b!1058944 m!1220169))

(assert (=> b!1058943 m!1220171))

(declare-fun m!1220187 () Bool)

(assert (=> b!1058942 m!1220187))

(assert (=> b!1058955 m!1220171))

(assert (=> b!1058955 m!1220171))

(declare-fun m!1220189 () Bool)

(assert (=> b!1058955 m!1220189))

(assert (=> b!1058955 m!1220167))

(assert (=> b!1058955 m!1220189))

(assert (=> b!1058955 m!1220167))

(declare-fun m!1220191 () Bool)

(assert (=> b!1058955 m!1220191))

(assert (=> d!300463 m!1220121))

(assert (=> d!300463 m!1220041))

(assert (=> b!1058949 m!1220171))

(assert (=> b!1058537 d!300463))

(declare-fun d!300465 () Bool)

(assert (=> d!300465 (= (matchR!1447 (regOne!6335 r!15766) s!10566) (matchR!1447 (removeUselessConcat!460 (regOne!6335 r!15766)) s!10566))))

(declare-fun lt!359454 () Unit!15497)

(declare-fun choose!6742 (Regex!2911 List!10141) Unit!15497)

(assert (=> d!300465 (= lt!359454 (choose!6742 (regOne!6335 r!15766) s!10566))))

(assert (=> d!300465 (validRegex!1380 (regOne!6335 r!15766))))

(assert (=> d!300465 (= (lemmaRemoveUselessConcatSound!274 (regOne!6335 r!15766) s!10566) lt!359454)))

(declare-fun bs!251773 () Bool)

(assert (= bs!251773 d!300465))

(assert (=> bs!251773 m!1220041))

(assert (=> bs!251773 m!1220039))

(declare-fun m!1220193 () Bool)

(assert (=> bs!251773 m!1220193))

(assert (=> bs!251773 m!1220043))

(assert (=> bs!251773 m!1220039))

(declare-fun m!1220195 () Bool)

(assert (=> bs!251773 m!1220195))

(assert (=> b!1058537 d!300465))

(declare-fun b!1058956 () Bool)

(declare-fun e!672176 () Bool)

(assert (=> b!1058956 (= e!672176 (nullable!1003 lt!359423))))

(declare-fun b!1058957 () Bool)

(declare-fun e!672170 () Bool)

(assert (=> b!1058957 (= e!672170 (not (= (head!1958 s!10566) (c!177258 lt!359423))))))

(declare-fun b!1058958 () Bool)

(declare-fun res!473356 () Bool)

(declare-fun e!672174 () Bool)

(assert (=> b!1058958 (=> (not res!473356) (not e!672174))))

(assert (=> b!1058958 (= res!473356 (isEmpty!6543 (tail!1520 s!10566)))))

(declare-fun bm!75906 () Bool)

(declare-fun call!75911 () Bool)

(assert (=> bm!75906 (= call!75911 (isEmpty!6543 s!10566))))

(declare-fun b!1058959 () Bool)

(declare-fun e!672172 () Bool)

(assert (=> b!1058959 (= e!672172 e!672170)))

(declare-fun res!473357 () Bool)

(assert (=> b!1058959 (=> res!473357 e!672170)))

(assert (=> b!1058959 (= res!473357 call!75911)))

(declare-fun b!1058960 () Bool)

(declare-fun res!473361 () Bool)

(declare-fun e!672175 () Bool)

(assert (=> b!1058960 (=> res!473361 e!672175)))

(assert (=> b!1058960 (= res!473361 (not ((_ is ElementMatch!2911) lt!359423)))))

(declare-fun e!672173 () Bool)

(assert (=> b!1058960 (= e!672173 e!672175)))

(declare-fun b!1058961 () Bool)

(declare-fun e!672171 () Bool)

(assert (=> b!1058961 (= e!672171 e!672173)))

(declare-fun c!177357 () Bool)

(assert (=> b!1058961 (= c!177357 ((_ is EmptyLang!2911) lt!359423))))

(declare-fun b!1058962 () Bool)

(declare-fun lt!359455 () Bool)

(assert (=> b!1058962 (= e!672171 (= lt!359455 call!75911))))

(declare-fun d!300467 () Bool)

(assert (=> d!300467 e!672171))

(declare-fun c!177356 () Bool)

(assert (=> d!300467 (= c!177356 ((_ is EmptyExpr!2911) lt!359423))))

(assert (=> d!300467 (= lt!359455 e!672176)))

(declare-fun c!177358 () Bool)

(assert (=> d!300467 (= c!177358 (isEmpty!6543 s!10566))))

(assert (=> d!300467 (validRegex!1380 lt!359423)))

(assert (=> d!300467 (= (matchR!1447 lt!359423 s!10566) lt!359455)))

(declare-fun b!1058963 () Bool)

(assert (=> b!1058963 (= e!672174 (= (head!1958 s!10566) (c!177258 lt!359423)))))

(declare-fun b!1058964 () Bool)

(declare-fun res!473360 () Bool)

(assert (=> b!1058964 (=> res!473360 e!672170)))

(assert (=> b!1058964 (= res!473360 (not (isEmpty!6543 (tail!1520 s!10566))))))

(declare-fun b!1058965 () Bool)

(assert (=> b!1058965 (= e!672173 (not lt!359455))))

(declare-fun b!1058966 () Bool)

(assert (=> b!1058966 (= e!672175 e!672172)))

(declare-fun res!473362 () Bool)

(assert (=> b!1058966 (=> (not res!473362) (not e!672172))))

(assert (=> b!1058966 (= res!473362 (not lt!359455))))

(declare-fun b!1058967 () Bool)

(declare-fun res!473359 () Bool)

(assert (=> b!1058967 (=> (not res!473359) (not e!672174))))

(assert (=> b!1058967 (= res!473359 (not call!75911))))

(declare-fun b!1058968 () Bool)

(declare-fun res!473358 () Bool)

(assert (=> b!1058968 (=> res!473358 e!672175)))

(assert (=> b!1058968 (= res!473358 e!672174)))

(declare-fun res!473363 () Bool)

(assert (=> b!1058968 (=> (not res!473363) (not e!672174))))

(assert (=> b!1058968 (= res!473363 lt!359455)))

(declare-fun b!1058969 () Bool)

(assert (=> b!1058969 (= e!672176 (matchR!1447 (derivativeStep!803 lt!359423 (head!1958 s!10566)) (tail!1520 s!10566)))))

(assert (= (and d!300467 c!177358) b!1058956))

(assert (= (and d!300467 (not c!177358)) b!1058969))

(assert (= (and d!300467 c!177356) b!1058962))

(assert (= (and d!300467 (not c!177356)) b!1058961))

(assert (= (and b!1058961 c!177357) b!1058965))

(assert (= (and b!1058961 (not c!177357)) b!1058960))

(assert (= (and b!1058960 (not res!473361)) b!1058968))

(assert (= (and b!1058968 res!473363) b!1058967))

(assert (= (and b!1058967 res!473359) b!1058958))

(assert (= (and b!1058958 res!473356) b!1058963))

(assert (= (and b!1058968 (not res!473358)) b!1058966))

(assert (= (and b!1058966 res!473362) b!1058959))

(assert (= (and b!1058959 (not res!473357)) b!1058964))

(assert (= (and b!1058964 (not res!473360)) b!1058957))

(assert (= (or b!1058962 b!1058959 b!1058967) bm!75906))

(assert (=> b!1058964 m!1220167))

(assert (=> b!1058964 m!1220167))

(assert (=> b!1058964 m!1220169))

(assert (=> bm!75906 m!1220121))

(assert (=> b!1058958 m!1220167))

(assert (=> b!1058958 m!1220167))

(assert (=> b!1058958 m!1220169))

(assert (=> b!1058957 m!1220171))

(declare-fun m!1220197 () Bool)

(assert (=> b!1058956 m!1220197))

(assert (=> b!1058969 m!1220171))

(assert (=> b!1058969 m!1220171))

(declare-fun m!1220199 () Bool)

(assert (=> b!1058969 m!1220199))

(assert (=> b!1058969 m!1220167))

(assert (=> b!1058969 m!1220199))

(assert (=> b!1058969 m!1220167))

(declare-fun m!1220201 () Bool)

(assert (=> b!1058969 m!1220201))

(assert (=> d!300467 m!1220121))

(declare-fun m!1220203 () Bool)

(assert (=> d!300467 m!1220203))

(assert (=> b!1058963 m!1220171))

(assert (=> b!1058533 d!300467))

(declare-fun d!300469 () Bool)

(declare-fun e!672181 () Bool)

(assert (=> d!300469 e!672181))

(declare-fun res!473369 () Bool)

(assert (=> d!300469 (=> res!473369 e!672181)))

(assert (=> d!300469 (= res!473369 (matchR!1447 lt!359423 s!10566))))

(declare-fun lt!359458 () Unit!15497)

(declare-fun choose!6743 (Regex!2911 Regex!2911 List!10141) Unit!15497)

(assert (=> d!300469 (= lt!359458 (choose!6743 lt!359423 lt!359415 s!10566))))

(declare-fun e!672182 () Bool)

(assert (=> d!300469 e!672182))

(declare-fun res!473368 () Bool)

(assert (=> d!300469 (=> (not res!473368) (not e!672182))))

(assert (=> d!300469 (= res!473368 (validRegex!1380 lt!359423))))

(assert (=> d!300469 (= (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!90 lt!359423 lt!359415 s!10566) lt!359458)))

(declare-fun b!1058974 () Bool)

(assert (=> b!1058974 (= e!672182 (validRegex!1380 lt!359415))))

(declare-fun b!1058975 () Bool)

(assert (=> b!1058975 (= e!672181 (matchR!1447 lt!359415 s!10566))))

(assert (= (and d!300469 res!473368) b!1058974))

(assert (= (and d!300469 (not res!473369)) b!1058975))

(assert (=> d!300469 m!1220047))

(declare-fun m!1220205 () Bool)

(assert (=> d!300469 m!1220205))

(assert (=> d!300469 m!1220203))

(declare-fun m!1220207 () Bool)

(assert (=> b!1058974 m!1220207))

(assert (=> b!1058975 m!1220025))

(assert (=> b!1058533 d!300469))

(declare-fun bs!251774 () Bool)

(declare-fun b!1058985 () Bool)

(assert (= bs!251774 (and b!1058985 b!1058765)))

(declare-fun lambda!38283 () Int)

(assert (=> bs!251774 (= (and (= (reg!3240 lt!359419) (reg!3240 r!15766)) (= lt!359419 r!15766)) (= lambda!38283 lambda!38279))))

(declare-fun bs!251775 () Bool)

(assert (= bs!251775 (and b!1058985 b!1058761)))

(assert (=> bs!251775 (not (= lambda!38283 lambda!38280))))

(assert (=> b!1058985 true))

(assert (=> b!1058985 true))

(declare-fun bs!251776 () Bool)

(declare-fun b!1058981 () Bool)

(assert (= bs!251776 (and b!1058981 b!1058765)))

(declare-fun lambda!38284 () Int)

(assert (=> bs!251776 (not (= lambda!38284 lambda!38279))))

(declare-fun bs!251777 () Bool)

(assert (= bs!251777 (and b!1058981 b!1058761)))

(assert (=> bs!251777 (= (and (= (regOne!6334 lt!359419) (regOne!6334 r!15766)) (= (regTwo!6334 lt!359419) (regTwo!6334 r!15766))) (= lambda!38284 lambda!38280))))

(declare-fun bs!251778 () Bool)

(assert (= bs!251778 (and b!1058981 b!1058985)))

(assert (=> bs!251778 (not (= lambda!38284 lambda!38283))))

(assert (=> b!1058981 true))

(assert (=> b!1058981 true))

(declare-fun b!1058976 () Bool)

(declare-fun e!672186 () Bool)

(declare-fun e!672189 () Bool)

(assert (=> b!1058976 (= e!672186 e!672189)))

(declare-fun res!473371 () Bool)

(assert (=> b!1058976 (= res!473371 (not ((_ is EmptyLang!2911) lt!359419)))))

(assert (=> b!1058976 (=> (not res!473371) (not e!672189))))

(declare-fun b!1058977 () Bool)

(declare-fun e!672187 () Bool)

(assert (=> b!1058977 (= e!672187 (matchRSpec!710 (regTwo!6335 lt!359419) s!10566))))

(declare-fun b!1058978 () Bool)

(declare-fun e!672185 () Bool)

(declare-fun e!672188 () Bool)

(assert (=> b!1058978 (= e!672185 e!672188)))

(declare-fun c!177360 () Bool)

(assert (=> b!1058978 (= c!177360 ((_ is Star!2911) lt!359419))))

(declare-fun b!1058979 () Bool)

(declare-fun c!177361 () Bool)

(assert (=> b!1058979 (= c!177361 ((_ is ElementMatch!2911) lt!359419))))

(declare-fun e!672184 () Bool)

(assert (=> b!1058979 (= e!672189 e!672184)))

(declare-fun b!1058980 () Bool)

(assert (=> b!1058980 (= e!672184 (= s!10566 (Cons!10125 (c!177258 lt!359419) Nil!10125)))))

(declare-fun call!75913 () Bool)

(assert (=> b!1058981 (= e!672188 call!75913)))

(declare-fun d!300471 () Bool)

(declare-fun c!177362 () Bool)

(assert (=> d!300471 (= c!177362 ((_ is EmptyExpr!2911) lt!359419))))

(assert (=> d!300471 (= (matchRSpec!710 lt!359419 s!10566) e!672186)))

(declare-fun b!1058982 () Bool)

(declare-fun call!75912 () Bool)

(assert (=> b!1058982 (= e!672186 call!75912)))

(declare-fun b!1058983 () Bool)

(assert (=> b!1058983 (= e!672185 e!672187)))

(declare-fun res!473372 () Bool)

(assert (=> b!1058983 (= res!473372 (matchRSpec!710 (regOne!6335 lt!359419) s!10566))))

(assert (=> b!1058983 (=> res!473372 e!672187)))

(declare-fun b!1058984 () Bool)

(declare-fun c!177359 () Bool)

(assert (=> b!1058984 (= c!177359 ((_ is Union!2911) lt!359419))))

(assert (=> b!1058984 (= e!672184 e!672185)))

(declare-fun bm!75907 () Bool)

(assert (=> bm!75907 (= call!75913 (Exists!637 (ite c!177360 lambda!38283 lambda!38284)))))

(declare-fun e!672183 () Bool)

(assert (=> b!1058985 (= e!672183 call!75913)))

(declare-fun b!1058986 () Bool)

(declare-fun res!473370 () Bool)

(assert (=> b!1058986 (=> res!473370 e!672183)))

(assert (=> b!1058986 (= res!473370 call!75912)))

(assert (=> b!1058986 (= e!672188 e!672183)))

(declare-fun bm!75908 () Bool)

(assert (=> bm!75908 (= call!75912 (isEmpty!6543 s!10566))))

(assert (= (and d!300471 c!177362) b!1058982))

(assert (= (and d!300471 (not c!177362)) b!1058976))

(assert (= (and b!1058976 res!473371) b!1058979))

(assert (= (and b!1058979 c!177361) b!1058980))

(assert (= (and b!1058979 (not c!177361)) b!1058984))

(assert (= (and b!1058984 c!177359) b!1058983))

(assert (= (and b!1058984 (not c!177359)) b!1058978))

(assert (= (and b!1058983 (not res!473372)) b!1058977))

(assert (= (and b!1058978 c!177360) b!1058986))

(assert (= (and b!1058978 (not c!177360)) b!1058981))

(assert (= (and b!1058986 (not res!473370)) b!1058985))

(assert (= (or b!1058985 b!1058981) bm!75907))

(assert (= (or b!1058982 b!1058986) bm!75908))

(declare-fun m!1220209 () Bool)

(assert (=> b!1058977 m!1220209))

(declare-fun m!1220211 () Bool)

(assert (=> b!1058983 m!1220211))

(declare-fun m!1220213 () Bool)

(assert (=> bm!75907 m!1220213))

(assert (=> bm!75908 m!1220121))

(assert (=> b!1058533 d!300471))

(declare-fun d!300473 () Bool)

(assert (=> d!300473 (= (matchR!1447 lt!359419 s!10566) (matchRSpec!710 lt!359419 s!10566))))

(declare-fun lt!359459 () Unit!15497)

(assert (=> d!300473 (= lt!359459 (choose!6740 lt!359419 s!10566))))

(assert (=> d!300473 (validRegex!1380 lt!359419)))

(assert (=> d!300473 (= (mainMatchTheorem!710 lt!359419 s!10566) lt!359459)))

(declare-fun bs!251779 () Bool)

(assert (= bs!251779 d!300473))

(assert (=> bs!251779 m!1220035))

(assert (=> bs!251779 m!1220051))

(declare-fun m!1220215 () Bool)

(assert (=> bs!251779 m!1220215))

(declare-fun m!1220217 () Bool)

(assert (=> bs!251779 m!1220217))

(assert (=> b!1058533 d!300473))

(declare-fun b!1058987 () Bool)

(declare-fun e!672196 () Bool)

(assert (=> b!1058987 (= e!672196 (nullable!1003 lt!359419))))

(declare-fun b!1058988 () Bool)

(declare-fun e!672190 () Bool)

(assert (=> b!1058988 (= e!672190 (not (= (head!1958 s!10566) (c!177258 lt!359419))))))

(declare-fun b!1058989 () Bool)

(declare-fun res!473373 () Bool)

(declare-fun e!672194 () Bool)

(assert (=> b!1058989 (=> (not res!473373) (not e!672194))))

(assert (=> b!1058989 (= res!473373 (isEmpty!6543 (tail!1520 s!10566)))))

(declare-fun bm!75909 () Bool)

(declare-fun call!75914 () Bool)

(assert (=> bm!75909 (= call!75914 (isEmpty!6543 s!10566))))

(declare-fun b!1058990 () Bool)

(declare-fun e!672192 () Bool)

(assert (=> b!1058990 (= e!672192 e!672190)))

(declare-fun res!473374 () Bool)

(assert (=> b!1058990 (=> res!473374 e!672190)))

(assert (=> b!1058990 (= res!473374 call!75914)))

(declare-fun b!1058991 () Bool)

(declare-fun res!473378 () Bool)

(declare-fun e!672195 () Bool)

(assert (=> b!1058991 (=> res!473378 e!672195)))

(assert (=> b!1058991 (= res!473378 (not ((_ is ElementMatch!2911) lt!359419)))))

(declare-fun e!672193 () Bool)

(assert (=> b!1058991 (= e!672193 e!672195)))

(declare-fun b!1058992 () Bool)

(declare-fun e!672191 () Bool)

(assert (=> b!1058992 (= e!672191 e!672193)))

(declare-fun c!177364 () Bool)

(assert (=> b!1058992 (= c!177364 ((_ is EmptyLang!2911) lt!359419))))

(declare-fun b!1058993 () Bool)

(declare-fun lt!359460 () Bool)

(assert (=> b!1058993 (= e!672191 (= lt!359460 call!75914))))

(declare-fun d!300475 () Bool)

(assert (=> d!300475 e!672191))

(declare-fun c!177363 () Bool)

(assert (=> d!300475 (= c!177363 ((_ is EmptyExpr!2911) lt!359419))))

(assert (=> d!300475 (= lt!359460 e!672196)))

(declare-fun c!177365 () Bool)

(assert (=> d!300475 (= c!177365 (isEmpty!6543 s!10566))))

(assert (=> d!300475 (validRegex!1380 lt!359419)))

(assert (=> d!300475 (= (matchR!1447 lt!359419 s!10566) lt!359460)))

(declare-fun b!1058994 () Bool)

(assert (=> b!1058994 (= e!672194 (= (head!1958 s!10566) (c!177258 lt!359419)))))

(declare-fun b!1058995 () Bool)

(declare-fun res!473377 () Bool)

(assert (=> b!1058995 (=> res!473377 e!672190)))

(assert (=> b!1058995 (= res!473377 (not (isEmpty!6543 (tail!1520 s!10566))))))

(declare-fun b!1058996 () Bool)

(assert (=> b!1058996 (= e!672193 (not lt!359460))))

(declare-fun b!1058997 () Bool)

(assert (=> b!1058997 (= e!672195 e!672192)))

(declare-fun res!473379 () Bool)

(assert (=> b!1058997 (=> (not res!473379) (not e!672192))))

(assert (=> b!1058997 (= res!473379 (not lt!359460))))

(declare-fun b!1058998 () Bool)

(declare-fun res!473376 () Bool)

(assert (=> b!1058998 (=> (not res!473376) (not e!672194))))

(assert (=> b!1058998 (= res!473376 (not call!75914))))

(declare-fun b!1058999 () Bool)

(declare-fun res!473375 () Bool)

(assert (=> b!1058999 (=> res!473375 e!672195)))

(assert (=> b!1058999 (= res!473375 e!672194)))

(declare-fun res!473380 () Bool)

(assert (=> b!1058999 (=> (not res!473380) (not e!672194))))

(assert (=> b!1058999 (= res!473380 lt!359460)))

(declare-fun b!1059000 () Bool)

(assert (=> b!1059000 (= e!672196 (matchR!1447 (derivativeStep!803 lt!359419 (head!1958 s!10566)) (tail!1520 s!10566)))))

(assert (= (and d!300475 c!177365) b!1058987))

(assert (= (and d!300475 (not c!177365)) b!1059000))

(assert (= (and d!300475 c!177363) b!1058993))

(assert (= (and d!300475 (not c!177363)) b!1058992))

(assert (= (and b!1058992 c!177364) b!1058996))

(assert (= (and b!1058992 (not c!177364)) b!1058991))

(assert (= (and b!1058991 (not res!473378)) b!1058999))

(assert (= (and b!1058999 res!473380) b!1058998))

(assert (= (and b!1058998 res!473376) b!1058989))

(assert (= (and b!1058989 res!473373) b!1058994))

(assert (= (and b!1058999 (not res!473375)) b!1058997))

(assert (= (and b!1058997 res!473379) b!1058990))

(assert (= (and b!1058990 (not res!473374)) b!1058995))

(assert (= (and b!1058995 (not res!473377)) b!1058988))

(assert (= (or b!1058993 b!1058990 b!1058998) bm!75909))

(assert (=> b!1058995 m!1220167))

(assert (=> b!1058995 m!1220167))

(assert (=> b!1058995 m!1220169))

(assert (=> bm!75909 m!1220121))

(assert (=> b!1058989 m!1220167))

(assert (=> b!1058989 m!1220167))

(assert (=> b!1058989 m!1220169))

(assert (=> b!1058988 m!1220171))

(declare-fun m!1220219 () Bool)

(assert (=> b!1058987 m!1220219))

(assert (=> b!1059000 m!1220171))

(assert (=> b!1059000 m!1220171))

(declare-fun m!1220221 () Bool)

(assert (=> b!1059000 m!1220221))

(assert (=> b!1059000 m!1220167))

(assert (=> b!1059000 m!1220221))

(assert (=> b!1059000 m!1220167))

(declare-fun m!1220223 () Bool)

(assert (=> b!1059000 m!1220223))

(assert (=> d!300475 m!1220121))

(assert (=> d!300475 m!1220217))

(assert (=> b!1058994 m!1220171))

(assert (=> b!1058538 d!300475))

(declare-fun bm!75920 () Bool)

(declare-fun call!75927 () Regex!2911)

(declare-fun call!75925 () Regex!2911)

(assert (=> bm!75920 (= call!75927 call!75925)))

(declare-fun c!177376 () Bool)

(declare-fun c!177377 () Bool)

(declare-fun bm!75921 () Bool)

(assert (=> bm!75921 (= call!75925 (removeUselessConcat!460 (ite c!177376 (regTwo!6334 (regTwo!6335 r!15766)) (ite c!177377 (regOne!6334 (regTwo!6335 r!15766)) (regOne!6335 (regTwo!6335 r!15766))))))))

(declare-fun b!1059023 () Bool)

(declare-fun e!672214 () Bool)

(declare-fun lt!359463 () Regex!2911)

(assert (=> b!1059023 (= e!672214 (= (nullable!1003 lt!359463) (nullable!1003 (regTwo!6335 r!15766))))))

(declare-fun b!1059024 () Bool)

(declare-fun e!672211 () Regex!2911)

(assert (=> b!1059024 (= e!672211 call!75925)))

(declare-fun b!1059025 () Bool)

(declare-fun e!672212 () Regex!2911)

(declare-fun call!75928 () Regex!2911)

(assert (=> b!1059025 (= e!672212 (Union!2911 call!75927 call!75928))))

(declare-fun b!1059026 () Bool)

(declare-fun e!672209 () Regex!2911)

(assert (=> b!1059026 (= e!672209 (Star!2911 call!75928))))

(declare-fun bm!75922 () Bool)

(declare-fun call!75926 () Regex!2911)

(assert (=> bm!75922 (= call!75928 call!75926)))

(declare-fun bm!75923 () Bool)

(declare-fun call!75929 () Regex!2911)

(assert (=> bm!75923 (= call!75926 call!75929)))

(declare-fun b!1059027 () Bool)

(declare-fun e!672213 () Regex!2911)

(assert (=> b!1059027 (= e!672213 e!672212)))

(declare-fun c!177379 () Bool)

(assert (=> b!1059027 (= c!177379 ((_ is Union!2911) (regTwo!6335 r!15766)))))

(declare-fun b!1059028 () Bool)

(declare-fun e!672210 () Regex!2911)

(assert (=> b!1059028 (= e!672210 call!75929)))

(declare-fun b!1059029 () Bool)

(assert (=> b!1059029 (= e!672213 (Concat!4744 call!75927 call!75926))))

(declare-fun b!1059030 () Bool)

(assert (=> b!1059030 (= e!672211 e!672210)))

(declare-fun c!177378 () Bool)

(assert (=> b!1059030 (= c!177378 (and ((_ is Concat!4744) (regTwo!6335 r!15766)) ((_ is EmptyExpr!2911) (regTwo!6334 (regTwo!6335 r!15766)))))))

(declare-fun d!300477 () Bool)

(assert (=> d!300477 e!672214))

(declare-fun res!473383 () Bool)

(assert (=> d!300477 (=> (not res!473383) (not e!672214))))

(assert (=> d!300477 (= res!473383 (validRegex!1380 lt!359463))))

(assert (=> d!300477 (= lt!359463 e!672211)))

(assert (=> d!300477 (= c!177376 (and ((_ is Concat!4744) (regTwo!6335 r!15766)) ((_ is EmptyExpr!2911) (regOne!6334 (regTwo!6335 r!15766)))))))

(assert (=> d!300477 (validRegex!1380 (regTwo!6335 r!15766))))

(assert (=> d!300477 (= (removeUselessConcat!460 (regTwo!6335 r!15766)) lt!359463)))

(declare-fun b!1059031 () Bool)

(assert (=> b!1059031 (= c!177377 ((_ is Concat!4744) (regTwo!6335 r!15766)))))

(assert (=> b!1059031 (= e!672210 e!672213)))

(declare-fun b!1059032 () Bool)

(declare-fun c!177380 () Bool)

(assert (=> b!1059032 (= c!177380 ((_ is Star!2911) (regTwo!6335 r!15766)))))

(assert (=> b!1059032 (= e!672212 e!672209)))

(declare-fun b!1059033 () Bool)

(assert (=> b!1059033 (= e!672209 (regTwo!6335 r!15766))))

(declare-fun bm!75924 () Bool)

(assert (=> bm!75924 (= call!75929 (removeUselessConcat!460 (ite c!177378 (regOne!6334 (regTwo!6335 r!15766)) (ite c!177377 (regTwo!6334 (regTwo!6335 r!15766)) (ite c!177379 (regTwo!6335 (regTwo!6335 r!15766)) (reg!3240 (regTwo!6335 r!15766)))))))))

(assert (= (and d!300477 c!177376) b!1059024))

(assert (= (and d!300477 (not c!177376)) b!1059030))

(assert (= (and b!1059030 c!177378) b!1059028))

(assert (= (and b!1059030 (not c!177378)) b!1059031))

(assert (= (and b!1059031 c!177377) b!1059029))

(assert (= (and b!1059031 (not c!177377)) b!1059027))

(assert (= (and b!1059027 c!177379) b!1059025))

(assert (= (and b!1059027 (not c!177379)) b!1059032))

(assert (= (and b!1059032 c!177380) b!1059026))

(assert (= (and b!1059032 (not c!177380)) b!1059033))

(assert (= (or b!1059025 b!1059026) bm!75922))

(assert (= (or b!1059029 bm!75922) bm!75923))

(assert (= (or b!1059029 b!1059025) bm!75920))

(assert (= (or b!1059028 bm!75923) bm!75924))

(assert (= (or b!1059024 bm!75920) bm!75921))

(assert (= (and d!300477 res!473383) b!1059023))

(declare-fun m!1220225 () Bool)

(assert (=> bm!75921 m!1220225))

(declare-fun m!1220227 () Bool)

(assert (=> b!1059023 m!1220227))

(declare-fun m!1220229 () Bool)

(assert (=> b!1059023 m!1220229))

(declare-fun m!1220231 () Bool)

(assert (=> d!300477 m!1220231))

(assert (=> d!300477 m!1220033))

(declare-fun m!1220233 () Bool)

(assert (=> bm!75924 m!1220233))

(assert (=> b!1058538 d!300477))

(declare-fun bm!75925 () Bool)

(declare-fun call!75932 () Regex!2911)

(declare-fun call!75930 () Regex!2911)

(assert (=> bm!75925 (= call!75932 call!75930)))

(declare-fun c!177381 () Bool)

(declare-fun c!177382 () Bool)

(declare-fun bm!75926 () Bool)

(assert (=> bm!75926 (= call!75930 (removeUselessConcat!460 (ite c!177381 (regTwo!6334 (regOne!6335 r!15766)) (ite c!177382 (regOne!6334 (regOne!6335 r!15766)) (regOne!6335 (regOne!6335 r!15766))))))))

(declare-fun b!1059034 () Bool)

(declare-fun e!672220 () Bool)

(declare-fun lt!359464 () Regex!2911)

(assert (=> b!1059034 (= e!672220 (= (nullable!1003 lt!359464) (nullable!1003 (regOne!6335 r!15766))))))

(declare-fun b!1059035 () Bool)

(declare-fun e!672217 () Regex!2911)

(assert (=> b!1059035 (= e!672217 call!75930)))

(declare-fun b!1059036 () Bool)

(declare-fun e!672218 () Regex!2911)

(declare-fun call!75933 () Regex!2911)

(assert (=> b!1059036 (= e!672218 (Union!2911 call!75932 call!75933))))

(declare-fun b!1059037 () Bool)

(declare-fun e!672215 () Regex!2911)

(assert (=> b!1059037 (= e!672215 (Star!2911 call!75933))))

(declare-fun bm!75927 () Bool)

(declare-fun call!75931 () Regex!2911)

(assert (=> bm!75927 (= call!75933 call!75931)))

(declare-fun bm!75928 () Bool)

(declare-fun call!75934 () Regex!2911)

(assert (=> bm!75928 (= call!75931 call!75934)))

(declare-fun b!1059038 () Bool)

(declare-fun e!672219 () Regex!2911)

(assert (=> b!1059038 (= e!672219 e!672218)))

(declare-fun c!177384 () Bool)

(assert (=> b!1059038 (= c!177384 ((_ is Union!2911) (regOne!6335 r!15766)))))

(declare-fun b!1059039 () Bool)

(declare-fun e!672216 () Regex!2911)

(assert (=> b!1059039 (= e!672216 call!75934)))

(declare-fun b!1059040 () Bool)

(assert (=> b!1059040 (= e!672219 (Concat!4744 call!75932 call!75931))))

(declare-fun b!1059041 () Bool)

(assert (=> b!1059041 (= e!672217 e!672216)))

(declare-fun c!177383 () Bool)

(assert (=> b!1059041 (= c!177383 (and ((_ is Concat!4744) (regOne!6335 r!15766)) ((_ is EmptyExpr!2911) (regTwo!6334 (regOne!6335 r!15766)))))))

(declare-fun d!300479 () Bool)

(assert (=> d!300479 e!672220))

(declare-fun res!473384 () Bool)

(assert (=> d!300479 (=> (not res!473384) (not e!672220))))

(assert (=> d!300479 (= res!473384 (validRegex!1380 lt!359464))))

(assert (=> d!300479 (= lt!359464 e!672217)))

(assert (=> d!300479 (= c!177381 (and ((_ is Concat!4744) (regOne!6335 r!15766)) ((_ is EmptyExpr!2911) (regOne!6334 (regOne!6335 r!15766)))))))

(assert (=> d!300479 (validRegex!1380 (regOne!6335 r!15766))))

(assert (=> d!300479 (= (removeUselessConcat!460 (regOne!6335 r!15766)) lt!359464)))

(declare-fun b!1059042 () Bool)

(assert (=> b!1059042 (= c!177382 ((_ is Concat!4744) (regOne!6335 r!15766)))))

(assert (=> b!1059042 (= e!672216 e!672219)))

(declare-fun b!1059043 () Bool)

(declare-fun c!177385 () Bool)

(assert (=> b!1059043 (= c!177385 ((_ is Star!2911) (regOne!6335 r!15766)))))

(assert (=> b!1059043 (= e!672218 e!672215)))

(declare-fun b!1059044 () Bool)

(assert (=> b!1059044 (= e!672215 (regOne!6335 r!15766))))

(declare-fun bm!75929 () Bool)

(assert (=> bm!75929 (= call!75934 (removeUselessConcat!460 (ite c!177383 (regOne!6334 (regOne!6335 r!15766)) (ite c!177382 (regTwo!6334 (regOne!6335 r!15766)) (ite c!177384 (regTwo!6335 (regOne!6335 r!15766)) (reg!3240 (regOne!6335 r!15766)))))))))

(assert (= (and d!300479 c!177381) b!1059035))

(assert (= (and d!300479 (not c!177381)) b!1059041))

(assert (= (and b!1059041 c!177383) b!1059039))

(assert (= (and b!1059041 (not c!177383)) b!1059042))

(assert (= (and b!1059042 c!177382) b!1059040))

(assert (= (and b!1059042 (not c!177382)) b!1059038))

(assert (= (and b!1059038 c!177384) b!1059036))

(assert (= (and b!1059038 (not c!177384)) b!1059043))

(assert (= (and b!1059043 c!177385) b!1059037))

(assert (= (and b!1059043 (not c!177385)) b!1059044))

(assert (= (or b!1059036 b!1059037) bm!75927))

(assert (= (or b!1059040 bm!75927) bm!75928))

(assert (= (or b!1059040 b!1059036) bm!75925))

(assert (= (or b!1059039 bm!75928) bm!75929))

(assert (= (or b!1059035 bm!75925) bm!75926))

(assert (= (and d!300479 res!473384) b!1059034))

(declare-fun m!1220235 () Bool)

(assert (=> bm!75926 m!1220235))

(declare-fun m!1220237 () Bool)

(assert (=> b!1059034 m!1220237))

(assert (=> b!1059034 m!1220187))

(declare-fun m!1220239 () Bool)

(assert (=> d!300479 m!1220239))

(assert (=> d!300479 m!1220041))

(declare-fun m!1220241 () Bool)

(assert (=> bm!75929 m!1220241))

(assert (=> b!1058538 d!300479))

(declare-fun b!1059045 () Bool)

(declare-fun e!672227 () Bool)

(declare-fun e!672221 () Bool)

(assert (=> b!1059045 (= e!672227 e!672221)))

(declare-fun c!177387 () Bool)

(assert (=> b!1059045 (= c!177387 ((_ is Union!2911) (regTwo!6335 r!15766)))))

(declare-fun b!1059046 () Bool)

(declare-fun res!473385 () Bool)

(declare-fun e!672222 () Bool)

(assert (=> b!1059046 (=> (not res!473385) (not e!672222))))

(declare-fun call!75935 () Bool)

(assert (=> b!1059046 (= res!473385 call!75935)))

(assert (=> b!1059046 (= e!672221 e!672222)))

(declare-fun b!1059047 () Bool)

(declare-fun e!672224 () Bool)

(assert (=> b!1059047 (= e!672227 e!672224)))

(declare-fun res!473386 () Bool)

(assert (=> b!1059047 (= res!473386 (not (nullable!1003 (reg!3240 (regTwo!6335 r!15766)))))))

(assert (=> b!1059047 (=> (not res!473386) (not e!672224))))

(declare-fun b!1059048 () Bool)

(declare-fun res!473389 () Bool)

(declare-fun e!672223 () Bool)

(assert (=> b!1059048 (=> res!473389 e!672223)))

(assert (=> b!1059048 (= res!473389 (not ((_ is Concat!4744) (regTwo!6335 r!15766))))))

(assert (=> b!1059048 (= e!672221 e!672223)))

(declare-fun b!1059049 () Bool)

(declare-fun e!672226 () Bool)

(declare-fun call!75936 () Bool)

(assert (=> b!1059049 (= e!672226 call!75936)))

(declare-fun d!300481 () Bool)

(declare-fun res!473387 () Bool)

(declare-fun e!672225 () Bool)

(assert (=> d!300481 (=> res!473387 e!672225)))

(assert (=> d!300481 (= res!473387 ((_ is ElementMatch!2911) (regTwo!6335 r!15766)))))

(assert (=> d!300481 (= (validRegex!1380 (regTwo!6335 r!15766)) e!672225)))

(declare-fun bm!75930 () Bool)

(assert (=> bm!75930 (= call!75935 (validRegex!1380 (ite c!177387 (regOne!6335 (regTwo!6335 r!15766)) (regOne!6334 (regTwo!6335 r!15766)))))))

(declare-fun b!1059050 () Bool)

(declare-fun call!75937 () Bool)

(assert (=> b!1059050 (= e!672224 call!75937)))

(declare-fun b!1059051 () Bool)

(assert (=> b!1059051 (= e!672222 call!75936)))

(declare-fun b!1059052 () Bool)

(assert (=> b!1059052 (= e!672225 e!672227)))

(declare-fun c!177386 () Bool)

(assert (=> b!1059052 (= c!177386 ((_ is Star!2911) (regTwo!6335 r!15766)))))

(declare-fun bm!75931 () Bool)

(assert (=> bm!75931 (= call!75937 (validRegex!1380 (ite c!177386 (reg!3240 (regTwo!6335 r!15766)) (ite c!177387 (regTwo!6335 (regTwo!6335 r!15766)) (regTwo!6334 (regTwo!6335 r!15766))))))))

(declare-fun b!1059053 () Bool)

(assert (=> b!1059053 (= e!672223 e!672226)))

(declare-fun res!473388 () Bool)

(assert (=> b!1059053 (=> (not res!473388) (not e!672226))))

(assert (=> b!1059053 (= res!473388 call!75935)))

(declare-fun bm!75932 () Bool)

(assert (=> bm!75932 (= call!75936 call!75937)))

(assert (= (and d!300481 (not res!473387)) b!1059052))

(assert (= (and b!1059052 c!177386) b!1059047))

(assert (= (and b!1059052 (not c!177386)) b!1059045))

(assert (= (and b!1059047 res!473386) b!1059050))

(assert (= (and b!1059045 c!177387) b!1059046))

(assert (= (and b!1059045 (not c!177387)) b!1059048))

(assert (= (and b!1059046 res!473385) b!1059051))

(assert (= (and b!1059048 (not res!473389)) b!1059053))

(assert (= (and b!1059053 res!473388) b!1059049))

(assert (= (or b!1059051 b!1059049) bm!75932))

(assert (= (or b!1059046 b!1059053) bm!75930))

(assert (= (or b!1059050 bm!75932) bm!75931))

(declare-fun m!1220243 () Bool)

(assert (=> b!1059047 m!1220243))

(declare-fun m!1220245 () Bool)

(assert (=> bm!75930 m!1220245))

(declare-fun m!1220247 () Bool)

(assert (=> bm!75931 m!1220247))

(assert (=> b!1058535 d!300481))

(declare-fun b!1059054 () Bool)

(declare-fun e!672234 () Bool)

(declare-fun e!672228 () Bool)

(assert (=> b!1059054 (= e!672234 e!672228)))

(declare-fun c!177389 () Bool)

(assert (=> b!1059054 (= c!177389 ((_ is Union!2911) r!15766))))

(declare-fun b!1059055 () Bool)

(declare-fun res!473390 () Bool)

(declare-fun e!672229 () Bool)

(assert (=> b!1059055 (=> (not res!473390) (not e!672229))))

(declare-fun call!75938 () Bool)

(assert (=> b!1059055 (= res!473390 call!75938)))

(assert (=> b!1059055 (= e!672228 e!672229)))

(declare-fun b!1059056 () Bool)

(declare-fun e!672231 () Bool)

(assert (=> b!1059056 (= e!672234 e!672231)))

(declare-fun res!473391 () Bool)

(assert (=> b!1059056 (= res!473391 (not (nullable!1003 (reg!3240 r!15766))))))

(assert (=> b!1059056 (=> (not res!473391) (not e!672231))))

(declare-fun b!1059057 () Bool)

(declare-fun res!473394 () Bool)

(declare-fun e!672230 () Bool)

(assert (=> b!1059057 (=> res!473394 e!672230)))

(assert (=> b!1059057 (= res!473394 (not ((_ is Concat!4744) r!15766)))))

(assert (=> b!1059057 (= e!672228 e!672230)))

(declare-fun b!1059058 () Bool)

(declare-fun e!672233 () Bool)

(declare-fun call!75939 () Bool)

(assert (=> b!1059058 (= e!672233 call!75939)))

(declare-fun d!300483 () Bool)

(declare-fun res!473392 () Bool)

(declare-fun e!672232 () Bool)

(assert (=> d!300483 (=> res!473392 e!672232)))

(assert (=> d!300483 (= res!473392 ((_ is ElementMatch!2911) r!15766))))

(assert (=> d!300483 (= (validRegex!1380 r!15766) e!672232)))

(declare-fun bm!75933 () Bool)

(assert (=> bm!75933 (= call!75938 (validRegex!1380 (ite c!177389 (regOne!6335 r!15766) (regOne!6334 r!15766))))))

(declare-fun b!1059059 () Bool)

(declare-fun call!75940 () Bool)

(assert (=> b!1059059 (= e!672231 call!75940)))

(declare-fun b!1059060 () Bool)

(assert (=> b!1059060 (= e!672229 call!75939)))

(declare-fun b!1059061 () Bool)

(assert (=> b!1059061 (= e!672232 e!672234)))

(declare-fun c!177388 () Bool)

(assert (=> b!1059061 (= c!177388 ((_ is Star!2911) r!15766))))

(declare-fun bm!75934 () Bool)

(assert (=> bm!75934 (= call!75940 (validRegex!1380 (ite c!177388 (reg!3240 r!15766) (ite c!177389 (regTwo!6335 r!15766) (regTwo!6334 r!15766)))))))

(declare-fun b!1059062 () Bool)

(assert (=> b!1059062 (= e!672230 e!672233)))

(declare-fun res!473393 () Bool)

(assert (=> b!1059062 (=> (not res!473393) (not e!672233))))

(assert (=> b!1059062 (= res!473393 call!75938)))

(declare-fun bm!75935 () Bool)

(assert (=> bm!75935 (= call!75939 call!75940)))

(assert (= (and d!300483 (not res!473392)) b!1059061))

(assert (= (and b!1059061 c!177388) b!1059056))

(assert (= (and b!1059061 (not c!177388)) b!1059054))

(assert (= (and b!1059056 res!473391) b!1059059))

(assert (= (and b!1059054 c!177389) b!1059055))

(assert (= (and b!1059054 (not c!177389)) b!1059057))

(assert (= (and b!1059055 res!473390) b!1059060))

(assert (= (and b!1059057 (not res!473394)) b!1059062))

(assert (= (and b!1059062 res!473393) b!1059058))

(assert (= (or b!1059060 b!1059058) bm!75935))

(assert (= (or b!1059055 b!1059062) bm!75933))

(assert (= (or b!1059059 bm!75935) bm!75934))

(declare-fun m!1220249 () Bool)

(assert (=> b!1059056 m!1220249))

(declare-fun m!1220251 () Bool)

(assert (=> bm!75933 m!1220251))

(declare-fun m!1220253 () Bool)

(assert (=> bm!75934 m!1220253))

(assert (=> start!91062 d!300483))

(declare-fun b!1059063 () Bool)

(declare-fun e!672241 () Bool)

(assert (=> b!1059063 (= e!672241 (nullable!1003 lt!359415))))

(declare-fun b!1059064 () Bool)

(declare-fun e!672235 () Bool)

(assert (=> b!1059064 (= e!672235 (not (= (head!1958 s!10566) (c!177258 lt!359415))))))

(declare-fun b!1059065 () Bool)

(declare-fun res!473395 () Bool)

(declare-fun e!672239 () Bool)

(assert (=> b!1059065 (=> (not res!473395) (not e!672239))))

(assert (=> b!1059065 (= res!473395 (isEmpty!6543 (tail!1520 s!10566)))))

(declare-fun bm!75936 () Bool)

(declare-fun call!75941 () Bool)

(assert (=> bm!75936 (= call!75941 (isEmpty!6543 s!10566))))

(declare-fun b!1059066 () Bool)

(declare-fun e!672237 () Bool)

(assert (=> b!1059066 (= e!672237 e!672235)))

(declare-fun res!473396 () Bool)

(assert (=> b!1059066 (=> res!473396 e!672235)))

(assert (=> b!1059066 (= res!473396 call!75941)))

(declare-fun b!1059067 () Bool)

(declare-fun res!473400 () Bool)

(declare-fun e!672240 () Bool)

(assert (=> b!1059067 (=> res!473400 e!672240)))

(assert (=> b!1059067 (= res!473400 (not ((_ is ElementMatch!2911) lt!359415)))))

(declare-fun e!672238 () Bool)

(assert (=> b!1059067 (= e!672238 e!672240)))

(declare-fun b!1059068 () Bool)

(declare-fun e!672236 () Bool)

(assert (=> b!1059068 (= e!672236 e!672238)))

(declare-fun c!177391 () Bool)

(assert (=> b!1059068 (= c!177391 ((_ is EmptyLang!2911) lt!359415))))

(declare-fun b!1059069 () Bool)

(declare-fun lt!359465 () Bool)

(assert (=> b!1059069 (= e!672236 (= lt!359465 call!75941))))

(declare-fun d!300485 () Bool)

(assert (=> d!300485 e!672236))

(declare-fun c!177390 () Bool)

(assert (=> d!300485 (= c!177390 ((_ is EmptyExpr!2911) lt!359415))))

(assert (=> d!300485 (= lt!359465 e!672241)))

(declare-fun c!177392 () Bool)

(assert (=> d!300485 (= c!177392 (isEmpty!6543 s!10566))))

(assert (=> d!300485 (validRegex!1380 lt!359415)))

(assert (=> d!300485 (= (matchR!1447 lt!359415 s!10566) lt!359465)))

(declare-fun b!1059070 () Bool)

(assert (=> b!1059070 (= e!672239 (= (head!1958 s!10566) (c!177258 lt!359415)))))

(declare-fun b!1059071 () Bool)

(declare-fun res!473399 () Bool)

(assert (=> b!1059071 (=> res!473399 e!672235)))

(assert (=> b!1059071 (= res!473399 (not (isEmpty!6543 (tail!1520 s!10566))))))

(declare-fun b!1059072 () Bool)

(assert (=> b!1059072 (= e!672238 (not lt!359465))))

(declare-fun b!1059073 () Bool)

(assert (=> b!1059073 (= e!672240 e!672237)))

(declare-fun res!473401 () Bool)

(assert (=> b!1059073 (=> (not res!473401) (not e!672237))))

(assert (=> b!1059073 (= res!473401 (not lt!359465))))

(declare-fun b!1059074 () Bool)

(declare-fun res!473398 () Bool)

(assert (=> b!1059074 (=> (not res!473398) (not e!672239))))

(assert (=> b!1059074 (= res!473398 (not call!75941))))

(declare-fun b!1059075 () Bool)

(declare-fun res!473397 () Bool)

(assert (=> b!1059075 (=> res!473397 e!672240)))

(assert (=> b!1059075 (= res!473397 e!672239)))

(declare-fun res!473402 () Bool)

(assert (=> b!1059075 (=> (not res!473402) (not e!672239))))

(assert (=> b!1059075 (= res!473402 lt!359465)))

(declare-fun b!1059076 () Bool)

(assert (=> b!1059076 (= e!672241 (matchR!1447 (derivativeStep!803 lt!359415 (head!1958 s!10566)) (tail!1520 s!10566)))))

(assert (= (and d!300485 c!177392) b!1059063))

(assert (= (and d!300485 (not c!177392)) b!1059076))

(assert (= (and d!300485 c!177390) b!1059069))

(assert (= (and d!300485 (not c!177390)) b!1059068))

(assert (= (and b!1059068 c!177391) b!1059072))

(assert (= (and b!1059068 (not c!177391)) b!1059067))

(assert (= (and b!1059067 (not res!473400)) b!1059075))

(assert (= (and b!1059075 res!473402) b!1059074))

(assert (= (and b!1059074 res!473398) b!1059065))

(assert (= (and b!1059065 res!473395) b!1059070))

(assert (= (and b!1059075 (not res!473397)) b!1059073))

(assert (= (and b!1059073 res!473401) b!1059066))

(assert (= (and b!1059066 (not res!473396)) b!1059071))

(assert (= (and b!1059071 (not res!473399)) b!1059064))

(assert (= (or b!1059069 b!1059066 b!1059074) bm!75936))

(assert (=> b!1059071 m!1220167))

(assert (=> b!1059071 m!1220167))

(assert (=> b!1059071 m!1220169))

(assert (=> bm!75936 m!1220121))

(assert (=> b!1059065 m!1220167))

(assert (=> b!1059065 m!1220167))

(assert (=> b!1059065 m!1220169))

(assert (=> b!1059064 m!1220171))

(declare-fun m!1220255 () Bool)

(assert (=> b!1059063 m!1220255))

(assert (=> b!1059076 m!1220171))

(assert (=> b!1059076 m!1220171))

(declare-fun m!1220257 () Bool)

(assert (=> b!1059076 m!1220257))

(assert (=> b!1059076 m!1220167))

(assert (=> b!1059076 m!1220257))

(assert (=> b!1059076 m!1220167))

(declare-fun m!1220259 () Bool)

(assert (=> b!1059076 m!1220259))

(assert (=> d!300485 m!1220121))

(assert (=> d!300485 m!1220207))

(assert (=> b!1059070 m!1220171))

(assert (=> b!1058529 d!300485))

(declare-fun b!1059088 () Bool)

(declare-fun e!672244 () Bool)

(declare-fun tp!318393 () Bool)

(declare-fun tp!318391 () Bool)

(assert (=> b!1059088 (= e!672244 (and tp!318393 tp!318391))))

(declare-fun b!1059090 () Bool)

(declare-fun tp!318392 () Bool)

(declare-fun tp!318390 () Bool)

(assert (=> b!1059090 (= e!672244 (and tp!318392 tp!318390))))

(declare-fun b!1059087 () Bool)

(assert (=> b!1059087 (= e!672244 tp_is_empty!5465)))

(assert (=> b!1058531 (= tp!318336 e!672244)))

(declare-fun b!1059089 () Bool)

(declare-fun tp!318389 () Bool)

(assert (=> b!1059089 (= e!672244 tp!318389)))

(assert (= (and b!1058531 ((_ is ElementMatch!2911) (regOne!6335 r!15766))) b!1059087))

(assert (= (and b!1058531 ((_ is Concat!4744) (regOne!6335 r!15766))) b!1059088))

(assert (= (and b!1058531 ((_ is Star!2911) (regOne!6335 r!15766))) b!1059089))

(assert (= (and b!1058531 ((_ is Union!2911) (regOne!6335 r!15766))) b!1059090))

(declare-fun b!1059092 () Bool)

(declare-fun e!672245 () Bool)

(declare-fun tp!318398 () Bool)

(declare-fun tp!318396 () Bool)

(assert (=> b!1059092 (= e!672245 (and tp!318398 tp!318396))))

(declare-fun b!1059094 () Bool)

(declare-fun tp!318397 () Bool)

(declare-fun tp!318395 () Bool)

(assert (=> b!1059094 (= e!672245 (and tp!318397 tp!318395))))

(declare-fun b!1059091 () Bool)

(assert (=> b!1059091 (= e!672245 tp_is_empty!5465)))

(assert (=> b!1058531 (= tp!318337 e!672245)))

(declare-fun b!1059093 () Bool)

(declare-fun tp!318394 () Bool)

(assert (=> b!1059093 (= e!672245 tp!318394)))

(assert (= (and b!1058531 ((_ is ElementMatch!2911) (regTwo!6335 r!15766))) b!1059091))

(assert (= (and b!1058531 ((_ is Concat!4744) (regTwo!6335 r!15766))) b!1059092))

(assert (= (and b!1058531 ((_ is Star!2911) (regTwo!6335 r!15766))) b!1059093))

(assert (= (and b!1058531 ((_ is Union!2911) (regTwo!6335 r!15766))) b!1059094))

(declare-fun b!1059099 () Bool)

(declare-fun e!672248 () Bool)

(declare-fun tp!318401 () Bool)

(assert (=> b!1059099 (= e!672248 (and tp_is_empty!5465 tp!318401))))

(assert (=> b!1058532 (= tp!318338 e!672248)))

(assert (= (and b!1058532 ((_ is Cons!10125) (t!101187 s!10566))) b!1059099))

(declare-fun b!1059101 () Bool)

(declare-fun e!672249 () Bool)

(declare-fun tp!318406 () Bool)

(declare-fun tp!318404 () Bool)

(assert (=> b!1059101 (= e!672249 (and tp!318406 tp!318404))))

(declare-fun b!1059103 () Bool)

(declare-fun tp!318405 () Bool)

(declare-fun tp!318403 () Bool)

(assert (=> b!1059103 (= e!672249 (and tp!318405 tp!318403))))

(declare-fun b!1059100 () Bool)

(assert (=> b!1059100 (= e!672249 tp_is_empty!5465)))

(assert (=> b!1058539 (= tp!318339 e!672249)))

(declare-fun b!1059102 () Bool)

(declare-fun tp!318402 () Bool)

(assert (=> b!1059102 (= e!672249 tp!318402)))

(assert (= (and b!1058539 ((_ is ElementMatch!2911) (reg!3240 r!15766))) b!1059100))

(assert (= (and b!1058539 ((_ is Concat!4744) (reg!3240 r!15766))) b!1059101))

(assert (= (and b!1058539 ((_ is Star!2911) (reg!3240 r!15766))) b!1059102))

(assert (= (and b!1058539 ((_ is Union!2911) (reg!3240 r!15766))) b!1059103))

(declare-fun b!1059105 () Bool)

(declare-fun e!672250 () Bool)

(declare-fun tp!318411 () Bool)

(declare-fun tp!318409 () Bool)

(assert (=> b!1059105 (= e!672250 (and tp!318411 tp!318409))))

(declare-fun b!1059107 () Bool)

(declare-fun tp!318410 () Bool)

(declare-fun tp!318408 () Bool)

(assert (=> b!1059107 (= e!672250 (and tp!318410 tp!318408))))

(declare-fun b!1059104 () Bool)

(assert (=> b!1059104 (= e!672250 tp_is_empty!5465)))

(assert (=> b!1058534 (= tp!318335 e!672250)))

(declare-fun b!1059106 () Bool)

(declare-fun tp!318407 () Bool)

(assert (=> b!1059106 (= e!672250 tp!318407)))

(assert (= (and b!1058534 ((_ is ElementMatch!2911) (regOne!6334 r!15766))) b!1059104))

(assert (= (and b!1058534 ((_ is Concat!4744) (regOne!6334 r!15766))) b!1059105))

(assert (= (and b!1058534 ((_ is Star!2911) (regOne!6334 r!15766))) b!1059106))

(assert (= (and b!1058534 ((_ is Union!2911) (regOne!6334 r!15766))) b!1059107))

(declare-fun b!1059109 () Bool)

(declare-fun e!672251 () Bool)

(declare-fun tp!318416 () Bool)

(declare-fun tp!318414 () Bool)

(assert (=> b!1059109 (= e!672251 (and tp!318416 tp!318414))))

(declare-fun b!1059111 () Bool)

(declare-fun tp!318415 () Bool)

(declare-fun tp!318413 () Bool)

(assert (=> b!1059111 (= e!672251 (and tp!318415 tp!318413))))

(declare-fun b!1059108 () Bool)

(assert (=> b!1059108 (= e!672251 tp_is_empty!5465)))

(assert (=> b!1058534 (= tp!318340 e!672251)))

(declare-fun b!1059110 () Bool)

(declare-fun tp!318412 () Bool)

(assert (=> b!1059110 (= e!672251 tp!318412)))

(assert (= (and b!1058534 ((_ is ElementMatch!2911) (regTwo!6334 r!15766))) b!1059108))

(assert (= (and b!1058534 ((_ is Concat!4744) (regTwo!6334 r!15766))) b!1059109))

(assert (= (and b!1058534 ((_ is Star!2911) (regTwo!6334 r!15766))) b!1059110))

(assert (= (and b!1058534 ((_ is Union!2911) (regTwo!6334 r!15766))) b!1059111))

(check-sat (not b!1059111) (not b!1058956) (not bm!75929) (not b!1059109) (not bm!75863) (not bm!75921) (not bm!75909) (not b!1059110) (not b!1059064) (not b!1059103) (not b!1058878) (not bm!75936) (not b!1058883) (not bm!75895) (not b!1058975) (not b!1058963) (not bm!75930) (not d!300465) (not b!1058757) (not b!1058935) (not b!1058988) (not d!300473) (not b!1058969) (not b!1059099) (not b!1058871) (not b!1058987) (not b!1059056) (not b!1059070) (not b!1059093) (not b!1059088) (not bm!75906) (not b!1058958) (not bm!75907) (not b!1058949) (not b!1059106) (not d!300479) (not b!1059089) (not d!300475) (not b!1058763) (not b!1059102) (not bm!75903) (not d!300467) (not d!300445) (not b!1059034) (not b!1058944) (not b!1058943) (not d!300485) (not b!1058872) (not b!1059090) (not bm!75902) (not d!300477) (not bm!75926) (not b!1059023) (not bm!75924) (not b!1059063) (not d!300459) (not b!1058983) (not b!1058950) (not b!1058995) (not b!1058957) (not b!1059092) (not bm!75933) (not d!300469) (not bm!75931) (not bm!75934) (not b!1059071) (not bm!75908) (not b!1059094) (not b!1059101) (not b!1058964) (not b!1058942) (not b!1058870) (not bm!75905) (not b!1058877) (not b!1058989) (not b!1059000) (not b!1059065) (not d!300463) (not b!1058994) (not b!1059047) (not b!1058955) (not b!1058977) (not b!1059105) (not b!1059107) (not bm!75862) tp_is_empty!5465 (not b!1058974) (not b!1059076))
(check-sat)
