; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!86210 () Bool)

(assert start!86210)

(declare-fun res!440809 () Bool)

(declare-fun e!625244 () Bool)

(assert (=> start!86210 (=> (not res!440809) (not e!625244))))

(declare-datatypes ((C!5972 0))(
  ( (C!5973 (val!3234 Int)) )
))
(declare-datatypes ((Regex!2701 0))(
  ( (ElementMatch!2701 (c!158122 C!5972)) (Concat!4534 (regOne!5914 Regex!2701) (regTwo!5914 Regex!2701)) (EmptyExpr!2701) (Star!2701 (reg!3030 Regex!2701)) (EmptyLang!2701) (Union!2701 (regOne!5915 Regex!2701) (regTwo!5915 Regex!2701)) )
))
(declare-fun r!15766 () Regex!2701)

(declare-fun validRegex!1170 (Regex!2701) Bool)

(assert (=> start!86210 (= res!440809 (validRegex!1170 r!15766))))

(assert (=> start!86210 e!625244))

(declare-fun e!625245 () Bool)

(assert (=> start!86210 e!625245))

(declare-fun e!625247 () Bool)

(assert (=> start!86210 e!625247))

(declare-fun b!969711 () Bool)

(declare-fun e!625246 () Bool)

(assert (=> b!969711 (= e!625246 (validRegex!1170 (regTwo!5914 r!15766)))))

(declare-fun b!969712 () Bool)

(declare-fun tp!297104 () Bool)

(declare-fun tp!297103 () Bool)

(assert (=> b!969712 (= e!625245 (and tp!297104 tp!297103))))

(declare-fun b!969713 () Bool)

(assert (=> b!969713 (= e!625244 (not e!625246))))

(declare-fun res!440810 () Bool)

(assert (=> b!969713 (=> res!440810 e!625246)))

(declare-fun lt!348743 () Bool)

(get-info :version)

(assert (=> b!969713 (= res!440810 (or (not lt!348743) (not ((_ is Concat!4534) r!15766)) (not ((_ is EmptyExpr!2701) (regOne!5914 r!15766)))))))

(declare-datatypes ((List!9931 0))(
  ( (Nil!9915) (Cons!9915 (h!15316 C!5972) (t!100977 List!9931)) )
))
(declare-fun s!10566 () List!9931)

(declare-fun matchRSpec!500 (Regex!2701 List!9931) Bool)

(assert (=> b!969713 (= lt!348743 (matchRSpec!500 r!15766 s!10566))))

(declare-fun matchR!1237 (Regex!2701 List!9931) Bool)

(assert (=> b!969713 (= lt!348743 (matchR!1237 r!15766 s!10566))))

(declare-datatypes ((Unit!15061 0))(
  ( (Unit!15062) )
))
(declare-fun lt!348742 () Unit!15061)

(declare-fun mainMatchTheorem!500 (Regex!2701 List!9931) Unit!15061)

(assert (=> b!969713 (= lt!348742 (mainMatchTheorem!500 r!15766 s!10566))))

(declare-fun b!969714 () Bool)

(declare-fun tp!297107 () Bool)

(assert (=> b!969714 (= e!625245 tp!297107)))

(declare-fun b!969715 () Bool)

(declare-fun tp!297108 () Bool)

(declare-fun tp!297105 () Bool)

(assert (=> b!969715 (= e!625245 (and tp!297108 tp!297105))))

(declare-fun b!969716 () Bool)

(declare-fun tp_is_empty!5045 () Bool)

(declare-fun tp!297106 () Bool)

(assert (=> b!969716 (= e!625247 (and tp_is_empty!5045 tp!297106))))

(declare-fun b!969717 () Bool)

(assert (=> b!969717 (= e!625245 tp_is_empty!5045)))

(assert (= (and start!86210 res!440809) b!969713))

(assert (= (and b!969713 (not res!440810)) b!969711))

(assert (= (and start!86210 ((_ is ElementMatch!2701) r!15766)) b!969717))

(assert (= (and start!86210 ((_ is Concat!4534) r!15766)) b!969715))

(assert (= (and start!86210 ((_ is Star!2701) r!15766)) b!969714))

(assert (= (and start!86210 ((_ is Union!2701) r!15766)) b!969712))

