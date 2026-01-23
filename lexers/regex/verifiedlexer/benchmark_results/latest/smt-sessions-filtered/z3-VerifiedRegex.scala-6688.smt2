; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!350854 () Bool)

(assert start!350854)

(declare-datatypes ((C!22016 0))(
  ( (C!22017 (val!13056 Int)) )
))
(declare-fun cNot!42 () C!22016)

(declare-fun c!13797 () C!22016)

(declare-datatypes ((Regex!10915 0))(
  ( (ElementMatch!10915 (c!645183 C!22016)) (Concat!17186 (regOne!22342 Regex!10915) (regTwo!22342 Regex!10915)) (EmptyExpr!10915) (Star!10915 (reg!11244 Regex!10915)) (EmptyLang!10915) (Union!10915 (regOne!22343 Regex!10915) (regTwo!22343 Regex!10915)) )
))
(declare-fun r!26968 () Regex!10915)

(declare-fun e!2306928 () Bool)

(declare-fun b!3728098 () Bool)

(declare-datatypes ((List!39796 0))(
  ( (Nil!39672) (Cons!39672 (h!45092 C!22016) (t!302479 List!39796)) )
))
(declare-fun contains!8008 (List!39796 C!22016) Bool)

(declare-fun usedCharacters!1178 (Regex!10915) List!39796)

(declare-fun derivativeStep!3362 (Regex!10915 C!22016) Regex!10915)

(assert (=> b!3728098 (= e!2306928 (not (not (contains!8008 (usedCharacters!1178 (derivativeStep!3362 r!26968 c!13797)) cNot!42))))))

(declare-fun lt!1298522 () List!39796)

(declare-fun lt!1298521 () List!39796)

(declare-fun ++!9839 (List!39796 List!39796) List!39796)

(assert (=> b!3728098 (not (contains!8008 (++!9839 lt!1298522 lt!1298521) cNot!42))))

(declare-datatypes ((Unit!57580 0))(
  ( (Unit!57581) )
))
(declare-fun lt!1298519 () Unit!57580)

(declare-fun lemmaConcatTwoListsWhichNotContainThenTotNotContain!6 (List!39796 List!39796 C!22016) Unit!57580)

(assert (=> b!3728098 (= lt!1298519 (lemmaConcatTwoListsWhichNotContainThenTotNotContain!6 lt!1298522 lt!1298521 cNot!42))))

(assert (=> b!3728098 (not (contains!8008 lt!1298521 cNot!42))))

(assert (=> b!3728098 (= lt!1298521 (usedCharacters!1178 (derivativeStep!3362 (regTwo!22343 r!26968) c!13797)))))

(declare-fun lt!1298520 () Unit!57580)

(declare-fun lemmaDerivativeStepDoesNotAddCharToUsedCharacters!46 (Regex!10915 C!22016 C!22016) Unit!57580)

(assert (=> b!3728098 (= lt!1298520 (lemmaDerivativeStepDoesNotAddCharToUsedCharacters!46 (regTwo!22343 r!26968) c!13797 cNot!42))))

(assert (=> b!3728098 (not (contains!8008 lt!1298522 cNot!42))))

(assert (=> b!3728098 (= lt!1298522 (usedCharacters!1178 (derivativeStep!3362 (regOne!22343 r!26968) c!13797)))))

(declare-fun lt!1298518 () Unit!57580)

(assert (=> b!3728098 (= lt!1298518 (lemmaDerivativeStepDoesNotAddCharToUsedCharacters!46 (regOne!22343 r!26968) c!13797 cNot!42))))

(declare-fun b!3728099 () Bool)

(declare-fun res!1514015 () Bool)

(assert (=> b!3728099 (=> (not res!1514015) (not e!2306928))))

(get-info :version)

(assert (=> b!3728099 (= res!1514015 (and (not ((_ is EmptyExpr!10915) r!26968)) (not ((_ is EmptyLang!10915) r!26968)) (not ((_ is ElementMatch!10915) r!26968)) ((_ is Union!10915) r!26968)))))

(declare-fun b!3728100 () Bool)

(declare-fun e!2306927 () Bool)

(declare-fun tp!1134381 () Bool)

(declare-fun tp!1134384 () Bool)

(assert (=> b!3728100 (= e!2306927 (and tp!1134381 tp!1134384))))

(declare-fun b!3728101 () Bool)

(declare-fun tp_is_empty!18845 () Bool)

(assert (=> b!3728101 (= e!2306927 tp_is_empty!18845)))

(declare-fun b!3728102 () Bool)

(declare-fun res!1514014 () Bool)

(assert (=> b!3728102 (=> (not res!1514014) (not e!2306928))))

(assert (=> b!3728102 (= res!1514014 (not (contains!8008 (usedCharacters!1178 r!26968) cNot!42)))))

(declare-fun b!3728103 () Bool)

(declare-fun tp!1134383 () Bool)

(assert (=> b!3728103 (= e!2306927 tp!1134383)))

(declare-fun res!1514016 () Bool)

(assert (=> start!350854 (=> (not res!1514016) (not e!2306928))))

(declare-fun validRegex!5022 (Regex!10915) Bool)

(assert (=> start!350854 (= res!1514016 (validRegex!5022 r!26968))))

(assert (=> start!350854 e!2306928))

(assert (=> start!350854 e!2306927))

(assert (=> start!350854 tp_is_empty!18845))

(declare-fun b!3728104 () Bool)

(declare-fun tp!1134382 () Bool)

(declare-fun tp!1134380 () Bool)

(assert (=> b!3728104 (= e!2306927 (and tp!1134382 tp!1134380))))

(assert (= (and start!350854 res!1514016) b!3728102))

(assert (= (and b!3728102 res!1514014) b!3728099))

(assert (= (and b!3728099 res!1514015) b!3728098))

(assert (= (and start!350854 ((_ is ElementMatch!10915) r!26968)) b!3728101))

(assert (= (and start!350854 ((_ is Concat!17186) r!26968)) b!3728104))

(assert (= (and start!350854 ((_ is Star!10915) r!26968)) b!3728103))

(assert (= (and start!350854 ((_ is Union!10915) r!26968)) b!3728100))

(declare-fun m!4228875 () Bool)

(assert (=> b!3728098 m!4228875))

(declare-fun m!4228877 () Bool)

(assert (=> b!3728098 m!4228877))

(declare-fun m!4228879 () Bool)

(assert (=> b!3728098 m!4228879))

(declare-fun m!4228881 () Bool)

(assert (=> b!3728098 m!4228881))

(declare-fun m!4228883 () Bool)

(assert (=> b!3728098 m!4228883))

(declare-fun m!4228885 () Bool)

(assert (=> b!3728098 m!4228885))

(declare-fun m!4228887 () Bool)

(assert (=> b!3728098 m!4228887))

(assert (=> b!3728098 m!4228879))

(assert (=> b!3728098 m!4228877))

(declare-fun m!4228889 () Bool)

(assert (=> b!3728098 m!4228889))

(declare-fun m!4228891 () Bool)

(assert (=> b!3728098 m!4228891))

(declare-fun m!4228893 () Bool)

(assert (=> b!3728098 m!4228893))

(assert (=> b!3728098 m!4228885))

(declare-fun m!4228895 () Bool)

(assert (=> b!3728098 m!4228895))

(assert (=> b!3728098 m!4228887))

(declare-fun m!4228897 () Bool)

(assert (=> b!3728098 m!4228897))

(assert (=> b!3728098 m!4228881))

(declare-fun m!4228899 () Bool)

(assert (=> b!3728098 m!4228899))

(declare-fun m!4228901 () Bool)

(assert (=> b!3728098 m!4228901))

(declare-fun m!4228903 () Bool)

(assert (=> b!3728102 m!4228903))

(assert (=> b!3728102 m!4228903))

(declare-fun m!4228905 () Bool)

(assert (=> b!3728102 m!4228905))

(declare-fun m!4228907 () Bool)

(assert (=> start!350854 m!4228907))

(check-sat tp_is_empty!18845 (not b!3728098) (not b!3728103) (not start!350854) (not b!3728100) (not b!3728102) (not b!3728104))
(check-sat)
(get-model)

(declare-fun d!1090221 () Bool)

(assert (=> d!1090221 (not (contains!8008 (++!9839 lt!1298522 lt!1298521) cNot!42))))

(declare-fun lt!1298525 () Unit!57580)

(declare-fun choose!22226 (List!39796 List!39796 C!22016) Unit!57580)

(assert (=> d!1090221 (= lt!1298525 (choose!22226 lt!1298522 lt!1298521 cNot!42))))

(assert (=> d!1090221 (not (contains!8008 lt!1298522 cNot!42))))

(assert (=> d!1090221 (= (lemmaConcatTwoListsWhichNotContainThenTotNotContain!6 lt!1298522 lt!1298521 cNot!42) lt!1298525)))

