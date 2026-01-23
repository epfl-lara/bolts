; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!292904 () Bool)

(assert start!292904)

(declare-fun b!3071982 () Bool)

(declare-fun e!1922491 () Bool)

(declare-fun tp!969008 () Bool)

(declare-fun tp!969006 () Bool)

(assert (=> b!3071982 (= e!1922491 (and tp!969008 tp!969006))))

(declare-fun b!3071983 () Bool)

(declare-fun e!1922490 () Bool)

(declare-fun tp_is_empty!16597 () Bool)

(declare-fun tp!969007 () Bool)

(assert (=> b!3071983 (= e!1922490 (and tp_is_empty!16597 tp!969007))))

(declare-fun b!3071984 () Bool)

(declare-fun tp!969009 () Bool)

(declare-fun tp!969005 () Bool)

(assert (=> b!3071984 (= e!1922491 (and tp!969009 tp!969005))))

(declare-fun b!3071985 () Bool)

(declare-fun e!1922493 () Bool)

(declare-datatypes ((C!19220 0))(
  ( (C!19221 (val!11646 Int)) )
))
(declare-datatypes ((List!35382 0))(
  ( (Nil!35258) (Cons!35258 (h!40678 C!19220) (t!234447 List!35382)) )
))
(declare-fun s!11993 () List!35382)

(declare-fun isPrefix!2764 (List!35382 List!35382) Bool)

(assert (=> b!3071985 (= e!1922493 (isPrefix!2764 Nil!35258 s!11993))))

(declare-fun b!3071986 () Bool)

(declare-fun tp!969004 () Bool)

(assert (=> b!3071986 (= e!1922491 tp!969004)))

(declare-fun b!3071987 () Bool)

(declare-fun res!1260725 () Bool)

(declare-fun e!1922494 () Bool)

(assert (=> b!3071987 (=> res!1260725 e!1922494)))

(declare-fun isEmpty!19583 (List!35382) Bool)

(assert (=> b!3071987 (= res!1260725 (isEmpty!19583 s!11993))))

(declare-fun b!3071988 () Bool)

(declare-fun e!1922492 () Bool)

(assert (=> b!3071988 (= e!1922492 e!1922493)))

(declare-fun res!1260729 () Bool)

(assert (=> b!3071988 (=> res!1260729 e!1922493)))

(declare-fun lt!1051718 () Bool)

(assert (=> b!3071988 (= res!1260729 (not lt!1051718))))

(declare-datatypes ((Regex!9517 0))(
  ( (ElementMatch!9517 (c!510833 C!19220)) (Concat!14838 (regOne!19546 Regex!9517) (regTwo!19546 Regex!9517)) (EmptyExpr!9517) (Star!9517 (reg!9846 Regex!9517)) (EmptyLang!9517) (Union!9517 (regOne!19547 Regex!9517) (regTwo!19547 Regex!9517)) )
))
(declare-fun r!17423 () Regex!9517)

(declare-fun lt!1051724 () Regex!9517)

(declare-fun matchR!4399 (Regex!9517 List!35382) Bool)

(assert (=> b!3071988 (= (matchR!4399 (regTwo!19546 r!17423) Nil!35258) (matchR!4399 lt!1051724 Nil!35258))))

(declare-datatypes ((Unit!49473 0))(
  ( (Unit!49474) )
))
(declare-fun lt!1051723 () Unit!49473)

(declare-fun lemmaSimplifySound!298 (Regex!9517 List!35382) Unit!49473)

(assert (=> b!3071988 (= lt!1051723 (lemmaSimplifySound!298 (regTwo!19546 r!17423) Nil!35258))))

(declare-fun lt!1051719 () Regex!9517)

(assert (=> b!3071988 (= lt!1051718 (matchR!4399 lt!1051719 s!11993))))

(assert (=> b!3071988 (= lt!1051718 (matchR!4399 (regOne!19546 r!17423) s!11993))))

(declare-fun lt!1051722 () Unit!49473)

(assert (=> b!3071988 (= lt!1051722 (lemmaSimplifySound!298 (regOne!19546 r!17423) s!11993))))

(declare-fun res!1260722 () Bool)

(declare-fun e!1922495 () Bool)

(assert (=> start!292904 (=> (not res!1260722) (not e!1922495))))

(declare-fun validRegex!4250 (Regex!9517) Bool)

(assert (=> start!292904 (= res!1260722 (validRegex!4250 r!17423))))

(assert (=> start!292904 e!1922495))

(assert (=> start!292904 e!1922491))

(assert (=> start!292904 e!1922490))

(declare-fun b!3071989 () Bool)

(declare-fun res!1260732 () Bool)

(assert (=> b!3071989 (=> res!1260732 e!1922493)))

(assert (=> b!3071989 (= res!1260732 (not (validRegex!4250 (regOne!19546 r!17423))))))

(declare-fun b!3071990 () Bool)

(assert (=> b!3071990 (= e!1922491 tp_is_empty!16597)))

(declare-fun b!3071991 () Bool)

(declare-fun res!1260724 () Bool)

(assert (=> b!3071991 (=> res!1260724 e!1922492)))

(declare-fun isEmptyExpr!574 (Regex!9517) Bool)

(assert (=> b!3071991 (= res!1260724 (isEmptyExpr!574 lt!1051719))))

(declare-fun b!3071992 () Bool)

(assert (=> b!3071992 (= e!1922494 e!1922492)))

(declare-fun res!1260723 () Bool)

(assert (=> b!3071992 (=> res!1260723 e!1922492)))

(declare-fun isEmptyLang!568 (Regex!9517) Bool)

(assert (=> b!3071992 (= res!1260723 (isEmptyLang!568 lt!1051719))))

(declare-fun simplify!472 (Regex!9517) Regex!9517)

(assert (=> b!3071992 (= lt!1051724 (simplify!472 (regTwo!19546 r!17423)))))

(assert (=> b!3071992 (= lt!1051719 (simplify!472 (regOne!19546 r!17423)))))

(declare-fun b!3071993 () Bool)

(assert (=> b!3071993 (= e!1922495 (not e!1922494))))

(declare-fun res!1260730 () Bool)

(assert (=> b!3071993 (=> res!1260730 e!1922494)))

(declare-fun lt!1051721 () Bool)

(get-info :version)

(assert (=> b!3071993 (= res!1260730 (or lt!1051721 (not ((_ is Concat!14838) r!17423))))))

(declare-fun matchRSpec!1654 (Regex!9517 List!35382) Bool)

(assert (=> b!3071993 (= lt!1051721 (matchRSpec!1654 r!17423 s!11993))))

(assert (=> b!3071993 (= lt!1051721 (matchR!4399 r!17423 s!11993))))

(declare-fun lt!1051720 () Unit!49473)

(declare-fun mainMatchTheorem!1654 (Regex!9517 List!35382) Unit!49473)

(assert (=> b!3071993 (= lt!1051720 (mainMatchTheorem!1654 r!17423 s!11993))))

(declare-fun b!3071994 () Bool)

(declare-fun res!1260728 () Bool)

(assert (=> b!3071994 (=> res!1260728 e!1922493)))

(declare-fun ++!8468 (List!35382 List!35382) List!35382)

(assert (=> b!3071994 (= res!1260728 (not (= (++!8468 s!11993 Nil!35258) s!11993)))))

(declare-fun b!3071995 () Bool)

(declare-fun res!1260731 () Bool)

(assert (=> b!3071995 (=> res!1260731 e!1922493)))

(assert (=> b!3071995 (= res!1260731 (not (validRegex!4250 (regTwo!19546 r!17423))))))

(declare-fun b!3071996 () Bool)

(declare-fun res!1260727 () Bool)

(assert (=> b!3071996 (=> res!1260727 e!1922492)))

(assert (=> b!3071996 (= res!1260727 (not (isEmptyExpr!574 lt!1051724)))))

(declare-fun b!3071997 () Bool)

(declare-fun res!1260726 () Bool)

(assert (=> b!3071997 (=> res!1260726 e!1922492)))

(assert (=> b!3071997 (= res!1260726 (isEmptyLang!568 lt!1051724))))

(assert (= (and start!292904 res!1260722) b!3071993))

(assert (= (and b!3071993 (not res!1260730)) b!3071987))

(assert (= (and b!3071987 (not res!1260725)) b!3071992))

(assert (= (and b!3071992 (not res!1260723)) b!3071997))

(assert (= (and b!3071997 (not res!1260726)) b!3071991))

(assert (= (and b!3071991 (not res!1260724)) b!3071996))

(assert (= (and b!3071996 (not res!1260727)) b!3071988))

(assert (= (and b!3071988 (not res!1260729)) b!3071989))

(assert (= (and b!3071989 (not res!1260732)) b!3071995))

(assert (= (and b!3071995 (not res!1260731)) b!3071994))

(assert (= (and b!3071994 (not res!1260728)) b!3071985))

(assert (= (and start!292904 ((_ is ElementMatch!9517) r!17423)) b!3071990))

(assert (= (and start!292904 ((_ is Concat!14838) r!17423)) b!3071984))

(assert (= (and start!292904 ((_ is Star!9517) r!17423)) b!3071986))

(assert (= (and start!292904 ((_ is Union!9517) r!17423)) b!3071982))

(assert (= (and start!292904 ((_ is Cons!35258) s!11993)) b!3071983))

(declare-fun m!3386015 () Bool)

(assert (=> b!3071988 m!3386015))

(declare-fun m!3386017 () Bool)

(assert (=> b!3071988 m!3386017))

(declare-fun m!3386019 () Bool)

(assert (=> b!3071988 m!3386019))

(declare-fun m!3386021 () Bool)

(assert (=> b!3071988 m!3386021))

(declare-fun m!3386023 () Bool)

(assert (=> b!3071988 m!3386023))

(declare-fun m!3386025 () Bool)

(assert (=> b!3071988 m!3386025))

(declare-fun m!3386027 () Bool)

(assert (=> b!3071992 m!3386027))

(declare-fun m!3386029 () Bool)

(assert (=> b!3071992 m!3386029))

(declare-fun m!3386031 () Bool)

(assert (=> b!3071992 m!3386031))

(declare-fun m!3386033 () Bool)

(assert (=> start!292904 m!3386033))

(declare-fun m!3386035 () Bool)

(assert (=> b!3071997 m!3386035))

(declare-fun m!3386037 () Bool)

(assert (=> b!3071993 m!3386037))

(declare-fun m!3386039 () Bool)

(assert (=> b!3071993 m!3386039))

(declare-fun m!3386041 () Bool)

(assert (=> b!3071993 m!3386041))

(declare-fun m!3386043 () Bool)

(assert (=> b!3071989 m!3386043))

(declare-fun m!3386045 () Bool)

(assert (=> b!3071995 m!3386045))

(declare-fun m!3386047 () Bool)

(assert (=> b!3071996 m!3386047))

(declare-fun m!3386049 () Bool)

(assert (=> b!3071991 m!3386049))

(declare-fun m!3386051 () Bool)

(assert (=> b!3071985 m!3386051))

(declare-fun m!3386053 () Bool)

(assert (=> b!3071994 m!3386053))

(declare-fun m!3386055 () Bool)

(assert (=> b!3071987 m!3386055))

(check-sat (not b!3071992) (not b!3071985) (not b!3071993) (not b!3071984) (not b!3071986) (not b!3071994) (not b!3071987) (not b!3071988) (not b!3071989) (not b!3071996) (not b!3071983) (not start!292904) (not b!3071997) (not b!3071995) (not b!3071991) tp_is_empty!16597 (not b!3071982))
(check-sat)
(get-model)

(declare-fun b!3072008 () Bool)

(declare-fun res!1260737 () Bool)

(declare-fun e!1922501 () Bool)

(assert (=> b!3072008 (=> (not res!1260737) (not e!1922501))))

(declare-fun lt!1051727 () List!35382)

(declare-fun size!26562 (List!35382) Int)

(assert (=> b!3072008 (= res!1260737 (= (size!26562 lt!1051727) (+ (size!26562 s!11993) (size!26562 Nil!35258))))))

(declare-fun b!3072007 () Bool)

(declare-fun e!1922500 () List!35382)

(assert (=> b!3072007 (= e!1922500 (Cons!35258 (h!40678 s!11993) (++!8468 (t!234447 s!11993) Nil!35258)))))

(declare-fun b!3072009 () Bool)

(assert (=> b!3072009 (= e!1922501 (or (not (= Nil!35258 Nil!35258)) (= lt!1051727 s!11993)))))

(declare-fun b!3072006 () Bool)

(assert (=> b!3072006 (= e!1922500 Nil!35258)))

(declare-fun d!856342 () Bool)

(assert (=> d!856342 e!1922501))

(declare-fun res!1260738 () Bool)