(assert (= (and start!86210 ((_ is Cons!9915) s!10566)) b!969716))

(declare-fun m!1174491 () Bool)

(assert (=> start!86210 m!1174491))

(declare-fun m!1174493 () Bool)

(assert (=> b!969711 m!1174493))

(declare-fun m!1174495 () Bool)

(assert (=> b!969713 m!1174495))

(declare-fun m!1174497 () Bool)

(assert (=> b!969713 m!1174497))

(declare-fun m!1174499 () Bool)

(assert (=> b!969713 m!1174499))

(check-sat tp_is_empty!5045 (not b!969714) (not start!86210) (not b!969715) (not b!969712) (not b!969716) (not b!969711) (not b!969713))
(check-sat)
(get-model)

(declare-fun b!969915 () Bool)

(assert (=> b!969915 true))

(assert (=> b!969915 true))

(declare-fun bs!242350 () Bool)

(declare-fun b!969910 () Bool)

(assert (= bs!242350 (and b!969910 b!969915)))

(declare-fun lambda!34294 () Int)

(declare-fun lambda!34293 () Int)

(assert (=> bs!242350 (not (= lambda!34294 lambda!34293))))

(assert (=> b!969910 true))

(assert (=> b!969910 true))

(declare-fun e!625352 () Bool)

(declare-fun call!61502 () Bool)

(assert (=> b!969910 (= e!625352 call!61502)))

(declare-fun b!969911 () Bool)

(declare-fun e!625350 () Bool)

(assert (=> b!969911 (= e!625350 (= s!10566 (Cons!9915 (c!158122 r!15766) Nil!9915)))))

(declare-fun b!969912 () Bool)

(declare-fun e!625351 () Bool)

(assert (=> b!969912 (= e!625351 e!625352)))

(declare-fun c!158160 () Bool)

(assert (=> b!969912 (= c!158160 ((_ is Star!2701) r!15766))))

(declare-fun b!969913 () Bool)

(declare-fun res!440892 () Bool)

(declare-fun e!625356 () Bool)

(assert (=> b!969913 (=> res!440892 e!625356)))

(declare-fun call!61501 () Bool)

(assert (=> b!969913 (= res!440892 call!61501)))

(assert (=> b!969913 (= e!625352 e!625356)))

(declare-fun bm!61496 () Bool)

(declare-fun isEmpty!6221 (List!9931) Bool)

(assert (=> bm!61496 (= call!61501 (isEmpty!6221 s!10566))))

(declare-fun b!969914 () Bool)

(declare-fun e!625353 () Bool)

(assert (=> b!969914 (= e!625351 e!625353)))

(declare-fun res!440890 () Bool)

(assert (=> b!969914 (= res!440890 (matchRSpec!500 (regOne!5915 r!15766) s!10566))))

(assert (=> b!969914 (=> res!440890 e!625353)))

(assert (=> b!969915 (= e!625356 call!61502)))

(declare-fun b!969916 () Bool)

(declare-fun e!625354 () Bool)

(assert (=> b!969916 (= e!625354 call!61501)))

(declare-fun b!969917 () Bool)

(assert (=> b!969917 (= e!625353 (matchRSpec!500 (regTwo!5915 r!15766) s!10566))))

(declare-fun b!969918 () Bool)

(declare-fun e!625355 () Bool)

(assert (=> b!969918 (= e!625354 e!625355)))

(declare-fun res!440891 () Bool)

(assert (=> b!969918 (= res!440891 (not ((_ is EmptyLang!2701) r!15766)))))

(assert (=> b!969918 (=> (not res!440891) (not e!625355))))

(declare-fun b!969919 () Bool)

(declare-fun c!158162 () Bool)

(assert (=> b!969919 (= c!158162 ((_ is Union!2701) r!15766))))

(assert (=> b!969919 (= e!625350 e!625351)))

(declare-fun b!969920 () Bool)

(declare-fun c!158161 () Bool)

(assert (=> b!969920 (= c!158161 ((_ is ElementMatch!2701) r!15766))))

(assert (=> b!969920 (= e!625355 e!625350)))

(declare-fun bm!61497 () Bool)

(declare-fun Exists!440 (Int) Bool)

(assert (=> bm!61497 (= call!61502 (Exists!440 (ite c!158160 lambda!34293 lambda!34294)))))