(declare-fun bs!575058 () Bool)

(assert (= bs!575058 d!1090221))

(assert (=> bs!575058 m!4228887))

(assert (=> bs!575058 m!4228887))

(assert (=> bs!575058 m!4228897))

(declare-fun m!4228909 () Bool)

(assert (=> bs!575058 m!4228909))

(assert (=> bs!575058 m!4228891))

(assert (=> b!3728098 d!1090221))

(declare-fun b!3728148 () Bool)

(declare-fun res!1514021 () Bool)

(declare-fun e!2306950 () Bool)

(assert (=> b!3728148 (=> (not res!1514021) (not e!2306950))))

(declare-fun lt!1298528 () List!39796)

(declare-fun size!30033 (List!39796) Int)

(assert (=> b!3728148 (= res!1514021 (= (size!30033 lt!1298528) (+ (size!30033 lt!1298522) (size!30033 lt!1298521))))))

(declare-fun b!3728146 () Bool)

(declare-fun e!2306949 () List!39796)

(assert (=> b!3728146 (= e!2306949 lt!1298521)))

(declare-fun b!3728147 () Bool)

(assert (=> b!3728147 (= e!2306949 (Cons!39672 (h!45092 lt!1298522) (++!9839 (t!302479 lt!1298522) lt!1298521)))))

(declare-fun b!3728149 () Bool)

(assert (=> b!3728149 (= e!2306950 (or (not (= lt!1298521 Nil!39672)) (= lt!1298528 lt!1298522)))))

(declare-fun d!1090223 () Bool)

(assert (=> d!1090223 e!2306950))

(declare-fun res!1514022 () Bool)