(assert (=> d!856342 (=> (not res!1260738) (not e!1922501))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!4807 (List!35382) (InoxSet C!19220))

(assert (=> d!856342 (= res!1260738 (= (content!4807 lt!1051727) ((_ map or) (content!4807 s!11993) (content!4807 Nil!35258))))))

(assert (=> d!856342 (= lt!1051727 e!1922500)))

(declare-fun c!510836 () Bool)

(assert (=> d!856342 (= c!510836 ((_ is Nil!35258) s!11993))))

(assert (=> d!856342 (= (++!8468 s!11993 Nil!35258) lt!1051727)))

(assert (= (and d!856342 c!510836) b!3072006))

(assert (= (and d!856342 (not c!510836)) b!3072007))

(assert (= (and d!856342 res!1260738) b!3072008))

(assert (= (and b!3072008 res!1260737) b!3072009))

(declare-fun m!3386057 () Bool)

(assert (=> b!3072008 m!3386057))

(declare-fun m!3386059 () Bool)

(assert (=> b!3072008 m!3386059))

(declare-fun m!3386061 () Bool)

(assert (=> b!3072008 m!3386061))

(declare-fun m!3386063 () Bool)

(assert (=> b!3072007 m!3386063))

(declare-fun m!3386065 () Bool)

(assert (=> d!856342 m!3386065))

(declare-fun m!3386067 () Bool)

(assert (=> d!856342 m!3386067))

(declare-fun m!3386069 () Bool)

(assert (=> d!856342 m!3386069))

(assert (=> b!3071994 d!856342))

(declare-fun b!3072242 () Bool)

(assert (=> b!3072242 true))

(assert (=> b!3072242 true))

(declare-fun bs!532667 () Bool)

(declare-fun b!3072243 () Bool)

(assert (= bs!532667 (and b!3072243 b!3072242)))

(declare-fun lambda!114124 () Int)

(declare-fun lambda!114123 () Int)

(assert (=> bs!532667 (not (= lambda!114124 lambda!114123))))

(assert (=> b!3072243 true))

(assert (=> b!3072243 true))

(declare-fun b!3072235 () Bool)

(declare-fun e!1922632 () Bool)

(declare-fun e!1922634 () Bool)

(assert (=> b!3072235 (= e!1922632 e!1922634)))

(declare-fun res!1260862 () Bool)

(assert (=> b!3072235 (= res!1260862 (not ((_ is EmptyLang!9517) r!17423)))))

(assert (=> b!3072235 (=> (not res!1260862) (not e!1922634))))

(declare-fun b!3072236 () Bool)

(declare-fun res!1260863 () Bool)

(declare-fun e!1922636 () Bool)

(assert (=> b!3072236 (=> res!1260863 e!1922636)))

(declare-fun call!213436 () Bool)

(assert (=> b!3072236 (= res!1260863 call!213436)))

(declare-fun e!1922637 () Bool)

(assert (=> b!3072236 (= e!1922637 e!1922636)))

(declare-fun b!3072237 () Bool)

(assert (=> b!3072237 (= e!1922632 call!213436)))

(declare-fun b!3072238 () Bool)

(declare-fun e!1922635 () Bool)

(assert (=> b!3072238 (= e!1922635 (= s!11993 (Cons!35258 (c!510833 r!17423) Nil!35258)))))

(declare-fun bm!213431 () Bool)

(assert (=> bm!213431 (= call!213436 (isEmpty!19583 s!11993))))

(declare-fun b!3072239 () Bool)

(declare-fun e!1922633 () Bool)

(assert (=> b!3072239 (= e!1922633 e!1922637)))

(declare-fun c!510888 () Bool)

(assert (=> b!3072239 (= c!510888 ((_ is Star!9517) r!17423))))

(declare-fun b!3072240 () Bool)

(declare-fun c!510889 () Bool)

(assert (=> b!3072240 (= c!510889 ((_ is Union!9517) r!17423))))

(assert (=> b!3072240 (= e!1922635 e!1922633)))

(declare-fun b!3072241 () Bool)

(declare-fun e!1922631 () Bool)

(assert (=> b!3072241 (= e!1922633 e!1922631)))

(declare-fun res!1260864 () Bool)

(assert (=> b!3072241 (= res!1260864 (matchRSpec!1654 (regOne!19547 r!17423) s!11993))))

(assert (=> b!3072241 (=> res!1260864 e!1922631)))

(declare-fun d!856346 () Bool)

(declare-fun c!510887 () Bool)

(assert (=> d!856346 (= c!510887 ((_ is EmptyExpr!9517) r!17423))))

(assert (=> d!856346 (= (matchRSpec!1654 r!17423 s!11993) e!1922632)))

(declare-fun call!213437 () Bool)

(assert (=> b!3072242 (= e!1922636 call!213437)))

(declare-fun bm!213432 () Bool)

(declare-fun Exists!1779 (Int) Bool)

(assert (=> bm!213432 (= call!213437 (Exists!1779 (ite c!510888 lambda!114123 lambda!114124)))))

(assert (=> b!3072243 (= e!1922637 call!213437)))

(declare-fun b!3072244 () Bool)

(assert (=> b!3072244 (= e!1922631 (matchRSpec!1654 (regTwo!19547 r!17423) s!11993))))

(declare-fun b!3072245 () Bool)

(declare-fun c!510886 () Bool)

(assert (=> b!3072245 (= c!510886 ((_ is ElementMatch!9517) r!17423))))

(assert (=> b!3072245 (= e!1922634 e!1922635)))

(assert (= (and d!856346 c!510887) b!3072237))

(assert (= (and d!856346 (not c!510887)) b!3072235))

(assert (= (and b!3072235 res!1260862) b!3072245))

(assert (= (and b!3072245 c!510886) b!3072238))

(assert (= (and b!3072245 (not c!510886)) b!3072240))

(assert (= (and b!3072240 c!510889) b!3072241))

(assert (= (and b!3072240 (not c!510889)) b!3072239))

(assert (= (and b!3072241 (not res!1260864)) b!3072244))

(assert (= (and b!3072239 c!510888) b!3072236))

(assert (= (and b!3072239 (not c!510888)) b!3072243))

(assert (= (and b!3072236 (not res!1260863)) b!3072242))

(assert (= (or b!3072242 b!3072243) bm!213432))

(assert (= (or b!3072237 b!3072236) bm!213431))

(assert (=> bm!213431 m!3386055))

(declare-fun m!3386153 () Bool)

(assert (=> b!3072241 m!3386153))

(declare-fun m!3386155 () Bool)

(assert (=> bm!213432 m!3386155))

(declare-fun m!3386157 () Bool)

(assert (=> b!3072244 m!3386157))

(assert (=> b!3071993 d!856346))

(declare-fun b!3072326 () Bool)

(declare-fun res!1260886 () Bool)

(declare-fun e!1922679 () Bool)

(assert (=> b!3072326 (=> (not res!1260886) (not e!1922679))))

(declare-fun tail!5044 (List!35382) List!35382)

(assert (=> b!3072326 (= res!1260886 (isEmpty!19583 (tail!5044 s!11993)))))

(declare-fun d!856378 () Bool)

(declare-fun e!1922678 () Bool)

(assert (=> d!856378 e!1922678))

(declare-fun c!510920 () Bool)

(assert (=> d!856378 (= c!510920 ((_ is EmptyExpr!9517) r!17423))))

(declare-fun lt!1051759 () Bool)

(declare-fun e!1922682 () Bool)

(assert (=> d!856378 (= lt!1051759 e!1922682)))

(declare-fun c!510919 () Bool)

(assert (=> d!856378 (= c!510919 (isEmpty!19583 s!11993))))

(assert (=> d!856378 (validRegex!4250 r!17423)))

(assert (=> d!856378 (= (matchR!4399 r!17423 s!11993) lt!1051759)))

(declare-fun b!3072327 () Bool)

(declare-fun e!1922683 () Bool)

(declare-fun e!1922684 () Bool)

(assert (=> b!3072327 (= e!1922683 e!1922684)))

(declare-fun res!1260885 () Bool)

(assert (=> b!3072327 (=> (not res!1260885) (not e!1922684))))

(assert (=> b!3072327 (= res!1260885 (not lt!1051759))))

(declare-fun b!3072328 () Bool)

(declare-fun call!213450 () Bool)

(assert (=> b!3072328 (= e!1922678 (= lt!1051759 call!213450))))

(declare-fun b!3072329 () Bool)

(declare-fun res!1260887 () Bool)

(declare-fun e!1922680 () Bool)

(assert (=> b!3072329 (=> res!1260887 e!1922680)))

(assert (=> b!3072329 (= res!1260887 (not (isEmpty!19583 (tail!5044 s!11993))))))

(declare-fun b!3072330 () Bool)

(declare-fun head!6818 (List!35382) C!19220)

(assert (=> b!3072330 (= e!1922679 (= (head!6818 s!11993) (c!510833 r!17423)))))

(declare-fun b!3072331 () Bool)

(declare-fun res!1260889 () Bool)

(assert (=> b!3072331 (=> (not res!1260889) (not e!1922679))))

(assert (=> b!3072331 (= res!1260889 (not call!213450))))

(declare-fun b!3072332 () Bool)

(declare-fun e!1922681 () Bool)

(assert (=> b!3072332 (= e!1922678 e!1922681)))

(declare-fun c!510918 () Bool)

(assert (=> b!3072332 (= c!510918 ((_ is EmptyLang!9517) r!17423))))

(declare-fun bm!213443 () Bool)

(assert (=> bm!213443 (= call!213450 (isEmpty!19583 s!11993))))

(declare-fun b!3072333 () Bool)

(declare-fun res!1260892 () Bool)

(assert (=> b!3072333 (=> res!1260892 e!1922683)))

(assert (=> b!3072333 (= res!1260892 e!1922679)))

(declare-fun res!1260891 () Bool)

(assert (=> b!3072333 (=> (not res!1260891) (not e!1922679))))

(assert (=> b!3072333 (= res!1260891 lt!1051759)))

(declare-fun b!3072334 () Bool)

(declare-fun nullable!3163 (Regex!9517) Bool)

(assert (=> b!3072334 (= e!1922682 (nullable!3163 r!17423))))

(declare-fun b!3072335 () Bool)

(assert (=> b!3072335 (= e!1922684 e!1922680)))

(declare-fun res!1260888 () Bool)

(assert (=> b!3072335 (=> res!1260888 e!1922680)))

(assert (=> b!3072335 (= res!1260888 call!213450)))

(declare-fun b!3072336 () Bool)

(declare-fun derivativeStep!2759 (Regex!9517 C!19220) Regex!9517)

(assert (=> b!3072336 (= e!1922682 (matchR!4399 (derivativeStep!2759 r!17423 (head!6818 s!11993)) (tail!5044 s!11993)))))

(declare-fun b!3072337 () Bool)

(declare-fun res!1260890 () Bool)

(assert (=> b!3072337 (=> res!1260890 e!1922683)))

(assert (=> b!3072337 (= res!1260890 (not ((_ is ElementMatch!9517) r!17423)))))

(assert (=> b!3072337 (= e!1922681 e!1922683)))

(declare-fun b!3072338 () Bool)

(assert (=> b!3072338 (= e!1922680 (not (= (head!6818 s!11993) (c!510833 r!17423))))))

(declare-fun b!3072339 () Bool)

(assert (=> b!3072339 (= e!1922681 (not lt!1051759))))

(assert (= (and d!856378 c!510919) b!3072334))

(assert (= (and d!856378 (not c!510919)) b!3072336))

(assert (= (and d!856378 c!510920) b!3072328))

(assert (= (and d!856378 (not c!510920)) b!3072332))

(assert (= (and b!3072332 c!510918) b!3072339))

(assert (= (and b!3072332 (not c!510918)) b!3072337))

(assert (= (and b!3072337 (not res!1260890)) b!3072333))

(assert (= (and b!3072333 res!1260891) b!3072331))

(assert (= (and b!3072331 res!1260889) b!3072326))

(assert (= (and b!3072326 res!1260886) b!3072330))

(assert (= (and b!3072333 (not res!1260892)) b!3072327))

(assert (= (and b!3072327 res!1260885) b!3072335))

(assert (= (and b!3072335 (not res!1260888)) b!3072329))

(assert (= (and b!3072329 (not res!1260887)) b!3072338))

(assert (= (or b!3072328 b!3072331 b!3072335) bm!213443))

(declare-fun m!3386159 () Bool)

(assert (=> b!3072336 m!3386159))

(assert (=> b!3072336 m!3386159))

(declare-fun m!3386161 () Bool)

(assert (=> b!3072336 m!3386161))

(declare-fun m!3386163 () Bool)

(assert (=> b!3072336 m!3386163))

(assert (=> b!3072336 m!3386161))

(assert (=> b!3072336 m!3386163))

(declare-fun m!3386165 () Bool)

(assert (=> b!3072336 m!3386165))

(assert (=> b!3072326 m!3386163))

(assert (=> b!3072326 m!3386163))

(declare-fun m!3386167 () Bool)

(assert (=> b!3072326 m!3386167))

(assert (=> b!3072329 m!3386163))

(assert (=> b!3072329 m!3386163))

(assert (=> b!3072329 m!3386167))

(assert (=> bm!213443 m!3386055))

(assert (=> b!3072330 m!3386159))

(assert (=> b!3072338 m!3386159))

(assert (=> d!856378 m!3386055))

(assert (=> d!856378 m!3386033))

(declare-fun m!3386169 () Bool)

(assert (=> b!3072334 m!3386169))

(assert (=> b!3071993 d!856378))

(declare-fun d!856380 () Bool)

(assert (=> d!856380 (= (matchR!4399 r!17423 s!11993) (matchRSpec!1654 r!17423 s!11993))))

(declare-fun lt!1051762 () Unit!49473)

(declare-fun choose!18202 (Regex!9517 List!35382) Unit!49473)

(assert (=> d!856380 (= lt!1051762 (choose!18202 r!17423 s!11993))))

(assert (=> d!856380 (validRegex!4250 r!17423)))

(assert (=> d!856380 (= (mainMatchTheorem!1654 r!17423 s!11993) lt!1051762)))

(declare-fun bs!532669 () Bool)

(assert (= bs!532669 d!856380))

(assert (=> bs!532669 m!3386039))

(assert (=> bs!532669 m!3386037))

(declare-fun m!3386171 () Bool)

(assert (=> bs!532669 m!3386171))

(assert (=> bs!532669 m!3386033))

(assert (=> b!3071993 d!856380))

(declare-fun d!856382 () Bool)

(assert (=> d!856382 (= (isEmptyLang!568 lt!1051724) ((_ is EmptyLang!9517) lt!1051724))))

(assert (=> b!3071997 d!856382))

(declare-fun d!856384 () Bool)

(assert (=> d!856384 (= (isEmptyExpr!574 lt!1051724) ((_ is EmptyExpr!9517) lt!1051724))))

(assert (=> b!3071996 d!856384))

(declare-fun b!3072410 () Bool)

(declare-fun res!1260912 () Bool)

(declare-fun e!1922729 () Bool)

(assert (=> b!3072410 (=> res!1260912 e!1922729)))

(assert (=> b!3072410 (= res!1260912 (not ((_ is Concat!14838) r!17423)))))

(declare-fun e!1922732 () Bool)

(assert (=> b!3072410 (= e!1922732 e!1922729)))

(declare-fun b!3072411 () Bool)

(declare-fun e!1922731 () Bool)

(assert (=> b!3072411 (= e!1922731 e!1922732)))

(declare-fun c!510948 () Bool)

(assert (=> b!3072411 (= c!510948 ((_ is Union!9517) r!17423))))

(declare-fun b!3072412 () Bool)

(declare-fun e!1922734 () Bool)

(declare-fun call!213477 () Bool)

(assert (=> b!3072412 (= e!1922734 call!213477)))

(declare-fun bm!213470 () Bool)

(declare-fun call!213476 () Bool)

(assert (=> bm!213470 (= call!213476 (validRegex!4250 (ite c!510948 (regTwo!19547 r!17423) (regOne!19546 r!17423))))))

(declare-fun b!3072413 () Bool)

(declare-fun e!1922733 () Bool)

(assert (=> b!3072413 (= e!1922733 call!213476)))

(declare-fun d!856386 () Bool)

(declare-fun res!1260913 () Bool)

(declare-fun e!1922735 () Bool)

(assert (=> d!856386 (=> res!1260913 e!1922735)))

(assert (=> d!856386 (= res!1260913 ((_ is ElementMatch!9517) r!17423))))

(assert (=> d!856386 (= (validRegex!4250 r!17423) e!1922735)))

(declare-fun bm!213471 () Bool)

(declare-fun call!213475 () Bool)

(assert (=> bm!213471 (= call!213475 call!213477)))

(declare-fun b!3072414 () Bool)

(declare-fun res!1260911 () Bool)

(assert (=> b!3072414 (=> (not res!1260911) (not e!1922733))))

(assert (=> b!3072414 (= res!1260911 call!213475)))

(assert (=> b!3072414 (= e!1922732 e!1922733)))

(declare-fun b!3072415 () Bool)

(assert (=> b!3072415 (= e!1922731 e!1922734)))

(declare-fun res!1260914 () Bool)

(assert (=> b!3072415 (= res!1260914 (not (nullable!3163 (reg!9846 r!17423))))))

(assert (=> b!3072415 (=> (not res!1260914) (not e!1922734))))

(declare-fun c!510947 () Bool)

(declare-fun bm!213472 () Bool)

(assert (=> bm!213472 (= call!213477 (validRegex!4250 (ite c!510947 (reg!9846 r!17423) (ite c!510948 (regOne!19547 r!17423) (regTwo!19546 r!17423)))))))

(declare-fun b!3072416 () Bool)

(declare-fun e!1922730 () Bool)

(assert (=> b!3072416 (= e!1922729 e!1922730)))

(declare-fun res!1260915 () Bool)

(assert (=> b!3072416 (=> (not res!1260915) (not e!1922730))))

(assert (=> b!3072416 (= res!1260915 call!213476)))

(declare-fun b!3072417 () Bool)

(assert (=> b!3072417 (= e!1922730 call!213475)))

(declare-fun b!3072418 () Bool)

(assert (=> b!3072418 (= e!1922735 e!1922731)))

(assert (=> b!3072418 (= c!510947 ((_ is Star!9517) r!17423))))

(assert (= (and d!856386 (not res!1260913)) b!3072418))

(assert (= (and b!3072418 c!510947) b!3072415))

(assert (= (and b!3072418 (not c!510947)) b!3072411))

(assert (= (and b!3072415 res!1260914) b!3072412))

(assert (= (and b!3072411 c!510948) b!3072414))

(assert (= (and b!3072411 (not c!510948)) b!3072410))

(assert (= (and b!3072414 res!1260911) b!3072413))

(assert (= (and b!3072410 (not res!1260912)) b!3072416))

(assert (= (and b!3072416 res!1260915) b!3072417))

(assert (= (or b!3072414 b!3072417) bm!213471))

(assert (= (or b!3072413 b!3072416) bm!213470))

(assert (= (or b!3072412 bm!213471) bm!213472))

(declare-fun m!3386189 () Bool)

(assert (=> bm!213470 m!3386189))

(declare-fun m!3386191 () Bool)

(assert (=> b!3072415 m!3386191))

(declare-fun m!3386193 () Bool)

(assert (=> bm!213472 m!3386193))

(assert (=> start!292904 d!856386))

(declare-fun b!3072441 () Bool)

(declare-fun res!1260931 () Bool)

(declare-fun e!1922752 () Bool)

(assert (=> b!3072441 (=> (not res!1260931) (not e!1922752))))

(assert (=> b!3072441 (= res!1260931 (= (head!6818 Nil!35258) (head!6818 s!11993)))))

(declare-fun b!3072442 () Bool)

(assert (=> b!3072442 (= e!1922752 (isPrefix!2764 (tail!5044 Nil!35258) (tail!5044 s!11993)))))

(declare-fun b!3072443 () Bool)

(declare-fun e!1922751 () Bool)

(assert (=> b!3072443 (= e!1922751 (>= (size!26562 s!11993) (size!26562 Nil!35258)))))

(declare-fun b!3072440 () Bool)

(declare-fun e!1922753 () Bool)

(assert (=> b!3072440 (= e!1922753 e!1922752)))

(declare-fun res!1260932 () Bool)

(assert (=> b!3072440 (=> (not res!1260932) (not e!1922752))))

(assert (=> b!3072440 (= res!1260932 (not ((_ is Nil!35258) s!11993)))))

(declare-fun d!856390 () Bool)

(assert (=> d!856390 e!1922751))

(declare-fun res!1260930 () Bool)

(assert (=> d!856390 (=> res!1260930 e!1922751)))

(declare-fun lt!1051779 () Bool)

(assert (=> d!856390 (= res!1260930 (not lt!1051779))))

(assert (=> d!856390 (= lt!1051779 e!1922753)))

(declare-fun res!1260929 () Bool)

(assert (=> d!856390 (=> res!1260929 e!1922753)))

(assert (=> d!856390 (= res!1260929 ((_ is Nil!35258) Nil!35258))))

(assert (=> d!856390 (= (isPrefix!2764 Nil!35258 s!11993) lt!1051779)))

(assert (= (and d!856390 (not res!1260929)) b!3072440))

(assert (= (and b!3072440 res!1260932) b!3072441))

(assert (= (and b!3072441 res!1260931) b!3072442))

(assert (= (and d!856390 (not res!1260930)) b!3072443))

(declare-fun m!3386217 () Bool)

(assert (=> b!3072441 m!3386217))

(assert (=> b!3072441 m!3386159))

(declare-fun m!3386219 () Bool)

(assert (=> b!3072442 m!3386219))

(assert (=> b!3072442 m!3386163))

(assert (=> b!3072442 m!3386219))

(assert (=> b!3072442 m!3386163))

(declare-fun m!3386221 () Bool)

(assert (=> b!3072442 m!3386221))

(assert (=> b!3072443 m!3386059))

(assert (=> b!3072443 m!3386061))

(assert (=> b!3071985 d!856390))

(declare-fun b!3072448 () Bool)

(declare-fun res!1260938 () Bool)

(declare-fun e!1922756 () Bool)

(assert (=> b!3072448 (=> res!1260938 e!1922756)))

(assert (=> b!3072448 (= res!1260938 (not ((_ is Concat!14838) (regTwo!19546 r!17423))))))

(declare-fun e!1922759 () Bool)

(assert (=> b!3072448 (= e!1922759 e!1922756)))

(declare-fun b!3072449 () Bool)

(declare-fun e!1922758 () Bool)

(assert (=> b!3072449 (= e!1922758 e!1922759)))

(declare-fun c!510954 () Bool)

(assert (=> b!3072449 (= c!510954 ((_ is Union!9517) (regTwo!19546 r!17423)))))

(declare-fun b!3072450 () Bool)

(declare-fun e!1922761 () Bool)

(declare-fun call!213483 () Bool)

(assert (=> b!3072450 (= e!1922761 call!213483)))

(declare-fun bm!213476 () Bool)

(declare-fun call!213482 () Bool)

(assert (=> bm!213476 (= call!213482 (validRegex!4250 (ite c!510954 (regTwo!19547 (regTwo!19546 r!17423)) (regOne!19546 (regTwo!19546 r!17423)))))))

(declare-fun b!3072451 () Bool)

(declare-fun e!1922760 () Bool)

(assert (=> b!3072451 (= e!1922760 call!213482)))

(declare-fun d!856400 () Bool)

(declare-fun res!1260939 () Bool)

(declare-fun e!1922762 () Bool)

(assert (=> d!856400 (=> res!1260939 e!1922762)))

(assert (=> d!856400 (= res!1260939 ((_ is ElementMatch!9517) (regTwo!19546 r!17423)))))

(assert (=> d!856400 (= (validRegex!4250 (regTwo!19546 r!17423)) e!1922762)))

(declare-fun bm!213477 () Bool)

(declare-fun call!213481 () Bool)

(assert (=> bm!213477 (= call!213481 call!213483)))

(declare-fun b!3072452 () Bool)

(declare-fun res!1260937 () Bool)

(assert (=> b!3072452 (=> (not res!1260937) (not e!1922760))))

(assert (=> b!3072452 (= res!1260937 call!213481)))

(assert (=> b!3072452 (= e!1922759 e!1922760)))

(declare-fun b!3072453 () Bool)

(assert (=> b!3072453 (= e!1922758 e!1922761)))

(declare-fun res!1260940 () Bool)

(assert (=> b!3072453 (= res!1260940 (not (nullable!3163 (reg!9846 (regTwo!19546 r!17423)))))))

(assert (=> b!3072453 (=> (not res!1260940) (not e!1922761))))

(declare-fun c!510953 () Bool)

(declare-fun bm!213478 () Bool)

(assert (=> bm!213478 (= call!213483 (validRegex!4250 (ite c!510953 (reg!9846 (regTwo!19546 r!17423)) (ite c!510954 (regOne!19547 (regTwo!19546 r!17423)) (regTwo!19546 (regTwo!19546 r!17423))))))))

(declare-fun b!3072454 () Bool)

(declare-fun e!1922757 () Bool)

(assert (=> b!3072454 (= e!1922756 e!1922757)))

(declare-fun res!1260941 () Bool)

(assert (=> b!3072454 (=> (not res!1260941) (not e!1922757))))

(assert (=> b!3072454 (= res!1260941 call!213482)))

(declare-fun b!3072455 () Bool)

(assert (=> b!3072455 (= e!1922757 call!213481)))

(declare-fun b!3072456 () Bool)

(assert (=> b!3072456 (= e!1922762 e!1922758)))

(assert (=> b!3072456 (= c!510953 ((_ is Star!9517) (regTwo!19546 r!17423)))))

(assert (= (and d!856400 (not res!1260939)) b!3072456))

(assert (= (and b!3072456 c!510953) b!3072453))

(assert (= (and b!3072456 (not c!510953)) b!3072449))

(assert (= (and b!3072453 res!1260940) b!3072450))

(assert (= (and b!3072449 c!510954) b!3072452))

(assert (= (and b!3072449 (not c!510954)) b!3072448))

(assert (= (and b!3072452 res!1260937) b!3072451))

(assert (= (and b!3072448 (not res!1260938)) b!3072454))

(assert (= (and b!3072454 res!1260941) b!3072455))

(assert (= (or b!3072452 b!3072455) bm!213477))

(assert (= (or b!3072451 b!3072454) bm!213476))

(assert (= (or b!3072450 bm!213477) bm!213478))

(declare-fun m!3386223 () Bool)

(assert (=> bm!213476 m!3386223))

(declare-fun m!3386225 () Bool)

(assert (=> b!3072453 m!3386225))

(declare-fun m!3386227 () Bool)

(assert (=> bm!213478 m!3386227))

(assert (=> b!3071995 d!856400))

(declare-fun b!3072457 () Bool)

(declare-fun res!1260943 () Bool)

(declare-fun e!1922763 () Bool)

(assert (=> b!3072457 (=> res!1260943 e!1922763)))

(assert (=> b!3072457 (= res!1260943 (not ((_ is Concat!14838) (regOne!19546 r!17423))))))

(declare-fun e!1922766 () Bool)

(assert (=> b!3072457 (= e!1922766 e!1922763)))

(declare-fun b!3072458 () Bool)

(declare-fun e!1922765 () Bool)

(assert (=> b!3072458 (= e!1922765 e!1922766)))

(declare-fun c!510956 () Bool)

(assert (=> b!3072458 (= c!510956 ((_ is Union!9517) (regOne!19546 r!17423)))))

(declare-fun b!3072459 () Bool)

(declare-fun e!1922768 () Bool)

(declare-fun call!213486 () Bool)

(assert (=> b!3072459 (= e!1922768 call!213486)))

(declare-fun bm!213479 () Bool)

(declare-fun call!213485 () Bool)

(assert (=> bm!213479 (= call!213485 (validRegex!4250 (ite c!510956 (regTwo!19547 (regOne!19546 r!17423)) (regOne!19546 (regOne!19546 r!17423)))))))

(declare-fun b!3072460 () Bool)

(declare-fun e!1922767 () Bool)

(assert (=> b!3072460 (= e!1922767 call!213485)))

(declare-fun d!856402 () Bool)

(declare-fun res!1260944 () Bool)

(declare-fun e!1922769 () Bool)

(assert (=> d!856402 (=> res!1260944 e!1922769)))

(assert (=> d!856402 (= res!1260944 ((_ is ElementMatch!9517) (regOne!19546 r!17423)))))

(assert (=> d!856402 (= (validRegex!4250 (regOne!19546 r!17423)) e!1922769)))

(declare-fun bm!213480 () Bool)

(declare-fun call!213484 () Bool)

(assert (=> bm!213480 (= call!213484 call!213486)))

(declare-fun b!3072461 () Bool)

(declare-fun res!1260942 () Bool)

(assert (=> b!3072461 (=> (not res!1260942) (not e!1922767))))

(assert (=> b!3072461 (= res!1260942 call!213484)))

(assert (=> b!3072461 (= e!1922766 e!1922767)))

(declare-fun b!3072462 () Bool)

(assert (=> b!3072462 (= e!1922765 e!1922768)))

(declare-fun res!1260945 () Bool)

(assert (=> b!3072462 (= res!1260945 (not (nullable!3163 (reg!9846 (regOne!19546 r!17423)))))))

(assert (=> b!3072462 (=> (not res!1260945) (not e!1922768))))

(declare-fun c!510955 () Bool)

(declare-fun bm!213481 () Bool)

(assert (=> bm!213481 (= call!213486 (validRegex!4250 (ite c!510955 (reg!9846 (regOne!19546 r!17423)) (ite c!510956 (regOne!19547 (regOne!19546 r!17423)) (regTwo!19546 (regOne!19546 r!17423))))))))

(declare-fun b!3072463 () Bool)

(declare-fun e!1922764 () Bool)

(assert (=> b!3072463 (= e!1922763 e!1922764)))

(declare-fun res!1260946 () Bool)

(assert (=> b!3072463 (=> (not res!1260946) (not e!1922764))))

(assert (=> b!3072463 (= res!1260946 call!213485)))

(declare-fun b!3072464 () Bool)

(assert (=> b!3072464 (= e!1922764 call!213484)))

(declare-fun b!3072465 () Bool)

(assert (=> b!3072465 (= e!1922769 e!1922765)))

(assert (=> b!3072465 (= c!510955 ((_ is Star!9517) (regOne!19546 r!17423)))))

(assert (= (and d!856402 (not res!1260944)) b!3072465))

(assert (= (and b!3072465 c!510955) b!3072462))

(assert (= (and b!3072465 (not c!510955)) b!3072458))

(assert (= (and b!3072462 res!1260945) b!3072459))

(assert (= (and b!3072458 c!510956) b!3072461))

(assert (= (and b!3072458 (not c!510956)) b!3072457))

(assert (= (and b!3072461 res!1260942) b!3072460))

(assert (= (and b!3072457 (not res!1260943)) b!3072463))

(assert (= (and b!3072463 res!1260946) b!3072464))

(assert (= (or b!3072461 b!3072464) bm!213480))

(assert (= (or b!3072460 b!3072463) bm!213479))

(assert (= (or b!3072459 bm!213480) bm!213481))

(declare-fun m!3386229 () Bool)

(assert (=> bm!213479 m!3386229))

(declare-fun m!3386231 () Bool)

(assert (=> b!3072462 m!3386231))

(declare-fun m!3386233 () Bool)

(assert (=> bm!213481 m!3386233))

(assert (=> b!3071989 d!856402))

(declare-fun d!856404 () Bool)

(assert (=> d!856404 (= (matchR!4399 (regTwo!19546 r!17423) Nil!35258) (matchR!4399 (simplify!472 (regTwo!19546 r!17423)) Nil!35258))))

(declare-fun lt!1051783 () Unit!49473)

(declare-fun choose!18203 (Regex!9517 List!35382) Unit!49473)

(assert (=> d!856404 (= lt!1051783 (choose!18203 (regTwo!19546 r!17423) Nil!35258))))

(assert (=> d!856404 (validRegex!4250 (regTwo!19546 r!17423))))

(assert (=> d!856404 (= (lemmaSimplifySound!298 (regTwo!19546 r!17423) Nil!35258) lt!1051783)))

(declare-fun bs!532670 () Bool)

(assert (= bs!532670 d!856404))

(assert (=> bs!532670 m!3386029))

(declare-fun m!3386245 () Bool)

(assert (=> bs!532670 m!3386245))

(assert (=> bs!532670 m!3386045))

(declare-fun m!3386247 () Bool)

(assert (=> bs!532670 m!3386247))

(assert (=> bs!532670 m!3386029))

(assert (=> bs!532670 m!3386021))

(assert (=> b!3071988 d!856404))

(declare-fun d!856406 () Bool)

(assert (=> d!856406 (= (matchR!4399 (regOne!19546 r!17423) s!11993) (matchR!4399 (simplify!472 (regOne!19546 r!17423)) s!11993))))

(declare-fun lt!1051784 () Unit!49473)

(assert (=> d!856406 (= lt!1051784 (choose!18203 (regOne!19546 r!17423) s!11993))))

(assert (=> d!856406 (validRegex!4250 (regOne!19546 r!17423))))

(assert (=> d!856406 (= (lemmaSimplifySound!298 (regOne!19546 r!17423) s!11993) lt!1051784)))

(declare-fun bs!532671 () Bool)

(assert (= bs!532671 d!856406))

(assert (=> bs!532671 m!3386031))

(declare-fun m!3386249 () Bool)

(assert (=> bs!532671 m!3386249))

(assert (=> bs!532671 m!3386043))

(declare-fun m!3386251 () Bool)

(assert (=> bs!532671 m!3386251))

(assert (=> bs!532671 m!3386031))

(assert (=> bs!532671 m!3386017))

(assert (=> b!3071988 d!856406))

(declare-fun b!3072505 () Bool)

(declare-fun res!1260950 () Bool)

(declare-fun e!1922783 () Bool)

(assert (=> b!3072505 (=> (not res!1260950) (not e!1922783))))

(assert (=> b!3072505 (= res!1260950 (isEmpty!19583 (tail!5044 s!11993)))))

(declare-fun d!856408 () Bool)

(declare-fun e!1922782 () Bool)

(assert (=> d!856408 e!1922782))

(declare-fun c!510960 () Bool)

(assert (=> d!856408 (= c!510960 ((_ is EmptyExpr!9517) (regOne!19546 r!17423)))))

(declare-fun lt!1051785 () Bool)

(declare-fun e!1922786 () Bool)

(assert (=> d!856408 (= lt!1051785 e!1922786)))

(declare-fun c!510959 () Bool)

(assert (=> d!856408 (= c!510959 (isEmpty!19583 s!11993))))

(assert (=> d!856408 (validRegex!4250 (regOne!19546 r!17423))))

(assert (=> d!856408 (= (matchR!4399 (regOne!19546 r!17423) s!11993) lt!1051785)))

(declare-fun b!3072506 () Bool)

(declare-fun e!1922787 () Bool)

(declare-fun e!1922788 () Bool)

(assert (=> b!3072506 (= e!1922787 e!1922788)))

(declare-fun res!1260949 () Bool)

(assert (=> b!3072506 (=> (not res!1260949) (not e!1922788))))

(assert (=> b!3072506 (= res!1260949 (not lt!1051785))))

(declare-fun b!3072507 () Bool)

(declare-fun call!213487 () Bool)

(assert (=> b!3072507 (= e!1922782 (= lt!1051785 call!213487))))

(declare-fun b!3072508 () Bool)

(declare-fun res!1260951 () Bool)

(declare-fun e!1922784 () Bool)

(assert (=> b!3072508 (=> res!1260951 e!1922784)))

(assert (=> b!3072508 (= res!1260951 (not (isEmpty!19583 (tail!5044 s!11993))))))

(declare-fun b!3072509 () Bool)

(assert (=> b!3072509 (= e!1922783 (= (head!6818 s!11993) (c!510833 (regOne!19546 r!17423))))))

(declare-fun b!3072510 () Bool)

(declare-fun res!1260953 () Bool)

(assert (=> b!3072510 (=> (not res!1260953) (not e!1922783))))

(assert (=> b!3072510 (= res!1260953 (not call!213487))))

(declare-fun b!3072511 () Bool)

(declare-fun e!1922785 () Bool)

(assert (=> b!3072511 (= e!1922782 e!1922785)))

(declare-fun c!510958 () Bool)

(assert (=> b!3072511 (= c!510958 ((_ is EmptyLang!9517) (regOne!19546 r!17423)))))

(declare-fun bm!213482 () Bool)

(assert (=> bm!213482 (= call!213487 (isEmpty!19583 s!11993))))

(declare-fun b!3072512 () Bool)

(declare-fun res!1260956 () Bool)

(assert (=> b!3072512 (=> res!1260956 e!1922787)))

(assert (=> b!3072512 (= res!1260956 e!1922783)))

(declare-fun res!1260955 () Bool)

(assert (=> b!3072512 (=> (not res!1260955) (not e!1922783))))

(assert (=> b!3072512 (= res!1260955 lt!1051785)))

(declare-fun b!3072513 () Bool)

(assert (=> b!3072513 (= e!1922786 (nullable!3163 (regOne!19546 r!17423)))))

(declare-fun b!3072514 () Bool)

(assert (=> b!3072514 (= e!1922788 e!1922784)))

(declare-fun res!1260952 () Bool)

(assert (=> b!3072514 (=> res!1260952 e!1922784)))

(assert (=> b!3072514 (= res!1260952 call!213487)))

(declare-fun b!3072515 () Bool)

(assert (=> b!3072515 (= e!1922786 (matchR!4399 (derivativeStep!2759 (regOne!19546 r!17423) (head!6818 s!11993)) (tail!5044 s!11993)))))

(declare-fun b!3072516 () Bool)

(declare-fun res!1260954 () Bool)

(assert (=> b!3072516 (=> res!1260954 e!1922787)))

(assert (=> b!3072516 (= res!1260954 (not ((_ is ElementMatch!9517) (regOne!19546 r!17423))))))

(assert (=> b!3072516 (= e!1922785 e!1922787)))

(declare-fun b!3072517 () Bool)

(assert (=> b!3072517 (= e!1922784 (not (= (head!6818 s!11993) (c!510833 (regOne!19546 r!17423)))))))

(declare-fun b!3072518 () Bool)

(assert (=> b!3072518 (= e!1922785 (not lt!1051785))))

(assert (= (and d!856408 c!510959) b!3072513))

(assert (= (and d!856408 (not c!510959)) b!3072515))

(assert (= (and d!856408 c!510960) b!3072507))

(assert (= (and d!856408 (not c!510960)) b!3072511))

(assert (= (and b!3072511 c!510958) b!3072518))

(assert (= (and b!3072511 (not c!510958)) b!3072516))

(assert (= (and b!3072516 (not res!1260954)) b!3072512))

(assert (= (and b!3072512 res!1260955) b!3072510))

(assert (= (and b!3072510 res!1260953) b!3072505))

(assert (= (and b!3072505 res!1260950) b!3072509))

(assert (= (and b!3072512 (not res!1260956)) b!3072506))

(assert (= (and b!3072506 res!1260949) b!3072514))

(assert (= (and b!3072514 (not res!1260952)) b!3072508))

(assert (= (and b!3072508 (not res!1260951)) b!3072517))

(assert (= (or b!3072507 b!3072510 b!3072514) bm!213482))

(assert (=> b!3072515 m!3386159))

(assert (=> b!3072515 m!3386159))

(declare-fun m!3386253 () Bool)

(assert (=> b!3072515 m!3386253))

(assert (=> b!3072515 m!3386163))

(assert (=> b!3072515 m!3386253))

(assert (=> b!3072515 m!3386163))

(declare-fun m!3386255 () Bool)

(assert (=> b!3072515 m!3386255))

(assert (=> b!3072505 m!3386163))

(assert (=> b!3072505 m!3386163))

(assert (=> b!3072505 m!3386167))

(assert (=> b!3072508 m!3386163))

(assert (=> b!3072508 m!3386163))

(assert (=> b!3072508 m!3386167))

(assert (=> bm!213482 m!3386055))

(assert (=> b!3072509 m!3386159))

(assert (=> b!3072517 m!3386159))

(assert (=> d!856408 m!3386055))

(assert (=> d!856408 m!3386043))

(declare-fun m!3386257 () Bool)

(assert (=> b!3072513 m!3386257))

(assert (=> b!3071988 d!856408))

(declare-fun b!3072519 () Bool)

(declare-fun res!1260958 () Bool)

(declare-fun e!1922790 () Bool)

(assert (=> b!3072519 (=> (not res!1260958) (not e!1922790))))

(assert (=> b!3072519 (= res!1260958 (isEmpty!19583 (tail!5044 Nil!35258)))))

(declare-fun d!856410 () Bool)

(declare-fun e!1922789 () Bool)

(assert (=> d!856410 e!1922789))

(declare-fun c!510963 () Bool)

(assert (=> d!856410 (= c!510963 ((_ is EmptyExpr!9517) (regTwo!19546 r!17423)))))

(declare-fun lt!1051786 () Bool)

(declare-fun e!1922793 () Bool)

(assert (=> d!856410 (= lt!1051786 e!1922793)))

(declare-fun c!510962 () Bool)

(assert (=> d!856410 (= c!510962 (isEmpty!19583 Nil!35258))))

(assert (=> d!856410 (validRegex!4250 (regTwo!19546 r!17423))))

(assert (=> d!856410 (= (matchR!4399 (regTwo!19546 r!17423) Nil!35258) lt!1051786)))

(declare-fun b!3072520 () Bool)

(declare-fun e!1922794 () Bool)

(declare-fun e!1922795 () Bool)

(assert (=> b!3072520 (= e!1922794 e!1922795)))

(declare-fun res!1260957 () Bool)

(assert (=> b!3072520 (=> (not res!1260957) (not e!1922795))))

(assert (=> b!3072520 (= res!1260957 (not lt!1051786))))

(declare-fun b!3072521 () Bool)

(declare-fun call!213488 () Bool)

(assert (=> b!3072521 (= e!1922789 (= lt!1051786 call!213488))))

(declare-fun b!3072522 () Bool)

(declare-fun res!1260959 () Bool)

(declare-fun e!1922791 () Bool)

(assert (=> b!3072522 (=> res!1260959 e!1922791)))

(assert (=> b!3072522 (= res!1260959 (not (isEmpty!19583 (tail!5044 Nil!35258))))))

(declare-fun b!3072523 () Bool)

(assert (=> b!3072523 (= e!1922790 (= (head!6818 Nil!35258) (c!510833 (regTwo!19546 r!17423))))))

(declare-fun b!3072524 () Bool)

(declare-fun res!1260961 () Bool)

(assert (=> b!3072524 (=> (not res!1260961) (not e!1922790))))

(assert (=> b!3072524 (= res!1260961 (not call!213488))))

(declare-fun b!3072525 () Bool)

(declare-fun e!1922792 () Bool)

(assert (=> b!3072525 (= e!1922789 e!1922792)))

(declare-fun c!510961 () Bool)

(assert (=> b!3072525 (= c!510961 ((_ is EmptyLang!9517) (regTwo!19546 r!17423)))))

(declare-fun bm!213483 () Bool)

(assert (=> bm!213483 (= call!213488 (isEmpty!19583 Nil!35258))))

(declare-fun b!3072526 () Bool)

(declare-fun res!1260964 () Bool)

(assert (=> b!3072526 (=> res!1260964 e!1922794)))

(assert (=> b!3072526 (= res!1260964 e!1922790)))

(declare-fun res!1260963 () Bool)

(assert (=> b!3072526 (=> (not res!1260963) (not e!1922790))))

(assert (=> b!3072526 (= res!1260963 lt!1051786)))

(declare-fun b!3072527 () Bool)

(assert (=> b!3072527 (= e!1922793 (nullable!3163 (regTwo!19546 r!17423)))))

(declare-fun b!3072528 () Bool)

(assert (=> b!3072528 (= e!1922795 e!1922791)))

(declare-fun res!1260960 () Bool)

(assert (=> b!3072528 (=> res!1260960 e!1922791)))

(assert (=> b!3072528 (= res!1260960 call!213488)))

(declare-fun b!3072529 () Bool)

(assert (=> b!3072529 (= e!1922793 (matchR!4399 (derivativeStep!2759 (regTwo!19546 r!17423) (head!6818 Nil!35258)) (tail!5044 Nil!35258)))))

(declare-fun b!3072530 () Bool)

(declare-fun res!1260962 () Bool)

(assert (=> b!3072530 (=> res!1260962 e!1922794)))

(assert (=> b!3072530 (= res!1260962 (not ((_ is ElementMatch!9517) (regTwo!19546 r!17423))))))

(assert (=> b!3072530 (= e!1922792 e!1922794)))

(declare-fun b!3072531 () Bool)

(assert (=> b!3072531 (= e!1922791 (not (= (head!6818 Nil!35258) (c!510833 (regTwo!19546 r!17423)))))))

(declare-fun b!3072532 () Bool)

(assert (=> b!3072532 (= e!1922792 (not lt!1051786))))

(assert (= (and d!856410 c!510962) b!3072527))

(assert (= (and d!856410 (not c!510962)) b!3072529))

(assert (= (and d!856410 c!510963) b!3072521))

(assert (= (and d!856410 (not c!510963)) b!3072525))

(assert (= (and b!3072525 c!510961) b!3072532))

(assert (= (and b!3072525 (not c!510961)) b!3072530))

(assert (= (and b!3072530 (not res!1260962)) b!3072526))

(assert (= (and b!3072526 res!1260963) b!3072524))

(assert (= (and b!3072524 res!1260961) b!3072519))

(assert (= (and b!3072519 res!1260958) b!3072523))

(assert (= (and b!3072526 (not res!1260964)) b!3072520))

(assert (= (and b!3072520 res!1260957) b!3072528))

(assert (= (and b!3072528 (not res!1260960)) b!3072522))

(assert (= (and b!3072522 (not res!1260959)) b!3072531))

(assert (= (or b!3072521 b!3072524 b!3072528) bm!213483))

(assert (=> b!3072529 m!3386217))

(assert (=> b!3072529 m!3386217))

(declare-fun m!3386259 () Bool)

(assert (=> b!3072529 m!3386259))

(assert (=> b!3072529 m!3386219))

(assert (=> b!3072529 m!3386259))

(assert (=> b!3072529 m!3386219))

(declare-fun m!3386261 () Bool)

(assert (=> b!3072529 m!3386261))

(assert (=> b!3072519 m!3386219))

(assert (=> b!3072519 m!3386219))

(declare-fun m!3386263 () Bool)

(assert (=> b!3072519 m!3386263))

(assert (=> b!3072522 m!3386219))

(assert (=> b!3072522 m!3386219))

(assert (=> b!3072522 m!3386263))

(declare-fun m!3386265 () Bool)

(assert (=> bm!213483 m!3386265))

(assert (=> b!3072523 m!3386217))

(assert (=> b!3072531 m!3386217))

(assert (=> d!856410 m!3386265))

(assert (=> d!856410 m!3386045))

(declare-fun m!3386267 () Bool)

(assert (=> b!3072527 m!3386267))

(assert (=> b!3071988 d!856410))

(declare-fun b!3072533 () Bool)

(declare-fun res!1260966 () Bool)

(declare-fun e!1922797 () Bool)

(assert (=> b!3072533 (=> (not res!1260966) (not e!1922797))))

(assert (=> b!3072533 (= res!1260966 (isEmpty!19583 (tail!5044 Nil!35258)))))

(declare-fun d!856412 () Bool)

(declare-fun e!1922796 () Bool)

(assert (=> d!856412 e!1922796))

(declare-fun c!510966 () Bool)

(assert (=> d!856412 (= c!510966 ((_ is EmptyExpr!9517) lt!1051724))))

(declare-fun lt!1051787 () Bool)

(declare-fun e!1922800 () Bool)

(assert (=> d!856412 (= lt!1051787 e!1922800)))

(declare-fun c!510965 () Bool)

(assert (=> d!856412 (= c!510965 (isEmpty!19583 Nil!35258))))

(assert (=> d!856412 (validRegex!4250 lt!1051724)))

(assert (=> d!856412 (= (matchR!4399 lt!1051724 Nil!35258) lt!1051787)))

(declare-fun b!3072534 () Bool)

(declare-fun e!1922801 () Bool)

(declare-fun e!1922802 () Bool)

(assert (=> b!3072534 (= e!1922801 e!1922802)))

(declare-fun res!1260965 () Bool)

(assert (=> b!3072534 (=> (not res!1260965) (not e!1922802))))

(assert (=> b!3072534 (= res!1260965 (not lt!1051787))))

(declare-fun b!3072535 () Bool)

(declare-fun call!213489 () Bool)

(assert (=> b!3072535 (= e!1922796 (= lt!1051787 call!213489))))

(declare-fun b!3072536 () Bool)

(declare-fun res!1260967 () Bool)

(declare-fun e!1922798 () Bool)

(assert (=> b!3072536 (=> res!1260967 e!1922798)))

(assert (=> b!3072536 (= res!1260967 (not (isEmpty!19583 (tail!5044 Nil!35258))))))

(declare-fun b!3072537 () Bool)

(assert (=> b!3072537 (= e!1922797 (= (head!6818 Nil!35258) (c!510833 lt!1051724)))))

(declare-fun b!3072538 () Bool)

(declare-fun res!1260969 () Bool)

(assert (=> b!3072538 (=> (not res!1260969) (not e!1922797))))

(assert (=> b!3072538 (= res!1260969 (not call!213489))))

(declare-fun b!3072539 () Bool)

(declare-fun e!1922799 () Bool)

(assert (=> b!3072539 (= e!1922796 e!1922799)))

(declare-fun c!510964 () Bool)

(assert (=> b!3072539 (= c!510964 ((_ is EmptyLang!9517) lt!1051724))))

(declare-fun bm!213484 () Bool)

(assert (=> bm!213484 (= call!213489 (isEmpty!19583 Nil!35258))))

(declare-fun b!3072540 () Bool)

(declare-fun res!1260972 () Bool)

(assert (=> b!3072540 (=> res!1260972 e!1922801)))

(assert (=> b!3072540 (= res!1260972 e!1922797)))

(declare-fun res!1260971 () Bool)

(assert (=> b!3072540 (=> (not res!1260971) (not e!1922797))))

(assert (=> b!3072540 (= res!1260971 lt!1051787)))

(declare-fun b!3072541 () Bool)

(assert (=> b!3072541 (= e!1922800 (nullable!3163 lt!1051724))))

(declare-fun b!3072542 () Bool)

(assert (=> b!3072542 (= e!1922802 e!1922798)))

(declare-fun res!1260968 () Bool)

(assert (=> b!3072542 (=> res!1260968 e!1922798)))

(assert (=> b!3072542 (= res!1260968 call!213489)))

(declare-fun b!3072543 () Bool)

(assert (=> b!3072543 (= e!1922800 (matchR!4399 (derivativeStep!2759 lt!1051724 (head!6818 Nil!35258)) (tail!5044 Nil!35258)))))

(declare-fun b!3072544 () Bool)

(declare-fun res!1260970 () Bool)

(assert (=> b!3072544 (=> res!1260970 e!1922801)))

(assert (=> b!3072544 (= res!1260970 (not ((_ is ElementMatch!9517) lt!1051724)))))

(assert (=> b!3072544 (= e!1922799 e!1922801)))

(declare-fun b!3072545 () Bool)

(assert (=> b!3072545 (= e!1922798 (not (= (head!6818 Nil!35258) (c!510833 lt!1051724))))))

(declare-fun b!3072546 () Bool)

(assert (=> b!3072546 (= e!1922799 (not lt!1051787))))

(assert (= (and d!856412 c!510965) b!3072541))

(assert (= (and d!856412 (not c!510965)) b!3072543))

(assert (= (and d!856412 c!510966) b!3072535))

(assert (= (and d!856412 (not c!510966)) b!3072539))

(assert (= (and b!3072539 c!510964) b!3072546))

(assert (= (and b!3072539 (not c!510964)) b!3072544))

(assert (= (and b!3072544 (not res!1260970)) b!3072540))

(assert (= (and b!3072540 res!1260971) b!3072538))

(assert (= (and b!3072538 res!1260969) b!3072533))

(assert (= (and b!3072533 res!1260966) b!3072537))

(assert (= (and b!3072540 (not res!1260972)) b!3072534))

(assert (= (and b!3072534 res!1260965) b!3072542))

(assert (= (and b!3072542 (not res!1260968)) b!3072536))

(assert (= (and b!3072536 (not res!1260967)) b!3072545))

(assert (= (or b!3072535 b!3072538 b!3072542) bm!213484))

(assert (=> b!3072543 m!3386217))

(assert (=> b!3072543 m!3386217))

(declare-fun m!3386269 () Bool)

(assert (=> b!3072543 m!3386269))

(assert (=> b!3072543 m!3386219))

(assert (=> b!3072543 m!3386269))

(assert (=> b!3072543 m!3386219))

(declare-fun m!3386271 () Bool)

(assert (=> b!3072543 m!3386271))

(assert (=> b!3072533 m!3386219))

(assert (=> b!3072533 m!3386219))

(assert (=> b!3072533 m!3386263))

(assert (=> b!3072536 m!3386219))

(assert (=> b!3072536 m!3386219))

(assert (=> b!3072536 m!3386263))

(assert (=> bm!213484 m!3386265))

(assert (=> b!3072537 m!3386217))

(assert (=> b!3072545 m!3386217))

(assert (=> d!856412 m!3386265))

(declare-fun m!3386273 () Bool)

(assert (=> d!856412 m!3386273))

(declare-fun m!3386275 () Bool)

(assert (=> b!3072541 m!3386275))

(assert (=> b!3071988 d!856412))

(declare-fun b!3072547 () Bool)

(declare-fun res!1260974 () Bool)

(declare-fun e!1922804 () Bool)

(assert (=> b!3072547 (=> (not res!1260974) (not e!1922804))))

(assert (=> b!3072547 (= res!1260974 (isEmpty!19583 (tail!5044 s!11993)))))

(declare-fun d!856414 () Bool)

(declare-fun e!1922803 () Bool)

(assert (=> d!856414 e!1922803))

(declare-fun c!510969 () Bool)

(assert (=> d!856414 (= c!510969 ((_ is EmptyExpr!9517) lt!1051719))))

(declare-fun lt!1051788 () Bool)

(declare-fun e!1922807 () Bool)

(assert (=> d!856414 (= lt!1051788 e!1922807)))

(declare-fun c!510968 () Bool)

(assert (=> d!856414 (= c!510968 (isEmpty!19583 s!11993))))

(assert (=> d!856414 (validRegex!4250 lt!1051719)))

(assert (=> d!856414 (= (matchR!4399 lt!1051719 s!11993) lt!1051788)))

(declare-fun b!3072548 () Bool)

(declare-fun e!1922808 () Bool)

(declare-fun e!1922809 () Bool)

(assert (=> b!3072548 (= e!1922808 e!1922809)))

(declare-fun res!1260973 () Bool)

(assert (=> b!3072548 (=> (not res!1260973) (not e!1922809))))

(assert (=> b!3072548 (= res!1260973 (not lt!1051788))))

(declare-fun b!3072549 () Bool)

(declare-fun call!213490 () Bool)

(assert (=> b!3072549 (= e!1922803 (= lt!1051788 call!213490))))

(declare-fun b!3072550 () Bool)

(declare-fun res!1260975 () Bool)

(declare-fun e!1922805 () Bool)

(assert (=> b!3072550 (=> res!1260975 e!1922805)))

(assert (=> b!3072550 (= res!1260975 (not (isEmpty!19583 (tail!5044 s!11993))))))

(declare-fun b!3072551 () Bool)

(assert (=> b!3072551 (= e!1922804 (= (head!6818 s!11993) (c!510833 lt!1051719)))))

(declare-fun b!3072552 () Bool)

(declare-fun res!1260977 () Bool)

(assert (=> b!3072552 (=> (not res!1260977) (not e!1922804))))

(assert (=> b!3072552 (= res!1260977 (not call!213490))))

(declare-fun b!3072553 () Bool)

(declare-fun e!1922806 () Bool)

(assert (=> b!3072553 (= e!1922803 e!1922806)))

(declare-fun c!510967 () Bool)

(assert (=> b!3072553 (= c!510967 ((_ is EmptyLang!9517) lt!1051719))))

(declare-fun bm!213485 () Bool)

(assert (=> bm!213485 (= call!213490 (isEmpty!19583 s!11993))))

(declare-fun b!3072554 () Bool)

(declare-fun res!1260980 () Bool)

(assert (=> b!3072554 (=> res!1260980 e!1922808)))

(assert (=> b!3072554 (= res!1260980 e!1922804)))

(declare-fun res!1260979 () Bool)

(assert (=> b!3072554 (=> (not res!1260979) (not e!1922804))))

(assert (=> b!3072554 (= res!1260979 lt!1051788)))

(declare-fun b!3072555 () Bool)

(assert (=> b!3072555 (= e!1922807 (nullable!3163 lt!1051719))))

(declare-fun b!3072556 () Bool)

(assert (=> b!3072556 (= e!1922809 e!1922805)))

(declare-fun res!1260976 () Bool)

(assert (=> b!3072556 (=> res!1260976 e!1922805)))

(assert (=> b!3072556 (= res!1260976 call!213490)))

(declare-fun b!3072557 () Bool)

(assert (=> b!3072557 (= e!1922807 (matchR!4399 (derivativeStep!2759 lt!1051719 (head!6818 s!11993)) (tail!5044 s!11993)))))

(declare-fun b!3072558 () Bool)

(declare-fun res!1260978 () Bool)

(assert (=> b!3072558 (=> res!1260978 e!1922808)))

(assert (=> b!3072558 (= res!1260978 (not ((_ is ElementMatch!9517) lt!1051719)))))

(assert (=> b!3072558 (= e!1922806 e!1922808)))

(declare-fun b!3072559 () Bool)

(assert (=> b!3072559 (= e!1922805 (not (= (head!6818 s!11993) (c!510833 lt!1051719))))))

(declare-fun b!3072560 () Bool)

(assert (=> b!3072560 (= e!1922806 (not lt!1051788))))

(assert (= (and d!856414 c!510968) b!3072555))

(assert (= (and d!856414 (not c!510968)) b!3072557))

(assert (= (and d!856414 c!510969) b!3072549))

(assert (= (and d!856414 (not c!510969)) b!3072553))

(assert (= (and b!3072553 c!510967) b!3072560))

(assert (= (and b!3072553 (not c!510967)) b!3072558))

(assert (= (and b!3072558 (not res!1260978)) b!3072554))

(assert (= (and b!3072554 res!1260979) b!3072552))

(assert (= (and b!3072552 res!1260977) b!3072547))

(assert (= (and b!3072547 res!1260974) b!3072551))

(assert (= (and b!3072554 (not res!1260980)) b!3072548))

(assert (= (and b!3072548 res!1260973) b!3072556))

(assert (= (and b!3072556 (not res!1260976)) b!3072550))

(assert (= (and b!3072550 (not res!1260975)) b!3072559))

(assert (= (or b!3072549 b!3072552 b!3072556) bm!213485))

(assert (=> b!3072557 m!3386159))

(assert (=> b!3072557 m!3386159))

(declare-fun m!3386277 () Bool)

(assert (=> b!3072557 m!3386277))

(assert (=> b!3072557 m!3386163))

(assert (=> b!3072557 m!3386277))

(assert (=> b!3072557 m!3386163))

(declare-fun m!3386279 () Bool)

(assert (=> b!3072557 m!3386279))

(assert (=> b!3072547 m!3386163))

(assert (=> b!3072547 m!3386163))

(assert (=> b!3072547 m!3386167))

(assert (=> b!3072550 m!3386163))

(assert (=> b!3072550 m!3386163))

(assert (=> b!3072550 m!3386167))

(assert (=> bm!213485 m!3386055))

(assert (=> b!3072551 m!3386159))

(assert (=> b!3072559 m!3386159))

(assert (=> d!856414 m!3386055))

(declare-fun m!3386281 () Bool)

(assert (=> d!856414 m!3386281))

(declare-fun m!3386283 () Bool)

(assert (=> b!3072555 m!3386283))

(assert (=> b!3071988 d!856414))

(declare-fun d!856416 () Bool)

(assert (=> d!856416 (= (isEmpty!19583 s!11993) ((_ is Nil!35258) s!11993))))

(assert (=> b!3071987 d!856416))

(declare-fun d!856418 () Bool)

(assert (=> d!856418 (= (isEmptyLang!568 lt!1051719) ((_ is EmptyLang!9517) lt!1051719))))

(assert (=> b!3071992 d!856418))

(declare-fun b!3072611 () Bool)

(declare-fun e!1922847 () Regex!9517)

(declare-fun lt!1051803 () Regex!9517)

(declare-fun lt!1051806 () Regex!9517)

(assert (=> b!3072611 (= e!1922847 (Concat!14838 lt!1051803 lt!1051806))))

(declare-fun b!3072612 () Bool)

(declare-fun e!1922841 () Bool)

(declare-fun call!213507 () Bool)

(assert (=> b!3072612 (= e!1922841 call!213507)))

(declare-fun d!856420 () Bool)

(declare-fun e!1922850 () Bool)

(assert (=> d!856420 e!1922850))

(declare-fun res!1260989 () Bool)

(assert (=> d!856420 (=> (not res!1260989) (not e!1922850))))

(declare-fun lt!1051801 () Regex!9517)

(assert (=> d!856420 (= res!1260989 (validRegex!4250 lt!1051801))))

(declare-fun e!1922849 () Regex!9517)

(assert (=> d!856420 (= lt!1051801 e!1922849)))

(declare-fun c!510997 () Bool)

(assert (=> d!856420 (= c!510997 ((_ is EmptyLang!9517) (regTwo!19546 r!17423)))))

(assert (=> d!856420 (validRegex!4250 (regTwo!19546 r!17423))))

(assert (=> d!856420 (= (simplify!472 (regTwo!19546 r!17423)) lt!1051801)))

(declare-fun b!3072613 () Bool)

(declare-fun e!1922845 () Regex!9517)

(assert (=> b!3072613 (= e!1922845 EmptyLang!9517)))

(declare-fun b!3072614 () Bool)

(declare-fun e!1922851 () Regex!9517)

(declare-fun lt!1051802 () Regex!9517)

(assert (=> b!3072614 (= e!1922851 lt!1051802)))

(declare-fun b!3072615 () Bool)

(declare-fun e!1922842 () Regex!9517)

(declare-fun lt!1051804 () Regex!9517)

(assert (=> b!3072615 (= e!1922842 (Union!9517 lt!1051804 lt!1051802))))

(declare-fun b!3072616 () Bool)

(assert (=> b!3072616 (= e!1922842 lt!1051804)))

(declare-fun bm!213500 () Bool)

(declare-fun call!213510 () Regex!9517)

(declare-fun call!213505 () Regex!9517)

(assert (=> bm!213500 (= call!213510 call!213505)))

(declare-fun b!3072617 () Bool)

(declare-fun c!510994 () Bool)

(declare-fun call!213511 () Bool)

(assert (=> b!3072617 (= c!510994 call!213511)))

(declare-fun e!1922848 () Regex!9517)

(assert (=> b!3072617 (= e!1922845 e!1922848)))

(declare-fun c!511002 () Bool)

(declare-fun c!510999 () Bool)

(declare-fun bm!213501 () Bool)

(assert (=> bm!213501 (= call!213505 (simplify!472 (ite c!511002 (reg!9846 (regTwo!19546 r!17423)) (ite c!510999 (regTwo!19547 (regTwo!19546 r!17423)) (regOne!19546 (regTwo!19546 r!17423))))))))

(declare-fun lt!1051805 () Regex!9517)

(declare-fun bm!213502 () Bool)

(assert (=> bm!213502 (= call!213511 (isEmptyExpr!574 (ite c!511002 lt!1051805 lt!1051803)))))

(declare-fun bm!213503 () Bool)

(declare-fun call!213509 () Bool)

(assert (=> bm!213503 (= call!213507 call!213509)))

(declare-fun b!3072618 () Bool)

(declare-fun e!1922839 () Regex!9517)

(assert (=> b!3072618 (= e!1922839 e!1922845)))

(assert (=> b!3072618 (= lt!1051803 call!213510)))

(declare-fun call!213508 () Regex!9517)

(assert (=> b!3072618 (= lt!1051806 call!213508)))

(declare-fun res!1260988 () Bool)

(declare-fun call!213506 () Bool)

(assert (=> b!3072618 (= res!1260988 call!213506)))

(assert (=> b!3072618 (=> res!1260988 e!1922841)))

(declare-fun c!510992 () Bool)

(assert (=> b!3072618 (= c!510992 e!1922841)))

(declare-fun b!3072619 () Bool)

(assert (=> b!3072619 (= e!1922849 EmptyLang!9517)))

(declare-fun b!3072620 () Bool)

(declare-fun e!1922846 () Regex!9517)

(assert (=> b!3072620 (= e!1922849 e!1922846)))

(declare-fun c!510995 () Bool)

(assert (=> b!3072620 (= c!510995 ((_ is ElementMatch!9517) (regTwo!19546 r!17423)))))

(declare-fun b!3072621 () Bool)

(assert (=> b!3072621 (= c!510999 ((_ is Union!9517) (regTwo!19546 r!17423)))))

(declare-fun e!1922840 () Regex!9517)

(assert (=> b!3072621 (= e!1922840 e!1922839)))

(declare-fun b!3072622 () Bool)

(declare-fun c!511001 () Bool)

(declare-fun e!1922838 () Bool)

(assert (=> b!3072622 (= c!511001 e!1922838)))

(declare-fun res!1260987 () Bool)

(assert (=> b!3072622 (=> res!1260987 e!1922838)))

(assert (=> b!3072622 (= res!1260987 call!213509)))

(assert (=> b!3072622 (= lt!1051805 call!213505)))

(declare-fun e!1922843 () Regex!9517)

(assert (=> b!3072622 (= e!1922840 e!1922843)))

(declare-fun b!3072623 () Bool)

(assert (=> b!3072623 (= e!1922847 lt!1051803)))

(declare-fun b!3072624 () Bool)

(declare-fun c!511000 () Bool)

(assert (=> b!3072624 (= c!511000 call!213507)))

(assert (=> b!3072624 (= e!1922851 e!1922842)))

(declare-fun b!3072625 () Bool)

(assert (=> b!3072625 (= e!1922838 call!213511)))

(declare-fun b!3072626 () Bool)

(declare-fun e!1922844 () Regex!9517)

(assert (=> b!3072626 (= e!1922844 EmptyExpr!9517)))

(declare-fun b!3072627 () Bool)

(assert (=> b!3072627 (= e!1922843 (Star!9517 lt!1051805))))

(declare-fun b!3072628 () Bool)

(declare-fun c!510998 () Bool)

(assert (=> b!3072628 (= c!510998 ((_ is EmptyExpr!9517) (regTwo!19546 r!17423)))))

(assert (=> b!3072628 (= e!1922846 e!1922844)))

(declare-fun b!3072629 () Bool)

(assert (=> b!3072629 (= e!1922848 lt!1051806)))

(declare-fun b!3072630 () Bool)

(assert (=> b!3072630 (= e!1922844 e!1922840)))

(assert (=> b!3072630 (= c!511002 ((_ is Star!9517) (regTwo!19546 r!17423)))))

(declare-fun bm!213504 () Bool)

(assert (=> bm!213504 (= call!213509 (isEmptyLang!568 (ite c!511002 lt!1051805 (ite c!510999 lt!1051802 lt!1051806))))))

(declare-fun bm!213505 () Bool)

(assert (=> bm!213505 (= call!213506 (isEmptyLang!568 (ite c!510999 lt!1051804 lt!1051803)))))

(declare-fun b!3072631 () Bool)

(assert (=> b!3072631 (= e!1922850 (= (nullable!3163 lt!1051801) (nullable!3163 (regTwo!19546 r!17423))))))

(declare-fun bm!213506 () Bool)

(assert (=> bm!213506 (= call!213508 (simplify!472 (ite c!510999 (regOne!19547 (regTwo!19546 r!17423)) (regTwo!19546 (regTwo!19546 r!17423)))))))

(declare-fun b!3072632 () Bool)

(assert (=> b!3072632 (= e!1922848 e!1922847)))

(declare-fun c!510996 () Bool)

(assert (=> b!3072632 (= c!510996 (isEmptyExpr!574 lt!1051806))))

(declare-fun b!3072633 () Bool)

(assert (=> b!3072633 (= e!1922839 e!1922851)))

(assert (=> b!3072633 (= lt!1051804 call!213508)))

(assert (=> b!3072633 (= lt!1051802 call!213510)))

(declare-fun c!510993 () Bool)

(assert (=> b!3072633 (= c!510993 call!213506)))

(declare-fun b!3072634 () Bool)

(assert (=> b!3072634 (= e!1922846 (regTwo!19546 r!17423))))

(declare-fun b!3072635 () Bool)

(assert (=> b!3072635 (= e!1922843 EmptyExpr!9517)))

(assert (= (and d!856420 c!510997) b!3072619))

(assert (= (and d!856420 (not c!510997)) b!3072620))

(assert (= (and b!3072620 c!510995) b!3072634))

(assert (= (and b!3072620 (not c!510995)) b!3072628))

(assert (= (and b!3072628 c!510998) b!3072626))

(assert (= (and b!3072628 (not c!510998)) b!3072630))

(assert (= (and b!3072630 c!511002) b!3072622))

(assert (= (and b!3072630 (not c!511002)) b!3072621))

(assert (= (and b!3072622 (not res!1260987)) b!3072625))

(assert (= (and b!3072622 c!511001) b!3072635))

(assert (= (and b!3072622 (not c!511001)) b!3072627))

(assert (= (and b!3072621 c!510999) b!3072633))

(assert (= (and b!3072621 (not c!510999)) b!3072618))

(assert (= (and b!3072633 c!510993) b!3072614))

(assert (= (and b!3072633 (not c!510993)) b!3072624))

(assert (= (and b!3072624 c!511000) b!3072616))

(assert (= (and b!3072624 (not c!511000)) b!3072615))

(assert (= (and b!3072618 (not res!1260988)) b!3072612))

(assert (= (and b!3072618 c!510992) b!3072613))

(assert (= (and b!3072618 (not c!510992)) b!3072617))

(assert (= (and b!3072617 c!510994) b!3072629))

(assert (= (and b!3072617 (not c!510994)) b!3072632))

(assert (= (and b!3072632 c!510996) b!3072623))

(assert (= (and b!3072632 (not c!510996)) b!3072611))

(assert (= (or b!3072633 b!3072618) bm!213506))

(assert (= (or b!3072633 b!3072618) bm!213500))

(assert (= (or b!3072624 b!3072612) bm!213503))

(assert (= (or b!3072633 b!3072618) bm!213505))

(assert (= (or b!3072625 b!3072617) bm!213502))

(assert (= (or b!3072622 bm!213500) bm!213501))

(assert (= (or b!3072622 bm!213503) bm!213504))

(assert (= (and d!856420 res!1260989) b!3072631))

(declare-fun m!3386285 () Bool)

(assert (=> bm!213501 m!3386285))

(declare-fun m!3386287 () Bool)

(assert (=> bm!213506 m!3386287))

(declare-fun m!3386289 () Bool)

(assert (=> d!856420 m!3386289))

(assert (=> d!856420 m!3386045))

(declare-fun m!3386291 () Bool)

(assert (=> bm!213504 m!3386291))

(declare-fun m!3386293 () Bool)

(assert (=> bm!213502 m!3386293))

(declare-fun m!3386295 () Bool)

(assert (=> bm!213505 m!3386295))

(declare-fun m!3386297 () Bool)

(assert (=> b!3072632 m!3386297))

(declare-fun m!3386299 () Bool)

(assert (=> b!3072631 m!3386299))

(assert (=> b!3072631 m!3386267))

(assert (=> b!3071992 d!856420))

(declare-fun b!3072636 () Bool)

(declare-fun e!1922861 () Regex!9517)

(declare-fun lt!1051809 () Regex!9517)

(declare-fun lt!1051812 () Regex!9517)

(assert (=> b!3072636 (= e!1922861 (Concat!14838 lt!1051809 lt!1051812))))

(declare-fun b!3072637 () Bool)

(declare-fun e!1922855 () Bool)

(declare-fun call!213514 () Bool)

(assert (=> b!3072637 (= e!1922855 call!213514)))

(declare-fun d!856422 () Bool)

(declare-fun e!1922864 () Bool)

(assert (=> d!856422 e!1922864))

(declare-fun res!1260992 () Bool)

(assert (=> d!856422 (=> (not res!1260992) (not e!1922864))))

(declare-fun lt!1051807 () Regex!9517)

(assert (=> d!856422 (= res!1260992 (validRegex!4250 lt!1051807))))

(declare-fun e!1922863 () Regex!9517)

(assert (=> d!856422 (= lt!1051807 e!1922863)))

(declare-fun c!511008 () Bool)

(assert (=> d!856422 (= c!511008 ((_ is EmptyLang!9517) (regOne!19546 r!17423)))))

(assert (=> d!856422 (validRegex!4250 (regOne!19546 r!17423))))

(assert (=> d!856422 (= (simplify!472 (regOne!19546 r!17423)) lt!1051807)))

(declare-fun b!3072638 () Bool)

(declare-fun e!1922859 () Regex!9517)

(assert (=> b!3072638 (= e!1922859 EmptyLang!9517)))

(declare-fun b!3072639 () Bool)

(declare-fun e!1922865 () Regex!9517)

(declare-fun lt!1051808 () Regex!9517)

(assert (=> b!3072639 (= e!1922865 lt!1051808)))

(declare-fun b!3072640 () Bool)

(declare-fun e!1922856 () Regex!9517)

(declare-fun lt!1051810 () Regex!9517)

(assert (=> b!3072640 (= e!1922856 (Union!9517 lt!1051810 lt!1051808))))

(declare-fun b!3072641 () Bool)

(assert (=> b!3072641 (= e!1922856 lt!1051810)))

(declare-fun bm!213507 () Bool)

(declare-fun call!213517 () Regex!9517)

(declare-fun call!213512 () Regex!9517)

(assert (=> bm!213507 (= call!213517 call!213512)))

(declare-fun b!3072642 () Bool)

(declare-fun c!511005 () Bool)

(declare-fun call!213518 () Bool)

(assert (=> b!3072642 (= c!511005 call!213518)))

(declare-fun e!1922862 () Regex!9517)

(assert (=> b!3072642 (= e!1922859 e!1922862)))

(declare-fun bm!213508 () Bool)

(declare-fun c!511013 () Bool)

(declare-fun c!511010 () Bool)

(assert (=> bm!213508 (= call!213512 (simplify!472 (ite c!511013 (reg!9846 (regOne!19546 r!17423)) (ite c!511010 (regTwo!19547 (regOne!19546 r!17423)) (regOne!19546 (regOne!19546 r!17423))))))))

(declare-fun lt!1051811 () Regex!9517)

(declare-fun bm!213509 () Bool)

(assert (=> bm!213509 (= call!213518 (isEmptyExpr!574 (ite c!511013 lt!1051811 lt!1051809)))))

(declare-fun bm!213510 () Bool)

(declare-fun call!213516 () Bool)

(assert (=> bm!213510 (= call!213514 call!213516)))

(declare-fun b!3072643 () Bool)

(declare-fun e!1922853 () Regex!9517)

(assert (=> b!3072643 (= e!1922853 e!1922859)))

(assert (=> b!3072643 (= lt!1051809 call!213517)))

(declare-fun call!213515 () Regex!9517)

(assert (=> b!3072643 (= lt!1051812 call!213515)))

(declare-fun res!1260991 () Bool)

(declare-fun call!213513 () Bool)

(assert (=> b!3072643 (= res!1260991 call!213513)))

(assert (=> b!3072643 (=> res!1260991 e!1922855)))

(declare-fun c!511003 () Bool)

(assert (=> b!3072643 (= c!511003 e!1922855)))

(declare-fun b!3072644 () Bool)

(assert (=> b!3072644 (= e!1922863 EmptyLang!9517)))

(declare-fun b!3072645 () Bool)

(declare-fun e!1922860 () Regex!9517)

(assert (=> b!3072645 (= e!1922863 e!1922860)))

(declare-fun c!511006 () Bool)

(assert (=> b!3072645 (= c!511006 ((_ is ElementMatch!9517) (regOne!19546 r!17423)))))

(declare-fun b!3072646 () Bool)

(assert (=> b!3072646 (= c!511010 ((_ is Union!9517) (regOne!19546 r!17423)))))

(declare-fun e!1922854 () Regex!9517)

(assert (=> b!3072646 (= e!1922854 e!1922853)))

(declare-fun b!3072647 () Bool)

(declare-fun c!511012 () Bool)

(declare-fun e!1922852 () Bool)

(assert (=> b!3072647 (= c!511012 e!1922852)))

(declare-fun res!1260990 () Bool)

(assert (=> b!3072647 (=> res!1260990 e!1922852)))

(assert (=> b!3072647 (= res!1260990 call!213516)))

(assert (=> b!3072647 (= lt!1051811 call!213512)))

(declare-fun e!1922857 () Regex!9517)

(assert (=> b!3072647 (= e!1922854 e!1922857)))

(declare-fun b!3072648 () Bool)

(assert (=> b!3072648 (= e!1922861 lt!1051809)))

(declare-fun b!3072649 () Bool)

(declare-fun c!511011 () Bool)

(assert (=> b!3072649 (= c!511011 call!213514)))

(assert (=> b!3072649 (= e!1922865 e!1922856)))

(declare-fun b!3072650 () Bool)

(assert (=> b!3072650 (= e!1922852 call!213518)))

(declare-fun b!3072651 () Bool)

(declare-fun e!1922858 () Regex!9517)

(assert (=> b!3072651 (= e!1922858 EmptyExpr!9517)))

(declare-fun b!3072652 () Bool)

(assert (=> b!3072652 (= e!1922857 (Star!9517 lt!1051811))))

(declare-fun b!3072653 () Bool)

(declare-fun c!511009 () Bool)

(assert (=> b!3072653 (= c!511009 ((_ is EmptyExpr!9517) (regOne!19546 r!17423)))))

(assert (=> b!3072653 (= e!1922860 e!1922858)))

(declare-fun b!3072654 () Bool)

(assert (=> b!3072654 (= e!1922862 lt!1051812)))

(declare-fun b!3072655 () Bool)

(assert (=> b!3072655 (= e!1922858 e!1922854)))

(assert (=> b!3072655 (= c!511013 ((_ is Star!9517) (regOne!19546 r!17423)))))

(declare-fun bm!213511 () Bool)

(assert (=> bm!213511 (= call!213516 (isEmptyLang!568 (ite c!511013 lt!1051811 (ite c!511010 lt!1051808 lt!1051812))))))

(declare-fun bm!213512 () Bool)

(assert (=> bm!213512 (= call!213513 (isEmptyLang!568 (ite c!511010 lt!1051810 lt!1051809)))))

(declare-fun b!3072656 () Bool)

(assert (=> b!3072656 (= e!1922864 (= (nullable!3163 lt!1051807) (nullable!3163 (regOne!19546 r!17423))))))

(declare-fun bm!213513 () Bool)

(assert (=> bm!213513 (= call!213515 (simplify!472 (ite c!511010 (regOne!19547 (regOne!19546 r!17423)) (regTwo!19546 (regOne!19546 r!17423)))))))

(declare-fun b!3072657 () Bool)

(assert (=> b!3072657 (= e!1922862 e!1922861)))

(declare-fun c!511007 () Bool)

(assert (=> b!3072657 (= c!511007 (isEmptyExpr!574 lt!1051812))))

(declare-fun b!3072658 () Bool)

(assert (=> b!3072658 (= e!1922853 e!1922865)))

(assert (=> b!3072658 (= lt!1051810 call!213515)))

(assert (=> b!3072658 (= lt!1051808 call!213517)))

(declare-fun c!511004 () Bool)

(assert (=> b!3072658 (= c!511004 call!213513)))

(declare-fun b!3072659 () Bool)

(assert (=> b!3072659 (= e!1922860 (regOne!19546 r!17423))))

(declare-fun b!3072660 () Bool)

(assert (=> b!3072660 (= e!1922857 EmptyExpr!9517)))

(assert (= (and d!856422 c!511008) b!3072644))

(assert (= (and d!856422 (not c!511008)) b!3072645))

(assert (= (and b!3072645 c!511006) b!3072659))

(assert (= (and b!3072645 (not c!511006)) b!3072653))

(assert (= (and b!3072653 c!511009) b!3072651))

(assert (= (and b!3072653 (not c!511009)) b!3072655))

(assert (= (and b!3072655 c!511013) b!3072647))

(assert (= (and b!3072655 (not c!511013)) b!3072646))

(assert (= (and b!3072647 (not res!1260990)) b!3072650))

(assert (= (and b!3072647 c!511012) b!3072660))

(assert (= (and b!3072647 (not c!511012)) b!3072652))

(assert (= (and b!3072646 c!511010) b!3072658))

(assert (= (and b!3072646 (not c!511010)) b!3072643))

(assert (= (and b!3072658 c!511004) b!3072639))

(assert (= (and b!3072658 (not c!511004)) b!3072649))

(assert (= (and b!3072649 c!511011) b!3072641))

(assert (= (and b!3072649 (not c!511011)) b!3072640))

(assert (= (and b!3072643 (not res!1260991)) b!3072637))

(assert (= (and b!3072643 c!511003) b!3072638))

(assert (= (and b!3072643 (not c!511003)) b!3072642))

(assert (= (and b!3072642 c!511005) b!3072654))

(assert (= (and b!3072642 (not c!511005)) b!3072657))

(assert (= (and b!3072657 c!511007) b!3072648))

(assert (= (and b!3072657 (not c!511007)) b!3072636))

(assert (= (or b!3072658 b!3072643) bm!213513))

(assert (= (or b!3072658 b!3072643) bm!213507))

(assert (= (or b!3072649 b!3072637) bm!213510))

(assert (= (or b!3072658 b!3072643) bm!213512))

(assert (= (or b!3072650 b!3072642) bm!213509))

(assert (= (or b!3072647 bm!213507) bm!213508))

(assert (= (or b!3072647 bm!213510) bm!213511))

(assert (= (and d!856422 res!1260992) b!3072656))

(declare-fun m!3386301 () Bool)

(assert (=> bm!213508 m!3386301))

(declare-fun m!3386303 () Bool)

(assert (=> bm!213513 m!3386303))

(declare-fun m!3386305 () Bool)

(assert (=> d!856422 m!3386305))

(assert (=> d!856422 m!3386043))

(declare-fun m!3386307 () Bool)

(assert (=> bm!213511 m!3386307))

(declare-fun m!3386309 () Bool)

(assert (=> bm!213509 m!3386309))

(declare-fun m!3386311 () Bool)

(assert (=> bm!213512 m!3386311))

(declare-fun m!3386313 () Bool)

(assert (=> b!3072657 m!3386313))

(declare-fun m!3386315 () Bool)

(assert (=> b!3072656 m!3386315))

(assert (=> b!3072656 m!3386257))

(assert (=> b!3071992 d!856422))

(declare-fun d!856424 () Bool)

(assert (=> d!856424 (= (isEmptyExpr!574 lt!1051719) ((_ is EmptyExpr!9517) lt!1051719))))

(assert (=> b!3071991 d!856424))

(declare-fun b!3072674 () Bool)

(declare-fun e!1922868 () Bool)

(declare-fun tp!969060 () Bool)

(declare-fun tp!969061 () Bool)

(assert (=> b!3072674 (= e!1922868 (and tp!969060 tp!969061))))

(declare-fun b!3072673 () Bool)

(declare-fun tp!969059 () Bool)

(assert (=> b!3072673 (= e!1922868 tp!969059)))

(declare-fun b!3072671 () Bool)

(assert (=> b!3072671 (= e!1922868 tp_is_empty!16597)))

(assert (=> b!3071984 (= tp!969009 e!1922868)))

(declare-fun b!3072672 () Bool)

(declare-fun tp!969062 () Bool)

(declare-fun tp!969058 () Bool)

(assert (=> b!3072672 (= e!1922868 (and tp!969062 tp!969058))))

(assert (= (and b!3071984 ((_ is ElementMatch!9517) (regOne!19546 r!17423))) b!3072671))

(assert (= (and b!3071984 ((_ is Concat!14838) (regOne!19546 r!17423))) b!3072672))

(assert (= (and b!3071984 ((_ is Star!9517) (regOne!19546 r!17423))) b!3072673))

(assert (= (and b!3071984 ((_ is Union!9517) (regOne!19546 r!17423))) b!3072674))

(declare-fun b!3072678 () Bool)

(declare-fun e!1922869 () Bool)

(declare-fun tp!969065 () Bool)

(declare-fun tp!969066 () Bool)

(assert (=> b!3072678 (= e!1922869 (and tp!969065 tp!969066))))

(declare-fun b!3072677 () Bool)

(declare-fun tp!969064 () Bool)

(assert (=> b!3072677 (= e!1922869 tp!969064)))

(declare-fun b!3072675 () Bool)

(assert (=> b!3072675 (= e!1922869 tp_is_empty!16597)))

(assert (=> b!3071984 (= tp!969005 e!1922869)))

(declare-fun b!3072676 () Bool)

(declare-fun tp!969067 () Bool)

(declare-fun tp!969063 () Bool)

(assert (=> b!3072676 (= e!1922869 (and tp!969067 tp!969063))))

(assert (= (and b!3071984 ((_ is ElementMatch!9517) (regTwo!19546 r!17423))) b!3072675))

(assert (= (and b!3071984 ((_ is Concat!14838) (regTwo!19546 r!17423))) b!3072676))

(assert (= (and b!3071984 ((_ is Star!9517) (regTwo!19546 r!17423))) b!3072677))

(assert (= (and b!3071984 ((_ is Union!9517) (regTwo!19546 r!17423))) b!3072678))

(declare-fun b!3072683 () Bool)

(declare-fun e!1922872 () Bool)

(declare-fun tp!969070 () Bool)

(assert (=> b!3072683 (= e!1922872 (and tp_is_empty!16597 tp!969070))))

(assert (=> b!3071983 (= tp!969007 e!1922872)))

(assert (= (and b!3071983 ((_ is Cons!35258) (t!234447 s!11993))) b!3072683))

(declare-fun b!3072687 () Bool)

(declare-fun e!1922873 () Bool)

(declare-fun tp!969073 () Bool)

(declare-fun tp!969074 () Bool)

(assert (=> b!3072687 (= e!1922873 (and tp!969073 tp!969074))))

(declare-fun b!3072686 () Bool)

(declare-fun tp!969072 () Bool)

(assert (=> b!3072686 (= e!1922873 tp!969072)))

(declare-fun b!3072684 () Bool)

(assert (=> b!3072684 (= e!1922873 tp_is_empty!16597)))

(assert (=> b!3071982 (= tp!969008 e!1922873)))

(declare-fun b!3072685 () Bool)

(declare-fun tp!969075 () Bool)

(declare-fun tp!969071 () Bool)

(assert (=> b!3072685 (= e!1922873 (and tp!969075 tp!969071))))

(assert (= (and b!3071982 ((_ is ElementMatch!9517) (regOne!19547 r!17423))) b!3072684))

(assert (= (and b!3071982 ((_ is Concat!14838) (regOne!19547 r!17423))) b!3072685))

(assert (= (and b!3071982 ((_ is Star!9517) (regOne!19547 r!17423))) b!3072686))

(assert (= (and b!3071982 ((_ is Union!9517) (regOne!19547 r!17423))) b!3072687))

(declare-fun b!3072691 () Bool)

(declare-fun e!1922874 () Bool)

(declare-fun tp!969078 () Bool)

(declare-fun tp!969079 () Bool)

(assert (=> b!3072691 (= e!1922874 (and tp!969078 tp!969079))))

(declare-fun b!3072690 () Bool)

(declare-fun tp!969077 () Bool)

(assert (=> b!3072690 (= e!1922874 tp!969077)))

(declare-fun b!3072688 () Bool)

(assert (=> b!3072688 (= e!1922874 tp_is_empty!16597)))

(assert (=> b!3071982 (= tp!969006 e!1922874)))

(declare-fun b!3072689 () Bool)

(declare-fun tp!969080 () Bool)

(declare-fun tp!969076 () Bool)

(assert (=> b!3072689 (= e!1922874 (and tp!969080 tp!969076))))

(assert (= (and b!3071982 ((_ is ElementMatch!9517) (regTwo!19547 r!17423))) b!3072688))

(assert (= (and b!3071982 ((_ is Concat!14838) (regTwo!19547 r!17423))) b!3072689))

(assert (= (and b!3071982 ((_ is Star!9517) (regTwo!19547 r!17423))) b!3072690))

(assert (= (and b!3071982 ((_ is Union!9517) (regTwo!19547 r!17423))) b!3072691))

(declare-fun b!3072695 () Bool)

(declare-fun e!1922875 () Bool)

(declare-fun tp!969083 () Bool)

(declare-fun tp!969084 () Bool)

(assert (=> b!3072695 (= e!1922875 (and tp!969083 tp!969084))))

(declare-fun b!3072694 () Bool)

(declare-fun tp!969082 () Bool)

(assert (=> b!3072694 (= e!1922875 tp!969082)))

(declare-fun b!3072692 () Bool)

(assert (=> b!3072692 (= e!1922875 tp_is_empty!16597)))

(assert (=> b!3071986 (= tp!969004 e!1922875)))

(declare-fun b!3072693 () Bool)

(declare-fun tp!969085 () Bool)

(declare-fun tp!969081 () Bool)

(assert (=> b!3072693 (= e!1922875 (and tp!969085 tp!969081))))

(assert (= (and b!3071986 ((_ is ElementMatch!9517) (reg!9846 r!17423))) b!3072692))

(assert (= (and b!3071986 ((_ is Concat!14838) (reg!9846 r!17423))) b!3072693))

(assert (= (and b!3071986 ((_ is Star!9517) (reg!9846 r!17423))) b!3072694))

(assert (= (and b!3071986 ((_ is Union!9517) (reg!9846 r!17423))) b!3072695))

(check-sat (not b!3072537) (not b!3072543) (not bm!213502) (not bm!213485) (not d!856404) (not d!856342) (not b!3072505) (not bm!213481) (not b!3072691) (not b!3072515) (not b!3072441) (not b!3072686) (not b!3072550) (not d!856420) (not bm!213484) (not b!3072695) (not bm!213505) (not b!3072008) (not b!3072673) (not b!3072674) (not d!856414) (not b!3072523) (not d!856380) (not b!3072415) (not d!856422) (not d!856408) (not b!3072690) (not b!3072336) (not bm!213509) (not b!3072656) (not b!3072517) (not b!3072672) (not b!3072330) (not b!3072685) (not b!3072527) (not b!3072693) (not b!3072531) (not bm!213508) (not bm!213501) (not b!3072241) (not b!3072678) (not bm!213431) (not b!3072676) (not b!3072334) (not bm!213470) (not b!3072551) (not b!3072559) (not b!3072513) (not bm!213443) (not b!3072547) (not b!3072632) (not b!3072683) (not b!3072631) (not bm!213479) (not b!3072687) (not bm!213478) (not b!3072244) (not b!3072541) (not bm!213472) (not b!3072326) (not bm!213513) (not b!3072443) (not bm!213504) (not d!856412) (not b!3072519) (not b!3072557) (not b!3072677) (not b!3072529) (not d!856378) tp_is_empty!16597 (not b!3072689) (not b!3072536) (not bm!213506) (not bm!213476) (not bm!213482) (not b!3072329) (not b!3072533) (not b!3072508) (not b!3072545) (not b!3072657) (not bm!213512) (not b!3072509) (not b!3072694) (not b!3072522) (not b!3072338) (not b!3072462) (not b!3072555) (not d!856410) (not bm!213483) (not d!856406) (not b!3072007) (not b!3072442) (not b!3072453) (not bm!213432) (not bm!213511))
(check-sat)