(declare-fun d!286498 () Bool)

(declare-fun c!158163 () Bool)

(assert (=> d!286498 (= c!158163 ((_ is EmptyExpr!2701) r!15766))))

(assert (=> d!286498 (= (matchRSpec!500 r!15766 s!10566) e!625354)))

(assert (= (and d!286498 c!158163) b!969916))

(assert (= (and d!286498 (not c!158163)) b!969918))

(assert (= (and b!969918 res!440891) b!969920))

(assert (= (and b!969920 c!158161) b!969911))

(assert (= (and b!969920 (not c!158161)) b!969919))

(assert (= (and b!969919 c!158162) b!969914))

(assert (= (and b!969919 (not c!158162)) b!969912))

(assert (= (and b!969914 (not res!440890)) b!969917))

(assert (= (and b!969912 c!158160) b!969913))

(assert (= (and b!969912 (not c!158160)) b!969910))

(assert (= (and b!969913 (not res!440892)) b!969915))

(assert (= (or b!969915 b!969910) bm!61497))

(assert (= (or b!969916 b!969913) bm!61496))

(declare-fun m!1174535 () Bool)

(assert (=> bm!61496 m!1174535))

(declare-fun m!1174537 () Bool)

(assert (=> b!969914 m!1174537))

(declare-fun m!1174539 () Bool)

(assert (=> b!969917 m!1174539))

(declare-fun m!1174541 () Bool)

(assert (=> bm!61497 m!1174541))

(assert (=> b!969713 d!286498))

(declare-fun b!969953 () Bool)

(declare-fun res!440909 () Bool)

(declare-fun e!625374 () Bool)

(assert (=> b!969953 (=> res!440909 e!625374)))

(declare-fun tail!1344 (List!9931) List!9931)

(assert (=> b!969953 (= res!440909 (not (isEmpty!6221 (tail!1344 s!10566))))))

(declare-fun b!969954 () Bool)

(declare-fun e!625376 () Bool)

(declare-fun e!625377 () Bool)

(assert (=> b!969954 (= e!625376 e!625377)))

(declare-fun res!440913 () Bool)

(assert (=> b!969954 (=> (not res!440913) (not e!625377))))

(declare-fun lt!348752 () Bool)

(assert (=> b!969954 (= res!440913 (not lt!348752))))

(declare-fun b!969955 () Bool)

(declare-fun res!440916 () Bool)

(declare-fun e!625372 () Bool)

(assert (=> b!969955 (=> (not res!440916) (not e!625372))))

(assert (=> b!969955 (= res!440916 (isEmpty!6221 (tail!1344 s!10566)))))

(declare-fun b!969957 () Bool)

(declare-fun head!1782 (List!9931) C!5972)

(assert (=> b!969957 (= e!625374 (not (= (head!1782 s!10566) (c!158122 r!15766))))))

(declare-fun b!969958 () Bool)

(declare-fun e!625371 () Bool)

(assert (=> b!969958 (= e!625371 (not lt!348752))))

(declare-fun b!969959 () Bool)

(declare-fun e!625375 () Bool)

(declare-fun derivativeStep!629 (Regex!2701 C!5972) Regex!2701)

(assert (=> b!969959 (= e!625375 (matchR!1237 (derivativeStep!629 r!15766 (head!1782 s!10566)) (tail!1344 s!10566)))))

(declare-fun b!969960 () Bool)

(declare-fun e!625373 () Bool)

(declare-fun call!61505 () Bool)

(assert (=> b!969960 (= e!625373 (= lt!348752 call!61505))))

(declare-fun b!969961 () Bool)

(declare-fun nullable!823 (Regex!2701) Bool)

(assert (=> b!969961 (= e!625375 (nullable!823 r!15766))))

(declare-fun b!969962 () Bool)

(declare-fun res!440912 () Bool)

(assert (=> b!969962 (=> res!440912 e!625376)))

(assert (=> b!969962 (= res!440912 e!625372)))

(declare-fun res!440911 () Bool)

(assert (=> b!969962 (=> (not res!440911) (not e!625372))))

(assert (=> b!969962 (= res!440911 lt!348752)))

(declare-fun b!969963 () Bool)

(assert (=> b!969963 (= e!625377 e!625374)))

(declare-fun res!440914 () Bool)