(assert (=> d!1090223 (=> (not res!1514022) (not e!2306950))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!5771 (List!39796) (InoxSet C!22016))

(assert (=> d!1090223 (= res!1514022 (= (content!5771 lt!1298528) ((_ map or) (content!5771 lt!1298522) (content!5771 lt!1298521))))))

(assert (=> d!1090223 (= lt!1298528 e!2306949)))

(declare-fun c!645202 () Bool)

(assert (=> d!1090223 (= c!645202 ((_ is Nil!39672) lt!1298522))))

(assert (=> d!1090223 (= (++!9839 lt!1298522 lt!1298521) lt!1298528)))

(assert (= (and d!1090223 c!645202) b!3728146))

(assert (= (and d!1090223 (not c!645202)) b!3728147))

(assert (= (and d!1090223 res!1514022) b!3728148))

(assert (= (and b!3728148 res!1514021) b!3728149))

(declare-fun m!4228917 () Bool)

(assert (=> b!3728148 m!4228917))

(declare-fun m!4228919 () Bool)

(assert (=> b!3728148 m!4228919))

(declare-fun m!4228921 () Bool)

(assert (=> b!3728148 m!4228921))

(declare-fun m!4228923 () Bool)

(assert (=> b!3728147 m!4228923))

(declare-fun m!4228927 () Bool)

(assert (=> d!1090223 m!4228927))

(declare-fun m!4228929 () Bool)

(assert (=> d!1090223 m!4228929))

(declare-fun m!4228933 () Bool)

(assert (=> d!1090223 m!4228933))

(assert (=> b!3728098 d!1090223))

(declare-fun b!3728200 () Bool)

(declare-fun c!645228 () Bool)

(assert (=> b!3728200 (= c!645228 ((_ is Union!10915) r!26968))))

(declare-fun e!2306978 () Regex!10915)

(declare-fun e!2306977 () Regex!10915)

(assert (=> b!3728200 (= e!2306978 e!2306977)))

(declare-fun bm!271894 () Bool)

(declare-fun call!271899 () Regex!10915)

(declare-fun call!271902 () Regex!10915)

(assert (=> bm!271894 (= call!271899 call!271902)))

(declare-fun b!3728201 () Bool)

(declare-fun e!2306979 () Regex!10915)

(declare-fun call!271900 () Regex!10915)

(assert (=> b!3728201 (= e!2306979 (Union!10915 (Concat!17186 call!271900 (regTwo!22342 r!26968)) EmptyLang!10915))))

(declare-fun b!3728202 () Bool)

(declare-fun e!2306980 () Regex!10915)

(assert (=> b!3728202 (= e!2306977 e!2306980)))

(declare-fun c!645232 () Bool)

(assert (=> b!3728202 (= c!645232 ((_ is Star!10915) r!26968))))

(declare-fun d!1090227 () Bool)

(declare-fun lt!1298534 () Regex!10915)

(assert (=> d!1090227 (validRegex!5022 lt!1298534)))

(declare-fun e!2306976 () Regex!10915)

(assert (=> d!1090227 (= lt!1298534 e!2306976)))

(declare-fun c!645229 () Bool)

(assert (=> d!1090227 (= c!645229 (or ((_ is EmptyExpr!10915) r!26968) ((_ is EmptyLang!10915) r!26968)))))

(assert (=> d!1090227 (validRegex!5022 r!26968)))

(assert (=> d!1090227 (= (derivativeStep!3362 r!26968 c!13797) lt!1298534)))

(declare-fun bm!271895 () Bool)

(declare-fun c!645231 () Bool)

(assert (=> bm!271895 (= call!271902 (derivativeStep!3362 (ite c!645228 (regOne!22343 r!26968) (ite c!645232 (reg!11244 r!26968) (ite c!645231 (regTwo!22342 r!26968) (regOne!22342 r!26968)))) c!13797))))

(declare-fun b!3728203 () Bool)

(assert (=> b!3728203 (= e!2306978 (ite (= c!13797 (c!645183 r!26968)) EmptyExpr!10915 EmptyLang!10915))))

(declare-fun b!3728204 () Bool)

(assert (=> b!3728204 (= e!2306976 EmptyLang!10915)))

(declare-fun bm!271896 () Bool)

(declare-fun call!271901 () Regex!10915)

(assert (=> bm!271896 (= call!271901 (derivativeStep!3362 (ite c!645228 (regTwo!22343 r!26968) (regOne!22342 r!26968)) c!13797))))

(declare-fun b!3728205 () Bool)

(assert (=> b!3728205 (= e!2306979 (Union!10915 (Concat!17186 call!271901 (regTwo!22342 r!26968)) call!271900))))

(declare-fun b!3728206 () Bool)

(assert (=> b!3728206 (= e!2306977 (Union!10915 call!271902 call!271901))))

(declare-fun b!3728207 () Bool)

(assert (=> b!3728207 (= e!2306976 e!2306978)))

(declare-fun c!645230 () Bool)

(assert (=> b!3728207 (= c!645230 ((_ is ElementMatch!10915) r!26968))))

(declare-fun b!3728208 () Bool)

(assert (=> b!3728208 (= e!2306980 (Concat!17186 call!271899 r!26968))))

(declare-fun bm!271897 () Bool)

(assert (=> bm!271897 (= call!271900 call!271899)))

(declare-fun b!3728209 () Bool)

(declare-fun nullable!3822 (Regex!10915) Bool)

(assert (=> b!3728209 (= c!645231 (nullable!3822 (regOne!22342 r!26968)))))

(assert (=> b!3728209 (= e!2306980 e!2306979)))

(assert (= (and d!1090227 c!645229) b!3728204))

(assert (= (and d!1090227 (not c!645229)) b!3728207))

(assert (= (and b!3728207 c!645230) b!3728203))

(assert (= (and b!3728207 (not c!645230)) b!3728200))

(assert (= (and b!3728200 c!645228) b!3728206))

(assert (= (and b!3728200 (not c!645228)) b!3728202))

(assert (= (and b!3728202 c!645232) b!3728208))

(assert (= (and b!3728202 (not c!645232)) b!3728209))

(assert (= (and b!3728209 c!645231) b!3728205))

(assert (= (and b!3728209 (not c!645231)) b!3728201))

(assert (= (or b!3728205 b!3728201) bm!271897))

(assert (= (or b!3728208 bm!271897) bm!271894))

(assert (= (or b!3728206 bm!271894) bm!271895))

(assert (= (or b!3728206 b!3728205) bm!271896))

(declare-fun m!4228939 () Bool)

(assert (=> d!1090227 m!4228939))

(assert (=> d!1090227 m!4228907))

(declare-fun m!4228943 () Bool)

(assert (=> bm!271895 m!4228943))

(declare-fun m!4228947 () Bool)

(assert (=> bm!271896 m!4228947))

(declare-fun m!4228951 () Bool)

(assert (=> b!3728209 m!4228951))

(assert (=> b!3728098 d!1090227))

(declare-fun d!1090233 () Bool)

(assert (=> d!1090233 (not (contains!8008 (usedCharacters!1178 (derivativeStep!3362 (regOne!22343 r!26968) c!13797)) cNot!42))))

(declare-fun lt!1298539 () Unit!57580)

(declare-fun choose!22227 (Regex!10915 C!22016 C!22016) Unit!57580)

(assert (=> d!1090233 (= lt!1298539 (choose!22227 (regOne!22343 r!26968) c!13797 cNot!42))))

(assert (=> d!1090233 (= (lemmaDerivativeStepDoesNotAddCharToUsedCharacters!46 (regOne!22343 r!26968) c!13797 cNot!42) lt!1298539)))

(declare-fun bs!575059 () Bool)

(assert (= bs!575059 d!1090233))

(assert (=> bs!575059 m!4228885))

(assert (=> bs!575059 m!4228885))

(assert (=> bs!575059 m!4228895))

(assert (=> bs!575059 m!4228895))

(declare-fun m!4228953 () Bool)

(assert (=> bs!575059 m!4228953))

(declare-fun m!4228955 () Bool)

(assert (=> bs!575059 m!4228955))

(assert (=> b!3728098 d!1090233))

(declare-fun b!3728216 () Bool)

(declare-fun c!645234 () Bool)

(assert (=> b!3728216 (= c!645234 ((_ is Union!10915) (regOne!22343 r!26968)))))

(declare-fun e!2306989 () Regex!10915)

(declare-fun e!2306988 () Regex!10915)

(assert (=> b!3728216 (= e!2306989 e!2306988)))

(declare-fun bm!271898 () Bool)

(declare-fun call!271903 () Regex!10915)

(declare-fun call!271906 () Regex!10915)

(assert (=> bm!271898 (= call!271903 call!271906)))

(declare-fun b!3728217 () Bool)

(declare-fun e!2306990 () Regex!10915)

(declare-fun call!271904 () Regex!10915)

(assert (=> b!3728217 (= e!2306990 (Union!10915 (Concat!17186 call!271904 (regTwo!22342 (regOne!22343 r!26968))) EmptyLang!10915))))

(declare-fun b!3728218 () Bool)

(declare-fun e!2306991 () Regex!10915)

(assert (=> b!3728218 (= e!2306988 e!2306991)))

(declare-fun c!645238 () Bool)

(assert (=> b!3728218 (= c!645238 ((_ is Star!10915) (regOne!22343 r!26968)))))

(declare-fun d!1090235 () Bool)

(declare-fun lt!1298541 () Regex!10915)

(assert (=> d!1090235 (validRegex!5022 lt!1298541)))

(declare-fun e!2306987 () Regex!10915)

(assert (=> d!1090235 (= lt!1298541 e!2306987)))

(declare-fun c!645235 () Bool)

(assert (=> d!1090235 (= c!645235 (or ((_ is EmptyExpr!10915) (regOne!22343 r!26968)) ((_ is EmptyLang!10915) (regOne!22343 r!26968))))))

(assert (=> d!1090235 (validRegex!5022 (regOne!22343 r!26968))))

(assert (=> d!1090235 (= (derivativeStep!3362 (regOne!22343 r!26968) c!13797) lt!1298541)))

(declare-fun bm!271899 () Bool)

(declare-fun c!645237 () Bool)

(assert (=> bm!271899 (= call!271906 (derivativeStep!3362 (ite c!645234 (regOne!22343 (regOne!22343 r!26968)) (ite c!645238 (reg!11244 (regOne!22343 r!26968)) (ite c!645237 (regTwo!22342 (regOne!22343 r!26968)) (regOne!22342 (regOne!22343 r!26968))))) c!13797))))

(declare-fun b!3728219 () Bool)

(assert (=> b!3728219 (= e!2306989 (ite (= c!13797 (c!645183 (regOne!22343 r!26968))) EmptyExpr!10915 EmptyLang!10915))))

(declare-fun b!3728220 () Bool)

(assert (=> b!3728220 (= e!2306987 EmptyLang!10915)))

(declare-fun call!271905 () Regex!10915)

(declare-fun bm!271900 () Bool)

(assert (=> bm!271900 (= call!271905 (derivativeStep!3362 (ite c!645234 (regTwo!22343 (regOne!22343 r!26968)) (regOne!22342 (regOne!22343 r!26968))) c!13797))))

(declare-fun b!3728221 () Bool)

(assert (=> b!3728221 (= e!2306990 (Union!10915 (Concat!17186 call!271905 (regTwo!22342 (regOne!22343 r!26968))) call!271904))))

(declare-fun b!3728222 () Bool)

(assert (=> b!3728222 (= e!2306988 (Union!10915 call!271906 call!271905))))

(declare-fun b!3728223 () Bool)

(assert (=> b!3728223 (= e!2306987 e!2306989)))

(declare-fun c!645236 () Bool)

(assert (=> b!3728223 (= c!645236 ((_ is ElementMatch!10915) (regOne!22343 r!26968)))))

(declare-fun b!3728224 () Bool)

(assert (=> b!3728224 (= e!2306991 (Concat!17186 call!271903 (regOne!22343 r!26968)))))

(declare-fun bm!271901 () Bool)

(assert (=> bm!271901 (= call!271904 call!271903)))

(declare-fun b!3728225 () Bool)

(assert (=> b!3728225 (= c!645237 (nullable!3822 (regOne!22342 (regOne!22343 r!26968))))))

(assert (=> b!3728225 (= e!2306991 e!2306990)))

(assert (= (and d!1090235 c!645235) b!3728220))

(assert (= (and d!1090235 (not c!645235)) b!3728223))

(assert (= (and b!3728223 c!645236) b!3728219))

(assert (= (and b!3728223 (not c!645236)) b!3728216))

(assert (= (and b!3728216 c!645234) b!3728222))

(assert (= (and b!3728216 (not c!645234)) b!3728218))

(assert (= (and b!3728218 c!645238) b!3728224))

(assert (= (and b!3728218 (not c!645238)) b!3728225))

(assert (= (and b!3728225 c!645237) b!3728221))

(assert (= (and b!3728225 (not c!645237)) b!3728217))

(assert (= (or b!3728221 b!3728217) bm!271901))

(assert (= (or b!3728224 bm!271901) bm!271898))

(assert (= (or b!3728222 bm!271898) bm!271899))

(assert (= (or b!3728222 b!3728221) bm!271900))

(declare-fun m!4228963 () Bool)

(assert (=> d!1090235 m!4228963))

(declare-fun m!4228965 () Bool)

(assert (=> d!1090235 m!4228965))

(declare-fun m!4228967 () Bool)

(assert (=> bm!271899 m!4228967))

(declare-fun m!4228973 () Bool)

(assert (=> bm!271900 m!4228973))

(declare-fun m!4228977 () Bool)

(assert (=> b!3728225 m!4228977))

(assert (=> b!3728098 d!1090235))

(declare-fun d!1090239 () Bool)

(declare-fun lt!1298547 () Bool)

(assert (=> d!1090239 (= lt!1298547 (select (content!5771 (++!9839 lt!1298522 lt!1298521)) cNot!42))))

(declare-fun e!2307009 () Bool)

(assert (=> d!1090239 (= lt!1298547 e!2307009)))

(declare-fun res!1514036 () Bool)

(assert (=> d!1090239 (=> (not res!1514036) (not e!2307009))))

(assert (=> d!1090239 (= res!1514036 ((_ is Cons!39672) (++!9839 lt!1298522 lt!1298521)))))

(assert (=> d!1090239 (= (contains!8008 (++!9839 lt!1298522 lt!1298521) cNot!42) lt!1298547)))

(declare-fun b!3728252 () Bool)

(declare-fun e!2307008 () Bool)

(assert (=> b!3728252 (= e!2307009 e!2307008)))

(declare-fun res!1514035 () Bool)

(assert (=> b!3728252 (=> res!1514035 e!2307008)))

(assert (=> b!3728252 (= res!1514035 (= (h!45092 (++!9839 lt!1298522 lt!1298521)) cNot!42))))

(declare-fun b!3728253 () Bool)

(assert (=> b!3728253 (= e!2307008 (contains!8008 (t!302479 (++!9839 lt!1298522 lt!1298521)) cNot!42))))

(assert (= (and d!1090239 res!1514036) b!3728252))

(assert (= (and b!3728252 (not res!1514035)) b!3728253))

(assert (=> d!1090239 m!4228887))

(declare-fun m!4228999 () Bool)

(assert (=> d!1090239 m!4228999))

(declare-fun m!4229001 () Bool)

(assert (=> d!1090239 m!4229001))

(declare-fun m!4229003 () Bool)

(assert (=> b!3728253 m!4229003))

(assert (=> b!3728098 d!1090239))

(declare-fun d!1090247 () Bool)

(declare-fun lt!1298548 () Bool)

(assert (=> d!1090247 (= lt!1298548 (select (content!5771 lt!1298521) cNot!42))))

(declare-fun e!2307011 () Bool)

(assert (=> d!1090247 (= lt!1298548 e!2307011)))

(declare-fun res!1514038 () Bool)

(assert (=> d!1090247 (=> (not res!1514038) (not e!2307011))))

(assert (=> d!1090247 (= res!1514038 ((_ is Cons!39672) lt!1298521))))

(assert (=> d!1090247 (= (contains!8008 lt!1298521 cNot!42) lt!1298548)))

(declare-fun b!3728254 () Bool)

(declare-fun e!2307010 () Bool)

(assert (=> b!3728254 (= e!2307011 e!2307010)))

(declare-fun res!1514037 () Bool)

(assert (=> b!3728254 (=> res!1514037 e!2307010)))

(assert (=> b!3728254 (= res!1514037 (= (h!45092 lt!1298521) cNot!42))))

(declare-fun b!3728255 () Bool)

(assert (=> b!3728255 (= e!2307010 (contains!8008 (t!302479 lt!1298521) cNot!42))))

(assert (= (and d!1090247 res!1514038) b!3728254))

(assert (= (and b!3728254 (not res!1514037)) b!3728255))

(assert (=> d!1090247 m!4228933))

(declare-fun m!4229005 () Bool)

(assert (=> d!1090247 m!4229005))

(declare-fun m!4229007 () Bool)

(assert (=> b!3728255 m!4229007))

(assert (=> b!3728098 d!1090247))

(declare-fun b!3728285 () Bool)

(declare-fun e!2307027 () List!39796)

(declare-fun e!2307028 () List!39796)

(assert (=> b!3728285 (= e!2307027 e!2307028)))

(declare-fun c!645261 () Bool)

(assert (=> b!3728285 (= c!645261 ((_ is Union!10915) (derivativeStep!3362 (regOne!22343 r!26968) c!13797)))))

(declare-fun call!271926 () List!39796)

(declare-fun bm!271918 () Bool)

(assert (=> bm!271918 (= call!271926 (usedCharacters!1178 (ite c!645261 (regTwo!22343 (derivativeStep!3362 (regOne!22343 r!26968) c!13797)) (regOne!22342 (derivativeStep!3362 (regOne!22343 r!26968) c!13797)))))))

(declare-fun b!3728286 () Bool)

(declare-fun e!2307029 () List!39796)

(declare-fun e!2307026 () List!39796)

(assert (=> b!3728286 (= e!2307029 e!2307026)))

(declare-fun c!645262 () Bool)

(assert (=> b!3728286 (= c!645262 ((_ is ElementMatch!10915) (derivativeStep!3362 (regOne!22343 r!26968) c!13797)))))

(declare-fun c!645260 () Bool)

(declare-fun bm!271919 () Bool)

(declare-fun call!271925 () List!39796)

(assert (=> bm!271919 (= call!271925 (usedCharacters!1178 (ite c!645260 (reg!11244 (derivativeStep!3362 (regOne!22343 r!26968) c!13797)) (ite c!645261 (regOne!22343 (derivativeStep!3362 (regOne!22343 r!26968) c!13797)) (regTwo!22342 (derivativeStep!3362 (regOne!22343 r!26968) c!13797))))))))

(declare-fun d!1090249 () Bool)

(declare-fun c!645263 () Bool)

(assert (=> d!1090249 (= c!645263 (or ((_ is EmptyExpr!10915) (derivativeStep!3362 (regOne!22343 r!26968) c!13797)) ((_ is EmptyLang!10915) (derivativeStep!3362 (regOne!22343 r!26968) c!13797))))))

(assert (=> d!1090249 (= (usedCharacters!1178 (derivativeStep!3362 (regOne!22343 r!26968) c!13797)) e!2307029)))

(declare-fun call!271923 () List!39796)

(declare-fun call!271924 () List!39796)

(declare-fun bm!271920 () Bool)

(assert (=> bm!271920 (= call!271924 (++!9839 (ite c!645261 call!271923 call!271926) (ite c!645261 call!271926 call!271923)))))

(declare-fun b!3728287 () Bool)

(assert (=> b!3728287 (= e!2307027 call!271925)))

(declare-fun bm!271921 () Bool)

(assert (=> bm!271921 (= call!271923 call!271925)))

(declare-fun b!3728288 () Bool)

(assert (=> b!3728288 (= e!2307028 call!271924)))

(declare-fun b!3728289 () Bool)

(assert (=> b!3728289 (= e!2307029 Nil!39672)))

(declare-fun b!3728290 () Bool)

(assert (=> b!3728290 (= e!2307028 call!271924)))

(declare-fun b!3728291 () Bool)

(assert (=> b!3728291 (= e!2307026 (Cons!39672 (c!645183 (derivativeStep!3362 (regOne!22343 r!26968) c!13797)) Nil!39672))))

(declare-fun b!3728292 () Bool)

(assert (=> b!3728292 (= c!645260 ((_ is Star!10915) (derivativeStep!3362 (regOne!22343 r!26968) c!13797)))))

(assert (=> b!3728292 (= e!2307026 e!2307027)))

(assert (= (and d!1090249 c!645263) b!3728289))

(assert (= (and d!1090249 (not c!645263)) b!3728286))

(assert (= (and b!3728286 c!645262) b!3728291))

(assert (= (and b!3728286 (not c!645262)) b!3728292))

(assert (= (and b!3728292 c!645260) b!3728287))

(assert (= (and b!3728292 (not c!645260)) b!3728285))

(assert (= (and b!3728285 c!645261) b!3728290))

(assert (= (and b!3728285 (not c!645261)) b!3728288))

(assert (= (or b!3728290 b!3728288) bm!271921))

(assert (= (or b!3728290 b!3728288) bm!271918))

(assert (= (or b!3728290 b!3728288) bm!271920))

(assert (= (or b!3728287 bm!271921) bm!271919))

(declare-fun m!4229025 () Bool)

(assert (=> bm!271918 m!4229025))

(declare-fun m!4229027 () Bool)

(assert (=> bm!271919 m!4229027))

(declare-fun m!4229029 () Bool)

(assert (=> bm!271920 m!4229029))

(assert (=> b!3728098 d!1090249))

(declare-fun b!3728293 () Bool)

(declare-fun e!2307031 () List!39796)

(declare-fun e!2307032 () List!39796)

(assert (=> b!3728293 (= e!2307031 e!2307032)))

(declare-fun c!645266 () Bool)

(assert (=> b!3728293 (= c!645266 ((_ is Union!10915) (derivativeStep!3362 r!26968 c!13797)))))

(declare-fun call!271930 () List!39796)

(declare-fun bm!271922 () Bool)

(assert (=> bm!271922 (= call!271930 (usedCharacters!1178 (ite c!645266 (regTwo!22343 (derivativeStep!3362 r!26968 c!13797)) (regOne!22342 (derivativeStep!3362 r!26968 c!13797)))))))

(declare-fun b!3728294 () Bool)

(declare-fun e!2307033 () List!39796)

(declare-fun e!2307030 () List!39796)

(assert (=> b!3728294 (= e!2307033 e!2307030)))

(declare-fun c!645267 () Bool)

(assert (=> b!3728294 (= c!645267 ((_ is ElementMatch!10915) (derivativeStep!3362 r!26968 c!13797)))))

(declare-fun call!271929 () List!39796)

(declare-fun c!645265 () Bool)

(declare-fun bm!271923 () Bool)

(assert (=> bm!271923 (= call!271929 (usedCharacters!1178 (ite c!645265 (reg!11244 (derivativeStep!3362 r!26968 c!13797)) (ite c!645266 (regOne!22343 (derivativeStep!3362 r!26968 c!13797)) (regTwo!22342 (derivativeStep!3362 r!26968 c!13797))))))))

(declare-fun d!1090255 () Bool)

(declare-fun c!645268 () Bool)

(assert (=> d!1090255 (= c!645268 (or ((_ is EmptyExpr!10915) (derivativeStep!3362 r!26968 c!13797)) ((_ is EmptyLang!10915) (derivativeStep!3362 r!26968 c!13797))))))

(assert (=> d!1090255 (= (usedCharacters!1178 (derivativeStep!3362 r!26968 c!13797)) e!2307033)))

(declare-fun call!271928 () List!39796)

(declare-fun bm!271924 () Bool)

(declare-fun call!271927 () List!39796)

(assert (=> bm!271924 (= call!271928 (++!9839 (ite c!645266 call!271927 call!271930) (ite c!645266 call!271930 call!271927)))))

(declare-fun b!3728295 () Bool)

(assert (=> b!3728295 (= e!2307031 call!271929)))

(declare-fun bm!271925 () Bool)

(assert (=> bm!271925 (= call!271927 call!271929)))

(declare-fun b!3728296 () Bool)

(assert (=> b!3728296 (= e!2307032 call!271928)))

(declare-fun b!3728297 () Bool)

(assert (=> b!3728297 (= e!2307033 Nil!39672)))

(declare-fun b!3728298 () Bool)

(assert (=> b!3728298 (= e!2307032 call!271928)))

(declare-fun b!3728299 () Bool)

(assert (=> b!3728299 (= e!2307030 (Cons!39672 (c!645183 (derivativeStep!3362 r!26968 c!13797)) Nil!39672))))

(declare-fun b!3728300 () Bool)

(assert (=> b!3728300 (= c!645265 ((_ is Star!10915) (derivativeStep!3362 r!26968 c!13797)))))

(assert (=> b!3728300 (= e!2307030 e!2307031)))

(assert (= (and d!1090255 c!645268) b!3728297))

(assert (= (and d!1090255 (not c!645268)) b!3728294))

(assert (= (and b!3728294 c!645267) b!3728299))

(assert (= (and b!3728294 (not c!645267)) b!3728300))

(assert (= (and b!3728300 c!645265) b!3728295))

(assert (= (and b!3728300 (not c!645265)) b!3728293))

(assert (= (and b!3728293 c!645266) b!3728298))

(assert (= (and b!3728293 (not c!645266)) b!3728296))

(assert (= (or b!3728298 b!3728296) bm!271925))

(assert (= (or b!3728298 b!3728296) bm!271922))

(assert (= (or b!3728298 b!3728296) bm!271924))

(assert (= (or b!3728295 bm!271925) bm!271923))

(declare-fun m!4229035 () Bool)

(assert (=> bm!271922 m!4229035))

(declare-fun m!4229037 () Bool)

(assert (=> bm!271923 m!4229037))

(declare-fun m!4229039 () Bool)

(assert (=> bm!271924 m!4229039))

(assert (=> b!3728098 d!1090255))

(declare-fun d!1090259 () Bool)

(declare-fun lt!1298559 () Bool)

(assert (=> d!1090259 (= lt!1298559 (select (content!5771 lt!1298522) cNot!42))))

(declare-fun e!2307037 () Bool)

(assert (=> d!1090259 (= lt!1298559 e!2307037)))

(declare-fun res!1514048 () Bool)

(assert (=> d!1090259 (=> (not res!1514048) (not e!2307037))))

(assert (=> d!1090259 (= res!1514048 ((_ is Cons!39672) lt!1298522))))

(assert (=> d!1090259 (= (contains!8008 lt!1298522 cNot!42) lt!1298559)))

(declare-fun b!3728303 () Bool)

(declare-fun e!2307036 () Bool)

(assert (=> b!3728303 (= e!2307037 e!2307036)))

(declare-fun res!1514047 () Bool)

(assert (=> b!3728303 (=> res!1514047 e!2307036)))

(assert (=> b!3728303 (= res!1514047 (= (h!45092 lt!1298522) cNot!42))))

(declare-fun b!3728304 () Bool)

(assert (=> b!3728304 (= e!2307036 (contains!8008 (t!302479 lt!1298522) cNot!42))))

(assert (= (and d!1090259 res!1514048) b!3728303))

(assert (= (and b!3728303 (not res!1514047)) b!3728304))

(assert (=> d!1090259 m!4228929))

(declare-fun m!4229045 () Bool)

(assert (=> d!1090259 m!4229045))

(declare-fun m!4229051 () Bool)

(assert (=> b!3728304 m!4229051))

(assert (=> b!3728098 d!1090259))

(declare-fun b!3728310 () Bool)

(declare-fun c!645271 () Bool)

(assert (=> b!3728310 (= c!645271 ((_ is Union!10915) (regTwo!22343 r!26968)))))

(declare-fun e!2307043 () Regex!10915)

(declare-fun e!2307042 () Regex!10915)

(assert (=> b!3728310 (= e!2307043 e!2307042)))

(declare-fun bm!271929 () Bool)

(declare-fun call!271931 () Regex!10915)

(declare-fun call!271938 () Regex!10915)

(assert (=> bm!271929 (= call!271931 call!271938)))

(declare-fun b!3728313 () Bool)

(declare-fun e!2307044 () Regex!10915)

(declare-fun call!271934 () Regex!10915)

(assert (=> b!3728313 (= e!2307044 (Union!10915 (Concat!17186 call!271934 (regTwo!22342 (regTwo!22343 r!26968))) EmptyLang!10915))))

(declare-fun b!3728314 () Bool)

(declare-fun e!2307048 () Regex!10915)

(assert (=> b!3728314 (= e!2307042 e!2307048)))

(declare-fun c!645277 () Bool)

(assert (=> b!3728314 (= c!645277 ((_ is Star!10915) (regTwo!22343 r!26968)))))

(declare-fun d!1090265 () Bool)

(declare-fun lt!1298561 () Regex!10915)

(assert (=> d!1090265 (validRegex!5022 lt!1298561)))

(declare-fun e!2307040 () Regex!10915)

(assert (=> d!1090265 (= lt!1298561 e!2307040)))

(declare-fun c!645274 () Bool)

(assert (=> d!1090265 (= c!645274 (or ((_ is EmptyExpr!10915) (regTwo!22343 r!26968)) ((_ is EmptyLang!10915) (regTwo!22343 r!26968))))))

(assert (=> d!1090265 (validRegex!5022 (regTwo!22343 r!26968))))

(assert (=> d!1090265 (= (derivativeStep!3362 (regTwo!22343 r!26968) c!13797) lt!1298561)))

(declare-fun c!645276 () Bool)

(declare-fun bm!271931 () Bool)

(assert (=> bm!271931 (= call!271938 (derivativeStep!3362 (ite c!645271 (regOne!22343 (regTwo!22343 r!26968)) (ite c!645277 (reg!11244 (regTwo!22343 r!26968)) (ite c!645276 (regTwo!22342 (regTwo!22343 r!26968)) (regOne!22342 (regTwo!22343 r!26968))))) c!13797))))

(declare-fun b!3728317 () Bool)

(assert (=> b!3728317 (= e!2307043 (ite (= c!13797 (c!645183 (regTwo!22343 r!26968))) EmptyExpr!10915 EmptyLang!10915))))

(declare-fun b!3728319 () Bool)

(assert (=> b!3728319 (= e!2307040 EmptyLang!10915)))

(declare-fun bm!271932 () Bool)

(declare-fun call!271936 () Regex!10915)

(assert (=> bm!271932 (= call!271936 (derivativeStep!3362 (ite c!645271 (regTwo!22343 (regTwo!22343 r!26968)) (regOne!22342 (regTwo!22343 r!26968))) c!13797))))

(declare-fun b!3728320 () Bool)

(assert (=> b!3728320 (= e!2307044 (Union!10915 (Concat!17186 call!271936 (regTwo!22342 (regTwo!22343 r!26968))) call!271934))))

(declare-fun b!3728321 () Bool)

(assert (=> b!3728321 (= e!2307042 (Union!10915 call!271938 call!271936))))

(declare-fun b!3728322 () Bool)

(assert (=> b!3728322 (= e!2307040 e!2307043)))

(declare-fun c!645275 () Bool)

(assert (=> b!3728322 (= c!645275 ((_ is ElementMatch!10915) (regTwo!22343 r!26968)))))

(declare-fun b!3728323 () Bool)

(assert (=> b!3728323 (= e!2307048 (Concat!17186 call!271931 (regTwo!22343 r!26968)))))

(declare-fun bm!271933 () Bool)

(assert (=> bm!271933 (= call!271934 call!271931)))

(declare-fun b!3728324 () Bool)

(assert (=> b!3728324 (= c!645276 (nullable!3822 (regOne!22342 (regTwo!22343 r!26968))))))

(assert (=> b!3728324 (= e!2307048 e!2307044)))

(assert (= (and d!1090265 c!645274) b!3728319))

(assert (= (and d!1090265 (not c!645274)) b!3728322))

(assert (= (and b!3728322 c!645275) b!3728317))

(assert (= (and b!3728322 (not c!645275)) b!3728310))

(assert (= (and b!3728310 c!645271) b!3728321))

(assert (= (and b!3728310 (not c!645271)) b!3728314))

(assert (= (and b!3728314 c!645277) b!3728323))

(assert (= (and b!3728314 (not c!645277)) b!3728324))

(assert (= (and b!3728324 c!645276) b!3728320))

(assert (= (and b!3728324 (not c!645276)) b!3728313))

(assert (= (or b!3728320 b!3728313) bm!271933))

(assert (= (or b!3728323 bm!271933) bm!271929))

(assert (= (or b!3728321 bm!271929) bm!271931))

(assert (= (or b!3728321 b!3728320) bm!271932))

(declare-fun m!4229059 () Bool)

(assert (=> d!1090265 m!4229059))

(declare-fun m!4229061 () Bool)

(assert (=> d!1090265 m!4229061))

(declare-fun m!4229063 () Bool)

(assert (=> bm!271931 m!4229063))

(declare-fun m!4229065 () Bool)

(assert (=> bm!271932 m!4229065))

(declare-fun m!4229067 () Bool)

(assert (=> b!3728324 m!4229067))

(assert (=> b!3728098 d!1090265))

(declare-fun lt!1298563 () Bool)

(declare-fun d!1090269 () Bool)

(assert (=> d!1090269 (= lt!1298563 (select (content!5771 (usedCharacters!1178 (derivativeStep!3362 r!26968 c!13797))) cNot!42))))

(declare-fun e!2307050 () Bool)

(assert (=> d!1090269 (= lt!1298563 e!2307050)))

(declare-fun res!1514052 () Bool)

(assert (=> d!1090269 (=> (not res!1514052) (not e!2307050))))

(assert (=> d!1090269 (= res!1514052 ((_ is Cons!39672) (usedCharacters!1178 (derivativeStep!3362 r!26968 c!13797))))))

(assert (=> d!1090269 (= (contains!8008 (usedCharacters!1178 (derivativeStep!3362 r!26968 c!13797)) cNot!42) lt!1298563)))

(declare-fun b!3728325 () Bool)

(declare-fun e!2307049 () Bool)

(assert (=> b!3728325 (= e!2307050 e!2307049)))

(declare-fun res!1514051 () Bool)

(assert (=> b!3728325 (=> res!1514051 e!2307049)))

(assert (=> b!3728325 (= res!1514051 (= (h!45092 (usedCharacters!1178 (derivativeStep!3362 r!26968 c!13797))) cNot!42))))

(declare-fun b!3728326 () Bool)

(assert (=> b!3728326 (= e!2307049 (contains!8008 (t!302479 (usedCharacters!1178 (derivativeStep!3362 r!26968 c!13797))) cNot!42))))

(assert (= (and d!1090269 res!1514052) b!3728325))

(assert (= (and b!3728325 (not res!1514051)) b!3728326))

(assert (=> d!1090269 m!4228881))

(declare-fun m!4229073 () Bool)

(assert (=> d!1090269 m!4229073))

(declare-fun m!4229075 () Bool)

(assert (=> d!1090269 m!4229075))

(declare-fun m!4229077 () Bool)

(assert (=> b!3728326 m!4229077))

(assert (=> b!3728098 d!1090269))

(declare-fun b!3728327 () Bool)

(declare-fun e!2307052 () List!39796)

(declare-fun e!2307053 () List!39796)

(assert (=> b!3728327 (= e!2307052 e!2307053)))

(declare-fun c!645279 () Bool)

(assert (=> b!3728327 (= c!645279 ((_ is Union!10915) (derivativeStep!3362 (regTwo!22343 r!26968) c!13797)))))

(declare-fun bm!271934 () Bool)

(declare-fun call!271942 () List!39796)

(assert (=> bm!271934 (= call!271942 (usedCharacters!1178 (ite c!645279 (regTwo!22343 (derivativeStep!3362 (regTwo!22343 r!26968) c!13797)) (regOne!22342 (derivativeStep!3362 (regTwo!22343 r!26968) c!13797)))))))

(declare-fun b!3728328 () Bool)

(declare-fun e!2307054 () List!39796)

(declare-fun e!2307051 () List!39796)

(assert (=> b!3728328 (= e!2307054 e!2307051)))

(declare-fun c!645280 () Bool)

(assert (=> b!3728328 (= c!645280 ((_ is ElementMatch!10915) (derivativeStep!3362 (regTwo!22343 r!26968) c!13797)))))

(declare-fun bm!271935 () Bool)

(declare-fun call!271941 () List!39796)

(declare-fun c!645278 () Bool)

(assert (=> bm!271935 (= call!271941 (usedCharacters!1178 (ite c!645278 (reg!11244 (derivativeStep!3362 (regTwo!22343 r!26968) c!13797)) (ite c!645279 (regOne!22343 (derivativeStep!3362 (regTwo!22343 r!26968) c!13797)) (regTwo!22342 (derivativeStep!3362 (regTwo!22343 r!26968) c!13797))))))))

(declare-fun d!1090273 () Bool)

(declare-fun c!645281 () Bool)

(assert (=> d!1090273 (= c!645281 (or ((_ is EmptyExpr!10915) (derivativeStep!3362 (regTwo!22343 r!26968) c!13797)) ((_ is EmptyLang!10915) (derivativeStep!3362 (regTwo!22343 r!26968) c!13797))))))

(assert (=> d!1090273 (= (usedCharacters!1178 (derivativeStep!3362 (regTwo!22343 r!26968) c!13797)) e!2307054)))

(declare-fun bm!271936 () Bool)

(declare-fun call!271940 () List!39796)

(declare-fun call!271939 () List!39796)

(assert (=> bm!271936 (= call!271940 (++!9839 (ite c!645279 call!271939 call!271942) (ite c!645279 call!271942 call!271939)))))

(declare-fun b!3728329 () Bool)

(assert (=> b!3728329 (= e!2307052 call!271941)))

(declare-fun bm!271937 () Bool)

(assert (=> bm!271937 (= call!271939 call!271941)))

(declare-fun b!3728330 () Bool)

(assert (=> b!3728330 (= e!2307053 call!271940)))

(declare-fun b!3728331 () Bool)

(assert (=> b!3728331 (= e!2307054 Nil!39672)))

(declare-fun b!3728332 () Bool)

(assert (=> b!3728332 (= e!2307053 call!271940)))

(declare-fun b!3728333 () Bool)

(assert (=> b!3728333 (= e!2307051 (Cons!39672 (c!645183 (derivativeStep!3362 (regTwo!22343 r!26968) c!13797)) Nil!39672))))

(declare-fun b!3728334 () Bool)

(assert (=> b!3728334 (= c!645278 ((_ is Star!10915) (derivativeStep!3362 (regTwo!22343 r!26968) c!13797)))))

(assert (=> b!3728334 (= e!2307051 e!2307052)))

(assert (= (and d!1090273 c!645281) b!3728331))

(assert (= (and d!1090273 (not c!645281)) b!3728328))

(assert (= (and b!3728328 c!645280) b!3728333))

(assert (= (and b!3728328 (not c!645280)) b!3728334))

(assert (= (and b!3728334 c!645278) b!3728329))

(assert (= (and b!3728334 (not c!645278)) b!3728327))

(assert (= (and b!3728327 c!645279) b!3728332))

(assert (= (and b!3728327 (not c!645279)) b!3728330))

(assert (= (or b!3728332 b!3728330) bm!271937))

(assert (= (or b!3728332 b!3728330) bm!271934))

(assert (= (or b!3728332 b!3728330) bm!271936))

(assert (= (or b!3728329 bm!271937) bm!271935))

(declare-fun m!4229079 () Bool)

(assert (=> bm!271934 m!4229079))

(declare-fun m!4229081 () Bool)

(assert (=> bm!271935 m!4229081))

(declare-fun m!4229083 () Bool)

(assert (=> bm!271936 m!4229083))

(assert (=> b!3728098 d!1090273))

(declare-fun d!1090275 () Bool)

(assert (=> d!1090275 (not (contains!8008 (usedCharacters!1178 (derivativeStep!3362 (regTwo!22343 r!26968) c!13797)) cNot!42))))

(declare-fun lt!1298564 () Unit!57580)

(assert (=> d!1090275 (= lt!1298564 (choose!22227 (regTwo!22343 r!26968) c!13797 cNot!42))))

(assert (=> d!1090275 (= (lemmaDerivativeStepDoesNotAddCharToUsedCharacters!46 (regTwo!22343 r!26968) c!13797 cNot!42) lt!1298564)))

(declare-fun bs!575063 () Bool)

(assert (= bs!575063 d!1090275))

(assert (=> bs!575063 m!4228877))

(assert (=> bs!575063 m!4228877))

(assert (=> bs!575063 m!4228889))

(assert (=> bs!575063 m!4228889))

(declare-fun m!4229085 () Bool)

(assert (=> bs!575063 m!4229085))

(declare-fun m!4229087 () Bool)

(assert (=> bs!575063 m!4229087))

(assert (=> b!3728098 d!1090275))

(declare-fun b!3728410 () Bool)

(declare-fun e!2307101 () Bool)

(declare-fun call!271963 () Bool)

(assert (=> b!3728410 (= e!2307101 call!271963)))

(declare-fun b!3728412 () Bool)

(declare-fun res!1514082 () Bool)

(declare-fun e!2307103 () Bool)

(assert (=> b!3728412 (=> res!1514082 e!2307103)))

(assert (=> b!3728412 (= res!1514082 (not ((_ is Concat!17186) r!26968)))))

(declare-fun e!2307105 () Bool)

(assert (=> b!3728412 (= e!2307105 e!2307103)))

(declare-fun bm!271957 () Bool)

(declare-fun c!645296 () Bool)

(declare-fun c!645297 () Bool)

(assert (=> bm!271957 (= call!271963 (validRegex!5022 (ite c!645296 (reg!11244 r!26968) (ite c!645297 (regTwo!22343 r!26968) (regTwo!22342 r!26968)))))))

(declare-fun d!1090277 () Bool)

(declare-fun res!1514080 () Bool)

(declare-fun e!2307102 () Bool)

(assert (=> d!1090277 (=> res!1514080 e!2307102)))

(assert (=> d!1090277 (= res!1514080 ((_ is ElementMatch!10915) r!26968))))

(assert (=> d!1090277 (= (validRegex!5022 r!26968) e!2307102)))

(declare-fun bm!271958 () Bool)

(declare-fun call!271962 () Bool)

(assert (=> bm!271958 (= call!271962 call!271963)))

(declare-fun b!3728414 () Bool)

(declare-fun e!2307100 () Bool)

(assert (=> b!3728414 (= e!2307100 e!2307105)))

(assert (=> b!3728414 (= c!645297 ((_ is Union!10915) r!26968))))

(declare-fun b!3728415 () Bool)

(declare-fun res!1514084 () Bool)

(declare-fun e!2307107 () Bool)

(assert (=> b!3728415 (=> (not res!1514084) (not e!2307107))))

(declare-fun call!271964 () Bool)

(assert (=> b!3728415 (= res!1514084 call!271964)))

(assert (=> b!3728415 (= e!2307105 e!2307107)))

(declare-fun b!3728416 () Bool)

(assert (=> b!3728416 (= e!2307100 e!2307101)))

(declare-fun res!1514083 () Bool)

(assert (=> b!3728416 (= res!1514083 (not (nullable!3822 (reg!11244 r!26968))))))

(assert (=> b!3728416 (=> (not res!1514083) (not e!2307101))))

(declare-fun b!3728417 () Bool)

(declare-fun e!2307104 () Bool)

(assert (=> b!3728417 (= e!2307104 call!271962)))

(declare-fun b!3728418 () Bool)

(assert (=> b!3728418 (= e!2307102 e!2307100)))

(assert (=> b!3728418 (= c!645296 ((_ is Star!10915) r!26968))))

(declare-fun b!3728419 () Bool)

(assert (=> b!3728419 (= e!2307103 e!2307104)))

(declare-fun res!1514081 () Bool)

(assert (=> b!3728419 (=> (not res!1514081) (not e!2307104))))

(assert (=> b!3728419 (= res!1514081 call!271964)))

(declare-fun b!3728420 () Bool)

(assert (=> b!3728420 (= e!2307107 call!271962)))

(declare-fun bm!271959 () Bool)

(assert (=> bm!271959 (= call!271964 (validRegex!5022 (ite c!645297 (regOne!22343 r!26968) (regOne!22342 r!26968))))))

(assert (= (and d!1090277 (not res!1514080)) b!3728418))

(assert (= (and b!3728418 c!645296) b!3728416))

(assert (= (and b!3728418 (not c!645296)) b!3728414))

(assert (= (and b!3728416 res!1514083) b!3728410))

(assert (= (and b!3728414 c!645297) b!3728415))

(assert (= (and b!3728414 (not c!645297)) b!3728412))

(assert (= (and b!3728415 res!1514084) b!3728420))

(assert (= (and b!3728412 (not res!1514082)) b!3728419))

(assert (= (and b!3728419 res!1514081) b!3728417))

(assert (= (or b!3728420 b!3728417) bm!271958))

(assert (= (or b!3728415 b!3728419) bm!271959))

(assert (= (or b!3728410 bm!271958) bm!271957))

(declare-fun m!4229107 () Bool)

(assert (=> bm!271957 m!4229107))

(declare-fun m!4229109 () Bool)

(assert (=> b!3728416 m!4229109))

(declare-fun m!4229111 () Bool)

(assert (=> bm!271959 m!4229111))

(assert (=> start!350854 d!1090277))

(declare-fun d!1090283 () Bool)

(declare-fun lt!1298566 () Bool)

(assert (=> d!1090283 (= lt!1298566 (select (content!5771 (usedCharacters!1178 r!26968)) cNot!42))))

(declare-fun e!2307111 () Bool)

(assert (=> d!1090283 (= lt!1298566 e!2307111)))

(declare-fun res!1514086 () Bool)

(assert (=> d!1090283 (=> (not res!1514086) (not e!2307111))))

(assert (=> d!1090283 (= res!1514086 ((_ is Cons!39672) (usedCharacters!1178 r!26968)))))

(assert (=> d!1090283 (= (contains!8008 (usedCharacters!1178 r!26968) cNot!42) lt!1298566)))

(declare-fun b!3728429 () Bool)

(declare-fun e!2307110 () Bool)

(assert (=> b!3728429 (= e!2307111 e!2307110)))

(declare-fun res!1514085 () Bool)

(assert (=> b!3728429 (=> res!1514085 e!2307110)))

(assert (=> b!3728429 (= res!1514085 (= (h!45092 (usedCharacters!1178 r!26968)) cNot!42))))

(declare-fun b!3728430 () Bool)

(assert (=> b!3728430 (= e!2307110 (contains!8008 (t!302479 (usedCharacters!1178 r!26968)) cNot!42))))

(assert (= (and d!1090283 res!1514086) b!3728429))

(assert (= (and b!3728429 (not res!1514085)) b!3728430))

(assert (=> d!1090283 m!4228903))

(declare-fun m!4229113 () Bool)

(assert (=> d!1090283 m!4229113))

(declare-fun m!4229115 () Bool)

(assert (=> d!1090283 m!4229115))

(declare-fun m!4229117 () Bool)

(assert (=> b!3728430 m!4229117))

(assert (=> b!3728102 d!1090283))

(declare-fun b!3728431 () Bool)

(declare-fun e!2307113 () List!39796)

(declare-fun e!2307114 () List!39796)

(assert (=> b!3728431 (= e!2307113 e!2307114)))

(declare-fun c!645299 () Bool)

(assert (=> b!3728431 (= c!645299 ((_ is Union!10915) r!26968))))

(declare-fun bm!271960 () Bool)

(declare-fun call!271968 () List!39796)

(assert (=> bm!271960 (= call!271968 (usedCharacters!1178 (ite c!645299 (regTwo!22343 r!26968) (regOne!22342 r!26968))))))

(declare-fun b!3728432 () Bool)

(declare-fun e!2307115 () List!39796)

(declare-fun e!2307112 () List!39796)

(assert (=> b!3728432 (= e!2307115 e!2307112)))

(declare-fun c!645300 () Bool)

(assert (=> b!3728432 (= c!645300 ((_ is ElementMatch!10915) r!26968))))

(declare-fun bm!271961 () Bool)

(declare-fun c!645298 () Bool)

(declare-fun call!271967 () List!39796)

(assert (=> bm!271961 (= call!271967 (usedCharacters!1178 (ite c!645298 (reg!11244 r!26968) (ite c!645299 (regOne!22343 r!26968) (regTwo!22342 r!26968)))))))

(declare-fun d!1090285 () Bool)

(declare-fun c!645301 () Bool)

(assert (=> d!1090285 (= c!645301 (or ((_ is EmptyExpr!10915) r!26968) ((_ is EmptyLang!10915) r!26968)))))

(assert (=> d!1090285 (= (usedCharacters!1178 r!26968) e!2307115)))

(declare-fun call!271966 () List!39796)

(declare-fun call!271965 () List!39796)

(declare-fun bm!271962 () Bool)

(assert (=> bm!271962 (= call!271966 (++!9839 (ite c!645299 call!271965 call!271968) (ite c!645299 call!271968 call!271965)))))

(declare-fun b!3728433 () Bool)

(assert (=> b!3728433 (= e!2307113 call!271967)))

(declare-fun bm!271963 () Bool)

(assert (=> bm!271963 (= call!271965 call!271967)))

(declare-fun b!3728434 () Bool)

(assert (=> b!3728434 (= e!2307114 call!271966)))

(declare-fun b!3728435 () Bool)

(assert (=> b!3728435 (= e!2307115 Nil!39672)))

(declare-fun b!3728436 () Bool)

(assert (=> b!3728436 (= e!2307114 call!271966)))

(declare-fun b!3728437 () Bool)

(assert (=> b!3728437 (= e!2307112 (Cons!39672 (c!645183 r!26968) Nil!39672))))

(declare-fun b!3728438 () Bool)

(assert (=> b!3728438 (= c!645298 ((_ is Star!10915) r!26968))))

(assert (=> b!3728438 (= e!2307112 e!2307113)))

(assert (= (and d!1090285 c!645301) b!3728435))

(assert (= (and d!1090285 (not c!645301)) b!3728432))

(assert (= (and b!3728432 c!645300) b!3728437))

(assert (= (and b!3728432 (not c!645300)) b!3728438))

(assert (= (and b!3728438 c!645298) b!3728433))

(assert (= (and b!3728438 (not c!645298)) b!3728431))

(assert (= (and b!3728431 c!645299) b!3728436))

(assert (= (and b!3728431 (not c!645299)) b!3728434))

(assert (= (or b!3728436 b!3728434) bm!271963))

(assert (= (or b!3728436 b!3728434) bm!271960))

(assert (= (or b!3728436 b!3728434) bm!271962))

(assert (= (or b!3728433 bm!271963) bm!271961))

(declare-fun m!4229119 () Bool)

(assert (=> bm!271960 m!4229119))

(declare-fun m!4229121 () Bool)

(assert (=> bm!271961 m!4229121))

(declare-fun m!4229123 () Bool)

(assert (=> bm!271962 m!4229123))

(assert (=> b!3728102 d!1090285))

(declare-fun b!3728451 () Bool)

(declare-fun e!2307118 () Bool)

(declare-fun tp!1134432 () Bool)

(assert (=> b!3728451 (= e!2307118 tp!1134432)))

(declare-fun b!3728450 () Bool)

(declare-fun tp!1134433 () Bool)

(declare-fun tp!1134431 () Bool)

(assert (=> b!3728450 (= e!2307118 (and tp!1134433 tp!1134431))))

(declare-fun b!3728452 () Bool)

(declare-fun tp!1134430 () Bool)

(declare-fun tp!1134434 () Bool)

(assert (=> b!3728452 (= e!2307118 (and tp!1134430 tp!1134434))))

(declare-fun b!3728449 () Bool)

(assert (=> b!3728449 (= e!2307118 tp_is_empty!18845)))

(assert (=> b!3728103 (= tp!1134383 e!2307118)))

(assert (= (and b!3728103 ((_ is ElementMatch!10915) (reg!11244 r!26968))) b!3728449))

(assert (= (and b!3728103 ((_ is Concat!17186) (reg!11244 r!26968))) b!3728450))

(assert (= (and b!3728103 ((_ is Star!10915) (reg!11244 r!26968))) b!3728451))

(assert (= (and b!3728103 ((_ is Union!10915) (reg!11244 r!26968))) b!3728452))

(declare-fun b!3728455 () Bool)

(declare-fun e!2307119 () Bool)

(declare-fun tp!1134437 () Bool)

(assert (=> b!3728455 (= e!2307119 tp!1134437)))

(declare-fun b!3728454 () Bool)

(declare-fun tp!1134438 () Bool)

(declare-fun tp!1134436 () Bool)

(assert (=> b!3728454 (= e!2307119 (and tp!1134438 tp!1134436))))

(declare-fun b!3728456 () Bool)

(declare-fun tp!1134435 () Bool)

(declare-fun tp!1134439 () Bool)

(assert (=> b!3728456 (= e!2307119 (and tp!1134435 tp!1134439))))

(declare-fun b!3728453 () Bool)

(assert (=> b!3728453 (= e!2307119 tp_is_empty!18845)))

(assert (=> b!3728104 (= tp!1134382 e!2307119)))

(assert (= (and b!3728104 ((_ is ElementMatch!10915) (regOne!22342 r!26968))) b!3728453))

(assert (= (and b!3728104 ((_ is Concat!17186) (regOne!22342 r!26968))) b!3728454))

(assert (= (and b!3728104 ((_ is Star!10915) (regOne!22342 r!26968))) b!3728455))

(assert (= (and b!3728104 ((_ is Union!10915) (regOne!22342 r!26968))) b!3728456))

(declare-fun b!3728459 () Bool)

(declare-fun e!2307120 () Bool)

(declare-fun tp!1134442 () Bool)

(assert (=> b!3728459 (= e!2307120 tp!1134442)))

(declare-fun b!3728458 () Bool)

(declare-fun tp!1134443 () Bool)

(declare-fun tp!1134441 () Bool)

(assert (=> b!3728458 (= e!2307120 (and tp!1134443 tp!1134441))))

(declare-fun b!3728460 () Bool)

(declare-fun tp!1134440 () Bool)

(declare-fun tp!1134444 () Bool)

(assert (=> b!3728460 (= e!2307120 (and tp!1134440 tp!1134444))))

(declare-fun b!3728457 () Bool)

(assert (=> b!3728457 (= e!2307120 tp_is_empty!18845)))

(assert (=> b!3728104 (= tp!1134380 e!2307120)))

(assert (= (and b!3728104 ((_ is ElementMatch!10915) (regTwo!22342 r!26968))) b!3728457))

(assert (= (and b!3728104 ((_ is Concat!17186) (regTwo!22342 r!26968))) b!3728458))

(assert (= (and b!3728104 ((_ is Star!10915) (regTwo!22342 r!26968))) b!3728459))

(assert (= (and b!3728104 ((_ is Union!10915) (regTwo!22342 r!26968))) b!3728460))

(declare-fun b!3728463 () Bool)

(declare-fun e!2307121 () Bool)

(declare-fun tp!1134447 () Bool)

(assert (=> b!3728463 (= e!2307121 tp!1134447)))

(declare-fun b!3728462 () Bool)

(declare-fun tp!1134448 () Bool)

(declare-fun tp!1134446 () Bool)

(assert (=> b!3728462 (= e!2307121 (and tp!1134448 tp!1134446))))

(declare-fun b!3728464 () Bool)

(declare-fun tp!1134445 () Bool)

(declare-fun tp!1134449 () Bool)

(assert (=> b!3728464 (= e!2307121 (and tp!1134445 tp!1134449))))

(declare-fun b!3728461 () Bool)

(assert (=> b!3728461 (= e!2307121 tp_is_empty!18845)))

(assert (=> b!3728100 (= tp!1134381 e!2307121)))

(assert (= (and b!3728100 ((_ is ElementMatch!10915) (regOne!22343 r!26968))) b!3728461))

(assert (= (and b!3728100 ((_ is Concat!17186) (regOne!22343 r!26968))) b!3728462))

(assert (= (and b!3728100 ((_ is Star!10915) (regOne!22343 r!26968))) b!3728463))

(assert (= (and b!3728100 ((_ is Union!10915) (regOne!22343 r!26968))) b!3728464))

(declare-fun b!3728467 () Bool)

(declare-fun e!2307122 () Bool)

(declare-fun tp!1134452 () Bool)

(assert (=> b!3728467 (= e!2307122 tp!1134452)))

(declare-fun b!3728466 () Bool)

(declare-fun tp!1134453 () Bool)

(declare-fun tp!1134451 () Bool)

(assert (=> b!3728466 (= e!2307122 (and tp!1134453 tp!1134451))))

(declare-fun b!3728468 () Bool)

(declare-fun tp!1134450 () Bool)

(declare-fun tp!1134454 () Bool)

(assert (=> b!3728468 (= e!2307122 (and tp!1134450 tp!1134454))))

(declare-fun b!3728465 () Bool)

(assert (=> b!3728465 (= e!2307122 tp_is_empty!18845)))

(assert (=> b!3728100 (= tp!1134384 e!2307122)))

(assert (= (and b!3728100 ((_ is ElementMatch!10915) (regTwo!22343 r!26968))) b!3728465))

(assert (= (and b!3728100 ((_ is Concat!17186) (regTwo!22343 r!26968))) b!3728466))

(assert (= (and b!3728100 ((_ is Star!10915) (regTwo!22343 r!26968))) b!3728467))

(assert (= (and b!3728100 ((_ is Union!10915) (regTwo!22343 r!26968))) b!3728468))

(check-sat (not b!3728225) (not b!3728304) (not d!1090235) (not b!3728460) (not bm!271936) tp_is_empty!18845 (not d!1090283) (not d!1090221) (not bm!271932) (not b!3728450) (not d!1090259) (not b!3728253) (not bm!271962) (not bm!271900) (not d!1090239) (not d!1090223) (not b!3728468) (not bm!271899) (not b!3728255) (not b!3728466) (not bm!271923) (not bm!271934) (not b!3728467) (not b!3728451) (not b!3728463) (not bm!271924) (not b!3728455) (not bm!271957) (not b!3728416) (not d!1090227) (not bm!271896) (not b!3728147) (not b!3728454) (not bm!271919) (not bm!271918) (not b!3728452) (not bm!271961) (not bm!271922) (not bm!271935) (not bm!271959) (not bm!271931) (not b!3728430) (not b!3728209) (not bm!271895) (not b!3728324) (not b!3728148) (not bm!271960) (not b!3728459) (not d!1090265) (not d!1090269) (not b!3728458) (not bm!271920) (not b!3728326) (not d!1090233) (not d!1090275) (not b!3728464) (not b!3728462) (not d!1090247) (not b!3728456))
(check-sat)