(assert (=> b!969963 (=> res!440914 e!625374)))

(assert (=> b!969963 (= res!440914 call!61505)))

(declare-fun bm!61500 () Bool)

(assert (=> bm!61500 (= call!61505 (isEmpty!6221 s!10566))))

(declare-fun b!969964 () Bool)

(declare-fun res!440910 () Bool)

(assert (=> b!969964 (=> (not res!440910) (not e!625372))))

(assert (=> b!969964 (= res!440910 (not call!61505))))

(declare-fun b!969956 () Bool)

(declare-fun res!440915 () Bool)

(assert (=> b!969956 (=> res!440915 e!625376)))

(assert (=> b!969956 (= res!440915 (not ((_ is ElementMatch!2701) r!15766)))))

(assert (=> b!969956 (= e!625371 e!625376)))

(declare-fun d!286510 () Bool)

(assert (=> d!286510 e!625373))

(declare-fun c!158172 () Bool)

(assert (=> d!286510 (= c!158172 ((_ is EmptyExpr!2701) r!15766))))

(assert (=> d!286510 (= lt!348752 e!625375)))

(declare-fun c!158170 () Bool)

(assert (=> d!286510 (= c!158170 (isEmpty!6221 s!10566))))

(assert (=> d!286510 (validRegex!1170 r!15766)))

(assert (=> d!286510 (= (matchR!1237 r!15766 s!10566) lt!348752)))

(declare-fun b!969965 () Bool)

(assert (=> b!969965 (= e!625372 (= (head!1782 s!10566) (c!158122 r!15766)))))

(declare-fun b!969966 () Bool)

(assert (=> b!969966 (= e!625373 e!625371)))

(declare-fun c!158171 () Bool)

(assert (=> b!969966 (= c!158171 ((_ is EmptyLang!2701) r!15766))))

(assert (= (and d!286510 c!158170) b!969961))

(assert (= (and d!286510 (not c!158170)) b!969959))

(assert (= (and d!286510 c!158172) b!969960))

(assert (= (and d!286510 (not c!158172)) b!969966))

(assert (= (and b!969966 c!158171) b!969958))

(assert (= (and b!969966 (not c!158171)) b!969956))

(assert (= (and b!969956 (not res!440915)) b!969962))

(assert (= (and b!969962 res!440911) b!969964))

(assert (= (and b!969964 res!440910) b!969955))

(assert (= (and b!969955 res!440916) b!969965))

(assert (= (and b!969962 (not res!440912)) b!969954))

(assert (= (and b!969954 res!440913) b!969963))

(assert (= (and b!969963 (not res!440914)) b!969953))

(assert (= (and b!969953 (not res!440909)) b!969957))

(assert (= (or b!969960 b!969964 b!969963) bm!61500))

(assert (=> bm!61500 m!1174535))

(declare-fun m!1174543 () Bool)

(assert (=> b!969961 m!1174543))

(declare-fun m!1174545 () Bool)

(assert (=> b!969955 m!1174545))

(assert (=> b!969955 m!1174545))

(declare-fun m!1174547 () Bool)

(assert (=> b!969955 m!1174547))

(declare-fun m!1174549 () Bool)

(assert (=> b!969959 m!1174549))

(assert (=> b!969959 m!1174549))

(declare-fun m!1174551 () Bool)

(assert (=> b!969959 m!1174551))

(assert (=> b!969959 m!1174545))

(assert (=> b!969959 m!1174551))

(assert (=> b!969959 m!1174545))

(declare-fun m!1174553 () Bool)

(assert (=> b!969959 m!1174553))

(assert (=> d!286510 m!1174535))

(assert (=> d!286510 m!1174491))

(assert (=> b!969965 m!1174549))

(assert (=> b!969957 m!1174549))

(assert (=> b!969953 m!1174545))

(assert (=> b!969953 m!1174545))

(assert (=> b!969953 m!1174547))

(assert (=> b!969713 d!286510))

(declare-fun d!286512 () Bool)

(assert (=> d!286512 (= (matchR!1237 r!15766 s!10566) (matchRSpec!500 r!15766 s!10566))))

(declare-fun lt!348755 () Unit!15061)

(declare-fun choose!6132 (Regex!2701 List!9931) Unit!15061)

(assert (=> d!286512 (= lt!348755 (choose!6132 r!15766 s!10566))))

(assert (=> d!286512 (validRegex!1170 r!15766)))

(assert (=> d!286512 (= (mainMatchTheorem!500 r!15766 s!10566) lt!348755)))

(declare-fun bs!242351 () Bool)

(assert (= bs!242351 d!286512))

(assert (=> bs!242351 m!1174497))

(assert (=> bs!242351 m!1174495))

(declare-fun m!1174555 () Bool)

(assert (=> bs!242351 m!1174555))

(assert (=> bs!242351 m!1174491))

(assert (=> b!969713 d!286512))

(declare-fun b!969985 () Bool)

(declare-fun e!625394 () Bool)

(declare-fun e!625398 () Bool)

(assert (=> b!969985 (= e!625394 e!625398)))

(declare-fun res!440928 () Bool)

(assert (=> b!969985 (= res!440928 (not (nullable!823 (reg!3030 (regTwo!5914 r!15766)))))))

(assert (=> b!969985 (=> (not res!440928) (not e!625398))))

(declare-fun d!286514 () Bool)

(declare-fun res!440930 () Bool)

(declare-fun e!625395 () Bool)

(assert (=> d!286514 (=> res!440930 e!625395)))

(assert (=> d!286514 (= res!440930 ((_ is ElementMatch!2701) (regTwo!5914 r!15766)))))

(assert (=> d!286514 (= (validRegex!1170 (regTwo!5914 r!15766)) e!625395)))

(declare-fun bm!61507 () Bool)

(declare-fun call!61513 () Bool)

(declare-fun call!61512 () Bool)

(assert (=> bm!61507 (= call!61513 call!61512)))

(declare-fun b!969986 () Bool)

(assert (=> b!969986 (= e!625398 call!61512)))

(declare-fun b!969987 () Bool)

(declare-fun e!625396 () Bool)

(declare-fun call!61514 () Bool)

(assert (=> b!969987 (= e!625396 call!61514)))

(declare-fun b!969988 () Bool)

(assert (=> b!969988 (= e!625395 e!625394)))

(declare-fun c!158177 () Bool)

(assert (=> b!969988 (= c!158177 ((_ is Star!2701) (regTwo!5914 r!15766)))))

(declare-fun b!969989 () Bool)

(declare-fun e!625392 () Bool)

(declare-fun e!625393 () Bool)

(assert (=> b!969989 (= e!625392 e!625393)))

(declare-fun res!440929 () Bool)

(assert (=> b!969989 (=> (not res!440929) (not e!625393))))

(assert (=> b!969989 (= res!440929 call!61513)))

(declare-fun b!969990 () Bool)

(declare-fun res!440927 () Bool)

(assert (=> b!969990 (=> (not res!440927) (not e!625396))))

(assert (=> b!969990 (= res!440927 call!61513)))

(declare-fun e!625397 () Bool)

(assert (=> b!969990 (= e!625397 e!625396)))

(declare-fun b!969991 () Bool)

(assert (=> b!969991 (= e!625394 e!625397)))

(declare-fun c!158178 () Bool)

(assert (=> b!969991 (= c!158178 ((_ is Union!2701) (regTwo!5914 r!15766)))))

(declare-fun b!969992 () Bool)

(declare-fun res!440931 () Bool)

(assert (=> b!969992 (=> res!440931 e!625392)))

(assert (=> b!969992 (= res!440931 (not ((_ is Concat!4534) (regTwo!5914 r!15766))))))

(assert (=> b!969992 (= e!625397 e!625392)))

(declare-fun b!969993 () Bool)

(assert (=> b!969993 (= e!625393 call!61514)))

(declare-fun bm!61508 () Bool)

(assert (=> bm!61508 (= call!61514 (validRegex!1170 (ite c!158178 (regTwo!5915 (regTwo!5914 r!15766)) (regTwo!5914 (regTwo!5914 r!15766)))))))

(declare-fun bm!61509 () Bool)

(assert (=> bm!61509 (= call!61512 (validRegex!1170 (ite c!158177 (reg!3030 (regTwo!5914 r!15766)) (ite c!158178 (regOne!5915 (regTwo!5914 r!15766)) (regOne!5914 (regTwo!5914 r!15766))))))))

(assert (= (and d!286514 (not res!440930)) b!969988))

(assert (= (and b!969988 c!158177) b!969985))

(assert (= (and b!969988 (not c!158177)) b!969991))

(assert (= (and b!969985 res!440928) b!969986))

(assert (= (and b!969991 c!158178) b!969990))

(assert (= (and b!969991 (not c!158178)) b!969992))

(assert (= (and b!969990 res!440927) b!969987))

(assert (= (and b!969992 (not res!440931)) b!969989))

(assert (= (and b!969989 res!440929) b!969993))

(assert (= (or b!969987 b!969993) bm!61508))

(assert (= (or b!969990 b!969989) bm!61507))

(assert (= (or b!969986 bm!61507) bm!61509))

(declare-fun m!1174557 () Bool)

(assert (=> b!969985 m!1174557))

(declare-fun m!1174559 () Bool)

(assert (=> bm!61508 m!1174559))

(declare-fun m!1174561 () Bool)

(assert (=> bm!61509 m!1174561))

(assert (=> b!969711 d!286514))

(declare-fun b!969994 () Bool)

(declare-fun e!625401 () Bool)

(declare-fun e!625405 () Bool)

(assert (=> b!969994 (= e!625401 e!625405)))

(declare-fun res!440933 () Bool)

(assert (=> b!969994 (= res!440933 (not (nullable!823 (reg!3030 r!15766))))))

(assert (=> b!969994 (=> (not res!440933) (not e!625405))))

(declare-fun d!286516 () Bool)

(declare-fun res!440935 () Bool)

(declare-fun e!625402 () Bool)

(assert (=> d!286516 (=> res!440935 e!625402)))

(assert (=> d!286516 (= res!440935 ((_ is ElementMatch!2701) r!15766))))

(assert (=> d!286516 (= (validRegex!1170 r!15766) e!625402)))

(declare-fun bm!61510 () Bool)

(declare-fun call!61516 () Bool)

(declare-fun call!61515 () Bool)

(assert (=> bm!61510 (= call!61516 call!61515)))

(declare-fun b!969995 () Bool)

(assert (=> b!969995 (= e!625405 call!61515)))

(declare-fun b!969996 () Bool)

(declare-fun e!625403 () Bool)

(declare-fun call!61517 () Bool)

(assert (=> b!969996 (= e!625403 call!61517)))

(declare-fun b!969997 () Bool)

(assert (=> b!969997 (= e!625402 e!625401)))

(declare-fun c!158179 () Bool)

(assert (=> b!969997 (= c!158179 ((_ is Star!2701) r!15766))))

(declare-fun b!969998 () Bool)

(declare-fun e!625399 () Bool)

(declare-fun e!625400 () Bool)

(assert (=> b!969998 (= e!625399 e!625400)))

(declare-fun res!440934 () Bool)

(assert (=> b!969998 (=> (not res!440934) (not e!625400))))

(assert (=> b!969998 (= res!440934 call!61516)))

(declare-fun b!969999 () Bool)

(declare-fun res!440932 () Bool)

(assert (=> b!969999 (=> (not res!440932) (not e!625403))))

(assert (=> b!969999 (= res!440932 call!61516)))

(declare-fun e!625404 () Bool)

(assert (=> b!969999 (= e!625404 e!625403)))

(declare-fun b!970000 () Bool)

(assert (=> b!970000 (= e!625401 e!625404)))

(declare-fun c!158180 () Bool)

(assert (=> b!970000 (= c!158180 ((_ is Union!2701) r!15766))))

(declare-fun b!970001 () Bool)

(declare-fun res!440936 () Bool)

(assert (=> b!970001 (=> res!440936 e!625399)))

(assert (=> b!970001 (= res!440936 (not ((_ is Concat!4534) r!15766)))))

(assert (=> b!970001 (= e!625404 e!625399)))

(declare-fun b!970002 () Bool)

(assert (=> b!970002 (= e!625400 call!61517)))

(declare-fun bm!61511 () Bool)

(assert (=> bm!61511 (= call!61517 (validRegex!1170 (ite c!158180 (regTwo!5915 r!15766) (regTwo!5914 r!15766))))))

(declare-fun bm!61512 () Bool)

(assert (=> bm!61512 (= call!61515 (validRegex!1170 (ite c!158179 (reg!3030 r!15766) (ite c!158180 (regOne!5915 r!15766) (regOne!5914 r!15766)))))))

(assert (= (and d!286516 (not res!440935)) b!969997))

(assert (= (and b!969997 c!158179) b!969994))

(assert (= (and b!969997 (not c!158179)) b!970000))

(assert (= (and b!969994 res!440933) b!969995))

(assert (= (and b!970000 c!158180) b!969999))

(assert (= (and b!970000 (not c!158180)) b!970001))

(assert (= (and b!969999 res!440932) b!969996))

(assert (= (and b!970001 (not res!440936)) b!969998))

(assert (= (and b!969998 res!440934) b!970002))

(assert (= (or b!969996 b!970002) bm!61511))

(assert (= (or b!969999 b!969998) bm!61510))

(assert (= (or b!969995 bm!61510) bm!61512))

(declare-fun m!1174563 () Bool)

(assert (=> b!969994 m!1174563))

(declare-fun m!1174565 () Bool)

(assert (=> bm!61511 m!1174565))

(declare-fun m!1174567 () Bool)

(assert (=> bm!61512 m!1174567))

(assert (=> start!86210 d!286516))

(declare-fun b!970014 () Bool)

(declare-fun e!625408 () Bool)

(declare-fun tp!297161 () Bool)

(declare-fun tp!297157 () Bool)

(assert (=> b!970014 (= e!625408 (and tp!297161 tp!297157))))

(declare-fun b!970016 () Bool)

(declare-fun tp!297158 () Bool)

(declare-fun tp!297160 () Bool)

(assert (=> b!970016 (= e!625408 (and tp!297158 tp!297160))))

(declare-fun b!970015 () Bool)

(declare-fun tp!297159 () Bool)

(assert (=> b!970015 (= e!625408 tp!297159)))

(declare-fun b!970013 () Bool)

(assert (=> b!970013 (= e!625408 tp_is_empty!5045)))

(assert (=> b!969714 (= tp!297107 e!625408)))

(assert (= (and b!969714 ((_ is ElementMatch!2701) (reg!3030 r!15766))) b!970013))

(assert (= (and b!969714 ((_ is Concat!4534) (reg!3030 r!15766))) b!970014))

(assert (= (and b!969714 ((_ is Star!2701) (reg!3030 r!15766))) b!970015))

(assert (= (and b!969714 ((_ is Union!2701) (reg!3030 r!15766))) b!970016))

(declare-fun b!970018 () Bool)

(declare-fun e!625409 () Bool)

(declare-fun tp!297166 () Bool)

(declare-fun tp!297162 () Bool)

(assert (=> b!970018 (= e!625409 (and tp!297166 tp!297162))))

(declare-fun b!970020 () Bool)

(declare-fun tp!297163 () Bool)

(declare-fun tp!297165 () Bool)

(assert (=> b!970020 (= e!625409 (and tp!297163 tp!297165))))

(declare-fun b!970019 () Bool)

(declare-fun tp!297164 () Bool)

(assert (=> b!970019 (= e!625409 tp!297164)))

(declare-fun b!970017 () Bool)

(assert (=> b!970017 (= e!625409 tp_is_empty!5045)))

(assert (=> b!969712 (= tp!297104 e!625409)))

(assert (= (and b!969712 ((_ is ElementMatch!2701) (regOne!5915 r!15766))) b!970017))

(assert (= (and b!969712 ((_ is Concat!4534) (regOne!5915 r!15766))) b!970018))

(assert (= (and b!969712 ((_ is Star!2701) (regOne!5915 r!15766))) b!970019))

(assert (= (and b!969712 ((_ is Union!2701) (regOne!5915 r!15766))) b!970020))

(declare-fun b!970022 () Bool)

(declare-fun e!625410 () Bool)

(declare-fun tp!297171 () Bool)

(declare-fun tp!297167 () Bool)

(assert (=> b!970022 (= e!625410 (and tp!297171 tp!297167))))

(declare-fun b!970024 () Bool)

(declare-fun tp!297168 () Bool)

(declare-fun tp!297170 () Bool)

(assert (=> b!970024 (= e!625410 (and tp!297168 tp!297170))))

(declare-fun b!970023 () Bool)

(declare-fun tp!297169 () Bool)

(assert (=> b!970023 (= e!625410 tp!297169)))

(declare-fun b!970021 () Bool)

(assert (=> b!970021 (= e!625410 tp_is_empty!5045)))

(assert (=> b!969712 (= tp!297103 e!625410)))

(assert (= (and b!969712 ((_ is ElementMatch!2701) (regTwo!5915 r!15766))) b!970021))

(assert (= (and b!969712 ((_ is Concat!4534) (regTwo!5915 r!15766))) b!970022))

(assert (= (and b!969712 ((_ is Star!2701) (regTwo!5915 r!15766))) b!970023))

(assert (= (and b!969712 ((_ is Union!2701) (regTwo!5915 r!15766))) b!970024))

(declare-fun b!970026 () Bool)

(declare-fun e!625411 () Bool)

(declare-fun tp!297176 () Bool)

(declare-fun tp!297172 () Bool)

(assert (=> b!970026 (= e!625411 (and tp!297176 tp!297172))))

(declare-fun b!970028 () Bool)

(declare-fun tp!297173 () Bool)

(declare-fun tp!297175 () Bool)

(assert (=> b!970028 (= e!625411 (and tp!297173 tp!297175))))

(declare-fun b!970027 () Bool)

(declare-fun tp!297174 () Bool)

(assert (=> b!970027 (= e!625411 tp!297174)))

(declare-fun b!970025 () Bool)

(assert (=> b!970025 (= e!625411 tp_is_empty!5045)))

(assert (=> b!969715 (= tp!297108 e!625411)))

(assert (= (and b!969715 ((_ is ElementMatch!2701) (regOne!5914 r!15766))) b!970025))

(assert (= (and b!969715 ((_ is Concat!4534) (regOne!5914 r!15766))) b!970026))

(assert (= (and b!969715 ((_ is Star!2701) (regOne!5914 r!15766))) b!970027))

(assert (= (and b!969715 ((_ is Union!2701) (regOne!5914 r!15766))) b!970028))

(declare-fun b!970030 () Bool)

(declare-fun e!625412 () Bool)

(declare-fun tp!297181 () Bool)

(declare-fun tp!297177 () Bool)

(assert (=> b!970030 (= e!625412 (and tp!297181 tp!297177))))

(declare-fun b!970032 () Bool)

(declare-fun tp!297178 () Bool)

(declare-fun tp!297180 () Bool)

(assert (=> b!970032 (= e!625412 (and tp!297178 tp!297180))))

(declare-fun b!970031 () Bool)

(declare-fun tp!297179 () Bool)

(assert (=> b!970031 (= e!625412 tp!297179)))

(declare-fun b!970029 () Bool)

(assert (=> b!970029 (= e!625412 tp_is_empty!5045)))

(assert (=> b!969715 (= tp!297105 e!625412)))

(assert (= (and b!969715 ((_ is ElementMatch!2701) (regTwo!5914 r!15766))) b!970029))

(assert (= (and b!969715 ((_ is Concat!4534) (regTwo!5914 r!15766))) b!970030))

(assert (= (and b!969715 ((_ is Star!2701) (regTwo!5914 r!15766))) b!970031))

(assert (= (and b!969715 ((_ is Union!2701) (regTwo!5914 r!15766))) b!970032))

(declare-fun b!970037 () Bool)

(declare-fun e!625415 () Bool)

(declare-fun tp!297184 () Bool)

(assert (=> b!970037 (= e!625415 (and tp_is_empty!5045 tp!297184))))

(assert (=> b!969716 (= tp!297106 e!625415)))

(assert (= (and b!969716 ((_ is Cons!9915) (t!100977 s!10566))) b!970037))

(check-sat (not d!286512) (not b!970019) tp_is_empty!5045 (not b!970023) (not b!969965) (not b!969959) (not b!970020) (not bm!61509) (not b!970018) (not b!969957) (not d!286510) (not b!969985) (not bm!61511) (not b!970037) (not bm!61508) (not b!970032) (not b!970015) (not b!970031) (not b!970016) (not b!969994) (not bm!61512) (not b!970014) (not b!970028) (not b!969953) (not b!970026) (not b!970027) (not b!969914) (not bm!61497) (not b!969955) (not b!969917) (not bm!61500) (not b!970030) (not b!969961) (not b!970022) (not bm!61496) (not b!970024))
(check-sat)
