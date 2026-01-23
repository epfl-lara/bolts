; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!350122 () Bool)

(assert start!350122)

(declare-fun b!3714946 () Bool)

(declare-fun res!1510256 () Bool)

(declare-fun e!2300310 () Bool)

(assert (=> b!3714946 (=> (not res!1510256) (not e!2300310))))

(declare-datatypes ((C!21896 0))(
  ( (C!21897 (val!12996 Int)) )
))
(declare-datatypes ((Regex!10855 0))(
  ( (ElementMatch!10855 (c!641993 C!21896)) (Concat!17126 (regOne!22222 Regex!10855) (regTwo!22222 Regex!10855)) (EmptyExpr!10855) (Star!10855 (reg!11184 Regex!10855)) (EmptyLang!10855) (Union!10855 (regOne!22223 Regex!10855) (regTwo!22223 Regex!10855)) )
))
(declare-fun r!26326 () Regex!10855)

(get-info :version)

(assert (=> b!3714946 (= res!1510256 (and (not ((_ is EmptyExpr!10855) r!26326)) (not ((_ is EmptyLang!10855) r!26326)) (not ((_ is ElementMatch!10855) r!26326)) (not ((_ is Union!10855) r!26326)) (not ((_ is Star!10855) r!26326))))))

(declare-fun b!3714947 () Bool)

(declare-fun res!1510260 () Bool)

(assert (=> b!3714947 (=> (not res!1510260) (not e!2300310))))

(declare-fun nullable!3778 (Regex!10855) Bool)

(assert (=> b!3714947 (= res!1510260 (nullable!3778 (regOne!22222 r!26326)))))

(declare-fun b!3714949 () Bool)

(declare-fun e!2300304 () Bool)

(declare-fun tp_is_empty!18725 () Bool)

(assert (=> b!3714949 (= e!2300304 tp_is_empty!18725)))

(declare-fun b!3714950 () Bool)

(declare-fun tp!1130506 () Bool)

(declare-fun tp!1130505 () Bool)

(assert (=> b!3714950 (= e!2300304 (and tp!1130506 tp!1130505))))

(declare-fun b!3714951 () Bool)

(declare-fun res!1510252 () Bool)

(assert (=> b!3714951 (=> (not res!1510252) (not e!2300310))))

(declare-fun c!13576 () C!21896)

(declare-datatypes ((List!39736 0))(
  ( (Nil!39612) (Cons!39612 (h!45032 C!21896) (t!302419 List!39736)) )
))
(declare-fun tl!3933 () List!39736)

(declare-fun derivative!369 (Regex!10855 List!39736) Regex!10855)

(declare-fun derivativeStep!3320 (Regex!10855 C!21896) Regex!10855)

(assert (=> b!3714951 (= res!1510252 (nullable!3778 (derivative!369 (derivativeStep!3320 r!26326 c!13576) tl!3933)))))

(declare-fun b!3714952 () Bool)

(declare-fun e!2300308 () Bool)

(declare-fun e!2300306 () Bool)

(assert (=> b!3714952 (= e!2300308 e!2300306)))

(declare-fun res!1510253 () Bool)

(assert (=> b!3714952 (=> res!1510253 e!2300306)))

(declare-datatypes ((tuple2!39220 0))(
  ( (tuple2!39221 (_1!22744 List!39736) (_2!22744 List!39736)) )
))
(declare-fun lt!1297291 () tuple2!39220)

(declare-fun ++!9801 (List!39736 List!39736) List!39736)

(assert (=> b!3714952 (= res!1510253 (not (= (++!9801 (_1!22744 lt!1297291) (_2!22744 lt!1297291)) tl!3933)))))

(declare-datatypes ((Option!8572 0))(
  ( (None!8571) (Some!8571 (v!38589 tuple2!39220)) )
))
(declare-fun lt!1297292 () Option!8572)

(declare-fun get!13200 (Option!8572) tuple2!39220)

(assert (=> b!3714952 (= lt!1297291 (get!13200 lt!1297292))))

(declare-fun isDefined!6749 (Option!8572) Bool)

(assert (=> b!3714952 (isDefined!6749 lt!1297292)))

(declare-fun lt!1297295 () Regex!10855)

(declare-fun findConcatSeparation!1260 (Regex!10855 Regex!10855 List!39736 List!39736 List!39736) Option!8572)

(assert (=> b!3714952 (= lt!1297292 (findConcatSeparation!1260 lt!1297295 (regTwo!22222 r!26326) Nil!39612 tl!3933 tl!3933))))

(declare-datatypes ((Unit!57508 0))(
  ( (Unit!57509) )
))
(declare-fun lt!1297289 () Unit!57508)

(declare-fun lemmaConcatAcceptsStringThenFindSeparationIsDefined!232 (Regex!10855 Regex!10855 List!39736) Unit!57508)

(assert (=> b!3714952 (= lt!1297289 (lemmaConcatAcceptsStringThenFindSeparationIsDefined!232 lt!1297295 (regTwo!22222 r!26326) tl!3933))))

(declare-fun b!3714953 () Bool)

(declare-fun res!1510259 () Bool)

(assert (=> b!3714953 (=> res!1510259 e!2300306)))

(declare-fun matchR!5300 (Regex!10855 List!39736) Bool)

(assert (=> b!3714953 (= res!1510259 (not (matchR!5300 (regOne!22222 r!26326) (Cons!39612 c!13576 (_1!22744 lt!1297291)))))))

(declare-fun b!3714954 () Bool)

(declare-fun e!2300309 () Bool)

(declare-fun tp!1130503 () Bool)

(assert (=> b!3714954 (= e!2300309 (and tp_is_empty!18725 tp!1130503))))

(declare-fun b!3714955 () Bool)

(declare-fun tp!1130504 () Bool)

(declare-fun tp!1130508 () Bool)

(assert (=> b!3714955 (= e!2300304 (and tp!1130504 tp!1130508))))

(declare-fun b!3714956 () Bool)

(declare-fun e!2300305 () Bool)

(declare-fun contains!7948 (List!39736 C!21896) Bool)

(declare-fun usedCharacters!1118 (Regex!10855) List!39736)

(assert (=> b!3714956 (= e!2300305 (contains!7948 (usedCharacters!1118 r!26326) c!13576))))

(assert (=> b!3714956 (contains!7948 (usedCharacters!1118 (regOne!22222 r!26326)) c!13576)))

(declare-fun lt!1297296 () Unit!57508)

(declare-fun lemmaDerivativeAfterDerivativeStepIsNullableThenUsedCharsContainsHead!12 (Regex!10855 C!21896 List!39736) Unit!57508)

(assert (=> b!3714956 (= lt!1297296 (lemmaDerivativeAfterDerivativeStepIsNullableThenUsedCharsContainsHead!12 (regOne!22222 r!26326) c!13576 (_1!22744 lt!1297291)))))

(declare-fun b!3714957 () Bool)

(declare-fun tp!1130507 () Bool)

(assert (=> b!3714957 (= e!2300304 tp!1130507)))

(declare-fun b!3714958 () Bool)

(declare-fun e!2300307 () Bool)

(declare-fun lt!1297290 () Regex!10855)

(assert (=> b!3714958 (= e!2300307 (matchR!5300 lt!1297290 tl!3933))))

(declare-fun b!3714948 () Bool)

(assert (=> b!3714948 (= e!2300310 (not e!2300308))))

(declare-fun res!1510254 () Bool)

(assert (=> b!3714948 (=> res!1510254 e!2300308)))

(declare-fun lt!1297298 () Bool)

(assert (=> b!3714948 (= res!1510254 (not lt!1297298))))

(assert (=> b!3714948 e!2300307))

(declare-fun res!1510257 () Bool)

(assert (=> b!3714948 (=> res!1510257 e!2300307)))

(assert (=> b!3714948 (= res!1510257 lt!1297298)))

(declare-fun lt!1297297 () Regex!10855)

(assert (=> b!3714948 (= lt!1297298 (matchR!5300 lt!1297297 tl!3933))))

(declare-fun lt!1297294 () Unit!57508)

(declare-fun lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!332 (Regex!10855 Regex!10855 List!39736) Unit!57508)

(assert (=> b!3714948 (= lt!1297294 (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!332 lt!1297297 lt!1297290 tl!3933))))

(declare-fun lt!1297287 () Regex!10855)

(assert (=> b!3714948 (= (matchR!5300 lt!1297287 tl!3933) (matchR!5300 (derivative!369 lt!1297287 tl!3933) Nil!39612))))

(declare-fun lt!1297286 () Unit!57508)

(declare-fun lemmaMatchRIsSameAsWholeDerivativeAndNil!246 (Regex!10855 List!39736) Unit!57508)

(assert (=> b!3714948 (= lt!1297286 (lemmaMatchRIsSameAsWholeDerivativeAndNil!246 lt!1297287 tl!3933))))

(assert (=> b!3714948 (= lt!1297287 (Union!10855 lt!1297297 lt!1297290))))

(assert (=> b!3714948 (= lt!1297290 (derivativeStep!3320 (regTwo!22222 r!26326) c!13576))))

(assert (=> b!3714948 (= lt!1297297 (Concat!17126 lt!1297295 (regTwo!22222 r!26326)))))

(assert (=> b!3714948 (= lt!1297295 (derivativeStep!3320 (regOne!22222 r!26326) c!13576))))

(declare-fun res!1510261 () Bool)

(assert (=> start!350122 (=> (not res!1510261) (not e!2300310))))

(declare-fun validRegex!4962 (Regex!10855) Bool)

(assert (=> start!350122 (= res!1510261 (validRegex!4962 r!26326))))

(assert (=> start!350122 e!2300310))

(assert (=> start!350122 e!2300304))

(assert (=> start!350122 tp_is_empty!18725))

(assert (=> start!350122 e!2300309))

(declare-fun b!3714959 () Bool)

(declare-fun res!1510258 () Bool)

(assert (=> b!3714959 (=> res!1510258 e!2300306)))

(assert (=> b!3714959 (= res!1510258 (not (matchR!5300 (regTwo!22222 r!26326) (_2!22744 lt!1297291))))))

(declare-fun b!3714960 () Bool)

(declare-fun res!1510262 () Bool)

(assert (=> b!3714960 (=> res!1510262 e!2300305)))

(declare-fun lt!1297293 () Regex!10855)

(assert (=> b!3714960 (= res!1510262 (not (nullable!3778 lt!1297293)))))

(declare-fun b!3714961 () Bool)

(assert (=> b!3714961 (= e!2300306 e!2300305)))

(declare-fun res!1510255 () Bool)

(assert (=> b!3714961 (=> res!1510255 e!2300305)))

(assert (=> b!3714961 (= res!1510255 (not (validRegex!4962 (regOne!22222 r!26326))))))

(assert (=> b!3714961 (matchR!5300 lt!1297293 Nil!39612)))

(assert (=> b!3714961 (= lt!1297293 (derivative!369 lt!1297295 (_1!22744 lt!1297291)))))

(declare-fun lt!1297288 () Unit!57508)

(assert (=> b!3714961 (= lt!1297288 (lemmaMatchRIsSameAsWholeDerivativeAndNil!246 lt!1297295 (_1!22744 lt!1297291)))))

(declare-fun b!3714962 () Bool)

(declare-fun res!1510251 () Bool)

(assert (=> b!3714962 (=> res!1510251 e!2300306)))

(assert (=> b!3714962 (= res!1510251 (not (matchR!5300 lt!1297295 (_1!22744 lt!1297291))))))

(assert (= (and start!350122 res!1510261) b!3714951))

(assert (= (and b!3714951 res!1510252) b!3714946))

(assert (= (and b!3714946 res!1510256) b!3714947))

(assert (= (and b!3714947 res!1510260) b!3714948))

(assert (= (and b!3714948 (not res!1510257)) b!3714958))

(assert (= (and b!3714948 (not res!1510254)) b!3714952))

(assert (= (and b!3714952 (not res!1510253)) b!3714962))

(assert (= (and b!3714962 (not res!1510251)) b!3714959))

(assert (= (and b!3714959 (not res!1510258)) b!3714953))

(assert (= (and b!3714953 (not res!1510259)) b!3714961))

(assert (= (and b!3714961 (not res!1510255)) b!3714960))

(assert (= (and b!3714960 (not res!1510262)) b!3714956))

(assert (= (and start!350122 ((_ is ElementMatch!10855) r!26326)) b!3714949))

(assert (= (and start!350122 ((_ is Concat!17126) r!26326)) b!3714950))

(assert (= (and start!350122 ((_ is Star!10855) r!26326)) b!3714957))

(assert (= (and start!350122 ((_ is Union!10855) r!26326)) b!3714955))

(assert (= (and start!350122 ((_ is Cons!39612) tl!3933)) b!3714954))

(declare-fun m!4220881 () Bool)

(assert (=> b!3714947 m!4220881))

(declare-fun m!4220883 () Bool)

(assert (=> b!3714961 m!4220883))

(declare-fun m!4220885 () Bool)

(assert (=> b!3714961 m!4220885))

(declare-fun m!4220887 () Bool)

(assert (=> b!3714961 m!4220887))

(declare-fun m!4220889 () Bool)

(assert (=> b!3714961 m!4220889))

(declare-fun m!4220891 () Bool)

(assert (=> b!3714956 m!4220891))

(declare-fun m!4220893 () Bool)

(assert (=> b!3714956 m!4220893))

(assert (=> b!3714956 m!4220893))

(declare-fun m!4220895 () Bool)

(assert (=> b!3714956 m!4220895))

(declare-fun m!4220897 () Bool)

(assert (=> b!3714956 m!4220897))

(assert (=> b!3714956 m!4220897))

(declare-fun m!4220899 () Bool)

(assert (=> b!3714956 m!4220899))

(declare-fun m!4220901 () Bool)

(assert (=> b!3714948 m!4220901))

(declare-fun m!4220903 () Bool)

(assert (=> b!3714948 m!4220903))

(declare-fun m!4220905 () Bool)

(assert (=> b!3714948 m!4220905))

(declare-fun m!4220907 () Bool)

(assert (=> b!3714948 m!4220907))

(declare-fun m!4220909 () Bool)

(assert (=> b!3714948 m!4220909))

(declare-fun m!4220911 () Bool)

(assert (=> b!3714948 m!4220911))

(declare-fun m!4220913 () Bool)

(assert (=> b!3714948 m!4220913))

(assert (=> b!3714948 m!4220903))

(declare-fun m!4220915 () Bool)

(assert (=> b!3714948 m!4220915))

(declare-fun m!4220917 () Bool)

(assert (=> b!3714962 m!4220917))

(declare-fun m!4220919 () Bool)

(assert (=> b!3714952 m!4220919))

(declare-fun m!4220921 () Bool)

(assert (=> b!3714952 m!4220921))

(declare-fun m!4220923 () Bool)

(assert (=> b!3714952 m!4220923))

(declare-fun m!4220925 () Bool)

(assert (=> b!3714952 m!4220925))

(declare-fun m!4220927 () Bool)

(assert (=> b!3714952 m!4220927))

(declare-fun m!4220929 () Bool)

(assert (=> start!350122 m!4220929))

(declare-fun m!4220931 () Bool)

(assert (=> b!3714960 m!4220931))

(declare-fun m!4220933 () Bool)

(assert (=> b!3714959 m!4220933))

(declare-fun m!4220935 () Bool)

(assert (=> b!3714951 m!4220935))

(assert (=> b!3714951 m!4220935))

(declare-fun m!4220937 () Bool)

(assert (=> b!3714951 m!4220937))

(assert (=> b!3714951 m!4220937))

(declare-fun m!4220939 () Bool)

(assert (=> b!3714951 m!4220939))

(declare-fun m!4220941 () Bool)

(assert (=> b!3714953 m!4220941))

(declare-fun m!4220943 () Bool)

(assert (=> b!3714958 m!4220943))

(check-sat (not b!3714960) (not start!350122) (not b!3714951) (not b!3714952) (not b!3714961) (not b!3714953) (not b!3714950) (not b!3714959) tp_is_empty!18725 (not b!3714948) (not b!3714955) (not b!3714962) (not b!3714956) (not b!3714947) (not b!3714957) (not b!3714954) (not b!3714958))
(check-sat)
(get-model)

(declare-fun d!1087769 () Bool)

(declare-fun nullableFct!1067 (Regex!10855) Bool)

(assert (=> d!1087769 (= (nullable!3778 lt!1297293) (nullableFct!1067 lt!1297293))))

(declare-fun bs!574815 () Bool)

(assert (= bs!574815 d!1087769))

(declare-fun m!4220955 () Bool)

(assert (=> bs!574815 m!4220955))

(assert (=> b!3714960 d!1087769))

(declare-fun b!3715027 () Bool)

(declare-fun e!2300346 () Bool)

(declare-fun head!8021 (List!39736) C!21896)

(assert (=> b!3715027 (= e!2300346 (= (head!8021 tl!3933) (c!641993 lt!1297290)))))

(declare-fun b!3715028 () Bool)

(declare-fun res!1510283 () Bool)

(declare-fun e!2300349 () Bool)

(assert (=> b!3715028 (=> res!1510283 e!2300349)))

(assert (=> b!3715028 (= res!1510283 (not ((_ is ElementMatch!10855) lt!1297290)))))

(declare-fun e!2300345 () Bool)

(assert (=> b!3715028 (= e!2300345 e!2300349)))

(declare-fun d!1087773 () Bool)

(declare-fun e!2300348 () Bool)

(assert (=> d!1087773 e!2300348))

(declare-fun c!642019 () Bool)

(assert (=> d!1087773 (= c!642019 ((_ is EmptyExpr!10855) lt!1297290))))

(declare-fun lt!1297307 () Bool)

(declare-fun e!2300344 () Bool)

(assert (=> d!1087773 (= lt!1297307 e!2300344)))

(declare-fun c!642018 () Bool)

(declare-fun isEmpty!23507 (List!39736) Bool)

(assert (=> d!1087773 (= c!642018 (isEmpty!23507 tl!3933))))

(assert (=> d!1087773 (validRegex!4962 lt!1297290)))

(assert (=> d!1087773 (= (matchR!5300 lt!1297290 tl!3933) lt!1297307)))

(declare-fun b!3715029 () Bool)

(declare-fun e!2300347 () Bool)

(declare-fun e!2300343 () Bool)

(assert (=> b!3715029 (= e!2300347 e!2300343)))

(declare-fun res!1510282 () Bool)

(assert (=> b!3715029 (=> res!1510282 e!2300343)))

(declare-fun call!269205 () Bool)

(assert (=> b!3715029 (= res!1510282 call!269205)))

(declare-fun b!3715030 () Bool)

(declare-fun res!1510280 () Bool)

(assert (=> b!3715030 (=> (not res!1510280) (not e!2300346))))

(assert (=> b!3715030 (= res!1510280 (not call!269205))))

(declare-fun bm!269200 () Bool)

(assert (=> bm!269200 (= call!269205 (isEmpty!23507 tl!3933))))

(declare-fun b!3715031 () Bool)

(assert (=> b!3715031 (= e!2300344 (nullable!3778 lt!1297290))))

(declare-fun b!3715032 () Bool)

(declare-fun res!1510285 () Bool)

(assert (=> b!3715032 (=> (not res!1510285) (not e!2300346))))

(declare-fun tail!5748 (List!39736) List!39736)

(assert (=> b!3715032 (= res!1510285 (isEmpty!23507 (tail!5748 tl!3933)))))

(declare-fun b!3715033 () Bool)

(assert (=> b!3715033 (= e!2300348 (= lt!1297307 call!269205))))

(declare-fun b!3715034 () Bool)

(assert (=> b!3715034 (= e!2300344 (matchR!5300 (derivativeStep!3320 lt!1297290 (head!8021 tl!3933)) (tail!5748 tl!3933)))))

(declare-fun b!3715035 () Bool)

(assert (=> b!3715035 (= e!2300343 (not (= (head!8021 tl!3933) (c!641993 lt!1297290))))))

(declare-fun b!3715036 () Bool)

(assert (=> b!3715036 (= e!2300345 (not lt!1297307))))

(declare-fun b!3715037 () Bool)

(assert (=> b!3715037 (= e!2300349 e!2300347)))

(declare-fun res!1510286 () Bool)

(assert (=> b!3715037 (=> (not res!1510286) (not e!2300347))))

(assert (=> b!3715037 (= res!1510286 (not lt!1297307))))

(declare-fun b!3715038 () Bool)

(assert (=> b!3715038 (= e!2300348 e!2300345)))

(declare-fun c!642020 () Bool)

(assert (=> b!3715038 (= c!642020 ((_ is EmptyLang!10855) lt!1297290))))

(declare-fun b!3715039 () Bool)

(declare-fun res!1510279 () Bool)

(assert (=> b!3715039 (=> res!1510279 e!2300349)))

(assert (=> b!3715039 (= res!1510279 e!2300346)))

(declare-fun res!1510281 () Bool)

(assert (=> b!3715039 (=> (not res!1510281) (not e!2300346))))

(assert (=> b!3715039 (= res!1510281 lt!1297307)))

(declare-fun b!3715040 () Bool)

(declare-fun res!1510284 () Bool)

(assert (=> b!3715040 (=> res!1510284 e!2300343)))

(assert (=> b!3715040 (= res!1510284 (not (isEmpty!23507 (tail!5748 tl!3933))))))

(assert (= (and d!1087773 c!642018) b!3715031))

(assert (= (and d!1087773 (not c!642018)) b!3715034))

(assert (= (and d!1087773 c!642019) b!3715033))

(assert (= (and d!1087773 (not c!642019)) b!3715038))

(assert (= (and b!3715038 c!642020) b!3715036))

(assert (= (and b!3715038 (not c!642020)) b!3715028))

(assert (= (and b!3715028 (not res!1510283)) b!3715039))

(assert (= (and b!3715039 res!1510281) b!3715030))

(assert (= (and b!3715030 res!1510280) b!3715032))

(assert (= (and b!3715032 res!1510285) b!3715027))

(assert (= (and b!3715039 (not res!1510279)) b!3715037))

(assert (= (and b!3715037 res!1510286) b!3715029))

(assert (= (and b!3715029 (not res!1510282)) b!3715040))

(assert (= (and b!3715040 (not res!1510284)) b!3715035))

(assert (= (or b!3715033 b!3715029 b!3715030) bm!269200))

(declare-fun m!4220963 () Bool)

(assert (=> b!3715031 m!4220963))

(declare-fun m!4220965 () Bool)

(assert (=> d!1087773 m!4220965))

(declare-fun m!4220967 () Bool)

(assert (=> d!1087773 m!4220967))

(assert (=> bm!269200 m!4220965))

(declare-fun m!4220969 () Bool)

(assert (=> b!3715034 m!4220969))

(assert (=> b!3715034 m!4220969))

(declare-fun m!4220971 () Bool)

(assert (=> b!3715034 m!4220971))

(declare-fun m!4220973 () Bool)

(assert (=> b!3715034 m!4220973))

(assert (=> b!3715034 m!4220971))

(assert (=> b!3715034 m!4220973))

(declare-fun m!4220975 () Bool)

(assert (=> b!3715034 m!4220975))

(assert (=> b!3715027 m!4220969))

(assert (=> b!3715040 m!4220973))

(assert (=> b!3715040 m!4220973))

(declare-fun m!4220977 () Bool)

(assert (=> b!3715040 m!4220977))

(assert (=> b!3715032 m!4220973))

(assert (=> b!3715032 m!4220973))

(assert (=> b!3715032 m!4220977))

(assert (=> b!3715035 m!4220969))

(assert (=> b!3714958 d!1087773))

(declare-fun b!3715045 () Bool)

(declare-fun e!2300355 () Bool)

(assert (=> b!3715045 (= e!2300355 (= (head!8021 (_2!22744 lt!1297291)) (c!641993 (regTwo!22222 r!26326))))))

(declare-fun b!3715046 () Bool)

(declare-fun res!1510291 () Bool)

(declare-fun e!2300358 () Bool)

(assert (=> b!3715046 (=> res!1510291 e!2300358)))

(assert (=> b!3715046 (= res!1510291 (not ((_ is ElementMatch!10855) (regTwo!22222 r!26326))))))

(declare-fun e!2300354 () Bool)

(assert (=> b!3715046 (= e!2300354 e!2300358)))

(declare-fun d!1087777 () Bool)

(declare-fun e!2300357 () Bool)

(assert (=> d!1087777 e!2300357))

(declare-fun c!642024 () Bool)

(assert (=> d!1087777 (= c!642024 ((_ is EmptyExpr!10855) (regTwo!22222 r!26326)))))

(declare-fun lt!1297310 () Bool)

(declare-fun e!2300353 () Bool)

(assert (=> d!1087777 (= lt!1297310 e!2300353)))

(declare-fun c!642023 () Bool)

(assert (=> d!1087777 (= c!642023 (isEmpty!23507 (_2!22744 lt!1297291)))))

(assert (=> d!1087777 (validRegex!4962 (regTwo!22222 r!26326))))

(assert (=> d!1087777 (= (matchR!5300 (regTwo!22222 r!26326) (_2!22744 lt!1297291)) lt!1297310)))

(declare-fun b!3715047 () Bool)

(declare-fun e!2300356 () Bool)

(declare-fun e!2300352 () Bool)

(assert (=> b!3715047 (= e!2300356 e!2300352)))

(declare-fun res!1510290 () Bool)

(assert (=> b!3715047 (=> res!1510290 e!2300352)))

(declare-fun call!269206 () Bool)

(assert (=> b!3715047 (= res!1510290 call!269206)))

(declare-fun b!3715048 () Bool)

(declare-fun res!1510288 () Bool)

(assert (=> b!3715048 (=> (not res!1510288) (not e!2300355))))

(assert (=> b!3715048 (= res!1510288 (not call!269206))))

(declare-fun bm!269201 () Bool)

(assert (=> bm!269201 (= call!269206 (isEmpty!23507 (_2!22744 lt!1297291)))))

(declare-fun b!3715049 () Bool)

(assert (=> b!3715049 (= e!2300353 (nullable!3778 (regTwo!22222 r!26326)))))

(declare-fun b!3715050 () Bool)

(declare-fun res!1510293 () Bool)

(assert (=> b!3715050 (=> (not res!1510293) (not e!2300355))))

(assert (=> b!3715050 (= res!1510293 (isEmpty!23507 (tail!5748 (_2!22744 lt!1297291))))))

(declare-fun b!3715051 () Bool)

(assert (=> b!3715051 (= e!2300357 (= lt!1297310 call!269206))))

(declare-fun b!3715052 () Bool)

(assert (=> b!3715052 (= e!2300353 (matchR!5300 (derivativeStep!3320 (regTwo!22222 r!26326) (head!8021 (_2!22744 lt!1297291))) (tail!5748 (_2!22744 lt!1297291))))))

(declare-fun b!3715053 () Bool)

(assert (=> b!3715053 (= e!2300352 (not (= (head!8021 (_2!22744 lt!1297291)) (c!641993 (regTwo!22222 r!26326)))))))

(declare-fun b!3715054 () Bool)

(assert (=> b!3715054 (= e!2300354 (not lt!1297310))))

(declare-fun b!3715055 () Bool)

(assert (=> b!3715055 (= e!2300358 e!2300356)))

(declare-fun res!1510294 () Bool)

(assert (=> b!3715055 (=> (not res!1510294) (not e!2300356))))

(assert (=> b!3715055 (= res!1510294 (not lt!1297310))))

(declare-fun b!3715056 () Bool)

(assert (=> b!3715056 (= e!2300357 e!2300354)))

(declare-fun c!642025 () Bool)

(assert (=> b!3715056 (= c!642025 ((_ is EmptyLang!10855) (regTwo!22222 r!26326)))))

(declare-fun b!3715057 () Bool)

(declare-fun res!1510287 () Bool)

(assert (=> b!3715057 (=> res!1510287 e!2300358)))

(assert (=> b!3715057 (= res!1510287 e!2300355)))

(declare-fun res!1510289 () Bool)

(assert (=> b!3715057 (=> (not res!1510289) (not e!2300355))))

(assert (=> b!3715057 (= res!1510289 lt!1297310)))

(declare-fun b!3715058 () Bool)

(declare-fun res!1510292 () Bool)

(assert (=> b!3715058 (=> res!1510292 e!2300352)))

(assert (=> b!3715058 (= res!1510292 (not (isEmpty!23507 (tail!5748 (_2!22744 lt!1297291)))))))

(assert (= (and d!1087777 c!642023) b!3715049))

(assert (= (and d!1087777 (not c!642023)) b!3715052))

(assert (= (and d!1087777 c!642024) b!3715051))

(assert (= (and d!1087777 (not c!642024)) b!3715056))

(assert (= (and b!3715056 c!642025) b!3715054))

(assert (= (and b!3715056 (not c!642025)) b!3715046))

(assert (= (and b!3715046 (not res!1510291)) b!3715057))

(assert (= (and b!3715057 res!1510289) b!3715048))

(assert (= (and b!3715048 res!1510288) b!3715050))

(assert (= (and b!3715050 res!1510293) b!3715045))

(assert (= (and b!3715057 (not res!1510287)) b!3715055))

(assert (= (and b!3715055 res!1510294) b!3715047))

(assert (= (and b!3715047 (not res!1510290)) b!3715058))

(assert (= (and b!3715058 (not res!1510292)) b!3715053))

(assert (= (or b!3715051 b!3715047 b!3715048) bm!269201))

(declare-fun m!4220979 () Bool)

(assert (=> b!3715049 m!4220979))

(declare-fun m!4220981 () Bool)

(assert (=> d!1087777 m!4220981))

(declare-fun m!4220983 () Bool)

(assert (=> d!1087777 m!4220983))

(assert (=> bm!269201 m!4220981))

(declare-fun m!4220985 () Bool)

(assert (=> b!3715052 m!4220985))

(assert (=> b!3715052 m!4220985))

(declare-fun m!4220987 () Bool)

(assert (=> b!3715052 m!4220987))

(declare-fun m!4220989 () Bool)

(assert (=> b!3715052 m!4220989))

(assert (=> b!3715052 m!4220987))

(assert (=> b!3715052 m!4220989))

(declare-fun m!4220991 () Bool)

(assert (=> b!3715052 m!4220991))

(assert (=> b!3715045 m!4220985))

(assert (=> b!3715058 m!4220989))

(assert (=> b!3715058 m!4220989))

(declare-fun m!4220993 () Bool)

(assert (=> b!3715058 m!4220993))

(assert (=> b!3715050 m!4220989))

(assert (=> b!3715050 m!4220989))

(assert (=> b!3715050 m!4220993))

(assert (=> b!3715053 m!4220985))

(assert (=> b!3714959 d!1087777))

(declare-fun d!1087779 () Bool)

(declare-fun e!2300383 () Bool)

(assert (=> d!1087779 e!2300383))

(declare-fun res!1510324 () Bool)

(assert (=> d!1087779 (=> res!1510324 e!2300383)))

(assert (=> d!1087779 (= res!1510324 (matchR!5300 lt!1297297 tl!3933))))

(declare-fun lt!1297314 () Unit!57508)

(declare-fun choose!22188 (Regex!10855 Regex!10855 List!39736) Unit!57508)

(assert (=> d!1087779 (= lt!1297314 (choose!22188 lt!1297297 lt!1297290 tl!3933))))

(declare-fun e!2300382 () Bool)

(assert (=> d!1087779 e!2300382))

(declare-fun res!1510323 () Bool)

(assert (=> d!1087779 (=> (not res!1510323) (not e!2300382))))

(assert (=> d!1087779 (= res!1510323 (validRegex!4962 lt!1297297))))

(assert (=> d!1087779 (= (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!332 lt!1297297 lt!1297290 tl!3933) lt!1297314)))

(declare-fun b!3715101 () Bool)

(assert (=> b!3715101 (= e!2300382 (validRegex!4962 lt!1297290))))

(declare-fun b!3715102 () Bool)

(assert (=> b!3715102 (= e!2300383 (matchR!5300 lt!1297290 tl!3933))))

(assert (= (and d!1087779 res!1510323) b!3715101))

(assert (= (and d!1087779 (not res!1510324)) b!3715102))

(assert (=> d!1087779 m!4220901))

(declare-fun m!4221011 () Bool)

(assert (=> d!1087779 m!4221011))

(declare-fun m!4221013 () Bool)

(assert (=> d!1087779 m!4221013))

(assert (=> b!3715101 m!4220967))

(assert (=> b!3715102 m!4220943))

(assert (=> b!3714948 d!1087779))

(declare-fun b!3715103 () Bool)

(declare-fun e!2300387 () Bool)

(assert (=> b!3715103 (= e!2300387 (= (head!8021 tl!3933) (c!641993 lt!1297297)))))

(declare-fun b!3715104 () Bool)

(declare-fun res!1510329 () Bool)

(declare-fun e!2300390 () Bool)

(assert (=> b!3715104 (=> res!1510329 e!2300390)))

(assert (=> b!3715104 (= res!1510329 (not ((_ is ElementMatch!10855) lt!1297297)))))

(declare-fun e!2300386 () Bool)

(assert (=> b!3715104 (= e!2300386 e!2300390)))

(declare-fun d!1087783 () Bool)

(declare-fun e!2300389 () Bool)

(assert (=> d!1087783 e!2300389))

(declare-fun c!642034 () Bool)

(assert (=> d!1087783 (= c!642034 ((_ is EmptyExpr!10855) lt!1297297))))

(declare-fun lt!1297315 () Bool)

(declare-fun e!2300385 () Bool)

(assert (=> d!1087783 (= lt!1297315 e!2300385)))

(declare-fun c!642033 () Bool)

(assert (=> d!1087783 (= c!642033 (isEmpty!23507 tl!3933))))

(assert (=> d!1087783 (validRegex!4962 lt!1297297)))

(assert (=> d!1087783 (= (matchR!5300 lt!1297297 tl!3933) lt!1297315)))

(declare-fun b!3715105 () Bool)

(declare-fun e!2300388 () Bool)

(declare-fun e!2300384 () Bool)

(assert (=> b!3715105 (= e!2300388 e!2300384)))

(declare-fun res!1510328 () Bool)

(assert (=> b!3715105 (=> res!1510328 e!2300384)))

(declare-fun call!269210 () Bool)

(assert (=> b!3715105 (= res!1510328 call!269210)))

(declare-fun b!3715106 () Bool)

(declare-fun res!1510326 () Bool)

(assert (=> b!3715106 (=> (not res!1510326) (not e!2300387))))

(assert (=> b!3715106 (= res!1510326 (not call!269210))))

(declare-fun bm!269205 () Bool)

(assert (=> bm!269205 (= call!269210 (isEmpty!23507 tl!3933))))

(declare-fun b!3715107 () Bool)

(assert (=> b!3715107 (= e!2300385 (nullable!3778 lt!1297297))))

(declare-fun b!3715108 () Bool)

(declare-fun res!1510331 () Bool)

(assert (=> b!3715108 (=> (not res!1510331) (not e!2300387))))

(assert (=> b!3715108 (= res!1510331 (isEmpty!23507 (tail!5748 tl!3933)))))

(declare-fun b!3715109 () Bool)

(assert (=> b!3715109 (= e!2300389 (= lt!1297315 call!269210))))

(declare-fun b!3715110 () Bool)

(assert (=> b!3715110 (= e!2300385 (matchR!5300 (derivativeStep!3320 lt!1297297 (head!8021 tl!3933)) (tail!5748 tl!3933)))))

(declare-fun b!3715111 () Bool)

(assert (=> b!3715111 (= e!2300384 (not (= (head!8021 tl!3933) (c!641993 lt!1297297))))))

(declare-fun b!3715112 () Bool)

(assert (=> b!3715112 (= e!2300386 (not lt!1297315))))

(declare-fun b!3715113 () Bool)

(assert (=> b!3715113 (= e!2300390 e!2300388)))

(declare-fun res!1510332 () Bool)

(assert (=> b!3715113 (=> (not res!1510332) (not e!2300388))))

(assert (=> b!3715113 (= res!1510332 (not lt!1297315))))

(declare-fun b!3715114 () Bool)

(assert (=> b!3715114 (= e!2300389 e!2300386)))

(declare-fun c!642035 () Bool)

(assert (=> b!3715114 (= c!642035 ((_ is EmptyLang!10855) lt!1297297))))

(declare-fun b!3715115 () Bool)

(declare-fun res!1510325 () Bool)

(assert (=> b!3715115 (=> res!1510325 e!2300390)))

(assert (=> b!3715115 (= res!1510325 e!2300387)))

(declare-fun res!1510327 () Bool)

(assert (=> b!3715115 (=> (not res!1510327) (not e!2300387))))

(assert (=> b!3715115 (= res!1510327 lt!1297315)))

(declare-fun b!3715116 () Bool)

(declare-fun res!1510330 () Bool)

(assert (=> b!3715116 (=> res!1510330 e!2300384)))

(assert (=> b!3715116 (= res!1510330 (not (isEmpty!23507 (tail!5748 tl!3933))))))

(assert (= (and d!1087783 c!642033) b!3715107))

(assert (= (and d!1087783 (not c!642033)) b!3715110))

(assert (= (and d!1087783 c!642034) b!3715109))

(assert (= (and d!1087783 (not c!642034)) b!3715114))

(assert (= (and b!3715114 c!642035) b!3715112))

(assert (= (and b!3715114 (not c!642035)) b!3715104))

(assert (= (and b!3715104 (not res!1510329)) b!3715115))

(assert (= (and b!3715115 res!1510327) b!3715106))

(assert (= (and b!3715106 res!1510326) b!3715108))

(assert (= (and b!3715108 res!1510331) b!3715103))

(assert (= (and b!3715115 (not res!1510325)) b!3715113))

(assert (= (and b!3715113 res!1510332) b!3715105))

(assert (= (and b!3715105 (not res!1510328)) b!3715116))

(assert (= (and b!3715116 (not res!1510330)) b!3715111))

(assert (= (or b!3715109 b!3715105 b!3715106) bm!269205))

(declare-fun m!4221017 () Bool)

(assert (=> b!3715107 m!4221017))

(assert (=> d!1087783 m!4220965))

(assert (=> d!1087783 m!4221013))

(assert (=> bm!269205 m!4220965))

(assert (=> b!3715110 m!4220969))

(assert (=> b!3715110 m!4220969))

(declare-fun m!4221019 () Bool)

(assert (=> b!3715110 m!4221019))

(assert (=> b!3715110 m!4220973))

(assert (=> b!3715110 m!4221019))

(assert (=> b!3715110 m!4220973))

(declare-fun m!4221021 () Bool)

(assert (=> b!3715110 m!4221021))

(assert (=> b!3715103 m!4220969))

(assert (=> b!3715116 m!4220973))

(assert (=> b!3715116 m!4220973))

(assert (=> b!3715116 m!4220977))

(assert (=> b!3715108 m!4220973))

(assert (=> b!3715108 m!4220973))

(assert (=> b!3715108 m!4220977))

(assert (=> b!3715111 m!4220969))

(assert (=> b!3714948 d!1087783))

(declare-fun d!1087789 () Bool)

(declare-fun lt!1297318 () Regex!10855)

(assert (=> d!1087789 (validRegex!4962 lt!1297318)))

(declare-fun e!2300393 () Regex!10855)

(assert (=> d!1087789 (= lt!1297318 e!2300393)))

(declare-fun c!642038 () Bool)

(assert (=> d!1087789 (= c!642038 ((_ is Cons!39612) tl!3933))))

(assert (=> d!1087789 (validRegex!4962 lt!1297287)))

(assert (=> d!1087789 (= (derivative!369 lt!1297287 tl!3933) lt!1297318)))

(declare-fun b!3715121 () Bool)

(assert (=> b!3715121 (= e!2300393 (derivative!369 (derivativeStep!3320 lt!1297287 (h!45032 tl!3933)) (t!302419 tl!3933)))))

(declare-fun b!3715122 () Bool)

(assert (=> b!3715122 (= e!2300393 lt!1297287)))

(assert (= (and d!1087789 c!642038) b!3715121))

(assert (= (and d!1087789 (not c!642038)) b!3715122))

(declare-fun m!4221023 () Bool)

(assert (=> d!1087789 m!4221023))

(declare-fun m!4221025 () Bool)

(assert (=> d!1087789 m!4221025))

(declare-fun m!4221027 () Bool)

(assert (=> b!3715121 m!4221027))

(assert (=> b!3715121 m!4221027))

(declare-fun m!4221029 () Bool)

(assert (=> b!3715121 m!4221029))

(assert (=> b!3714948 d!1087789))

(declare-fun b!3715182 () Bool)

(declare-fun e!2300425 () Regex!10855)

(declare-fun e!2300428 () Regex!10855)

(assert (=> b!3715182 (= e!2300425 e!2300428)))

(declare-fun c!642061 () Bool)

(assert (=> b!3715182 (= c!642061 ((_ is ElementMatch!10855) (regTwo!22222 r!26326)))))

(declare-fun b!3715183 () Bool)

(declare-fun c!642060 () Bool)

(assert (=> b!3715183 (= c!642060 (nullable!3778 (regOne!22222 (regTwo!22222 r!26326))))))

(declare-fun e!2300426 () Regex!10855)

(declare-fun e!2300429 () Regex!10855)

(assert (=> b!3715183 (= e!2300426 e!2300429)))

(declare-fun bm!269214 () Bool)

(declare-fun call!269220 () Regex!10855)

(declare-fun call!269222 () Regex!10855)

(assert (=> bm!269214 (= call!269220 call!269222)))

(declare-fun b!3715184 () Bool)

(declare-fun c!642058 () Bool)

(assert (=> b!3715184 (= c!642058 ((_ is Union!10855) (regTwo!22222 r!26326)))))

(declare-fun e!2300427 () Regex!10855)

(assert (=> b!3715184 (= e!2300428 e!2300427)))

(declare-fun b!3715185 () Bool)

(declare-fun call!269219 () Regex!10855)

(assert (=> b!3715185 (= e!2300427 (Union!10855 call!269222 call!269219))))

(declare-fun b!3715186 () Bool)

(assert (=> b!3715186 (= e!2300425 EmptyLang!10855)))

(declare-fun b!3715187 () Bool)

(assert (=> b!3715187 (= e!2300428 (ite (= c!13576 (c!641993 (regTwo!22222 r!26326))) EmptyExpr!10855 EmptyLang!10855))))

(declare-fun bm!269215 () Bool)

(declare-fun call!269221 () Regex!10855)

(assert (=> bm!269215 (= call!269221 call!269219)))

(declare-fun b!3715188 () Bool)

(assert (=> b!3715188 (= e!2300427 e!2300426)))

(declare-fun c!642062 () Bool)

(assert (=> b!3715188 (= c!642062 ((_ is Star!10855) (regTwo!22222 r!26326)))))

(declare-fun bm!269216 () Bool)

(assert (=> bm!269216 (= call!269219 (derivativeStep!3320 (ite c!642058 (regTwo!22223 (regTwo!22222 r!26326)) (ite c!642062 (reg!11184 (regTwo!22222 r!26326)) (regTwo!22222 (regTwo!22222 r!26326)))) c!13576))))

(declare-fun bm!269217 () Bool)

(assert (=> bm!269217 (= call!269222 (derivativeStep!3320 (ite c!642058 (regOne!22223 (regTwo!22222 r!26326)) (regOne!22222 (regTwo!22222 r!26326))) c!13576))))

(declare-fun b!3715190 () Bool)

(assert (=> b!3715190 (= e!2300426 (Concat!17126 call!269221 (regTwo!22222 r!26326)))))

(declare-fun b!3715191 () Bool)

(assert (=> b!3715191 (= e!2300429 (Union!10855 (Concat!17126 call!269220 (regTwo!22222 (regTwo!22222 r!26326))) EmptyLang!10855))))

(declare-fun b!3715189 () Bool)

(assert (=> b!3715189 (= e!2300429 (Union!10855 (Concat!17126 call!269220 (regTwo!22222 (regTwo!22222 r!26326))) call!269221))))

(declare-fun d!1087791 () Bool)

(declare-fun lt!1297336 () Regex!10855)

(assert (=> d!1087791 (validRegex!4962 lt!1297336)))

(assert (=> d!1087791 (= lt!1297336 e!2300425)))

(declare-fun c!642059 () Bool)

(assert (=> d!1087791 (= c!642059 (or ((_ is EmptyExpr!10855) (regTwo!22222 r!26326)) ((_ is EmptyLang!10855) (regTwo!22222 r!26326))))))

(assert (=> d!1087791 (validRegex!4962 (regTwo!22222 r!26326))))

(assert (=> d!1087791 (= (derivativeStep!3320 (regTwo!22222 r!26326) c!13576) lt!1297336)))

(assert (= (and d!1087791 c!642059) b!3715186))

(assert (= (and d!1087791 (not c!642059)) b!3715182))

(assert (= (and b!3715182 c!642061) b!3715187))

(assert (= (and b!3715182 (not c!642061)) b!3715184))

(assert (= (and b!3715184 c!642058) b!3715185))

(assert (= (and b!3715184 (not c!642058)) b!3715188))

(assert (= (and b!3715188 c!642062) b!3715190))

(assert (= (and b!3715188 (not c!642062)) b!3715183))

(assert (= (and b!3715183 c!642060) b!3715189))

(assert (= (and b!3715183 (not c!642060)) b!3715191))

(assert (= (or b!3715189 b!3715191) bm!269214))

(assert (= (or b!3715190 b!3715189) bm!269215))

(assert (= (or b!3715185 bm!269215) bm!269216))

(assert (= (or b!3715185 bm!269214) bm!269217))

(declare-fun m!4221071 () Bool)

(assert (=> b!3715183 m!4221071))

(declare-fun m!4221073 () Bool)

(assert (=> bm!269216 m!4221073))

(declare-fun m!4221075 () Bool)

(assert (=> bm!269217 m!4221075))

(declare-fun m!4221077 () Bool)

(assert (=> d!1087791 m!4221077))

(assert (=> d!1087791 m!4220983))

(assert (=> b!3714948 d!1087791))

(declare-fun b!3715200 () Bool)

(declare-fun e!2300434 () Regex!10855)

(declare-fun e!2300439 () Regex!10855)

(assert (=> b!3715200 (= e!2300434 e!2300439)))

(declare-fun c!642068 () Bool)

(assert (=> b!3715200 (= c!642068 ((_ is ElementMatch!10855) (regOne!22222 r!26326)))))

(declare-fun b!3715201 () Bool)

(declare-fun c!642067 () Bool)

(assert (=> b!3715201 (= c!642067 (nullable!3778 (regOne!22222 (regOne!22222 r!26326))))))

(declare-fun e!2300435 () Regex!10855)

(declare-fun e!2300440 () Regex!10855)

(assert (=> b!3715201 (= e!2300435 e!2300440)))

(declare-fun bm!269218 () Bool)

(declare-fun call!269224 () Regex!10855)

(declare-fun call!269226 () Regex!10855)

(assert (=> bm!269218 (= call!269224 call!269226)))

(declare-fun b!3715202 () Bool)

(declare-fun c!642065 () Bool)

(assert (=> b!3715202 (= c!642065 ((_ is Union!10855) (regOne!22222 r!26326)))))

(declare-fun e!2300436 () Regex!10855)

(assert (=> b!3715202 (= e!2300439 e!2300436)))

(declare-fun b!3715203 () Bool)

(declare-fun call!269223 () Regex!10855)

(assert (=> b!3715203 (= e!2300436 (Union!10855 call!269226 call!269223))))

(declare-fun b!3715204 () Bool)

(assert (=> b!3715204 (= e!2300434 EmptyLang!10855)))

(declare-fun b!3715205 () Bool)

(assert (=> b!3715205 (= e!2300439 (ite (= c!13576 (c!641993 (regOne!22222 r!26326))) EmptyExpr!10855 EmptyLang!10855))))

(declare-fun bm!269219 () Bool)

(declare-fun call!269225 () Regex!10855)

(assert (=> bm!269219 (= call!269225 call!269223)))

(declare-fun b!3715206 () Bool)

(assert (=> b!3715206 (= e!2300436 e!2300435)))

(declare-fun c!642069 () Bool)

(assert (=> b!3715206 (= c!642069 ((_ is Star!10855) (regOne!22222 r!26326)))))

(declare-fun bm!269220 () Bool)

(assert (=> bm!269220 (= call!269223 (derivativeStep!3320 (ite c!642065 (regTwo!22223 (regOne!22222 r!26326)) (ite c!642069 (reg!11184 (regOne!22222 r!26326)) (regTwo!22222 (regOne!22222 r!26326)))) c!13576))))

(declare-fun bm!269221 () Bool)

(assert (=> bm!269221 (= call!269226 (derivativeStep!3320 (ite c!642065 (regOne!22223 (regOne!22222 r!26326)) (regOne!22222 (regOne!22222 r!26326))) c!13576))))

(declare-fun b!3715212 () Bool)

(assert (=> b!3715212 (= e!2300435 (Concat!17126 call!269225 (regOne!22222 r!26326)))))

(declare-fun b!3715213 () Bool)

(assert (=> b!3715213 (= e!2300440 (Union!10855 (Concat!17126 call!269224 (regTwo!22222 (regOne!22222 r!26326))) EmptyLang!10855))))

(declare-fun b!3715211 () Bool)

(assert (=> b!3715211 (= e!2300440 (Union!10855 (Concat!17126 call!269224 (regTwo!22222 (regOne!22222 r!26326))) call!269225))))

(declare-fun d!1087799 () Bool)

(declare-fun lt!1297337 () Regex!10855)

(assert (=> d!1087799 (validRegex!4962 lt!1297337)))

(assert (=> d!1087799 (= lt!1297337 e!2300434)))

(declare-fun c!642066 () Bool)

(assert (=> d!1087799 (= c!642066 (or ((_ is EmptyExpr!10855) (regOne!22222 r!26326)) ((_ is EmptyLang!10855) (regOne!22222 r!26326))))))

(assert (=> d!1087799 (validRegex!4962 (regOne!22222 r!26326))))

(assert (=> d!1087799 (= (derivativeStep!3320 (regOne!22222 r!26326) c!13576) lt!1297337)))

(assert (= (and d!1087799 c!642066) b!3715204))

(assert (= (and d!1087799 (not c!642066)) b!3715200))

(assert (= (and b!3715200 c!642068) b!3715205))

(assert (= (and b!3715200 (not c!642068)) b!3715202))

(assert (= (and b!3715202 c!642065) b!3715203))

(assert (= (and b!3715202 (not c!642065)) b!3715206))

(assert (= (and b!3715206 c!642069) b!3715212))

(assert (= (and b!3715206 (not c!642069)) b!3715201))

(assert (= (and b!3715201 c!642067) b!3715211))

(assert (= (and b!3715201 (not c!642067)) b!3715213))

(assert (= (or b!3715211 b!3715213) bm!269218))

(assert (= (or b!3715212 b!3715211) bm!269219))

(assert (= (or b!3715203 bm!269219) bm!269220))

(assert (= (or b!3715203 bm!269218) bm!269221))

(declare-fun m!4221079 () Bool)

(assert (=> b!3715201 m!4221079))

(declare-fun m!4221081 () Bool)

(assert (=> bm!269220 m!4221081))

(declare-fun m!4221083 () Bool)

(assert (=> bm!269221 m!4221083))

(declare-fun m!4221085 () Bool)

(assert (=> d!1087799 m!4221085))

(assert (=> d!1087799 m!4220883))

(assert (=> b!3714948 d!1087799))

(declare-fun b!3715220 () Bool)

(declare-fun e!2300452 () Bool)

(assert (=> b!3715220 (= e!2300452 (= (head!8021 tl!3933) (c!641993 lt!1297287)))))

(declare-fun b!3715221 () Bool)

(declare-fun res!1510368 () Bool)

(declare-fun e!2300455 () Bool)

(assert (=> b!3715221 (=> res!1510368 e!2300455)))

(assert (=> b!3715221 (= res!1510368 (not ((_ is ElementMatch!10855) lt!1297287)))))

(declare-fun e!2300451 () Bool)

(assert (=> b!3715221 (= e!2300451 e!2300455)))

(declare-fun d!1087801 () Bool)

(declare-fun e!2300454 () Bool)

(assert (=> d!1087801 e!2300454))

(declare-fun c!642073 () Bool)

(assert (=> d!1087801 (= c!642073 ((_ is EmptyExpr!10855) lt!1297287))))

(declare-fun lt!1297338 () Bool)

(declare-fun e!2300450 () Bool)

(assert (=> d!1087801 (= lt!1297338 e!2300450)))

(declare-fun c!642072 () Bool)

(assert (=> d!1087801 (= c!642072 (isEmpty!23507 tl!3933))))

(assert (=> d!1087801 (validRegex!4962 lt!1297287)))

(assert (=> d!1087801 (= (matchR!5300 lt!1297287 tl!3933) lt!1297338)))

(declare-fun b!3715222 () Bool)

(declare-fun e!2300453 () Bool)

(declare-fun e!2300449 () Bool)

(assert (=> b!3715222 (= e!2300453 e!2300449)))

(declare-fun res!1510367 () Bool)

(assert (=> b!3715222 (=> res!1510367 e!2300449)))

(declare-fun call!269233 () Bool)

(assert (=> b!3715222 (= res!1510367 call!269233)))

(declare-fun b!3715223 () Bool)

(declare-fun res!1510365 () Bool)

(assert (=> b!3715223 (=> (not res!1510365) (not e!2300452))))

(assert (=> b!3715223 (= res!1510365 (not call!269233))))

(declare-fun bm!269228 () Bool)

(assert (=> bm!269228 (= call!269233 (isEmpty!23507 tl!3933))))

(declare-fun b!3715224 () Bool)

(assert (=> b!3715224 (= e!2300450 (nullable!3778 lt!1297287))))

(declare-fun b!3715225 () Bool)

(declare-fun res!1510370 () Bool)

(assert (=> b!3715225 (=> (not res!1510370) (not e!2300452))))

(assert (=> b!3715225 (= res!1510370 (isEmpty!23507 (tail!5748 tl!3933)))))

(declare-fun b!3715226 () Bool)

(assert (=> b!3715226 (= e!2300454 (= lt!1297338 call!269233))))

(declare-fun b!3715227 () Bool)

(assert (=> b!3715227 (= e!2300450 (matchR!5300 (derivativeStep!3320 lt!1297287 (head!8021 tl!3933)) (tail!5748 tl!3933)))))

(declare-fun b!3715228 () Bool)

(assert (=> b!3715228 (= e!2300449 (not (= (head!8021 tl!3933) (c!641993 lt!1297287))))))

(declare-fun b!3715229 () Bool)

(assert (=> b!3715229 (= e!2300451 (not lt!1297338))))

(declare-fun b!3715230 () Bool)

(assert (=> b!3715230 (= e!2300455 e!2300453)))

(declare-fun res!1510371 () Bool)

(assert (=> b!3715230 (=> (not res!1510371) (not e!2300453))))

(assert (=> b!3715230 (= res!1510371 (not lt!1297338))))

(declare-fun b!3715231 () Bool)

(assert (=> b!3715231 (= e!2300454 e!2300451)))

(declare-fun c!642074 () Bool)

(assert (=> b!3715231 (= c!642074 ((_ is EmptyLang!10855) lt!1297287))))

(declare-fun b!3715232 () Bool)

(declare-fun res!1510364 () Bool)

(assert (=> b!3715232 (=> res!1510364 e!2300455)))

(assert (=> b!3715232 (= res!1510364 e!2300452)))

(declare-fun res!1510366 () Bool)

(assert (=> b!3715232 (=> (not res!1510366) (not e!2300452))))

(assert (=> b!3715232 (= res!1510366 lt!1297338)))

(declare-fun b!3715233 () Bool)

(declare-fun res!1510369 () Bool)

(assert (=> b!3715233 (=> res!1510369 e!2300449)))

(assert (=> b!3715233 (= res!1510369 (not (isEmpty!23507 (tail!5748 tl!3933))))))

(assert (= (and d!1087801 c!642072) b!3715224))

(assert (= (and d!1087801 (not c!642072)) b!3715227))

(assert (= (and d!1087801 c!642073) b!3715226))

(assert (= (and d!1087801 (not c!642073)) b!3715231))

(assert (= (and b!3715231 c!642074) b!3715229))

(assert (= (and b!3715231 (not c!642074)) b!3715221))

(assert (= (and b!3715221 (not res!1510368)) b!3715232))

(assert (= (and b!3715232 res!1510366) b!3715223))

(assert (= (and b!3715223 res!1510365) b!3715225))

(assert (= (and b!3715225 res!1510370) b!3715220))

(assert (= (and b!3715232 (not res!1510364)) b!3715230))

(assert (= (and b!3715230 res!1510371) b!3715222))

(assert (= (and b!3715222 (not res!1510367)) b!3715233))

(assert (= (and b!3715233 (not res!1510369)) b!3715228))

(assert (= (or b!3715226 b!3715222 b!3715223) bm!269228))

(declare-fun m!4221087 () Bool)

(assert (=> b!3715224 m!4221087))

(assert (=> d!1087801 m!4220965))

(assert (=> d!1087801 m!4221025))

(assert (=> bm!269228 m!4220965))

(assert (=> b!3715227 m!4220969))

(assert (=> b!3715227 m!4220969))

(declare-fun m!4221089 () Bool)

(assert (=> b!3715227 m!4221089))

(assert (=> b!3715227 m!4220973))

(assert (=> b!3715227 m!4221089))

(assert (=> b!3715227 m!4220973))

(declare-fun m!4221091 () Bool)

(assert (=> b!3715227 m!4221091))

(assert (=> b!3715220 m!4220969))

(assert (=> b!3715233 m!4220973))

(assert (=> b!3715233 m!4220973))

(assert (=> b!3715233 m!4220977))

(assert (=> b!3715225 m!4220973))

(assert (=> b!3715225 m!4220973))

(assert (=> b!3715225 m!4220977))

(assert (=> b!3715228 m!4220969))

(assert (=> b!3714948 d!1087801))

(declare-fun d!1087803 () Bool)

(assert (=> d!1087803 (= (matchR!5300 lt!1297287 tl!3933) (matchR!5300 (derivative!369 lt!1297287 tl!3933) Nil!39612))))

(declare-fun lt!1297349 () Unit!57508)

(declare-fun choose!22190 (Regex!10855 List!39736) Unit!57508)

(assert (=> d!1087803 (= lt!1297349 (choose!22190 lt!1297287 tl!3933))))

(assert (=> d!1087803 (validRegex!4962 lt!1297287)))

(assert (=> d!1087803 (= (lemmaMatchRIsSameAsWholeDerivativeAndNil!246 lt!1297287 tl!3933) lt!1297349)))

(declare-fun bs!574820 () Bool)

(assert (= bs!574820 d!1087803))

(assert (=> bs!574820 m!4220903))

(assert (=> bs!574820 m!4221025))

(assert (=> bs!574820 m!4220903))

(assert (=> bs!574820 m!4220915))

(assert (=> bs!574820 m!4220907))

(declare-fun m!4221125 () Bool)

(assert (=> bs!574820 m!4221125))

(assert (=> b!3714948 d!1087803))

(declare-fun b!3715259 () Bool)

(declare-fun e!2300474 () Bool)

(assert (=> b!3715259 (= e!2300474 (= (head!8021 Nil!39612) (c!641993 (derivative!369 lt!1297287 tl!3933))))))

(declare-fun b!3715260 () Bool)

(declare-fun res!1510389 () Bool)

(declare-fun e!2300477 () Bool)

(assert (=> b!3715260 (=> res!1510389 e!2300477)))

(assert (=> b!3715260 (= res!1510389 (not ((_ is ElementMatch!10855) (derivative!369 lt!1297287 tl!3933))))))

(declare-fun e!2300473 () Bool)

(assert (=> b!3715260 (= e!2300473 e!2300477)))

(declare-fun d!1087815 () Bool)

(declare-fun e!2300476 () Bool)

(assert (=> d!1087815 e!2300476))

(declare-fun c!642083 () Bool)

(assert (=> d!1087815 (= c!642083 ((_ is EmptyExpr!10855) (derivative!369 lt!1297287 tl!3933)))))

(declare-fun lt!1297350 () Bool)

(declare-fun e!2300472 () Bool)

(assert (=> d!1087815 (= lt!1297350 e!2300472)))

(declare-fun c!642082 () Bool)

(assert (=> d!1087815 (= c!642082 (isEmpty!23507 Nil!39612))))

(assert (=> d!1087815 (validRegex!4962 (derivative!369 lt!1297287 tl!3933))))

(assert (=> d!1087815 (= (matchR!5300 (derivative!369 lt!1297287 tl!3933) Nil!39612) lt!1297350)))

(declare-fun b!3715261 () Bool)

(declare-fun e!2300475 () Bool)

(declare-fun e!2300471 () Bool)

(assert (=> b!3715261 (= e!2300475 e!2300471)))

(declare-fun res!1510388 () Bool)

(assert (=> b!3715261 (=> res!1510388 e!2300471)))

(declare-fun call!269238 () Bool)

(assert (=> b!3715261 (= res!1510388 call!269238)))

(declare-fun b!3715262 () Bool)

(declare-fun res!1510386 () Bool)

(assert (=> b!3715262 (=> (not res!1510386) (not e!2300474))))

(assert (=> b!3715262 (= res!1510386 (not call!269238))))

(declare-fun bm!269233 () Bool)

(assert (=> bm!269233 (= call!269238 (isEmpty!23507 Nil!39612))))

(declare-fun b!3715263 () Bool)

(assert (=> b!3715263 (= e!2300472 (nullable!3778 (derivative!369 lt!1297287 tl!3933)))))

(declare-fun b!3715264 () Bool)

(declare-fun res!1510391 () Bool)

(assert (=> b!3715264 (=> (not res!1510391) (not e!2300474))))

(assert (=> b!3715264 (= res!1510391 (isEmpty!23507 (tail!5748 Nil!39612)))))

(declare-fun b!3715265 () Bool)

(assert (=> b!3715265 (= e!2300476 (= lt!1297350 call!269238))))

(declare-fun b!3715266 () Bool)

(assert (=> b!3715266 (= e!2300472 (matchR!5300 (derivativeStep!3320 (derivative!369 lt!1297287 tl!3933) (head!8021 Nil!39612)) (tail!5748 Nil!39612)))))

(declare-fun b!3715267 () Bool)

(assert (=> b!3715267 (= e!2300471 (not (= (head!8021 Nil!39612) (c!641993 (derivative!369 lt!1297287 tl!3933)))))))

(declare-fun b!3715268 () Bool)

(assert (=> b!3715268 (= e!2300473 (not lt!1297350))))

(declare-fun b!3715269 () Bool)

(assert (=> b!3715269 (= e!2300477 e!2300475)))

(declare-fun res!1510392 () Bool)

(assert (=> b!3715269 (=> (not res!1510392) (not e!2300475))))

(assert (=> b!3715269 (= res!1510392 (not lt!1297350))))

(declare-fun b!3715270 () Bool)

(assert (=> b!3715270 (= e!2300476 e!2300473)))

(declare-fun c!642084 () Bool)

(assert (=> b!3715270 (= c!642084 ((_ is EmptyLang!10855) (derivative!369 lt!1297287 tl!3933)))))

(declare-fun b!3715271 () Bool)

(declare-fun res!1510385 () Bool)

(assert (=> b!3715271 (=> res!1510385 e!2300477)))

(assert (=> b!3715271 (= res!1510385 e!2300474)))

(declare-fun res!1510387 () Bool)

(assert (=> b!3715271 (=> (not res!1510387) (not e!2300474))))

(assert (=> b!3715271 (= res!1510387 lt!1297350)))

(declare-fun b!3715272 () Bool)

(declare-fun res!1510390 () Bool)

(assert (=> b!3715272 (=> res!1510390 e!2300471)))

(assert (=> b!3715272 (= res!1510390 (not (isEmpty!23507 (tail!5748 Nil!39612))))))

(assert (= (and d!1087815 c!642082) b!3715263))

(assert (= (and d!1087815 (not c!642082)) b!3715266))

(assert (= (and d!1087815 c!642083) b!3715265))

(assert (= (and d!1087815 (not c!642083)) b!3715270))

(assert (= (and b!3715270 c!642084) b!3715268))

(assert (= (and b!3715270 (not c!642084)) b!3715260))

(assert (= (and b!3715260 (not res!1510389)) b!3715271))

(assert (= (and b!3715271 res!1510387) b!3715262))

(assert (= (and b!3715262 res!1510386) b!3715264))

(assert (= (and b!3715264 res!1510391) b!3715259))

(assert (= (and b!3715271 (not res!1510385)) b!3715269))

(assert (= (and b!3715269 res!1510392) b!3715261))

(assert (= (and b!3715261 (not res!1510388)) b!3715272))

(assert (= (and b!3715272 (not res!1510390)) b!3715267))

(assert (= (or b!3715265 b!3715261 b!3715262) bm!269233))

(assert (=> b!3715263 m!4220903))

(declare-fun m!4221127 () Bool)

(assert (=> b!3715263 m!4221127))

(declare-fun m!4221129 () Bool)

(assert (=> d!1087815 m!4221129))

(assert (=> d!1087815 m!4220903))

(declare-fun m!4221131 () Bool)

(assert (=> d!1087815 m!4221131))

(assert (=> bm!269233 m!4221129))

(declare-fun m!4221133 () Bool)

(assert (=> b!3715266 m!4221133))

(assert (=> b!3715266 m!4220903))

(assert (=> b!3715266 m!4221133))

(declare-fun m!4221135 () Bool)

(assert (=> b!3715266 m!4221135))

(declare-fun m!4221137 () Bool)

(assert (=> b!3715266 m!4221137))

(assert (=> b!3715266 m!4221135))

(assert (=> b!3715266 m!4221137))

(declare-fun m!4221139 () Bool)

(assert (=> b!3715266 m!4221139))

(assert (=> b!3715259 m!4221133))

(assert (=> b!3715272 m!4221137))

(assert (=> b!3715272 m!4221137))

(declare-fun m!4221141 () Bool)

(assert (=> b!3715272 m!4221141))

(assert (=> b!3715264 m!4221137))

(assert (=> b!3715264 m!4221137))

(assert (=> b!3715264 m!4221141))

(assert (=> b!3715267 m!4221133))

(assert (=> b!3714948 d!1087815))

(declare-fun b!3715289 () Bool)

(declare-fun e!2300489 () Bool)

(assert (=> b!3715289 (= e!2300489 (= (head!8021 (_1!22744 lt!1297291)) (c!641993 lt!1297295)))))

(declare-fun b!3715290 () Bool)

(declare-fun res!1510397 () Bool)

(declare-fun e!2300492 () Bool)

(assert (=> b!3715290 (=> res!1510397 e!2300492)))

(assert (=> b!3715290 (= res!1510397 (not ((_ is ElementMatch!10855) lt!1297295)))))

(declare-fun e!2300488 () Bool)

(assert (=> b!3715290 (= e!2300488 e!2300492)))

(declare-fun d!1087817 () Bool)

(declare-fun e!2300491 () Bool)

(assert (=> d!1087817 e!2300491))

(declare-fun c!642094 () Bool)

(assert (=> d!1087817 (= c!642094 ((_ is EmptyExpr!10855) lt!1297295))))

(declare-fun lt!1297351 () Bool)

(declare-fun e!2300487 () Bool)

(assert (=> d!1087817 (= lt!1297351 e!2300487)))

(declare-fun c!642093 () Bool)

(assert (=> d!1087817 (= c!642093 (isEmpty!23507 (_1!22744 lt!1297291)))))

(assert (=> d!1087817 (validRegex!4962 lt!1297295)))

(assert (=> d!1087817 (= (matchR!5300 lt!1297295 (_1!22744 lt!1297291)) lt!1297351)))

(declare-fun b!3715291 () Bool)

(declare-fun e!2300490 () Bool)

(declare-fun e!2300486 () Bool)

(assert (=> b!3715291 (= e!2300490 e!2300486)))

(declare-fun res!1510396 () Bool)

(assert (=> b!3715291 (=> res!1510396 e!2300486)))

(declare-fun call!269247 () Bool)

(assert (=> b!3715291 (= res!1510396 call!269247)))

(declare-fun b!3715292 () Bool)

(declare-fun res!1510394 () Bool)

(assert (=> b!3715292 (=> (not res!1510394) (not e!2300489))))

(assert (=> b!3715292 (= res!1510394 (not call!269247))))

(declare-fun bm!269242 () Bool)

(assert (=> bm!269242 (= call!269247 (isEmpty!23507 (_1!22744 lt!1297291)))))

(declare-fun b!3715293 () Bool)

(assert (=> b!3715293 (= e!2300487 (nullable!3778 lt!1297295))))

(declare-fun b!3715294 () Bool)

(declare-fun res!1510399 () Bool)

(assert (=> b!3715294 (=> (not res!1510399) (not e!2300489))))

(assert (=> b!3715294 (= res!1510399 (isEmpty!23507 (tail!5748 (_1!22744 lt!1297291))))))

(declare-fun b!3715295 () Bool)

(assert (=> b!3715295 (= e!2300491 (= lt!1297351 call!269247))))

(declare-fun b!3715296 () Bool)

(assert (=> b!3715296 (= e!2300487 (matchR!5300 (derivativeStep!3320 lt!1297295 (head!8021 (_1!22744 lt!1297291))) (tail!5748 (_1!22744 lt!1297291))))))

(declare-fun b!3715297 () Bool)

(assert (=> b!3715297 (= e!2300486 (not (= (head!8021 (_1!22744 lt!1297291)) (c!641993 lt!1297295))))))

(declare-fun b!3715298 () Bool)

(assert (=> b!3715298 (= e!2300488 (not lt!1297351))))

(declare-fun b!3715299 () Bool)

(assert (=> b!3715299 (= e!2300492 e!2300490)))

(declare-fun res!1510400 () Bool)

(assert (=> b!3715299 (=> (not res!1510400) (not e!2300490))))

(assert (=> b!3715299 (= res!1510400 (not lt!1297351))))

(declare-fun b!3715300 () Bool)

(assert (=> b!3715300 (= e!2300491 e!2300488)))

(declare-fun c!642095 () Bool)

(assert (=> b!3715300 (= c!642095 ((_ is EmptyLang!10855) lt!1297295))))

(declare-fun b!3715301 () Bool)

(declare-fun res!1510393 () Bool)

(assert (=> b!3715301 (=> res!1510393 e!2300492)))

(assert (=> b!3715301 (= res!1510393 e!2300489)))

(declare-fun res!1510395 () Bool)

(assert (=> b!3715301 (=> (not res!1510395) (not e!2300489))))

(assert (=> b!3715301 (= res!1510395 lt!1297351)))

(declare-fun b!3715302 () Bool)

(declare-fun res!1510398 () Bool)

(assert (=> b!3715302 (=> res!1510398 e!2300486)))

(assert (=> b!3715302 (= res!1510398 (not (isEmpty!23507 (tail!5748 (_1!22744 lt!1297291)))))))

(assert (= (and d!1087817 c!642093) b!3715293))

(assert (= (and d!1087817 (not c!642093)) b!3715296))

(assert (= (and d!1087817 c!642094) b!3715295))

(assert (= (and d!1087817 (not c!642094)) b!3715300))

(assert (= (and b!3715300 c!642095) b!3715298))

(assert (= (and b!3715300 (not c!642095)) b!3715290))

(assert (= (and b!3715290 (not res!1510397)) b!3715301))

(assert (= (and b!3715301 res!1510395) b!3715292))

(assert (= (and b!3715292 res!1510394) b!3715294))

(assert (= (and b!3715294 res!1510399) b!3715289))

(assert (= (and b!3715301 (not res!1510393)) b!3715299))

(assert (= (and b!3715299 res!1510400) b!3715291))

(assert (= (and b!3715291 (not res!1510396)) b!3715302))

(assert (= (and b!3715302 (not res!1510398)) b!3715297))

(assert (= (or b!3715295 b!3715291 b!3715292) bm!269242))

(declare-fun m!4221143 () Bool)

(assert (=> b!3715293 m!4221143))

(declare-fun m!4221145 () Bool)

(assert (=> d!1087817 m!4221145))

(declare-fun m!4221149 () Bool)

(assert (=> d!1087817 m!4221149))

(assert (=> bm!269242 m!4221145))

(declare-fun m!4221153 () Bool)

(assert (=> b!3715296 m!4221153))

(assert (=> b!3715296 m!4221153))

(declare-fun m!4221157 () Bool)

(assert (=> b!3715296 m!4221157))

(declare-fun m!4221159 () Bool)

(assert (=> b!3715296 m!4221159))

(assert (=> b!3715296 m!4221157))

(assert (=> b!3715296 m!4221159))

(declare-fun m!4221161 () Bool)

(assert (=> b!3715296 m!4221161))

(assert (=> b!3715289 m!4221153))

(assert (=> b!3715302 m!4221159))

(assert (=> b!3715302 m!4221159))

(declare-fun m!4221163 () Bool)

(assert (=> b!3715302 m!4221163))

(assert (=> b!3715294 m!4221159))

(assert (=> b!3715294 m!4221159))

(assert (=> b!3715294 m!4221163))

(assert (=> b!3715297 m!4221153))

(assert (=> b!3714962 d!1087817))

(declare-fun d!1087821 () Bool)

(declare-fun isEmpty!23508 (Option!8572) Bool)

(assert (=> d!1087821 (= (isDefined!6749 lt!1297292) (not (isEmpty!23508 lt!1297292)))))

(declare-fun bs!574821 () Bool)

(assert (= bs!574821 d!1087821))

(declare-fun m!4221171 () Bool)

(assert (=> bs!574821 m!4221171))

(assert (=> b!3714952 d!1087821))

(declare-fun b!3715406 () Bool)

(declare-fun e!2300552 () List!39736)

(assert (=> b!3715406 (= e!2300552 (Cons!39612 (h!45032 (_1!22744 lt!1297291)) (++!9801 (t!302419 (_1!22744 lt!1297291)) (_2!22744 lt!1297291))))))

(declare-fun d!1087825 () Bool)

(declare-fun e!2300551 () Bool)

(assert (=> d!1087825 e!2300551))

(declare-fun res!1510444 () Bool)

(assert (=> d!1087825 (=> (not res!1510444) (not e!2300551))))

(declare-fun lt!1297368 () List!39736)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!5738 (List!39736) (InoxSet C!21896))

(assert (=> d!1087825 (= res!1510444 (= (content!5738 lt!1297368) ((_ map or) (content!5738 (_1!22744 lt!1297291)) (content!5738 (_2!22744 lt!1297291)))))))

(assert (=> d!1087825 (= lt!1297368 e!2300552)))

(declare-fun c!642126 () Bool)

(assert (=> d!1087825 (= c!642126 ((_ is Nil!39612) (_1!22744 lt!1297291)))))

(assert (=> d!1087825 (= (++!9801 (_1!22744 lt!1297291) (_2!22744 lt!1297291)) lt!1297368)))

(declare-fun b!3715405 () Bool)

(assert (=> b!3715405 (= e!2300552 (_2!22744 lt!1297291))))

(declare-fun b!3715408 () Bool)

(assert (=> b!3715408 (= e!2300551 (or (not (= (_2!22744 lt!1297291) Nil!39612)) (= lt!1297368 (_1!22744 lt!1297291))))))

(declare-fun b!3715407 () Bool)

(declare-fun res!1510443 () Bool)

(assert (=> b!3715407 (=> (not res!1510443) (not e!2300551))))

(declare-fun size!30020 (List!39736) Int)

(assert (=> b!3715407 (= res!1510443 (= (size!30020 lt!1297368) (+ (size!30020 (_1!22744 lt!1297291)) (size!30020 (_2!22744 lt!1297291)))))))

(assert (= (and d!1087825 c!642126) b!3715405))

(assert (= (and d!1087825 (not c!642126)) b!3715406))

(assert (= (and d!1087825 res!1510444) b!3715407))

(assert (= (and b!3715407 res!1510443) b!3715408))

(declare-fun m!4221253 () Bool)

(assert (=> b!3715406 m!4221253))

(declare-fun m!4221257 () Bool)

(assert (=> d!1087825 m!4221257))

(declare-fun m!4221259 () Bool)

(assert (=> d!1087825 m!4221259))

(declare-fun m!4221261 () Bool)

(assert (=> d!1087825 m!4221261))

(declare-fun m!4221263 () Bool)

(assert (=> b!3715407 m!4221263))

(declare-fun m!4221265 () Bool)

(assert (=> b!3715407 m!4221265))

(declare-fun m!4221267 () Bool)

(assert (=> b!3715407 m!4221267))

(assert (=> b!3714952 d!1087825))

(declare-fun d!1087851 () Bool)

(assert (=> d!1087851 (= (get!13200 lt!1297292) (v!38589 lt!1297292))))

(assert (=> b!3714952 d!1087851))

(declare-fun d!1087855 () Bool)

(assert (=> d!1087855 (isDefined!6749 (findConcatSeparation!1260 lt!1297295 (regTwo!22222 r!26326) Nil!39612 tl!3933 tl!3933))))

(declare-fun lt!1297374 () Unit!57508)

(declare-fun choose!22191 (Regex!10855 Regex!10855 List!39736) Unit!57508)

(assert (=> d!1087855 (= lt!1297374 (choose!22191 lt!1297295 (regTwo!22222 r!26326) tl!3933))))

(assert (=> d!1087855 (validRegex!4962 lt!1297295)))

(assert (=> d!1087855 (= (lemmaConcatAcceptsStringThenFindSeparationIsDefined!232 lt!1297295 (regTwo!22222 r!26326) tl!3933) lt!1297374)))

(declare-fun bs!574825 () Bool)

(assert (= bs!574825 d!1087855))

(assert (=> bs!574825 m!4220925))

(assert (=> bs!574825 m!4220925))

(declare-fun m!4221303 () Bool)

(assert (=> bs!574825 m!4221303))

(declare-fun m!4221305 () Bool)

(assert (=> bs!574825 m!4221305))

(assert (=> bs!574825 m!4221149))

(assert (=> b!3714952 d!1087855))

(declare-fun b!3715513 () Bool)

(declare-fun res!1510486 () Bool)

(declare-fun e!2300603 () Bool)

(assert (=> b!3715513 (=> (not res!1510486) (not e!2300603))))

(declare-fun lt!1297382 () Option!8572)

(assert (=> b!3715513 (= res!1510486 (matchR!5300 (regTwo!22222 r!26326) (_2!22744 (get!13200 lt!1297382))))))

(declare-fun b!3715514 () Bool)

(declare-fun lt!1297381 () Unit!57508)

(declare-fun lt!1297383 () Unit!57508)

(assert (=> b!3715514 (= lt!1297381 lt!1297383)))

(assert (=> b!3715514 (= (++!9801 (++!9801 Nil!39612 (Cons!39612 (h!45032 tl!3933) Nil!39612)) (t!302419 tl!3933)) tl!3933)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1196 (List!39736 C!21896 List!39736 List!39736) Unit!57508)

(assert (=> b!3715514 (= lt!1297383 (lemmaMoveElementToOtherListKeepsConcatEq!1196 Nil!39612 (h!45032 tl!3933) (t!302419 tl!3933) tl!3933))))

(declare-fun e!2300602 () Option!8572)

(assert (=> b!3715514 (= e!2300602 (findConcatSeparation!1260 lt!1297295 (regTwo!22222 r!26326) (++!9801 Nil!39612 (Cons!39612 (h!45032 tl!3933) Nil!39612)) (t!302419 tl!3933) tl!3933))))

(declare-fun b!3715515 () Bool)

(declare-fun e!2300601 () Bool)

(assert (=> b!3715515 (= e!2300601 (not (isDefined!6749 lt!1297382)))))

(declare-fun b!3715516 () Bool)

(declare-fun e!2300604 () Bool)

(assert (=> b!3715516 (= e!2300604 (matchR!5300 (regTwo!22222 r!26326) tl!3933))))

(declare-fun d!1087861 () Bool)

(assert (=> d!1087861 e!2300601))

(declare-fun res!1510485 () Bool)

(assert (=> d!1087861 (=> res!1510485 e!2300601)))

(assert (=> d!1087861 (= res!1510485 e!2300603)))

(declare-fun res!1510484 () Bool)

(assert (=> d!1087861 (=> (not res!1510484) (not e!2300603))))

(assert (=> d!1087861 (= res!1510484 (isDefined!6749 lt!1297382))))

(declare-fun e!2300605 () Option!8572)

(assert (=> d!1087861 (= lt!1297382 e!2300605)))

(declare-fun c!642142 () Bool)

(assert (=> d!1087861 (= c!642142 e!2300604)))

(declare-fun res!1510487 () Bool)

(assert (=> d!1087861 (=> (not res!1510487) (not e!2300604))))

(assert (=> d!1087861 (= res!1510487 (matchR!5300 lt!1297295 Nil!39612))))

(assert (=> d!1087861 (validRegex!4962 lt!1297295)))

(assert (=> d!1087861 (= (findConcatSeparation!1260 lt!1297295 (regTwo!22222 r!26326) Nil!39612 tl!3933 tl!3933) lt!1297382)))

(declare-fun b!3715517 () Bool)

(assert (=> b!3715517 (= e!2300603 (= (++!9801 (_1!22744 (get!13200 lt!1297382)) (_2!22744 (get!13200 lt!1297382))) tl!3933))))

(declare-fun b!3715518 () Bool)

(assert (=> b!3715518 (= e!2300602 None!8571)))

(declare-fun b!3715519 () Bool)

(assert (=> b!3715519 (= e!2300605 e!2300602)))

(declare-fun c!642143 () Bool)

(assert (=> b!3715519 (= c!642143 ((_ is Nil!39612) tl!3933))))

(declare-fun b!3715520 () Bool)

(declare-fun res!1510488 () Bool)

(assert (=> b!3715520 (=> (not res!1510488) (not e!2300603))))

(assert (=> b!3715520 (= res!1510488 (matchR!5300 lt!1297295 (_1!22744 (get!13200 lt!1297382))))))

(declare-fun b!3715521 () Bool)

(assert (=> b!3715521 (= e!2300605 (Some!8571 (tuple2!39221 Nil!39612 tl!3933)))))

(assert (= (and d!1087861 res!1510487) b!3715516))

(assert (= (and d!1087861 c!642142) b!3715521))

(assert (= (and d!1087861 (not c!642142)) b!3715519))

(assert (= (and b!3715519 c!642143) b!3715518))

(assert (= (and b!3715519 (not c!642143)) b!3715514))

(assert (= (and d!1087861 res!1510484) b!3715520))

(assert (= (and b!3715520 res!1510488) b!3715513))

(assert (= (and b!3715513 res!1510486) b!3715517))

(assert (= (and d!1087861 (not res!1510485)) b!3715515))

(declare-fun m!4221307 () Bool)

(assert (=> b!3715513 m!4221307))

(declare-fun m!4221309 () Bool)

(assert (=> b!3715513 m!4221309))

(declare-fun m!4221311 () Bool)

(assert (=> b!3715516 m!4221311))

(declare-fun m!4221313 () Bool)

(assert (=> d!1087861 m!4221313))

(declare-fun m!4221315 () Bool)

(assert (=> d!1087861 m!4221315))

(assert (=> d!1087861 m!4221149))

(declare-fun m!4221317 () Bool)

(assert (=> b!3715514 m!4221317))

(assert (=> b!3715514 m!4221317))

(declare-fun m!4221319 () Bool)

(assert (=> b!3715514 m!4221319))

(declare-fun m!4221321 () Bool)

(assert (=> b!3715514 m!4221321))

(assert (=> b!3715514 m!4221317))

(declare-fun m!4221323 () Bool)

(assert (=> b!3715514 m!4221323))

(assert (=> b!3715520 m!4221307))

(declare-fun m!4221325 () Bool)

(assert (=> b!3715520 m!4221325))

(assert (=> b!3715517 m!4221307))

(declare-fun m!4221327 () Bool)

(assert (=> b!3715517 m!4221327))

(assert (=> b!3715515 m!4221313))

(assert (=> b!3714952 d!1087861))

(declare-fun b!3715540 () Bool)

(declare-fun res!1510499 () Bool)

(declare-fun e!2300624 () Bool)

(assert (=> b!3715540 (=> (not res!1510499) (not e!2300624))))

(declare-fun call!269281 () Bool)

(assert (=> b!3715540 (= res!1510499 call!269281)))

(declare-fun e!2300620 () Bool)

(assert (=> b!3715540 (= e!2300620 e!2300624)))

(declare-fun b!3715541 () Bool)

(declare-fun call!269280 () Bool)

(assert (=> b!3715541 (= e!2300624 call!269280)))

(declare-fun b!3715542 () Bool)

(declare-fun e!2300622 () Bool)

(declare-fun call!269279 () Bool)

(assert (=> b!3715542 (= e!2300622 call!269279)))

(declare-fun d!1087863 () Bool)

(declare-fun res!1510501 () Bool)

(declare-fun e!2300623 () Bool)

(assert (=> d!1087863 (=> res!1510501 e!2300623)))

(assert (=> d!1087863 (= res!1510501 ((_ is ElementMatch!10855) (regOne!22222 r!26326)))))

(assert (=> d!1087863 (= (validRegex!4962 (regOne!22222 r!26326)) e!2300623)))

(declare-fun b!3715543 () Bool)

(declare-fun e!2300625 () Bool)

(assert (=> b!3715543 (= e!2300625 e!2300622)))

(declare-fun res!1510502 () Bool)

(assert (=> b!3715543 (= res!1510502 (not (nullable!3778 (reg!11184 (regOne!22222 r!26326)))))))

(assert (=> b!3715543 (=> (not res!1510502) (not e!2300622))))

(declare-fun b!3715544 () Bool)

(assert (=> b!3715544 (= e!2300623 e!2300625)))

(declare-fun c!642148 () Bool)

(assert (=> b!3715544 (= c!642148 ((_ is Star!10855) (regOne!22222 r!26326)))))

(declare-fun b!3715545 () Bool)

(declare-fun e!2300621 () Bool)

(declare-fun e!2300626 () Bool)

(assert (=> b!3715545 (= e!2300621 e!2300626)))

(declare-fun res!1510503 () Bool)

(assert (=> b!3715545 (=> (not res!1510503) (not e!2300626))))

(assert (=> b!3715545 (= res!1510503 call!269280)))

(declare-fun b!3715546 () Bool)

(declare-fun res!1510500 () Bool)

(assert (=> b!3715546 (=> res!1510500 e!2300621)))

(assert (=> b!3715546 (= res!1510500 (not ((_ is Concat!17126) (regOne!22222 r!26326))))))

(assert (=> b!3715546 (= e!2300620 e!2300621)))

(declare-fun bm!269274 () Bool)

(declare-fun c!642149 () Bool)

(assert (=> bm!269274 (= call!269279 (validRegex!4962 (ite c!642148 (reg!11184 (regOne!22222 r!26326)) (ite c!642149 (regTwo!22223 (regOne!22222 r!26326)) (regOne!22222 (regOne!22222 r!26326))))))))

(declare-fun b!3715547 () Bool)

(assert (=> b!3715547 (= e!2300626 call!269281)))

(declare-fun bm!269275 () Bool)

(assert (=> bm!269275 (= call!269281 (validRegex!4962 (ite c!642149 (regOne!22223 (regOne!22222 r!26326)) (regTwo!22222 (regOne!22222 r!26326)))))))

(declare-fun bm!269276 () Bool)

(assert (=> bm!269276 (= call!269280 call!269279)))

(declare-fun b!3715548 () Bool)

(assert (=> b!3715548 (= e!2300625 e!2300620)))

(assert (=> b!3715548 (= c!642149 ((_ is Union!10855) (regOne!22222 r!26326)))))

(assert (= (and d!1087863 (not res!1510501)) b!3715544))

(assert (= (and b!3715544 c!642148) b!3715543))

(assert (= (and b!3715544 (not c!642148)) b!3715548))

(assert (= (and b!3715543 res!1510502) b!3715542))

(assert (= (and b!3715548 c!642149) b!3715540))

(assert (= (and b!3715548 (not c!642149)) b!3715546))

(assert (= (and b!3715540 res!1510499) b!3715541))

(assert (= (and b!3715546 (not res!1510500)) b!3715545))

(assert (= (and b!3715545 res!1510503) b!3715547))

(assert (= (or b!3715541 b!3715545) bm!269276))

(assert (= (or b!3715540 b!3715547) bm!269275))

(assert (= (or b!3715542 bm!269276) bm!269274))

(declare-fun m!4221329 () Bool)

(assert (=> b!3715543 m!4221329))

(declare-fun m!4221331 () Bool)

(assert (=> bm!269274 m!4221331))

(declare-fun m!4221333 () Bool)

(assert (=> bm!269275 m!4221333))

(assert (=> b!3714961 d!1087863))

(declare-fun b!3715549 () Bool)

(declare-fun e!2300630 () Bool)

(assert (=> b!3715549 (= e!2300630 (= (head!8021 Nil!39612) (c!641993 lt!1297293)))))

(declare-fun b!3715550 () Bool)

(declare-fun res!1510508 () Bool)

(declare-fun e!2300633 () Bool)

(assert (=> b!3715550 (=> res!1510508 e!2300633)))

(assert (=> b!3715550 (= res!1510508 (not ((_ is ElementMatch!10855) lt!1297293)))))

(declare-fun e!2300629 () Bool)

(assert (=> b!3715550 (= e!2300629 e!2300633)))

(declare-fun d!1087865 () Bool)

(declare-fun e!2300632 () Bool)

(assert (=> d!1087865 e!2300632))

(declare-fun c!642151 () Bool)

(assert (=> d!1087865 (= c!642151 ((_ is EmptyExpr!10855) lt!1297293))))

(declare-fun lt!1297384 () Bool)

(declare-fun e!2300628 () Bool)

(assert (=> d!1087865 (= lt!1297384 e!2300628)))

(declare-fun c!642150 () Bool)

(assert (=> d!1087865 (= c!642150 (isEmpty!23507 Nil!39612))))

(assert (=> d!1087865 (validRegex!4962 lt!1297293)))

(assert (=> d!1087865 (= (matchR!5300 lt!1297293 Nil!39612) lt!1297384)))

(declare-fun b!3715551 () Bool)

(declare-fun e!2300631 () Bool)

(declare-fun e!2300627 () Bool)

(assert (=> b!3715551 (= e!2300631 e!2300627)))

(declare-fun res!1510507 () Bool)

(assert (=> b!3715551 (=> res!1510507 e!2300627)))

(declare-fun call!269282 () Bool)

(assert (=> b!3715551 (= res!1510507 call!269282)))

(declare-fun b!3715552 () Bool)

(declare-fun res!1510505 () Bool)

(assert (=> b!3715552 (=> (not res!1510505) (not e!2300630))))

(assert (=> b!3715552 (= res!1510505 (not call!269282))))

(declare-fun bm!269277 () Bool)

(assert (=> bm!269277 (= call!269282 (isEmpty!23507 Nil!39612))))

(declare-fun b!3715553 () Bool)

(assert (=> b!3715553 (= e!2300628 (nullable!3778 lt!1297293))))

(declare-fun b!3715554 () Bool)

(declare-fun res!1510510 () Bool)

(assert (=> b!3715554 (=> (not res!1510510) (not e!2300630))))

(assert (=> b!3715554 (= res!1510510 (isEmpty!23507 (tail!5748 Nil!39612)))))

(declare-fun b!3715555 () Bool)

(assert (=> b!3715555 (= e!2300632 (= lt!1297384 call!269282))))

(declare-fun b!3715556 () Bool)

(assert (=> b!3715556 (= e!2300628 (matchR!5300 (derivativeStep!3320 lt!1297293 (head!8021 Nil!39612)) (tail!5748 Nil!39612)))))

(declare-fun b!3715557 () Bool)

(assert (=> b!3715557 (= e!2300627 (not (= (head!8021 Nil!39612) (c!641993 lt!1297293))))))

(declare-fun b!3715558 () Bool)

(assert (=> b!3715558 (= e!2300629 (not lt!1297384))))

(declare-fun b!3715559 () Bool)

(assert (=> b!3715559 (= e!2300633 e!2300631)))

(declare-fun res!1510511 () Bool)

(assert (=> b!3715559 (=> (not res!1510511) (not e!2300631))))

(assert (=> b!3715559 (= res!1510511 (not lt!1297384))))

(declare-fun b!3715560 () Bool)

(assert (=> b!3715560 (= e!2300632 e!2300629)))

(declare-fun c!642152 () Bool)

(assert (=> b!3715560 (= c!642152 ((_ is EmptyLang!10855) lt!1297293))))

(declare-fun b!3715561 () Bool)

(declare-fun res!1510504 () Bool)

(assert (=> b!3715561 (=> res!1510504 e!2300633)))

(assert (=> b!3715561 (= res!1510504 e!2300630)))

(declare-fun res!1510506 () Bool)

(assert (=> b!3715561 (=> (not res!1510506) (not e!2300630))))

(assert (=> b!3715561 (= res!1510506 lt!1297384)))

(declare-fun b!3715562 () Bool)

(declare-fun res!1510509 () Bool)

(assert (=> b!3715562 (=> res!1510509 e!2300627)))

(assert (=> b!3715562 (= res!1510509 (not (isEmpty!23507 (tail!5748 Nil!39612))))))

(assert (= (and d!1087865 c!642150) b!3715553))

(assert (= (and d!1087865 (not c!642150)) b!3715556))

(assert (= (and d!1087865 c!642151) b!3715555))

(assert (= (and d!1087865 (not c!642151)) b!3715560))

(assert (= (and b!3715560 c!642152) b!3715558))

(assert (= (and b!3715560 (not c!642152)) b!3715550))

(assert (= (and b!3715550 (not res!1510508)) b!3715561))

(assert (= (and b!3715561 res!1510506) b!3715552))

(assert (= (and b!3715552 res!1510505) b!3715554))

(assert (= (and b!3715554 res!1510510) b!3715549))

(assert (= (and b!3715561 (not res!1510504)) b!3715559))

(assert (= (and b!3715559 res!1510511) b!3715551))

(assert (= (and b!3715551 (not res!1510507)) b!3715562))

(assert (= (and b!3715562 (not res!1510509)) b!3715557))

(assert (= (or b!3715555 b!3715551 b!3715552) bm!269277))

(assert (=> b!3715553 m!4220931))

(assert (=> d!1087865 m!4221129))

(declare-fun m!4221335 () Bool)

(assert (=> d!1087865 m!4221335))

(assert (=> bm!269277 m!4221129))

(assert (=> b!3715556 m!4221133))

(assert (=> b!3715556 m!4221133))

(declare-fun m!4221337 () Bool)

(assert (=> b!3715556 m!4221337))

(assert (=> b!3715556 m!4221137))

(assert (=> b!3715556 m!4221337))

(assert (=> b!3715556 m!4221137))

(declare-fun m!4221339 () Bool)

(assert (=> b!3715556 m!4221339))

(assert (=> b!3715549 m!4221133))

(assert (=> b!3715562 m!4221137))

(assert (=> b!3715562 m!4221137))

(assert (=> b!3715562 m!4221141))

(assert (=> b!3715554 m!4221137))

(assert (=> b!3715554 m!4221137))

(assert (=> b!3715554 m!4221141))

(assert (=> b!3715557 m!4221133))

(assert (=> b!3714961 d!1087865))

(declare-fun d!1087867 () Bool)

(declare-fun lt!1297385 () Regex!10855)

(assert (=> d!1087867 (validRegex!4962 lt!1297385)))

(declare-fun e!2300634 () Regex!10855)

(assert (=> d!1087867 (= lt!1297385 e!2300634)))

(declare-fun c!642153 () Bool)

(assert (=> d!1087867 (= c!642153 ((_ is Cons!39612) (_1!22744 lt!1297291)))))

(assert (=> d!1087867 (validRegex!4962 lt!1297295)))

(assert (=> d!1087867 (= (derivative!369 lt!1297295 (_1!22744 lt!1297291)) lt!1297385)))

(declare-fun b!3715563 () Bool)

(assert (=> b!3715563 (= e!2300634 (derivative!369 (derivativeStep!3320 lt!1297295 (h!45032 (_1!22744 lt!1297291))) (t!302419 (_1!22744 lt!1297291))))))

(declare-fun b!3715564 () Bool)

(assert (=> b!3715564 (= e!2300634 lt!1297295)))

(assert (= (and d!1087867 c!642153) b!3715563))

(assert (= (and d!1087867 (not c!642153)) b!3715564))

(declare-fun m!4221341 () Bool)

(assert (=> d!1087867 m!4221341))

(assert (=> d!1087867 m!4221149))

(declare-fun m!4221343 () Bool)

(assert (=> b!3715563 m!4221343))

(assert (=> b!3715563 m!4221343))

(declare-fun m!4221345 () Bool)

(assert (=> b!3715563 m!4221345))

(assert (=> b!3714961 d!1087867))

(declare-fun d!1087869 () Bool)

(assert (=> d!1087869 (= (matchR!5300 lt!1297295 (_1!22744 lt!1297291)) (matchR!5300 (derivative!369 lt!1297295 (_1!22744 lt!1297291)) Nil!39612))))

(declare-fun lt!1297386 () Unit!57508)

(assert (=> d!1087869 (= lt!1297386 (choose!22190 lt!1297295 (_1!22744 lt!1297291)))))

(assert (=> d!1087869 (validRegex!4962 lt!1297295)))

(assert (=> d!1087869 (= (lemmaMatchRIsSameAsWholeDerivativeAndNil!246 lt!1297295 (_1!22744 lt!1297291)) lt!1297386)))

(declare-fun bs!574826 () Bool)

(assert (= bs!574826 d!1087869))

(assert (=> bs!574826 m!4220887))

(assert (=> bs!574826 m!4221149))

(assert (=> bs!574826 m!4220887))

(declare-fun m!4221347 () Bool)

(assert (=> bs!574826 m!4221347))

(assert (=> bs!574826 m!4220917))

(declare-fun m!4221349 () Bool)

(assert (=> bs!574826 m!4221349))

(assert (=> b!3714961 d!1087869))

(declare-fun d!1087871 () Bool)

(assert (=> d!1087871 (= (nullable!3778 (derivative!369 (derivativeStep!3320 r!26326 c!13576) tl!3933)) (nullableFct!1067 (derivative!369 (derivativeStep!3320 r!26326 c!13576) tl!3933)))))

(declare-fun bs!574827 () Bool)

(assert (= bs!574827 d!1087871))

(assert (=> bs!574827 m!4220937))

(declare-fun m!4221351 () Bool)

(assert (=> bs!574827 m!4221351))

(assert (=> b!3714951 d!1087871))

(declare-fun d!1087873 () Bool)

(declare-fun lt!1297387 () Regex!10855)

(assert (=> d!1087873 (validRegex!4962 lt!1297387)))

(declare-fun e!2300635 () Regex!10855)

(assert (=> d!1087873 (= lt!1297387 e!2300635)))

(declare-fun c!642154 () Bool)

(assert (=> d!1087873 (= c!642154 ((_ is Cons!39612) tl!3933))))

(assert (=> d!1087873 (validRegex!4962 (derivativeStep!3320 r!26326 c!13576))))

(assert (=> d!1087873 (= (derivative!369 (derivativeStep!3320 r!26326 c!13576) tl!3933) lt!1297387)))

(declare-fun b!3715565 () Bool)

(assert (=> b!3715565 (= e!2300635 (derivative!369 (derivativeStep!3320 (derivativeStep!3320 r!26326 c!13576) (h!45032 tl!3933)) (t!302419 tl!3933)))))

(declare-fun b!3715566 () Bool)

(assert (=> b!3715566 (= e!2300635 (derivativeStep!3320 r!26326 c!13576))))

(assert (= (and d!1087873 c!642154) b!3715565))

(assert (= (and d!1087873 (not c!642154)) b!3715566))

(declare-fun m!4221353 () Bool)

(assert (=> d!1087873 m!4221353))

(assert (=> d!1087873 m!4220935))

(declare-fun m!4221355 () Bool)

(assert (=> d!1087873 m!4221355))

(assert (=> b!3715565 m!4220935))

(declare-fun m!4221357 () Bool)

(assert (=> b!3715565 m!4221357))

(assert (=> b!3715565 m!4221357))

(declare-fun m!4221359 () Bool)

(assert (=> b!3715565 m!4221359))

(assert (=> b!3714951 d!1087873))

(declare-fun b!3715567 () Bool)

(declare-fun e!2300636 () Regex!10855)

(declare-fun e!2300639 () Regex!10855)

(assert (=> b!3715567 (= e!2300636 e!2300639)))

(declare-fun c!642158 () Bool)

(assert (=> b!3715567 (= c!642158 ((_ is ElementMatch!10855) r!26326))))

(declare-fun b!3715568 () Bool)

(declare-fun c!642157 () Bool)

(assert (=> b!3715568 (= c!642157 (nullable!3778 (regOne!22222 r!26326)))))

(declare-fun e!2300637 () Regex!10855)

(declare-fun e!2300640 () Regex!10855)

(assert (=> b!3715568 (= e!2300637 e!2300640)))

(declare-fun bm!269278 () Bool)

(declare-fun call!269284 () Regex!10855)

(declare-fun call!269286 () Regex!10855)

(assert (=> bm!269278 (= call!269284 call!269286)))

(declare-fun b!3715569 () Bool)

(declare-fun c!642155 () Bool)

(assert (=> b!3715569 (= c!642155 ((_ is Union!10855) r!26326))))

(declare-fun e!2300638 () Regex!10855)

(assert (=> b!3715569 (= e!2300639 e!2300638)))

(declare-fun b!3715570 () Bool)

(declare-fun call!269283 () Regex!10855)

(assert (=> b!3715570 (= e!2300638 (Union!10855 call!269286 call!269283))))

(declare-fun b!3715571 () Bool)

(assert (=> b!3715571 (= e!2300636 EmptyLang!10855)))

(declare-fun b!3715572 () Bool)

(assert (=> b!3715572 (= e!2300639 (ite (= c!13576 (c!641993 r!26326)) EmptyExpr!10855 EmptyLang!10855))))

(declare-fun bm!269279 () Bool)

(declare-fun call!269285 () Regex!10855)

(assert (=> bm!269279 (= call!269285 call!269283)))

(declare-fun b!3715573 () Bool)

(assert (=> b!3715573 (= e!2300638 e!2300637)))

(declare-fun c!642159 () Bool)

(assert (=> b!3715573 (= c!642159 ((_ is Star!10855) r!26326))))

(declare-fun bm!269280 () Bool)

(assert (=> bm!269280 (= call!269283 (derivativeStep!3320 (ite c!642155 (regTwo!22223 r!26326) (ite c!642159 (reg!11184 r!26326) (regTwo!22222 r!26326))) c!13576))))

(declare-fun bm!269281 () Bool)

(assert (=> bm!269281 (= call!269286 (derivativeStep!3320 (ite c!642155 (regOne!22223 r!26326) (regOne!22222 r!26326)) c!13576))))

(declare-fun b!3715575 () Bool)

(assert (=> b!3715575 (= e!2300637 (Concat!17126 call!269285 r!26326))))

(declare-fun b!3715576 () Bool)

(assert (=> b!3715576 (= e!2300640 (Union!10855 (Concat!17126 call!269284 (regTwo!22222 r!26326)) EmptyLang!10855))))

(declare-fun b!3715574 () Bool)

(assert (=> b!3715574 (= e!2300640 (Union!10855 (Concat!17126 call!269284 (regTwo!22222 r!26326)) call!269285))))

(declare-fun d!1087875 () Bool)

(declare-fun lt!1297388 () Regex!10855)

(assert (=> d!1087875 (validRegex!4962 lt!1297388)))

(assert (=> d!1087875 (= lt!1297388 e!2300636)))

(declare-fun c!642156 () Bool)

(assert (=> d!1087875 (= c!642156 (or ((_ is EmptyExpr!10855) r!26326) ((_ is EmptyLang!10855) r!26326)))))

(assert (=> d!1087875 (validRegex!4962 r!26326)))

(assert (=> d!1087875 (= (derivativeStep!3320 r!26326 c!13576) lt!1297388)))

(assert (= (and d!1087875 c!642156) b!3715571))

(assert (= (and d!1087875 (not c!642156)) b!3715567))

(assert (= (and b!3715567 c!642158) b!3715572))

(assert (= (and b!3715567 (not c!642158)) b!3715569))

(assert (= (and b!3715569 c!642155) b!3715570))

(assert (= (and b!3715569 (not c!642155)) b!3715573))

(assert (= (and b!3715573 c!642159) b!3715575))

(assert (= (and b!3715573 (not c!642159)) b!3715568))

(assert (= (and b!3715568 c!642157) b!3715574))

(assert (= (and b!3715568 (not c!642157)) b!3715576))

(assert (= (or b!3715574 b!3715576) bm!269278))

(assert (= (or b!3715575 b!3715574) bm!269279))

(assert (= (or b!3715570 bm!269279) bm!269280))

(assert (= (or b!3715570 bm!269278) bm!269281))

(assert (=> b!3715568 m!4220881))

(declare-fun m!4221361 () Bool)

(assert (=> bm!269280 m!4221361))

(declare-fun m!4221363 () Bool)

(assert (=> bm!269281 m!4221363))

(declare-fun m!4221365 () Bool)

(assert (=> d!1087875 m!4221365))

(assert (=> d!1087875 m!4220929))

(assert (=> b!3714951 d!1087875))

(declare-fun b!3715577 () Bool)

(declare-fun res!1510512 () Bool)

(declare-fun e!2300645 () Bool)

(assert (=> b!3715577 (=> (not res!1510512) (not e!2300645))))

(declare-fun call!269289 () Bool)

(assert (=> b!3715577 (= res!1510512 call!269289)))

(declare-fun e!2300641 () Bool)

(assert (=> b!3715577 (= e!2300641 e!2300645)))

(declare-fun b!3715578 () Bool)

(declare-fun call!269288 () Bool)

(assert (=> b!3715578 (= e!2300645 call!269288)))

(declare-fun b!3715579 () Bool)

(declare-fun e!2300643 () Bool)

(declare-fun call!269287 () Bool)

(assert (=> b!3715579 (= e!2300643 call!269287)))

(declare-fun d!1087877 () Bool)

(declare-fun res!1510514 () Bool)

(declare-fun e!2300644 () Bool)

(assert (=> d!1087877 (=> res!1510514 e!2300644)))

(assert (=> d!1087877 (= res!1510514 ((_ is ElementMatch!10855) r!26326))))

(assert (=> d!1087877 (= (validRegex!4962 r!26326) e!2300644)))

(declare-fun b!3715580 () Bool)

(declare-fun e!2300646 () Bool)

(assert (=> b!3715580 (= e!2300646 e!2300643)))

(declare-fun res!1510515 () Bool)

(assert (=> b!3715580 (= res!1510515 (not (nullable!3778 (reg!11184 r!26326))))))

(assert (=> b!3715580 (=> (not res!1510515) (not e!2300643))))

(declare-fun b!3715581 () Bool)

(assert (=> b!3715581 (= e!2300644 e!2300646)))

(declare-fun c!642160 () Bool)

(assert (=> b!3715581 (= c!642160 ((_ is Star!10855) r!26326))))

(declare-fun b!3715582 () Bool)

(declare-fun e!2300642 () Bool)

(declare-fun e!2300647 () Bool)

(assert (=> b!3715582 (= e!2300642 e!2300647)))

(declare-fun res!1510516 () Bool)

(assert (=> b!3715582 (=> (not res!1510516) (not e!2300647))))

(assert (=> b!3715582 (= res!1510516 call!269288)))

(declare-fun b!3715583 () Bool)

(declare-fun res!1510513 () Bool)

(assert (=> b!3715583 (=> res!1510513 e!2300642)))

(assert (=> b!3715583 (= res!1510513 (not ((_ is Concat!17126) r!26326)))))

(assert (=> b!3715583 (= e!2300641 e!2300642)))

(declare-fun c!642161 () Bool)

(declare-fun bm!269282 () Bool)

(assert (=> bm!269282 (= call!269287 (validRegex!4962 (ite c!642160 (reg!11184 r!26326) (ite c!642161 (regTwo!22223 r!26326) (regOne!22222 r!26326)))))))

(declare-fun b!3715584 () Bool)

(assert (=> b!3715584 (= e!2300647 call!269289)))

(declare-fun bm!269283 () Bool)

(assert (=> bm!269283 (= call!269289 (validRegex!4962 (ite c!642161 (regOne!22223 r!26326) (regTwo!22222 r!26326))))))

(declare-fun bm!269284 () Bool)

(assert (=> bm!269284 (= call!269288 call!269287)))

(declare-fun b!3715585 () Bool)

(assert (=> b!3715585 (= e!2300646 e!2300641)))

(assert (=> b!3715585 (= c!642161 ((_ is Union!10855) r!26326))))

(assert (= (and d!1087877 (not res!1510514)) b!3715581))

(assert (= (and b!3715581 c!642160) b!3715580))

(assert (= (and b!3715581 (not c!642160)) b!3715585))

(assert (= (and b!3715580 res!1510515) b!3715579))

(assert (= (and b!3715585 c!642161) b!3715577))

(assert (= (and b!3715585 (not c!642161)) b!3715583))

(assert (= (and b!3715577 res!1510512) b!3715578))

(assert (= (and b!3715583 (not res!1510513)) b!3715582))

(assert (= (and b!3715582 res!1510516) b!3715584))

(assert (= (or b!3715578 b!3715582) bm!269284))

(assert (= (or b!3715577 b!3715584) bm!269283))

(assert (= (or b!3715579 bm!269284) bm!269282))

(declare-fun m!4221367 () Bool)

(assert (=> b!3715580 m!4221367))

(declare-fun m!4221369 () Bool)

(assert (=> bm!269282 m!4221369))

(declare-fun m!4221371 () Bool)

(assert (=> bm!269283 m!4221371))

(assert (=> start!350122 d!1087877))

(declare-fun e!2300651 () Bool)

(declare-fun b!3715586 () Bool)

(assert (=> b!3715586 (= e!2300651 (= (head!8021 (Cons!39612 c!13576 (_1!22744 lt!1297291))) (c!641993 (regOne!22222 r!26326))))))

(declare-fun b!3715587 () Bool)

(declare-fun res!1510521 () Bool)

(declare-fun e!2300654 () Bool)

(assert (=> b!3715587 (=> res!1510521 e!2300654)))

(assert (=> b!3715587 (= res!1510521 (not ((_ is ElementMatch!10855) (regOne!22222 r!26326))))))

(declare-fun e!2300650 () Bool)

(assert (=> b!3715587 (= e!2300650 e!2300654)))

(declare-fun d!1087879 () Bool)

(declare-fun e!2300653 () Bool)

(assert (=> d!1087879 e!2300653))

(declare-fun c!642163 () Bool)

(assert (=> d!1087879 (= c!642163 ((_ is EmptyExpr!10855) (regOne!22222 r!26326)))))

(declare-fun lt!1297389 () Bool)

(declare-fun e!2300649 () Bool)

(assert (=> d!1087879 (= lt!1297389 e!2300649)))

(declare-fun c!642162 () Bool)

(assert (=> d!1087879 (= c!642162 (isEmpty!23507 (Cons!39612 c!13576 (_1!22744 lt!1297291))))))

(assert (=> d!1087879 (validRegex!4962 (regOne!22222 r!26326))))

(assert (=> d!1087879 (= (matchR!5300 (regOne!22222 r!26326) (Cons!39612 c!13576 (_1!22744 lt!1297291))) lt!1297389)))

(declare-fun b!3715588 () Bool)

(declare-fun e!2300652 () Bool)

(declare-fun e!2300648 () Bool)

(assert (=> b!3715588 (= e!2300652 e!2300648)))

(declare-fun res!1510520 () Bool)

(assert (=> b!3715588 (=> res!1510520 e!2300648)))

(declare-fun call!269290 () Bool)

(assert (=> b!3715588 (= res!1510520 call!269290)))

(declare-fun b!3715589 () Bool)

(declare-fun res!1510518 () Bool)

(assert (=> b!3715589 (=> (not res!1510518) (not e!2300651))))

(assert (=> b!3715589 (= res!1510518 (not call!269290))))

(declare-fun bm!269285 () Bool)

(assert (=> bm!269285 (= call!269290 (isEmpty!23507 (Cons!39612 c!13576 (_1!22744 lt!1297291))))))

(declare-fun b!3715590 () Bool)

(assert (=> b!3715590 (= e!2300649 (nullable!3778 (regOne!22222 r!26326)))))

(declare-fun b!3715591 () Bool)

(declare-fun res!1510523 () Bool)

(assert (=> b!3715591 (=> (not res!1510523) (not e!2300651))))

(assert (=> b!3715591 (= res!1510523 (isEmpty!23507 (tail!5748 (Cons!39612 c!13576 (_1!22744 lt!1297291)))))))

(declare-fun b!3715592 () Bool)

(assert (=> b!3715592 (= e!2300653 (= lt!1297389 call!269290))))

(declare-fun b!3715593 () Bool)

(assert (=> b!3715593 (= e!2300649 (matchR!5300 (derivativeStep!3320 (regOne!22222 r!26326) (head!8021 (Cons!39612 c!13576 (_1!22744 lt!1297291)))) (tail!5748 (Cons!39612 c!13576 (_1!22744 lt!1297291)))))))

(declare-fun b!3715594 () Bool)

(assert (=> b!3715594 (= e!2300648 (not (= (head!8021 (Cons!39612 c!13576 (_1!22744 lt!1297291))) (c!641993 (regOne!22222 r!26326)))))))

(declare-fun b!3715595 () Bool)

(assert (=> b!3715595 (= e!2300650 (not lt!1297389))))

(declare-fun b!3715596 () Bool)

(assert (=> b!3715596 (= e!2300654 e!2300652)))

(declare-fun res!1510524 () Bool)

(assert (=> b!3715596 (=> (not res!1510524) (not e!2300652))))

(assert (=> b!3715596 (= res!1510524 (not lt!1297389))))

(declare-fun b!3715597 () Bool)

(assert (=> b!3715597 (= e!2300653 e!2300650)))

(declare-fun c!642164 () Bool)

(assert (=> b!3715597 (= c!642164 ((_ is EmptyLang!10855) (regOne!22222 r!26326)))))

(declare-fun b!3715598 () Bool)

(declare-fun res!1510517 () Bool)

(assert (=> b!3715598 (=> res!1510517 e!2300654)))

(assert (=> b!3715598 (= res!1510517 e!2300651)))

(declare-fun res!1510519 () Bool)

(assert (=> b!3715598 (=> (not res!1510519) (not e!2300651))))

(assert (=> b!3715598 (= res!1510519 lt!1297389)))

(declare-fun b!3715599 () Bool)

(declare-fun res!1510522 () Bool)

(assert (=> b!3715599 (=> res!1510522 e!2300648)))

(assert (=> b!3715599 (= res!1510522 (not (isEmpty!23507 (tail!5748 (Cons!39612 c!13576 (_1!22744 lt!1297291))))))))

(assert (= (and d!1087879 c!642162) b!3715590))

(assert (= (and d!1087879 (not c!642162)) b!3715593))

(assert (= (and d!1087879 c!642163) b!3715592))

(assert (= (and d!1087879 (not c!642163)) b!3715597))

(assert (= (and b!3715597 c!642164) b!3715595))

(assert (= (and b!3715597 (not c!642164)) b!3715587))

(assert (= (and b!3715587 (not res!1510521)) b!3715598))

(assert (= (and b!3715598 res!1510519) b!3715589))

(assert (= (and b!3715589 res!1510518) b!3715591))

(assert (= (and b!3715591 res!1510523) b!3715586))

(assert (= (and b!3715598 (not res!1510517)) b!3715596))

(assert (= (and b!3715596 res!1510524) b!3715588))

(assert (= (and b!3715588 (not res!1510520)) b!3715599))

(assert (= (and b!3715599 (not res!1510522)) b!3715594))

(assert (= (or b!3715592 b!3715588 b!3715589) bm!269285))

(assert (=> b!3715590 m!4220881))

(declare-fun m!4221373 () Bool)

(assert (=> d!1087879 m!4221373))

(assert (=> d!1087879 m!4220883))

(assert (=> bm!269285 m!4221373))

(declare-fun m!4221375 () Bool)

(assert (=> b!3715593 m!4221375))

(assert (=> b!3715593 m!4221375))

(declare-fun m!4221377 () Bool)

(assert (=> b!3715593 m!4221377))

(declare-fun m!4221379 () Bool)

(assert (=> b!3715593 m!4221379))

(assert (=> b!3715593 m!4221377))

(assert (=> b!3715593 m!4221379))

(declare-fun m!4221381 () Bool)

(assert (=> b!3715593 m!4221381))

(assert (=> b!3715586 m!4221375))

(assert (=> b!3715599 m!4221379))

(assert (=> b!3715599 m!4221379))

(declare-fun m!4221383 () Bool)

(assert (=> b!3715599 m!4221383))

(assert (=> b!3715591 m!4221379))

(assert (=> b!3715591 m!4221379))

(assert (=> b!3715591 m!4221383))

(assert (=> b!3715594 m!4221375))

(assert (=> b!3714953 d!1087879))

(declare-fun d!1087881 () Bool)

(assert (=> d!1087881 (= (nullable!3778 (regOne!22222 r!26326)) (nullableFct!1067 (regOne!22222 r!26326)))))

(declare-fun bs!574828 () Bool)

(assert (= bs!574828 d!1087881))

(declare-fun m!4221385 () Bool)

(assert (=> bs!574828 m!4221385))

(assert (=> b!3714947 d!1087881))

(declare-fun b!3715616 () Bool)

(declare-fun e!2300663 () List!39736)

(assert (=> b!3715616 (= e!2300663 Nil!39612)))

(declare-fun call!269300 () List!39736)

(declare-fun c!642173 () Bool)

(declare-fun c!642175 () Bool)

(declare-fun bm!269294 () Bool)

(assert (=> bm!269294 (= call!269300 (usedCharacters!1118 (ite c!642175 (reg!11184 r!26326) (ite c!642173 (regOne!22223 r!26326) (regOne!22222 r!26326)))))))

(declare-fun d!1087883 () Bool)

(declare-fun c!642174 () Bool)

(assert (=> d!1087883 (= c!642174 (or ((_ is EmptyExpr!10855) r!26326) ((_ is EmptyLang!10855) r!26326)))))

(assert (=> d!1087883 (= (usedCharacters!1118 r!26326) e!2300663)))

(declare-fun b!3715617 () Bool)

(declare-fun e!2300666 () List!39736)

(declare-fun e!2300665 () List!39736)

(assert (=> b!3715617 (= e!2300666 e!2300665)))

(assert (=> b!3715617 (= c!642173 ((_ is Union!10855) r!26326))))

(declare-fun b!3715618 () Bool)

(declare-fun call!269299 () List!39736)

(assert (=> b!3715618 (= e!2300665 call!269299)))

(declare-fun b!3715619 () Bool)

(declare-fun e!2300664 () List!39736)

(assert (=> b!3715619 (= e!2300664 (Cons!39612 (c!641993 r!26326) Nil!39612))))

(declare-fun bm!269295 () Bool)

(declare-fun call!269302 () List!39736)

(declare-fun call!269301 () List!39736)

(assert (=> bm!269295 (= call!269299 (++!9801 call!269302 call!269301))))

(declare-fun b!3715620 () Bool)

(assert (=> b!3715620 (= e!2300663 e!2300664)))

(declare-fun c!642176 () Bool)

(assert (=> b!3715620 (= c!642176 ((_ is ElementMatch!10855) r!26326))))

(declare-fun b!3715621 () Bool)

(assert (=> b!3715621 (= e!2300665 call!269299)))

(declare-fun b!3715622 () Bool)

(assert (=> b!3715622 (= e!2300666 call!269300)))

(declare-fun bm!269296 () Bool)

(assert (=> bm!269296 (= call!269301 (usedCharacters!1118 (ite c!642173 (regTwo!22223 r!26326) (regTwo!22222 r!26326))))))

(declare-fun b!3715623 () Bool)

(assert (=> b!3715623 (= c!642175 ((_ is Star!10855) r!26326))))

(assert (=> b!3715623 (= e!2300664 e!2300666)))

(declare-fun bm!269297 () Bool)

(assert (=> bm!269297 (= call!269302 call!269300)))

(assert (= (and d!1087883 c!642174) b!3715616))

(assert (= (and d!1087883 (not c!642174)) b!3715620))

(assert (= (and b!3715620 c!642176) b!3715619))

(assert (= (and b!3715620 (not c!642176)) b!3715623))

(assert (= (and b!3715623 c!642175) b!3715622))

(assert (= (and b!3715623 (not c!642175)) b!3715617))

(assert (= (and b!3715617 c!642173) b!3715618))

(assert (= (and b!3715617 (not c!642173)) b!3715621))

(assert (= (or b!3715618 b!3715621) bm!269297))

(assert (= (or b!3715618 b!3715621) bm!269296))

(assert (= (or b!3715618 b!3715621) bm!269295))

(assert (= (or b!3715622 bm!269297) bm!269294))

(declare-fun m!4221387 () Bool)

(assert (=> bm!269294 m!4221387))

(declare-fun m!4221389 () Bool)

(assert (=> bm!269295 m!4221389))

(declare-fun m!4221391 () Bool)

(assert (=> bm!269296 m!4221391))

(assert (=> b!3714956 d!1087883))

(declare-fun d!1087885 () Bool)

(assert (=> d!1087885 (contains!7948 (usedCharacters!1118 (regOne!22222 r!26326)) c!13576)))

(declare-fun lt!1297392 () Unit!57508)

(declare-fun choose!22192 (Regex!10855 C!21896 List!39736) Unit!57508)

(assert (=> d!1087885 (= lt!1297392 (choose!22192 (regOne!22222 r!26326) c!13576 (_1!22744 lt!1297291)))))

(assert (=> d!1087885 (validRegex!4962 (regOne!22222 r!26326))))

(assert (=> d!1087885 (= (lemmaDerivativeAfterDerivativeStepIsNullableThenUsedCharsContainsHead!12 (regOne!22222 r!26326) c!13576 (_1!22744 lt!1297291)) lt!1297392)))

(declare-fun bs!574829 () Bool)

(assert (= bs!574829 d!1087885))

(assert (=> bs!574829 m!4220897))

(assert (=> bs!574829 m!4220897))

(assert (=> bs!574829 m!4220899))

(declare-fun m!4221393 () Bool)

(assert (=> bs!574829 m!4221393))

(assert (=> bs!574829 m!4220883))

(assert (=> b!3714956 d!1087885))

(declare-fun b!3715624 () Bool)

(declare-fun e!2300667 () List!39736)

(assert (=> b!3715624 (= e!2300667 Nil!39612)))

(declare-fun call!269304 () List!39736)

(declare-fun c!642180 () Bool)

(declare-fun bm!269298 () Bool)

(declare-fun c!642178 () Bool)

(assert (=> bm!269298 (= call!269304 (usedCharacters!1118 (ite c!642180 (reg!11184 (regOne!22222 r!26326)) (ite c!642178 (regOne!22223 (regOne!22222 r!26326)) (regOne!22222 (regOne!22222 r!26326))))))))

(declare-fun d!1087887 () Bool)

(declare-fun c!642179 () Bool)

(assert (=> d!1087887 (= c!642179 (or ((_ is EmptyExpr!10855) (regOne!22222 r!26326)) ((_ is EmptyLang!10855) (regOne!22222 r!26326))))))

(assert (=> d!1087887 (= (usedCharacters!1118 (regOne!22222 r!26326)) e!2300667)))

(declare-fun b!3715625 () Bool)

(declare-fun e!2300670 () List!39736)

(declare-fun e!2300669 () List!39736)

(assert (=> b!3715625 (= e!2300670 e!2300669)))

(assert (=> b!3715625 (= c!642178 ((_ is Union!10855) (regOne!22222 r!26326)))))

(declare-fun b!3715626 () Bool)

(declare-fun call!269303 () List!39736)

(assert (=> b!3715626 (= e!2300669 call!269303)))

(declare-fun b!3715627 () Bool)

(declare-fun e!2300668 () List!39736)

(assert (=> b!3715627 (= e!2300668 (Cons!39612 (c!641993 (regOne!22222 r!26326)) Nil!39612))))

(declare-fun bm!269299 () Bool)

(declare-fun call!269306 () List!39736)

(declare-fun call!269305 () List!39736)

(assert (=> bm!269299 (= call!269303 (++!9801 call!269306 call!269305))))

(declare-fun b!3715628 () Bool)

(assert (=> b!3715628 (= e!2300667 e!2300668)))

(declare-fun c!642181 () Bool)

(assert (=> b!3715628 (= c!642181 ((_ is ElementMatch!10855) (regOne!22222 r!26326)))))

(declare-fun b!3715629 () Bool)

(assert (=> b!3715629 (= e!2300669 call!269303)))

(declare-fun b!3715630 () Bool)

(assert (=> b!3715630 (= e!2300670 call!269304)))

(declare-fun bm!269300 () Bool)

(assert (=> bm!269300 (= call!269305 (usedCharacters!1118 (ite c!642178 (regTwo!22223 (regOne!22222 r!26326)) (regTwo!22222 (regOne!22222 r!26326)))))))

(declare-fun b!3715631 () Bool)

(assert (=> b!3715631 (= c!642180 ((_ is Star!10855) (regOne!22222 r!26326)))))

(assert (=> b!3715631 (= e!2300668 e!2300670)))

(declare-fun bm!269301 () Bool)

(assert (=> bm!269301 (= call!269306 call!269304)))

(assert (= (and d!1087887 c!642179) b!3715624))

(assert (= (and d!1087887 (not c!642179)) b!3715628))

(assert (= (and b!3715628 c!642181) b!3715627))

(assert (= (and b!3715628 (not c!642181)) b!3715631))

(assert (= (and b!3715631 c!642180) b!3715630))

(assert (= (and b!3715631 (not c!642180)) b!3715625))

(assert (= (and b!3715625 c!642178) b!3715626))

(assert (= (and b!3715625 (not c!642178)) b!3715629))

(assert (= (or b!3715626 b!3715629) bm!269301))

(assert (= (or b!3715626 b!3715629) bm!269300))

(assert (= (or b!3715626 b!3715629) bm!269299))

(assert (= (or b!3715630 bm!269301) bm!269298))

(declare-fun m!4221395 () Bool)

(assert (=> bm!269298 m!4221395))

(declare-fun m!4221397 () Bool)

(assert (=> bm!269299 m!4221397))

(declare-fun m!4221399 () Bool)

(assert (=> bm!269300 m!4221399))

(assert (=> b!3714956 d!1087887))

(declare-fun d!1087889 () Bool)

(declare-fun lt!1297395 () Bool)

(assert (=> d!1087889 (= lt!1297395 (select (content!5738 (usedCharacters!1118 r!26326)) c!13576))))

(declare-fun e!2300676 () Bool)

(assert (=> d!1087889 (= lt!1297395 e!2300676)))

(declare-fun res!1510530 () Bool)

(assert (=> d!1087889 (=> (not res!1510530) (not e!2300676))))

(assert (=> d!1087889 (= res!1510530 ((_ is Cons!39612) (usedCharacters!1118 r!26326)))))

(assert (=> d!1087889 (= (contains!7948 (usedCharacters!1118 r!26326) c!13576) lt!1297395)))

(declare-fun b!3715636 () Bool)

(declare-fun e!2300675 () Bool)

(assert (=> b!3715636 (= e!2300676 e!2300675)))

(declare-fun res!1510529 () Bool)

(assert (=> b!3715636 (=> res!1510529 e!2300675)))

(assert (=> b!3715636 (= res!1510529 (= (h!45032 (usedCharacters!1118 r!26326)) c!13576))))

(declare-fun b!3715637 () Bool)

(assert (=> b!3715637 (= e!2300675 (contains!7948 (t!302419 (usedCharacters!1118 r!26326)) c!13576))))

(assert (= (and d!1087889 res!1510530) b!3715636))

(assert (= (and b!3715636 (not res!1510529)) b!3715637))

(assert (=> d!1087889 m!4220893))

(declare-fun m!4221401 () Bool)

(assert (=> d!1087889 m!4221401))

(declare-fun m!4221403 () Bool)

(assert (=> d!1087889 m!4221403))

(declare-fun m!4221405 () Bool)

(assert (=> b!3715637 m!4221405))

(assert (=> b!3714956 d!1087889))

(declare-fun d!1087891 () Bool)

(declare-fun lt!1297396 () Bool)

(assert (=> d!1087891 (= lt!1297396 (select (content!5738 (usedCharacters!1118 (regOne!22222 r!26326))) c!13576))))

(declare-fun e!2300678 () Bool)

(assert (=> d!1087891 (= lt!1297396 e!2300678)))

(declare-fun res!1510532 () Bool)

(assert (=> d!1087891 (=> (not res!1510532) (not e!2300678))))

(assert (=> d!1087891 (= res!1510532 ((_ is Cons!39612) (usedCharacters!1118 (regOne!22222 r!26326))))))

(assert (=> d!1087891 (= (contains!7948 (usedCharacters!1118 (regOne!22222 r!26326)) c!13576) lt!1297396)))

(declare-fun b!3715638 () Bool)

(declare-fun e!2300677 () Bool)

(assert (=> b!3715638 (= e!2300678 e!2300677)))

(declare-fun res!1510531 () Bool)

(assert (=> b!3715638 (=> res!1510531 e!2300677)))

(assert (=> b!3715638 (= res!1510531 (= (h!45032 (usedCharacters!1118 (regOne!22222 r!26326))) c!13576))))

(declare-fun b!3715639 () Bool)

(assert (=> b!3715639 (= e!2300677 (contains!7948 (t!302419 (usedCharacters!1118 (regOne!22222 r!26326))) c!13576))))

(assert (= (and d!1087891 res!1510532) b!3715638))

(assert (= (and b!3715638 (not res!1510531)) b!3715639))

(assert (=> d!1087891 m!4220897))

(declare-fun m!4221407 () Bool)

(assert (=> d!1087891 m!4221407))

(declare-fun m!4221409 () Bool)

(assert (=> d!1087891 m!4221409))

(declare-fun m!4221411 () Bool)

(assert (=> b!3715639 m!4221411))

(assert (=> b!3714956 d!1087891))

(declare-fun b!3715644 () Bool)

(declare-fun e!2300681 () Bool)

(declare-fun tp!1130549 () Bool)

(assert (=> b!3715644 (= e!2300681 (and tp_is_empty!18725 tp!1130549))))

(assert (=> b!3714954 (= tp!1130503 e!2300681)))

(assert (= (and b!3714954 ((_ is Cons!39612) (t!302419 tl!3933))) b!3715644))

(declare-fun b!3715657 () Bool)

(declare-fun e!2300684 () Bool)

(declare-fun tp!1130563 () Bool)

(assert (=> b!3715657 (= e!2300684 tp!1130563)))

(declare-fun b!3715655 () Bool)

(assert (=> b!3715655 (= e!2300684 tp_is_empty!18725)))

(declare-fun b!3715658 () Bool)

(declare-fun tp!1130562 () Bool)

(declare-fun tp!1130564 () Bool)

(assert (=> b!3715658 (= e!2300684 (and tp!1130562 tp!1130564))))

(assert (=> b!3714955 (= tp!1130504 e!2300684)))

(declare-fun b!3715656 () Bool)

(declare-fun tp!1130560 () Bool)

(declare-fun tp!1130561 () Bool)

(assert (=> b!3715656 (= e!2300684 (and tp!1130560 tp!1130561))))

(assert (= (and b!3714955 ((_ is ElementMatch!10855) (regOne!22223 r!26326))) b!3715655))

(assert (= (and b!3714955 ((_ is Concat!17126) (regOne!22223 r!26326))) b!3715656))

(assert (= (and b!3714955 ((_ is Star!10855) (regOne!22223 r!26326))) b!3715657))

(assert (= (and b!3714955 ((_ is Union!10855) (regOne!22223 r!26326))) b!3715658))

(declare-fun b!3715661 () Bool)

(declare-fun e!2300685 () Bool)

(declare-fun tp!1130568 () Bool)

(assert (=> b!3715661 (= e!2300685 tp!1130568)))

(declare-fun b!3715659 () Bool)

(assert (=> b!3715659 (= e!2300685 tp_is_empty!18725)))

(declare-fun b!3715662 () Bool)

(declare-fun tp!1130567 () Bool)

(declare-fun tp!1130569 () Bool)

(assert (=> b!3715662 (= e!2300685 (and tp!1130567 tp!1130569))))

(assert (=> b!3714955 (= tp!1130508 e!2300685)))

(declare-fun b!3715660 () Bool)

(declare-fun tp!1130565 () Bool)

(declare-fun tp!1130566 () Bool)

(assert (=> b!3715660 (= e!2300685 (and tp!1130565 tp!1130566))))

(assert (= (and b!3714955 ((_ is ElementMatch!10855) (regTwo!22223 r!26326))) b!3715659))

(assert (= (and b!3714955 ((_ is Concat!17126) (regTwo!22223 r!26326))) b!3715660))

(assert (= (and b!3714955 ((_ is Star!10855) (regTwo!22223 r!26326))) b!3715661))

(assert (= (and b!3714955 ((_ is Union!10855) (regTwo!22223 r!26326))) b!3715662))

(declare-fun b!3715665 () Bool)

(declare-fun e!2300686 () Bool)

(declare-fun tp!1130573 () Bool)

(assert (=> b!3715665 (= e!2300686 tp!1130573)))

(declare-fun b!3715663 () Bool)

(assert (=> b!3715663 (= e!2300686 tp_is_empty!18725)))

(declare-fun b!3715666 () Bool)

(declare-fun tp!1130572 () Bool)

(declare-fun tp!1130574 () Bool)

(assert (=> b!3715666 (= e!2300686 (and tp!1130572 tp!1130574))))

(assert (=> b!3714957 (= tp!1130507 e!2300686)))

(declare-fun b!3715664 () Bool)

(declare-fun tp!1130570 () Bool)

(declare-fun tp!1130571 () Bool)

(assert (=> b!3715664 (= e!2300686 (and tp!1130570 tp!1130571))))

(assert (= (and b!3714957 ((_ is ElementMatch!10855) (reg!11184 r!26326))) b!3715663))

(assert (= (and b!3714957 ((_ is Concat!17126) (reg!11184 r!26326))) b!3715664))

(assert (= (and b!3714957 ((_ is Star!10855) (reg!11184 r!26326))) b!3715665))

(assert (= (and b!3714957 ((_ is Union!10855) (reg!11184 r!26326))) b!3715666))

(declare-fun b!3715669 () Bool)

(declare-fun e!2300687 () Bool)

(declare-fun tp!1130578 () Bool)

(assert (=> b!3715669 (= e!2300687 tp!1130578)))

(declare-fun b!3715667 () Bool)

(assert (=> b!3715667 (= e!2300687 tp_is_empty!18725)))

(declare-fun b!3715670 () Bool)

(declare-fun tp!1130577 () Bool)

(declare-fun tp!1130579 () Bool)

(assert (=> b!3715670 (= e!2300687 (and tp!1130577 tp!1130579))))

(assert (=> b!3714950 (= tp!1130506 e!2300687)))

(declare-fun b!3715668 () Bool)

(declare-fun tp!1130575 () Bool)

(declare-fun tp!1130576 () Bool)

(assert (=> b!3715668 (= e!2300687 (and tp!1130575 tp!1130576))))

(assert (= (and b!3714950 ((_ is ElementMatch!10855) (regOne!22222 r!26326))) b!3715667))

(assert (= (and b!3714950 ((_ is Concat!17126) (regOne!22222 r!26326))) b!3715668))

(assert (= (and b!3714950 ((_ is Star!10855) (regOne!22222 r!26326))) b!3715669))

(assert (= (and b!3714950 ((_ is Union!10855) (regOne!22222 r!26326))) b!3715670))

(declare-fun b!3715673 () Bool)

(declare-fun e!2300688 () Bool)

(declare-fun tp!1130583 () Bool)

(assert (=> b!3715673 (= e!2300688 tp!1130583)))

(declare-fun b!3715671 () Bool)

(assert (=> b!3715671 (= e!2300688 tp_is_empty!18725)))

(declare-fun b!3715674 () Bool)

(declare-fun tp!1130582 () Bool)

(declare-fun tp!1130584 () Bool)

(assert (=> b!3715674 (= e!2300688 (and tp!1130582 tp!1130584))))

(assert (=> b!3714950 (= tp!1130505 e!2300688)))

(declare-fun b!3715672 () Bool)

(declare-fun tp!1130580 () Bool)

(declare-fun tp!1130581 () Bool)

(assert (=> b!3715672 (= e!2300688 (and tp!1130580 tp!1130581))))

(assert (= (and b!3714950 ((_ is ElementMatch!10855) (regTwo!22222 r!26326))) b!3715671))

(assert (= (and b!3714950 ((_ is Concat!17126) (regTwo!22222 r!26326))) b!3715672))

(assert (= (and b!3714950 ((_ is Star!10855) (regTwo!22222 r!26326))) b!3715673))

(assert (= (and b!3714950 ((_ is Union!10855) (regTwo!22222 r!26326))) b!3715674))

(check-sat (not b!3715553) (not bm!269217) (not b!3715661) (not b!3715034) (not b!3715058) (not b!3715116) (not d!1087871) (not b!3715220) (not b!3715513) (not b!3715035) (not bm!269281) (not d!1087867) (not bm!269242) (not b!3715267) (not b!3715669) (not b!3715591) (not b!3715107) (not b!3715543) (not d!1087789) (not b!3715590) (not b!3715665) (not bm!269200) (not d!1087873) (not d!1087777) (not bm!269205) (not bm!269298) (not b!3715227) (not b!3715557) (not b!3715516) (not b!3715266) (not b!3715049) (not d!1087815) (not b!3715554) (not bm!269296) (not b!3715264) (not b!3715101) (not b!3715673) (not b!3715599) (not b!3715052) (not bm!269233) (not b!3715639) (not b!3715183) (not b!3715644) (not d!1087769) (not b!3715670) (not d!1087861) (not b!3715302) (not b!3715580) (not b!3715201) (not bm!269277) (not b!3715296) (not b!3715228) (not b!3715272) (not b!3715674) (not b!3715050) (not b!3715045) (not bm!269280) (not b!3715668) (not b!3715102) (not b!3715593) (not bm!269295) (not bm!269300) (not b!3715594) (not d!1087881) (not d!1087799) (not b!3715517) (not d!1087779) (not b!3715556) (not b!3715032) (not d!1087855) (not b!3715289) (not b!3715297) (not b!3715031) (not d!1087803) (not bm!269221) (not bm!269201) (not b!3715520) (not d!1087865) (not b!3715293) (not b!3715053) (not b!3715549) (not b!3715259) (not b!3715515) (not b!3715103) (not bm!269299) (not d!1087821) (not b!3715672) (not bm!269283) (not b!3715664) (not d!1087825) (not bm!269282) (not b!3715586) (not bm!269294) (not b!3715294) (not b!3715108) (not b!3715224) (not b!3715666) (not b!3715568) (not b!3715660) (not b!3715233) (not b!3715406) (not b!3715111) (not d!1087869) (not b!3715121) (not bm!269216) (not b!3715110) (not d!1087891) (not d!1087879) (not bm!269274) (not d!1087889) (not d!1087783) (not b!3715657) (not d!1087817) (not d!1087791) (not b!3715040) (not b!3715662) (not b!3715407) (not b!3715263) (not d!1087875) (not b!3715656) (not b!3715225) (not bm!269285) (not bm!269228) (not d!1087885) (not b!3715565) (not bm!269220) tp_is_empty!18725 (not d!1087773) (not b!3715637) (not d!1087801) (not b!3715563) (not b!3715658) (not b!3715562) (not b!3715027) (not bm!269275) (not b!3715514))
(check-sat)
(get-model)

(declare-fun d!1088049 () Bool)

(assert (=> d!1088049 (= (isEmpty!23507 (_2!22744 lt!1297291)) ((_ is Nil!39612) (_2!22744 lt!1297291)))))

(assert (=> bm!269201 d!1088049))

(declare-fun b!3716055 () Bool)

(declare-fun e!2300928 () Bool)

(assert (=> b!3716055 (= e!2300928 (= (head!8021 (tail!5748 tl!3933)) (c!641993 (derivativeStep!3320 lt!1297290 (head!8021 tl!3933)))))))

(declare-fun b!3716057 () Bool)

(declare-fun res!1510678 () Bool)

(declare-fun e!2300933 () Bool)

(assert (=> b!3716057 (=> res!1510678 e!2300933)))

(assert (=> b!3716057 (= res!1510678 (not ((_ is ElementMatch!10855) (derivativeStep!3320 lt!1297290 (head!8021 tl!3933)))))))

(declare-fun e!2300924 () Bool)

(assert (=> b!3716057 (= e!2300924 e!2300933)))

(declare-fun d!1088057 () Bool)

(declare-fun e!2300932 () Bool)

(assert (=> d!1088057 e!2300932))

(declare-fun c!642305 () Bool)

(assert (=> d!1088057 (= c!642305 ((_ is EmptyExpr!10855) (derivativeStep!3320 lt!1297290 (head!8021 tl!3933))))))

(declare-fun lt!1297432 () Bool)

(declare-fun e!2300923 () Bool)

(assert (=> d!1088057 (= lt!1297432 e!2300923)))

(declare-fun c!642304 () Bool)

(assert (=> d!1088057 (= c!642304 (isEmpty!23507 (tail!5748 tl!3933)))))

(assert (=> d!1088057 (validRegex!4962 (derivativeStep!3320 lt!1297290 (head!8021 tl!3933)))))

(assert (=> d!1088057 (= (matchR!5300 (derivativeStep!3320 lt!1297290 (head!8021 tl!3933)) (tail!5748 tl!3933)) lt!1297432)))

(declare-fun b!3716058 () Bool)

(declare-fun e!2300930 () Bool)

(declare-fun e!2300920 () Bool)

(assert (=> b!3716058 (= e!2300930 e!2300920)))

(declare-fun res!1510677 () Bool)

(assert (=> b!3716058 (=> res!1510677 e!2300920)))

(declare-fun call!269405 () Bool)

(assert (=> b!3716058 (= res!1510677 call!269405)))

(declare-fun b!3716060 () Bool)

(declare-fun res!1510674 () Bool)

(assert (=> b!3716060 (=> (not res!1510674) (not e!2300928))))

(assert (=> b!3716060 (= res!1510674 (not call!269405))))

(declare-fun bm!269401 () Bool)

(assert (=> bm!269401 (= call!269405 (isEmpty!23507 (tail!5748 tl!3933)))))

(declare-fun b!3716063 () Bool)

(assert (=> b!3716063 (= e!2300923 (nullable!3778 (derivativeStep!3320 lt!1297290 (head!8021 tl!3933))))))

(declare-fun b!3716064 () Bool)

(declare-fun res!1510681 () Bool)

(assert (=> b!3716064 (=> (not res!1510681) (not e!2300928))))

(assert (=> b!3716064 (= res!1510681 (isEmpty!23507 (tail!5748 (tail!5748 tl!3933))))))

(declare-fun b!3716066 () Bool)

(assert (=> b!3716066 (= e!2300932 (= lt!1297432 call!269405))))

(declare-fun b!3716068 () Bool)

(assert (=> b!3716068 (= e!2300923 (matchR!5300 (derivativeStep!3320 (derivativeStep!3320 lt!1297290 (head!8021 tl!3933)) (head!8021 (tail!5748 tl!3933))) (tail!5748 (tail!5748 tl!3933))))))

(declare-fun b!3716069 () Bool)

(assert (=> b!3716069 (= e!2300920 (not (= (head!8021 (tail!5748 tl!3933)) (c!641993 (derivativeStep!3320 lt!1297290 (head!8021 tl!3933))))))))

(declare-fun b!3716070 () Bool)

(assert (=> b!3716070 (= e!2300924 (not lt!1297432))))

(declare-fun b!3716071 () Bool)

(assert (=> b!3716071 (= e!2300933 e!2300930)))

(declare-fun res!1510682 () Bool)

(assert (=> b!3716071 (=> (not res!1510682) (not e!2300930))))

(assert (=> b!3716071 (= res!1510682 (not lt!1297432))))

(declare-fun b!3716072 () Bool)

(assert (=> b!3716072 (= e!2300932 e!2300924)))

(declare-fun c!642307 () Bool)

(assert (=> b!3716072 (= c!642307 ((_ is EmptyLang!10855) (derivativeStep!3320 lt!1297290 (head!8021 tl!3933))))))

(declare-fun b!3716073 () Bool)

(declare-fun res!1510670 () Bool)

(assert (=> b!3716073 (=> res!1510670 e!2300933)))

(assert (=> b!3716073 (= res!1510670 e!2300928)))

(declare-fun res!1510676 () Bool)

(assert (=> b!3716073 (=> (not res!1510676) (not e!2300928))))

(assert (=> b!3716073 (= res!1510676 lt!1297432)))

(declare-fun b!3716074 () Bool)

(declare-fun res!1510680 () Bool)

(assert (=> b!3716074 (=> res!1510680 e!2300920)))

(assert (=> b!3716074 (= res!1510680 (not (isEmpty!23507 (tail!5748 (tail!5748 tl!3933)))))))

(assert (= (and d!1088057 c!642304) b!3716063))

(assert (= (and d!1088057 (not c!642304)) b!3716068))

(assert (= (and d!1088057 c!642305) b!3716066))

(assert (= (and d!1088057 (not c!642305)) b!3716072))

(assert (= (and b!3716072 c!642307) b!3716070))

(assert (= (and b!3716072 (not c!642307)) b!3716057))

(assert (= (and b!3716057 (not res!1510678)) b!3716073))

(assert (= (and b!3716073 res!1510676) b!3716060))

(assert (= (and b!3716060 res!1510674) b!3716064))

(assert (= (and b!3716064 res!1510681) b!3716055))

(assert (= (and b!3716073 (not res!1510670)) b!3716071))

(assert (= (and b!3716071 res!1510682) b!3716058))

(assert (= (and b!3716058 (not res!1510677)) b!3716074))

(assert (= (and b!3716074 (not res!1510680)) b!3716069))

(assert (= (or b!3716066 b!3716058 b!3716060) bm!269401))

(assert (=> b!3716063 m!4220971))

(declare-fun m!4221801 () Bool)

(assert (=> b!3716063 m!4221801))

(assert (=> d!1088057 m!4220973))

(assert (=> d!1088057 m!4220977))

(assert (=> d!1088057 m!4220971))

(declare-fun m!4221807 () Bool)

(assert (=> d!1088057 m!4221807))

(assert (=> bm!269401 m!4220973))

(assert (=> bm!269401 m!4220977))

(assert (=> b!3716068 m!4220973))

(declare-fun m!4221811 () Bool)

(assert (=> b!3716068 m!4221811))

(assert (=> b!3716068 m!4220971))

(assert (=> b!3716068 m!4221811))

(declare-fun m!4221815 () Bool)

(assert (=> b!3716068 m!4221815))

(assert (=> b!3716068 m!4220973))

(declare-fun m!4221819 () Bool)

(assert (=> b!3716068 m!4221819))

(assert (=> b!3716068 m!4221815))

(assert (=> b!3716068 m!4221819))

(declare-fun m!4221823 () Bool)

(assert (=> b!3716068 m!4221823))

(assert (=> b!3716055 m!4220973))

(assert (=> b!3716055 m!4221811))

(assert (=> b!3716074 m!4220973))

(assert (=> b!3716074 m!4221819))

(assert (=> b!3716074 m!4221819))

(declare-fun m!4221825 () Bool)

(assert (=> b!3716074 m!4221825))

(assert (=> b!3716064 m!4220973))

(assert (=> b!3716064 m!4221819))

(assert (=> b!3716064 m!4221819))

(assert (=> b!3716064 m!4221825))

(assert (=> b!3716069 m!4220973))

(assert (=> b!3716069 m!4221811))

(assert (=> b!3715034 d!1088057))

(declare-fun b!3716099 () Bool)

(declare-fun e!2300946 () Regex!10855)

(declare-fun e!2300949 () Regex!10855)

(assert (=> b!3716099 (= e!2300946 e!2300949)))

(declare-fun c!642319 () Bool)

(assert (=> b!3716099 (= c!642319 ((_ is ElementMatch!10855) lt!1297290))))

(declare-fun b!3716100 () Bool)

(declare-fun c!642318 () Bool)

(assert (=> b!3716100 (= c!642318 (nullable!3778 (regOne!22222 lt!1297290)))))

(declare-fun e!2300947 () Regex!10855)

(declare-fun e!2300950 () Regex!10855)

(assert (=> b!3716100 (= e!2300947 e!2300950)))

(declare-fun bm!269408 () Bool)

(declare-fun call!269414 () Regex!10855)

(declare-fun call!269416 () Regex!10855)

(assert (=> bm!269408 (= call!269414 call!269416)))

(declare-fun b!3716101 () Bool)

(declare-fun c!642316 () Bool)

(assert (=> b!3716101 (= c!642316 ((_ is Union!10855) lt!1297290))))

(declare-fun e!2300948 () Regex!10855)

(assert (=> b!3716101 (= e!2300949 e!2300948)))

(declare-fun b!3716102 () Bool)

(declare-fun call!269413 () Regex!10855)

(assert (=> b!3716102 (= e!2300948 (Union!10855 call!269416 call!269413))))

(declare-fun b!3716103 () Bool)

(assert (=> b!3716103 (= e!2300946 EmptyLang!10855)))

(declare-fun b!3716104 () Bool)

(assert (=> b!3716104 (= e!2300949 (ite (= (head!8021 tl!3933) (c!641993 lt!1297290)) EmptyExpr!10855 EmptyLang!10855))))

(declare-fun bm!269409 () Bool)

(declare-fun call!269415 () Regex!10855)

(assert (=> bm!269409 (= call!269415 call!269413)))

(declare-fun b!3716105 () Bool)

(assert (=> b!3716105 (= e!2300948 e!2300947)))

(declare-fun c!642320 () Bool)

(assert (=> b!3716105 (= c!642320 ((_ is Star!10855) lt!1297290))))

(declare-fun bm!269410 () Bool)

(assert (=> bm!269410 (= call!269413 (derivativeStep!3320 (ite c!642316 (regTwo!22223 lt!1297290) (ite c!642320 (reg!11184 lt!1297290) (regTwo!22222 lt!1297290))) (head!8021 tl!3933)))))

(declare-fun bm!269411 () Bool)

(assert (=> bm!269411 (= call!269416 (derivativeStep!3320 (ite c!642316 (regOne!22223 lt!1297290) (regOne!22222 lt!1297290)) (head!8021 tl!3933)))))

(declare-fun b!3716107 () Bool)

(assert (=> b!3716107 (= e!2300947 (Concat!17126 call!269415 lt!1297290))))

(declare-fun b!3716108 () Bool)

(assert (=> b!3716108 (= e!2300950 (Union!10855 (Concat!17126 call!269414 (regTwo!22222 lt!1297290)) EmptyLang!10855))))

(declare-fun b!3716106 () Bool)

(assert (=> b!3716106 (= e!2300950 (Union!10855 (Concat!17126 call!269414 (regTwo!22222 lt!1297290)) call!269415))))

(declare-fun d!1088067 () Bool)

(declare-fun lt!1297435 () Regex!10855)

(assert (=> d!1088067 (validRegex!4962 lt!1297435)))

(assert (=> d!1088067 (= lt!1297435 e!2300946)))

(declare-fun c!642317 () Bool)

(assert (=> d!1088067 (= c!642317 (or ((_ is EmptyExpr!10855) lt!1297290) ((_ is EmptyLang!10855) lt!1297290)))))

(assert (=> d!1088067 (validRegex!4962 lt!1297290)))

(assert (=> d!1088067 (= (derivativeStep!3320 lt!1297290 (head!8021 tl!3933)) lt!1297435)))

(assert (= (and d!1088067 c!642317) b!3716103))

(assert (= (and d!1088067 (not c!642317)) b!3716099))

(assert (= (and b!3716099 c!642319) b!3716104))

(assert (= (and b!3716099 (not c!642319)) b!3716101))

(assert (= (and b!3716101 c!642316) b!3716102))

(assert (= (and b!3716101 (not c!642316)) b!3716105))

(assert (= (and b!3716105 c!642320) b!3716107))

(assert (= (and b!3716105 (not c!642320)) b!3716100))

(assert (= (and b!3716100 c!642318) b!3716106))

(assert (= (and b!3716100 (not c!642318)) b!3716108))

(assert (= (or b!3716106 b!3716108) bm!269408))

(assert (= (or b!3716107 b!3716106) bm!269409))

(assert (= (or b!3716102 bm!269409) bm!269410))

(assert (= (or b!3716102 bm!269408) bm!269411))

(declare-fun m!4221835 () Bool)

(assert (=> b!3716100 m!4221835))

(assert (=> bm!269410 m!4220969))

(declare-fun m!4221837 () Bool)

(assert (=> bm!269410 m!4221837))

(assert (=> bm!269411 m!4220969))

(declare-fun m!4221841 () Bool)

(assert (=> bm!269411 m!4221841))

(declare-fun m!4221845 () Bool)

(assert (=> d!1088067 m!4221845))

(assert (=> d!1088067 m!4220967))

(assert (=> b!3715034 d!1088067))

(declare-fun d!1088073 () Bool)

(assert (=> d!1088073 (= (head!8021 tl!3933) (h!45032 tl!3933))))

(assert (=> b!3715034 d!1088073))

(declare-fun d!1088079 () Bool)

(assert (=> d!1088079 (= (tail!5748 tl!3933) (t!302419 tl!3933))))

(assert (=> b!3715034 d!1088079))

(declare-fun d!1088081 () Bool)

(assert (=> d!1088081 (= (matchR!5300 lt!1297287 tl!3933) (matchR!5300 (derivative!369 lt!1297287 tl!3933) Nil!39612))))

(assert (=> d!1088081 true))

(declare-fun _$108!427 () Unit!57508)

(assert (=> d!1088081 (= (choose!22190 lt!1297287 tl!3933) _$108!427)))

(declare-fun bs!574843 () Bool)

(assert (= bs!574843 d!1088081))

(assert (=> bs!574843 m!4220907))

(assert (=> bs!574843 m!4220903))

(assert (=> bs!574843 m!4220903))

(assert (=> bs!574843 m!4220915))

(assert (=> d!1087803 d!1088081))

(assert (=> d!1087803 d!1087801))

(assert (=> d!1087803 d!1087789))

(assert (=> d!1087803 d!1087815))

(declare-fun b!3716169 () Bool)

(declare-fun res!1510709 () Bool)

(declare-fun e!2300985 () Bool)

(assert (=> b!3716169 (=> (not res!1510709) (not e!2300985))))

(declare-fun call!269433 () Bool)

(assert (=> b!3716169 (= res!1510709 call!269433)))

(declare-fun e!2300981 () Bool)

(assert (=> b!3716169 (= e!2300981 e!2300985)))

(declare-fun b!3716170 () Bool)

(declare-fun call!269432 () Bool)

(assert (=> b!3716170 (= e!2300985 call!269432)))

(declare-fun b!3716171 () Bool)

(declare-fun e!2300983 () Bool)

(declare-fun call!269431 () Bool)

(assert (=> b!3716171 (= e!2300983 call!269431)))

(declare-fun d!1088095 () Bool)

(declare-fun res!1510711 () Bool)

(declare-fun e!2300984 () Bool)

(assert (=> d!1088095 (=> res!1510711 e!2300984)))

(assert (=> d!1088095 (= res!1510711 ((_ is ElementMatch!10855) lt!1297287))))

(assert (=> d!1088095 (= (validRegex!4962 lt!1297287) e!2300984)))

(declare-fun b!3716172 () Bool)

(declare-fun e!2300986 () Bool)

(assert (=> b!3716172 (= e!2300986 e!2300983)))

(declare-fun res!1510712 () Bool)

(assert (=> b!3716172 (= res!1510712 (not (nullable!3778 (reg!11184 lt!1297287))))))

(assert (=> b!3716172 (=> (not res!1510712) (not e!2300983))))

(declare-fun b!3716173 () Bool)

(assert (=> b!3716173 (= e!2300984 e!2300986)))

(declare-fun c!642342 () Bool)

(assert (=> b!3716173 (= c!642342 ((_ is Star!10855) lt!1297287))))

(declare-fun b!3716174 () Bool)

(declare-fun e!2300982 () Bool)

(declare-fun e!2300987 () Bool)

(assert (=> b!3716174 (= e!2300982 e!2300987)))

(declare-fun res!1510713 () Bool)

(assert (=> b!3716174 (=> (not res!1510713) (not e!2300987))))

(assert (=> b!3716174 (= res!1510713 call!269432)))

(declare-fun b!3716175 () Bool)

(declare-fun res!1510710 () Bool)

(assert (=> b!3716175 (=> res!1510710 e!2300982)))

(assert (=> b!3716175 (= res!1510710 (not ((_ is Concat!17126) lt!1297287)))))

(assert (=> b!3716175 (= e!2300981 e!2300982)))

(declare-fun c!642343 () Bool)

(declare-fun bm!269426 () Bool)

(assert (=> bm!269426 (= call!269431 (validRegex!4962 (ite c!642342 (reg!11184 lt!1297287) (ite c!642343 (regTwo!22223 lt!1297287) (regOne!22222 lt!1297287)))))))

(declare-fun b!3716176 () Bool)

(assert (=> b!3716176 (= e!2300987 call!269433)))

(declare-fun bm!269427 () Bool)

(assert (=> bm!269427 (= call!269433 (validRegex!4962 (ite c!642343 (regOne!22223 lt!1297287) (regTwo!22222 lt!1297287))))))

(declare-fun bm!269428 () Bool)

(assert (=> bm!269428 (= call!269432 call!269431)))

(declare-fun b!3716177 () Bool)

(assert (=> b!3716177 (= e!2300986 e!2300981)))

(assert (=> b!3716177 (= c!642343 ((_ is Union!10855) lt!1297287))))

(assert (= (and d!1088095 (not res!1510711)) b!3716173))

(assert (= (and b!3716173 c!642342) b!3716172))

(assert (= (and b!3716173 (not c!642342)) b!3716177))

(assert (= (and b!3716172 res!1510712) b!3716171))

(assert (= (and b!3716177 c!642343) b!3716169))

(assert (= (and b!3716177 (not c!642343)) b!3716175))

(assert (= (and b!3716169 res!1510709) b!3716170))

(assert (= (and b!3716175 (not res!1510710)) b!3716174))

(assert (= (and b!3716174 res!1510713) b!3716176))

(assert (= (or b!3716170 b!3716174) bm!269428))

(assert (= (or b!3716169 b!3716176) bm!269427))

(assert (= (or b!3716171 bm!269428) bm!269426))

(declare-fun m!4221903 () Bool)

(assert (=> b!3716172 m!4221903))

(declare-fun m!4221905 () Bool)

(assert (=> bm!269426 m!4221905))

(declare-fun m!4221907 () Bool)

(assert (=> bm!269427 m!4221907))

(assert (=> d!1087803 d!1088095))

(assert (=> d!1087779 d!1087783))

(declare-fun d!1088101 () Bool)

(declare-fun e!2301002 () Bool)

(assert (=> d!1088101 e!2301002))

(declare-fun res!1510724 () Bool)

(assert (=> d!1088101 (=> res!1510724 e!2301002)))

(assert (=> d!1088101 (= res!1510724 (matchR!5300 lt!1297297 tl!3933))))

(assert (=> d!1088101 true))

(declare-fun _$116!388 () Unit!57508)

(assert (=> d!1088101 (= (choose!22188 lt!1297297 lt!1297290 tl!3933) _$116!388)))

(declare-fun b!3716204 () Bool)

(assert (=> b!3716204 (= e!2301002 (matchR!5300 lt!1297290 tl!3933))))

(assert (= (and d!1088101 (not res!1510724)) b!3716204))

(assert (=> d!1088101 m!4220901))

(assert (=> b!3716204 m!4220943))

(assert (=> d!1087779 d!1088101))

(declare-fun b!3716205 () Bool)

(declare-fun res!1510725 () Bool)

(declare-fun e!2301007 () Bool)

(assert (=> b!3716205 (=> (not res!1510725) (not e!2301007))))

(declare-fun call!269441 () Bool)

(assert (=> b!3716205 (= res!1510725 call!269441)))

(declare-fun e!2301003 () Bool)

(assert (=> b!3716205 (= e!2301003 e!2301007)))

(declare-fun b!3716206 () Bool)

(declare-fun call!269440 () Bool)

(assert (=> b!3716206 (= e!2301007 call!269440)))

(declare-fun b!3716207 () Bool)

(declare-fun e!2301005 () Bool)

(declare-fun call!269439 () Bool)

(assert (=> b!3716207 (= e!2301005 call!269439)))

(declare-fun d!1088109 () Bool)

(declare-fun res!1510727 () Bool)

(declare-fun e!2301006 () Bool)

(assert (=> d!1088109 (=> res!1510727 e!2301006)))

(assert (=> d!1088109 (= res!1510727 ((_ is ElementMatch!10855) lt!1297297))))

(assert (=> d!1088109 (= (validRegex!4962 lt!1297297) e!2301006)))

(declare-fun b!3716208 () Bool)

(declare-fun e!2301008 () Bool)

(assert (=> b!3716208 (= e!2301008 e!2301005)))

(declare-fun res!1510728 () Bool)

(assert (=> b!3716208 (= res!1510728 (not (nullable!3778 (reg!11184 lt!1297297))))))

(assert (=> b!3716208 (=> (not res!1510728) (not e!2301005))))

(declare-fun b!3716209 () Bool)

(assert (=> b!3716209 (= e!2301006 e!2301008)))

(declare-fun c!642352 () Bool)

(assert (=> b!3716209 (= c!642352 ((_ is Star!10855) lt!1297297))))

(declare-fun b!3716210 () Bool)

(declare-fun e!2301004 () Bool)

(declare-fun e!2301009 () Bool)

(assert (=> b!3716210 (= e!2301004 e!2301009)))

(declare-fun res!1510729 () Bool)

(assert (=> b!3716210 (=> (not res!1510729) (not e!2301009))))

(assert (=> b!3716210 (= res!1510729 call!269440)))

(declare-fun b!3716211 () Bool)

(declare-fun res!1510726 () Bool)

(assert (=> b!3716211 (=> res!1510726 e!2301004)))

(assert (=> b!3716211 (= res!1510726 (not ((_ is Concat!17126) lt!1297297)))))

(assert (=> b!3716211 (= e!2301003 e!2301004)))

(declare-fun bm!269434 () Bool)

(declare-fun c!642353 () Bool)

(assert (=> bm!269434 (= call!269439 (validRegex!4962 (ite c!642352 (reg!11184 lt!1297297) (ite c!642353 (regTwo!22223 lt!1297297) (regOne!22222 lt!1297297)))))))

(declare-fun b!3716212 () Bool)

(assert (=> b!3716212 (= e!2301009 call!269441)))

(declare-fun bm!269435 () Bool)

(assert (=> bm!269435 (= call!269441 (validRegex!4962 (ite c!642353 (regOne!22223 lt!1297297) (regTwo!22222 lt!1297297))))))

(declare-fun bm!269436 () Bool)

(assert (=> bm!269436 (= call!269440 call!269439)))

(declare-fun b!3716213 () Bool)

(assert (=> b!3716213 (= e!2301008 e!2301003)))

(assert (=> b!3716213 (= c!642353 ((_ is Union!10855) lt!1297297))))

(assert (= (and d!1088109 (not res!1510727)) b!3716209))

(assert (= (and b!3716209 c!642352) b!3716208))

(assert (= (and b!3716209 (not c!642352)) b!3716213))

(assert (= (and b!3716208 res!1510728) b!3716207))

(assert (= (and b!3716213 c!642353) b!3716205))

(assert (= (and b!3716213 (not c!642353)) b!3716211))

(assert (= (and b!3716205 res!1510725) b!3716206))

(assert (= (and b!3716211 (not res!1510726)) b!3716210))

(assert (= (and b!3716210 res!1510729) b!3716212))

(assert (= (or b!3716206 b!3716210) bm!269436))

(assert (= (or b!3716205 b!3716212) bm!269435))

(assert (= (or b!3716207 bm!269436) bm!269434))

(declare-fun m!4221925 () Bool)

(assert (=> b!3716208 m!4221925))

(declare-fun m!4221927 () Bool)

(assert (=> bm!269434 m!4221927))

(declare-fun m!4221929 () Bool)

(assert (=> bm!269435 m!4221929))

(assert (=> d!1087779 d!1088109))

(declare-fun b!3716223 () Bool)

(declare-fun e!2301017 () Regex!10855)

(declare-fun e!2301020 () Regex!10855)

(assert (=> b!3716223 (= e!2301017 e!2301020)))

(declare-fun c!642359 () Bool)

(assert (=> b!3716223 (= c!642359 ((_ is ElementMatch!10855) (ite c!642065 (regTwo!22223 (regOne!22222 r!26326)) (ite c!642069 (reg!11184 (regOne!22222 r!26326)) (regTwo!22222 (regOne!22222 r!26326))))))))

(declare-fun c!642358 () Bool)

(declare-fun b!3716224 () Bool)

(assert (=> b!3716224 (= c!642358 (nullable!3778 (regOne!22222 (ite c!642065 (regTwo!22223 (regOne!22222 r!26326)) (ite c!642069 (reg!11184 (regOne!22222 r!26326)) (regTwo!22222 (regOne!22222 r!26326)))))))))

(declare-fun e!2301018 () Regex!10855)

(declare-fun e!2301021 () Regex!10855)

(assert (=> b!3716224 (= e!2301018 e!2301021)))

(declare-fun bm!269440 () Bool)

(declare-fun call!269446 () Regex!10855)

(declare-fun call!269448 () Regex!10855)

(assert (=> bm!269440 (= call!269446 call!269448)))

(declare-fun c!642356 () Bool)

(declare-fun b!3716225 () Bool)

(assert (=> b!3716225 (= c!642356 ((_ is Union!10855) (ite c!642065 (regTwo!22223 (regOne!22222 r!26326)) (ite c!642069 (reg!11184 (regOne!22222 r!26326)) (regTwo!22222 (regOne!22222 r!26326))))))))

(declare-fun e!2301019 () Regex!10855)

(assert (=> b!3716225 (= e!2301020 e!2301019)))

(declare-fun b!3716226 () Bool)

(declare-fun call!269445 () Regex!10855)

(assert (=> b!3716226 (= e!2301019 (Union!10855 call!269448 call!269445))))

(declare-fun b!3716227 () Bool)

(assert (=> b!3716227 (= e!2301017 EmptyLang!10855)))

(declare-fun b!3716228 () Bool)

(assert (=> b!3716228 (= e!2301020 (ite (= c!13576 (c!641993 (ite c!642065 (regTwo!22223 (regOne!22222 r!26326)) (ite c!642069 (reg!11184 (regOne!22222 r!26326)) (regTwo!22222 (regOne!22222 r!26326)))))) EmptyExpr!10855 EmptyLang!10855))))

(declare-fun bm!269441 () Bool)

(declare-fun call!269447 () Regex!10855)

(assert (=> bm!269441 (= call!269447 call!269445)))

(declare-fun b!3716229 () Bool)

(assert (=> b!3716229 (= e!2301019 e!2301018)))

(declare-fun c!642360 () Bool)

(assert (=> b!3716229 (= c!642360 ((_ is Star!10855) (ite c!642065 (regTwo!22223 (regOne!22222 r!26326)) (ite c!642069 (reg!11184 (regOne!22222 r!26326)) (regTwo!22222 (regOne!22222 r!26326))))))))

(declare-fun bm!269442 () Bool)

(assert (=> bm!269442 (= call!269445 (derivativeStep!3320 (ite c!642356 (regTwo!22223 (ite c!642065 (regTwo!22223 (regOne!22222 r!26326)) (ite c!642069 (reg!11184 (regOne!22222 r!26326)) (regTwo!22222 (regOne!22222 r!26326))))) (ite c!642360 (reg!11184 (ite c!642065 (regTwo!22223 (regOne!22222 r!26326)) (ite c!642069 (reg!11184 (regOne!22222 r!26326)) (regTwo!22222 (regOne!22222 r!26326))))) (regTwo!22222 (ite c!642065 (regTwo!22223 (regOne!22222 r!26326)) (ite c!642069 (reg!11184 (regOne!22222 r!26326)) (regTwo!22222 (regOne!22222 r!26326))))))) c!13576))))

(declare-fun bm!269443 () Bool)

(assert (=> bm!269443 (= call!269448 (derivativeStep!3320 (ite c!642356 (regOne!22223 (ite c!642065 (regTwo!22223 (regOne!22222 r!26326)) (ite c!642069 (reg!11184 (regOne!22222 r!26326)) (regTwo!22222 (regOne!22222 r!26326))))) (regOne!22222 (ite c!642065 (regTwo!22223 (regOne!22222 r!26326)) (ite c!642069 (reg!11184 (regOne!22222 r!26326)) (regTwo!22222 (regOne!22222 r!26326)))))) c!13576))))

(declare-fun b!3716231 () Bool)

(assert (=> b!3716231 (= e!2301018 (Concat!17126 call!269447 (ite c!642065 (regTwo!22223 (regOne!22222 r!26326)) (ite c!642069 (reg!11184 (regOne!22222 r!26326)) (regTwo!22222 (regOne!22222 r!26326))))))))

(declare-fun b!3716232 () Bool)

(assert (=> b!3716232 (= e!2301021 (Union!10855 (Concat!17126 call!269446 (regTwo!22222 (ite c!642065 (regTwo!22223 (regOne!22222 r!26326)) (ite c!642069 (reg!11184 (regOne!22222 r!26326)) (regTwo!22222 (regOne!22222 r!26326)))))) EmptyLang!10855))))

(declare-fun b!3716230 () Bool)

(assert (=> b!3716230 (= e!2301021 (Union!10855 (Concat!17126 call!269446 (regTwo!22222 (ite c!642065 (regTwo!22223 (regOne!22222 r!26326)) (ite c!642069 (reg!11184 (regOne!22222 r!26326)) (regTwo!22222 (regOne!22222 r!26326)))))) call!269447))))

(declare-fun d!1088113 () Bool)

(declare-fun lt!1297442 () Regex!10855)

(assert (=> d!1088113 (validRegex!4962 lt!1297442)))

(assert (=> d!1088113 (= lt!1297442 e!2301017)))

(declare-fun c!642357 () Bool)

(assert (=> d!1088113 (= c!642357 (or ((_ is EmptyExpr!10855) (ite c!642065 (regTwo!22223 (regOne!22222 r!26326)) (ite c!642069 (reg!11184 (regOne!22222 r!26326)) (regTwo!22222 (regOne!22222 r!26326))))) ((_ is EmptyLang!10855) (ite c!642065 (regTwo!22223 (regOne!22222 r!26326)) (ite c!642069 (reg!11184 (regOne!22222 r!26326)) (regTwo!22222 (regOne!22222 r!26326)))))))))

(assert (=> d!1088113 (validRegex!4962 (ite c!642065 (regTwo!22223 (regOne!22222 r!26326)) (ite c!642069 (reg!11184 (regOne!22222 r!26326)) (regTwo!22222 (regOne!22222 r!26326)))))))

(assert (=> d!1088113 (= (derivativeStep!3320 (ite c!642065 (regTwo!22223 (regOne!22222 r!26326)) (ite c!642069 (reg!11184 (regOne!22222 r!26326)) (regTwo!22222 (regOne!22222 r!26326)))) c!13576) lt!1297442)))

(assert (= (and d!1088113 c!642357) b!3716227))

(assert (= (and d!1088113 (not c!642357)) b!3716223))

(assert (= (and b!3716223 c!642359) b!3716228))

(assert (= (and b!3716223 (not c!642359)) b!3716225))

(assert (= (and b!3716225 c!642356) b!3716226))

(assert (= (and b!3716225 (not c!642356)) b!3716229))

(assert (= (and b!3716229 c!642360) b!3716231))

(assert (= (and b!3716229 (not c!642360)) b!3716224))

(assert (= (and b!3716224 c!642358) b!3716230))

(assert (= (and b!3716224 (not c!642358)) b!3716232))

(assert (= (or b!3716230 b!3716232) bm!269440))

(assert (= (or b!3716231 b!3716230) bm!269441))

(assert (= (or b!3716226 bm!269441) bm!269442))

(assert (= (or b!3716226 bm!269440) bm!269443))

(declare-fun m!4221943 () Bool)

(assert (=> b!3716224 m!4221943))

(declare-fun m!4221945 () Bool)

(assert (=> bm!269442 m!4221945))

(declare-fun m!4221947 () Bool)

(assert (=> bm!269443 m!4221947))

(declare-fun m!4221949 () Bool)

(assert (=> d!1088113 m!4221949))

(declare-fun m!4221951 () Bool)

(assert (=> d!1088113 m!4221951))

(assert (=> bm!269220 d!1088113))

(declare-fun d!1088119 () Bool)

(assert (not d!1088119))

(assert (=> b!3715259 d!1088119))

(declare-fun d!1088121 () Bool)

(assert (=> d!1088121 (= (isEmpty!23507 Nil!39612) true)))

(assert (=> d!1087815 d!1088121))

(declare-fun b!3716266 () Bool)

(declare-fun res!1510748 () Bool)

(declare-fun e!2301045 () Bool)

(assert (=> b!3716266 (=> (not res!1510748) (not e!2301045))))

(declare-fun call!269459 () Bool)

(assert (=> b!3716266 (= res!1510748 call!269459)))

(declare-fun e!2301041 () Bool)

(assert (=> b!3716266 (= e!2301041 e!2301045)))

(declare-fun b!3716267 () Bool)

(declare-fun call!269458 () Bool)

(assert (=> b!3716267 (= e!2301045 call!269458)))

(declare-fun b!3716268 () Bool)

(declare-fun e!2301043 () Bool)

(declare-fun call!269457 () Bool)

(assert (=> b!3716268 (= e!2301043 call!269457)))

(declare-fun d!1088125 () Bool)

(declare-fun res!1510750 () Bool)

(declare-fun e!2301044 () Bool)

(assert (=> d!1088125 (=> res!1510750 e!2301044)))

(assert (=> d!1088125 (= res!1510750 ((_ is ElementMatch!10855) (derivative!369 lt!1297287 tl!3933)))))

(assert (=> d!1088125 (= (validRegex!4962 (derivative!369 lt!1297287 tl!3933)) e!2301044)))

(declare-fun b!3716269 () Bool)

(declare-fun e!2301046 () Bool)

(assert (=> b!3716269 (= e!2301046 e!2301043)))

(declare-fun res!1510751 () Bool)

(assert (=> b!3716269 (= res!1510751 (not (nullable!3778 (reg!11184 (derivative!369 lt!1297287 tl!3933)))))))

(assert (=> b!3716269 (=> (not res!1510751) (not e!2301043))))

(declare-fun b!3716270 () Bool)

(assert (=> b!3716270 (= e!2301044 e!2301046)))

(declare-fun c!642371 () Bool)

(assert (=> b!3716270 (= c!642371 ((_ is Star!10855) (derivative!369 lt!1297287 tl!3933)))))

(declare-fun b!3716271 () Bool)

(declare-fun e!2301042 () Bool)

(declare-fun e!2301047 () Bool)

(assert (=> b!3716271 (= e!2301042 e!2301047)))

(declare-fun res!1510752 () Bool)

(assert (=> b!3716271 (=> (not res!1510752) (not e!2301047))))

(assert (=> b!3716271 (= res!1510752 call!269458)))

(declare-fun b!3716272 () Bool)

(declare-fun res!1510749 () Bool)

(assert (=> b!3716272 (=> res!1510749 e!2301042)))

(assert (=> b!3716272 (= res!1510749 (not ((_ is Concat!17126) (derivative!369 lt!1297287 tl!3933))))))

(assert (=> b!3716272 (= e!2301041 e!2301042)))

(declare-fun bm!269452 () Bool)

(declare-fun c!642372 () Bool)

(assert (=> bm!269452 (= call!269457 (validRegex!4962 (ite c!642371 (reg!11184 (derivative!369 lt!1297287 tl!3933)) (ite c!642372 (regTwo!22223 (derivative!369 lt!1297287 tl!3933)) (regOne!22222 (derivative!369 lt!1297287 tl!3933))))))))

(declare-fun b!3716273 () Bool)

(assert (=> b!3716273 (= e!2301047 call!269459)))

(declare-fun bm!269453 () Bool)

(assert (=> bm!269453 (= call!269459 (validRegex!4962 (ite c!642372 (regOne!22223 (derivative!369 lt!1297287 tl!3933)) (regTwo!22222 (derivative!369 lt!1297287 tl!3933)))))))

(declare-fun bm!269454 () Bool)

(assert (=> bm!269454 (= call!269458 call!269457)))

(declare-fun b!3716274 () Bool)

(assert (=> b!3716274 (= e!2301046 e!2301041)))

(assert (=> b!3716274 (= c!642372 ((_ is Union!10855) (derivative!369 lt!1297287 tl!3933)))))

(assert (= (and d!1088125 (not res!1510750)) b!3716270))

(assert (= (and b!3716270 c!642371) b!3716269))

(assert (= (and b!3716270 (not c!642371)) b!3716274))

(assert (= (and b!3716269 res!1510751) b!3716268))

(assert (= (and b!3716274 c!642372) b!3716266))

(assert (= (and b!3716274 (not c!642372)) b!3716272))

(assert (= (and b!3716266 res!1510748) b!3716267))

(assert (= (and b!3716272 (not res!1510749)) b!3716271))

(assert (= (and b!3716271 res!1510752) b!3716273))

(assert (= (or b!3716267 b!3716271) bm!269454))

(assert (= (or b!3716266 b!3716273) bm!269453))

(assert (= (or b!3716268 bm!269454) bm!269452))

(declare-fun m!4221969 () Bool)

(assert (=> b!3716269 m!4221969))

(declare-fun m!4221971 () Bool)

(assert (=> bm!269452 m!4221971))

(declare-fun m!4221973 () Bool)

(assert (=> bm!269453 m!4221973))

(assert (=> d!1087815 d!1088125))

(declare-fun d!1088129 () Bool)

(assert (=> d!1088129 (= (isDefined!6749 (findConcatSeparation!1260 lt!1297295 (regTwo!22222 r!26326) Nil!39612 tl!3933 tl!3933)) (not (isEmpty!23508 (findConcatSeparation!1260 lt!1297295 (regTwo!22222 r!26326) Nil!39612 tl!3933 tl!3933))))))

(declare-fun bs!574848 () Bool)

(assert (= bs!574848 d!1088129))

(assert (=> bs!574848 m!4220925))

(declare-fun m!4221985 () Bool)

(assert (=> bs!574848 m!4221985))

(assert (=> d!1087855 d!1088129))

(assert (=> d!1087855 d!1087861))

(declare-fun d!1088133 () Bool)

(assert (=> d!1088133 (isDefined!6749 (findConcatSeparation!1260 lt!1297295 (regTwo!22222 r!26326) Nil!39612 tl!3933 tl!3933))))

(assert (=> d!1088133 true))

(declare-fun _$122!361 () Unit!57508)

(assert (=> d!1088133 (= (choose!22191 lt!1297295 (regTwo!22222 r!26326) tl!3933) _$122!361)))

(declare-fun bs!574849 () Bool)

(assert (= bs!574849 d!1088133))

(assert (=> bs!574849 m!4220925))

(assert (=> bs!574849 m!4220925))

(assert (=> bs!574849 m!4221303))

(assert (=> d!1087855 d!1088133))

(declare-fun b!3716324 () Bool)

(declare-fun res!1510776 () Bool)

(declare-fun e!2301083 () Bool)

(assert (=> b!3716324 (=> (not res!1510776) (not e!2301083))))

(declare-fun call!269472 () Bool)

(assert (=> b!3716324 (= res!1510776 call!269472)))

(declare-fun e!2301079 () Bool)

(assert (=> b!3716324 (= e!2301079 e!2301083)))

(declare-fun b!3716325 () Bool)

(declare-fun call!269471 () Bool)

(assert (=> b!3716325 (= e!2301083 call!269471)))

(declare-fun b!3716326 () Bool)

(declare-fun e!2301081 () Bool)

(declare-fun call!269470 () Bool)

(assert (=> b!3716326 (= e!2301081 call!269470)))

(declare-fun d!1088149 () Bool)

(declare-fun res!1510778 () Bool)

(declare-fun e!2301082 () Bool)

(assert (=> d!1088149 (=> res!1510778 e!2301082)))

(assert (=> d!1088149 (= res!1510778 ((_ is ElementMatch!10855) lt!1297295))))

(assert (=> d!1088149 (= (validRegex!4962 lt!1297295) e!2301082)))

(declare-fun b!3716327 () Bool)

(declare-fun e!2301084 () Bool)

(assert (=> b!3716327 (= e!2301084 e!2301081)))

(declare-fun res!1510779 () Bool)

(assert (=> b!3716327 (= res!1510779 (not (nullable!3778 (reg!11184 lt!1297295))))))

(assert (=> b!3716327 (=> (not res!1510779) (not e!2301081))))

(declare-fun b!3716328 () Bool)

(assert (=> b!3716328 (= e!2301082 e!2301084)))

(declare-fun c!642386 () Bool)

(assert (=> b!3716328 (= c!642386 ((_ is Star!10855) lt!1297295))))

(declare-fun b!3716329 () Bool)

(declare-fun e!2301080 () Bool)

(declare-fun e!2301085 () Bool)

(assert (=> b!3716329 (= e!2301080 e!2301085)))

(declare-fun res!1510780 () Bool)

(assert (=> b!3716329 (=> (not res!1510780) (not e!2301085))))

(assert (=> b!3716329 (= res!1510780 call!269471)))

(declare-fun b!3716330 () Bool)

(declare-fun res!1510777 () Bool)

(assert (=> b!3716330 (=> res!1510777 e!2301080)))

(assert (=> b!3716330 (= res!1510777 (not ((_ is Concat!17126) lt!1297295)))))

(assert (=> b!3716330 (= e!2301079 e!2301080)))

(declare-fun bm!269465 () Bool)

(declare-fun c!642387 () Bool)

(assert (=> bm!269465 (= call!269470 (validRegex!4962 (ite c!642386 (reg!11184 lt!1297295) (ite c!642387 (regTwo!22223 lt!1297295) (regOne!22222 lt!1297295)))))))

(declare-fun b!3716331 () Bool)

(assert (=> b!3716331 (= e!2301085 call!269472)))

(declare-fun bm!269466 () Bool)

(assert (=> bm!269466 (= call!269472 (validRegex!4962 (ite c!642387 (regOne!22223 lt!1297295) (regTwo!22222 lt!1297295))))))

(declare-fun bm!269467 () Bool)

(assert (=> bm!269467 (= call!269471 call!269470)))

(declare-fun b!3716332 () Bool)

(assert (=> b!3716332 (= e!2301084 e!2301079)))

(assert (=> b!3716332 (= c!642387 ((_ is Union!10855) lt!1297295))))

(assert (= (and d!1088149 (not res!1510778)) b!3716328))

(assert (= (and b!3716328 c!642386) b!3716327))

(assert (= (and b!3716328 (not c!642386)) b!3716332))

(assert (= (and b!3716327 res!1510779) b!3716326))

(assert (= (and b!3716332 c!642387) b!3716324))

(assert (= (and b!3716332 (not c!642387)) b!3716330))

(assert (= (and b!3716324 res!1510776) b!3716325))

(assert (= (and b!3716330 (not res!1510777)) b!3716329))

(assert (= (and b!3716329 res!1510780) b!3716331))

(assert (= (or b!3716325 b!3716329) bm!269467))

(assert (= (or b!3716324 b!3716331) bm!269466))

(assert (= (or b!3716326 bm!269467) bm!269465))

(declare-fun m!4222019 () Bool)

(assert (=> b!3716327 m!4222019))

(declare-fun m!4222025 () Bool)

(assert (=> bm!269465 m!4222025))

(declare-fun m!4222027 () Bool)

(assert (=> bm!269466 m!4222027))

(assert (=> d!1087855 d!1088149))

(declare-fun b!3716351 () Bool)

(declare-fun e!2301103 () Bool)

(assert (=> b!3716351 (= e!2301103 (= (head!8021 (_1!22744 (get!13200 lt!1297382))) (c!641993 lt!1297295)))))

(declare-fun b!3716352 () Bool)

(declare-fun res!1510795 () Bool)

(declare-fun e!2301106 () Bool)

(assert (=> b!3716352 (=> res!1510795 e!2301106)))

(assert (=> b!3716352 (= res!1510795 (not ((_ is ElementMatch!10855) lt!1297295)))))

(declare-fun e!2301102 () Bool)

(assert (=> b!3716352 (= e!2301102 e!2301106)))

(declare-fun d!1088155 () Bool)

(declare-fun e!2301105 () Bool)

(assert (=> d!1088155 e!2301105))

(declare-fun c!642393 () Bool)

(assert (=> d!1088155 (= c!642393 ((_ is EmptyExpr!10855) lt!1297295))))

(declare-fun lt!1297448 () Bool)

(declare-fun e!2301101 () Bool)

(assert (=> d!1088155 (= lt!1297448 e!2301101)))

(declare-fun c!642392 () Bool)

(assert (=> d!1088155 (= c!642392 (isEmpty!23507 (_1!22744 (get!13200 lt!1297382))))))

(assert (=> d!1088155 (validRegex!4962 lt!1297295)))

(assert (=> d!1088155 (= (matchR!5300 lt!1297295 (_1!22744 (get!13200 lt!1297382))) lt!1297448)))

(declare-fun b!3716353 () Bool)

(declare-fun e!2301104 () Bool)

(declare-fun e!2301100 () Bool)

(assert (=> b!3716353 (= e!2301104 e!2301100)))

(declare-fun res!1510794 () Bool)

(assert (=> b!3716353 (=> res!1510794 e!2301100)))

(declare-fun call!269479 () Bool)

(assert (=> b!3716353 (= res!1510794 call!269479)))

(declare-fun b!3716354 () Bool)

(declare-fun res!1510792 () Bool)

(assert (=> b!3716354 (=> (not res!1510792) (not e!2301103))))

(assert (=> b!3716354 (= res!1510792 (not call!269479))))

(declare-fun bm!269474 () Bool)

(assert (=> bm!269474 (= call!269479 (isEmpty!23507 (_1!22744 (get!13200 lt!1297382))))))

(declare-fun b!3716355 () Bool)

(assert (=> b!3716355 (= e!2301101 (nullable!3778 lt!1297295))))

(declare-fun b!3716356 () Bool)

(declare-fun res!1510797 () Bool)

(assert (=> b!3716356 (=> (not res!1510797) (not e!2301103))))

(assert (=> b!3716356 (= res!1510797 (isEmpty!23507 (tail!5748 (_1!22744 (get!13200 lt!1297382)))))))

(declare-fun b!3716357 () Bool)

(assert (=> b!3716357 (= e!2301105 (= lt!1297448 call!269479))))

(declare-fun b!3716358 () Bool)

(assert (=> b!3716358 (= e!2301101 (matchR!5300 (derivativeStep!3320 lt!1297295 (head!8021 (_1!22744 (get!13200 lt!1297382)))) (tail!5748 (_1!22744 (get!13200 lt!1297382)))))))

(declare-fun b!3716359 () Bool)

(assert (=> b!3716359 (= e!2301100 (not (= (head!8021 (_1!22744 (get!13200 lt!1297382))) (c!641993 lt!1297295))))))

(declare-fun b!3716360 () Bool)

(assert (=> b!3716360 (= e!2301102 (not lt!1297448))))

(declare-fun b!3716361 () Bool)

(assert (=> b!3716361 (= e!2301106 e!2301104)))

(declare-fun res!1510798 () Bool)

(assert (=> b!3716361 (=> (not res!1510798) (not e!2301104))))

(assert (=> b!3716361 (= res!1510798 (not lt!1297448))))

(declare-fun b!3716362 () Bool)

(assert (=> b!3716362 (= e!2301105 e!2301102)))

(declare-fun c!642394 () Bool)

(assert (=> b!3716362 (= c!642394 ((_ is EmptyLang!10855) lt!1297295))))

(declare-fun b!3716363 () Bool)

(declare-fun res!1510791 () Bool)

(assert (=> b!3716363 (=> res!1510791 e!2301106)))

(assert (=> b!3716363 (= res!1510791 e!2301103)))

(declare-fun res!1510793 () Bool)

(assert (=> b!3716363 (=> (not res!1510793) (not e!2301103))))

(assert (=> b!3716363 (= res!1510793 lt!1297448)))

(declare-fun b!3716364 () Bool)

(declare-fun res!1510796 () Bool)

(assert (=> b!3716364 (=> res!1510796 e!2301100)))

(assert (=> b!3716364 (= res!1510796 (not (isEmpty!23507 (tail!5748 (_1!22744 (get!13200 lt!1297382))))))))

(assert (= (and d!1088155 c!642392) b!3716355))

(assert (= (and d!1088155 (not c!642392)) b!3716358))

(assert (= (and d!1088155 c!642393) b!3716357))

(assert (= (and d!1088155 (not c!642393)) b!3716362))

(assert (= (and b!3716362 c!642394) b!3716360))

(assert (= (and b!3716362 (not c!642394)) b!3716352))

(assert (= (and b!3716352 (not res!1510795)) b!3716363))

(assert (= (and b!3716363 res!1510793) b!3716354))

(assert (= (and b!3716354 res!1510792) b!3716356))

(assert (= (and b!3716356 res!1510797) b!3716351))

(assert (= (and b!3716363 (not res!1510791)) b!3716361))

(assert (= (and b!3716361 res!1510798) b!3716353))

(assert (= (and b!3716353 (not res!1510794)) b!3716364))

(assert (= (and b!3716364 (not res!1510796)) b!3716359))

(assert (= (or b!3716357 b!3716353 b!3716354) bm!269474))

(assert (=> b!3716355 m!4221143))

(declare-fun m!4222035 () Bool)

(assert (=> d!1088155 m!4222035))

(assert (=> d!1088155 m!4221149))

(assert (=> bm!269474 m!4222035))

(declare-fun m!4222037 () Bool)

(assert (=> b!3716358 m!4222037))

(assert (=> b!3716358 m!4222037))

(declare-fun m!4222039 () Bool)

(assert (=> b!3716358 m!4222039))

(declare-fun m!4222041 () Bool)

(assert (=> b!3716358 m!4222041))

(assert (=> b!3716358 m!4222039))

(assert (=> b!3716358 m!4222041))

(declare-fun m!4222043 () Bool)

(assert (=> b!3716358 m!4222043))

(assert (=> b!3716351 m!4222037))

(assert (=> b!3716364 m!4222041))

(assert (=> b!3716364 m!4222041))

(declare-fun m!4222045 () Bool)

(assert (=> b!3716364 m!4222045))

(assert (=> b!3716356 m!4222041))

(assert (=> b!3716356 m!4222041))

(assert (=> b!3716356 m!4222045))

(assert (=> b!3716359 m!4222037))

(assert (=> b!3715520 d!1088155))

(declare-fun d!1088157 () Bool)

(assert (=> d!1088157 (= (get!13200 lt!1297382) (v!38589 lt!1297382))))

(assert (=> b!3715520 d!1088157))

(declare-fun d!1088159 () Bool)

(assert (=> d!1088159 (= (nullable!3778 (reg!11184 (regOne!22222 r!26326))) (nullableFct!1067 (reg!11184 (regOne!22222 r!26326))))))

(declare-fun bs!574850 () Bool)

(assert (= bs!574850 d!1088159))

(declare-fun m!4222047 () Bool)

(assert (=> bs!574850 m!4222047))

(assert (=> b!3715543 d!1088159))

(assert (=> bm!269233 d!1088121))

(assert (=> bm!269277 d!1088121))

(declare-fun d!1088161 () Bool)

(assert (=> d!1088161 (= (nullable!3778 lt!1297295) (nullableFct!1067 lt!1297295))))

(declare-fun bs!574851 () Bool)

(assert (= bs!574851 d!1088161))

(declare-fun m!4222049 () Bool)

(assert (=> bs!574851 m!4222049))

(assert (=> b!3715293 d!1088161))

(declare-fun b!3716402 () Bool)

(declare-fun res!1510799 () Bool)

(declare-fun e!2301121 () Bool)

(assert (=> b!3716402 (=> (not res!1510799) (not e!2301121))))

(declare-fun call!269482 () Bool)

(assert (=> b!3716402 (= res!1510799 call!269482)))

(declare-fun e!2301117 () Bool)

(assert (=> b!3716402 (= e!2301117 e!2301121)))

(declare-fun b!3716403 () Bool)

(declare-fun call!269481 () Bool)

(assert (=> b!3716403 (= e!2301121 call!269481)))

(declare-fun b!3716404 () Bool)

(declare-fun e!2301119 () Bool)

(declare-fun call!269480 () Bool)

(assert (=> b!3716404 (= e!2301119 call!269480)))

(declare-fun d!1088163 () Bool)

(declare-fun res!1510801 () Bool)

(declare-fun e!2301120 () Bool)

(assert (=> d!1088163 (=> res!1510801 e!2301120)))

(assert (=> d!1088163 (= res!1510801 ((_ is ElementMatch!10855) lt!1297290))))

(assert (=> d!1088163 (= (validRegex!4962 lt!1297290) e!2301120)))

(declare-fun b!3716405 () Bool)

(declare-fun e!2301122 () Bool)

(assert (=> b!3716405 (= e!2301122 e!2301119)))

(declare-fun res!1510802 () Bool)

(assert (=> b!3716405 (= res!1510802 (not (nullable!3778 (reg!11184 lt!1297290))))))

(assert (=> b!3716405 (=> (not res!1510802) (not e!2301119))))

(declare-fun b!3716406 () Bool)

(assert (=> b!3716406 (= e!2301120 e!2301122)))

(declare-fun c!642395 () Bool)

(assert (=> b!3716406 (= c!642395 ((_ is Star!10855) lt!1297290))))

(declare-fun b!3716407 () Bool)

(declare-fun e!2301118 () Bool)

(declare-fun e!2301123 () Bool)

(assert (=> b!3716407 (= e!2301118 e!2301123)))

(declare-fun res!1510803 () Bool)

(assert (=> b!3716407 (=> (not res!1510803) (not e!2301123))))

(assert (=> b!3716407 (= res!1510803 call!269481)))

(declare-fun b!3716408 () Bool)

(declare-fun res!1510800 () Bool)

(assert (=> b!3716408 (=> res!1510800 e!2301118)))

(assert (=> b!3716408 (= res!1510800 (not ((_ is Concat!17126) lt!1297290)))))

(assert (=> b!3716408 (= e!2301117 e!2301118)))

(declare-fun c!642396 () Bool)

(declare-fun bm!269475 () Bool)

(assert (=> bm!269475 (= call!269480 (validRegex!4962 (ite c!642395 (reg!11184 lt!1297290) (ite c!642396 (regTwo!22223 lt!1297290) (regOne!22222 lt!1297290)))))))

(declare-fun b!3716409 () Bool)

(assert (=> b!3716409 (= e!2301123 call!269482)))

(declare-fun bm!269476 () Bool)

(assert (=> bm!269476 (= call!269482 (validRegex!4962 (ite c!642396 (regOne!22223 lt!1297290) (regTwo!22222 lt!1297290))))))

(declare-fun bm!269477 () Bool)

(assert (=> bm!269477 (= call!269481 call!269480)))

(declare-fun b!3716410 () Bool)

(assert (=> b!3716410 (= e!2301122 e!2301117)))

(assert (=> b!3716410 (= c!642396 ((_ is Union!10855) lt!1297290))))

(assert (= (and d!1088163 (not res!1510801)) b!3716406))

(assert (= (and b!3716406 c!642395) b!3716405))

(assert (= (and b!3716406 (not c!642395)) b!3716410))

(assert (= (and b!3716405 res!1510802) b!3716404))

(assert (= (and b!3716410 c!642396) b!3716402))

(assert (= (and b!3716410 (not c!642396)) b!3716408))

(assert (= (and b!3716402 res!1510799) b!3716403))

(assert (= (and b!3716408 (not res!1510800)) b!3716407))

(assert (= (and b!3716407 res!1510803) b!3716409))

(assert (= (or b!3716403 b!3716407) bm!269477))

(assert (= (or b!3716402 b!3716409) bm!269476))

(assert (= (or b!3716404 bm!269477) bm!269475))

(declare-fun m!4222051 () Bool)

(assert (=> b!3716405 m!4222051))

(declare-fun m!4222053 () Bool)

(assert (=> bm!269475 m!4222053))

(declare-fun m!4222055 () Bool)

(assert (=> bm!269476 m!4222055))

(assert (=> b!3715101 d!1088163))

(declare-fun e!2301135 () Bool)

(declare-fun b!3716443 () Bool)

(assert (=> b!3716443 (= e!2301135 (= (head!8021 (tail!5748 (Cons!39612 c!13576 (_1!22744 lt!1297291)))) (c!641993 (derivativeStep!3320 (regOne!22222 r!26326) (head!8021 (Cons!39612 c!13576 (_1!22744 lt!1297291)))))))))

(declare-fun b!3716444 () Bool)

(declare-fun res!1510808 () Bool)

(declare-fun e!2301138 () Bool)

(assert (=> b!3716444 (=> res!1510808 e!2301138)))

(assert (=> b!3716444 (= res!1510808 (not ((_ is ElementMatch!10855) (derivativeStep!3320 (regOne!22222 r!26326) (head!8021 (Cons!39612 c!13576 (_1!22744 lt!1297291)))))))))

(declare-fun e!2301134 () Bool)

(assert (=> b!3716444 (= e!2301134 e!2301138)))

(declare-fun d!1088165 () Bool)

(declare-fun e!2301137 () Bool)

(assert (=> d!1088165 e!2301137))

(declare-fun c!642398 () Bool)

(assert (=> d!1088165 (= c!642398 ((_ is EmptyExpr!10855) (derivativeStep!3320 (regOne!22222 r!26326) (head!8021 (Cons!39612 c!13576 (_1!22744 lt!1297291))))))))

(declare-fun lt!1297449 () Bool)

(declare-fun e!2301133 () Bool)

(assert (=> d!1088165 (= lt!1297449 e!2301133)))

(declare-fun c!642397 () Bool)

(assert (=> d!1088165 (= c!642397 (isEmpty!23507 (tail!5748 (Cons!39612 c!13576 (_1!22744 lt!1297291)))))))

(assert (=> d!1088165 (validRegex!4962 (derivativeStep!3320 (regOne!22222 r!26326) (head!8021 (Cons!39612 c!13576 (_1!22744 lt!1297291)))))))

(assert (=> d!1088165 (= (matchR!5300 (derivativeStep!3320 (regOne!22222 r!26326) (head!8021 (Cons!39612 c!13576 (_1!22744 lt!1297291)))) (tail!5748 (Cons!39612 c!13576 (_1!22744 lt!1297291)))) lt!1297449)))

(declare-fun b!3716445 () Bool)

(declare-fun e!2301136 () Bool)

(declare-fun e!2301131 () Bool)

(assert (=> b!3716445 (= e!2301136 e!2301131)))

(declare-fun res!1510807 () Bool)

(assert (=> b!3716445 (=> res!1510807 e!2301131)))

(declare-fun call!269483 () Bool)

(assert (=> b!3716445 (= res!1510807 call!269483)))

(declare-fun b!3716446 () Bool)

(declare-fun res!1510805 () Bool)

(assert (=> b!3716446 (=> (not res!1510805) (not e!2301135))))

(assert (=> b!3716446 (= res!1510805 (not call!269483))))

(declare-fun bm!269478 () Bool)

(assert (=> bm!269478 (= call!269483 (isEmpty!23507 (tail!5748 (Cons!39612 c!13576 (_1!22744 lt!1297291)))))))

(declare-fun b!3716447 () Bool)

(assert (=> b!3716447 (= e!2301133 (nullable!3778 (derivativeStep!3320 (regOne!22222 r!26326) (head!8021 (Cons!39612 c!13576 (_1!22744 lt!1297291))))))))

(declare-fun b!3716448 () Bool)

(declare-fun res!1510810 () Bool)

(assert (=> b!3716448 (=> (not res!1510810) (not e!2301135))))

(assert (=> b!3716448 (= res!1510810 (isEmpty!23507 (tail!5748 (tail!5748 (Cons!39612 c!13576 (_1!22744 lt!1297291))))))))

(declare-fun b!3716449 () Bool)

(assert (=> b!3716449 (= e!2301137 (= lt!1297449 call!269483))))

(declare-fun b!3716450 () Bool)

(assert (=> b!3716450 (= e!2301133 (matchR!5300 (derivativeStep!3320 (derivativeStep!3320 (regOne!22222 r!26326) (head!8021 (Cons!39612 c!13576 (_1!22744 lt!1297291)))) (head!8021 (tail!5748 (Cons!39612 c!13576 (_1!22744 lt!1297291))))) (tail!5748 (tail!5748 (Cons!39612 c!13576 (_1!22744 lt!1297291))))))))

(declare-fun b!3716451 () Bool)

(assert (=> b!3716451 (= e!2301131 (not (= (head!8021 (tail!5748 (Cons!39612 c!13576 (_1!22744 lt!1297291)))) (c!641993 (derivativeStep!3320 (regOne!22222 r!26326) (head!8021 (Cons!39612 c!13576 (_1!22744 lt!1297291))))))))))

(declare-fun b!3716452 () Bool)

(assert (=> b!3716452 (= e!2301134 (not lt!1297449))))

(declare-fun b!3716453 () Bool)

(assert (=> b!3716453 (= e!2301138 e!2301136)))

(declare-fun res!1510811 () Bool)

(assert (=> b!3716453 (=> (not res!1510811) (not e!2301136))))

(assert (=> b!3716453 (= res!1510811 (not lt!1297449))))

(declare-fun b!3716454 () Bool)

(assert (=> b!3716454 (= e!2301137 e!2301134)))

(declare-fun c!642399 () Bool)

(assert (=> b!3716454 (= c!642399 ((_ is EmptyLang!10855) (derivativeStep!3320 (regOne!22222 r!26326) (head!8021 (Cons!39612 c!13576 (_1!22744 lt!1297291))))))))

(declare-fun b!3716455 () Bool)

(declare-fun res!1510804 () Bool)

(assert (=> b!3716455 (=> res!1510804 e!2301138)))

(assert (=> b!3716455 (= res!1510804 e!2301135)))

(declare-fun res!1510806 () Bool)

(assert (=> b!3716455 (=> (not res!1510806) (not e!2301135))))

(assert (=> b!3716455 (= res!1510806 lt!1297449)))

(declare-fun b!3716456 () Bool)

(declare-fun res!1510809 () Bool)

(assert (=> b!3716456 (=> res!1510809 e!2301131)))

(assert (=> b!3716456 (= res!1510809 (not (isEmpty!23507 (tail!5748 (tail!5748 (Cons!39612 c!13576 (_1!22744 lt!1297291)))))))))

(assert (= (and d!1088165 c!642397) b!3716447))

(assert (= (and d!1088165 (not c!642397)) b!3716450))

(assert (= (and d!1088165 c!642398) b!3716449))

(assert (= (and d!1088165 (not c!642398)) b!3716454))

(assert (= (and b!3716454 c!642399) b!3716452))

(assert (= (and b!3716454 (not c!642399)) b!3716444))

(assert (= (and b!3716444 (not res!1510808)) b!3716455))

(assert (= (and b!3716455 res!1510806) b!3716446))

(assert (= (and b!3716446 res!1510805) b!3716448))

(assert (= (and b!3716448 res!1510810) b!3716443))

(assert (= (and b!3716455 (not res!1510804)) b!3716453))

(assert (= (and b!3716453 res!1510811) b!3716445))

(assert (= (and b!3716445 (not res!1510807)) b!3716456))

(assert (= (and b!3716456 (not res!1510809)) b!3716451))

(assert (= (or b!3716449 b!3716445 b!3716446) bm!269478))

(assert (=> b!3716447 m!4221377))

(declare-fun m!4222057 () Bool)

(assert (=> b!3716447 m!4222057))

(assert (=> d!1088165 m!4221379))

(assert (=> d!1088165 m!4221383))

(assert (=> d!1088165 m!4221377))

(declare-fun m!4222059 () Bool)

(assert (=> d!1088165 m!4222059))

(assert (=> bm!269478 m!4221379))

(assert (=> bm!269478 m!4221383))

(assert (=> b!3716450 m!4221379))

(declare-fun m!4222061 () Bool)

(assert (=> b!3716450 m!4222061))

(assert (=> b!3716450 m!4221377))

(assert (=> b!3716450 m!4222061))

(declare-fun m!4222063 () Bool)

(assert (=> b!3716450 m!4222063))

(assert (=> b!3716450 m!4221379))

(declare-fun m!4222065 () Bool)

(assert (=> b!3716450 m!4222065))

(assert (=> b!3716450 m!4222063))

(assert (=> b!3716450 m!4222065))

(declare-fun m!4222067 () Bool)

(assert (=> b!3716450 m!4222067))

(assert (=> b!3716443 m!4221379))

(assert (=> b!3716443 m!4222061))

(assert (=> b!3716456 m!4221379))

(assert (=> b!3716456 m!4222065))

(assert (=> b!3716456 m!4222065))

(declare-fun m!4222069 () Bool)

(assert (=> b!3716456 m!4222069))

(assert (=> b!3716448 m!4221379))

(assert (=> b!3716448 m!4222065))

(assert (=> b!3716448 m!4222065))

(assert (=> b!3716448 m!4222069))

(assert (=> b!3716451 m!4221379))

(assert (=> b!3716451 m!4222061))

(assert (=> b!3715593 d!1088165))

(declare-fun b!3716489 () Bool)

(declare-fun e!2301147 () Regex!10855)

(declare-fun e!2301150 () Regex!10855)

(assert (=> b!3716489 (= e!2301147 e!2301150)))

(declare-fun c!642403 () Bool)

(assert (=> b!3716489 (= c!642403 ((_ is ElementMatch!10855) (regOne!22222 r!26326)))))

(declare-fun b!3716490 () Bool)

(declare-fun c!642402 () Bool)

(assert (=> b!3716490 (= c!642402 (nullable!3778 (regOne!22222 (regOne!22222 r!26326))))))

(declare-fun e!2301148 () Regex!10855)

(declare-fun e!2301151 () Regex!10855)

(assert (=> b!3716490 (= e!2301148 e!2301151)))

(declare-fun bm!269479 () Bool)

(declare-fun call!269485 () Regex!10855)

(declare-fun call!269487 () Regex!10855)

(assert (=> bm!269479 (= call!269485 call!269487)))

(declare-fun b!3716491 () Bool)

(declare-fun c!642400 () Bool)

(assert (=> b!3716491 (= c!642400 ((_ is Union!10855) (regOne!22222 r!26326)))))

(declare-fun e!2301149 () Regex!10855)

(assert (=> b!3716491 (= e!2301150 e!2301149)))

(declare-fun b!3716492 () Bool)

(declare-fun call!269484 () Regex!10855)

(assert (=> b!3716492 (= e!2301149 (Union!10855 call!269487 call!269484))))

(declare-fun b!3716493 () Bool)

(assert (=> b!3716493 (= e!2301147 EmptyLang!10855)))

(declare-fun b!3716494 () Bool)

(assert (=> b!3716494 (= e!2301150 (ite (= (head!8021 (Cons!39612 c!13576 (_1!22744 lt!1297291))) (c!641993 (regOne!22222 r!26326))) EmptyExpr!10855 EmptyLang!10855))))

(declare-fun bm!269480 () Bool)

(declare-fun call!269486 () Regex!10855)

(assert (=> bm!269480 (= call!269486 call!269484)))

(declare-fun b!3716495 () Bool)

(assert (=> b!3716495 (= e!2301149 e!2301148)))

(declare-fun c!642404 () Bool)

(assert (=> b!3716495 (= c!642404 ((_ is Star!10855) (regOne!22222 r!26326)))))

(declare-fun bm!269481 () Bool)

(assert (=> bm!269481 (= call!269484 (derivativeStep!3320 (ite c!642400 (regTwo!22223 (regOne!22222 r!26326)) (ite c!642404 (reg!11184 (regOne!22222 r!26326)) (regTwo!22222 (regOne!22222 r!26326)))) (head!8021 (Cons!39612 c!13576 (_1!22744 lt!1297291)))))))

(declare-fun bm!269482 () Bool)

(assert (=> bm!269482 (= call!269487 (derivativeStep!3320 (ite c!642400 (regOne!22223 (regOne!22222 r!26326)) (regOne!22222 (regOne!22222 r!26326))) (head!8021 (Cons!39612 c!13576 (_1!22744 lt!1297291)))))))

(declare-fun b!3716497 () Bool)

(assert (=> b!3716497 (= e!2301148 (Concat!17126 call!269486 (regOne!22222 r!26326)))))

(declare-fun b!3716498 () Bool)

(assert (=> b!3716498 (= e!2301151 (Union!10855 (Concat!17126 call!269485 (regTwo!22222 (regOne!22222 r!26326))) EmptyLang!10855))))

(declare-fun b!3716496 () Bool)

(assert (=> b!3716496 (= e!2301151 (Union!10855 (Concat!17126 call!269485 (regTwo!22222 (regOne!22222 r!26326))) call!269486))))

(declare-fun d!1088167 () Bool)

(declare-fun lt!1297450 () Regex!10855)

(assert (=> d!1088167 (validRegex!4962 lt!1297450)))

(assert (=> d!1088167 (= lt!1297450 e!2301147)))

(declare-fun c!642401 () Bool)

(assert (=> d!1088167 (= c!642401 (or ((_ is EmptyExpr!10855) (regOne!22222 r!26326)) ((_ is EmptyLang!10855) (regOne!22222 r!26326))))))

(assert (=> d!1088167 (validRegex!4962 (regOne!22222 r!26326))))

(assert (=> d!1088167 (= (derivativeStep!3320 (regOne!22222 r!26326) (head!8021 (Cons!39612 c!13576 (_1!22744 lt!1297291)))) lt!1297450)))

(assert (= (and d!1088167 c!642401) b!3716493))

(assert (= (and d!1088167 (not c!642401)) b!3716489))

(assert (= (and b!3716489 c!642403) b!3716494))

(assert (= (and b!3716489 (not c!642403)) b!3716491))

(assert (= (and b!3716491 c!642400) b!3716492))

(assert (= (and b!3716491 (not c!642400)) b!3716495))

(assert (= (and b!3716495 c!642404) b!3716497))

(assert (= (and b!3716495 (not c!642404)) b!3716490))

(assert (= (and b!3716490 c!642402) b!3716496))

(assert (= (and b!3716490 (not c!642402)) b!3716498))

(assert (= (or b!3716496 b!3716498) bm!269479))

(assert (= (or b!3716497 b!3716496) bm!269480))

(assert (= (or b!3716492 bm!269480) bm!269481))

(assert (= (or b!3716492 bm!269479) bm!269482))

(assert (=> b!3716490 m!4221079))

(assert (=> bm!269481 m!4221375))

(declare-fun m!4222071 () Bool)

(assert (=> bm!269481 m!4222071))

(assert (=> bm!269482 m!4221375))

(declare-fun m!4222073 () Bool)

(assert (=> bm!269482 m!4222073))

(declare-fun m!4222075 () Bool)

(assert (=> d!1088167 m!4222075))

(assert (=> d!1088167 m!4220883))

(assert (=> b!3715593 d!1088167))

(declare-fun d!1088169 () Bool)

(assert (=> d!1088169 (= (head!8021 (Cons!39612 c!13576 (_1!22744 lt!1297291))) (h!45032 (Cons!39612 c!13576 (_1!22744 lt!1297291))))))

(assert (=> b!3715593 d!1088169))

(declare-fun d!1088171 () Bool)

(assert (=> d!1088171 (= (tail!5748 (Cons!39612 c!13576 (_1!22744 lt!1297291))) (t!302419 (Cons!39612 c!13576 (_1!22744 lt!1297291))))))

(assert (=> b!3715593 d!1088171))

(declare-fun b!3716499 () Bool)

(declare-fun e!2301155 () Bool)

(assert (=> b!3716499 (= e!2301155 (= (head!8021 tl!3933) (c!641993 (regTwo!22222 r!26326))))))

(declare-fun b!3716500 () Bool)

(declare-fun res!1510816 () Bool)

(declare-fun e!2301158 () Bool)

(assert (=> b!3716500 (=> res!1510816 e!2301158)))

(assert (=> b!3716500 (= res!1510816 (not ((_ is ElementMatch!10855) (regTwo!22222 r!26326))))))

(declare-fun e!2301154 () Bool)

(assert (=> b!3716500 (= e!2301154 e!2301158)))

(declare-fun d!1088173 () Bool)

(declare-fun e!2301157 () Bool)

(assert (=> d!1088173 e!2301157))

(declare-fun c!642406 () Bool)

(assert (=> d!1088173 (= c!642406 ((_ is EmptyExpr!10855) (regTwo!22222 r!26326)))))

(declare-fun lt!1297451 () Bool)

(declare-fun e!2301153 () Bool)

(assert (=> d!1088173 (= lt!1297451 e!2301153)))

(declare-fun c!642405 () Bool)

(assert (=> d!1088173 (= c!642405 (isEmpty!23507 tl!3933))))

(assert (=> d!1088173 (validRegex!4962 (regTwo!22222 r!26326))))

(assert (=> d!1088173 (= (matchR!5300 (regTwo!22222 r!26326) tl!3933) lt!1297451)))

(declare-fun b!3716501 () Bool)

(declare-fun e!2301156 () Bool)

(declare-fun e!2301152 () Bool)

(assert (=> b!3716501 (= e!2301156 e!2301152)))

(declare-fun res!1510815 () Bool)

(assert (=> b!3716501 (=> res!1510815 e!2301152)))

(declare-fun call!269488 () Bool)

(assert (=> b!3716501 (= res!1510815 call!269488)))

(declare-fun b!3716502 () Bool)

(declare-fun res!1510813 () Bool)

(assert (=> b!3716502 (=> (not res!1510813) (not e!2301155))))

(assert (=> b!3716502 (= res!1510813 (not call!269488))))

(declare-fun bm!269483 () Bool)

(assert (=> bm!269483 (= call!269488 (isEmpty!23507 tl!3933))))

(declare-fun b!3716503 () Bool)

(assert (=> b!3716503 (= e!2301153 (nullable!3778 (regTwo!22222 r!26326)))))

(declare-fun b!3716504 () Bool)

(declare-fun res!1510818 () Bool)

(assert (=> b!3716504 (=> (not res!1510818) (not e!2301155))))

(assert (=> b!3716504 (= res!1510818 (isEmpty!23507 (tail!5748 tl!3933)))))

(declare-fun b!3716505 () Bool)

(assert (=> b!3716505 (= e!2301157 (= lt!1297451 call!269488))))

(declare-fun b!3716506 () Bool)

(assert (=> b!3716506 (= e!2301153 (matchR!5300 (derivativeStep!3320 (regTwo!22222 r!26326) (head!8021 tl!3933)) (tail!5748 tl!3933)))))

(declare-fun b!3716507 () Bool)

(assert (=> b!3716507 (= e!2301152 (not (= (head!8021 tl!3933) (c!641993 (regTwo!22222 r!26326)))))))

(declare-fun b!3716508 () Bool)

(assert (=> b!3716508 (= e!2301154 (not lt!1297451))))

(declare-fun b!3716509 () Bool)

(assert (=> b!3716509 (= e!2301158 e!2301156)))

(declare-fun res!1510819 () Bool)

(assert (=> b!3716509 (=> (not res!1510819) (not e!2301156))))

(assert (=> b!3716509 (= res!1510819 (not lt!1297451))))

(declare-fun b!3716510 () Bool)

(assert (=> b!3716510 (= e!2301157 e!2301154)))

(declare-fun c!642407 () Bool)

(assert (=> b!3716510 (= c!642407 ((_ is EmptyLang!10855) (regTwo!22222 r!26326)))))

(declare-fun b!3716511 () Bool)

(declare-fun res!1510812 () Bool)

(assert (=> b!3716511 (=> res!1510812 e!2301158)))

(assert (=> b!3716511 (= res!1510812 e!2301155)))

(declare-fun res!1510814 () Bool)

(assert (=> b!3716511 (=> (not res!1510814) (not e!2301155))))

(assert (=> b!3716511 (= res!1510814 lt!1297451)))

(declare-fun b!3716512 () Bool)

(declare-fun res!1510817 () Bool)

(assert (=> b!3716512 (=> res!1510817 e!2301152)))

(assert (=> b!3716512 (= res!1510817 (not (isEmpty!23507 (tail!5748 tl!3933))))))

(assert (= (and d!1088173 c!642405) b!3716503))

(assert (= (and d!1088173 (not c!642405)) b!3716506))

(assert (= (and d!1088173 c!642406) b!3716505))

(assert (= (and d!1088173 (not c!642406)) b!3716510))

(assert (= (and b!3716510 c!642407) b!3716508))

(assert (= (and b!3716510 (not c!642407)) b!3716500))

(assert (= (and b!3716500 (not res!1510816)) b!3716511))

(assert (= (and b!3716511 res!1510814) b!3716502))

(assert (= (and b!3716502 res!1510813) b!3716504))

(assert (= (and b!3716504 res!1510818) b!3716499))

(assert (= (and b!3716511 (not res!1510812)) b!3716509))

(assert (= (and b!3716509 res!1510819) b!3716501))

(assert (= (and b!3716501 (not res!1510815)) b!3716512))

(assert (= (and b!3716512 (not res!1510817)) b!3716507))

(assert (= (or b!3716505 b!3716501 b!3716502) bm!269483))

(assert (=> b!3716503 m!4220979))

(assert (=> d!1088173 m!4220965))

(assert (=> d!1088173 m!4220983))

(assert (=> bm!269483 m!4220965))

(assert (=> b!3716506 m!4220969))

(assert (=> b!3716506 m!4220969))

(declare-fun m!4222077 () Bool)

(assert (=> b!3716506 m!4222077))

(assert (=> b!3716506 m!4220973))

(assert (=> b!3716506 m!4222077))

(assert (=> b!3716506 m!4220973))

(declare-fun m!4222079 () Bool)

(assert (=> b!3716506 m!4222079))

(assert (=> b!3716499 m!4220969))

(assert (=> b!3716512 m!4220973))

(assert (=> b!3716512 m!4220973))

(assert (=> b!3716512 m!4220977))

(assert (=> b!3716504 m!4220973))

(assert (=> b!3716504 m!4220973))

(assert (=> b!3716504 m!4220977))

(assert (=> b!3716507 m!4220969))

(assert (=> b!3715516 d!1088173))

(declare-fun d!1088175 () Bool)

(declare-fun lt!1297452 () Bool)

(assert (=> d!1088175 (= lt!1297452 (select (content!5738 (t!302419 (usedCharacters!1118 (regOne!22222 r!26326)))) c!13576))))

(declare-fun e!2301160 () Bool)

(assert (=> d!1088175 (= lt!1297452 e!2301160)))

(declare-fun res!1510821 () Bool)

(assert (=> d!1088175 (=> (not res!1510821) (not e!2301160))))

(assert (=> d!1088175 (= res!1510821 ((_ is Cons!39612) (t!302419 (usedCharacters!1118 (regOne!22222 r!26326)))))))

(assert (=> d!1088175 (= (contains!7948 (t!302419 (usedCharacters!1118 (regOne!22222 r!26326))) c!13576) lt!1297452)))

(declare-fun b!3716513 () Bool)

(declare-fun e!2301159 () Bool)

(assert (=> b!3716513 (= e!2301160 e!2301159)))

(declare-fun res!1510820 () Bool)

(assert (=> b!3716513 (=> res!1510820 e!2301159)))

(assert (=> b!3716513 (= res!1510820 (= (h!45032 (t!302419 (usedCharacters!1118 (regOne!22222 r!26326)))) c!13576))))

(declare-fun b!3716514 () Bool)

(assert (=> b!3716514 (= e!2301159 (contains!7948 (t!302419 (t!302419 (usedCharacters!1118 (regOne!22222 r!26326)))) c!13576))))

(assert (= (and d!1088175 res!1510821) b!3716513))

(assert (= (and b!3716513 (not res!1510820)) b!3716514))

(declare-fun m!4222081 () Bool)

(assert (=> d!1088175 m!4222081))

(declare-fun m!4222083 () Bool)

(assert (=> d!1088175 m!4222083))

(declare-fun m!4222085 () Bool)

(assert (=> b!3716514 m!4222085))

(assert (=> b!3715639 d!1088175))

(declare-fun d!1088177 () Bool)

(assert (=> d!1088177 (= (head!8021 (_2!22744 lt!1297291)) (h!45032 (_2!22744 lt!1297291)))))

(assert (=> b!3715045 d!1088177))

(assert (=> d!1087865 d!1088121))

(declare-fun b!3716515 () Bool)

(declare-fun res!1510822 () Bool)

(declare-fun e!2301165 () Bool)

(assert (=> b!3716515 (=> (not res!1510822) (not e!2301165))))

(declare-fun call!269491 () Bool)

(assert (=> b!3716515 (= res!1510822 call!269491)))

(declare-fun e!2301161 () Bool)

(assert (=> b!3716515 (= e!2301161 e!2301165)))

(declare-fun b!3716516 () Bool)

(declare-fun call!269490 () Bool)

(assert (=> b!3716516 (= e!2301165 call!269490)))

(declare-fun b!3716517 () Bool)

(declare-fun e!2301163 () Bool)

(declare-fun call!269489 () Bool)

(assert (=> b!3716517 (= e!2301163 call!269489)))

(declare-fun d!1088179 () Bool)

(declare-fun res!1510824 () Bool)

(declare-fun e!2301164 () Bool)

(assert (=> d!1088179 (=> res!1510824 e!2301164)))

(assert (=> d!1088179 (= res!1510824 ((_ is ElementMatch!10855) lt!1297293))))

(assert (=> d!1088179 (= (validRegex!4962 lt!1297293) e!2301164)))

(declare-fun b!3716518 () Bool)

(declare-fun e!2301166 () Bool)

(assert (=> b!3716518 (= e!2301166 e!2301163)))

(declare-fun res!1510825 () Bool)

(assert (=> b!3716518 (= res!1510825 (not (nullable!3778 (reg!11184 lt!1297293))))))

(assert (=> b!3716518 (=> (not res!1510825) (not e!2301163))))

(declare-fun b!3716519 () Bool)

(assert (=> b!3716519 (= e!2301164 e!2301166)))

(declare-fun c!642408 () Bool)

(assert (=> b!3716519 (= c!642408 ((_ is Star!10855) lt!1297293))))

(declare-fun b!3716520 () Bool)

(declare-fun e!2301162 () Bool)

(declare-fun e!2301167 () Bool)

(assert (=> b!3716520 (= e!2301162 e!2301167)))

(declare-fun res!1510826 () Bool)

(assert (=> b!3716520 (=> (not res!1510826) (not e!2301167))))

(assert (=> b!3716520 (= res!1510826 call!269490)))

(declare-fun b!3716521 () Bool)

(declare-fun res!1510823 () Bool)

(assert (=> b!3716521 (=> res!1510823 e!2301162)))

(assert (=> b!3716521 (= res!1510823 (not ((_ is Concat!17126) lt!1297293)))))

(assert (=> b!3716521 (= e!2301161 e!2301162)))

(declare-fun bm!269484 () Bool)

(declare-fun c!642409 () Bool)

(assert (=> bm!269484 (= call!269489 (validRegex!4962 (ite c!642408 (reg!11184 lt!1297293) (ite c!642409 (regTwo!22223 lt!1297293) (regOne!22222 lt!1297293)))))))

(declare-fun b!3716522 () Bool)

(assert (=> b!3716522 (= e!2301167 call!269491)))

(declare-fun bm!269485 () Bool)

(assert (=> bm!269485 (= call!269491 (validRegex!4962 (ite c!642409 (regOne!22223 lt!1297293) (regTwo!22222 lt!1297293))))))

(declare-fun bm!269486 () Bool)

(assert (=> bm!269486 (= call!269490 call!269489)))

(declare-fun b!3716523 () Bool)

(assert (=> b!3716523 (= e!2301166 e!2301161)))

(assert (=> b!3716523 (= c!642409 ((_ is Union!10855) lt!1297293))))

(assert (= (and d!1088179 (not res!1510824)) b!3716519))

(assert (= (and b!3716519 c!642408) b!3716518))

(assert (= (and b!3716519 (not c!642408)) b!3716523))

(assert (= (and b!3716518 res!1510825) b!3716517))

(assert (= (and b!3716523 c!642409) b!3716515))

(assert (= (and b!3716523 (not c!642409)) b!3716521))

(assert (= (and b!3716515 res!1510822) b!3716516))

(assert (= (and b!3716521 (not res!1510823)) b!3716520))

(assert (= (and b!3716520 res!1510826) b!3716522))

(assert (= (or b!3716516 b!3716520) bm!269486))

(assert (= (or b!3716515 b!3716522) bm!269485))

(assert (= (or b!3716517 bm!269486) bm!269484))

(declare-fun m!4222087 () Bool)

(assert (=> b!3716518 m!4222087))

(declare-fun m!4222089 () Bool)

(assert (=> bm!269484 m!4222089))

(declare-fun m!4222091 () Bool)

(assert (=> bm!269485 m!4222091))

(assert (=> d!1087865 d!1088179))

(declare-fun d!1088181 () Bool)

(assert (=> d!1088181 (= (isEmpty!23507 tl!3933) ((_ is Nil!39612) tl!3933))))

(assert (=> bm!269200 d!1088181))

(assert (=> b!3715549 d!1088119))

(declare-fun d!1088183 () Bool)

(declare-fun c!642412 () Bool)

(assert (=> d!1088183 (= c!642412 ((_ is Nil!39612) lt!1297368))))

(declare-fun e!2301170 () (InoxSet C!21896))

(assert (=> d!1088183 (= (content!5738 lt!1297368) e!2301170)))

(declare-fun b!3716528 () Bool)

(assert (=> b!3716528 (= e!2301170 ((as const (Array C!21896 Bool)) false))))

(declare-fun b!3716529 () Bool)

(assert (=> b!3716529 (= e!2301170 ((_ map or) (store ((as const (Array C!21896 Bool)) false) (h!45032 lt!1297368) true) (content!5738 (t!302419 lt!1297368))))))

(assert (= (and d!1088183 c!642412) b!3716528))

(assert (= (and d!1088183 (not c!642412)) b!3716529))

(declare-fun m!4222093 () Bool)

(assert (=> b!3716529 m!4222093))

(declare-fun m!4222095 () Bool)

(assert (=> b!3716529 m!4222095))

(assert (=> d!1087825 d!1088183))

(declare-fun d!1088185 () Bool)

(declare-fun c!642413 () Bool)

(assert (=> d!1088185 (= c!642413 ((_ is Nil!39612) (_1!22744 lt!1297291)))))

(declare-fun e!2301171 () (InoxSet C!21896))

(assert (=> d!1088185 (= (content!5738 (_1!22744 lt!1297291)) e!2301171)))

(declare-fun b!3716530 () Bool)

(assert (=> b!3716530 (= e!2301171 ((as const (Array C!21896 Bool)) false))))

(declare-fun b!3716531 () Bool)

(assert (=> b!3716531 (= e!2301171 ((_ map or) (store ((as const (Array C!21896 Bool)) false) (h!45032 (_1!22744 lt!1297291)) true) (content!5738 (t!302419 (_1!22744 lt!1297291)))))))

(assert (= (and d!1088185 c!642413) b!3716530))

(assert (= (and d!1088185 (not c!642413)) b!3716531))

(declare-fun m!4222097 () Bool)

(assert (=> b!3716531 m!4222097))

(declare-fun m!4222099 () Bool)

(assert (=> b!3716531 m!4222099))

(assert (=> d!1087825 d!1088185))

(declare-fun d!1088187 () Bool)

(declare-fun c!642414 () Bool)

(assert (=> d!1088187 (= c!642414 ((_ is Nil!39612) (_2!22744 lt!1297291)))))

(declare-fun e!2301172 () (InoxSet C!21896))

(assert (=> d!1088187 (= (content!5738 (_2!22744 lt!1297291)) e!2301172)))

(declare-fun b!3716532 () Bool)

(assert (=> b!3716532 (= e!2301172 ((as const (Array C!21896 Bool)) false))))

(declare-fun b!3716533 () Bool)

(assert (=> b!3716533 (= e!2301172 ((_ map or) (store ((as const (Array C!21896 Bool)) false) (h!45032 (_2!22744 lt!1297291)) true) (content!5738 (t!302419 (_2!22744 lt!1297291)))))))

(assert (= (and d!1088187 c!642414) b!3716532))

(assert (= (and d!1088187 (not c!642414)) b!3716533))

(declare-fun m!4222101 () Bool)

(assert (=> b!3716533 m!4222101))

(declare-fun m!4222103 () Bool)

(assert (=> b!3716533 m!4222103))

(assert (=> d!1087825 d!1088187))

(declare-fun d!1088189 () Bool)

(assert (=> d!1088189 (= (isEmpty!23507 (tail!5748 tl!3933)) ((_ is Nil!39612) (tail!5748 tl!3933)))))

(assert (=> b!3715225 d!1088189))

(assert (=> b!3715225 d!1088079))

(assert (=> d!1087773 d!1088181))

(assert (=> d!1087773 d!1088163))

(declare-fun d!1088191 () Bool)

(declare-fun lt!1297453 () Regex!10855)

(assert (=> d!1088191 (validRegex!4962 lt!1297453)))

(declare-fun e!2301173 () Regex!10855)

(assert (=> d!1088191 (= lt!1297453 e!2301173)))

(declare-fun c!642415 () Bool)

(assert (=> d!1088191 (= c!642415 ((_ is Cons!39612) (t!302419 tl!3933)))))

(assert (=> d!1088191 (validRegex!4962 (derivativeStep!3320 lt!1297287 (h!45032 tl!3933)))))

(assert (=> d!1088191 (= (derivative!369 (derivativeStep!3320 lt!1297287 (h!45032 tl!3933)) (t!302419 tl!3933)) lt!1297453)))

(declare-fun b!3716534 () Bool)

(assert (=> b!3716534 (= e!2301173 (derivative!369 (derivativeStep!3320 (derivativeStep!3320 lt!1297287 (h!45032 tl!3933)) (h!45032 (t!302419 tl!3933))) (t!302419 (t!302419 tl!3933))))))

(declare-fun b!3716535 () Bool)

(assert (=> b!3716535 (= e!2301173 (derivativeStep!3320 lt!1297287 (h!45032 tl!3933)))))

(assert (= (and d!1088191 c!642415) b!3716534))

(assert (= (and d!1088191 (not c!642415)) b!3716535))

(declare-fun m!4222105 () Bool)

(assert (=> d!1088191 m!4222105))

(assert (=> d!1088191 m!4221027))

(declare-fun m!4222107 () Bool)

(assert (=> d!1088191 m!4222107))

(assert (=> b!3716534 m!4221027))

(declare-fun m!4222109 () Bool)

(assert (=> b!3716534 m!4222109))

(assert (=> b!3716534 m!4222109))

(declare-fun m!4222111 () Bool)

(assert (=> b!3716534 m!4222111))

(assert (=> b!3715121 d!1088191))

(declare-fun b!3716536 () Bool)

(declare-fun e!2301174 () Regex!10855)

(declare-fun e!2301177 () Regex!10855)

(assert (=> b!3716536 (= e!2301174 e!2301177)))

(declare-fun c!642419 () Bool)

(assert (=> b!3716536 (= c!642419 ((_ is ElementMatch!10855) lt!1297287))))

(declare-fun b!3716537 () Bool)

(declare-fun c!642418 () Bool)

(assert (=> b!3716537 (= c!642418 (nullable!3778 (regOne!22222 lt!1297287)))))

(declare-fun e!2301175 () Regex!10855)

(declare-fun e!2301178 () Regex!10855)

(assert (=> b!3716537 (= e!2301175 e!2301178)))

(declare-fun bm!269487 () Bool)

(declare-fun call!269493 () Regex!10855)

(declare-fun call!269495 () Regex!10855)

(assert (=> bm!269487 (= call!269493 call!269495)))

(declare-fun b!3716538 () Bool)

(declare-fun c!642416 () Bool)

(assert (=> b!3716538 (= c!642416 ((_ is Union!10855) lt!1297287))))

(declare-fun e!2301176 () Regex!10855)

(assert (=> b!3716538 (= e!2301177 e!2301176)))

(declare-fun b!3716539 () Bool)

(declare-fun call!269492 () Regex!10855)

(assert (=> b!3716539 (= e!2301176 (Union!10855 call!269495 call!269492))))

(declare-fun b!3716540 () Bool)

(assert (=> b!3716540 (= e!2301174 EmptyLang!10855)))

(declare-fun b!3716541 () Bool)

(assert (=> b!3716541 (= e!2301177 (ite (= (h!45032 tl!3933) (c!641993 lt!1297287)) EmptyExpr!10855 EmptyLang!10855))))

(declare-fun bm!269488 () Bool)

(declare-fun call!269494 () Regex!10855)

(assert (=> bm!269488 (= call!269494 call!269492)))

(declare-fun b!3716542 () Bool)

(assert (=> b!3716542 (= e!2301176 e!2301175)))

(declare-fun c!642420 () Bool)

(assert (=> b!3716542 (= c!642420 ((_ is Star!10855) lt!1297287))))

(declare-fun bm!269489 () Bool)

(assert (=> bm!269489 (= call!269492 (derivativeStep!3320 (ite c!642416 (regTwo!22223 lt!1297287) (ite c!642420 (reg!11184 lt!1297287) (regTwo!22222 lt!1297287))) (h!45032 tl!3933)))))

(declare-fun bm!269490 () Bool)

(assert (=> bm!269490 (= call!269495 (derivativeStep!3320 (ite c!642416 (regOne!22223 lt!1297287) (regOne!22222 lt!1297287)) (h!45032 tl!3933)))))

(declare-fun b!3716544 () Bool)

(assert (=> b!3716544 (= e!2301175 (Concat!17126 call!269494 lt!1297287))))

(declare-fun b!3716545 () Bool)

(assert (=> b!3716545 (= e!2301178 (Union!10855 (Concat!17126 call!269493 (regTwo!22222 lt!1297287)) EmptyLang!10855))))

(declare-fun b!3716543 () Bool)

(assert (=> b!3716543 (= e!2301178 (Union!10855 (Concat!17126 call!269493 (regTwo!22222 lt!1297287)) call!269494))))

(declare-fun d!1088193 () Bool)

(declare-fun lt!1297454 () Regex!10855)

(assert (=> d!1088193 (validRegex!4962 lt!1297454)))

(assert (=> d!1088193 (= lt!1297454 e!2301174)))

(declare-fun c!642417 () Bool)

(assert (=> d!1088193 (= c!642417 (or ((_ is EmptyExpr!10855) lt!1297287) ((_ is EmptyLang!10855) lt!1297287)))))

(assert (=> d!1088193 (validRegex!4962 lt!1297287)))

(assert (=> d!1088193 (= (derivativeStep!3320 lt!1297287 (h!45032 tl!3933)) lt!1297454)))

(assert (= (and d!1088193 c!642417) b!3716540))

(assert (= (and d!1088193 (not c!642417)) b!3716536))

(assert (= (and b!3716536 c!642419) b!3716541))

(assert (= (and b!3716536 (not c!642419)) b!3716538))

(assert (= (and b!3716538 c!642416) b!3716539))

(assert (= (and b!3716538 (not c!642416)) b!3716542))

(assert (= (and b!3716542 c!642420) b!3716544))

(assert (= (and b!3716542 (not c!642420)) b!3716537))

(assert (= (and b!3716537 c!642418) b!3716543))

(assert (= (and b!3716537 (not c!642418)) b!3716545))

(assert (= (or b!3716543 b!3716545) bm!269487))

(assert (= (or b!3716544 b!3716543) bm!269488))

(assert (= (or b!3716539 bm!269488) bm!269489))

(assert (= (or b!3716539 bm!269487) bm!269490))

(declare-fun m!4222113 () Bool)

(assert (=> b!3716537 m!4222113))

(declare-fun m!4222115 () Bool)

(assert (=> bm!269489 m!4222115))

(declare-fun m!4222117 () Bool)

(assert (=> bm!269490 m!4222117))

(declare-fun m!4222119 () Bool)

(assert (=> d!1088193 m!4222119))

(assert (=> d!1088193 m!4221025))

(assert (=> b!3715121 d!1088193))

(assert (=> b!3715108 d!1088189))

(assert (=> b!3715108 d!1088079))

(declare-fun d!1088195 () Bool)

(assert (=> d!1088195 (= (head!8021 (_1!22744 lt!1297291)) (h!45032 (_1!22744 lt!1297291)))))

(assert (=> b!3715297 d!1088195))

(assert (=> d!1087783 d!1088181))

(assert (=> d!1087783 d!1088109))

(declare-fun b!3716547 () Bool)

(declare-fun e!2301180 () List!39736)

(assert (=> b!3716547 (= e!2301180 (Cons!39612 (h!45032 (t!302419 (_1!22744 lt!1297291))) (++!9801 (t!302419 (t!302419 (_1!22744 lt!1297291))) (_2!22744 lt!1297291))))))

(declare-fun d!1088197 () Bool)

(declare-fun e!2301179 () Bool)

(assert (=> d!1088197 e!2301179))

(declare-fun res!1510828 () Bool)

(assert (=> d!1088197 (=> (not res!1510828) (not e!2301179))))

(declare-fun lt!1297455 () List!39736)

(assert (=> d!1088197 (= res!1510828 (= (content!5738 lt!1297455) ((_ map or) (content!5738 (t!302419 (_1!22744 lt!1297291))) (content!5738 (_2!22744 lt!1297291)))))))

(assert (=> d!1088197 (= lt!1297455 e!2301180)))

(declare-fun c!642421 () Bool)

(assert (=> d!1088197 (= c!642421 ((_ is Nil!39612) (t!302419 (_1!22744 lt!1297291))))))

(assert (=> d!1088197 (= (++!9801 (t!302419 (_1!22744 lt!1297291)) (_2!22744 lt!1297291)) lt!1297455)))

(declare-fun b!3716546 () Bool)

(assert (=> b!3716546 (= e!2301180 (_2!22744 lt!1297291))))

(declare-fun b!3716549 () Bool)

(assert (=> b!3716549 (= e!2301179 (or (not (= (_2!22744 lt!1297291) Nil!39612)) (= lt!1297455 (t!302419 (_1!22744 lt!1297291)))))))

(declare-fun b!3716548 () Bool)

(declare-fun res!1510827 () Bool)

(assert (=> b!3716548 (=> (not res!1510827) (not e!2301179))))

(assert (=> b!3716548 (= res!1510827 (= (size!30020 lt!1297455) (+ (size!30020 (t!302419 (_1!22744 lt!1297291))) (size!30020 (_2!22744 lt!1297291)))))))

(assert (= (and d!1088197 c!642421) b!3716546))

(assert (= (and d!1088197 (not c!642421)) b!3716547))

(assert (= (and d!1088197 res!1510828) b!3716548))

(assert (= (and b!3716548 res!1510827) b!3716549))

(declare-fun m!4222121 () Bool)

(assert (=> b!3716547 m!4222121))

(declare-fun m!4222123 () Bool)

(assert (=> d!1088197 m!4222123))

(assert (=> d!1088197 m!4222099))

(assert (=> d!1088197 m!4221261))

(declare-fun m!4222125 () Bool)

(assert (=> b!3716548 m!4222125))

(declare-fun m!4222127 () Bool)

(assert (=> b!3716548 m!4222127))

(assert (=> b!3716548 m!4221267))

(assert (=> b!3715406 d!1088197))

(declare-fun b!3716550 () Bool)

(declare-fun res!1510829 () Bool)

(declare-fun e!2301185 () Bool)

(assert (=> b!3716550 (=> (not res!1510829) (not e!2301185))))

(declare-fun call!269498 () Bool)

(assert (=> b!3716550 (= res!1510829 call!269498)))

(declare-fun e!2301181 () Bool)

(assert (=> b!3716550 (= e!2301181 e!2301185)))

(declare-fun b!3716551 () Bool)

(declare-fun call!269497 () Bool)

(assert (=> b!3716551 (= e!2301185 call!269497)))

(declare-fun b!3716552 () Bool)

(declare-fun e!2301183 () Bool)

(declare-fun call!269496 () Bool)

(assert (=> b!3716552 (= e!2301183 call!269496)))

(declare-fun d!1088199 () Bool)

(declare-fun res!1510831 () Bool)

(declare-fun e!2301184 () Bool)

(assert (=> d!1088199 (=> res!1510831 e!2301184)))

(assert (=> d!1088199 (= res!1510831 ((_ is ElementMatch!10855) (ite c!642148 (reg!11184 (regOne!22222 r!26326)) (ite c!642149 (regTwo!22223 (regOne!22222 r!26326)) (regOne!22222 (regOne!22222 r!26326))))))))

(assert (=> d!1088199 (= (validRegex!4962 (ite c!642148 (reg!11184 (regOne!22222 r!26326)) (ite c!642149 (regTwo!22223 (regOne!22222 r!26326)) (regOne!22222 (regOne!22222 r!26326))))) e!2301184)))

(declare-fun b!3716553 () Bool)

(declare-fun e!2301186 () Bool)

(assert (=> b!3716553 (= e!2301186 e!2301183)))

(declare-fun res!1510832 () Bool)

(assert (=> b!3716553 (= res!1510832 (not (nullable!3778 (reg!11184 (ite c!642148 (reg!11184 (regOne!22222 r!26326)) (ite c!642149 (regTwo!22223 (regOne!22222 r!26326)) (regOne!22222 (regOne!22222 r!26326))))))))))

(assert (=> b!3716553 (=> (not res!1510832) (not e!2301183))))

(declare-fun b!3716554 () Bool)

(assert (=> b!3716554 (= e!2301184 e!2301186)))

(declare-fun c!642422 () Bool)

(assert (=> b!3716554 (= c!642422 ((_ is Star!10855) (ite c!642148 (reg!11184 (regOne!22222 r!26326)) (ite c!642149 (regTwo!22223 (regOne!22222 r!26326)) (regOne!22222 (regOne!22222 r!26326))))))))

(declare-fun b!3716555 () Bool)

(declare-fun e!2301182 () Bool)

(declare-fun e!2301187 () Bool)

(assert (=> b!3716555 (= e!2301182 e!2301187)))

(declare-fun res!1510833 () Bool)

(assert (=> b!3716555 (=> (not res!1510833) (not e!2301187))))

(assert (=> b!3716555 (= res!1510833 call!269497)))

(declare-fun b!3716556 () Bool)

(declare-fun res!1510830 () Bool)

(assert (=> b!3716556 (=> res!1510830 e!2301182)))

(assert (=> b!3716556 (= res!1510830 (not ((_ is Concat!17126) (ite c!642148 (reg!11184 (regOne!22222 r!26326)) (ite c!642149 (regTwo!22223 (regOne!22222 r!26326)) (regOne!22222 (regOne!22222 r!26326)))))))))

(assert (=> b!3716556 (= e!2301181 e!2301182)))

(declare-fun bm!269491 () Bool)

(declare-fun c!642423 () Bool)

(assert (=> bm!269491 (= call!269496 (validRegex!4962 (ite c!642422 (reg!11184 (ite c!642148 (reg!11184 (regOne!22222 r!26326)) (ite c!642149 (regTwo!22223 (regOne!22222 r!26326)) (regOne!22222 (regOne!22222 r!26326))))) (ite c!642423 (regTwo!22223 (ite c!642148 (reg!11184 (regOne!22222 r!26326)) (ite c!642149 (regTwo!22223 (regOne!22222 r!26326)) (regOne!22222 (regOne!22222 r!26326))))) (regOne!22222 (ite c!642148 (reg!11184 (regOne!22222 r!26326)) (ite c!642149 (regTwo!22223 (regOne!22222 r!26326)) (regOne!22222 (regOne!22222 r!26326)))))))))))

(declare-fun b!3716557 () Bool)

(assert (=> b!3716557 (= e!2301187 call!269498)))

(declare-fun bm!269492 () Bool)

(assert (=> bm!269492 (= call!269498 (validRegex!4962 (ite c!642423 (regOne!22223 (ite c!642148 (reg!11184 (regOne!22222 r!26326)) (ite c!642149 (regTwo!22223 (regOne!22222 r!26326)) (regOne!22222 (regOne!22222 r!26326))))) (regTwo!22222 (ite c!642148 (reg!11184 (regOne!22222 r!26326)) (ite c!642149 (regTwo!22223 (regOne!22222 r!26326)) (regOne!22222 (regOne!22222 r!26326))))))))))

(declare-fun bm!269493 () Bool)

(assert (=> bm!269493 (= call!269497 call!269496)))

(declare-fun b!3716558 () Bool)

(assert (=> b!3716558 (= e!2301186 e!2301181)))

(assert (=> b!3716558 (= c!642423 ((_ is Union!10855) (ite c!642148 (reg!11184 (regOne!22222 r!26326)) (ite c!642149 (regTwo!22223 (regOne!22222 r!26326)) (regOne!22222 (regOne!22222 r!26326))))))))

(assert (= (and d!1088199 (not res!1510831)) b!3716554))

(assert (= (and b!3716554 c!642422) b!3716553))

(assert (= (and b!3716554 (not c!642422)) b!3716558))

(assert (= (and b!3716553 res!1510832) b!3716552))

(assert (= (and b!3716558 c!642423) b!3716550))

(assert (= (and b!3716558 (not c!642423)) b!3716556))

(assert (= (and b!3716550 res!1510829) b!3716551))

(assert (= (and b!3716556 (not res!1510830)) b!3716555))

(assert (= (and b!3716555 res!1510833) b!3716557))

(assert (= (or b!3716551 b!3716555) bm!269493))

(assert (= (or b!3716550 b!3716557) bm!269492))

(assert (= (or b!3716552 bm!269493) bm!269491))

(declare-fun m!4222129 () Bool)

(assert (=> b!3716553 m!4222129))

(declare-fun m!4222131 () Bool)

(assert (=> bm!269491 m!4222131))

(declare-fun m!4222133 () Bool)

(assert (=> bm!269492 m!4222133))

(assert (=> bm!269274 d!1088199))

(declare-fun b!3716559 () Bool)

(declare-fun e!2301191 () Bool)

(assert (=> b!3716559 (= e!2301191 (= (head!8021 (tail!5748 (_2!22744 lt!1297291))) (c!641993 (derivativeStep!3320 (regTwo!22222 r!26326) (head!8021 (_2!22744 lt!1297291))))))))

(declare-fun b!3716560 () Bool)

(declare-fun res!1510838 () Bool)

(declare-fun e!2301194 () Bool)

(assert (=> b!3716560 (=> res!1510838 e!2301194)))

(assert (=> b!3716560 (= res!1510838 (not ((_ is ElementMatch!10855) (derivativeStep!3320 (regTwo!22222 r!26326) (head!8021 (_2!22744 lt!1297291))))))))

(declare-fun e!2301190 () Bool)

(assert (=> b!3716560 (= e!2301190 e!2301194)))

(declare-fun d!1088201 () Bool)

(declare-fun e!2301193 () Bool)

(assert (=> d!1088201 e!2301193))

(declare-fun c!642425 () Bool)

(assert (=> d!1088201 (= c!642425 ((_ is EmptyExpr!10855) (derivativeStep!3320 (regTwo!22222 r!26326) (head!8021 (_2!22744 lt!1297291)))))))

(declare-fun lt!1297456 () Bool)

(declare-fun e!2301189 () Bool)

(assert (=> d!1088201 (= lt!1297456 e!2301189)))

(declare-fun c!642424 () Bool)

(assert (=> d!1088201 (= c!642424 (isEmpty!23507 (tail!5748 (_2!22744 lt!1297291))))))

(assert (=> d!1088201 (validRegex!4962 (derivativeStep!3320 (regTwo!22222 r!26326) (head!8021 (_2!22744 lt!1297291))))))

(assert (=> d!1088201 (= (matchR!5300 (derivativeStep!3320 (regTwo!22222 r!26326) (head!8021 (_2!22744 lt!1297291))) (tail!5748 (_2!22744 lt!1297291))) lt!1297456)))

(declare-fun b!3716561 () Bool)

(declare-fun e!2301192 () Bool)

(declare-fun e!2301188 () Bool)

(assert (=> b!3716561 (= e!2301192 e!2301188)))

(declare-fun res!1510837 () Bool)

(assert (=> b!3716561 (=> res!1510837 e!2301188)))

(declare-fun call!269499 () Bool)

(assert (=> b!3716561 (= res!1510837 call!269499)))

(declare-fun b!3716562 () Bool)

(declare-fun res!1510835 () Bool)

(assert (=> b!3716562 (=> (not res!1510835) (not e!2301191))))

(assert (=> b!3716562 (= res!1510835 (not call!269499))))

(declare-fun bm!269494 () Bool)

(assert (=> bm!269494 (= call!269499 (isEmpty!23507 (tail!5748 (_2!22744 lt!1297291))))))

(declare-fun b!3716563 () Bool)

(assert (=> b!3716563 (= e!2301189 (nullable!3778 (derivativeStep!3320 (regTwo!22222 r!26326) (head!8021 (_2!22744 lt!1297291)))))))

(declare-fun b!3716564 () Bool)

(declare-fun res!1510840 () Bool)

(assert (=> b!3716564 (=> (not res!1510840) (not e!2301191))))

(assert (=> b!3716564 (= res!1510840 (isEmpty!23507 (tail!5748 (tail!5748 (_2!22744 lt!1297291)))))))

(declare-fun b!3716565 () Bool)

(assert (=> b!3716565 (= e!2301193 (= lt!1297456 call!269499))))

(declare-fun b!3716566 () Bool)

(assert (=> b!3716566 (= e!2301189 (matchR!5300 (derivativeStep!3320 (derivativeStep!3320 (regTwo!22222 r!26326) (head!8021 (_2!22744 lt!1297291))) (head!8021 (tail!5748 (_2!22744 lt!1297291)))) (tail!5748 (tail!5748 (_2!22744 lt!1297291)))))))

(declare-fun b!3716567 () Bool)

(assert (=> b!3716567 (= e!2301188 (not (= (head!8021 (tail!5748 (_2!22744 lt!1297291))) (c!641993 (derivativeStep!3320 (regTwo!22222 r!26326) (head!8021 (_2!22744 lt!1297291)))))))))

(declare-fun b!3716568 () Bool)

(assert (=> b!3716568 (= e!2301190 (not lt!1297456))))

(declare-fun b!3716569 () Bool)

(assert (=> b!3716569 (= e!2301194 e!2301192)))

(declare-fun res!1510841 () Bool)

(assert (=> b!3716569 (=> (not res!1510841) (not e!2301192))))

(assert (=> b!3716569 (= res!1510841 (not lt!1297456))))

(declare-fun b!3716570 () Bool)

(assert (=> b!3716570 (= e!2301193 e!2301190)))

(declare-fun c!642426 () Bool)

(assert (=> b!3716570 (= c!642426 ((_ is EmptyLang!10855) (derivativeStep!3320 (regTwo!22222 r!26326) (head!8021 (_2!22744 lt!1297291)))))))

(declare-fun b!3716571 () Bool)

(declare-fun res!1510834 () Bool)

(assert (=> b!3716571 (=> res!1510834 e!2301194)))

(assert (=> b!3716571 (= res!1510834 e!2301191)))

(declare-fun res!1510836 () Bool)

(assert (=> b!3716571 (=> (not res!1510836) (not e!2301191))))

(assert (=> b!3716571 (= res!1510836 lt!1297456)))

(declare-fun b!3716572 () Bool)

(declare-fun res!1510839 () Bool)

(assert (=> b!3716572 (=> res!1510839 e!2301188)))

(assert (=> b!3716572 (= res!1510839 (not (isEmpty!23507 (tail!5748 (tail!5748 (_2!22744 lt!1297291))))))))

(assert (= (and d!1088201 c!642424) b!3716563))

(assert (= (and d!1088201 (not c!642424)) b!3716566))

(assert (= (and d!1088201 c!642425) b!3716565))

(assert (= (and d!1088201 (not c!642425)) b!3716570))

(assert (= (and b!3716570 c!642426) b!3716568))

(assert (= (and b!3716570 (not c!642426)) b!3716560))

(assert (= (and b!3716560 (not res!1510838)) b!3716571))

(assert (= (and b!3716571 res!1510836) b!3716562))

(assert (= (and b!3716562 res!1510835) b!3716564))

(assert (= (and b!3716564 res!1510840) b!3716559))

(assert (= (and b!3716571 (not res!1510834)) b!3716569))

(assert (= (and b!3716569 res!1510841) b!3716561))

(assert (= (and b!3716561 (not res!1510837)) b!3716572))

(assert (= (and b!3716572 (not res!1510839)) b!3716567))

(assert (= (or b!3716565 b!3716561 b!3716562) bm!269494))

(assert (=> b!3716563 m!4220987))

(declare-fun m!4222135 () Bool)

(assert (=> b!3716563 m!4222135))

(assert (=> d!1088201 m!4220989))

(assert (=> d!1088201 m!4220993))

(assert (=> d!1088201 m!4220987))

(declare-fun m!4222137 () Bool)

(assert (=> d!1088201 m!4222137))

(assert (=> bm!269494 m!4220989))

(assert (=> bm!269494 m!4220993))

(assert (=> b!3716566 m!4220989))

(declare-fun m!4222139 () Bool)

(assert (=> b!3716566 m!4222139))

(assert (=> b!3716566 m!4220987))

(assert (=> b!3716566 m!4222139))

(declare-fun m!4222141 () Bool)

(assert (=> b!3716566 m!4222141))

(assert (=> b!3716566 m!4220989))

(declare-fun m!4222143 () Bool)

(assert (=> b!3716566 m!4222143))

(assert (=> b!3716566 m!4222141))

(assert (=> b!3716566 m!4222143))

(declare-fun m!4222145 () Bool)

(assert (=> b!3716566 m!4222145))

(assert (=> b!3716559 m!4220989))

(assert (=> b!3716559 m!4222139))

(assert (=> b!3716572 m!4220989))

(assert (=> b!3716572 m!4222143))

(assert (=> b!3716572 m!4222143))

(declare-fun m!4222147 () Bool)

(assert (=> b!3716572 m!4222147))

(assert (=> b!3716564 m!4220989))

(assert (=> b!3716564 m!4222143))

(assert (=> b!3716564 m!4222143))

(assert (=> b!3716564 m!4222147))

(assert (=> b!3716567 m!4220989))

(assert (=> b!3716567 m!4222139))

(assert (=> b!3715052 d!1088201))

(declare-fun b!3716573 () Bool)

(declare-fun e!2301195 () Regex!10855)

(declare-fun e!2301198 () Regex!10855)

(assert (=> b!3716573 (= e!2301195 e!2301198)))

(declare-fun c!642430 () Bool)

(assert (=> b!3716573 (= c!642430 ((_ is ElementMatch!10855) (regTwo!22222 r!26326)))))

(declare-fun b!3716574 () Bool)

(declare-fun c!642429 () Bool)

(assert (=> b!3716574 (= c!642429 (nullable!3778 (regOne!22222 (regTwo!22222 r!26326))))))

(declare-fun e!2301196 () Regex!10855)

(declare-fun e!2301199 () Regex!10855)

(assert (=> b!3716574 (= e!2301196 e!2301199)))

(declare-fun bm!269495 () Bool)

(declare-fun call!269501 () Regex!10855)

(declare-fun call!269503 () Regex!10855)

(assert (=> bm!269495 (= call!269501 call!269503)))

(declare-fun b!3716575 () Bool)

(declare-fun c!642427 () Bool)

(assert (=> b!3716575 (= c!642427 ((_ is Union!10855) (regTwo!22222 r!26326)))))

(declare-fun e!2301197 () Regex!10855)

(assert (=> b!3716575 (= e!2301198 e!2301197)))

(declare-fun b!3716576 () Bool)

(declare-fun call!269500 () Regex!10855)

(assert (=> b!3716576 (= e!2301197 (Union!10855 call!269503 call!269500))))

(declare-fun b!3716577 () Bool)

(assert (=> b!3716577 (= e!2301195 EmptyLang!10855)))

(declare-fun b!3716578 () Bool)

(assert (=> b!3716578 (= e!2301198 (ite (= (head!8021 (_2!22744 lt!1297291)) (c!641993 (regTwo!22222 r!26326))) EmptyExpr!10855 EmptyLang!10855))))

(declare-fun bm!269496 () Bool)

(declare-fun call!269502 () Regex!10855)

(assert (=> bm!269496 (= call!269502 call!269500)))

(declare-fun b!3716579 () Bool)

(assert (=> b!3716579 (= e!2301197 e!2301196)))

(declare-fun c!642431 () Bool)

(assert (=> b!3716579 (= c!642431 ((_ is Star!10855) (regTwo!22222 r!26326)))))

(declare-fun bm!269497 () Bool)

(assert (=> bm!269497 (= call!269500 (derivativeStep!3320 (ite c!642427 (regTwo!22223 (regTwo!22222 r!26326)) (ite c!642431 (reg!11184 (regTwo!22222 r!26326)) (regTwo!22222 (regTwo!22222 r!26326)))) (head!8021 (_2!22744 lt!1297291))))))

(declare-fun bm!269498 () Bool)

(assert (=> bm!269498 (= call!269503 (derivativeStep!3320 (ite c!642427 (regOne!22223 (regTwo!22222 r!26326)) (regOne!22222 (regTwo!22222 r!26326))) (head!8021 (_2!22744 lt!1297291))))))

(declare-fun b!3716581 () Bool)

(assert (=> b!3716581 (= e!2301196 (Concat!17126 call!269502 (regTwo!22222 r!26326)))))

(declare-fun b!3716582 () Bool)

(assert (=> b!3716582 (= e!2301199 (Union!10855 (Concat!17126 call!269501 (regTwo!22222 (regTwo!22222 r!26326))) EmptyLang!10855))))

(declare-fun b!3716580 () Bool)

(assert (=> b!3716580 (= e!2301199 (Union!10855 (Concat!17126 call!269501 (regTwo!22222 (regTwo!22222 r!26326))) call!269502))))

(declare-fun d!1088203 () Bool)

(declare-fun lt!1297457 () Regex!10855)

(assert (=> d!1088203 (validRegex!4962 lt!1297457)))

(assert (=> d!1088203 (= lt!1297457 e!2301195)))

(declare-fun c!642428 () Bool)

(assert (=> d!1088203 (= c!642428 (or ((_ is EmptyExpr!10855) (regTwo!22222 r!26326)) ((_ is EmptyLang!10855) (regTwo!22222 r!26326))))))

(assert (=> d!1088203 (validRegex!4962 (regTwo!22222 r!26326))))

(assert (=> d!1088203 (= (derivativeStep!3320 (regTwo!22222 r!26326) (head!8021 (_2!22744 lt!1297291))) lt!1297457)))

(assert (= (and d!1088203 c!642428) b!3716577))

(assert (= (and d!1088203 (not c!642428)) b!3716573))

(assert (= (and b!3716573 c!642430) b!3716578))

(assert (= (and b!3716573 (not c!642430)) b!3716575))

(assert (= (and b!3716575 c!642427) b!3716576))

(assert (= (and b!3716575 (not c!642427)) b!3716579))

(assert (= (and b!3716579 c!642431) b!3716581))

(assert (= (and b!3716579 (not c!642431)) b!3716574))

(assert (= (and b!3716574 c!642429) b!3716580))

(assert (= (and b!3716574 (not c!642429)) b!3716582))

(assert (= (or b!3716580 b!3716582) bm!269495))

(assert (= (or b!3716581 b!3716580) bm!269496))

(assert (= (or b!3716576 bm!269496) bm!269497))

(assert (= (or b!3716576 bm!269495) bm!269498))

(assert (=> b!3716574 m!4221071))

(assert (=> bm!269497 m!4220985))

(declare-fun m!4222149 () Bool)

(assert (=> bm!269497 m!4222149))

(assert (=> bm!269498 m!4220985))

(declare-fun m!4222151 () Bool)

(assert (=> bm!269498 m!4222151))

(declare-fun m!4222153 () Bool)

(assert (=> d!1088203 m!4222153))

(assert (=> d!1088203 m!4220983))

(assert (=> b!3715052 d!1088203))

(assert (=> b!3715052 d!1088177))

(declare-fun d!1088205 () Bool)

(assert (=> d!1088205 (= (tail!5748 (_2!22744 lt!1297291)) (t!302419 (_2!22744 lt!1297291)))))

(assert (=> b!3715052 d!1088205))

(declare-fun d!1088207 () Bool)

(assert (not d!1088207))

(assert (=> b!3715556 d!1088207))

(declare-fun d!1088209 () Bool)

(assert (not d!1088209))

(assert (=> b!3715556 d!1088209))

(assert (=> b!3715556 d!1088119))

(declare-fun d!1088211 () Bool)

(assert (not d!1088211))

(assert (=> b!3715556 d!1088211))

(declare-fun d!1088213 () Bool)

(assert (not d!1088213))

(assert (=> b!3715266 d!1088213))

(declare-fun d!1088215 () Bool)

(assert (not d!1088215))

(assert (=> b!3715266 d!1088215))

(assert (=> b!3715266 d!1088119))

(assert (=> b!3715266 d!1088211))

(declare-fun d!1088217 () Bool)

(assert (=> d!1088217 (= (nullable!3778 (regTwo!22222 r!26326)) (nullableFct!1067 (regTwo!22222 r!26326)))))

(declare-fun bs!574852 () Bool)

(assert (= bs!574852 d!1088217))

(declare-fun m!4222155 () Bool)

(assert (=> bs!574852 m!4222155))

(assert (=> b!3715049 d!1088217))

(declare-fun d!1088219 () Bool)

(declare-fun lt!1297458 () Regex!10855)

(assert (=> d!1088219 (validRegex!4962 lt!1297458)))

(declare-fun e!2301200 () Regex!10855)

(assert (=> d!1088219 (= lt!1297458 e!2301200)))

(declare-fun c!642432 () Bool)

(assert (=> d!1088219 (= c!642432 ((_ is Cons!39612) (t!302419 (_1!22744 lt!1297291))))))

(assert (=> d!1088219 (validRegex!4962 (derivativeStep!3320 lt!1297295 (h!45032 (_1!22744 lt!1297291))))))

(assert (=> d!1088219 (= (derivative!369 (derivativeStep!3320 lt!1297295 (h!45032 (_1!22744 lt!1297291))) (t!302419 (_1!22744 lt!1297291))) lt!1297458)))

(declare-fun b!3716583 () Bool)

(assert (=> b!3716583 (= e!2301200 (derivative!369 (derivativeStep!3320 (derivativeStep!3320 lt!1297295 (h!45032 (_1!22744 lt!1297291))) (h!45032 (t!302419 (_1!22744 lt!1297291)))) (t!302419 (t!302419 (_1!22744 lt!1297291)))))))

(declare-fun b!3716584 () Bool)

(assert (=> b!3716584 (= e!2301200 (derivativeStep!3320 lt!1297295 (h!45032 (_1!22744 lt!1297291))))))

(assert (= (and d!1088219 c!642432) b!3716583))

(assert (= (and d!1088219 (not c!642432)) b!3716584))

(declare-fun m!4222157 () Bool)

(assert (=> d!1088219 m!4222157))

(assert (=> d!1088219 m!4221343))

(declare-fun m!4222159 () Bool)

(assert (=> d!1088219 m!4222159))

(assert (=> b!3716583 m!4221343))

(declare-fun m!4222161 () Bool)

(assert (=> b!3716583 m!4222161))

(assert (=> b!3716583 m!4222161))

(declare-fun m!4222163 () Bool)

(assert (=> b!3716583 m!4222163))

(assert (=> b!3715563 d!1088219))

(declare-fun b!3716585 () Bool)

(declare-fun e!2301201 () Regex!10855)

(declare-fun e!2301204 () Regex!10855)

(assert (=> b!3716585 (= e!2301201 e!2301204)))

(declare-fun c!642436 () Bool)

(assert (=> b!3716585 (= c!642436 ((_ is ElementMatch!10855) lt!1297295))))

(declare-fun b!3716586 () Bool)

(declare-fun c!642435 () Bool)

(assert (=> b!3716586 (= c!642435 (nullable!3778 (regOne!22222 lt!1297295)))))

(declare-fun e!2301202 () Regex!10855)

(declare-fun e!2301205 () Regex!10855)

(assert (=> b!3716586 (= e!2301202 e!2301205)))

(declare-fun bm!269499 () Bool)

(declare-fun call!269505 () Regex!10855)

(declare-fun call!269507 () Regex!10855)

(assert (=> bm!269499 (= call!269505 call!269507)))

(declare-fun b!3716587 () Bool)

(declare-fun c!642433 () Bool)

(assert (=> b!3716587 (= c!642433 ((_ is Union!10855) lt!1297295))))

(declare-fun e!2301203 () Regex!10855)

(assert (=> b!3716587 (= e!2301204 e!2301203)))

(declare-fun b!3716588 () Bool)

(declare-fun call!269504 () Regex!10855)

(assert (=> b!3716588 (= e!2301203 (Union!10855 call!269507 call!269504))))

(declare-fun b!3716589 () Bool)

(assert (=> b!3716589 (= e!2301201 EmptyLang!10855)))

(declare-fun b!3716590 () Bool)

(assert (=> b!3716590 (= e!2301204 (ite (= (h!45032 (_1!22744 lt!1297291)) (c!641993 lt!1297295)) EmptyExpr!10855 EmptyLang!10855))))

(declare-fun bm!269500 () Bool)

(declare-fun call!269506 () Regex!10855)

(assert (=> bm!269500 (= call!269506 call!269504)))

(declare-fun b!3716591 () Bool)

(assert (=> b!3716591 (= e!2301203 e!2301202)))

(declare-fun c!642437 () Bool)

(assert (=> b!3716591 (= c!642437 ((_ is Star!10855) lt!1297295))))

(declare-fun bm!269501 () Bool)

(assert (=> bm!269501 (= call!269504 (derivativeStep!3320 (ite c!642433 (regTwo!22223 lt!1297295) (ite c!642437 (reg!11184 lt!1297295) (regTwo!22222 lt!1297295))) (h!45032 (_1!22744 lt!1297291))))))

(declare-fun bm!269502 () Bool)

(assert (=> bm!269502 (= call!269507 (derivativeStep!3320 (ite c!642433 (regOne!22223 lt!1297295) (regOne!22222 lt!1297295)) (h!45032 (_1!22744 lt!1297291))))))

(declare-fun b!3716593 () Bool)

(assert (=> b!3716593 (= e!2301202 (Concat!17126 call!269506 lt!1297295))))

(declare-fun b!3716594 () Bool)

(assert (=> b!3716594 (= e!2301205 (Union!10855 (Concat!17126 call!269505 (regTwo!22222 lt!1297295)) EmptyLang!10855))))

(declare-fun b!3716592 () Bool)

(assert (=> b!3716592 (= e!2301205 (Union!10855 (Concat!17126 call!269505 (regTwo!22222 lt!1297295)) call!269506))))

(declare-fun d!1088221 () Bool)

(declare-fun lt!1297459 () Regex!10855)

(assert (=> d!1088221 (validRegex!4962 lt!1297459)))

(assert (=> d!1088221 (= lt!1297459 e!2301201)))

(declare-fun c!642434 () Bool)

(assert (=> d!1088221 (= c!642434 (or ((_ is EmptyExpr!10855) lt!1297295) ((_ is EmptyLang!10855) lt!1297295)))))

(assert (=> d!1088221 (validRegex!4962 lt!1297295)))

(assert (=> d!1088221 (= (derivativeStep!3320 lt!1297295 (h!45032 (_1!22744 lt!1297291))) lt!1297459)))

(assert (= (and d!1088221 c!642434) b!3716589))

(assert (= (and d!1088221 (not c!642434)) b!3716585))

(assert (= (and b!3716585 c!642436) b!3716590))

(assert (= (and b!3716585 (not c!642436)) b!3716587))

(assert (= (and b!3716587 c!642433) b!3716588))

(assert (= (and b!3716587 (not c!642433)) b!3716591))

(assert (= (and b!3716591 c!642437) b!3716593))

(assert (= (and b!3716591 (not c!642437)) b!3716586))

(assert (= (and b!3716586 c!642435) b!3716592))

(assert (= (and b!3716586 (not c!642435)) b!3716594))

(assert (= (or b!3716592 b!3716594) bm!269499))

(assert (= (or b!3716593 b!3716592) bm!269500))

(assert (= (or b!3716588 bm!269500) bm!269501))

(assert (= (or b!3716588 bm!269499) bm!269502))

(declare-fun m!4222165 () Bool)

(assert (=> b!3716586 m!4222165))

(declare-fun m!4222167 () Bool)

(assert (=> bm!269501 m!4222167))

(declare-fun m!4222169 () Bool)

(assert (=> bm!269502 m!4222169))

(declare-fun m!4222171 () Bool)

(assert (=> d!1088221 m!4222171))

(assert (=> d!1088221 m!4221149))

(assert (=> b!3715563 d!1088221))

(declare-fun b!3716595 () Bool)

(declare-fun e!2301206 () List!39736)

(assert (=> b!3716595 (= e!2301206 Nil!39612)))

(declare-fun c!642440 () Bool)

(declare-fun c!642438 () Bool)

(declare-fun bm!269503 () Bool)

(declare-fun call!269509 () List!39736)

(assert (=> bm!269503 (= call!269509 (usedCharacters!1118 (ite c!642440 (reg!11184 (ite c!642180 (reg!11184 (regOne!22222 r!26326)) (ite c!642178 (regOne!22223 (regOne!22222 r!26326)) (regOne!22222 (regOne!22222 r!26326))))) (ite c!642438 (regOne!22223 (ite c!642180 (reg!11184 (regOne!22222 r!26326)) (ite c!642178 (regOne!22223 (regOne!22222 r!26326)) (regOne!22222 (regOne!22222 r!26326))))) (regOne!22222 (ite c!642180 (reg!11184 (regOne!22222 r!26326)) (ite c!642178 (regOne!22223 (regOne!22222 r!26326)) (regOne!22222 (regOne!22222 r!26326)))))))))))

(declare-fun c!642439 () Bool)

(declare-fun d!1088223 () Bool)

(assert (=> d!1088223 (= c!642439 (or ((_ is EmptyExpr!10855) (ite c!642180 (reg!11184 (regOne!22222 r!26326)) (ite c!642178 (regOne!22223 (regOne!22222 r!26326)) (regOne!22222 (regOne!22222 r!26326))))) ((_ is EmptyLang!10855) (ite c!642180 (reg!11184 (regOne!22222 r!26326)) (ite c!642178 (regOne!22223 (regOne!22222 r!26326)) (regOne!22222 (regOne!22222 r!26326)))))))))

(assert (=> d!1088223 (= (usedCharacters!1118 (ite c!642180 (reg!11184 (regOne!22222 r!26326)) (ite c!642178 (regOne!22223 (regOne!22222 r!26326)) (regOne!22222 (regOne!22222 r!26326))))) e!2301206)))

(declare-fun b!3716596 () Bool)

(declare-fun e!2301209 () List!39736)

(declare-fun e!2301208 () List!39736)

(assert (=> b!3716596 (= e!2301209 e!2301208)))

(assert (=> b!3716596 (= c!642438 ((_ is Union!10855) (ite c!642180 (reg!11184 (regOne!22222 r!26326)) (ite c!642178 (regOne!22223 (regOne!22222 r!26326)) (regOne!22222 (regOne!22222 r!26326))))))))

(declare-fun b!3716597 () Bool)

(declare-fun call!269508 () List!39736)

(assert (=> b!3716597 (= e!2301208 call!269508)))

(declare-fun b!3716598 () Bool)

(declare-fun e!2301207 () List!39736)

(assert (=> b!3716598 (= e!2301207 (Cons!39612 (c!641993 (ite c!642180 (reg!11184 (regOne!22222 r!26326)) (ite c!642178 (regOne!22223 (regOne!22222 r!26326)) (regOne!22222 (regOne!22222 r!26326))))) Nil!39612))))

(declare-fun bm!269504 () Bool)

(declare-fun call!269511 () List!39736)

(declare-fun call!269510 () List!39736)

(assert (=> bm!269504 (= call!269508 (++!9801 call!269511 call!269510))))

(declare-fun b!3716599 () Bool)

(assert (=> b!3716599 (= e!2301206 e!2301207)))

(declare-fun c!642441 () Bool)

(assert (=> b!3716599 (= c!642441 ((_ is ElementMatch!10855) (ite c!642180 (reg!11184 (regOne!22222 r!26326)) (ite c!642178 (regOne!22223 (regOne!22222 r!26326)) (regOne!22222 (regOne!22222 r!26326))))))))

(declare-fun b!3716600 () Bool)

(assert (=> b!3716600 (= e!2301208 call!269508)))

(declare-fun b!3716601 () Bool)

(assert (=> b!3716601 (= e!2301209 call!269509)))

(declare-fun bm!269505 () Bool)

(assert (=> bm!269505 (= call!269510 (usedCharacters!1118 (ite c!642438 (regTwo!22223 (ite c!642180 (reg!11184 (regOne!22222 r!26326)) (ite c!642178 (regOne!22223 (regOne!22222 r!26326)) (regOne!22222 (regOne!22222 r!26326))))) (regTwo!22222 (ite c!642180 (reg!11184 (regOne!22222 r!26326)) (ite c!642178 (regOne!22223 (regOne!22222 r!26326)) (regOne!22222 (regOne!22222 r!26326))))))))))

(declare-fun b!3716602 () Bool)

(assert (=> b!3716602 (= c!642440 ((_ is Star!10855) (ite c!642180 (reg!11184 (regOne!22222 r!26326)) (ite c!642178 (regOne!22223 (regOne!22222 r!26326)) (regOne!22222 (regOne!22222 r!26326))))))))

(assert (=> b!3716602 (= e!2301207 e!2301209)))

(declare-fun bm!269506 () Bool)

(assert (=> bm!269506 (= call!269511 call!269509)))

(assert (= (and d!1088223 c!642439) b!3716595))

(assert (= (and d!1088223 (not c!642439)) b!3716599))

(assert (= (and b!3716599 c!642441) b!3716598))

(assert (= (and b!3716599 (not c!642441)) b!3716602))

(assert (= (and b!3716602 c!642440) b!3716601))

(assert (= (and b!3716602 (not c!642440)) b!3716596))

(assert (= (and b!3716596 c!642438) b!3716597))

(assert (= (and b!3716596 (not c!642438)) b!3716600))

(assert (= (or b!3716597 b!3716600) bm!269506))

(assert (= (or b!3716597 b!3716600) bm!269505))

(assert (= (or b!3716597 b!3716600) bm!269504))

(assert (= (or b!3716601 bm!269506) bm!269503))

(declare-fun m!4222173 () Bool)

(assert (=> bm!269503 m!4222173))

(declare-fun m!4222175 () Bool)

(assert (=> bm!269504 m!4222175))

(declare-fun m!4222177 () Bool)

(assert (=> bm!269505 m!4222177))

(assert (=> bm!269298 d!1088223))

(declare-fun b!3716603 () Bool)

(declare-fun e!2301210 () Regex!10855)

(declare-fun e!2301213 () Regex!10855)

(assert (=> b!3716603 (= e!2301210 e!2301213)))

(declare-fun c!642445 () Bool)

(assert (=> b!3716603 (= c!642445 ((_ is ElementMatch!10855) (ite c!642155 (regTwo!22223 r!26326) (ite c!642159 (reg!11184 r!26326) (regTwo!22222 r!26326)))))))

(declare-fun b!3716604 () Bool)

(declare-fun c!642444 () Bool)

(assert (=> b!3716604 (= c!642444 (nullable!3778 (regOne!22222 (ite c!642155 (regTwo!22223 r!26326) (ite c!642159 (reg!11184 r!26326) (regTwo!22222 r!26326))))))))

(declare-fun e!2301211 () Regex!10855)

(declare-fun e!2301214 () Regex!10855)

(assert (=> b!3716604 (= e!2301211 e!2301214)))

(declare-fun bm!269507 () Bool)

(declare-fun call!269513 () Regex!10855)

(declare-fun call!269515 () Regex!10855)

(assert (=> bm!269507 (= call!269513 call!269515)))

(declare-fun b!3716605 () Bool)

(declare-fun c!642442 () Bool)

(assert (=> b!3716605 (= c!642442 ((_ is Union!10855) (ite c!642155 (regTwo!22223 r!26326) (ite c!642159 (reg!11184 r!26326) (regTwo!22222 r!26326)))))))

(declare-fun e!2301212 () Regex!10855)

(assert (=> b!3716605 (= e!2301213 e!2301212)))

(declare-fun b!3716606 () Bool)

(declare-fun call!269512 () Regex!10855)

(assert (=> b!3716606 (= e!2301212 (Union!10855 call!269515 call!269512))))

(declare-fun b!3716607 () Bool)

(assert (=> b!3716607 (= e!2301210 EmptyLang!10855)))

(declare-fun b!3716608 () Bool)

(assert (=> b!3716608 (= e!2301213 (ite (= c!13576 (c!641993 (ite c!642155 (regTwo!22223 r!26326) (ite c!642159 (reg!11184 r!26326) (regTwo!22222 r!26326))))) EmptyExpr!10855 EmptyLang!10855))))

(declare-fun bm!269508 () Bool)

(declare-fun call!269514 () Regex!10855)

(assert (=> bm!269508 (= call!269514 call!269512)))

(declare-fun b!3716609 () Bool)

(assert (=> b!3716609 (= e!2301212 e!2301211)))

(declare-fun c!642446 () Bool)

(assert (=> b!3716609 (= c!642446 ((_ is Star!10855) (ite c!642155 (regTwo!22223 r!26326) (ite c!642159 (reg!11184 r!26326) (regTwo!22222 r!26326)))))))

(declare-fun bm!269509 () Bool)

(assert (=> bm!269509 (= call!269512 (derivativeStep!3320 (ite c!642442 (regTwo!22223 (ite c!642155 (regTwo!22223 r!26326) (ite c!642159 (reg!11184 r!26326) (regTwo!22222 r!26326)))) (ite c!642446 (reg!11184 (ite c!642155 (regTwo!22223 r!26326) (ite c!642159 (reg!11184 r!26326) (regTwo!22222 r!26326)))) (regTwo!22222 (ite c!642155 (regTwo!22223 r!26326) (ite c!642159 (reg!11184 r!26326) (regTwo!22222 r!26326)))))) c!13576))))

(declare-fun bm!269510 () Bool)

(assert (=> bm!269510 (= call!269515 (derivativeStep!3320 (ite c!642442 (regOne!22223 (ite c!642155 (regTwo!22223 r!26326) (ite c!642159 (reg!11184 r!26326) (regTwo!22222 r!26326)))) (regOne!22222 (ite c!642155 (regTwo!22223 r!26326) (ite c!642159 (reg!11184 r!26326) (regTwo!22222 r!26326))))) c!13576))))

(declare-fun b!3716611 () Bool)

(assert (=> b!3716611 (= e!2301211 (Concat!17126 call!269514 (ite c!642155 (regTwo!22223 r!26326) (ite c!642159 (reg!11184 r!26326) (regTwo!22222 r!26326)))))))

(declare-fun b!3716612 () Bool)

(assert (=> b!3716612 (= e!2301214 (Union!10855 (Concat!17126 call!269513 (regTwo!22222 (ite c!642155 (regTwo!22223 r!26326) (ite c!642159 (reg!11184 r!26326) (regTwo!22222 r!26326))))) EmptyLang!10855))))

(declare-fun b!3716610 () Bool)

(assert (=> b!3716610 (= e!2301214 (Union!10855 (Concat!17126 call!269513 (regTwo!22222 (ite c!642155 (regTwo!22223 r!26326) (ite c!642159 (reg!11184 r!26326) (regTwo!22222 r!26326))))) call!269514))))

(declare-fun d!1088225 () Bool)

(declare-fun lt!1297460 () Regex!10855)

(assert (=> d!1088225 (validRegex!4962 lt!1297460)))

(assert (=> d!1088225 (= lt!1297460 e!2301210)))

(declare-fun c!642443 () Bool)

(assert (=> d!1088225 (= c!642443 (or ((_ is EmptyExpr!10855) (ite c!642155 (regTwo!22223 r!26326) (ite c!642159 (reg!11184 r!26326) (regTwo!22222 r!26326)))) ((_ is EmptyLang!10855) (ite c!642155 (regTwo!22223 r!26326) (ite c!642159 (reg!11184 r!26326) (regTwo!22222 r!26326))))))))

(assert (=> d!1088225 (validRegex!4962 (ite c!642155 (regTwo!22223 r!26326) (ite c!642159 (reg!11184 r!26326) (regTwo!22222 r!26326))))))

(assert (=> d!1088225 (= (derivativeStep!3320 (ite c!642155 (regTwo!22223 r!26326) (ite c!642159 (reg!11184 r!26326) (regTwo!22222 r!26326))) c!13576) lt!1297460)))

(assert (= (and d!1088225 c!642443) b!3716607))

(assert (= (and d!1088225 (not c!642443)) b!3716603))

(assert (= (and b!3716603 c!642445) b!3716608))

(assert (= (and b!3716603 (not c!642445)) b!3716605))

(assert (= (and b!3716605 c!642442) b!3716606))

(assert (= (and b!3716605 (not c!642442)) b!3716609))

(assert (= (and b!3716609 c!642446) b!3716611))

(assert (= (and b!3716609 (not c!642446)) b!3716604))

(assert (= (and b!3716604 c!642444) b!3716610))

(assert (= (and b!3716604 (not c!642444)) b!3716612))

(assert (= (or b!3716610 b!3716612) bm!269507))

(assert (= (or b!3716611 b!3716610) bm!269508))

(assert (= (or b!3716606 bm!269508) bm!269509))

(assert (= (or b!3716606 bm!269507) bm!269510))

(declare-fun m!4222179 () Bool)

(assert (=> b!3716604 m!4222179))

(declare-fun m!4222181 () Bool)

(assert (=> bm!269509 m!4222181))

(declare-fun m!4222183 () Bool)

(assert (=> bm!269510 m!4222183))

(declare-fun m!4222185 () Bool)

(assert (=> d!1088225 m!4222185))

(declare-fun m!4222187 () Bool)

(assert (=> d!1088225 m!4222187))

(assert (=> bm!269280 d!1088225))

(assert (=> b!3715035 d!1088073))

(declare-fun d!1088227 () Bool)

(assert (=> d!1088227 (= (isEmpty!23507 (tail!5748 (_1!22744 lt!1297291))) ((_ is Nil!39612) (tail!5748 (_1!22744 lt!1297291))))))

(assert (=> b!3715294 d!1088227))

(declare-fun d!1088229 () Bool)

(assert (=> d!1088229 (= (tail!5748 (_1!22744 lt!1297291)) (t!302419 (_1!22744 lt!1297291)))))

(assert (=> b!3715294 d!1088229))

(assert (=> b!3715553 d!1087769))

(declare-fun b!3716613 () Bool)

(declare-fun e!2301218 () Bool)

(assert (=> b!3716613 (= e!2301218 (= (head!8021 (tail!5748 tl!3933)) (c!641993 (derivativeStep!3320 lt!1297287 (head!8021 tl!3933)))))))

(declare-fun b!3716614 () Bool)

(declare-fun res!1510846 () Bool)

(declare-fun e!2301221 () Bool)

(assert (=> b!3716614 (=> res!1510846 e!2301221)))

(assert (=> b!3716614 (= res!1510846 (not ((_ is ElementMatch!10855) (derivativeStep!3320 lt!1297287 (head!8021 tl!3933)))))))

(declare-fun e!2301217 () Bool)

(assert (=> b!3716614 (= e!2301217 e!2301221)))

(declare-fun d!1088231 () Bool)

(declare-fun e!2301220 () Bool)

(assert (=> d!1088231 e!2301220))

(declare-fun c!642448 () Bool)

(assert (=> d!1088231 (= c!642448 ((_ is EmptyExpr!10855) (derivativeStep!3320 lt!1297287 (head!8021 tl!3933))))))

(declare-fun lt!1297461 () Bool)

(declare-fun e!2301216 () Bool)

(assert (=> d!1088231 (= lt!1297461 e!2301216)))

(declare-fun c!642447 () Bool)

(assert (=> d!1088231 (= c!642447 (isEmpty!23507 (tail!5748 tl!3933)))))

(assert (=> d!1088231 (validRegex!4962 (derivativeStep!3320 lt!1297287 (head!8021 tl!3933)))))

(assert (=> d!1088231 (= (matchR!5300 (derivativeStep!3320 lt!1297287 (head!8021 tl!3933)) (tail!5748 tl!3933)) lt!1297461)))

(declare-fun b!3716615 () Bool)

(declare-fun e!2301219 () Bool)

(declare-fun e!2301215 () Bool)

(assert (=> b!3716615 (= e!2301219 e!2301215)))

(declare-fun res!1510845 () Bool)

(assert (=> b!3716615 (=> res!1510845 e!2301215)))

(declare-fun call!269516 () Bool)

(assert (=> b!3716615 (= res!1510845 call!269516)))

(declare-fun b!3716616 () Bool)

(declare-fun res!1510843 () Bool)

(assert (=> b!3716616 (=> (not res!1510843) (not e!2301218))))

(assert (=> b!3716616 (= res!1510843 (not call!269516))))

(declare-fun bm!269511 () Bool)

(assert (=> bm!269511 (= call!269516 (isEmpty!23507 (tail!5748 tl!3933)))))

(declare-fun b!3716617 () Bool)

(assert (=> b!3716617 (= e!2301216 (nullable!3778 (derivativeStep!3320 lt!1297287 (head!8021 tl!3933))))))

(declare-fun b!3716618 () Bool)

(declare-fun res!1510848 () Bool)

(assert (=> b!3716618 (=> (not res!1510848) (not e!2301218))))

(assert (=> b!3716618 (= res!1510848 (isEmpty!23507 (tail!5748 (tail!5748 tl!3933))))))

(declare-fun b!3716619 () Bool)

(assert (=> b!3716619 (= e!2301220 (= lt!1297461 call!269516))))

(declare-fun b!3716620 () Bool)

(assert (=> b!3716620 (= e!2301216 (matchR!5300 (derivativeStep!3320 (derivativeStep!3320 lt!1297287 (head!8021 tl!3933)) (head!8021 (tail!5748 tl!3933))) (tail!5748 (tail!5748 tl!3933))))))

(declare-fun b!3716621 () Bool)

(assert (=> b!3716621 (= e!2301215 (not (= (head!8021 (tail!5748 tl!3933)) (c!641993 (derivativeStep!3320 lt!1297287 (head!8021 tl!3933))))))))

(declare-fun b!3716622 () Bool)

(assert (=> b!3716622 (= e!2301217 (not lt!1297461))))

(declare-fun b!3716623 () Bool)

(assert (=> b!3716623 (= e!2301221 e!2301219)))

(declare-fun res!1510849 () Bool)

(assert (=> b!3716623 (=> (not res!1510849) (not e!2301219))))

(assert (=> b!3716623 (= res!1510849 (not lt!1297461))))

(declare-fun b!3716624 () Bool)

(assert (=> b!3716624 (= e!2301220 e!2301217)))

(declare-fun c!642449 () Bool)

(assert (=> b!3716624 (= c!642449 ((_ is EmptyLang!10855) (derivativeStep!3320 lt!1297287 (head!8021 tl!3933))))))

(declare-fun b!3716625 () Bool)

(declare-fun res!1510842 () Bool)

(assert (=> b!3716625 (=> res!1510842 e!2301221)))

(assert (=> b!3716625 (= res!1510842 e!2301218)))

(declare-fun res!1510844 () Bool)

(assert (=> b!3716625 (=> (not res!1510844) (not e!2301218))))

(assert (=> b!3716625 (= res!1510844 lt!1297461)))

(declare-fun b!3716626 () Bool)

(declare-fun res!1510847 () Bool)

(assert (=> b!3716626 (=> res!1510847 e!2301215)))

(assert (=> b!3716626 (= res!1510847 (not (isEmpty!23507 (tail!5748 (tail!5748 tl!3933)))))))

(assert (= (and d!1088231 c!642447) b!3716617))

(assert (= (and d!1088231 (not c!642447)) b!3716620))

(assert (= (and d!1088231 c!642448) b!3716619))

(assert (= (and d!1088231 (not c!642448)) b!3716624))

(assert (= (and b!3716624 c!642449) b!3716622))

(assert (= (and b!3716624 (not c!642449)) b!3716614))

(assert (= (and b!3716614 (not res!1510846)) b!3716625))

(assert (= (and b!3716625 res!1510844) b!3716616))

(assert (= (and b!3716616 res!1510843) b!3716618))

(assert (= (and b!3716618 res!1510848) b!3716613))

(assert (= (and b!3716625 (not res!1510842)) b!3716623))

(assert (= (and b!3716623 res!1510849) b!3716615))

(assert (= (and b!3716615 (not res!1510845)) b!3716626))

(assert (= (and b!3716626 (not res!1510847)) b!3716621))

(assert (= (or b!3716619 b!3716615 b!3716616) bm!269511))

(assert (=> b!3716617 m!4221089))

(declare-fun m!4222189 () Bool)

(assert (=> b!3716617 m!4222189))

(assert (=> d!1088231 m!4220973))

(assert (=> d!1088231 m!4220977))

(assert (=> d!1088231 m!4221089))

(declare-fun m!4222191 () Bool)

(assert (=> d!1088231 m!4222191))

(assert (=> bm!269511 m!4220973))

(assert (=> bm!269511 m!4220977))

(assert (=> b!3716620 m!4220973))

(assert (=> b!3716620 m!4221811))

(assert (=> b!3716620 m!4221089))

(assert (=> b!3716620 m!4221811))

(declare-fun m!4222193 () Bool)

(assert (=> b!3716620 m!4222193))

(assert (=> b!3716620 m!4220973))

(assert (=> b!3716620 m!4221819))

(assert (=> b!3716620 m!4222193))

(assert (=> b!3716620 m!4221819))

(declare-fun m!4222195 () Bool)

(assert (=> b!3716620 m!4222195))

(assert (=> b!3716613 m!4220973))

(assert (=> b!3716613 m!4221811))

(assert (=> b!3716626 m!4220973))

(assert (=> b!3716626 m!4221819))

(assert (=> b!3716626 m!4221819))

(assert (=> b!3716626 m!4221825))

(assert (=> b!3716618 m!4220973))

(assert (=> b!3716618 m!4221819))

(assert (=> b!3716618 m!4221819))

(assert (=> b!3716618 m!4221825))

(assert (=> b!3716621 m!4220973))

(assert (=> b!3716621 m!4221811))

(assert (=> b!3715227 d!1088231))

(declare-fun b!3716627 () Bool)

(declare-fun e!2301222 () Regex!10855)

(declare-fun e!2301225 () Regex!10855)

(assert (=> b!3716627 (= e!2301222 e!2301225)))

(declare-fun c!642453 () Bool)

(assert (=> b!3716627 (= c!642453 ((_ is ElementMatch!10855) lt!1297287))))

(declare-fun b!3716628 () Bool)

(declare-fun c!642452 () Bool)

(assert (=> b!3716628 (= c!642452 (nullable!3778 (regOne!22222 lt!1297287)))))

(declare-fun e!2301223 () Regex!10855)

(declare-fun e!2301226 () Regex!10855)

(assert (=> b!3716628 (= e!2301223 e!2301226)))

(declare-fun bm!269512 () Bool)

(declare-fun call!269518 () Regex!10855)

(declare-fun call!269520 () Regex!10855)

(assert (=> bm!269512 (= call!269518 call!269520)))

(declare-fun b!3716629 () Bool)

(declare-fun c!642450 () Bool)

(assert (=> b!3716629 (= c!642450 ((_ is Union!10855) lt!1297287))))

(declare-fun e!2301224 () Regex!10855)

(assert (=> b!3716629 (= e!2301225 e!2301224)))

(declare-fun b!3716630 () Bool)

(declare-fun call!269517 () Regex!10855)

(assert (=> b!3716630 (= e!2301224 (Union!10855 call!269520 call!269517))))

(declare-fun b!3716631 () Bool)

(assert (=> b!3716631 (= e!2301222 EmptyLang!10855)))

(declare-fun b!3716632 () Bool)

(assert (=> b!3716632 (= e!2301225 (ite (= (head!8021 tl!3933) (c!641993 lt!1297287)) EmptyExpr!10855 EmptyLang!10855))))

(declare-fun bm!269513 () Bool)

(declare-fun call!269519 () Regex!10855)

(assert (=> bm!269513 (= call!269519 call!269517)))

(declare-fun b!3716633 () Bool)

(assert (=> b!3716633 (= e!2301224 e!2301223)))

(declare-fun c!642454 () Bool)

(assert (=> b!3716633 (= c!642454 ((_ is Star!10855) lt!1297287))))

(declare-fun bm!269514 () Bool)

(assert (=> bm!269514 (= call!269517 (derivativeStep!3320 (ite c!642450 (regTwo!22223 lt!1297287) (ite c!642454 (reg!11184 lt!1297287) (regTwo!22222 lt!1297287))) (head!8021 tl!3933)))))

(declare-fun bm!269515 () Bool)

(assert (=> bm!269515 (= call!269520 (derivativeStep!3320 (ite c!642450 (regOne!22223 lt!1297287) (regOne!22222 lt!1297287)) (head!8021 tl!3933)))))

(declare-fun b!3716635 () Bool)

(assert (=> b!3716635 (= e!2301223 (Concat!17126 call!269519 lt!1297287))))

(declare-fun b!3716636 () Bool)

(assert (=> b!3716636 (= e!2301226 (Union!10855 (Concat!17126 call!269518 (regTwo!22222 lt!1297287)) EmptyLang!10855))))

(declare-fun b!3716634 () Bool)

(assert (=> b!3716634 (= e!2301226 (Union!10855 (Concat!17126 call!269518 (regTwo!22222 lt!1297287)) call!269519))))

(declare-fun d!1088233 () Bool)

(declare-fun lt!1297462 () Regex!10855)

(assert (=> d!1088233 (validRegex!4962 lt!1297462)))

(assert (=> d!1088233 (= lt!1297462 e!2301222)))

(declare-fun c!642451 () Bool)

(assert (=> d!1088233 (= c!642451 (or ((_ is EmptyExpr!10855) lt!1297287) ((_ is EmptyLang!10855) lt!1297287)))))

(assert (=> d!1088233 (validRegex!4962 lt!1297287)))

(assert (=> d!1088233 (= (derivativeStep!3320 lt!1297287 (head!8021 tl!3933)) lt!1297462)))

(assert (= (and d!1088233 c!642451) b!3716631))

(assert (= (and d!1088233 (not c!642451)) b!3716627))

(assert (= (and b!3716627 c!642453) b!3716632))

(assert (= (and b!3716627 (not c!642453)) b!3716629))

(assert (= (and b!3716629 c!642450) b!3716630))

(assert (= (and b!3716629 (not c!642450)) b!3716633))

(assert (= (and b!3716633 c!642454) b!3716635))

(assert (= (and b!3716633 (not c!642454)) b!3716628))

(assert (= (and b!3716628 c!642452) b!3716634))

(assert (= (and b!3716628 (not c!642452)) b!3716636))

(assert (= (or b!3716634 b!3716636) bm!269512))

(assert (= (or b!3716635 b!3716634) bm!269513))

(assert (= (or b!3716630 bm!269513) bm!269514))

(assert (= (or b!3716630 bm!269512) bm!269515))

(assert (=> b!3716628 m!4222113))

(assert (=> bm!269514 m!4220969))

(declare-fun m!4222197 () Bool)

(assert (=> bm!269514 m!4222197))

(assert (=> bm!269515 m!4220969))

(declare-fun m!4222199 () Bool)

(assert (=> bm!269515 m!4222199))

(declare-fun m!4222201 () Bool)

(assert (=> d!1088233 m!4222201))

(assert (=> d!1088233 m!4221025))

(assert (=> b!3715227 d!1088233))

(assert (=> b!3715227 d!1088073))

(assert (=> b!3715227 d!1088079))

(assert (=> b!3715568 d!1087881))

(declare-fun b!3716637 () Bool)

(declare-fun e!2301230 () Bool)

(assert (=> b!3716637 (= e!2301230 (= (head!8021 (tail!5748 tl!3933)) (c!641993 (derivativeStep!3320 lt!1297297 (head!8021 tl!3933)))))))

(declare-fun b!3716638 () Bool)

(declare-fun res!1510854 () Bool)

(declare-fun e!2301233 () Bool)

(assert (=> b!3716638 (=> res!1510854 e!2301233)))

(assert (=> b!3716638 (= res!1510854 (not ((_ is ElementMatch!10855) (derivativeStep!3320 lt!1297297 (head!8021 tl!3933)))))))

(declare-fun e!2301229 () Bool)

(assert (=> b!3716638 (= e!2301229 e!2301233)))

(declare-fun d!1088235 () Bool)

(declare-fun e!2301232 () Bool)

(assert (=> d!1088235 e!2301232))

(declare-fun c!642456 () Bool)

(assert (=> d!1088235 (= c!642456 ((_ is EmptyExpr!10855) (derivativeStep!3320 lt!1297297 (head!8021 tl!3933))))))

(declare-fun lt!1297463 () Bool)

(declare-fun e!2301228 () Bool)

(assert (=> d!1088235 (= lt!1297463 e!2301228)))

(declare-fun c!642455 () Bool)

(assert (=> d!1088235 (= c!642455 (isEmpty!23507 (tail!5748 tl!3933)))))

(assert (=> d!1088235 (validRegex!4962 (derivativeStep!3320 lt!1297297 (head!8021 tl!3933)))))

(assert (=> d!1088235 (= (matchR!5300 (derivativeStep!3320 lt!1297297 (head!8021 tl!3933)) (tail!5748 tl!3933)) lt!1297463)))

(declare-fun b!3716639 () Bool)

(declare-fun e!2301231 () Bool)

(declare-fun e!2301227 () Bool)

(assert (=> b!3716639 (= e!2301231 e!2301227)))

(declare-fun res!1510853 () Bool)

(assert (=> b!3716639 (=> res!1510853 e!2301227)))

(declare-fun call!269521 () Bool)

(assert (=> b!3716639 (= res!1510853 call!269521)))

(declare-fun b!3716640 () Bool)

(declare-fun res!1510851 () Bool)

(assert (=> b!3716640 (=> (not res!1510851) (not e!2301230))))

(assert (=> b!3716640 (= res!1510851 (not call!269521))))

(declare-fun bm!269516 () Bool)

(assert (=> bm!269516 (= call!269521 (isEmpty!23507 (tail!5748 tl!3933)))))

(declare-fun b!3716641 () Bool)

(assert (=> b!3716641 (= e!2301228 (nullable!3778 (derivativeStep!3320 lt!1297297 (head!8021 tl!3933))))))

(declare-fun b!3716642 () Bool)

(declare-fun res!1510856 () Bool)

(assert (=> b!3716642 (=> (not res!1510856) (not e!2301230))))

(assert (=> b!3716642 (= res!1510856 (isEmpty!23507 (tail!5748 (tail!5748 tl!3933))))))

(declare-fun b!3716643 () Bool)

(assert (=> b!3716643 (= e!2301232 (= lt!1297463 call!269521))))

(declare-fun b!3716644 () Bool)

(assert (=> b!3716644 (= e!2301228 (matchR!5300 (derivativeStep!3320 (derivativeStep!3320 lt!1297297 (head!8021 tl!3933)) (head!8021 (tail!5748 tl!3933))) (tail!5748 (tail!5748 tl!3933))))))

(declare-fun b!3716645 () Bool)

(assert (=> b!3716645 (= e!2301227 (not (= (head!8021 (tail!5748 tl!3933)) (c!641993 (derivativeStep!3320 lt!1297297 (head!8021 tl!3933))))))))

(declare-fun b!3716646 () Bool)

(assert (=> b!3716646 (= e!2301229 (not lt!1297463))))

(declare-fun b!3716647 () Bool)

(assert (=> b!3716647 (= e!2301233 e!2301231)))

(declare-fun res!1510857 () Bool)

(assert (=> b!3716647 (=> (not res!1510857) (not e!2301231))))

(assert (=> b!3716647 (= res!1510857 (not lt!1297463))))

(declare-fun b!3716648 () Bool)

(assert (=> b!3716648 (= e!2301232 e!2301229)))

(declare-fun c!642457 () Bool)

(assert (=> b!3716648 (= c!642457 ((_ is EmptyLang!10855) (derivativeStep!3320 lt!1297297 (head!8021 tl!3933))))))

(declare-fun b!3716649 () Bool)

(declare-fun res!1510850 () Bool)

(assert (=> b!3716649 (=> res!1510850 e!2301233)))

(assert (=> b!3716649 (= res!1510850 e!2301230)))

(declare-fun res!1510852 () Bool)

(assert (=> b!3716649 (=> (not res!1510852) (not e!2301230))))

(assert (=> b!3716649 (= res!1510852 lt!1297463)))

(declare-fun b!3716650 () Bool)

(declare-fun res!1510855 () Bool)

(assert (=> b!3716650 (=> res!1510855 e!2301227)))

(assert (=> b!3716650 (= res!1510855 (not (isEmpty!23507 (tail!5748 (tail!5748 tl!3933)))))))

(assert (= (and d!1088235 c!642455) b!3716641))

(assert (= (and d!1088235 (not c!642455)) b!3716644))

(assert (= (and d!1088235 c!642456) b!3716643))

(assert (= (and d!1088235 (not c!642456)) b!3716648))

(assert (= (and b!3716648 c!642457) b!3716646))

(assert (= (and b!3716648 (not c!642457)) b!3716638))

(assert (= (and b!3716638 (not res!1510854)) b!3716649))

(assert (= (and b!3716649 res!1510852) b!3716640))

(assert (= (and b!3716640 res!1510851) b!3716642))

(assert (= (and b!3716642 res!1510856) b!3716637))

(assert (= (and b!3716649 (not res!1510850)) b!3716647))

(assert (= (and b!3716647 res!1510857) b!3716639))

(assert (= (and b!3716639 (not res!1510853)) b!3716650))

(assert (= (and b!3716650 (not res!1510855)) b!3716645))

(assert (= (or b!3716643 b!3716639 b!3716640) bm!269516))

(assert (=> b!3716641 m!4221019))

(declare-fun m!4222203 () Bool)

(assert (=> b!3716641 m!4222203))

(assert (=> d!1088235 m!4220973))

(assert (=> d!1088235 m!4220977))

(assert (=> d!1088235 m!4221019))

(declare-fun m!4222205 () Bool)

(assert (=> d!1088235 m!4222205))

(assert (=> bm!269516 m!4220973))

(assert (=> bm!269516 m!4220977))

(assert (=> b!3716644 m!4220973))

(assert (=> b!3716644 m!4221811))

(assert (=> b!3716644 m!4221019))

(assert (=> b!3716644 m!4221811))

(declare-fun m!4222207 () Bool)

(assert (=> b!3716644 m!4222207))

(assert (=> b!3716644 m!4220973))

(assert (=> b!3716644 m!4221819))

(assert (=> b!3716644 m!4222207))

(assert (=> b!3716644 m!4221819))

(declare-fun m!4222209 () Bool)

(assert (=> b!3716644 m!4222209))

(assert (=> b!3716637 m!4220973))

(assert (=> b!3716637 m!4221811))

(assert (=> b!3716650 m!4220973))

(assert (=> b!3716650 m!4221819))

(assert (=> b!3716650 m!4221819))

(assert (=> b!3716650 m!4221825))

(assert (=> b!3716642 m!4220973))

(assert (=> b!3716642 m!4221819))

(assert (=> b!3716642 m!4221819))

(assert (=> b!3716642 m!4221825))

(assert (=> b!3716645 m!4220973))

(assert (=> b!3716645 m!4221811))

(assert (=> b!3715110 d!1088235))

(declare-fun b!3716651 () Bool)

(declare-fun e!2301234 () Regex!10855)

(declare-fun e!2301237 () Regex!10855)

(assert (=> b!3716651 (= e!2301234 e!2301237)))

(declare-fun c!642461 () Bool)

(assert (=> b!3716651 (= c!642461 ((_ is ElementMatch!10855) lt!1297297))))

(declare-fun b!3716652 () Bool)

(declare-fun c!642460 () Bool)

(assert (=> b!3716652 (= c!642460 (nullable!3778 (regOne!22222 lt!1297297)))))

(declare-fun e!2301235 () Regex!10855)

(declare-fun e!2301238 () Regex!10855)

(assert (=> b!3716652 (= e!2301235 e!2301238)))

(declare-fun bm!269517 () Bool)

(declare-fun call!269523 () Regex!10855)

(declare-fun call!269525 () Regex!10855)

(assert (=> bm!269517 (= call!269523 call!269525)))

(declare-fun b!3716653 () Bool)

(declare-fun c!642458 () Bool)

(assert (=> b!3716653 (= c!642458 ((_ is Union!10855) lt!1297297))))

(declare-fun e!2301236 () Regex!10855)

(assert (=> b!3716653 (= e!2301237 e!2301236)))

(declare-fun b!3716654 () Bool)

(declare-fun call!269522 () Regex!10855)

(assert (=> b!3716654 (= e!2301236 (Union!10855 call!269525 call!269522))))

(declare-fun b!3716655 () Bool)

(assert (=> b!3716655 (= e!2301234 EmptyLang!10855)))

(declare-fun b!3716656 () Bool)

(assert (=> b!3716656 (= e!2301237 (ite (= (head!8021 tl!3933) (c!641993 lt!1297297)) EmptyExpr!10855 EmptyLang!10855))))

(declare-fun bm!269518 () Bool)

(declare-fun call!269524 () Regex!10855)

(assert (=> bm!269518 (= call!269524 call!269522)))

(declare-fun b!3716657 () Bool)

(assert (=> b!3716657 (= e!2301236 e!2301235)))

(declare-fun c!642462 () Bool)

(assert (=> b!3716657 (= c!642462 ((_ is Star!10855) lt!1297297))))

(declare-fun bm!269519 () Bool)

(assert (=> bm!269519 (= call!269522 (derivativeStep!3320 (ite c!642458 (regTwo!22223 lt!1297297) (ite c!642462 (reg!11184 lt!1297297) (regTwo!22222 lt!1297297))) (head!8021 tl!3933)))))

(declare-fun bm!269520 () Bool)

(assert (=> bm!269520 (= call!269525 (derivativeStep!3320 (ite c!642458 (regOne!22223 lt!1297297) (regOne!22222 lt!1297297)) (head!8021 tl!3933)))))

(declare-fun b!3716659 () Bool)

(assert (=> b!3716659 (= e!2301235 (Concat!17126 call!269524 lt!1297297))))

(declare-fun b!3716660 () Bool)

(assert (=> b!3716660 (= e!2301238 (Union!10855 (Concat!17126 call!269523 (regTwo!22222 lt!1297297)) EmptyLang!10855))))

(declare-fun b!3716658 () Bool)

(assert (=> b!3716658 (= e!2301238 (Union!10855 (Concat!17126 call!269523 (regTwo!22222 lt!1297297)) call!269524))))

(declare-fun d!1088237 () Bool)

(declare-fun lt!1297464 () Regex!10855)

(assert (=> d!1088237 (validRegex!4962 lt!1297464)))

(assert (=> d!1088237 (= lt!1297464 e!2301234)))

(declare-fun c!642459 () Bool)

(assert (=> d!1088237 (= c!642459 (or ((_ is EmptyExpr!10855) lt!1297297) ((_ is EmptyLang!10855) lt!1297297)))))

(assert (=> d!1088237 (validRegex!4962 lt!1297297)))

(assert (=> d!1088237 (= (derivativeStep!3320 lt!1297297 (head!8021 tl!3933)) lt!1297464)))

(assert (= (and d!1088237 c!642459) b!3716655))

(assert (= (and d!1088237 (not c!642459)) b!3716651))

(assert (= (and b!3716651 c!642461) b!3716656))

(assert (= (and b!3716651 (not c!642461)) b!3716653))

(assert (= (and b!3716653 c!642458) b!3716654))

(assert (= (and b!3716653 (not c!642458)) b!3716657))

(assert (= (and b!3716657 c!642462) b!3716659))

(assert (= (and b!3716657 (not c!642462)) b!3716652))

(assert (= (and b!3716652 c!642460) b!3716658))

(assert (= (and b!3716652 (not c!642460)) b!3716660))

(assert (= (or b!3716658 b!3716660) bm!269517))

(assert (= (or b!3716659 b!3716658) bm!269518))

(assert (= (or b!3716654 bm!269518) bm!269519))

(assert (= (or b!3716654 bm!269517) bm!269520))

(declare-fun m!4222211 () Bool)

(assert (=> b!3716652 m!4222211))

(assert (=> bm!269519 m!4220969))

(declare-fun m!4222213 () Bool)

(assert (=> bm!269519 m!4222213))

(assert (=> bm!269520 m!4220969))

(declare-fun m!4222215 () Bool)

(assert (=> bm!269520 m!4222215))

(declare-fun m!4222217 () Bool)

(assert (=> d!1088237 m!4222217))

(assert (=> d!1088237 m!4221013))

(assert (=> b!3715110 d!1088237))

(assert (=> b!3715110 d!1088073))

(assert (=> b!3715110 d!1088079))

(assert (=> b!3715102 d!1087773))

(declare-fun b!3716662 () Bool)

(declare-fun e!2301240 () List!39736)

(assert (=> b!3716662 (= e!2301240 (Cons!39612 (h!45032 (_1!22744 (get!13200 lt!1297382))) (++!9801 (t!302419 (_1!22744 (get!13200 lt!1297382))) (_2!22744 (get!13200 lt!1297382)))))))

(declare-fun d!1088239 () Bool)

(declare-fun e!2301239 () Bool)

(assert (=> d!1088239 e!2301239))

(declare-fun res!1510859 () Bool)

(assert (=> d!1088239 (=> (not res!1510859) (not e!2301239))))

(declare-fun lt!1297465 () List!39736)

(assert (=> d!1088239 (= res!1510859 (= (content!5738 lt!1297465) ((_ map or) (content!5738 (_1!22744 (get!13200 lt!1297382))) (content!5738 (_2!22744 (get!13200 lt!1297382))))))))

(assert (=> d!1088239 (= lt!1297465 e!2301240)))

(declare-fun c!642463 () Bool)

(assert (=> d!1088239 (= c!642463 ((_ is Nil!39612) (_1!22744 (get!13200 lt!1297382))))))

(assert (=> d!1088239 (= (++!9801 (_1!22744 (get!13200 lt!1297382)) (_2!22744 (get!13200 lt!1297382))) lt!1297465)))

(declare-fun b!3716661 () Bool)

(assert (=> b!3716661 (= e!2301240 (_2!22744 (get!13200 lt!1297382)))))

(declare-fun b!3716664 () Bool)

(assert (=> b!3716664 (= e!2301239 (or (not (= (_2!22744 (get!13200 lt!1297382)) Nil!39612)) (= lt!1297465 (_1!22744 (get!13200 lt!1297382)))))))

(declare-fun b!3716663 () Bool)

(declare-fun res!1510858 () Bool)

(assert (=> b!3716663 (=> (not res!1510858) (not e!2301239))))

(assert (=> b!3716663 (= res!1510858 (= (size!30020 lt!1297465) (+ (size!30020 (_1!22744 (get!13200 lt!1297382))) (size!30020 (_2!22744 (get!13200 lt!1297382))))))))

(assert (= (and d!1088239 c!642463) b!3716661))

(assert (= (and d!1088239 (not c!642463)) b!3716662))

(assert (= (and d!1088239 res!1510859) b!3716663))

(assert (= (and b!3716663 res!1510858) b!3716664))

(declare-fun m!4222219 () Bool)

(assert (=> b!3716662 m!4222219))

(declare-fun m!4222221 () Bool)

(assert (=> d!1088239 m!4222221))

(declare-fun m!4222223 () Bool)

(assert (=> d!1088239 m!4222223))

(declare-fun m!4222225 () Bool)

(assert (=> d!1088239 m!4222225))

(declare-fun m!4222227 () Bool)

(assert (=> b!3716663 m!4222227))

(declare-fun m!4222229 () Bool)

(assert (=> b!3716663 m!4222229))

(declare-fun m!4222231 () Bool)

(assert (=> b!3716663 m!4222231))

(assert (=> b!3715517 d!1088239))

(assert (=> b!3715517 d!1088157))

(declare-fun b!3716665 () Bool)

(declare-fun res!1510860 () Bool)

(declare-fun e!2301245 () Bool)

(assert (=> b!3716665 (=> (not res!1510860) (not e!2301245))))

(declare-fun call!269528 () Bool)

(assert (=> b!3716665 (= res!1510860 call!269528)))

(declare-fun e!2301241 () Bool)

(assert (=> b!3716665 (= e!2301241 e!2301245)))

(declare-fun b!3716666 () Bool)

(declare-fun call!269527 () Bool)

(assert (=> b!3716666 (= e!2301245 call!269527)))

(declare-fun b!3716667 () Bool)

(declare-fun e!2301243 () Bool)

(declare-fun call!269526 () Bool)

(assert (=> b!3716667 (= e!2301243 call!269526)))

(declare-fun d!1088241 () Bool)

(declare-fun res!1510862 () Bool)

(declare-fun e!2301244 () Bool)

(assert (=> d!1088241 (=> res!1510862 e!2301244)))

(assert (=> d!1088241 (= res!1510862 ((_ is ElementMatch!10855) (ite c!642160 (reg!11184 r!26326) (ite c!642161 (regTwo!22223 r!26326) (regOne!22222 r!26326)))))))

(assert (=> d!1088241 (= (validRegex!4962 (ite c!642160 (reg!11184 r!26326) (ite c!642161 (regTwo!22223 r!26326) (regOne!22222 r!26326)))) e!2301244)))

(declare-fun b!3716668 () Bool)

(declare-fun e!2301246 () Bool)

(assert (=> b!3716668 (= e!2301246 e!2301243)))

(declare-fun res!1510863 () Bool)

(assert (=> b!3716668 (= res!1510863 (not (nullable!3778 (reg!11184 (ite c!642160 (reg!11184 r!26326) (ite c!642161 (regTwo!22223 r!26326) (regOne!22222 r!26326)))))))))

(assert (=> b!3716668 (=> (not res!1510863) (not e!2301243))))

(declare-fun b!3716669 () Bool)

(assert (=> b!3716669 (= e!2301244 e!2301246)))

(declare-fun c!642464 () Bool)

(assert (=> b!3716669 (= c!642464 ((_ is Star!10855) (ite c!642160 (reg!11184 r!26326) (ite c!642161 (regTwo!22223 r!26326) (regOne!22222 r!26326)))))))

(declare-fun b!3716670 () Bool)

(declare-fun e!2301242 () Bool)

(declare-fun e!2301247 () Bool)

(assert (=> b!3716670 (= e!2301242 e!2301247)))

(declare-fun res!1510864 () Bool)

(assert (=> b!3716670 (=> (not res!1510864) (not e!2301247))))

(assert (=> b!3716670 (= res!1510864 call!269527)))

(declare-fun b!3716671 () Bool)

(declare-fun res!1510861 () Bool)

(assert (=> b!3716671 (=> res!1510861 e!2301242)))

(assert (=> b!3716671 (= res!1510861 (not ((_ is Concat!17126) (ite c!642160 (reg!11184 r!26326) (ite c!642161 (regTwo!22223 r!26326) (regOne!22222 r!26326))))))))

(assert (=> b!3716671 (= e!2301241 e!2301242)))

(declare-fun bm!269521 () Bool)

(declare-fun c!642465 () Bool)

(assert (=> bm!269521 (= call!269526 (validRegex!4962 (ite c!642464 (reg!11184 (ite c!642160 (reg!11184 r!26326) (ite c!642161 (regTwo!22223 r!26326) (regOne!22222 r!26326)))) (ite c!642465 (regTwo!22223 (ite c!642160 (reg!11184 r!26326) (ite c!642161 (regTwo!22223 r!26326) (regOne!22222 r!26326)))) (regOne!22222 (ite c!642160 (reg!11184 r!26326) (ite c!642161 (regTwo!22223 r!26326) (regOne!22222 r!26326))))))))))

(declare-fun b!3716672 () Bool)

(assert (=> b!3716672 (= e!2301247 call!269528)))

(declare-fun bm!269522 () Bool)

(assert (=> bm!269522 (= call!269528 (validRegex!4962 (ite c!642465 (regOne!22223 (ite c!642160 (reg!11184 r!26326) (ite c!642161 (regTwo!22223 r!26326) (regOne!22222 r!26326)))) (regTwo!22222 (ite c!642160 (reg!11184 r!26326) (ite c!642161 (regTwo!22223 r!26326) (regOne!22222 r!26326)))))))))

(declare-fun bm!269523 () Bool)

(assert (=> bm!269523 (= call!269527 call!269526)))

(declare-fun b!3716673 () Bool)

(assert (=> b!3716673 (= e!2301246 e!2301241)))

(assert (=> b!3716673 (= c!642465 ((_ is Union!10855) (ite c!642160 (reg!11184 r!26326) (ite c!642161 (regTwo!22223 r!26326) (regOne!22222 r!26326)))))))

(assert (= (and d!1088241 (not res!1510862)) b!3716669))

(assert (= (and b!3716669 c!642464) b!3716668))

(assert (= (and b!3716669 (not c!642464)) b!3716673))

(assert (= (and b!3716668 res!1510863) b!3716667))

(assert (= (and b!3716673 c!642465) b!3716665))

(assert (= (and b!3716673 (not c!642465)) b!3716671))

(assert (= (and b!3716665 res!1510860) b!3716666))

(assert (= (and b!3716671 (not res!1510861)) b!3716670))

(assert (= (and b!3716670 res!1510864) b!3716672))

(assert (= (or b!3716666 b!3716670) bm!269523))

(assert (= (or b!3716665 b!3716672) bm!269522))

(assert (= (or b!3716667 bm!269523) bm!269521))

(declare-fun m!4222233 () Bool)

(assert (=> b!3716668 m!4222233))

(declare-fun m!4222235 () Bool)

(assert (=> bm!269521 m!4222235))

(declare-fun m!4222237 () Bool)

(assert (=> bm!269522 m!4222237))

(assert (=> bm!269282 d!1088241))

(declare-fun d!1088243 () Bool)

(assert (=> d!1088243 (= (nullable!3778 lt!1297290) (nullableFct!1067 lt!1297290))))

(declare-fun bs!574853 () Bool)

(assert (= bs!574853 d!1088243))

(declare-fun m!4222239 () Bool)

(assert (=> bs!574853 m!4222239))

(assert (=> b!3715031 d!1088243))

(assert (=> b!3715594 d!1088169))

(declare-fun b!3716674 () Bool)

(declare-fun res!1510865 () Bool)

(declare-fun e!2301252 () Bool)

(assert (=> b!3716674 (=> (not res!1510865) (not e!2301252))))

(declare-fun call!269531 () Bool)

(assert (=> b!3716674 (= res!1510865 call!269531)))

(declare-fun e!2301248 () Bool)

(assert (=> b!3716674 (= e!2301248 e!2301252)))

(declare-fun b!3716675 () Bool)

(declare-fun call!269530 () Bool)

(assert (=> b!3716675 (= e!2301252 call!269530)))

(declare-fun b!3716676 () Bool)

(declare-fun e!2301250 () Bool)

(declare-fun call!269529 () Bool)

(assert (=> b!3716676 (= e!2301250 call!269529)))

(declare-fun d!1088245 () Bool)

(declare-fun res!1510867 () Bool)

(declare-fun e!2301251 () Bool)

(assert (=> d!1088245 (=> res!1510867 e!2301251)))

(assert (=> d!1088245 (= res!1510867 ((_ is ElementMatch!10855) lt!1297385))))

(assert (=> d!1088245 (= (validRegex!4962 lt!1297385) e!2301251)))

(declare-fun b!3716677 () Bool)

(declare-fun e!2301253 () Bool)

(assert (=> b!3716677 (= e!2301253 e!2301250)))

(declare-fun res!1510868 () Bool)

(assert (=> b!3716677 (= res!1510868 (not (nullable!3778 (reg!11184 lt!1297385))))))

(assert (=> b!3716677 (=> (not res!1510868) (not e!2301250))))

(declare-fun b!3716678 () Bool)

(assert (=> b!3716678 (= e!2301251 e!2301253)))

(declare-fun c!642466 () Bool)

(assert (=> b!3716678 (= c!642466 ((_ is Star!10855) lt!1297385))))

(declare-fun b!3716679 () Bool)

(declare-fun e!2301249 () Bool)

(declare-fun e!2301254 () Bool)

(assert (=> b!3716679 (= e!2301249 e!2301254)))

(declare-fun res!1510869 () Bool)

(assert (=> b!3716679 (=> (not res!1510869) (not e!2301254))))

(assert (=> b!3716679 (= res!1510869 call!269530)))

(declare-fun b!3716680 () Bool)

(declare-fun res!1510866 () Bool)

(assert (=> b!3716680 (=> res!1510866 e!2301249)))

(assert (=> b!3716680 (= res!1510866 (not ((_ is Concat!17126) lt!1297385)))))

(assert (=> b!3716680 (= e!2301248 e!2301249)))

(declare-fun bm!269524 () Bool)

(declare-fun c!642467 () Bool)

(assert (=> bm!269524 (= call!269529 (validRegex!4962 (ite c!642466 (reg!11184 lt!1297385) (ite c!642467 (regTwo!22223 lt!1297385) (regOne!22222 lt!1297385)))))))

(declare-fun b!3716681 () Bool)

(assert (=> b!3716681 (= e!2301254 call!269531)))

(declare-fun bm!269525 () Bool)

(assert (=> bm!269525 (= call!269531 (validRegex!4962 (ite c!642467 (regOne!22223 lt!1297385) (regTwo!22222 lt!1297385))))))

(declare-fun bm!269526 () Bool)

(assert (=> bm!269526 (= call!269530 call!269529)))

(declare-fun b!3716682 () Bool)

(assert (=> b!3716682 (= e!2301253 e!2301248)))

(assert (=> b!3716682 (= c!642467 ((_ is Union!10855) lt!1297385))))

(assert (= (and d!1088245 (not res!1510867)) b!3716678))

(assert (= (and b!3716678 c!642466) b!3716677))

(assert (= (and b!3716678 (not c!642466)) b!3716682))

(assert (= (and b!3716677 res!1510868) b!3716676))

(assert (= (and b!3716682 c!642467) b!3716674))

(assert (= (and b!3716682 (not c!642467)) b!3716680))

(assert (= (and b!3716674 res!1510865) b!3716675))

(assert (= (and b!3716680 (not res!1510866)) b!3716679))

(assert (= (and b!3716679 res!1510869) b!3716681))

(assert (= (or b!3716675 b!3716679) bm!269526))

(assert (= (or b!3716674 b!3716681) bm!269525))

(assert (= (or b!3716676 bm!269526) bm!269524))

(declare-fun m!4222241 () Bool)

(assert (=> b!3716677 m!4222241))

(declare-fun m!4222243 () Bool)

(assert (=> bm!269524 m!4222243))

(declare-fun m!4222245 () Bool)

(assert (=> bm!269525 m!4222245))

(assert (=> d!1087867 d!1088245))

(assert (=> d!1087867 d!1088149))

(declare-fun b!3716683 () Bool)

(declare-fun res!1510870 () Bool)

(declare-fun e!2301259 () Bool)

(assert (=> b!3716683 (=> (not res!1510870) (not e!2301259))))

(declare-fun call!269534 () Bool)

(assert (=> b!3716683 (= res!1510870 call!269534)))

(declare-fun e!2301255 () Bool)

(assert (=> b!3716683 (= e!2301255 e!2301259)))

(declare-fun b!3716684 () Bool)

(declare-fun call!269533 () Bool)

(assert (=> b!3716684 (= e!2301259 call!269533)))

(declare-fun b!3716685 () Bool)

(declare-fun e!2301257 () Bool)

(declare-fun call!269532 () Bool)

(assert (=> b!3716685 (= e!2301257 call!269532)))

(declare-fun d!1088247 () Bool)

(declare-fun res!1510872 () Bool)

(declare-fun e!2301258 () Bool)

(assert (=> d!1088247 (=> res!1510872 e!2301258)))

(assert (=> d!1088247 (= res!1510872 ((_ is ElementMatch!10855) lt!1297388))))

(assert (=> d!1088247 (= (validRegex!4962 lt!1297388) e!2301258)))

(declare-fun b!3716686 () Bool)

(declare-fun e!2301260 () Bool)

(assert (=> b!3716686 (= e!2301260 e!2301257)))

(declare-fun res!1510873 () Bool)

(assert (=> b!3716686 (= res!1510873 (not (nullable!3778 (reg!11184 lt!1297388))))))

(assert (=> b!3716686 (=> (not res!1510873) (not e!2301257))))

(declare-fun b!3716687 () Bool)

(assert (=> b!3716687 (= e!2301258 e!2301260)))

(declare-fun c!642468 () Bool)

(assert (=> b!3716687 (= c!642468 ((_ is Star!10855) lt!1297388))))

(declare-fun b!3716688 () Bool)

(declare-fun e!2301256 () Bool)

(declare-fun e!2301261 () Bool)

(assert (=> b!3716688 (= e!2301256 e!2301261)))

(declare-fun res!1510874 () Bool)

(assert (=> b!3716688 (=> (not res!1510874) (not e!2301261))))

(assert (=> b!3716688 (= res!1510874 call!269533)))

(declare-fun b!3716689 () Bool)

(declare-fun res!1510871 () Bool)

(assert (=> b!3716689 (=> res!1510871 e!2301256)))

(assert (=> b!3716689 (= res!1510871 (not ((_ is Concat!17126) lt!1297388)))))

(assert (=> b!3716689 (= e!2301255 e!2301256)))

(declare-fun c!642469 () Bool)

(declare-fun bm!269527 () Bool)

(assert (=> bm!269527 (= call!269532 (validRegex!4962 (ite c!642468 (reg!11184 lt!1297388) (ite c!642469 (regTwo!22223 lt!1297388) (regOne!22222 lt!1297388)))))))

(declare-fun b!3716690 () Bool)

(assert (=> b!3716690 (= e!2301261 call!269534)))

(declare-fun bm!269528 () Bool)

(assert (=> bm!269528 (= call!269534 (validRegex!4962 (ite c!642469 (regOne!22223 lt!1297388) (regTwo!22222 lt!1297388))))))

(declare-fun bm!269529 () Bool)

(assert (=> bm!269529 (= call!269533 call!269532)))

(declare-fun b!3716691 () Bool)

(assert (=> b!3716691 (= e!2301260 e!2301255)))

(assert (=> b!3716691 (= c!642469 ((_ is Union!10855) lt!1297388))))

(assert (= (and d!1088247 (not res!1510872)) b!3716687))

(assert (= (and b!3716687 c!642468) b!3716686))

(assert (= (and b!3716687 (not c!642468)) b!3716691))

(assert (= (and b!3716686 res!1510873) b!3716685))

(assert (= (and b!3716691 c!642469) b!3716683))

(assert (= (and b!3716691 (not c!642469)) b!3716689))

(assert (= (and b!3716683 res!1510870) b!3716684))

(assert (= (and b!3716689 (not res!1510871)) b!3716688))

(assert (= (and b!3716688 res!1510874) b!3716690))

(assert (= (or b!3716684 b!3716688) bm!269529))

(assert (= (or b!3716683 b!3716690) bm!269528))

(assert (= (or b!3716685 bm!269529) bm!269527))

(declare-fun m!4222247 () Bool)

(assert (=> b!3716686 m!4222247))

(declare-fun m!4222249 () Bool)

(assert (=> bm!269527 m!4222249))

(declare-fun m!4222251 () Bool)

(assert (=> bm!269528 m!4222251))

(assert (=> d!1087875 d!1088247))

(assert (=> d!1087875 d!1087877))

(declare-fun b!3716692 () Bool)

(declare-fun e!2301262 () List!39736)

(assert (=> b!3716692 (= e!2301262 Nil!39612)))

(declare-fun c!642470 () Bool)

(declare-fun c!642472 () Bool)

(declare-fun bm!269530 () Bool)

(declare-fun call!269536 () List!39736)

(assert (=> bm!269530 (= call!269536 (usedCharacters!1118 (ite c!642472 (reg!11184 (ite c!642178 (regTwo!22223 (regOne!22222 r!26326)) (regTwo!22222 (regOne!22222 r!26326)))) (ite c!642470 (regOne!22223 (ite c!642178 (regTwo!22223 (regOne!22222 r!26326)) (regTwo!22222 (regOne!22222 r!26326)))) (regOne!22222 (ite c!642178 (regTwo!22223 (regOne!22222 r!26326)) (regTwo!22222 (regOne!22222 r!26326))))))))))

(declare-fun d!1088249 () Bool)

(declare-fun c!642471 () Bool)

(assert (=> d!1088249 (= c!642471 (or ((_ is EmptyExpr!10855) (ite c!642178 (regTwo!22223 (regOne!22222 r!26326)) (regTwo!22222 (regOne!22222 r!26326)))) ((_ is EmptyLang!10855) (ite c!642178 (regTwo!22223 (regOne!22222 r!26326)) (regTwo!22222 (regOne!22222 r!26326))))))))

(assert (=> d!1088249 (= (usedCharacters!1118 (ite c!642178 (regTwo!22223 (regOne!22222 r!26326)) (regTwo!22222 (regOne!22222 r!26326)))) e!2301262)))

(declare-fun b!3716693 () Bool)

(declare-fun e!2301265 () List!39736)

(declare-fun e!2301264 () List!39736)

(assert (=> b!3716693 (= e!2301265 e!2301264)))

(assert (=> b!3716693 (= c!642470 ((_ is Union!10855) (ite c!642178 (regTwo!22223 (regOne!22222 r!26326)) (regTwo!22222 (regOne!22222 r!26326)))))))

(declare-fun b!3716694 () Bool)

(declare-fun call!269535 () List!39736)

(assert (=> b!3716694 (= e!2301264 call!269535)))

(declare-fun b!3716695 () Bool)

(declare-fun e!2301263 () List!39736)

(assert (=> b!3716695 (= e!2301263 (Cons!39612 (c!641993 (ite c!642178 (regTwo!22223 (regOne!22222 r!26326)) (regTwo!22222 (regOne!22222 r!26326)))) Nil!39612))))

(declare-fun bm!269531 () Bool)

(declare-fun call!269538 () List!39736)

(declare-fun call!269537 () List!39736)

(assert (=> bm!269531 (= call!269535 (++!9801 call!269538 call!269537))))

(declare-fun b!3716696 () Bool)

(assert (=> b!3716696 (= e!2301262 e!2301263)))

(declare-fun c!642473 () Bool)

(assert (=> b!3716696 (= c!642473 ((_ is ElementMatch!10855) (ite c!642178 (regTwo!22223 (regOne!22222 r!26326)) (regTwo!22222 (regOne!22222 r!26326)))))))

(declare-fun b!3716697 () Bool)

(assert (=> b!3716697 (= e!2301264 call!269535)))

(declare-fun b!3716698 () Bool)

(assert (=> b!3716698 (= e!2301265 call!269536)))

(declare-fun bm!269532 () Bool)

(assert (=> bm!269532 (= call!269537 (usedCharacters!1118 (ite c!642470 (regTwo!22223 (ite c!642178 (regTwo!22223 (regOne!22222 r!26326)) (regTwo!22222 (regOne!22222 r!26326)))) (regTwo!22222 (ite c!642178 (regTwo!22223 (regOne!22222 r!26326)) (regTwo!22222 (regOne!22222 r!26326)))))))))

(declare-fun b!3716699 () Bool)

(assert (=> b!3716699 (= c!642472 ((_ is Star!10855) (ite c!642178 (regTwo!22223 (regOne!22222 r!26326)) (regTwo!22222 (regOne!22222 r!26326)))))))

(assert (=> b!3716699 (= e!2301263 e!2301265)))

(declare-fun bm!269533 () Bool)

(assert (=> bm!269533 (= call!269538 call!269536)))

(assert (= (and d!1088249 c!642471) b!3716692))

(assert (= (and d!1088249 (not c!642471)) b!3716696))

(assert (= (and b!3716696 c!642473) b!3716695))

(assert (= (and b!3716696 (not c!642473)) b!3716699))

(assert (= (and b!3716699 c!642472) b!3716698))

(assert (= (and b!3716699 (not c!642472)) b!3716693))

(assert (= (and b!3716693 c!642470) b!3716694))

(assert (= (and b!3716693 (not c!642470)) b!3716697))

(assert (= (or b!3716694 b!3716697) bm!269533))

(assert (= (or b!3716694 b!3716697) bm!269532))

(assert (= (or b!3716694 b!3716697) bm!269531))

(assert (= (or b!3716698 bm!269533) bm!269530))

(declare-fun m!4222253 () Bool)

(assert (=> bm!269530 m!4222253))

(declare-fun m!4222255 () Bool)

(assert (=> bm!269531 m!4222255))

(declare-fun m!4222257 () Bool)

(assert (=> bm!269532 m!4222257))

(assert (=> bm!269300 d!1088249))

(assert (=> b!3715302 d!1088227))

(assert (=> b!3715302 d!1088229))

(assert (=> b!3715027 d!1088073))

(declare-fun d!1088251 () Bool)

(assert (=> d!1088251 (= (isEmpty!23507 (Cons!39612 c!13576 (_1!22744 lt!1297291))) ((_ is Nil!39612) (Cons!39612 c!13576 (_1!22744 lt!1297291))))))

(assert (=> bm!269285 d!1088251))

(declare-fun d!1088253 () Bool)

(assert (=> d!1088253 (= (nullable!3778 (regOne!22222 (regOne!22222 r!26326))) (nullableFct!1067 (regOne!22222 (regOne!22222 r!26326))))))

(declare-fun bs!574854 () Bool)

(assert (= bs!574854 d!1088253))

(declare-fun m!4222259 () Bool)

(assert (=> bs!574854 m!4222259))

(assert (=> b!3715201 d!1088253))

(declare-fun d!1088255 () Bool)

(assert (=> d!1088255 (= (nullable!3778 (derivative!369 lt!1297287 tl!3933)) (nullableFct!1067 (derivative!369 lt!1297287 tl!3933)))))

(declare-fun bs!574855 () Bool)

(assert (= bs!574855 d!1088255))

(assert (=> bs!574855 m!4220903))

(declare-fun m!4222261 () Bool)

(assert (=> bs!574855 m!4222261))

(assert (=> b!3715263 d!1088255))

(declare-fun b!3716701 () Bool)

(declare-fun e!2301267 () List!39736)

(assert (=> b!3716701 (= e!2301267 (Cons!39612 (h!45032 call!269306) (++!9801 (t!302419 call!269306) call!269305)))))

(declare-fun d!1088257 () Bool)

(declare-fun e!2301266 () Bool)

(assert (=> d!1088257 e!2301266))

(declare-fun res!1510876 () Bool)

(assert (=> d!1088257 (=> (not res!1510876) (not e!2301266))))

(declare-fun lt!1297466 () List!39736)

(assert (=> d!1088257 (= res!1510876 (= (content!5738 lt!1297466) ((_ map or) (content!5738 call!269306) (content!5738 call!269305))))))

(assert (=> d!1088257 (= lt!1297466 e!2301267)))

(declare-fun c!642474 () Bool)

(assert (=> d!1088257 (= c!642474 ((_ is Nil!39612) call!269306))))

(assert (=> d!1088257 (= (++!9801 call!269306 call!269305) lt!1297466)))

(declare-fun b!3716700 () Bool)

(assert (=> b!3716700 (= e!2301267 call!269305)))

(declare-fun b!3716703 () Bool)

(assert (=> b!3716703 (= e!2301266 (or (not (= call!269305 Nil!39612)) (= lt!1297466 call!269306)))))

(declare-fun b!3716702 () Bool)

(declare-fun res!1510875 () Bool)

(assert (=> b!3716702 (=> (not res!1510875) (not e!2301266))))

(assert (=> b!3716702 (= res!1510875 (= (size!30020 lt!1297466) (+ (size!30020 call!269306) (size!30020 call!269305))))))

(assert (= (and d!1088257 c!642474) b!3716700))

(assert (= (and d!1088257 (not c!642474)) b!3716701))

(assert (= (and d!1088257 res!1510876) b!3716702))

(assert (= (and b!3716702 res!1510875) b!3716703))

(declare-fun m!4222263 () Bool)

(assert (=> b!3716701 m!4222263))

(declare-fun m!4222265 () Bool)

(assert (=> d!1088257 m!4222265))

(declare-fun m!4222267 () Bool)

(assert (=> d!1088257 m!4222267))

(declare-fun m!4222269 () Bool)

(assert (=> d!1088257 m!4222269))

(declare-fun m!4222271 () Bool)

(assert (=> b!3716702 m!4222271))

(declare-fun m!4222273 () Bool)

(assert (=> b!3716702 m!4222273))

(declare-fun m!4222275 () Bool)

(assert (=> b!3716702 m!4222275))

(assert (=> bm!269299 d!1088257))

(assert (=> b!3715053 d!1088177))

(declare-fun d!1088259 () Bool)

(assert (=> d!1088259 (= (isEmpty!23508 lt!1297292) (not ((_ is Some!8571) lt!1297292)))))

(assert (=> d!1087821 d!1088259))

(assert (=> b!3715267 d!1088119))

(assert (=> b!3715557 d!1088119))

(assert (=> d!1087879 d!1088251))

(assert (=> d!1087879 d!1087863))

(declare-fun d!1088261 () Bool)

(declare-fun lt!1297469 () Int)

(assert (=> d!1088261 (>= lt!1297469 0)))

(declare-fun e!2301270 () Int)

(assert (=> d!1088261 (= lt!1297469 e!2301270)))

(declare-fun c!642477 () Bool)

(assert (=> d!1088261 (= c!642477 ((_ is Nil!39612) lt!1297368))))

(assert (=> d!1088261 (= (size!30020 lt!1297368) lt!1297469)))

(declare-fun b!3716708 () Bool)

(assert (=> b!3716708 (= e!2301270 0)))

(declare-fun b!3716709 () Bool)

(assert (=> b!3716709 (= e!2301270 (+ 1 (size!30020 (t!302419 lt!1297368))))))

(assert (= (and d!1088261 c!642477) b!3716708))

(assert (= (and d!1088261 (not c!642477)) b!3716709))

(declare-fun m!4222277 () Bool)

(assert (=> b!3716709 m!4222277))

(assert (=> b!3715407 d!1088261))

(declare-fun d!1088263 () Bool)

(declare-fun lt!1297470 () Int)

(assert (=> d!1088263 (>= lt!1297470 0)))

(declare-fun e!2301271 () Int)

(assert (=> d!1088263 (= lt!1297470 e!2301271)))

(declare-fun c!642478 () Bool)

(assert (=> d!1088263 (= c!642478 ((_ is Nil!39612) (_1!22744 lt!1297291)))))

(assert (=> d!1088263 (= (size!30020 (_1!22744 lt!1297291)) lt!1297470)))

(declare-fun b!3716710 () Bool)

(assert (=> b!3716710 (= e!2301271 0)))

(declare-fun b!3716711 () Bool)

(assert (=> b!3716711 (= e!2301271 (+ 1 (size!30020 (t!302419 (_1!22744 lt!1297291)))))))

(assert (= (and d!1088263 c!642478) b!3716710))

(assert (= (and d!1088263 (not c!642478)) b!3716711))

(assert (=> b!3716711 m!4222127))

(assert (=> b!3715407 d!1088263))

(declare-fun d!1088265 () Bool)

(declare-fun lt!1297471 () Int)

(assert (=> d!1088265 (>= lt!1297471 0)))

(declare-fun e!2301272 () Int)

(assert (=> d!1088265 (= lt!1297471 e!2301272)))

(declare-fun c!642479 () Bool)

(assert (=> d!1088265 (= c!642479 ((_ is Nil!39612) (_2!22744 lt!1297291)))))

(assert (=> d!1088265 (= (size!30020 (_2!22744 lt!1297291)) lt!1297471)))

(declare-fun b!3716712 () Bool)

(assert (=> b!3716712 (= e!2301272 0)))

(declare-fun b!3716713 () Bool)

(assert (=> b!3716713 (= e!2301272 (+ 1 (size!30020 (t!302419 (_2!22744 lt!1297291)))))))

(assert (= (and d!1088265 c!642479) b!3716712))

(assert (= (and d!1088265 (not c!642479)) b!3716713))

(declare-fun m!4222279 () Bool)

(assert (=> b!3716713 m!4222279))

(assert (=> b!3715407 d!1088265))

(assert (=> b!3715586 d!1088169))

(declare-fun b!3716714 () Bool)

(declare-fun e!2301273 () List!39736)

(assert (=> b!3716714 (= e!2301273 Nil!39612)))

(declare-fun bm!269534 () Bool)

(declare-fun c!642480 () Bool)

(declare-fun call!269540 () List!39736)

(declare-fun c!642482 () Bool)

(assert (=> bm!269534 (= call!269540 (usedCharacters!1118 (ite c!642482 (reg!11184 (ite c!642175 (reg!11184 r!26326) (ite c!642173 (regOne!22223 r!26326) (regOne!22222 r!26326)))) (ite c!642480 (regOne!22223 (ite c!642175 (reg!11184 r!26326) (ite c!642173 (regOne!22223 r!26326) (regOne!22222 r!26326)))) (regOne!22222 (ite c!642175 (reg!11184 r!26326) (ite c!642173 (regOne!22223 r!26326) (regOne!22222 r!26326))))))))))

(declare-fun c!642481 () Bool)

(declare-fun d!1088267 () Bool)

(assert (=> d!1088267 (= c!642481 (or ((_ is EmptyExpr!10855) (ite c!642175 (reg!11184 r!26326) (ite c!642173 (regOne!22223 r!26326) (regOne!22222 r!26326)))) ((_ is EmptyLang!10855) (ite c!642175 (reg!11184 r!26326) (ite c!642173 (regOne!22223 r!26326) (regOne!22222 r!26326))))))))

(assert (=> d!1088267 (= (usedCharacters!1118 (ite c!642175 (reg!11184 r!26326) (ite c!642173 (regOne!22223 r!26326) (regOne!22222 r!26326)))) e!2301273)))

(declare-fun b!3716715 () Bool)

(declare-fun e!2301276 () List!39736)

(declare-fun e!2301275 () List!39736)

(assert (=> b!3716715 (= e!2301276 e!2301275)))

(assert (=> b!3716715 (= c!642480 ((_ is Union!10855) (ite c!642175 (reg!11184 r!26326) (ite c!642173 (regOne!22223 r!26326) (regOne!22222 r!26326)))))))

(declare-fun b!3716716 () Bool)

(declare-fun call!269539 () List!39736)

(assert (=> b!3716716 (= e!2301275 call!269539)))

(declare-fun b!3716717 () Bool)

(declare-fun e!2301274 () List!39736)

(assert (=> b!3716717 (= e!2301274 (Cons!39612 (c!641993 (ite c!642175 (reg!11184 r!26326) (ite c!642173 (regOne!22223 r!26326) (regOne!22222 r!26326)))) Nil!39612))))

(declare-fun bm!269535 () Bool)

(declare-fun call!269542 () List!39736)

(declare-fun call!269541 () List!39736)

(assert (=> bm!269535 (= call!269539 (++!9801 call!269542 call!269541))))

(declare-fun b!3716718 () Bool)

(assert (=> b!3716718 (= e!2301273 e!2301274)))

(declare-fun c!642483 () Bool)

(assert (=> b!3716718 (= c!642483 ((_ is ElementMatch!10855) (ite c!642175 (reg!11184 r!26326) (ite c!642173 (regOne!22223 r!26326) (regOne!22222 r!26326)))))))

(declare-fun b!3716719 () Bool)

(assert (=> b!3716719 (= e!2301275 call!269539)))

(declare-fun b!3716720 () Bool)

(assert (=> b!3716720 (= e!2301276 call!269540)))

(declare-fun bm!269536 () Bool)

(assert (=> bm!269536 (= call!269541 (usedCharacters!1118 (ite c!642480 (regTwo!22223 (ite c!642175 (reg!11184 r!26326) (ite c!642173 (regOne!22223 r!26326) (regOne!22222 r!26326)))) (regTwo!22222 (ite c!642175 (reg!11184 r!26326) (ite c!642173 (regOne!22223 r!26326) (regOne!22222 r!26326)))))))))

(declare-fun b!3716721 () Bool)

(assert (=> b!3716721 (= c!642482 ((_ is Star!10855) (ite c!642175 (reg!11184 r!26326) (ite c!642173 (regOne!22223 r!26326) (regOne!22222 r!26326)))))))

(assert (=> b!3716721 (= e!2301274 e!2301276)))

(declare-fun bm!269537 () Bool)

(assert (=> bm!269537 (= call!269542 call!269540)))

(assert (= (and d!1088267 c!642481) b!3716714))

(assert (= (and d!1088267 (not c!642481)) b!3716718))

(assert (= (and b!3716718 c!642483) b!3716717))

(assert (= (and b!3716718 (not c!642483)) b!3716721))

(assert (= (and b!3716721 c!642482) b!3716720))

(assert (= (and b!3716721 (not c!642482)) b!3716715))

(assert (= (and b!3716715 c!642480) b!3716716))

(assert (= (and b!3716715 (not c!642480)) b!3716719))

(assert (= (or b!3716716 b!3716719) bm!269537))

(assert (= (or b!3716716 b!3716719) bm!269536))

(assert (= (or b!3716716 b!3716719) bm!269535))

(assert (= (or b!3716720 bm!269537) bm!269534))

(declare-fun m!4222281 () Bool)

(assert (=> bm!269534 m!4222281))

(declare-fun m!4222283 () Bool)

(assert (=> bm!269535 m!4222283))

(declare-fun m!4222285 () Bool)

(assert (=> bm!269536 m!4222285))

(assert (=> bm!269294 d!1088267))

(declare-fun b!3716736 () Bool)

(declare-fun e!2301291 () Bool)

(declare-fun e!2301289 () Bool)

(assert (=> b!3716736 (= e!2301291 e!2301289)))

(declare-fun c!642486 () Bool)

(assert (=> b!3716736 (= c!642486 ((_ is Union!10855) (derivative!369 (derivativeStep!3320 r!26326 c!13576) tl!3933)))))

(declare-fun b!3716737 () Bool)

(declare-fun e!2301292 () Bool)

(declare-fun e!2301290 () Bool)

(assert (=> b!3716737 (= e!2301292 e!2301290)))

(declare-fun res!1510888 () Bool)

(assert (=> b!3716737 (=> (not res!1510888) (not e!2301290))))

(assert (=> b!3716737 (= res!1510888 (and (not ((_ is EmptyLang!10855) (derivative!369 (derivativeStep!3320 r!26326 c!13576) tl!3933))) (not ((_ is ElementMatch!10855) (derivative!369 (derivativeStep!3320 r!26326 c!13576) tl!3933)))))))

(declare-fun b!3716738 () Bool)

(assert (=> b!3716738 (= e!2301290 e!2301291)))

(declare-fun res!1510891 () Bool)

(assert (=> b!3716738 (=> res!1510891 e!2301291)))

(assert (=> b!3716738 (= res!1510891 ((_ is Star!10855) (derivative!369 (derivativeStep!3320 r!26326 c!13576) tl!3933)))))

(declare-fun call!269547 () Bool)

(declare-fun bm!269542 () Bool)

(assert (=> bm!269542 (= call!269547 (nullable!3778 (ite c!642486 (regTwo!22223 (derivative!369 (derivativeStep!3320 r!26326 c!13576) tl!3933)) (regOne!22222 (derivative!369 (derivativeStep!3320 r!26326 c!13576) tl!3933)))))))

(declare-fun b!3716739 () Bool)

(declare-fun e!2301294 () Bool)

(assert (=> b!3716739 (= e!2301289 e!2301294)))

(declare-fun res!1510887 () Bool)

(declare-fun call!269548 () Bool)

(assert (=> b!3716739 (= res!1510887 call!269548)))

(assert (=> b!3716739 (=> res!1510887 e!2301294)))

(declare-fun bm!269543 () Bool)

(assert (=> bm!269543 (= call!269548 (nullable!3778 (ite c!642486 (regOne!22223 (derivative!369 (derivativeStep!3320 r!26326 c!13576) tl!3933)) (regTwo!22222 (derivative!369 (derivativeStep!3320 r!26326 c!13576) tl!3933)))))))

(declare-fun b!3716740 () Bool)

(declare-fun e!2301293 () Bool)

(assert (=> b!3716740 (= e!2301293 call!269548)))

(declare-fun b!3716741 () Bool)

(assert (=> b!3716741 (= e!2301294 call!269547)))

(declare-fun d!1088269 () Bool)

(declare-fun res!1510890 () Bool)

(assert (=> d!1088269 (=> res!1510890 e!2301292)))

(assert (=> d!1088269 (= res!1510890 ((_ is EmptyExpr!10855) (derivative!369 (derivativeStep!3320 r!26326 c!13576) tl!3933)))))

(assert (=> d!1088269 (= (nullableFct!1067 (derivative!369 (derivativeStep!3320 r!26326 c!13576) tl!3933)) e!2301292)))

(declare-fun b!3716742 () Bool)

(assert (=> b!3716742 (= e!2301289 e!2301293)))

(declare-fun res!1510889 () Bool)

(assert (=> b!3716742 (= res!1510889 call!269547)))

(assert (=> b!3716742 (=> (not res!1510889) (not e!2301293))))

(assert (= (and d!1088269 (not res!1510890)) b!3716737))

(assert (= (and b!3716737 res!1510888) b!3716738))

(assert (= (and b!3716738 (not res!1510891)) b!3716736))

(assert (= (and b!3716736 c!642486) b!3716739))

(assert (= (and b!3716736 (not c!642486)) b!3716742))

(assert (= (and b!3716739 (not res!1510887)) b!3716741))

(assert (= (and b!3716742 res!1510889) b!3716740))

(assert (= (or b!3716741 b!3716742) bm!269542))

(assert (= (or b!3716739 b!3716740) bm!269543))

(declare-fun m!4222287 () Bool)

(assert (=> bm!269542 m!4222287))

(declare-fun m!4222289 () Bool)

(assert (=> bm!269543 m!4222289))

(assert (=> d!1087871 d!1088269))

(declare-fun d!1088271 () Bool)

(declare-fun c!642487 () Bool)

(assert (=> d!1088271 (= c!642487 ((_ is Nil!39612) (usedCharacters!1118 r!26326)))))

(declare-fun e!2301295 () (InoxSet C!21896))

(assert (=> d!1088271 (= (content!5738 (usedCharacters!1118 r!26326)) e!2301295)))

(declare-fun b!3716743 () Bool)

(assert (=> b!3716743 (= e!2301295 ((as const (Array C!21896 Bool)) false))))

(declare-fun b!3716744 () Bool)

(assert (=> b!3716744 (= e!2301295 ((_ map or) (store ((as const (Array C!21896 Bool)) false) (h!45032 (usedCharacters!1118 r!26326)) true) (content!5738 (t!302419 (usedCharacters!1118 r!26326)))))))

(assert (= (and d!1088271 c!642487) b!3716743))

(assert (= (and d!1088271 (not c!642487)) b!3716744))

(declare-fun m!4222291 () Bool)

(assert (=> b!3716744 m!4222291))

(declare-fun m!4222293 () Bool)

(assert (=> b!3716744 m!4222293))

(assert (=> d!1087889 d!1088271))

(assert (=> b!3715032 d!1088189))

(assert (=> b!3715032 d!1088079))

(declare-fun d!1088273 () Bool)

(assert (=> d!1088273 (= (isEmpty!23507 (tail!5748 (Cons!39612 c!13576 (_1!22744 lt!1297291)))) ((_ is Nil!39612) (tail!5748 (Cons!39612 c!13576 (_1!22744 lt!1297291)))))))

(assert (=> b!3715599 d!1088273))

(assert (=> b!3715599 d!1088171))

(declare-fun b!3716745 () Bool)

(declare-fun e!2301296 () Regex!10855)

(declare-fun e!2301299 () Regex!10855)

(assert (=> b!3716745 (= e!2301296 e!2301299)))

(declare-fun c!642491 () Bool)

(assert (=> b!3716745 (= c!642491 ((_ is ElementMatch!10855) (ite c!642155 (regOne!22223 r!26326) (regOne!22222 r!26326))))))

(declare-fun b!3716746 () Bool)

(declare-fun c!642490 () Bool)

(assert (=> b!3716746 (= c!642490 (nullable!3778 (regOne!22222 (ite c!642155 (regOne!22223 r!26326) (regOne!22222 r!26326)))))))

(declare-fun e!2301297 () Regex!10855)

(declare-fun e!2301300 () Regex!10855)

(assert (=> b!3716746 (= e!2301297 e!2301300)))

(declare-fun bm!269544 () Bool)

(declare-fun call!269550 () Regex!10855)

(declare-fun call!269552 () Regex!10855)

(assert (=> bm!269544 (= call!269550 call!269552)))

(declare-fun b!3716747 () Bool)

(declare-fun c!642488 () Bool)

(assert (=> b!3716747 (= c!642488 ((_ is Union!10855) (ite c!642155 (regOne!22223 r!26326) (regOne!22222 r!26326))))))

(declare-fun e!2301298 () Regex!10855)

(assert (=> b!3716747 (= e!2301299 e!2301298)))

(declare-fun b!3716748 () Bool)

(declare-fun call!269549 () Regex!10855)

(assert (=> b!3716748 (= e!2301298 (Union!10855 call!269552 call!269549))))

(declare-fun b!3716749 () Bool)

(assert (=> b!3716749 (= e!2301296 EmptyLang!10855)))

(declare-fun b!3716750 () Bool)

(assert (=> b!3716750 (= e!2301299 (ite (= c!13576 (c!641993 (ite c!642155 (regOne!22223 r!26326) (regOne!22222 r!26326)))) EmptyExpr!10855 EmptyLang!10855))))

(declare-fun bm!269545 () Bool)

(declare-fun call!269551 () Regex!10855)

(assert (=> bm!269545 (= call!269551 call!269549)))

(declare-fun b!3716751 () Bool)

(assert (=> b!3716751 (= e!2301298 e!2301297)))

(declare-fun c!642492 () Bool)

(assert (=> b!3716751 (= c!642492 ((_ is Star!10855) (ite c!642155 (regOne!22223 r!26326) (regOne!22222 r!26326))))))

(declare-fun bm!269546 () Bool)

(assert (=> bm!269546 (= call!269549 (derivativeStep!3320 (ite c!642488 (regTwo!22223 (ite c!642155 (regOne!22223 r!26326) (regOne!22222 r!26326))) (ite c!642492 (reg!11184 (ite c!642155 (regOne!22223 r!26326) (regOne!22222 r!26326))) (regTwo!22222 (ite c!642155 (regOne!22223 r!26326) (regOne!22222 r!26326))))) c!13576))))

(declare-fun bm!269547 () Bool)

(assert (=> bm!269547 (= call!269552 (derivativeStep!3320 (ite c!642488 (regOne!22223 (ite c!642155 (regOne!22223 r!26326) (regOne!22222 r!26326))) (regOne!22222 (ite c!642155 (regOne!22223 r!26326) (regOne!22222 r!26326)))) c!13576))))

(declare-fun b!3716753 () Bool)

(assert (=> b!3716753 (= e!2301297 (Concat!17126 call!269551 (ite c!642155 (regOne!22223 r!26326) (regOne!22222 r!26326))))))

(declare-fun b!3716754 () Bool)

(assert (=> b!3716754 (= e!2301300 (Union!10855 (Concat!17126 call!269550 (regTwo!22222 (ite c!642155 (regOne!22223 r!26326) (regOne!22222 r!26326)))) EmptyLang!10855))))

(declare-fun b!3716752 () Bool)

(assert (=> b!3716752 (= e!2301300 (Union!10855 (Concat!17126 call!269550 (regTwo!22222 (ite c!642155 (regOne!22223 r!26326) (regOne!22222 r!26326)))) call!269551))))

(declare-fun d!1088275 () Bool)

(declare-fun lt!1297472 () Regex!10855)

(assert (=> d!1088275 (validRegex!4962 lt!1297472)))

(assert (=> d!1088275 (= lt!1297472 e!2301296)))

(declare-fun c!642489 () Bool)

(assert (=> d!1088275 (= c!642489 (or ((_ is EmptyExpr!10855) (ite c!642155 (regOne!22223 r!26326) (regOne!22222 r!26326))) ((_ is EmptyLang!10855) (ite c!642155 (regOne!22223 r!26326) (regOne!22222 r!26326)))))))

(assert (=> d!1088275 (validRegex!4962 (ite c!642155 (regOne!22223 r!26326) (regOne!22222 r!26326)))))

(assert (=> d!1088275 (= (derivativeStep!3320 (ite c!642155 (regOne!22223 r!26326) (regOne!22222 r!26326)) c!13576) lt!1297472)))

(assert (= (and d!1088275 c!642489) b!3716749))

(assert (= (and d!1088275 (not c!642489)) b!3716745))

(assert (= (and b!3716745 c!642491) b!3716750))

(assert (= (and b!3716745 (not c!642491)) b!3716747))

(assert (= (and b!3716747 c!642488) b!3716748))

(assert (= (and b!3716747 (not c!642488)) b!3716751))

(assert (= (and b!3716751 c!642492) b!3716753))

(assert (= (and b!3716751 (not c!642492)) b!3716746))

(assert (= (and b!3716746 c!642490) b!3716752))

(assert (= (and b!3716746 (not c!642490)) b!3716754))

(assert (= (or b!3716752 b!3716754) bm!269544))

(assert (= (or b!3716753 b!3716752) bm!269545))

(assert (= (or b!3716748 bm!269545) bm!269546))

(assert (= (or b!3716748 bm!269544) bm!269547))

(declare-fun m!4222295 () Bool)

(assert (=> b!3716746 m!4222295))

(declare-fun m!4222297 () Bool)

(assert (=> bm!269546 m!4222297))

(declare-fun m!4222299 () Bool)

(assert (=> bm!269547 m!4222299))

(declare-fun m!4222301 () Bool)

(assert (=> d!1088275 m!4222301))

(declare-fun m!4222303 () Bool)

(assert (=> d!1088275 m!4222303))

(assert (=> bm!269281 d!1088275))

(declare-fun d!1088277 () Bool)

(declare-fun lt!1297473 () Bool)

(assert (=> d!1088277 (= lt!1297473 (select (content!5738 (t!302419 (usedCharacters!1118 r!26326))) c!13576))))

(declare-fun e!2301302 () Bool)

(assert (=> d!1088277 (= lt!1297473 e!2301302)))

(declare-fun res!1510893 () Bool)

(assert (=> d!1088277 (=> (not res!1510893) (not e!2301302))))

(assert (=> d!1088277 (= res!1510893 ((_ is Cons!39612) (t!302419 (usedCharacters!1118 r!26326))))))

(assert (=> d!1088277 (= (contains!7948 (t!302419 (usedCharacters!1118 r!26326)) c!13576) lt!1297473)))

(declare-fun b!3716755 () Bool)

(declare-fun e!2301301 () Bool)

(assert (=> b!3716755 (= e!2301302 e!2301301)))

(declare-fun res!1510892 () Bool)

(assert (=> b!3716755 (=> res!1510892 e!2301301)))

(assert (=> b!3716755 (= res!1510892 (= (h!45032 (t!302419 (usedCharacters!1118 r!26326))) c!13576))))

(declare-fun b!3716756 () Bool)

(assert (=> b!3716756 (= e!2301301 (contains!7948 (t!302419 (t!302419 (usedCharacters!1118 r!26326))) c!13576))))

(assert (= (and d!1088277 res!1510893) b!3716755))

(assert (= (and b!3716755 (not res!1510892)) b!3716756))

(assert (=> d!1088277 m!4222293))

(declare-fun m!4222305 () Bool)

(assert (=> d!1088277 m!4222305))

(declare-fun m!4222307 () Bool)

(assert (=> b!3716756 m!4222307))

(assert (=> b!3715637 d!1088277))

(declare-fun d!1088279 () Bool)

(assert (not d!1088279))

(assert (=> b!3715554 d!1088279))

(assert (=> b!3715554 d!1088211))

(declare-fun b!3716758 () Bool)

(declare-fun e!2301304 () List!39736)

(assert (=> b!3716758 (= e!2301304 (Cons!39612 (h!45032 call!269302) (++!9801 (t!302419 call!269302) call!269301)))))

(declare-fun d!1088281 () Bool)

(declare-fun e!2301303 () Bool)

(assert (=> d!1088281 e!2301303))

(declare-fun res!1510895 () Bool)

(assert (=> d!1088281 (=> (not res!1510895) (not e!2301303))))

(declare-fun lt!1297474 () List!39736)

(assert (=> d!1088281 (= res!1510895 (= (content!5738 lt!1297474) ((_ map or) (content!5738 call!269302) (content!5738 call!269301))))))

(assert (=> d!1088281 (= lt!1297474 e!2301304)))

(declare-fun c!642493 () Bool)

(assert (=> d!1088281 (= c!642493 ((_ is Nil!39612) call!269302))))

(assert (=> d!1088281 (= (++!9801 call!269302 call!269301) lt!1297474)))

(declare-fun b!3716757 () Bool)

(assert (=> b!3716757 (= e!2301304 call!269301)))

(declare-fun b!3716760 () Bool)

(assert (=> b!3716760 (= e!2301303 (or (not (= call!269301 Nil!39612)) (= lt!1297474 call!269302)))))

(declare-fun b!3716759 () Bool)

(declare-fun res!1510894 () Bool)

(assert (=> b!3716759 (=> (not res!1510894) (not e!2301303))))

(assert (=> b!3716759 (= res!1510894 (= (size!30020 lt!1297474) (+ (size!30020 call!269302) (size!30020 call!269301))))))

(assert (= (and d!1088281 c!642493) b!3716757))

(assert (= (and d!1088281 (not c!642493)) b!3716758))

(assert (= (and d!1088281 res!1510895) b!3716759))

(assert (= (and b!3716759 res!1510894) b!3716760))

(declare-fun m!4222309 () Bool)

(assert (=> b!3716758 m!4222309))

(declare-fun m!4222311 () Bool)

(assert (=> d!1088281 m!4222311))

(declare-fun m!4222313 () Bool)

(assert (=> d!1088281 m!4222313))

(declare-fun m!4222315 () Bool)

(assert (=> d!1088281 m!4222315))

(declare-fun m!4222317 () Bool)

(assert (=> b!3716759 m!4222317))

(declare-fun m!4222319 () Bool)

(assert (=> b!3716759 m!4222319))

(declare-fun m!4222321 () Bool)

(assert (=> b!3716759 m!4222321))

(assert (=> bm!269295 d!1088281))

(declare-fun d!1088283 () Bool)

(assert (=> d!1088283 (= (isEmpty!23507 (tail!5748 (_2!22744 lt!1297291))) ((_ is Nil!39612) (tail!5748 (_2!22744 lt!1297291))))))

(assert (=> b!3715050 d!1088283))

(assert (=> b!3715050 d!1088205))

(declare-fun b!3716761 () Bool)

(declare-fun res!1510896 () Bool)

(declare-fun e!2301309 () Bool)

(assert (=> b!3716761 (=> (not res!1510896) (not e!2301309))))

(declare-fun call!269555 () Bool)

(assert (=> b!3716761 (= res!1510896 call!269555)))

(declare-fun e!2301305 () Bool)

(assert (=> b!3716761 (= e!2301305 e!2301309)))

(declare-fun b!3716762 () Bool)

(declare-fun call!269554 () Bool)

(assert (=> b!3716762 (= e!2301309 call!269554)))

(declare-fun b!3716763 () Bool)

(declare-fun e!2301307 () Bool)

(declare-fun call!269553 () Bool)

(assert (=> b!3716763 (= e!2301307 call!269553)))

(declare-fun d!1088285 () Bool)

(declare-fun res!1510898 () Bool)

(declare-fun e!2301308 () Bool)

(assert (=> d!1088285 (=> res!1510898 e!2301308)))

(assert (=> d!1088285 (= res!1510898 ((_ is ElementMatch!10855) lt!1297336))))

(assert (=> d!1088285 (= (validRegex!4962 lt!1297336) e!2301308)))

(declare-fun b!3716764 () Bool)

(declare-fun e!2301310 () Bool)

(assert (=> b!3716764 (= e!2301310 e!2301307)))

(declare-fun res!1510899 () Bool)

(assert (=> b!3716764 (= res!1510899 (not (nullable!3778 (reg!11184 lt!1297336))))))

(assert (=> b!3716764 (=> (not res!1510899) (not e!2301307))))

(declare-fun b!3716765 () Bool)

(assert (=> b!3716765 (= e!2301308 e!2301310)))

(declare-fun c!642494 () Bool)

(assert (=> b!3716765 (= c!642494 ((_ is Star!10855) lt!1297336))))

(declare-fun b!3716766 () Bool)

(declare-fun e!2301306 () Bool)

(declare-fun e!2301311 () Bool)

(assert (=> b!3716766 (= e!2301306 e!2301311)))

(declare-fun res!1510900 () Bool)

(assert (=> b!3716766 (=> (not res!1510900) (not e!2301311))))

(assert (=> b!3716766 (= res!1510900 call!269554)))

(declare-fun b!3716767 () Bool)

(declare-fun res!1510897 () Bool)

(assert (=> b!3716767 (=> res!1510897 e!2301306)))

(assert (=> b!3716767 (= res!1510897 (not ((_ is Concat!17126) lt!1297336)))))

(assert (=> b!3716767 (= e!2301305 e!2301306)))

(declare-fun c!642495 () Bool)

(declare-fun bm!269548 () Bool)

(assert (=> bm!269548 (= call!269553 (validRegex!4962 (ite c!642494 (reg!11184 lt!1297336) (ite c!642495 (regTwo!22223 lt!1297336) (regOne!22222 lt!1297336)))))))

(declare-fun b!3716768 () Bool)

(assert (=> b!3716768 (= e!2301311 call!269555)))

(declare-fun bm!269549 () Bool)

(assert (=> bm!269549 (= call!269555 (validRegex!4962 (ite c!642495 (regOne!22223 lt!1297336) (regTwo!22222 lt!1297336))))))

(declare-fun bm!269550 () Bool)

(assert (=> bm!269550 (= call!269554 call!269553)))

(declare-fun b!3716769 () Bool)

(assert (=> b!3716769 (= e!2301310 e!2301305)))

(assert (=> b!3716769 (= c!642495 ((_ is Union!10855) lt!1297336))))

(assert (= (and d!1088285 (not res!1510898)) b!3716765))

(assert (= (and b!3716765 c!642494) b!3716764))

(assert (= (and b!3716765 (not c!642494)) b!3716769))

(assert (= (and b!3716764 res!1510899) b!3716763))

(assert (= (and b!3716769 c!642495) b!3716761))

(assert (= (and b!3716769 (not c!642495)) b!3716767))

(assert (= (and b!3716761 res!1510896) b!3716762))

(assert (= (and b!3716767 (not res!1510897)) b!3716766))

(assert (= (and b!3716766 res!1510900) b!3716768))

(assert (= (or b!3716762 b!3716766) bm!269550))

(assert (= (or b!3716761 b!3716768) bm!269549))

(assert (= (or b!3716763 bm!269550) bm!269548))

(declare-fun m!4222323 () Bool)

(assert (=> b!3716764 m!4222323))

(declare-fun m!4222325 () Bool)

(assert (=> bm!269548 m!4222325))

(declare-fun m!4222327 () Bool)

(assert (=> bm!269549 m!4222327))

(assert (=> d!1087791 d!1088285))

(declare-fun b!3716770 () Bool)

(declare-fun res!1510901 () Bool)

(declare-fun e!2301316 () Bool)

(assert (=> b!3716770 (=> (not res!1510901) (not e!2301316))))

(declare-fun call!269558 () Bool)

(assert (=> b!3716770 (= res!1510901 call!269558)))

(declare-fun e!2301312 () Bool)

(assert (=> b!3716770 (= e!2301312 e!2301316)))

(declare-fun b!3716771 () Bool)

(declare-fun call!269557 () Bool)

(assert (=> b!3716771 (= e!2301316 call!269557)))

(declare-fun b!3716772 () Bool)

(declare-fun e!2301314 () Bool)

(declare-fun call!269556 () Bool)

(assert (=> b!3716772 (= e!2301314 call!269556)))

(declare-fun d!1088287 () Bool)

(declare-fun res!1510903 () Bool)

(declare-fun e!2301315 () Bool)

(assert (=> d!1088287 (=> res!1510903 e!2301315)))

(assert (=> d!1088287 (= res!1510903 ((_ is ElementMatch!10855) (regTwo!22222 r!26326)))))

(assert (=> d!1088287 (= (validRegex!4962 (regTwo!22222 r!26326)) e!2301315)))

(declare-fun b!3716773 () Bool)

(declare-fun e!2301317 () Bool)

(assert (=> b!3716773 (= e!2301317 e!2301314)))

(declare-fun res!1510904 () Bool)

(assert (=> b!3716773 (= res!1510904 (not (nullable!3778 (reg!11184 (regTwo!22222 r!26326)))))))

(assert (=> b!3716773 (=> (not res!1510904) (not e!2301314))))

(declare-fun b!3716774 () Bool)

(assert (=> b!3716774 (= e!2301315 e!2301317)))

(declare-fun c!642496 () Bool)

(assert (=> b!3716774 (= c!642496 ((_ is Star!10855) (regTwo!22222 r!26326)))))

(declare-fun b!3716775 () Bool)

(declare-fun e!2301313 () Bool)

(declare-fun e!2301318 () Bool)

(assert (=> b!3716775 (= e!2301313 e!2301318)))

(declare-fun res!1510905 () Bool)

(assert (=> b!3716775 (=> (not res!1510905) (not e!2301318))))

(assert (=> b!3716775 (= res!1510905 call!269557)))

(declare-fun b!3716776 () Bool)

(declare-fun res!1510902 () Bool)

(assert (=> b!3716776 (=> res!1510902 e!2301313)))

(assert (=> b!3716776 (= res!1510902 (not ((_ is Concat!17126) (regTwo!22222 r!26326))))))

(assert (=> b!3716776 (= e!2301312 e!2301313)))

(declare-fun c!642497 () Bool)

(declare-fun bm!269551 () Bool)

(assert (=> bm!269551 (= call!269556 (validRegex!4962 (ite c!642496 (reg!11184 (regTwo!22222 r!26326)) (ite c!642497 (regTwo!22223 (regTwo!22222 r!26326)) (regOne!22222 (regTwo!22222 r!26326))))))))

(declare-fun b!3716777 () Bool)

(assert (=> b!3716777 (= e!2301318 call!269558)))

(declare-fun bm!269552 () Bool)

(assert (=> bm!269552 (= call!269558 (validRegex!4962 (ite c!642497 (regOne!22223 (regTwo!22222 r!26326)) (regTwo!22222 (regTwo!22222 r!26326)))))))

(declare-fun bm!269553 () Bool)

(assert (=> bm!269553 (= call!269557 call!269556)))

(declare-fun b!3716778 () Bool)

(assert (=> b!3716778 (= e!2301317 e!2301312)))

(assert (=> b!3716778 (= c!642497 ((_ is Union!10855) (regTwo!22222 r!26326)))))

(assert (= (and d!1088287 (not res!1510903)) b!3716774))

(assert (= (and b!3716774 c!642496) b!3716773))

(assert (= (and b!3716774 (not c!642496)) b!3716778))

(assert (= (and b!3716773 res!1510904) b!3716772))

(assert (= (and b!3716778 c!642497) b!3716770))

(assert (= (and b!3716778 (not c!642497)) b!3716776))

(assert (= (and b!3716770 res!1510901) b!3716771))

(assert (= (and b!3716776 (not res!1510902)) b!3716775))

(assert (= (and b!3716775 res!1510905) b!3716777))

(assert (= (or b!3716771 b!3716775) bm!269553))

(assert (= (or b!3716770 b!3716777) bm!269552))

(assert (= (or b!3716772 bm!269553) bm!269551))

(declare-fun m!4222329 () Bool)

(assert (=> b!3716773 m!4222329))

(declare-fun m!4222331 () Bool)

(assert (=> bm!269551 m!4222331))

(declare-fun m!4222333 () Bool)

(assert (=> bm!269552 m!4222333))

(assert (=> d!1087791 d!1088287))

(assert (=> b!3715111 d!1088073))

(declare-fun b!3716780 () Bool)

(declare-fun e!2301320 () List!39736)

(assert (=> b!3716780 (= e!2301320 (Cons!39612 (h!45032 (++!9801 Nil!39612 (Cons!39612 (h!45032 tl!3933) Nil!39612))) (++!9801 (t!302419 (++!9801 Nil!39612 (Cons!39612 (h!45032 tl!3933) Nil!39612))) (t!302419 tl!3933))))))

(declare-fun d!1088289 () Bool)

(declare-fun e!2301319 () Bool)

(assert (=> d!1088289 e!2301319))

(declare-fun res!1510907 () Bool)

(assert (=> d!1088289 (=> (not res!1510907) (not e!2301319))))

(declare-fun lt!1297475 () List!39736)

(assert (=> d!1088289 (= res!1510907 (= (content!5738 lt!1297475) ((_ map or) (content!5738 (++!9801 Nil!39612 (Cons!39612 (h!45032 tl!3933) Nil!39612))) (content!5738 (t!302419 tl!3933)))))))

(assert (=> d!1088289 (= lt!1297475 e!2301320)))

(declare-fun c!642498 () Bool)

(assert (=> d!1088289 (= c!642498 ((_ is Nil!39612) (++!9801 Nil!39612 (Cons!39612 (h!45032 tl!3933) Nil!39612))))))

(assert (=> d!1088289 (= (++!9801 (++!9801 Nil!39612 (Cons!39612 (h!45032 tl!3933) Nil!39612)) (t!302419 tl!3933)) lt!1297475)))

(declare-fun b!3716779 () Bool)

(assert (=> b!3716779 (= e!2301320 (t!302419 tl!3933))))

(declare-fun b!3716782 () Bool)

(assert (=> b!3716782 (= e!2301319 (or (not (= (t!302419 tl!3933) Nil!39612)) (= lt!1297475 (++!9801 Nil!39612 (Cons!39612 (h!45032 tl!3933) Nil!39612)))))))

(declare-fun b!3716781 () Bool)

(declare-fun res!1510906 () Bool)

(assert (=> b!3716781 (=> (not res!1510906) (not e!2301319))))

(assert (=> b!3716781 (= res!1510906 (= (size!30020 lt!1297475) (+ (size!30020 (++!9801 Nil!39612 (Cons!39612 (h!45032 tl!3933) Nil!39612))) (size!30020 (t!302419 tl!3933)))))))

(assert (= (and d!1088289 c!642498) b!3716779))

(assert (= (and d!1088289 (not c!642498)) b!3716780))

(assert (= (and d!1088289 res!1510907) b!3716781))

(assert (= (and b!3716781 res!1510906) b!3716782))

(declare-fun m!4222335 () Bool)

(assert (=> b!3716780 m!4222335))

(declare-fun m!4222337 () Bool)

(assert (=> d!1088289 m!4222337))

(assert (=> d!1088289 m!4221317))

(declare-fun m!4222339 () Bool)

(assert (=> d!1088289 m!4222339))

(declare-fun m!4222341 () Bool)

(assert (=> d!1088289 m!4222341))

(declare-fun m!4222343 () Bool)

(assert (=> b!3716781 m!4222343))

(assert (=> b!3716781 m!4221317))

(declare-fun m!4222345 () Bool)

(assert (=> b!3716781 m!4222345))

(declare-fun m!4222347 () Bool)

(assert (=> b!3716781 m!4222347))

(assert (=> b!3715514 d!1088289))

(declare-fun b!3716784 () Bool)

(declare-fun e!2301322 () List!39736)

(assert (=> b!3716784 (= e!2301322 (Cons!39612 (h!45032 Nil!39612) (++!9801 (t!302419 Nil!39612) (Cons!39612 (h!45032 tl!3933) Nil!39612))))))

(declare-fun d!1088291 () Bool)

(declare-fun e!2301321 () Bool)

(assert (=> d!1088291 e!2301321))

(declare-fun res!1510909 () Bool)

(assert (=> d!1088291 (=> (not res!1510909) (not e!2301321))))

(declare-fun lt!1297476 () List!39736)

(assert (=> d!1088291 (= res!1510909 (= (content!5738 lt!1297476) ((_ map or) (content!5738 Nil!39612) (content!5738 (Cons!39612 (h!45032 tl!3933) Nil!39612)))))))

(assert (=> d!1088291 (= lt!1297476 e!2301322)))

(declare-fun c!642499 () Bool)

(assert (=> d!1088291 (= c!642499 ((_ is Nil!39612) Nil!39612))))

(assert (=> d!1088291 (= (++!9801 Nil!39612 (Cons!39612 (h!45032 tl!3933) Nil!39612)) lt!1297476)))

(declare-fun b!3716783 () Bool)

(assert (=> b!3716783 (= e!2301322 (Cons!39612 (h!45032 tl!3933) Nil!39612))))

(declare-fun b!3716786 () Bool)

(assert (=> b!3716786 (= e!2301321 (or (not (= (Cons!39612 (h!45032 tl!3933) Nil!39612) Nil!39612)) (= lt!1297476 Nil!39612)))))

(declare-fun b!3716785 () Bool)

(declare-fun res!1510908 () Bool)

(assert (=> b!3716785 (=> (not res!1510908) (not e!2301321))))

(assert (=> b!3716785 (= res!1510908 (= (size!30020 lt!1297476) (+ (size!30020 Nil!39612) (size!30020 (Cons!39612 (h!45032 tl!3933) Nil!39612)))))))

(assert (= (and d!1088291 c!642499) b!3716783))

(assert (= (and d!1088291 (not c!642499)) b!3716784))

(assert (= (and d!1088291 res!1510909) b!3716785))

(assert (= (and b!3716785 res!1510908) b!3716786))

(declare-fun m!4222349 () Bool)

(assert (=> b!3716784 m!4222349))

(declare-fun m!4222351 () Bool)

(assert (=> d!1088291 m!4222351))

(declare-fun m!4222353 () Bool)

(assert (=> d!1088291 m!4222353))

(declare-fun m!4222355 () Bool)

(assert (=> d!1088291 m!4222355))

(declare-fun m!4222357 () Bool)

(assert (=> b!3716785 m!4222357))

(declare-fun m!4222359 () Bool)

(assert (=> b!3716785 m!4222359))

(declare-fun m!4222361 () Bool)

(assert (=> b!3716785 m!4222361))

(assert (=> b!3715514 d!1088291))

(declare-fun d!1088293 () Bool)

(assert (=> d!1088293 (= (++!9801 (++!9801 Nil!39612 (Cons!39612 (h!45032 tl!3933) Nil!39612)) (t!302419 tl!3933)) tl!3933)))

(declare-fun lt!1297479 () Unit!57508)

(declare-fun choose!22194 (List!39736 C!21896 List!39736 List!39736) Unit!57508)

(assert (=> d!1088293 (= lt!1297479 (choose!22194 Nil!39612 (h!45032 tl!3933) (t!302419 tl!3933) tl!3933))))

(assert (=> d!1088293 (= (++!9801 Nil!39612 (Cons!39612 (h!45032 tl!3933) (t!302419 tl!3933))) tl!3933)))

(assert (=> d!1088293 (= (lemmaMoveElementToOtherListKeepsConcatEq!1196 Nil!39612 (h!45032 tl!3933) (t!302419 tl!3933) tl!3933) lt!1297479)))

(declare-fun bs!574856 () Bool)

(assert (= bs!574856 d!1088293))

(assert (=> bs!574856 m!4221317))

(assert (=> bs!574856 m!4221317))

(assert (=> bs!574856 m!4221319))

(declare-fun m!4222363 () Bool)

(assert (=> bs!574856 m!4222363))

(declare-fun m!4222365 () Bool)

(assert (=> bs!574856 m!4222365))

(assert (=> b!3715514 d!1088293))

(declare-fun b!3716787 () Bool)

(declare-fun res!1510912 () Bool)

(declare-fun e!2301325 () Bool)

(assert (=> b!3716787 (=> (not res!1510912) (not e!2301325))))

(declare-fun lt!1297481 () Option!8572)

(assert (=> b!3716787 (= res!1510912 (matchR!5300 (regTwo!22222 r!26326) (_2!22744 (get!13200 lt!1297481))))))

(declare-fun b!3716788 () Bool)

(declare-fun lt!1297480 () Unit!57508)

(declare-fun lt!1297482 () Unit!57508)

(assert (=> b!3716788 (= lt!1297480 lt!1297482)))

(assert (=> b!3716788 (= (++!9801 (++!9801 (++!9801 Nil!39612 (Cons!39612 (h!45032 tl!3933) Nil!39612)) (Cons!39612 (h!45032 (t!302419 tl!3933)) Nil!39612)) (t!302419 (t!302419 tl!3933))) tl!3933)))

(assert (=> b!3716788 (= lt!1297482 (lemmaMoveElementToOtherListKeepsConcatEq!1196 (++!9801 Nil!39612 (Cons!39612 (h!45032 tl!3933) Nil!39612)) (h!45032 (t!302419 tl!3933)) (t!302419 (t!302419 tl!3933)) tl!3933))))

(declare-fun e!2301324 () Option!8572)

(assert (=> b!3716788 (= e!2301324 (findConcatSeparation!1260 lt!1297295 (regTwo!22222 r!26326) (++!9801 (++!9801 Nil!39612 (Cons!39612 (h!45032 tl!3933) Nil!39612)) (Cons!39612 (h!45032 (t!302419 tl!3933)) Nil!39612)) (t!302419 (t!302419 tl!3933)) tl!3933))))

(declare-fun b!3716789 () Bool)

(declare-fun e!2301323 () Bool)

(assert (=> b!3716789 (= e!2301323 (not (isDefined!6749 lt!1297481)))))

(declare-fun b!3716790 () Bool)

(declare-fun e!2301326 () Bool)

(assert (=> b!3716790 (= e!2301326 (matchR!5300 (regTwo!22222 r!26326) (t!302419 tl!3933)))))

(declare-fun d!1088295 () Bool)

(assert (=> d!1088295 e!2301323))

(declare-fun res!1510911 () Bool)

(assert (=> d!1088295 (=> res!1510911 e!2301323)))

(assert (=> d!1088295 (= res!1510911 e!2301325)))

(declare-fun res!1510910 () Bool)

(assert (=> d!1088295 (=> (not res!1510910) (not e!2301325))))

(assert (=> d!1088295 (= res!1510910 (isDefined!6749 lt!1297481))))

(declare-fun e!2301327 () Option!8572)

(assert (=> d!1088295 (= lt!1297481 e!2301327)))

(declare-fun c!642500 () Bool)

(assert (=> d!1088295 (= c!642500 e!2301326)))

(declare-fun res!1510913 () Bool)

(assert (=> d!1088295 (=> (not res!1510913) (not e!2301326))))

(assert (=> d!1088295 (= res!1510913 (matchR!5300 lt!1297295 (++!9801 Nil!39612 (Cons!39612 (h!45032 tl!3933) Nil!39612))))))

(assert (=> d!1088295 (validRegex!4962 lt!1297295)))

(assert (=> d!1088295 (= (findConcatSeparation!1260 lt!1297295 (regTwo!22222 r!26326) (++!9801 Nil!39612 (Cons!39612 (h!45032 tl!3933) Nil!39612)) (t!302419 tl!3933) tl!3933) lt!1297481)))

(declare-fun b!3716791 () Bool)

(assert (=> b!3716791 (= e!2301325 (= (++!9801 (_1!22744 (get!13200 lt!1297481)) (_2!22744 (get!13200 lt!1297481))) tl!3933))))

(declare-fun b!3716792 () Bool)

(assert (=> b!3716792 (= e!2301324 None!8571)))

(declare-fun b!3716793 () Bool)

(assert (=> b!3716793 (= e!2301327 e!2301324)))

(declare-fun c!642501 () Bool)

(assert (=> b!3716793 (= c!642501 ((_ is Nil!39612) (t!302419 tl!3933)))))

(declare-fun b!3716794 () Bool)

(declare-fun res!1510914 () Bool)

(assert (=> b!3716794 (=> (not res!1510914) (not e!2301325))))

(assert (=> b!3716794 (= res!1510914 (matchR!5300 lt!1297295 (_1!22744 (get!13200 lt!1297481))))))

(declare-fun b!3716795 () Bool)

(assert (=> b!3716795 (= e!2301327 (Some!8571 (tuple2!39221 (++!9801 Nil!39612 (Cons!39612 (h!45032 tl!3933) Nil!39612)) (t!302419 tl!3933))))))

(assert (= (and d!1088295 res!1510913) b!3716790))

(assert (= (and d!1088295 c!642500) b!3716795))

(assert (= (and d!1088295 (not c!642500)) b!3716793))

(assert (= (and b!3716793 c!642501) b!3716792))

(assert (= (and b!3716793 (not c!642501)) b!3716788))

(assert (= (and d!1088295 res!1510910) b!3716794))

(assert (= (and b!3716794 res!1510914) b!3716787))

(assert (= (and b!3716787 res!1510912) b!3716791))

(assert (= (and d!1088295 (not res!1510911)) b!3716789))

(declare-fun m!4222367 () Bool)

(assert (=> b!3716787 m!4222367))

(declare-fun m!4222369 () Bool)

(assert (=> b!3716787 m!4222369))

(declare-fun m!4222371 () Bool)

(assert (=> b!3716790 m!4222371))

(declare-fun m!4222373 () Bool)

(assert (=> d!1088295 m!4222373))

(assert (=> d!1088295 m!4221317))

(declare-fun m!4222375 () Bool)

(assert (=> d!1088295 m!4222375))

(assert (=> d!1088295 m!4221149))

(assert (=> b!3716788 m!4221317))

(declare-fun m!4222377 () Bool)

(assert (=> b!3716788 m!4222377))

(assert (=> b!3716788 m!4222377))

(declare-fun m!4222379 () Bool)

(assert (=> b!3716788 m!4222379))

(assert (=> b!3716788 m!4221317))

(declare-fun m!4222381 () Bool)

(assert (=> b!3716788 m!4222381))

(assert (=> b!3716788 m!4222377))

(declare-fun m!4222383 () Bool)

(assert (=> b!3716788 m!4222383))

(assert (=> b!3716794 m!4222367))

(declare-fun m!4222385 () Bool)

(assert (=> b!3716794 m!4222385))

(assert (=> b!3716791 m!4222367))

(declare-fun m!4222387 () Bool)

(assert (=> b!3716791 m!4222387))

(assert (=> b!3716789 m!4222373))

(assert (=> b!3715514 d!1088295))

(assert (=> b!3715228 d!1088073))

(declare-fun b!3716796 () Bool)

(declare-fun res!1510915 () Bool)

(declare-fun e!2301332 () Bool)

(assert (=> b!3716796 (=> (not res!1510915) (not e!2301332))))

(declare-fun call!269561 () Bool)

(assert (=> b!3716796 (= res!1510915 call!269561)))

(declare-fun e!2301328 () Bool)

(assert (=> b!3716796 (= e!2301328 e!2301332)))

(declare-fun b!3716797 () Bool)

(declare-fun call!269560 () Bool)

(assert (=> b!3716797 (= e!2301332 call!269560)))

(declare-fun b!3716798 () Bool)

(declare-fun e!2301330 () Bool)

(declare-fun call!269559 () Bool)

(assert (=> b!3716798 (= e!2301330 call!269559)))

(declare-fun d!1088297 () Bool)

(declare-fun res!1510917 () Bool)

(declare-fun e!2301331 () Bool)

(assert (=> d!1088297 (=> res!1510917 e!2301331)))

(assert (=> d!1088297 (= res!1510917 ((_ is ElementMatch!10855) lt!1297318))))

(assert (=> d!1088297 (= (validRegex!4962 lt!1297318) e!2301331)))

(declare-fun b!3716799 () Bool)

(declare-fun e!2301333 () Bool)

(assert (=> b!3716799 (= e!2301333 e!2301330)))

(declare-fun res!1510918 () Bool)

(assert (=> b!3716799 (= res!1510918 (not (nullable!3778 (reg!11184 lt!1297318))))))

(assert (=> b!3716799 (=> (not res!1510918) (not e!2301330))))

(declare-fun b!3716800 () Bool)

(assert (=> b!3716800 (= e!2301331 e!2301333)))

(declare-fun c!642502 () Bool)

(assert (=> b!3716800 (= c!642502 ((_ is Star!10855) lt!1297318))))

(declare-fun b!3716801 () Bool)

(declare-fun e!2301329 () Bool)

(declare-fun e!2301334 () Bool)

(assert (=> b!3716801 (= e!2301329 e!2301334)))

(declare-fun res!1510919 () Bool)

(assert (=> b!3716801 (=> (not res!1510919) (not e!2301334))))

(assert (=> b!3716801 (= res!1510919 call!269560)))

(declare-fun b!3716802 () Bool)

(declare-fun res!1510916 () Bool)

(assert (=> b!3716802 (=> res!1510916 e!2301329)))

(assert (=> b!3716802 (= res!1510916 (not ((_ is Concat!17126) lt!1297318)))))

(assert (=> b!3716802 (= e!2301328 e!2301329)))

(declare-fun bm!269554 () Bool)

(declare-fun c!642503 () Bool)

(assert (=> bm!269554 (= call!269559 (validRegex!4962 (ite c!642502 (reg!11184 lt!1297318) (ite c!642503 (regTwo!22223 lt!1297318) (regOne!22222 lt!1297318)))))))

(declare-fun b!3716803 () Bool)

(assert (=> b!3716803 (= e!2301334 call!269561)))

(declare-fun bm!269555 () Bool)

(assert (=> bm!269555 (= call!269561 (validRegex!4962 (ite c!642503 (regOne!22223 lt!1297318) (regTwo!22222 lt!1297318))))))

(declare-fun bm!269556 () Bool)

(assert (=> bm!269556 (= call!269560 call!269559)))

(declare-fun b!3716804 () Bool)

(assert (=> b!3716804 (= e!2301333 e!2301328)))

(assert (=> b!3716804 (= c!642503 ((_ is Union!10855) lt!1297318))))

(assert (= (and d!1088297 (not res!1510917)) b!3716800))

(assert (= (and b!3716800 c!642502) b!3716799))

(assert (= (and b!3716800 (not c!642502)) b!3716804))

(assert (= (and b!3716799 res!1510918) b!3716798))

(assert (= (and b!3716804 c!642503) b!3716796))

(assert (= (and b!3716804 (not c!642503)) b!3716802))

(assert (= (and b!3716796 res!1510915) b!3716797))

(assert (= (and b!3716802 (not res!1510916)) b!3716801))

(assert (= (and b!3716801 res!1510919) b!3716803))

(assert (= (or b!3716797 b!3716801) bm!269556))

(assert (= (or b!3716796 b!3716803) bm!269555))

(assert (= (or b!3716798 bm!269556) bm!269554))

(declare-fun m!4222389 () Bool)

(assert (=> b!3716799 m!4222389))

(declare-fun m!4222391 () Bool)

(assert (=> bm!269554 m!4222391))

(declare-fun m!4222393 () Bool)

(assert (=> bm!269555 m!4222393))

(assert (=> d!1087789 d!1088297))

(assert (=> d!1087789 d!1088095))

(declare-fun d!1088299 () Bool)

(assert (=> d!1088299 (= (nullable!3778 (regOne!22222 (regTwo!22222 r!26326))) (nullableFct!1067 (regOne!22222 (regTwo!22222 r!26326))))))

(declare-fun bs!574857 () Bool)

(assert (= bs!574857 d!1088299))

(declare-fun m!4222395 () Bool)

(assert (=> bs!574857 m!4222395))

(assert (=> b!3715183 d!1088299))

(assert (=> bm!269205 d!1088181))

(declare-fun d!1088301 () Bool)

(declare-fun c!642504 () Bool)

(assert (=> d!1088301 (= c!642504 ((_ is Nil!39612) (usedCharacters!1118 (regOne!22222 r!26326))))))

(declare-fun e!2301335 () (InoxSet C!21896))

(assert (=> d!1088301 (= (content!5738 (usedCharacters!1118 (regOne!22222 r!26326))) e!2301335)))

(declare-fun b!3716805 () Bool)

(assert (=> b!3716805 (= e!2301335 ((as const (Array C!21896 Bool)) false))))

(declare-fun b!3716806 () Bool)

(assert (=> b!3716806 (= e!2301335 ((_ map or) (store ((as const (Array C!21896 Bool)) false) (h!45032 (usedCharacters!1118 (regOne!22222 r!26326))) true) (content!5738 (t!302419 (usedCharacters!1118 (regOne!22222 r!26326))))))))

(assert (= (and d!1088301 c!642504) b!3716805))

(assert (= (and d!1088301 (not c!642504)) b!3716806))

(declare-fun m!4222397 () Bool)

(assert (=> b!3716806 m!4222397))

(assert (=> b!3716806 m!4222081))

(assert (=> d!1087891 d!1088301))

(declare-fun b!3716807 () Bool)

(declare-fun e!2301338 () Bool)

(declare-fun e!2301336 () Bool)

(assert (=> b!3716807 (= e!2301338 e!2301336)))

(declare-fun c!642505 () Bool)

(assert (=> b!3716807 (= c!642505 ((_ is Union!10855) lt!1297293))))

(declare-fun b!3716808 () Bool)

(declare-fun e!2301339 () Bool)

(declare-fun e!2301337 () Bool)

(assert (=> b!3716808 (= e!2301339 e!2301337)))

(declare-fun res!1510921 () Bool)

(assert (=> b!3716808 (=> (not res!1510921) (not e!2301337))))

(assert (=> b!3716808 (= res!1510921 (and (not ((_ is EmptyLang!10855) lt!1297293)) (not ((_ is ElementMatch!10855) lt!1297293))))))

(declare-fun b!3716809 () Bool)

(assert (=> b!3716809 (= e!2301337 e!2301338)))

(declare-fun res!1510924 () Bool)

(assert (=> b!3716809 (=> res!1510924 e!2301338)))

(assert (=> b!3716809 (= res!1510924 ((_ is Star!10855) lt!1297293))))

(declare-fun bm!269557 () Bool)

(declare-fun call!269562 () Bool)

(assert (=> bm!269557 (= call!269562 (nullable!3778 (ite c!642505 (regTwo!22223 lt!1297293) (regOne!22222 lt!1297293))))))

(declare-fun b!3716810 () Bool)

(declare-fun e!2301341 () Bool)

(assert (=> b!3716810 (= e!2301336 e!2301341)))

(declare-fun res!1510920 () Bool)

(declare-fun call!269563 () Bool)

(assert (=> b!3716810 (= res!1510920 call!269563)))

(assert (=> b!3716810 (=> res!1510920 e!2301341)))

(declare-fun bm!269558 () Bool)

(assert (=> bm!269558 (= call!269563 (nullable!3778 (ite c!642505 (regOne!22223 lt!1297293) (regTwo!22222 lt!1297293))))))

(declare-fun b!3716811 () Bool)

(declare-fun e!2301340 () Bool)

(assert (=> b!3716811 (= e!2301340 call!269563)))

(declare-fun b!3716812 () Bool)

(assert (=> b!3716812 (= e!2301341 call!269562)))

(declare-fun d!1088303 () Bool)

(declare-fun res!1510923 () Bool)

(assert (=> d!1088303 (=> res!1510923 e!2301339)))

(assert (=> d!1088303 (= res!1510923 ((_ is EmptyExpr!10855) lt!1297293))))

(assert (=> d!1088303 (= (nullableFct!1067 lt!1297293) e!2301339)))

(declare-fun b!3716813 () Bool)

(assert (=> b!3716813 (= e!2301336 e!2301340)))

(declare-fun res!1510922 () Bool)

(assert (=> b!3716813 (= res!1510922 call!269562)))

(assert (=> b!3716813 (=> (not res!1510922) (not e!2301340))))

(assert (= (and d!1088303 (not res!1510923)) b!3716808))

(assert (= (and b!3716808 res!1510921) b!3716809))

(assert (= (and b!3716809 (not res!1510924)) b!3716807))

(assert (= (and b!3716807 c!642505) b!3716810))

(assert (= (and b!3716807 (not c!642505)) b!3716813))

(assert (= (and b!3716810 (not res!1510920)) b!3716812))

(assert (= (and b!3716813 res!1510922) b!3716811))

(assert (= (or b!3716812 b!3716813) bm!269557))

(assert (= (or b!3716810 b!3716811) bm!269558))

(declare-fun m!4222399 () Bool)

(assert (=> bm!269557 m!4222399))

(declare-fun m!4222401 () Bool)

(assert (=> bm!269558 m!4222401))

(assert (=> d!1087769 d!1088303))

(assert (=> b!3715562 d!1088279))

(assert (=> b!3715562 d!1088211))

(assert (=> d!1087869 d!1088149))

(assert (=> d!1087869 d!1087817))

(declare-fun b!3716814 () Bool)

(declare-fun e!2301345 () Bool)

(assert (=> b!3716814 (= e!2301345 (= (head!8021 Nil!39612) (c!641993 (derivative!369 lt!1297295 (_1!22744 lt!1297291)))))))

(declare-fun b!3716815 () Bool)

(declare-fun res!1510929 () Bool)

(declare-fun e!2301348 () Bool)

(assert (=> b!3716815 (=> res!1510929 e!2301348)))

(assert (=> b!3716815 (= res!1510929 (not ((_ is ElementMatch!10855) (derivative!369 lt!1297295 (_1!22744 lt!1297291)))))))

(declare-fun e!2301344 () Bool)

(assert (=> b!3716815 (= e!2301344 e!2301348)))

(declare-fun d!1088305 () Bool)

(declare-fun e!2301347 () Bool)

(assert (=> d!1088305 e!2301347))

(declare-fun c!642507 () Bool)

(assert (=> d!1088305 (= c!642507 ((_ is EmptyExpr!10855) (derivative!369 lt!1297295 (_1!22744 lt!1297291))))))

(declare-fun lt!1297483 () Bool)

(declare-fun e!2301343 () Bool)

(assert (=> d!1088305 (= lt!1297483 e!2301343)))

(declare-fun c!642506 () Bool)

(assert (=> d!1088305 (= c!642506 (isEmpty!23507 Nil!39612))))

(assert (=> d!1088305 (validRegex!4962 (derivative!369 lt!1297295 (_1!22744 lt!1297291)))))

(assert (=> d!1088305 (= (matchR!5300 (derivative!369 lt!1297295 (_1!22744 lt!1297291)) Nil!39612) lt!1297483)))

(declare-fun b!3716816 () Bool)

(declare-fun e!2301346 () Bool)

(declare-fun e!2301342 () Bool)

(assert (=> b!3716816 (= e!2301346 e!2301342)))

(declare-fun res!1510928 () Bool)

(assert (=> b!3716816 (=> res!1510928 e!2301342)))

(declare-fun call!269564 () Bool)

(assert (=> b!3716816 (= res!1510928 call!269564)))

(declare-fun b!3716817 () Bool)

(declare-fun res!1510926 () Bool)

(assert (=> b!3716817 (=> (not res!1510926) (not e!2301345))))

(assert (=> b!3716817 (= res!1510926 (not call!269564))))

(declare-fun bm!269559 () Bool)

(assert (=> bm!269559 (= call!269564 (isEmpty!23507 Nil!39612))))

(declare-fun b!3716818 () Bool)

(assert (=> b!3716818 (= e!2301343 (nullable!3778 (derivative!369 lt!1297295 (_1!22744 lt!1297291))))))

(declare-fun b!3716819 () Bool)

(declare-fun res!1510931 () Bool)

(assert (=> b!3716819 (=> (not res!1510931) (not e!2301345))))

(assert (=> b!3716819 (= res!1510931 (isEmpty!23507 (tail!5748 Nil!39612)))))

(declare-fun b!3716820 () Bool)

(assert (=> b!3716820 (= e!2301347 (= lt!1297483 call!269564))))

(declare-fun b!3716821 () Bool)

(assert (=> b!3716821 (= e!2301343 (matchR!5300 (derivativeStep!3320 (derivative!369 lt!1297295 (_1!22744 lt!1297291)) (head!8021 Nil!39612)) (tail!5748 Nil!39612)))))

(declare-fun b!3716822 () Bool)

(assert (=> b!3716822 (= e!2301342 (not (= (head!8021 Nil!39612) (c!641993 (derivative!369 lt!1297295 (_1!22744 lt!1297291))))))))

(declare-fun b!3716823 () Bool)

(assert (=> b!3716823 (= e!2301344 (not lt!1297483))))

(declare-fun b!3716824 () Bool)

(assert (=> b!3716824 (= e!2301348 e!2301346)))

(declare-fun res!1510932 () Bool)

(assert (=> b!3716824 (=> (not res!1510932) (not e!2301346))))

(assert (=> b!3716824 (= res!1510932 (not lt!1297483))))

(declare-fun b!3716825 () Bool)

(assert (=> b!3716825 (= e!2301347 e!2301344)))

(declare-fun c!642508 () Bool)

(assert (=> b!3716825 (= c!642508 ((_ is EmptyLang!10855) (derivative!369 lt!1297295 (_1!22744 lt!1297291))))))

(declare-fun b!3716826 () Bool)

(declare-fun res!1510925 () Bool)

(assert (=> b!3716826 (=> res!1510925 e!2301348)))

(assert (=> b!3716826 (= res!1510925 e!2301345)))

(declare-fun res!1510927 () Bool)

(assert (=> b!3716826 (=> (not res!1510927) (not e!2301345))))

(assert (=> b!3716826 (= res!1510927 lt!1297483)))

(declare-fun b!3716827 () Bool)

(declare-fun res!1510930 () Bool)

(assert (=> b!3716827 (=> res!1510930 e!2301342)))

(assert (=> b!3716827 (= res!1510930 (not (isEmpty!23507 (tail!5748 Nil!39612))))))

(assert (= (and d!1088305 c!642506) b!3716818))

(assert (= (and d!1088305 (not c!642506)) b!3716821))

(assert (= (and d!1088305 c!642507) b!3716820))

(assert (= (and d!1088305 (not c!642507)) b!3716825))

(assert (= (and b!3716825 c!642508) b!3716823))

(assert (= (and b!3716825 (not c!642508)) b!3716815))

(assert (= (and b!3716815 (not res!1510929)) b!3716826))

(assert (= (and b!3716826 res!1510927) b!3716817))

(assert (= (and b!3716817 res!1510926) b!3716819))

(assert (= (and b!3716819 res!1510931) b!3716814))

(assert (= (and b!3716826 (not res!1510925)) b!3716824))

(assert (= (and b!3716824 res!1510932) b!3716816))

(assert (= (and b!3716816 (not res!1510928)) b!3716827))

(assert (= (and b!3716827 (not res!1510930)) b!3716822))

(assert (= (or b!3716820 b!3716816 b!3716817) bm!269559))

(assert (=> b!3716818 m!4220887))

(declare-fun m!4222403 () Bool)

(assert (=> b!3716818 m!4222403))

(assert (=> d!1088305 m!4221129))

(assert (=> d!1088305 m!4220887))

(declare-fun m!4222405 () Bool)

(assert (=> d!1088305 m!4222405))

(assert (=> bm!269559 m!4221129))

(assert (=> b!3716821 m!4221133))

(assert (=> b!3716821 m!4220887))

(assert (=> b!3716821 m!4221133))

(declare-fun m!4222407 () Bool)

(assert (=> b!3716821 m!4222407))

(assert (=> b!3716821 m!4221137))

(assert (=> b!3716821 m!4222407))

(assert (=> b!3716821 m!4221137))

(declare-fun m!4222409 () Bool)

(assert (=> b!3716821 m!4222409))

(assert (=> b!3716814 m!4221133))

(assert (=> b!3716827 m!4221137))

(assert (=> b!3716827 m!4221137))

(assert (=> b!3716827 m!4221141))

(assert (=> b!3716819 m!4221137))

(assert (=> b!3716819 m!4221137))

(assert (=> b!3716819 m!4221141))

(assert (=> b!3716822 m!4221133))

(assert (=> d!1087869 d!1088305))

(declare-fun d!1088307 () Bool)

(assert (=> d!1088307 (= (matchR!5300 lt!1297295 (_1!22744 lt!1297291)) (matchR!5300 (derivative!369 lt!1297295 (_1!22744 lt!1297291)) Nil!39612))))

(assert (=> d!1088307 true))

(declare-fun _$108!429 () Unit!57508)

(assert (=> d!1088307 (= (choose!22190 lt!1297295 (_1!22744 lt!1297291)) _$108!429)))

(declare-fun bs!574858 () Bool)

(assert (= bs!574858 d!1088307))

(assert (=> bs!574858 m!4220917))

(assert (=> bs!574858 m!4220887))

(assert (=> bs!574858 m!4220887))

(assert (=> bs!574858 m!4221347))

(assert (=> d!1087869 d!1088307))

(assert (=> d!1087869 d!1087867))

(assert (=> b!3715058 d!1088283))

(assert (=> b!3715058 d!1088205))

(assert (=> bm!269228 d!1088181))

(declare-fun b!3716828 () Bool)

(declare-fun e!2301352 () Bool)

(assert (=> b!3716828 (= e!2301352 (= (head!8021 (_2!22744 (get!13200 lt!1297382))) (c!641993 (regTwo!22222 r!26326))))))

(declare-fun b!3716829 () Bool)

(declare-fun res!1510937 () Bool)

(declare-fun e!2301355 () Bool)

(assert (=> b!3716829 (=> res!1510937 e!2301355)))

(assert (=> b!3716829 (= res!1510937 (not ((_ is ElementMatch!10855) (regTwo!22222 r!26326))))))

(declare-fun e!2301351 () Bool)

(assert (=> b!3716829 (= e!2301351 e!2301355)))

(declare-fun d!1088309 () Bool)

(declare-fun e!2301354 () Bool)

(assert (=> d!1088309 e!2301354))

(declare-fun c!642510 () Bool)

(assert (=> d!1088309 (= c!642510 ((_ is EmptyExpr!10855) (regTwo!22222 r!26326)))))

(declare-fun lt!1297484 () Bool)

(declare-fun e!2301350 () Bool)

(assert (=> d!1088309 (= lt!1297484 e!2301350)))

(declare-fun c!642509 () Bool)

(assert (=> d!1088309 (= c!642509 (isEmpty!23507 (_2!22744 (get!13200 lt!1297382))))))

(assert (=> d!1088309 (validRegex!4962 (regTwo!22222 r!26326))))

(assert (=> d!1088309 (= (matchR!5300 (regTwo!22222 r!26326) (_2!22744 (get!13200 lt!1297382))) lt!1297484)))

(declare-fun b!3716830 () Bool)

(declare-fun e!2301353 () Bool)

(declare-fun e!2301349 () Bool)

(assert (=> b!3716830 (= e!2301353 e!2301349)))

(declare-fun res!1510936 () Bool)

(assert (=> b!3716830 (=> res!1510936 e!2301349)))

(declare-fun call!269565 () Bool)

(assert (=> b!3716830 (= res!1510936 call!269565)))

(declare-fun b!3716831 () Bool)

(declare-fun res!1510934 () Bool)

(assert (=> b!3716831 (=> (not res!1510934) (not e!2301352))))

(assert (=> b!3716831 (= res!1510934 (not call!269565))))

(declare-fun bm!269560 () Bool)

(assert (=> bm!269560 (= call!269565 (isEmpty!23507 (_2!22744 (get!13200 lt!1297382))))))

(declare-fun b!3716832 () Bool)

(assert (=> b!3716832 (= e!2301350 (nullable!3778 (regTwo!22222 r!26326)))))

(declare-fun b!3716833 () Bool)

(declare-fun res!1510939 () Bool)

(assert (=> b!3716833 (=> (not res!1510939) (not e!2301352))))

(assert (=> b!3716833 (= res!1510939 (isEmpty!23507 (tail!5748 (_2!22744 (get!13200 lt!1297382)))))))

(declare-fun b!3716834 () Bool)

(assert (=> b!3716834 (= e!2301354 (= lt!1297484 call!269565))))

(declare-fun b!3716835 () Bool)

(assert (=> b!3716835 (= e!2301350 (matchR!5300 (derivativeStep!3320 (regTwo!22222 r!26326) (head!8021 (_2!22744 (get!13200 lt!1297382)))) (tail!5748 (_2!22744 (get!13200 lt!1297382)))))))

(declare-fun b!3716836 () Bool)

(assert (=> b!3716836 (= e!2301349 (not (= (head!8021 (_2!22744 (get!13200 lt!1297382))) (c!641993 (regTwo!22222 r!26326)))))))

(declare-fun b!3716837 () Bool)

(assert (=> b!3716837 (= e!2301351 (not lt!1297484))))

(declare-fun b!3716838 () Bool)

(assert (=> b!3716838 (= e!2301355 e!2301353)))

(declare-fun res!1510940 () Bool)

(assert (=> b!3716838 (=> (not res!1510940) (not e!2301353))))

(assert (=> b!3716838 (= res!1510940 (not lt!1297484))))

(declare-fun b!3716839 () Bool)

(assert (=> b!3716839 (= e!2301354 e!2301351)))

(declare-fun c!642511 () Bool)

(assert (=> b!3716839 (= c!642511 ((_ is EmptyLang!10855) (regTwo!22222 r!26326)))))

(declare-fun b!3716840 () Bool)

(declare-fun res!1510933 () Bool)

(assert (=> b!3716840 (=> res!1510933 e!2301355)))

(assert (=> b!3716840 (= res!1510933 e!2301352)))

(declare-fun res!1510935 () Bool)

(assert (=> b!3716840 (=> (not res!1510935) (not e!2301352))))

(assert (=> b!3716840 (= res!1510935 lt!1297484)))

(declare-fun b!3716841 () Bool)

(declare-fun res!1510938 () Bool)

(assert (=> b!3716841 (=> res!1510938 e!2301349)))

(assert (=> b!3716841 (= res!1510938 (not (isEmpty!23507 (tail!5748 (_2!22744 (get!13200 lt!1297382))))))))

(assert (= (and d!1088309 c!642509) b!3716832))

(assert (= (and d!1088309 (not c!642509)) b!3716835))

(assert (= (and d!1088309 c!642510) b!3716834))

(assert (= (and d!1088309 (not c!642510)) b!3716839))

(assert (= (and b!3716839 c!642511) b!3716837))

(assert (= (and b!3716839 (not c!642511)) b!3716829))

(assert (= (and b!3716829 (not res!1510937)) b!3716840))

(assert (= (and b!3716840 res!1510935) b!3716831))

(assert (= (and b!3716831 res!1510934) b!3716833))

(assert (= (and b!3716833 res!1510939) b!3716828))

(assert (= (and b!3716840 (not res!1510933)) b!3716838))

(assert (= (and b!3716838 res!1510940) b!3716830))

(assert (= (and b!3716830 (not res!1510936)) b!3716841))

(assert (= (and b!3716841 (not res!1510938)) b!3716836))

(assert (= (or b!3716834 b!3716830 b!3716831) bm!269560))

(assert (=> b!3716832 m!4220979))

(declare-fun m!4222411 () Bool)

(assert (=> d!1088309 m!4222411))

(assert (=> d!1088309 m!4220983))

(assert (=> bm!269560 m!4222411))

(declare-fun m!4222413 () Bool)

(assert (=> b!3716835 m!4222413))

(assert (=> b!3716835 m!4222413))

(declare-fun m!4222415 () Bool)

(assert (=> b!3716835 m!4222415))

(declare-fun m!4222417 () Bool)

(assert (=> b!3716835 m!4222417))

(assert (=> b!3716835 m!4222415))

(assert (=> b!3716835 m!4222417))

(declare-fun m!4222419 () Bool)

(assert (=> b!3716835 m!4222419))

(assert (=> b!3716828 m!4222413))

(assert (=> b!3716841 m!4222417))

(assert (=> b!3716841 m!4222417))

(declare-fun m!4222421 () Bool)

(assert (=> b!3716841 m!4222421))

(assert (=> b!3716833 m!4222417))

(assert (=> b!3716833 m!4222417))

(assert (=> b!3716833 m!4222421))

(assert (=> b!3716836 m!4222413))

(assert (=> b!3715513 d!1088309))

(assert (=> b!3715513 d!1088157))

(declare-fun d!1088311 () Bool)

(assert (=> d!1088311 (= (nullable!3778 (reg!11184 r!26326)) (nullableFct!1067 (reg!11184 r!26326)))))

(declare-fun bs!574859 () Bool)

(assert (= bs!574859 d!1088311))

(declare-fun m!4222423 () Bool)

(assert (=> bs!574859 m!4222423))

(assert (=> b!3715580 d!1088311))

(assert (=> b!3715272 d!1088279))

(assert (=> b!3715272 d!1088211))

(assert (=> b!3715590 d!1087881))

(declare-fun b!3716842 () Bool)

(declare-fun e!2301356 () Regex!10855)

(declare-fun e!2301359 () Regex!10855)

(assert (=> b!3716842 (= e!2301356 e!2301359)))

(declare-fun c!642515 () Bool)

(assert (=> b!3716842 (= c!642515 ((_ is ElementMatch!10855) (ite c!642058 (regTwo!22223 (regTwo!22222 r!26326)) (ite c!642062 (reg!11184 (regTwo!22222 r!26326)) (regTwo!22222 (regTwo!22222 r!26326))))))))

(declare-fun c!642514 () Bool)

(declare-fun b!3716843 () Bool)

(assert (=> b!3716843 (= c!642514 (nullable!3778 (regOne!22222 (ite c!642058 (regTwo!22223 (regTwo!22222 r!26326)) (ite c!642062 (reg!11184 (regTwo!22222 r!26326)) (regTwo!22222 (regTwo!22222 r!26326)))))))))

(declare-fun e!2301357 () Regex!10855)

(declare-fun e!2301360 () Regex!10855)

(assert (=> b!3716843 (= e!2301357 e!2301360)))

(declare-fun bm!269561 () Bool)

(declare-fun call!269567 () Regex!10855)

(declare-fun call!269569 () Regex!10855)

(assert (=> bm!269561 (= call!269567 call!269569)))

(declare-fun c!642512 () Bool)

(declare-fun b!3716844 () Bool)

(assert (=> b!3716844 (= c!642512 ((_ is Union!10855) (ite c!642058 (regTwo!22223 (regTwo!22222 r!26326)) (ite c!642062 (reg!11184 (regTwo!22222 r!26326)) (regTwo!22222 (regTwo!22222 r!26326))))))))

(declare-fun e!2301358 () Regex!10855)

(assert (=> b!3716844 (= e!2301359 e!2301358)))

(declare-fun b!3716845 () Bool)

(declare-fun call!269566 () Regex!10855)

(assert (=> b!3716845 (= e!2301358 (Union!10855 call!269569 call!269566))))

(declare-fun b!3716846 () Bool)

(assert (=> b!3716846 (= e!2301356 EmptyLang!10855)))

(declare-fun b!3716847 () Bool)

(assert (=> b!3716847 (= e!2301359 (ite (= c!13576 (c!641993 (ite c!642058 (regTwo!22223 (regTwo!22222 r!26326)) (ite c!642062 (reg!11184 (regTwo!22222 r!26326)) (regTwo!22222 (regTwo!22222 r!26326)))))) EmptyExpr!10855 EmptyLang!10855))))

(declare-fun bm!269562 () Bool)

(declare-fun call!269568 () Regex!10855)

(assert (=> bm!269562 (= call!269568 call!269566)))

(declare-fun b!3716848 () Bool)

(assert (=> b!3716848 (= e!2301358 e!2301357)))

(declare-fun c!642516 () Bool)

(assert (=> b!3716848 (= c!642516 ((_ is Star!10855) (ite c!642058 (regTwo!22223 (regTwo!22222 r!26326)) (ite c!642062 (reg!11184 (regTwo!22222 r!26326)) (regTwo!22222 (regTwo!22222 r!26326))))))))

(declare-fun bm!269563 () Bool)

(assert (=> bm!269563 (= call!269566 (derivativeStep!3320 (ite c!642512 (regTwo!22223 (ite c!642058 (regTwo!22223 (regTwo!22222 r!26326)) (ite c!642062 (reg!11184 (regTwo!22222 r!26326)) (regTwo!22222 (regTwo!22222 r!26326))))) (ite c!642516 (reg!11184 (ite c!642058 (regTwo!22223 (regTwo!22222 r!26326)) (ite c!642062 (reg!11184 (regTwo!22222 r!26326)) (regTwo!22222 (regTwo!22222 r!26326))))) (regTwo!22222 (ite c!642058 (regTwo!22223 (regTwo!22222 r!26326)) (ite c!642062 (reg!11184 (regTwo!22222 r!26326)) (regTwo!22222 (regTwo!22222 r!26326))))))) c!13576))))

(declare-fun bm!269564 () Bool)

(assert (=> bm!269564 (= call!269569 (derivativeStep!3320 (ite c!642512 (regOne!22223 (ite c!642058 (regTwo!22223 (regTwo!22222 r!26326)) (ite c!642062 (reg!11184 (regTwo!22222 r!26326)) (regTwo!22222 (regTwo!22222 r!26326))))) (regOne!22222 (ite c!642058 (regTwo!22223 (regTwo!22222 r!26326)) (ite c!642062 (reg!11184 (regTwo!22222 r!26326)) (regTwo!22222 (regTwo!22222 r!26326)))))) c!13576))))

(declare-fun b!3716850 () Bool)

(assert (=> b!3716850 (= e!2301357 (Concat!17126 call!269568 (ite c!642058 (regTwo!22223 (regTwo!22222 r!26326)) (ite c!642062 (reg!11184 (regTwo!22222 r!26326)) (regTwo!22222 (regTwo!22222 r!26326))))))))

(declare-fun b!3716851 () Bool)

(assert (=> b!3716851 (= e!2301360 (Union!10855 (Concat!17126 call!269567 (regTwo!22222 (ite c!642058 (regTwo!22223 (regTwo!22222 r!26326)) (ite c!642062 (reg!11184 (regTwo!22222 r!26326)) (regTwo!22222 (regTwo!22222 r!26326)))))) EmptyLang!10855))))

(declare-fun b!3716849 () Bool)

(assert (=> b!3716849 (= e!2301360 (Union!10855 (Concat!17126 call!269567 (regTwo!22222 (ite c!642058 (regTwo!22223 (regTwo!22222 r!26326)) (ite c!642062 (reg!11184 (regTwo!22222 r!26326)) (regTwo!22222 (regTwo!22222 r!26326)))))) call!269568))))

(declare-fun d!1088313 () Bool)

(declare-fun lt!1297485 () Regex!10855)

(assert (=> d!1088313 (validRegex!4962 lt!1297485)))

(assert (=> d!1088313 (= lt!1297485 e!2301356)))

(declare-fun c!642513 () Bool)

(assert (=> d!1088313 (= c!642513 (or ((_ is EmptyExpr!10855) (ite c!642058 (regTwo!22223 (regTwo!22222 r!26326)) (ite c!642062 (reg!11184 (regTwo!22222 r!26326)) (regTwo!22222 (regTwo!22222 r!26326))))) ((_ is EmptyLang!10855) (ite c!642058 (regTwo!22223 (regTwo!22222 r!26326)) (ite c!642062 (reg!11184 (regTwo!22222 r!26326)) (regTwo!22222 (regTwo!22222 r!26326)))))))))

(assert (=> d!1088313 (validRegex!4962 (ite c!642058 (regTwo!22223 (regTwo!22222 r!26326)) (ite c!642062 (reg!11184 (regTwo!22222 r!26326)) (regTwo!22222 (regTwo!22222 r!26326)))))))

(assert (=> d!1088313 (= (derivativeStep!3320 (ite c!642058 (regTwo!22223 (regTwo!22222 r!26326)) (ite c!642062 (reg!11184 (regTwo!22222 r!26326)) (regTwo!22222 (regTwo!22222 r!26326)))) c!13576) lt!1297485)))

(assert (= (and d!1088313 c!642513) b!3716846))

(assert (= (and d!1088313 (not c!642513)) b!3716842))

(assert (= (and b!3716842 c!642515) b!3716847))

(assert (= (and b!3716842 (not c!642515)) b!3716844))

(assert (= (and b!3716844 c!642512) b!3716845))

(assert (= (and b!3716844 (not c!642512)) b!3716848))

(assert (= (and b!3716848 c!642516) b!3716850))

(assert (= (and b!3716848 (not c!642516)) b!3716843))

(assert (= (and b!3716843 c!642514) b!3716849))

(assert (= (and b!3716843 (not c!642514)) b!3716851))

(assert (= (or b!3716849 b!3716851) bm!269561))

(assert (= (or b!3716850 b!3716849) bm!269562))

(assert (= (or b!3716845 bm!269562) bm!269563))

(assert (= (or b!3716845 bm!269561) bm!269564))

(declare-fun m!4222425 () Bool)

(assert (=> b!3716843 m!4222425))

(declare-fun m!4222427 () Bool)

(assert (=> bm!269563 m!4222427))

(declare-fun m!4222429 () Bool)

(assert (=> bm!269564 m!4222429))

(declare-fun m!4222431 () Bool)

(assert (=> d!1088313 m!4222431))

(declare-fun m!4222433 () Bool)

(assert (=> d!1088313 m!4222433))

(assert (=> bm!269216 d!1088313))

(declare-fun b!3716852 () Bool)

(declare-fun e!2301361 () Regex!10855)

(declare-fun e!2301364 () Regex!10855)

(assert (=> b!3716852 (= e!2301361 e!2301364)))

(declare-fun c!642520 () Bool)

(assert (=> b!3716852 (= c!642520 ((_ is ElementMatch!10855) (ite c!642065 (regOne!22223 (regOne!22222 r!26326)) (regOne!22222 (regOne!22222 r!26326)))))))

(declare-fun b!3716853 () Bool)

(declare-fun c!642519 () Bool)

(assert (=> b!3716853 (= c!642519 (nullable!3778 (regOne!22222 (ite c!642065 (regOne!22223 (regOne!22222 r!26326)) (regOne!22222 (regOne!22222 r!26326))))))))

(declare-fun e!2301362 () Regex!10855)

(declare-fun e!2301365 () Regex!10855)

(assert (=> b!3716853 (= e!2301362 e!2301365)))

(declare-fun bm!269565 () Bool)

(declare-fun call!269571 () Regex!10855)

(declare-fun call!269573 () Regex!10855)

(assert (=> bm!269565 (= call!269571 call!269573)))

(declare-fun b!3716854 () Bool)

(declare-fun c!642517 () Bool)

(assert (=> b!3716854 (= c!642517 ((_ is Union!10855) (ite c!642065 (regOne!22223 (regOne!22222 r!26326)) (regOne!22222 (regOne!22222 r!26326)))))))

(declare-fun e!2301363 () Regex!10855)

(assert (=> b!3716854 (= e!2301364 e!2301363)))

(declare-fun b!3716855 () Bool)

(declare-fun call!269570 () Regex!10855)

(assert (=> b!3716855 (= e!2301363 (Union!10855 call!269573 call!269570))))

(declare-fun b!3716856 () Bool)

(assert (=> b!3716856 (= e!2301361 EmptyLang!10855)))

(declare-fun b!3716857 () Bool)

(assert (=> b!3716857 (= e!2301364 (ite (= c!13576 (c!641993 (ite c!642065 (regOne!22223 (regOne!22222 r!26326)) (regOne!22222 (regOne!22222 r!26326))))) EmptyExpr!10855 EmptyLang!10855))))

(declare-fun bm!269566 () Bool)

(declare-fun call!269572 () Regex!10855)

(assert (=> bm!269566 (= call!269572 call!269570)))

(declare-fun b!3716858 () Bool)

(assert (=> b!3716858 (= e!2301363 e!2301362)))

(declare-fun c!642521 () Bool)

(assert (=> b!3716858 (= c!642521 ((_ is Star!10855) (ite c!642065 (regOne!22223 (regOne!22222 r!26326)) (regOne!22222 (regOne!22222 r!26326)))))))

(declare-fun bm!269567 () Bool)

(assert (=> bm!269567 (= call!269570 (derivativeStep!3320 (ite c!642517 (regTwo!22223 (ite c!642065 (regOne!22223 (regOne!22222 r!26326)) (regOne!22222 (regOne!22222 r!26326)))) (ite c!642521 (reg!11184 (ite c!642065 (regOne!22223 (regOne!22222 r!26326)) (regOne!22222 (regOne!22222 r!26326)))) (regTwo!22222 (ite c!642065 (regOne!22223 (regOne!22222 r!26326)) (regOne!22222 (regOne!22222 r!26326)))))) c!13576))))

(declare-fun bm!269568 () Bool)

(assert (=> bm!269568 (= call!269573 (derivativeStep!3320 (ite c!642517 (regOne!22223 (ite c!642065 (regOne!22223 (regOne!22222 r!26326)) (regOne!22222 (regOne!22222 r!26326)))) (regOne!22222 (ite c!642065 (regOne!22223 (regOne!22222 r!26326)) (regOne!22222 (regOne!22222 r!26326))))) c!13576))))

(declare-fun b!3716860 () Bool)

(assert (=> b!3716860 (= e!2301362 (Concat!17126 call!269572 (ite c!642065 (regOne!22223 (regOne!22222 r!26326)) (regOne!22222 (regOne!22222 r!26326)))))))

(declare-fun b!3716861 () Bool)

(assert (=> b!3716861 (= e!2301365 (Union!10855 (Concat!17126 call!269571 (regTwo!22222 (ite c!642065 (regOne!22223 (regOne!22222 r!26326)) (regOne!22222 (regOne!22222 r!26326))))) EmptyLang!10855))))

(declare-fun b!3716859 () Bool)

(assert (=> b!3716859 (= e!2301365 (Union!10855 (Concat!17126 call!269571 (regTwo!22222 (ite c!642065 (regOne!22223 (regOne!22222 r!26326)) (regOne!22222 (regOne!22222 r!26326))))) call!269572))))

(declare-fun d!1088315 () Bool)

(declare-fun lt!1297486 () Regex!10855)

(assert (=> d!1088315 (validRegex!4962 lt!1297486)))

(assert (=> d!1088315 (= lt!1297486 e!2301361)))

(declare-fun c!642518 () Bool)

(assert (=> d!1088315 (= c!642518 (or ((_ is EmptyExpr!10855) (ite c!642065 (regOne!22223 (regOne!22222 r!26326)) (regOne!22222 (regOne!22222 r!26326)))) ((_ is EmptyLang!10855) (ite c!642065 (regOne!22223 (regOne!22222 r!26326)) (regOne!22222 (regOne!22222 r!26326))))))))

(assert (=> d!1088315 (validRegex!4962 (ite c!642065 (regOne!22223 (regOne!22222 r!26326)) (regOne!22222 (regOne!22222 r!26326))))))

(assert (=> d!1088315 (= (derivativeStep!3320 (ite c!642065 (regOne!22223 (regOne!22222 r!26326)) (regOne!22222 (regOne!22222 r!26326))) c!13576) lt!1297486)))

(assert (= (and d!1088315 c!642518) b!3716856))

(assert (= (and d!1088315 (not c!642518)) b!3716852))

(assert (= (and b!3716852 c!642520) b!3716857))

(assert (= (and b!3716852 (not c!642520)) b!3716854))

(assert (= (and b!3716854 c!642517) b!3716855))

(assert (= (and b!3716854 (not c!642517)) b!3716858))

(assert (= (and b!3716858 c!642521) b!3716860))

(assert (= (and b!3716858 (not c!642521)) b!3716853))

(assert (= (and b!3716853 c!642519) b!3716859))

(assert (= (and b!3716853 (not c!642519)) b!3716861))

(assert (= (or b!3716859 b!3716861) bm!269565))

(assert (= (or b!3716860 b!3716859) bm!269566))

(assert (= (or b!3716855 bm!269566) bm!269567))

(assert (= (or b!3716855 bm!269565) bm!269568))

(declare-fun m!4222435 () Bool)

(assert (=> b!3716853 m!4222435))

(declare-fun m!4222437 () Bool)

(assert (=> bm!269567 m!4222437))

(declare-fun m!4222439 () Bool)

(assert (=> bm!269568 m!4222439))

(declare-fun m!4222441 () Bool)

(assert (=> d!1088315 m!4222441))

(declare-fun m!4222443 () Bool)

(assert (=> d!1088315 m!4222443))

(assert (=> bm!269221 d!1088315))

(assert (=> b!3715264 d!1088279))

(assert (=> b!3715264 d!1088211))

(assert (=> b!3715220 d!1088073))

(declare-fun b!3716862 () Bool)

(declare-fun e!2301366 () List!39736)

(assert (=> b!3716862 (= e!2301366 Nil!39612)))

(declare-fun c!642522 () Bool)

(declare-fun call!269575 () List!39736)

(declare-fun bm!269569 () Bool)

(declare-fun c!642524 () Bool)

(assert (=> bm!269569 (= call!269575 (usedCharacters!1118 (ite c!642524 (reg!11184 (ite c!642173 (regTwo!22223 r!26326) (regTwo!22222 r!26326))) (ite c!642522 (regOne!22223 (ite c!642173 (regTwo!22223 r!26326) (regTwo!22222 r!26326))) (regOne!22222 (ite c!642173 (regTwo!22223 r!26326) (regTwo!22222 r!26326)))))))))

(declare-fun d!1088317 () Bool)

(declare-fun c!642523 () Bool)

(assert (=> d!1088317 (= c!642523 (or ((_ is EmptyExpr!10855) (ite c!642173 (regTwo!22223 r!26326) (regTwo!22222 r!26326))) ((_ is EmptyLang!10855) (ite c!642173 (regTwo!22223 r!26326) (regTwo!22222 r!26326)))))))

(assert (=> d!1088317 (= (usedCharacters!1118 (ite c!642173 (regTwo!22223 r!26326) (regTwo!22222 r!26326))) e!2301366)))

(declare-fun b!3716863 () Bool)

(declare-fun e!2301369 () List!39736)

(declare-fun e!2301368 () List!39736)

(assert (=> b!3716863 (= e!2301369 e!2301368)))

(assert (=> b!3716863 (= c!642522 ((_ is Union!10855) (ite c!642173 (regTwo!22223 r!26326) (regTwo!22222 r!26326))))))

(declare-fun b!3716864 () Bool)

(declare-fun call!269574 () List!39736)

(assert (=> b!3716864 (= e!2301368 call!269574)))

(declare-fun b!3716865 () Bool)

(declare-fun e!2301367 () List!39736)

(assert (=> b!3716865 (= e!2301367 (Cons!39612 (c!641993 (ite c!642173 (regTwo!22223 r!26326) (regTwo!22222 r!26326))) Nil!39612))))

(declare-fun bm!269570 () Bool)

(declare-fun call!269577 () List!39736)

(declare-fun call!269576 () List!39736)

(assert (=> bm!269570 (= call!269574 (++!9801 call!269577 call!269576))))

(declare-fun b!3716866 () Bool)

(assert (=> b!3716866 (= e!2301366 e!2301367)))

(declare-fun c!642525 () Bool)

(assert (=> b!3716866 (= c!642525 ((_ is ElementMatch!10855) (ite c!642173 (regTwo!22223 r!26326) (regTwo!22222 r!26326))))))

(declare-fun b!3716867 () Bool)

(assert (=> b!3716867 (= e!2301368 call!269574)))

(declare-fun b!3716868 () Bool)

(assert (=> b!3716868 (= e!2301369 call!269575)))

(declare-fun bm!269571 () Bool)

(assert (=> bm!269571 (= call!269576 (usedCharacters!1118 (ite c!642522 (regTwo!22223 (ite c!642173 (regTwo!22223 r!26326) (regTwo!22222 r!26326))) (regTwo!22222 (ite c!642173 (regTwo!22223 r!26326) (regTwo!22222 r!26326))))))))

(declare-fun b!3716869 () Bool)

(assert (=> b!3716869 (= c!642524 ((_ is Star!10855) (ite c!642173 (regTwo!22223 r!26326) (regTwo!22222 r!26326))))))

(assert (=> b!3716869 (= e!2301367 e!2301369)))

(declare-fun bm!269572 () Bool)

(assert (=> bm!269572 (= call!269577 call!269575)))

(assert (= (and d!1088317 c!642523) b!3716862))

(assert (= (and d!1088317 (not c!642523)) b!3716866))

(assert (= (and b!3716866 c!642525) b!3716865))

(assert (= (and b!3716866 (not c!642525)) b!3716869))

(assert (= (and b!3716869 c!642524) b!3716868))

(assert (= (and b!3716869 (not c!642524)) b!3716863))

(assert (= (and b!3716863 c!642522) b!3716864))

(assert (= (and b!3716863 (not c!642522)) b!3716867))

(assert (= (or b!3716864 b!3716867) bm!269572))

(assert (= (or b!3716864 b!3716867) bm!269571))

(assert (= (or b!3716864 b!3716867) bm!269570))

(assert (= (or b!3716868 bm!269572) bm!269569))

(declare-fun m!4222445 () Bool)

(assert (=> bm!269569 m!4222445))

(declare-fun m!4222447 () Bool)

(assert (=> bm!269570 m!4222447))

(declare-fun m!4222449 () Bool)

(assert (=> bm!269571 m!4222449))

(assert (=> bm!269296 d!1088317))

(assert (=> d!1087801 d!1088181))

(assert (=> d!1087801 d!1088095))

(assert (=> b!3715040 d!1088189))

(assert (=> b!3715040 d!1088079))

(assert (=> b!3715103 d!1088073))

(declare-fun b!3716870 () Bool)

(declare-fun res!1510941 () Bool)

(declare-fun e!2301374 () Bool)

(assert (=> b!3716870 (=> (not res!1510941) (not e!2301374))))

(declare-fun call!269580 () Bool)

(assert (=> b!3716870 (= res!1510941 call!269580)))

(declare-fun e!2301370 () Bool)

(assert (=> b!3716870 (= e!2301370 e!2301374)))

(declare-fun b!3716871 () Bool)

(declare-fun call!269579 () Bool)

(assert (=> b!3716871 (= e!2301374 call!269579)))

(declare-fun b!3716872 () Bool)

(declare-fun e!2301372 () Bool)

(declare-fun call!269578 () Bool)

(assert (=> b!3716872 (= e!2301372 call!269578)))

(declare-fun d!1088319 () Bool)

(declare-fun res!1510943 () Bool)

(declare-fun e!2301373 () Bool)

(assert (=> d!1088319 (=> res!1510943 e!2301373)))

(assert (=> d!1088319 (= res!1510943 ((_ is ElementMatch!10855) (ite c!642149 (regOne!22223 (regOne!22222 r!26326)) (regTwo!22222 (regOne!22222 r!26326)))))))

(assert (=> d!1088319 (= (validRegex!4962 (ite c!642149 (regOne!22223 (regOne!22222 r!26326)) (regTwo!22222 (regOne!22222 r!26326)))) e!2301373)))

(declare-fun b!3716873 () Bool)

(declare-fun e!2301375 () Bool)

(assert (=> b!3716873 (= e!2301375 e!2301372)))

(declare-fun res!1510944 () Bool)

(assert (=> b!3716873 (= res!1510944 (not (nullable!3778 (reg!11184 (ite c!642149 (regOne!22223 (regOne!22222 r!26326)) (regTwo!22222 (regOne!22222 r!26326)))))))))

(assert (=> b!3716873 (=> (not res!1510944) (not e!2301372))))

(declare-fun b!3716874 () Bool)

(assert (=> b!3716874 (= e!2301373 e!2301375)))

(declare-fun c!642526 () Bool)

(assert (=> b!3716874 (= c!642526 ((_ is Star!10855) (ite c!642149 (regOne!22223 (regOne!22222 r!26326)) (regTwo!22222 (regOne!22222 r!26326)))))))

(declare-fun b!3716875 () Bool)

(declare-fun e!2301371 () Bool)

(declare-fun e!2301376 () Bool)

(assert (=> b!3716875 (= e!2301371 e!2301376)))

(declare-fun res!1510945 () Bool)

(assert (=> b!3716875 (=> (not res!1510945) (not e!2301376))))

(assert (=> b!3716875 (= res!1510945 call!269579)))

(declare-fun b!3716876 () Bool)

(declare-fun res!1510942 () Bool)

(assert (=> b!3716876 (=> res!1510942 e!2301371)))

(assert (=> b!3716876 (= res!1510942 (not ((_ is Concat!17126) (ite c!642149 (regOne!22223 (regOne!22222 r!26326)) (regTwo!22222 (regOne!22222 r!26326))))))))

(assert (=> b!3716876 (= e!2301370 e!2301371)))

(declare-fun bm!269573 () Bool)

(declare-fun c!642527 () Bool)

(assert (=> bm!269573 (= call!269578 (validRegex!4962 (ite c!642526 (reg!11184 (ite c!642149 (regOne!22223 (regOne!22222 r!26326)) (regTwo!22222 (regOne!22222 r!26326)))) (ite c!642527 (regTwo!22223 (ite c!642149 (regOne!22223 (regOne!22222 r!26326)) (regTwo!22222 (regOne!22222 r!26326)))) (regOne!22222 (ite c!642149 (regOne!22223 (regOne!22222 r!26326)) (regTwo!22222 (regOne!22222 r!26326))))))))))

(declare-fun b!3716877 () Bool)

(assert (=> b!3716877 (= e!2301376 call!269580)))

(declare-fun bm!269574 () Bool)

(assert (=> bm!269574 (= call!269580 (validRegex!4962 (ite c!642527 (regOne!22223 (ite c!642149 (regOne!22223 (regOne!22222 r!26326)) (regTwo!22222 (regOne!22222 r!26326)))) (regTwo!22222 (ite c!642149 (regOne!22223 (regOne!22222 r!26326)) (regTwo!22222 (regOne!22222 r!26326)))))))))

(declare-fun bm!269575 () Bool)

(assert (=> bm!269575 (= call!269579 call!269578)))

(declare-fun b!3716878 () Bool)

(assert (=> b!3716878 (= e!2301375 e!2301370)))

(assert (=> b!3716878 (= c!642527 ((_ is Union!10855) (ite c!642149 (regOne!22223 (regOne!22222 r!26326)) (regTwo!22222 (regOne!22222 r!26326)))))))

(assert (= (and d!1088319 (not res!1510943)) b!3716874))

(assert (= (and b!3716874 c!642526) b!3716873))

(assert (= (and b!3716874 (not c!642526)) b!3716878))

(assert (= (and b!3716873 res!1510944) b!3716872))

(assert (= (and b!3716878 c!642527) b!3716870))

(assert (= (and b!3716878 (not c!642527)) b!3716876))

(assert (= (and b!3716870 res!1510941) b!3716871))

(assert (= (and b!3716876 (not res!1510942)) b!3716875))

(assert (= (and b!3716875 res!1510945) b!3716877))

(assert (= (or b!3716871 b!3716875) bm!269575))

(assert (= (or b!3716870 b!3716877) bm!269574))

(assert (= (or b!3716872 bm!269575) bm!269573))

(declare-fun m!4222451 () Bool)

(assert (=> b!3716873 m!4222451))

(declare-fun m!4222453 () Bool)

(assert (=> bm!269573 m!4222453))

(declare-fun m!4222455 () Bool)

(assert (=> bm!269574 m!4222455))

(assert (=> bm!269275 d!1088319))

(declare-fun d!1088321 () Bool)

(assert (=> d!1088321 (= (isEmpty!23507 (_1!22744 lt!1297291)) ((_ is Nil!39612) (_1!22744 lt!1297291)))))

(assert (=> bm!269242 d!1088321))

(assert (=> b!3715233 d!1088189))

(assert (=> b!3715233 d!1088079))

(declare-fun b!3716879 () Bool)

(declare-fun res!1510946 () Bool)

(declare-fun e!2301381 () Bool)

(assert (=> b!3716879 (=> (not res!1510946) (not e!2301381))))

(declare-fun call!269583 () Bool)

(assert (=> b!3716879 (= res!1510946 call!269583)))

(declare-fun e!2301377 () Bool)

(assert (=> b!3716879 (= e!2301377 e!2301381)))

(declare-fun b!3716880 () Bool)

(declare-fun call!269582 () Bool)

(assert (=> b!3716880 (= e!2301381 call!269582)))

(declare-fun b!3716881 () Bool)

(declare-fun e!2301379 () Bool)

(declare-fun call!269581 () Bool)

(assert (=> b!3716881 (= e!2301379 call!269581)))

(declare-fun d!1088323 () Bool)

(declare-fun res!1510948 () Bool)

(declare-fun e!2301380 () Bool)

(assert (=> d!1088323 (=> res!1510948 e!2301380)))

(assert (=> d!1088323 (= res!1510948 ((_ is ElementMatch!10855) (ite c!642161 (regOne!22223 r!26326) (regTwo!22222 r!26326))))))

(assert (=> d!1088323 (= (validRegex!4962 (ite c!642161 (regOne!22223 r!26326) (regTwo!22222 r!26326))) e!2301380)))

(declare-fun b!3716882 () Bool)

(declare-fun e!2301382 () Bool)

(assert (=> b!3716882 (= e!2301382 e!2301379)))

(declare-fun res!1510949 () Bool)

(assert (=> b!3716882 (= res!1510949 (not (nullable!3778 (reg!11184 (ite c!642161 (regOne!22223 r!26326) (regTwo!22222 r!26326))))))))

(assert (=> b!3716882 (=> (not res!1510949) (not e!2301379))))

(declare-fun b!3716883 () Bool)

(assert (=> b!3716883 (= e!2301380 e!2301382)))

(declare-fun c!642528 () Bool)

(assert (=> b!3716883 (= c!642528 ((_ is Star!10855) (ite c!642161 (regOne!22223 r!26326) (regTwo!22222 r!26326))))))

(declare-fun b!3716884 () Bool)

(declare-fun e!2301378 () Bool)

(declare-fun e!2301383 () Bool)

(assert (=> b!3716884 (= e!2301378 e!2301383)))

(declare-fun res!1510950 () Bool)

(assert (=> b!3716884 (=> (not res!1510950) (not e!2301383))))

(assert (=> b!3716884 (= res!1510950 call!269582)))

(declare-fun b!3716885 () Bool)

(declare-fun res!1510947 () Bool)

(assert (=> b!3716885 (=> res!1510947 e!2301378)))

(assert (=> b!3716885 (= res!1510947 (not ((_ is Concat!17126) (ite c!642161 (regOne!22223 r!26326) (regTwo!22222 r!26326)))))))

(assert (=> b!3716885 (= e!2301377 e!2301378)))

(declare-fun bm!269576 () Bool)

(declare-fun c!642529 () Bool)

(assert (=> bm!269576 (= call!269581 (validRegex!4962 (ite c!642528 (reg!11184 (ite c!642161 (regOne!22223 r!26326) (regTwo!22222 r!26326))) (ite c!642529 (regTwo!22223 (ite c!642161 (regOne!22223 r!26326) (regTwo!22222 r!26326))) (regOne!22222 (ite c!642161 (regOne!22223 r!26326) (regTwo!22222 r!26326)))))))))

(declare-fun b!3716886 () Bool)

(assert (=> b!3716886 (= e!2301383 call!269583)))

(declare-fun bm!269577 () Bool)

(assert (=> bm!269577 (= call!269583 (validRegex!4962 (ite c!642529 (regOne!22223 (ite c!642161 (regOne!22223 r!26326) (regTwo!22222 r!26326))) (regTwo!22222 (ite c!642161 (regOne!22223 r!26326) (regTwo!22222 r!26326))))))))

(declare-fun bm!269578 () Bool)

(assert (=> bm!269578 (= call!269582 call!269581)))

(declare-fun b!3716887 () Bool)

(assert (=> b!3716887 (= e!2301382 e!2301377)))

(assert (=> b!3716887 (= c!642529 ((_ is Union!10855) (ite c!642161 (regOne!22223 r!26326) (regTwo!22222 r!26326))))))

(assert (= (and d!1088323 (not res!1510948)) b!3716883))

(assert (= (and b!3716883 c!642528) b!3716882))

(assert (= (and b!3716883 (not c!642528)) b!3716887))

(assert (= (and b!3716882 res!1510949) b!3716881))

(assert (= (and b!3716887 c!642529) b!3716879))

(assert (= (and b!3716887 (not c!642529)) b!3716885))

(assert (= (and b!3716879 res!1510946) b!3716880))

(assert (= (and b!3716885 (not res!1510947)) b!3716884))

(assert (= (and b!3716884 res!1510950) b!3716886))

(assert (= (or b!3716880 b!3716884) bm!269578))

(assert (= (or b!3716879 b!3716886) bm!269577))

(assert (= (or b!3716881 bm!269578) bm!269576))

(declare-fun m!4222457 () Bool)

(assert (=> b!3716882 m!4222457))

(declare-fun m!4222459 () Bool)

(assert (=> bm!269576 m!4222459))

(declare-fun m!4222461 () Bool)

(assert (=> bm!269577 m!4222461))

(assert (=> bm!269283 d!1088323))

(assert (=> b!3715116 d!1088189))

(assert (=> b!3715116 d!1088079))

(declare-fun b!3716888 () Bool)

(declare-fun res!1510951 () Bool)

(declare-fun e!2301388 () Bool)

(assert (=> b!3716888 (=> (not res!1510951) (not e!2301388))))

(declare-fun call!269586 () Bool)

(assert (=> b!3716888 (= res!1510951 call!269586)))

(declare-fun e!2301384 () Bool)

(assert (=> b!3716888 (= e!2301384 e!2301388)))

(declare-fun b!3716889 () Bool)

(declare-fun call!269585 () Bool)

(assert (=> b!3716889 (= e!2301388 call!269585)))

(declare-fun b!3716890 () Bool)

(declare-fun e!2301386 () Bool)

(declare-fun call!269584 () Bool)

(assert (=> b!3716890 (= e!2301386 call!269584)))

(declare-fun d!1088325 () Bool)

(declare-fun res!1510953 () Bool)

(declare-fun e!2301387 () Bool)

(assert (=> d!1088325 (=> res!1510953 e!2301387)))

(assert (=> d!1088325 (= res!1510953 ((_ is ElementMatch!10855) lt!1297337))))

(assert (=> d!1088325 (= (validRegex!4962 lt!1297337) e!2301387)))

(declare-fun b!3716891 () Bool)

(declare-fun e!2301389 () Bool)

(assert (=> b!3716891 (= e!2301389 e!2301386)))

(declare-fun res!1510954 () Bool)

(assert (=> b!3716891 (= res!1510954 (not (nullable!3778 (reg!11184 lt!1297337))))))

(assert (=> b!3716891 (=> (not res!1510954) (not e!2301386))))

(declare-fun b!3716892 () Bool)

(assert (=> b!3716892 (= e!2301387 e!2301389)))

(declare-fun c!642530 () Bool)

(assert (=> b!3716892 (= c!642530 ((_ is Star!10855) lt!1297337))))

(declare-fun b!3716893 () Bool)

(declare-fun e!2301385 () Bool)

(declare-fun e!2301390 () Bool)

(assert (=> b!3716893 (= e!2301385 e!2301390)))

(declare-fun res!1510955 () Bool)

(assert (=> b!3716893 (=> (not res!1510955) (not e!2301390))))

(assert (=> b!3716893 (= res!1510955 call!269585)))

(declare-fun b!3716894 () Bool)

(declare-fun res!1510952 () Bool)

(assert (=> b!3716894 (=> res!1510952 e!2301385)))

(assert (=> b!3716894 (= res!1510952 (not ((_ is Concat!17126) lt!1297337)))))

(assert (=> b!3716894 (= e!2301384 e!2301385)))

(declare-fun bm!269579 () Bool)

(declare-fun c!642531 () Bool)

(assert (=> bm!269579 (= call!269584 (validRegex!4962 (ite c!642530 (reg!11184 lt!1297337) (ite c!642531 (regTwo!22223 lt!1297337) (regOne!22222 lt!1297337)))))))

(declare-fun b!3716895 () Bool)

(assert (=> b!3716895 (= e!2301390 call!269586)))

(declare-fun bm!269580 () Bool)

(assert (=> bm!269580 (= call!269586 (validRegex!4962 (ite c!642531 (regOne!22223 lt!1297337) (regTwo!22222 lt!1297337))))))

(declare-fun bm!269581 () Bool)

(assert (=> bm!269581 (= call!269585 call!269584)))

(declare-fun b!3716896 () Bool)

(assert (=> b!3716896 (= e!2301389 e!2301384)))

(assert (=> b!3716896 (= c!642531 ((_ is Union!10855) lt!1297337))))

(assert (= (and d!1088325 (not res!1510953)) b!3716892))

(assert (= (and b!3716892 c!642530) b!3716891))

(assert (= (and b!3716892 (not c!642530)) b!3716896))

(assert (= (and b!3716891 res!1510954) b!3716890))

(assert (= (and b!3716896 c!642531) b!3716888))

(assert (= (and b!3716896 (not c!642531)) b!3716894))

(assert (= (and b!3716888 res!1510951) b!3716889))

(assert (= (and b!3716894 (not res!1510952)) b!3716893))

(assert (= (and b!3716893 res!1510955) b!3716895))

(assert (= (or b!3716889 b!3716893) bm!269581))

(assert (= (or b!3716888 b!3716895) bm!269580))

(assert (= (or b!3716890 bm!269581) bm!269579))

(declare-fun m!4222463 () Bool)

(assert (=> b!3716891 m!4222463))

(declare-fun m!4222465 () Bool)

(assert (=> bm!269579 m!4222465))

(declare-fun m!4222467 () Bool)

(assert (=> bm!269580 m!4222467))

(assert (=> d!1087799 d!1088325))

(assert (=> d!1087799 d!1087863))

(assert (=> d!1087777 d!1088049))

(assert (=> d!1087777 d!1088287))

(declare-fun b!3716897 () Bool)

(declare-fun e!2301393 () Bool)

(declare-fun e!2301391 () Bool)

(assert (=> b!3716897 (= e!2301393 e!2301391)))

(declare-fun c!642532 () Bool)

(assert (=> b!3716897 (= c!642532 ((_ is Union!10855) (regOne!22222 r!26326)))))

(declare-fun b!3716898 () Bool)

(declare-fun e!2301394 () Bool)

(declare-fun e!2301392 () Bool)

(assert (=> b!3716898 (= e!2301394 e!2301392)))

(declare-fun res!1510957 () Bool)

(assert (=> b!3716898 (=> (not res!1510957) (not e!2301392))))

(assert (=> b!3716898 (= res!1510957 (and (not ((_ is EmptyLang!10855) (regOne!22222 r!26326))) (not ((_ is ElementMatch!10855) (regOne!22222 r!26326)))))))

(declare-fun b!3716899 () Bool)

(assert (=> b!3716899 (= e!2301392 e!2301393)))

(declare-fun res!1510960 () Bool)

(assert (=> b!3716899 (=> res!1510960 e!2301393)))

(assert (=> b!3716899 (= res!1510960 ((_ is Star!10855) (regOne!22222 r!26326)))))

(declare-fun bm!269582 () Bool)

(declare-fun call!269587 () Bool)

(assert (=> bm!269582 (= call!269587 (nullable!3778 (ite c!642532 (regTwo!22223 (regOne!22222 r!26326)) (regOne!22222 (regOne!22222 r!26326)))))))

(declare-fun b!3716900 () Bool)

(declare-fun e!2301396 () Bool)

(assert (=> b!3716900 (= e!2301391 e!2301396)))

(declare-fun res!1510956 () Bool)

(declare-fun call!269588 () Bool)

(assert (=> b!3716900 (= res!1510956 call!269588)))

(assert (=> b!3716900 (=> res!1510956 e!2301396)))

(declare-fun bm!269583 () Bool)

(assert (=> bm!269583 (= call!269588 (nullable!3778 (ite c!642532 (regOne!22223 (regOne!22222 r!26326)) (regTwo!22222 (regOne!22222 r!26326)))))))

(declare-fun b!3716901 () Bool)

(declare-fun e!2301395 () Bool)

(assert (=> b!3716901 (= e!2301395 call!269588)))

(declare-fun b!3716902 () Bool)

(assert (=> b!3716902 (= e!2301396 call!269587)))

(declare-fun d!1088327 () Bool)

(declare-fun res!1510959 () Bool)

(assert (=> d!1088327 (=> res!1510959 e!2301394)))

(assert (=> d!1088327 (= res!1510959 ((_ is EmptyExpr!10855) (regOne!22222 r!26326)))))

(assert (=> d!1088327 (= (nullableFct!1067 (regOne!22222 r!26326)) e!2301394)))

(declare-fun b!3716903 () Bool)

(assert (=> b!3716903 (= e!2301391 e!2301395)))

(declare-fun res!1510958 () Bool)

(assert (=> b!3716903 (= res!1510958 call!269587)))

(assert (=> b!3716903 (=> (not res!1510958) (not e!2301395))))

(assert (= (and d!1088327 (not res!1510959)) b!3716898))

(assert (= (and b!3716898 res!1510957) b!3716899))

(assert (= (and b!3716899 (not res!1510960)) b!3716897))

(assert (= (and b!3716897 c!642532) b!3716900))

(assert (= (and b!3716897 (not c!642532)) b!3716903))

(assert (= (and b!3716900 (not res!1510956)) b!3716902))

(assert (= (and b!3716903 res!1510958) b!3716901))

(assert (= (or b!3716902 b!3716903) bm!269582))

(assert (= (or b!3716900 b!3716901) bm!269583))

(declare-fun m!4222469 () Bool)

(assert (=> bm!269582 m!4222469))

(declare-fun m!4222471 () Bool)

(assert (=> bm!269583 m!4222471))

(assert (=> d!1087881 d!1088327))

(declare-fun d!1088329 () Bool)

(assert (=> d!1088329 (= (isDefined!6749 lt!1297382) (not (isEmpty!23508 lt!1297382)))))

(declare-fun bs!574860 () Bool)

(assert (= bs!574860 d!1088329))

(declare-fun m!4222473 () Bool)

(assert (=> bs!574860 m!4222473))

(assert (=> b!3715515 d!1088329))

(assert (=> d!1087885 d!1087891))

(assert (=> d!1087885 d!1087887))

(declare-fun d!1088331 () Bool)

(assert (=> d!1088331 (contains!7948 (usedCharacters!1118 (regOne!22222 r!26326)) c!13576)))

(assert (=> d!1088331 true))

(declare-fun _$132!113 () Unit!57508)

(assert (=> d!1088331 (= (choose!22192 (regOne!22222 r!26326) c!13576 (_1!22744 lt!1297291)) _$132!113)))

(declare-fun bs!574861 () Bool)

(assert (= bs!574861 d!1088331))

(assert (=> bs!574861 m!4220897))

(assert (=> bs!574861 m!4220897))

(assert (=> bs!574861 m!4220899))

(assert (=> d!1087885 d!1088331))

(assert (=> d!1087885 d!1087863))

(assert (=> b!3715289 d!1088195))

(assert (=> d!1087817 d!1088321))

(assert (=> d!1087817 d!1088149))

(assert (=> b!3715591 d!1088273))

(assert (=> b!3715591 d!1088171))

(declare-fun d!1088333 () Bool)

(assert (=> d!1088333 (= (nullable!3778 lt!1297297) (nullableFct!1067 lt!1297297))))

(declare-fun bs!574862 () Bool)

(assert (= bs!574862 d!1088333))

(declare-fun m!4222475 () Bool)

(assert (=> bs!574862 m!4222475))

(assert (=> b!3715107 d!1088333))

(declare-fun d!1088335 () Bool)

(assert (=> d!1088335 (= (nullable!3778 lt!1297287) (nullableFct!1067 lt!1297287))))

(declare-fun bs!574863 () Bool)

(assert (= bs!574863 d!1088335))

(declare-fun m!4222477 () Bool)

(assert (=> bs!574863 m!4222477))

(assert (=> b!3715224 d!1088335))

(assert (=> d!1087861 d!1088329))

(declare-fun b!3716904 () Bool)

(declare-fun e!2301400 () Bool)

(assert (=> b!3716904 (= e!2301400 (= (head!8021 Nil!39612) (c!641993 lt!1297295)))))

(declare-fun b!3716905 () Bool)

(declare-fun res!1510965 () Bool)

(declare-fun e!2301403 () Bool)

(assert (=> b!3716905 (=> res!1510965 e!2301403)))

(assert (=> b!3716905 (= res!1510965 (not ((_ is ElementMatch!10855) lt!1297295)))))

(declare-fun e!2301399 () Bool)

(assert (=> b!3716905 (= e!2301399 e!2301403)))

(declare-fun d!1088337 () Bool)

(declare-fun e!2301402 () Bool)

(assert (=> d!1088337 e!2301402))

(declare-fun c!642535 () Bool)

(assert (=> d!1088337 (= c!642535 ((_ is EmptyExpr!10855) lt!1297295))))

(declare-fun lt!1297487 () Bool)

(declare-fun e!2301398 () Bool)

(assert (=> d!1088337 (= lt!1297487 e!2301398)))

(declare-fun c!642534 () Bool)

(assert (=> d!1088337 (= c!642534 (isEmpty!23507 Nil!39612))))

(assert (=> d!1088337 (validRegex!4962 lt!1297295)))

(assert (=> d!1088337 (= (matchR!5300 lt!1297295 Nil!39612) lt!1297487)))

(declare-fun b!3716906 () Bool)

(declare-fun e!2301401 () Bool)

(declare-fun e!2301397 () Bool)

(assert (=> b!3716906 (= e!2301401 e!2301397)))

(declare-fun res!1510964 () Bool)

(assert (=> b!3716906 (=> res!1510964 e!2301397)))

(declare-fun call!269589 () Bool)

(assert (=> b!3716906 (= res!1510964 call!269589)))

(declare-fun b!3716907 () Bool)

(declare-fun res!1510962 () Bool)

(assert (=> b!3716907 (=> (not res!1510962) (not e!2301400))))

(assert (=> b!3716907 (= res!1510962 (not call!269589))))

(declare-fun bm!269584 () Bool)

(assert (=> bm!269584 (= call!269589 (isEmpty!23507 Nil!39612))))

(declare-fun b!3716908 () Bool)

(assert (=> b!3716908 (= e!2301398 (nullable!3778 lt!1297295))))

(declare-fun b!3716909 () Bool)

(declare-fun res!1510967 () Bool)

(assert (=> b!3716909 (=> (not res!1510967) (not e!2301400))))

(assert (=> b!3716909 (= res!1510967 (isEmpty!23507 (tail!5748 Nil!39612)))))

(declare-fun b!3716910 () Bool)

(assert (=> b!3716910 (= e!2301402 (= lt!1297487 call!269589))))

(declare-fun b!3716911 () Bool)

(assert (=> b!3716911 (= e!2301398 (matchR!5300 (derivativeStep!3320 lt!1297295 (head!8021 Nil!39612)) (tail!5748 Nil!39612)))))

(declare-fun b!3716912 () Bool)

(assert (=> b!3716912 (= e!2301397 (not (= (head!8021 Nil!39612) (c!641993 lt!1297295))))))

(declare-fun b!3716913 () Bool)

(assert (=> b!3716913 (= e!2301399 (not lt!1297487))))

(declare-fun b!3716914 () Bool)

(assert (=> b!3716914 (= e!2301403 e!2301401)))

(declare-fun res!1510968 () Bool)

(assert (=> b!3716914 (=> (not res!1510968) (not e!2301401))))

(assert (=> b!3716914 (= res!1510968 (not lt!1297487))))

(declare-fun b!3716915 () Bool)

(assert (=> b!3716915 (= e!2301402 e!2301399)))

(declare-fun c!642536 () Bool)

(assert (=> b!3716915 (= c!642536 ((_ is EmptyLang!10855) lt!1297295))))

(declare-fun b!3716916 () Bool)

(declare-fun res!1510961 () Bool)

(assert (=> b!3716916 (=> res!1510961 e!2301403)))

(assert (=> b!3716916 (= res!1510961 e!2301400)))

(declare-fun res!1510963 () Bool)

(assert (=> b!3716916 (=> (not res!1510963) (not e!2301400))))

(assert (=> b!3716916 (= res!1510963 lt!1297487)))

(declare-fun b!3716917 () Bool)

(declare-fun res!1510966 () Bool)

(assert (=> b!3716917 (=> res!1510966 e!2301397)))

(assert (=> b!3716917 (= res!1510966 (not (isEmpty!23507 (tail!5748 Nil!39612))))))

(assert (= (and d!1088337 c!642534) b!3716908))

(assert (= (and d!1088337 (not c!642534)) b!3716911))

(assert (= (and d!1088337 c!642535) b!3716910))

(assert (= (and d!1088337 (not c!642535)) b!3716915))

(assert (= (and b!3716915 c!642536) b!3716913))

(assert (= (and b!3716915 (not c!642536)) b!3716905))

(assert (= (and b!3716905 (not res!1510965)) b!3716916))

(assert (= (and b!3716916 res!1510963) b!3716907))

(assert (= (and b!3716907 res!1510962) b!3716909))

(assert (= (and b!3716909 res!1510967) b!3716904))

(assert (= (and b!3716916 (not res!1510961)) b!3716914))

(assert (= (and b!3716914 res!1510968) b!3716906))

(assert (= (and b!3716906 (not res!1510964)) b!3716917))

(assert (= (and b!3716917 (not res!1510966)) b!3716912))

(assert (= (or b!3716910 b!3716906 b!3716907) bm!269584))

(assert (=> b!3716908 m!4221143))

(assert (=> d!1088337 m!4221129))

(assert (=> d!1088337 m!4221149))

(assert (=> bm!269584 m!4221129))

(assert (=> b!3716911 m!4221133))

(assert (=> b!3716911 m!4221133))

(declare-fun m!4222479 () Bool)

(assert (=> b!3716911 m!4222479))

(assert (=> b!3716911 m!4221137))

(assert (=> b!3716911 m!4222479))

(assert (=> b!3716911 m!4221137))

(declare-fun m!4222481 () Bool)

(assert (=> b!3716911 m!4222481))

(assert (=> b!3716904 m!4221133))

(assert (=> b!3716917 m!4221137))

(assert (=> b!3716917 m!4221137))

(assert (=> b!3716917 m!4221141))

(assert (=> b!3716909 m!4221137))

(assert (=> b!3716909 m!4221137))

(assert (=> b!3716909 m!4221141))

(assert (=> b!3716912 m!4221133))

(assert (=> d!1087861 d!1088337))

(assert (=> d!1087861 d!1088149))

(declare-fun b!3716918 () Bool)

(declare-fun res!1510969 () Bool)

(declare-fun e!2301408 () Bool)

(assert (=> b!3716918 (=> (not res!1510969) (not e!2301408))))

(declare-fun call!269592 () Bool)

(assert (=> b!3716918 (= res!1510969 call!269592)))

(declare-fun e!2301404 () Bool)

(assert (=> b!3716918 (= e!2301404 e!2301408)))

(declare-fun b!3716919 () Bool)

(declare-fun call!269591 () Bool)

(assert (=> b!3716919 (= e!2301408 call!269591)))

(declare-fun b!3716920 () Bool)

(declare-fun e!2301406 () Bool)

(declare-fun call!269590 () Bool)

(assert (=> b!3716920 (= e!2301406 call!269590)))

(declare-fun d!1088339 () Bool)

(declare-fun res!1510971 () Bool)

(declare-fun e!2301407 () Bool)

(assert (=> d!1088339 (=> res!1510971 e!2301407)))

(assert (=> d!1088339 (= res!1510971 ((_ is ElementMatch!10855) lt!1297387))))

(assert (=> d!1088339 (= (validRegex!4962 lt!1297387) e!2301407)))

(declare-fun b!3716921 () Bool)

(declare-fun e!2301409 () Bool)

(assert (=> b!3716921 (= e!2301409 e!2301406)))

(declare-fun res!1510972 () Bool)

(assert (=> b!3716921 (= res!1510972 (not (nullable!3778 (reg!11184 lt!1297387))))))

(assert (=> b!3716921 (=> (not res!1510972) (not e!2301406))))

(declare-fun b!3716922 () Bool)

(assert (=> b!3716922 (= e!2301407 e!2301409)))

(declare-fun c!642537 () Bool)

(assert (=> b!3716922 (= c!642537 ((_ is Star!10855) lt!1297387))))

(declare-fun b!3716923 () Bool)

(declare-fun e!2301405 () Bool)

(declare-fun e!2301410 () Bool)

(assert (=> b!3716923 (= e!2301405 e!2301410)))

(declare-fun res!1510973 () Bool)

(assert (=> b!3716923 (=> (not res!1510973) (not e!2301410))))

(assert (=> b!3716923 (= res!1510973 call!269591)))

(declare-fun b!3716924 () Bool)

(declare-fun res!1510970 () Bool)

(assert (=> b!3716924 (=> res!1510970 e!2301405)))

(assert (=> b!3716924 (= res!1510970 (not ((_ is Concat!17126) lt!1297387)))))

(assert (=> b!3716924 (= e!2301404 e!2301405)))

(declare-fun bm!269585 () Bool)

(declare-fun c!642538 () Bool)

(assert (=> bm!269585 (= call!269590 (validRegex!4962 (ite c!642537 (reg!11184 lt!1297387) (ite c!642538 (regTwo!22223 lt!1297387) (regOne!22222 lt!1297387)))))))

(declare-fun b!3716925 () Bool)

(assert (=> b!3716925 (= e!2301410 call!269592)))

(declare-fun bm!269586 () Bool)

(assert (=> bm!269586 (= call!269592 (validRegex!4962 (ite c!642538 (regOne!22223 lt!1297387) (regTwo!22222 lt!1297387))))))

(declare-fun bm!269587 () Bool)

(assert (=> bm!269587 (= call!269591 call!269590)))

(declare-fun b!3716926 () Bool)

(assert (=> b!3716926 (= e!2301409 e!2301404)))

(assert (=> b!3716926 (= c!642538 ((_ is Union!10855) lt!1297387))))

(assert (= (and d!1088339 (not res!1510971)) b!3716922))

(assert (= (and b!3716922 c!642537) b!3716921))

(assert (= (and b!3716922 (not c!642537)) b!3716926))

(assert (= (and b!3716921 res!1510972) b!3716920))

(assert (= (and b!3716926 c!642538) b!3716918))

(assert (= (and b!3716926 (not c!642538)) b!3716924))

(assert (= (and b!3716918 res!1510969) b!3716919))

(assert (= (and b!3716924 (not res!1510970)) b!3716923))

(assert (= (and b!3716923 res!1510973) b!3716925))

(assert (= (or b!3716919 b!3716923) bm!269587))

(assert (= (or b!3716918 b!3716925) bm!269586))

(assert (= (or b!3716920 bm!269587) bm!269585))

(declare-fun m!4222483 () Bool)

(assert (=> b!3716921 m!4222483))

(declare-fun m!4222485 () Bool)

(assert (=> bm!269585 m!4222485))

(declare-fun m!4222487 () Bool)

(assert (=> bm!269586 m!4222487))

(assert (=> d!1087873 d!1088339))

(declare-fun b!3716927 () Bool)

(declare-fun res!1510974 () Bool)

(declare-fun e!2301415 () Bool)

(assert (=> b!3716927 (=> (not res!1510974) (not e!2301415))))

(declare-fun call!269595 () Bool)

(assert (=> b!3716927 (= res!1510974 call!269595)))

(declare-fun e!2301411 () Bool)

(assert (=> b!3716927 (= e!2301411 e!2301415)))

(declare-fun b!3716928 () Bool)

(declare-fun call!269594 () Bool)

(assert (=> b!3716928 (= e!2301415 call!269594)))

(declare-fun b!3716929 () Bool)

(declare-fun e!2301413 () Bool)

(declare-fun call!269593 () Bool)

(assert (=> b!3716929 (= e!2301413 call!269593)))

(declare-fun d!1088341 () Bool)

(declare-fun res!1510976 () Bool)

(declare-fun e!2301414 () Bool)

(assert (=> d!1088341 (=> res!1510976 e!2301414)))

(assert (=> d!1088341 (= res!1510976 ((_ is ElementMatch!10855) (derivativeStep!3320 r!26326 c!13576)))))

(assert (=> d!1088341 (= (validRegex!4962 (derivativeStep!3320 r!26326 c!13576)) e!2301414)))

(declare-fun b!3716930 () Bool)

(declare-fun e!2301416 () Bool)

(assert (=> b!3716930 (= e!2301416 e!2301413)))

(declare-fun res!1510977 () Bool)

(assert (=> b!3716930 (= res!1510977 (not (nullable!3778 (reg!11184 (derivativeStep!3320 r!26326 c!13576)))))))

(assert (=> b!3716930 (=> (not res!1510977) (not e!2301413))))

(declare-fun b!3716931 () Bool)

(assert (=> b!3716931 (= e!2301414 e!2301416)))

(declare-fun c!642539 () Bool)

(assert (=> b!3716931 (= c!642539 ((_ is Star!10855) (derivativeStep!3320 r!26326 c!13576)))))

(declare-fun b!3716932 () Bool)

(declare-fun e!2301412 () Bool)

(declare-fun e!2301417 () Bool)

(assert (=> b!3716932 (= e!2301412 e!2301417)))

(declare-fun res!1510978 () Bool)

(assert (=> b!3716932 (=> (not res!1510978) (not e!2301417))))

(assert (=> b!3716932 (= res!1510978 call!269594)))

(declare-fun b!3716933 () Bool)

(declare-fun res!1510975 () Bool)

(assert (=> b!3716933 (=> res!1510975 e!2301412)))

(assert (=> b!3716933 (= res!1510975 (not ((_ is Concat!17126) (derivativeStep!3320 r!26326 c!13576))))))

(assert (=> b!3716933 (= e!2301411 e!2301412)))

(declare-fun c!642540 () Bool)

(declare-fun bm!269588 () Bool)

(assert (=> bm!269588 (= call!269593 (validRegex!4962 (ite c!642539 (reg!11184 (derivativeStep!3320 r!26326 c!13576)) (ite c!642540 (regTwo!22223 (derivativeStep!3320 r!26326 c!13576)) (regOne!22222 (derivativeStep!3320 r!26326 c!13576))))))))

(declare-fun b!3716934 () Bool)

(assert (=> b!3716934 (= e!2301417 call!269595)))

(declare-fun bm!269589 () Bool)

(assert (=> bm!269589 (= call!269595 (validRegex!4962 (ite c!642540 (regOne!22223 (derivativeStep!3320 r!26326 c!13576)) (regTwo!22222 (derivativeStep!3320 r!26326 c!13576)))))))

(declare-fun bm!269590 () Bool)

(assert (=> bm!269590 (= call!269594 call!269593)))

(declare-fun b!3716935 () Bool)

(assert (=> b!3716935 (= e!2301416 e!2301411)))

(assert (=> b!3716935 (= c!642540 ((_ is Union!10855) (derivativeStep!3320 r!26326 c!13576)))))

(assert (= (and d!1088341 (not res!1510976)) b!3716931))

(assert (= (and b!3716931 c!642539) b!3716930))

(assert (= (and b!3716931 (not c!642539)) b!3716935))

(assert (= (and b!3716930 res!1510977) b!3716929))

(assert (= (and b!3716935 c!642540) b!3716927))

(assert (= (and b!3716935 (not c!642540)) b!3716933))

(assert (= (and b!3716927 res!1510974) b!3716928))

(assert (= (and b!3716933 (not res!1510975)) b!3716932))

(assert (= (and b!3716932 res!1510978) b!3716934))

(assert (= (or b!3716928 b!3716932) bm!269590))

(assert (= (or b!3716927 b!3716934) bm!269589))

(assert (= (or b!3716929 bm!269590) bm!269588))

(declare-fun m!4222489 () Bool)

(assert (=> b!3716930 m!4222489))

(declare-fun m!4222491 () Bool)

(assert (=> bm!269588 m!4222491))

(declare-fun m!4222493 () Bool)

(assert (=> bm!269589 m!4222493))

(assert (=> d!1087873 d!1088341))

(declare-fun b!3716936 () Bool)

(declare-fun e!2301421 () Bool)

(assert (=> b!3716936 (= e!2301421 (= (head!8021 (tail!5748 (_1!22744 lt!1297291))) (c!641993 (derivativeStep!3320 lt!1297295 (head!8021 (_1!22744 lt!1297291))))))))

(declare-fun b!3716937 () Bool)

(declare-fun res!1510983 () Bool)

(declare-fun e!2301424 () Bool)

(assert (=> b!3716937 (=> res!1510983 e!2301424)))

(assert (=> b!3716937 (= res!1510983 (not ((_ is ElementMatch!10855) (derivativeStep!3320 lt!1297295 (head!8021 (_1!22744 lt!1297291))))))))

(declare-fun e!2301420 () Bool)

(assert (=> b!3716937 (= e!2301420 e!2301424)))

(declare-fun d!1088343 () Bool)

(declare-fun e!2301423 () Bool)

(assert (=> d!1088343 e!2301423))

(declare-fun c!642542 () Bool)

(assert (=> d!1088343 (= c!642542 ((_ is EmptyExpr!10855) (derivativeStep!3320 lt!1297295 (head!8021 (_1!22744 lt!1297291)))))))

(declare-fun lt!1297488 () Bool)

(declare-fun e!2301419 () Bool)

(assert (=> d!1088343 (= lt!1297488 e!2301419)))

(declare-fun c!642541 () Bool)

(assert (=> d!1088343 (= c!642541 (isEmpty!23507 (tail!5748 (_1!22744 lt!1297291))))))

(assert (=> d!1088343 (validRegex!4962 (derivativeStep!3320 lt!1297295 (head!8021 (_1!22744 lt!1297291))))))

(assert (=> d!1088343 (= (matchR!5300 (derivativeStep!3320 lt!1297295 (head!8021 (_1!22744 lt!1297291))) (tail!5748 (_1!22744 lt!1297291))) lt!1297488)))

(declare-fun b!3716938 () Bool)

(declare-fun e!2301422 () Bool)

(declare-fun e!2301418 () Bool)

(assert (=> b!3716938 (= e!2301422 e!2301418)))

(declare-fun res!1510982 () Bool)

(assert (=> b!3716938 (=> res!1510982 e!2301418)))

(declare-fun call!269596 () Bool)

(assert (=> b!3716938 (= res!1510982 call!269596)))

(declare-fun b!3716939 () Bool)

(declare-fun res!1510980 () Bool)

(assert (=> b!3716939 (=> (not res!1510980) (not e!2301421))))

(assert (=> b!3716939 (= res!1510980 (not call!269596))))

(declare-fun bm!269591 () Bool)

(assert (=> bm!269591 (= call!269596 (isEmpty!23507 (tail!5748 (_1!22744 lt!1297291))))))

(declare-fun b!3716940 () Bool)

(assert (=> b!3716940 (= e!2301419 (nullable!3778 (derivativeStep!3320 lt!1297295 (head!8021 (_1!22744 lt!1297291)))))))

(declare-fun b!3716941 () Bool)

(declare-fun res!1510985 () Bool)

(assert (=> b!3716941 (=> (not res!1510985) (not e!2301421))))

(assert (=> b!3716941 (= res!1510985 (isEmpty!23507 (tail!5748 (tail!5748 (_1!22744 lt!1297291)))))))

(declare-fun b!3716942 () Bool)

(assert (=> b!3716942 (= e!2301423 (= lt!1297488 call!269596))))

(declare-fun b!3716943 () Bool)

(assert (=> b!3716943 (= e!2301419 (matchR!5300 (derivativeStep!3320 (derivativeStep!3320 lt!1297295 (head!8021 (_1!22744 lt!1297291))) (head!8021 (tail!5748 (_1!22744 lt!1297291)))) (tail!5748 (tail!5748 (_1!22744 lt!1297291)))))))

(declare-fun b!3716944 () Bool)

(assert (=> b!3716944 (= e!2301418 (not (= (head!8021 (tail!5748 (_1!22744 lt!1297291))) (c!641993 (derivativeStep!3320 lt!1297295 (head!8021 (_1!22744 lt!1297291)))))))))

(declare-fun b!3716945 () Bool)

(assert (=> b!3716945 (= e!2301420 (not lt!1297488))))

(declare-fun b!3716946 () Bool)

(assert (=> b!3716946 (= e!2301424 e!2301422)))

(declare-fun res!1510986 () Bool)

(assert (=> b!3716946 (=> (not res!1510986) (not e!2301422))))

(assert (=> b!3716946 (= res!1510986 (not lt!1297488))))

(declare-fun b!3716947 () Bool)

(assert (=> b!3716947 (= e!2301423 e!2301420)))

(declare-fun c!642543 () Bool)

(assert (=> b!3716947 (= c!642543 ((_ is EmptyLang!10855) (derivativeStep!3320 lt!1297295 (head!8021 (_1!22744 lt!1297291)))))))

(declare-fun b!3716948 () Bool)

(declare-fun res!1510979 () Bool)

(assert (=> b!3716948 (=> res!1510979 e!2301424)))

(assert (=> b!3716948 (= res!1510979 e!2301421)))

(declare-fun res!1510981 () Bool)

(assert (=> b!3716948 (=> (not res!1510981) (not e!2301421))))

(assert (=> b!3716948 (= res!1510981 lt!1297488)))

(declare-fun b!3716949 () Bool)

(declare-fun res!1510984 () Bool)

(assert (=> b!3716949 (=> res!1510984 e!2301418)))

(assert (=> b!3716949 (= res!1510984 (not (isEmpty!23507 (tail!5748 (tail!5748 (_1!22744 lt!1297291))))))))

(assert (= (and d!1088343 c!642541) b!3716940))

(assert (= (and d!1088343 (not c!642541)) b!3716943))

(assert (= (and d!1088343 c!642542) b!3716942))

(assert (= (and d!1088343 (not c!642542)) b!3716947))

(assert (= (and b!3716947 c!642543) b!3716945))

(assert (= (and b!3716947 (not c!642543)) b!3716937))

(assert (= (and b!3716937 (not res!1510983)) b!3716948))

(assert (= (and b!3716948 res!1510981) b!3716939))

(assert (= (and b!3716939 res!1510980) b!3716941))

(assert (= (and b!3716941 res!1510985) b!3716936))

(assert (= (and b!3716948 (not res!1510979)) b!3716946))

(assert (= (and b!3716946 res!1510986) b!3716938))

(assert (= (and b!3716938 (not res!1510982)) b!3716949))

(assert (= (and b!3716949 (not res!1510984)) b!3716944))

(assert (= (or b!3716942 b!3716938 b!3716939) bm!269591))

(assert (=> b!3716940 m!4221157))

(declare-fun m!4222495 () Bool)

(assert (=> b!3716940 m!4222495))

(assert (=> d!1088343 m!4221159))

(assert (=> d!1088343 m!4221163))

(assert (=> d!1088343 m!4221157))

(declare-fun m!4222497 () Bool)

(assert (=> d!1088343 m!4222497))

(assert (=> bm!269591 m!4221159))

(assert (=> bm!269591 m!4221163))

(assert (=> b!3716943 m!4221159))

(declare-fun m!4222499 () Bool)

(assert (=> b!3716943 m!4222499))

(assert (=> b!3716943 m!4221157))

(assert (=> b!3716943 m!4222499))

(declare-fun m!4222501 () Bool)

(assert (=> b!3716943 m!4222501))

(assert (=> b!3716943 m!4221159))

(declare-fun m!4222503 () Bool)

(assert (=> b!3716943 m!4222503))

(assert (=> b!3716943 m!4222501))

(assert (=> b!3716943 m!4222503))

(declare-fun m!4222505 () Bool)

(assert (=> b!3716943 m!4222505))

(assert (=> b!3716936 m!4221159))

(assert (=> b!3716936 m!4222499))

(assert (=> b!3716949 m!4221159))

(assert (=> b!3716949 m!4222503))

(assert (=> b!3716949 m!4222503))

(declare-fun m!4222507 () Bool)

(assert (=> b!3716949 m!4222507))

(assert (=> b!3716941 m!4221159))

(assert (=> b!3716941 m!4222503))

(assert (=> b!3716941 m!4222503))

(assert (=> b!3716941 m!4222507))

(assert (=> b!3716944 m!4221159))

(assert (=> b!3716944 m!4222499))

(assert (=> b!3715296 d!1088343))

(declare-fun b!3716950 () Bool)

(declare-fun e!2301425 () Regex!10855)

(declare-fun e!2301428 () Regex!10855)

(assert (=> b!3716950 (= e!2301425 e!2301428)))

(declare-fun c!642547 () Bool)

(assert (=> b!3716950 (= c!642547 ((_ is ElementMatch!10855) lt!1297295))))

(declare-fun b!3716951 () Bool)

(declare-fun c!642546 () Bool)

(assert (=> b!3716951 (= c!642546 (nullable!3778 (regOne!22222 lt!1297295)))))

(declare-fun e!2301426 () Regex!10855)

(declare-fun e!2301429 () Regex!10855)

(assert (=> b!3716951 (= e!2301426 e!2301429)))

(declare-fun bm!269592 () Bool)

(declare-fun call!269598 () Regex!10855)

(declare-fun call!269600 () Regex!10855)

(assert (=> bm!269592 (= call!269598 call!269600)))

(declare-fun b!3716952 () Bool)

(declare-fun c!642544 () Bool)

(assert (=> b!3716952 (= c!642544 ((_ is Union!10855) lt!1297295))))

(declare-fun e!2301427 () Regex!10855)

(assert (=> b!3716952 (= e!2301428 e!2301427)))

(declare-fun b!3716953 () Bool)

(declare-fun call!269597 () Regex!10855)

(assert (=> b!3716953 (= e!2301427 (Union!10855 call!269600 call!269597))))

(declare-fun b!3716954 () Bool)

(assert (=> b!3716954 (= e!2301425 EmptyLang!10855)))

(declare-fun b!3716955 () Bool)

(assert (=> b!3716955 (= e!2301428 (ite (= (head!8021 (_1!22744 lt!1297291)) (c!641993 lt!1297295)) EmptyExpr!10855 EmptyLang!10855))))

(declare-fun bm!269593 () Bool)

(declare-fun call!269599 () Regex!10855)

(assert (=> bm!269593 (= call!269599 call!269597)))

(declare-fun b!3716956 () Bool)

(assert (=> b!3716956 (= e!2301427 e!2301426)))

(declare-fun c!642548 () Bool)

(assert (=> b!3716956 (= c!642548 ((_ is Star!10855) lt!1297295))))

(declare-fun bm!269594 () Bool)

(assert (=> bm!269594 (= call!269597 (derivativeStep!3320 (ite c!642544 (regTwo!22223 lt!1297295) (ite c!642548 (reg!11184 lt!1297295) (regTwo!22222 lt!1297295))) (head!8021 (_1!22744 lt!1297291))))))

(declare-fun bm!269595 () Bool)

(assert (=> bm!269595 (= call!269600 (derivativeStep!3320 (ite c!642544 (regOne!22223 lt!1297295) (regOne!22222 lt!1297295)) (head!8021 (_1!22744 lt!1297291))))))

(declare-fun b!3716958 () Bool)

(assert (=> b!3716958 (= e!2301426 (Concat!17126 call!269599 lt!1297295))))

(declare-fun b!3716959 () Bool)

(assert (=> b!3716959 (= e!2301429 (Union!10855 (Concat!17126 call!269598 (regTwo!22222 lt!1297295)) EmptyLang!10855))))

(declare-fun b!3716957 () Bool)

(assert (=> b!3716957 (= e!2301429 (Union!10855 (Concat!17126 call!269598 (regTwo!22222 lt!1297295)) call!269599))))

(declare-fun d!1088345 () Bool)

(declare-fun lt!1297489 () Regex!10855)

(assert (=> d!1088345 (validRegex!4962 lt!1297489)))

(assert (=> d!1088345 (= lt!1297489 e!2301425)))

(declare-fun c!642545 () Bool)

(assert (=> d!1088345 (= c!642545 (or ((_ is EmptyExpr!10855) lt!1297295) ((_ is EmptyLang!10855) lt!1297295)))))

(assert (=> d!1088345 (validRegex!4962 lt!1297295)))

(assert (=> d!1088345 (= (derivativeStep!3320 lt!1297295 (head!8021 (_1!22744 lt!1297291))) lt!1297489)))

(assert (= (and d!1088345 c!642545) b!3716954))

(assert (= (and d!1088345 (not c!642545)) b!3716950))

(assert (= (and b!3716950 c!642547) b!3716955))

(assert (= (and b!3716950 (not c!642547)) b!3716952))

(assert (= (and b!3716952 c!642544) b!3716953))

(assert (= (and b!3716952 (not c!642544)) b!3716956))

(assert (= (and b!3716956 c!642548) b!3716958))

(assert (= (and b!3716956 (not c!642548)) b!3716951))

(assert (= (and b!3716951 c!642546) b!3716957))

(assert (= (and b!3716951 (not c!642546)) b!3716959))

(assert (= (or b!3716957 b!3716959) bm!269592))

(assert (= (or b!3716958 b!3716957) bm!269593))

(assert (= (or b!3716953 bm!269593) bm!269594))

(assert (= (or b!3716953 bm!269592) bm!269595))

(assert (=> b!3716951 m!4222165))

(assert (=> bm!269594 m!4221153))

(declare-fun m!4222509 () Bool)

(assert (=> bm!269594 m!4222509))

(assert (=> bm!269595 m!4221153))

(declare-fun m!4222511 () Bool)

(assert (=> bm!269595 m!4222511))

(declare-fun m!4222513 () Bool)

(assert (=> d!1088345 m!4222513))

(assert (=> d!1088345 m!4221149))

(assert (=> b!3715296 d!1088345))

(assert (=> b!3715296 d!1088195))

(assert (=> b!3715296 d!1088229))

(declare-fun b!3716960 () Bool)

(declare-fun e!2301430 () Regex!10855)

(declare-fun e!2301433 () Regex!10855)

(assert (=> b!3716960 (= e!2301430 e!2301433)))

(declare-fun c!642552 () Bool)

(assert (=> b!3716960 (= c!642552 ((_ is ElementMatch!10855) (ite c!642058 (regOne!22223 (regTwo!22222 r!26326)) (regOne!22222 (regTwo!22222 r!26326)))))))

(declare-fun b!3716961 () Bool)

(declare-fun c!642551 () Bool)

(assert (=> b!3716961 (= c!642551 (nullable!3778 (regOne!22222 (ite c!642058 (regOne!22223 (regTwo!22222 r!26326)) (regOne!22222 (regTwo!22222 r!26326))))))))

(declare-fun e!2301431 () Regex!10855)

(declare-fun e!2301434 () Regex!10855)

(assert (=> b!3716961 (= e!2301431 e!2301434)))

(declare-fun bm!269596 () Bool)

(declare-fun call!269602 () Regex!10855)

(declare-fun call!269604 () Regex!10855)

(assert (=> bm!269596 (= call!269602 call!269604)))

(declare-fun b!3716962 () Bool)

(declare-fun c!642549 () Bool)

(assert (=> b!3716962 (= c!642549 ((_ is Union!10855) (ite c!642058 (regOne!22223 (regTwo!22222 r!26326)) (regOne!22222 (regTwo!22222 r!26326)))))))

(declare-fun e!2301432 () Regex!10855)

(assert (=> b!3716962 (= e!2301433 e!2301432)))

(declare-fun b!3716963 () Bool)

(declare-fun call!269601 () Regex!10855)

(assert (=> b!3716963 (= e!2301432 (Union!10855 call!269604 call!269601))))

(declare-fun b!3716964 () Bool)

(assert (=> b!3716964 (= e!2301430 EmptyLang!10855)))

(declare-fun b!3716965 () Bool)

(assert (=> b!3716965 (= e!2301433 (ite (= c!13576 (c!641993 (ite c!642058 (regOne!22223 (regTwo!22222 r!26326)) (regOne!22222 (regTwo!22222 r!26326))))) EmptyExpr!10855 EmptyLang!10855))))

(declare-fun bm!269597 () Bool)

(declare-fun call!269603 () Regex!10855)

(assert (=> bm!269597 (= call!269603 call!269601)))

(declare-fun b!3716966 () Bool)

(assert (=> b!3716966 (= e!2301432 e!2301431)))

(declare-fun c!642553 () Bool)

(assert (=> b!3716966 (= c!642553 ((_ is Star!10855) (ite c!642058 (regOne!22223 (regTwo!22222 r!26326)) (regOne!22222 (regTwo!22222 r!26326)))))))

(declare-fun bm!269598 () Bool)

(assert (=> bm!269598 (= call!269601 (derivativeStep!3320 (ite c!642549 (regTwo!22223 (ite c!642058 (regOne!22223 (regTwo!22222 r!26326)) (regOne!22222 (regTwo!22222 r!26326)))) (ite c!642553 (reg!11184 (ite c!642058 (regOne!22223 (regTwo!22222 r!26326)) (regOne!22222 (regTwo!22222 r!26326)))) (regTwo!22222 (ite c!642058 (regOne!22223 (regTwo!22222 r!26326)) (regOne!22222 (regTwo!22222 r!26326)))))) c!13576))))

(declare-fun bm!269599 () Bool)

(assert (=> bm!269599 (= call!269604 (derivativeStep!3320 (ite c!642549 (regOne!22223 (ite c!642058 (regOne!22223 (regTwo!22222 r!26326)) (regOne!22222 (regTwo!22222 r!26326)))) (regOne!22222 (ite c!642058 (regOne!22223 (regTwo!22222 r!26326)) (regOne!22222 (regTwo!22222 r!26326))))) c!13576))))

(declare-fun b!3716968 () Bool)

(assert (=> b!3716968 (= e!2301431 (Concat!17126 call!269603 (ite c!642058 (regOne!22223 (regTwo!22222 r!26326)) (regOne!22222 (regTwo!22222 r!26326)))))))

(declare-fun b!3716969 () Bool)

(assert (=> b!3716969 (= e!2301434 (Union!10855 (Concat!17126 call!269602 (regTwo!22222 (ite c!642058 (regOne!22223 (regTwo!22222 r!26326)) (regOne!22222 (regTwo!22222 r!26326))))) EmptyLang!10855))))

(declare-fun b!3716967 () Bool)

(assert (=> b!3716967 (= e!2301434 (Union!10855 (Concat!17126 call!269602 (regTwo!22222 (ite c!642058 (regOne!22223 (regTwo!22222 r!26326)) (regOne!22222 (regTwo!22222 r!26326))))) call!269603))))

(declare-fun d!1088347 () Bool)

(declare-fun lt!1297490 () Regex!10855)

(assert (=> d!1088347 (validRegex!4962 lt!1297490)))

(assert (=> d!1088347 (= lt!1297490 e!2301430)))

(declare-fun c!642550 () Bool)

(assert (=> d!1088347 (= c!642550 (or ((_ is EmptyExpr!10855) (ite c!642058 (regOne!22223 (regTwo!22222 r!26326)) (regOne!22222 (regTwo!22222 r!26326)))) ((_ is EmptyLang!10855) (ite c!642058 (regOne!22223 (regTwo!22222 r!26326)) (regOne!22222 (regTwo!22222 r!26326))))))))

(assert (=> d!1088347 (validRegex!4962 (ite c!642058 (regOne!22223 (regTwo!22222 r!26326)) (regOne!22222 (regTwo!22222 r!26326))))))

(assert (=> d!1088347 (= (derivativeStep!3320 (ite c!642058 (regOne!22223 (regTwo!22222 r!26326)) (regOne!22222 (regTwo!22222 r!26326))) c!13576) lt!1297490)))

(assert (= (and d!1088347 c!642550) b!3716964))

(assert (= (and d!1088347 (not c!642550)) b!3716960))

(assert (= (and b!3716960 c!642552) b!3716965))

(assert (= (and b!3716960 (not c!642552)) b!3716962))

(assert (= (and b!3716962 c!642549) b!3716963))

(assert (= (and b!3716962 (not c!642549)) b!3716966))

(assert (= (and b!3716966 c!642553) b!3716968))

(assert (= (and b!3716966 (not c!642553)) b!3716961))

(assert (= (and b!3716961 c!642551) b!3716967))

(assert (= (and b!3716961 (not c!642551)) b!3716969))

(assert (= (or b!3716967 b!3716969) bm!269596))

(assert (= (or b!3716968 b!3716967) bm!269597))

(assert (= (or b!3716963 bm!269597) bm!269598))

(assert (= (or b!3716963 bm!269596) bm!269599))

(declare-fun m!4222515 () Bool)

(assert (=> b!3716961 m!4222515))

(declare-fun m!4222517 () Bool)

(assert (=> bm!269598 m!4222517))

(declare-fun m!4222519 () Bool)

(assert (=> bm!269599 m!4222519))

(declare-fun m!4222521 () Bool)

(assert (=> d!1088347 m!4222521))

(declare-fun m!4222523 () Bool)

(assert (=> d!1088347 m!4222523))

(assert (=> bm!269217 d!1088347))

(declare-fun d!1088349 () Bool)

(declare-fun lt!1297491 () Regex!10855)

(assert (=> d!1088349 (validRegex!4962 lt!1297491)))

(declare-fun e!2301435 () Regex!10855)

(assert (=> d!1088349 (= lt!1297491 e!2301435)))

(declare-fun c!642554 () Bool)

(assert (=> d!1088349 (= c!642554 ((_ is Cons!39612) (t!302419 tl!3933)))))

(assert (=> d!1088349 (validRegex!4962 (derivativeStep!3320 (derivativeStep!3320 r!26326 c!13576) (h!45032 tl!3933)))))

(assert (=> d!1088349 (= (derivative!369 (derivativeStep!3320 (derivativeStep!3320 r!26326 c!13576) (h!45032 tl!3933)) (t!302419 tl!3933)) lt!1297491)))

(declare-fun b!3716970 () Bool)

(assert (=> b!3716970 (= e!2301435 (derivative!369 (derivativeStep!3320 (derivativeStep!3320 (derivativeStep!3320 r!26326 c!13576) (h!45032 tl!3933)) (h!45032 (t!302419 tl!3933))) (t!302419 (t!302419 tl!3933))))))

(declare-fun b!3716971 () Bool)

(assert (=> b!3716971 (= e!2301435 (derivativeStep!3320 (derivativeStep!3320 r!26326 c!13576) (h!45032 tl!3933)))))

(assert (= (and d!1088349 c!642554) b!3716970))

(assert (= (and d!1088349 (not c!642554)) b!3716971))

(declare-fun m!4222525 () Bool)

(assert (=> d!1088349 m!4222525))

(assert (=> d!1088349 m!4221357))

(declare-fun m!4222527 () Bool)

(assert (=> d!1088349 m!4222527))

(assert (=> b!3716970 m!4221357))

(declare-fun m!4222529 () Bool)

(assert (=> b!3716970 m!4222529))

(assert (=> b!3716970 m!4222529))

(declare-fun m!4222531 () Bool)

(assert (=> b!3716970 m!4222531))

(assert (=> b!3715565 d!1088349))

(declare-fun b!3716972 () Bool)

(declare-fun e!2301436 () Regex!10855)

(declare-fun e!2301439 () Regex!10855)

(assert (=> b!3716972 (= e!2301436 e!2301439)))

(declare-fun c!642558 () Bool)

(assert (=> b!3716972 (= c!642558 ((_ is ElementMatch!10855) (derivativeStep!3320 r!26326 c!13576)))))

(declare-fun b!3716973 () Bool)

(declare-fun c!642557 () Bool)

(assert (=> b!3716973 (= c!642557 (nullable!3778 (regOne!22222 (derivativeStep!3320 r!26326 c!13576))))))

(declare-fun e!2301437 () Regex!10855)

(declare-fun e!2301440 () Regex!10855)

(assert (=> b!3716973 (= e!2301437 e!2301440)))

(declare-fun bm!269600 () Bool)

(declare-fun call!269606 () Regex!10855)

(declare-fun call!269608 () Regex!10855)

(assert (=> bm!269600 (= call!269606 call!269608)))

(declare-fun b!3716974 () Bool)

(declare-fun c!642555 () Bool)

(assert (=> b!3716974 (= c!642555 ((_ is Union!10855) (derivativeStep!3320 r!26326 c!13576)))))

(declare-fun e!2301438 () Regex!10855)

(assert (=> b!3716974 (= e!2301439 e!2301438)))

(declare-fun b!3716975 () Bool)

(declare-fun call!269605 () Regex!10855)

(assert (=> b!3716975 (= e!2301438 (Union!10855 call!269608 call!269605))))

(declare-fun b!3716976 () Bool)

(assert (=> b!3716976 (= e!2301436 EmptyLang!10855)))

(declare-fun b!3716977 () Bool)

(assert (=> b!3716977 (= e!2301439 (ite (= (h!45032 tl!3933) (c!641993 (derivativeStep!3320 r!26326 c!13576))) EmptyExpr!10855 EmptyLang!10855))))

(declare-fun bm!269601 () Bool)

(declare-fun call!269607 () Regex!10855)

(assert (=> bm!269601 (= call!269607 call!269605)))

(declare-fun b!3716978 () Bool)

(assert (=> b!3716978 (= e!2301438 e!2301437)))

(declare-fun c!642559 () Bool)

(assert (=> b!3716978 (= c!642559 ((_ is Star!10855) (derivativeStep!3320 r!26326 c!13576)))))

(declare-fun bm!269602 () Bool)

(assert (=> bm!269602 (= call!269605 (derivativeStep!3320 (ite c!642555 (regTwo!22223 (derivativeStep!3320 r!26326 c!13576)) (ite c!642559 (reg!11184 (derivativeStep!3320 r!26326 c!13576)) (regTwo!22222 (derivativeStep!3320 r!26326 c!13576)))) (h!45032 tl!3933)))))

(declare-fun bm!269603 () Bool)

(assert (=> bm!269603 (= call!269608 (derivativeStep!3320 (ite c!642555 (regOne!22223 (derivativeStep!3320 r!26326 c!13576)) (regOne!22222 (derivativeStep!3320 r!26326 c!13576))) (h!45032 tl!3933)))))

(declare-fun b!3716980 () Bool)

(assert (=> b!3716980 (= e!2301437 (Concat!17126 call!269607 (derivativeStep!3320 r!26326 c!13576)))))

(declare-fun b!3716981 () Bool)

(assert (=> b!3716981 (= e!2301440 (Union!10855 (Concat!17126 call!269606 (regTwo!22222 (derivativeStep!3320 r!26326 c!13576))) EmptyLang!10855))))

(declare-fun b!3716979 () Bool)

(assert (=> b!3716979 (= e!2301440 (Union!10855 (Concat!17126 call!269606 (regTwo!22222 (derivativeStep!3320 r!26326 c!13576))) call!269607))))

(declare-fun d!1088351 () Bool)

(declare-fun lt!1297492 () Regex!10855)

(assert (=> d!1088351 (validRegex!4962 lt!1297492)))

(assert (=> d!1088351 (= lt!1297492 e!2301436)))

(declare-fun c!642556 () Bool)

(assert (=> d!1088351 (= c!642556 (or ((_ is EmptyExpr!10855) (derivativeStep!3320 r!26326 c!13576)) ((_ is EmptyLang!10855) (derivativeStep!3320 r!26326 c!13576))))))

(assert (=> d!1088351 (validRegex!4962 (derivativeStep!3320 r!26326 c!13576))))

(assert (=> d!1088351 (= (derivativeStep!3320 (derivativeStep!3320 r!26326 c!13576) (h!45032 tl!3933)) lt!1297492)))

(assert (= (and d!1088351 c!642556) b!3716976))

(assert (= (and d!1088351 (not c!642556)) b!3716972))

(assert (= (and b!3716972 c!642558) b!3716977))

(assert (= (and b!3716972 (not c!642558)) b!3716974))

(assert (= (and b!3716974 c!642555) b!3716975))

(assert (= (and b!3716974 (not c!642555)) b!3716978))

(assert (= (and b!3716978 c!642559) b!3716980))

(assert (= (and b!3716978 (not c!642559)) b!3716973))

(assert (= (and b!3716973 c!642557) b!3716979))

(assert (= (and b!3716973 (not c!642557)) b!3716981))

(assert (= (or b!3716979 b!3716981) bm!269600))

(assert (= (or b!3716980 b!3716979) bm!269601))

(assert (= (or b!3716975 bm!269601) bm!269602))

(assert (= (or b!3716975 bm!269600) bm!269603))

(declare-fun m!4222533 () Bool)

(assert (=> b!3716973 m!4222533))

(declare-fun m!4222535 () Bool)

(assert (=> bm!269602 m!4222535))

(declare-fun m!4222537 () Bool)

(assert (=> bm!269603 m!4222537))

(declare-fun m!4222539 () Bool)

(assert (=> d!1088351 m!4222539))

(assert (=> d!1088351 m!4220935))

(assert (=> d!1088351 m!4221355))

(assert (=> b!3715565 d!1088351))

(declare-fun b!3716984 () Bool)

(declare-fun e!2301441 () Bool)

(declare-fun tp!1130714 () Bool)

(assert (=> b!3716984 (= e!2301441 tp!1130714)))

(declare-fun b!3716982 () Bool)

(assert (=> b!3716982 (= e!2301441 tp_is_empty!18725)))

(declare-fun b!3716985 () Bool)

(declare-fun tp!1130713 () Bool)

(declare-fun tp!1130715 () Bool)

(assert (=> b!3716985 (= e!2301441 (and tp!1130713 tp!1130715))))

(assert (=> b!3715658 (= tp!1130562 e!2301441)))

(declare-fun b!3716983 () Bool)

(declare-fun tp!1130711 () Bool)

(declare-fun tp!1130712 () Bool)

(assert (=> b!3716983 (= e!2301441 (and tp!1130711 tp!1130712))))

(assert (= (and b!3715658 ((_ is ElementMatch!10855) (regOne!22223 (regOne!22223 r!26326)))) b!3716982))

(assert (= (and b!3715658 ((_ is Concat!17126) (regOne!22223 (regOne!22223 r!26326)))) b!3716983))

(assert (= (and b!3715658 ((_ is Star!10855) (regOne!22223 (regOne!22223 r!26326)))) b!3716984))

(assert (= (and b!3715658 ((_ is Union!10855) (regOne!22223 (regOne!22223 r!26326)))) b!3716985))

(declare-fun b!3716988 () Bool)

(declare-fun e!2301442 () Bool)

(declare-fun tp!1130719 () Bool)

(assert (=> b!3716988 (= e!2301442 tp!1130719)))

(declare-fun b!3716986 () Bool)

(assert (=> b!3716986 (= e!2301442 tp_is_empty!18725)))

(declare-fun b!3716989 () Bool)

(declare-fun tp!1130718 () Bool)

(declare-fun tp!1130720 () Bool)

(assert (=> b!3716989 (= e!2301442 (and tp!1130718 tp!1130720))))

(assert (=> b!3715658 (= tp!1130564 e!2301442)))

(declare-fun b!3716987 () Bool)

(declare-fun tp!1130716 () Bool)

(declare-fun tp!1130717 () Bool)

(assert (=> b!3716987 (= e!2301442 (and tp!1130716 tp!1130717))))

(assert (= (and b!3715658 ((_ is ElementMatch!10855) (regTwo!22223 (regOne!22223 r!26326)))) b!3716986))

(assert (= (and b!3715658 ((_ is Concat!17126) (regTwo!22223 (regOne!22223 r!26326)))) b!3716987))

(assert (= (and b!3715658 ((_ is Star!10855) (regTwo!22223 (regOne!22223 r!26326)))) b!3716988))

(assert (= (and b!3715658 ((_ is Union!10855) (regTwo!22223 (regOne!22223 r!26326)))) b!3716989))

(declare-fun b!3716992 () Bool)

(declare-fun e!2301443 () Bool)

(declare-fun tp!1130724 () Bool)

(assert (=> b!3716992 (= e!2301443 tp!1130724)))

(declare-fun b!3716990 () Bool)

(assert (=> b!3716990 (= e!2301443 tp_is_empty!18725)))

(declare-fun b!3716993 () Bool)

(declare-fun tp!1130723 () Bool)

(declare-fun tp!1130725 () Bool)

(assert (=> b!3716993 (= e!2301443 (and tp!1130723 tp!1130725))))

(assert (=> b!3715662 (= tp!1130567 e!2301443)))

(declare-fun b!3716991 () Bool)

(declare-fun tp!1130721 () Bool)

(declare-fun tp!1130722 () Bool)

(assert (=> b!3716991 (= e!2301443 (and tp!1130721 tp!1130722))))

(assert (= (and b!3715662 ((_ is ElementMatch!10855) (regOne!22223 (regTwo!22223 r!26326)))) b!3716990))

(assert (= (and b!3715662 ((_ is Concat!17126) (regOne!22223 (regTwo!22223 r!26326)))) b!3716991))

(assert (= (and b!3715662 ((_ is Star!10855) (regOne!22223 (regTwo!22223 r!26326)))) b!3716992))

(assert (= (and b!3715662 ((_ is Union!10855) (regOne!22223 (regTwo!22223 r!26326)))) b!3716993))

(declare-fun b!3716996 () Bool)

(declare-fun e!2301444 () Bool)

(declare-fun tp!1130729 () Bool)

(assert (=> b!3716996 (= e!2301444 tp!1130729)))

(declare-fun b!3716994 () Bool)

(assert (=> b!3716994 (= e!2301444 tp_is_empty!18725)))

(declare-fun b!3716997 () Bool)

(declare-fun tp!1130728 () Bool)

(declare-fun tp!1130730 () Bool)

(assert (=> b!3716997 (= e!2301444 (and tp!1130728 tp!1130730))))

(assert (=> b!3715662 (= tp!1130569 e!2301444)))

(declare-fun b!3716995 () Bool)

(declare-fun tp!1130726 () Bool)

(declare-fun tp!1130727 () Bool)

(assert (=> b!3716995 (= e!2301444 (and tp!1130726 tp!1130727))))

(assert (= (and b!3715662 ((_ is ElementMatch!10855) (regTwo!22223 (regTwo!22223 r!26326)))) b!3716994))

(assert (= (and b!3715662 ((_ is Concat!17126) (regTwo!22223 (regTwo!22223 r!26326)))) b!3716995))

(assert (= (and b!3715662 ((_ is Star!10855) (regTwo!22223 (regTwo!22223 r!26326)))) b!3716996))

(assert (= (and b!3715662 ((_ is Union!10855) (regTwo!22223 (regTwo!22223 r!26326)))) b!3716997))

(declare-fun b!3717000 () Bool)

(declare-fun e!2301445 () Bool)

(declare-fun tp!1130734 () Bool)

(assert (=> b!3717000 (= e!2301445 tp!1130734)))

(declare-fun b!3716998 () Bool)

(assert (=> b!3716998 (= e!2301445 tp_is_empty!18725)))

(declare-fun b!3717001 () Bool)

(declare-fun tp!1130733 () Bool)

(declare-fun tp!1130735 () Bool)

(assert (=> b!3717001 (= e!2301445 (and tp!1130733 tp!1130735))))

(assert (=> b!3715657 (= tp!1130563 e!2301445)))

(declare-fun b!3716999 () Bool)

(declare-fun tp!1130731 () Bool)

(declare-fun tp!1130732 () Bool)

(assert (=> b!3716999 (= e!2301445 (and tp!1130731 tp!1130732))))

(assert (= (and b!3715657 ((_ is ElementMatch!10855) (reg!11184 (regOne!22223 r!26326)))) b!3716998))

(assert (= (and b!3715657 ((_ is Concat!17126) (reg!11184 (regOne!22223 r!26326)))) b!3716999))

(assert (= (and b!3715657 ((_ is Star!10855) (reg!11184 (regOne!22223 r!26326)))) b!3717000))

(assert (= (and b!3715657 ((_ is Union!10855) (reg!11184 (regOne!22223 r!26326)))) b!3717001))

(declare-fun b!3717004 () Bool)

(declare-fun e!2301446 () Bool)

(declare-fun tp!1130739 () Bool)

(assert (=> b!3717004 (= e!2301446 tp!1130739)))

(declare-fun b!3717002 () Bool)

(assert (=> b!3717002 (= e!2301446 tp_is_empty!18725)))

(declare-fun b!3717005 () Bool)

(declare-fun tp!1130738 () Bool)

(declare-fun tp!1130740 () Bool)

(assert (=> b!3717005 (= e!2301446 (and tp!1130738 tp!1130740))))

(assert (=> b!3715668 (= tp!1130575 e!2301446)))

(declare-fun b!3717003 () Bool)

(declare-fun tp!1130736 () Bool)

(declare-fun tp!1130737 () Bool)

(assert (=> b!3717003 (= e!2301446 (and tp!1130736 tp!1130737))))

(assert (= (and b!3715668 ((_ is ElementMatch!10855) (regOne!22222 (regOne!22222 r!26326)))) b!3717002))

(assert (= (and b!3715668 ((_ is Concat!17126) (regOne!22222 (regOne!22222 r!26326)))) b!3717003))

(assert (= (and b!3715668 ((_ is Star!10855) (regOne!22222 (regOne!22222 r!26326)))) b!3717004))

(assert (= (and b!3715668 ((_ is Union!10855) (regOne!22222 (regOne!22222 r!26326)))) b!3717005))

(declare-fun b!3717008 () Bool)

(declare-fun e!2301447 () Bool)

(declare-fun tp!1130744 () Bool)

(assert (=> b!3717008 (= e!2301447 tp!1130744)))

(declare-fun b!3717006 () Bool)

(assert (=> b!3717006 (= e!2301447 tp_is_empty!18725)))

(declare-fun b!3717009 () Bool)

(declare-fun tp!1130743 () Bool)

(declare-fun tp!1130745 () Bool)

(assert (=> b!3717009 (= e!2301447 (and tp!1130743 tp!1130745))))

(assert (=> b!3715668 (= tp!1130576 e!2301447)))

(declare-fun b!3717007 () Bool)

(declare-fun tp!1130741 () Bool)

(declare-fun tp!1130742 () Bool)

(assert (=> b!3717007 (= e!2301447 (and tp!1130741 tp!1130742))))

(assert (= (and b!3715668 ((_ is ElementMatch!10855) (regTwo!22222 (regOne!22222 r!26326)))) b!3717006))

(assert (= (and b!3715668 ((_ is Concat!17126) (regTwo!22222 (regOne!22222 r!26326)))) b!3717007))

(assert (= (and b!3715668 ((_ is Star!10855) (regTwo!22222 (regOne!22222 r!26326)))) b!3717008))

(assert (= (and b!3715668 ((_ is Union!10855) (regTwo!22222 (regOne!22222 r!26326)))) b!3717009))

(declare-fun b!3717010 () Bool)

(declare-fun e!2301448 () Bool)

(declare-fun tp!1130746 () Bool)

(assert (=> b!3717010 (= e!2301448 (and tp_is_empty!18725 tp!1130746))))

(assert (=> b!3715644 (= tp!1130549 e!2301448)))

(assert (= (and b!3715644 ((_ is Cons!39612) (t!302419 (t!302419 tl!3933)))) b!3717010))

(declare-fun b!3717013 () Bool)

(declare-fun e!2301449 () Bool)

(declare-fun tp!1130750 () Bool)

(assert (=> b!3717013 (= e!2301449 tp!1130750)))

(declare-fun b!3717011 () Bool)

(assert (=> b!3717011 (= e!2301449 tp_is_empty!18725)))

(declare-fun b!3717014 () Bool)

(declare-fun tp!1130749 () Bool)

(declare-fun tp!1130751 () Bool)

(assert (=> b!3717014 (= e!2301449 (and tp!1130749 tp!1130751))))

(assert (=> b!3715672 (= tp!1130580 e!2301449)))

(declare-fun b!3717012 () Bool)

(declare-fun tp!1130747 () Bool)

(declare-fun tp!1130748 () Bool)

(assert (=> b!3717012 (= e!2301449 (and tp!1130747 tp!1130748))))

(assert (= (and b!3715672 ((_ is ElementMatch!10855) (regOne!22222 (regTwo!22222 r!26326)))) b!3717011))

(assert (= (and b!3715672 ((_ is Concat!17126) (regOne!22222 (regTwo!22222 r!26326)))) b!3717012))

(assert (= (and b!3715672 ((_ is Star!10855) (regOne!22222 (regTwo!22222 r!26326)))) b!3717013))

(assert (= (and b!3715672 ((_ is Union!10855) (regOne!22222 (regTwo!22222 r!26326)))) b!3717014))

(declare-fun b!3717017 () Bool)

(declare-fun e!2301450 () Bool)

(declare-fun tp!1130755 () Bool)

(assert (=> b!3717017 (= e!2301450 tp!1130755)))

(declare-fun b!3717015 () Bool)

(assert (=> b!3717015 (= e!2301450 tp_is_empty!18725)))

(declare-fun b!3717018 () Bool)

(declare-fun tp!1130754 () Bool)

(declare-fun tp!1130756 () Bool)

(assert (=> b!3717018 (= e!2301450 (and tp!1130754 tp!1130756))))

(assert (=> b!3715672 (= tp!1130581 e!2301450)))

(declare-fun b!3717016 () Bool)

(declare-fun tp!1130752 () Bool)

(declare-fun tp!1130753 () Bool)

(assert (=> b!3717016 (= e!2301450 (and tp!1130752 tp!1130753))))

(assert (= (and b!3715672 ((_ is ElementMatch!10855) (regTwo!22222 (regTwo!22222 r!26326)))) b!3717015))

(assert (= (and b!3715672 ((_ is Concat!17126) (regTwo!22222 (regTwo!22222 r!26326)))) b!3717016))

(assert (= (and b!3715672 ((_ is Star!10855) (regTwo!22222 (regTwo!22222 r!26326)))) b!3717017))

(assert (= (and b!3715672 ((_ is Union!10855) (regTwo!22222 (regTwo!22222 r!26326)))) b!3717018))

(declare-fun b!3717021 () Bool)

(declare-fun e!2301451 () Bool)

(declare-fun tp!1130760 () Bool)

(assert (=> b!3717021 (= e!2301451 tp!1130760)))

(declare-fun b!3717019 () Bool)

(assert (=> b!3717019 (= e!2301451 tp_is_empty!18725)))

(declare-fun b!3717022 () Bool)

(declare-fun tp!1130759 () Bool)

(declare-fun tp!1130761 () Bool)

(assert (=> b!3717022 (= e!2301451 (and tp!1130759 tp!1130761))))

(assert (=> b!3715674 (= tp!1130582 e!2301451)))

(declare-fun b!3717020 () Bool)

(declare-fun tp!1130757 () Bool)

(declare-fun tp!1130758 () Bool)

(assert (=> b!3717020 (= e!2301451 (and tp!1130757 tp!1130758))))

(assert (= (and b!3715674 ((_ is ElementMatch!10855) (regOne!22223 (regTwo!22222 r!26326)))) b!3717019))

(assert (= (and b!3715674 ((_ is Concat!17126) (regOne!22223 (regTwo!22222 r!26326)))) b!3717020))

(assert (= (and b!3715674 ((_ is Star!10855) (regOne!22223 (regTwo!22222 r!26326)))) b!3717021))

(assert (= (and b!3715674 ((_ is Union!10855) (regOne!22223 (regTwo!22222 r!26326)))) b!3717022))

(declare-fun b!3717025 () Bool)

(declare-fun e!2301452 () Bool)

(declare-fun tp!1130765 () Bool)

(assert (=> b!3717025 (= e!2301452 tp!1130765)))

(declare-fun b!3717023 () Bool)

(assert (=> b!3717023 (= e!2301452 tp_is_empty!18725)))

(declare-fun b!3717026 () Bool)

(declare-fun tp!1130764 () Bool)

(declare-fun tp!1130766 () Bool)

(assert (=> b!3717026 (= e!2301452 (and tp!1130764 tp!1130766))))

(assert (=> b!3715674 (= tp!1130584 e!2301452)))

(declare-fun b!3717024 () Bool)

(declare-fun tp!1130762 () Bool)

(declare-fun tp!1130763 () Bool)

(assert (=> b!3717024 (= e!2301452 (and tp!1130762 tp!1130763))))

(assert (= (and b!3715674 ((_ is ElementMatch!10855) (regTwo!22223 (regTwo!22222 r!26326)))) b!3717023))

(assert (= (and b!3715674 ((_ is Concat!17126) (regTwo!22223 (regTwo!22222 r!26326)))) b!3717024))

(assert (= (and b!3715674 ((_ is Star!10855) (regTwo!22223 (regTwo!22222 r!26326)))) b!3717025))

(assert (= (and b!3715674 ((_ is Union!10855) (regTwo!22223 (regTwo!22222 r!26326)))) b!3717026))

(declare-fun b!3717029 () Bool)

(declare-fun e!2301453 () Bool)

(declare-fun tp!1130770 () Bool)

(assert (=> b!3717029 (= e!2301453 tp!1130770)))

(declare-fun b!3717027 () Bool)

(assert (=> b!3717027 (= e!2301453 tp_is_empty!18725)))

(declare-fun b!3717030 () Bool)

(declare-fun tp!1130769 () Bool)

(declare-fun tp!1130771 () Bool)

(assert (=> b!3717030 (= e!2301453 (and tp!1130769 tp!1130771))))

(assert (=> b!3715660 (= tp!1130565 e!2301453)))

(declare-fun b!3717028 () Bool)

(declare-fun tp!1130767 () Bool)

(declare-fun tp!1130768 () Bool)

(assert (=> b!3717028 (= e!2301453 (and tp!1130767 tp!1130768))))

(assert (= (and b!3715660 ((_ is ElementMatch!10855) (regOne!22222 (regTwo!22223 r!26326)))) b!3717027))

(assert (= (and b!3715660 ((_ is Concat!17126) (regOne!22222 (regTwo!22223 r!26326)))) b!3717028))

(assert (= (and b!3715660 ((_ is Star!10855) (regOne!22222 (regTwo!22223 r!26326)))) b!3717029))

(assert (= (and b!3715660 ((_ is Union!10855) (regOne!22222 (regTwo!22223 r!26326)))) b!3717030))

(declare-fun b!3717033 () Bool)

(declare-fun e!2301454 () Bool)

(declare-fun tp!1130775 () Bool)

(assert (=> b!3717033 (= e!2301454 tp!1130775)))

(declare-fun b!3717031 () Bool)

(assert (=> b!3717031 (= e!2301454 tp_is_empty!18725)))

(declare-fun b!3717034 () Bool)

(declare-fun tp!1130774 () Bool)

(declare-fun tp!1130776 () Bool)

(assert (=> b!3717034 (= e!2301454 (and tp!1130774 tp!1130776))))

(assert (=> b!3715660 (= tp!1130566 e!2301454)))

(declare-fun b!3717032 () Bool)

(declare-fun tp!1130772 () Bool)

(declare-fun tp!1130773 () Bool)

(assert (=> b!3717032 (= e!2301454 (and tp!1130772 tp!1130773))))

(assert (= (and b!3715660 ((_ is ElementMatch!10855) (regTwo!22222 (regTwo!22223 r!26326)))) b!3717031))

(assert (= (and b!3715660 ((_ is Concat!17126) (regTwo!22222 (regTwo!22223 r!26326)))) b!3717032))

(assert (= (and b!3715660 ((_ is Star!10855) (regTwo!22222 (regTwo!22223 r!26326)))) b!3717033))

(assert (= (and b!3715660 ((_ is Union!10855) (regTwo!22222 (regTwo!22223 r!26326)))) b!3717034))

(declare-fun b!3717037 () Bool)

(declare-fun e!2301455 () Bool)

(declare-fun tp!1130780 () Bool)

(assert (=> b!3717037 (= e!2301455 tp!1130780)))

(declare-fun b!3717035 () Bool)

(assert (=> b!3717035 (= e!2301455 tp_is_empty!18725)))

(declare-fun b!3717038 () Bool)

(declare-fun tp!1130779 () Bool)

(declare-fun tp!1130781 () Bool)

(assert (=> b!3717038 (= e!2301455 (and tp!1130779 tp!1130781))))

(assert (=> b!3715669 (= tp!1130578 e!2301455)))

(declare-fun b!3717036 () Bool)

(declare-fun tp!1130777 () Bool)

(declare-fun tp!1130778 () Bool)

(assert (=> b!3717036 (= e!2301455 (and tp!1130777 tp!1130778))))

(assert (= (and b!3715669 ((_ is ElementMatch!10855) (reg!11184 (regOne!22222 r!26326)))) b!3717035))

(assert (= (and b!3715669 ((_ is Concat!17126) (reg!11184 (regOne!22222 r!26326)))) b!3717036))

(assert (= (and b!3715669 ((_ is Star!10855) (reg!11184 (regOne!22222 r!26326)))) b!3717037))

(assert (= (and b!3715669 ((_ is Union!10855) (reg!11184 (regOne!22222 r!26326)))) b!3717038))

(declare-fun b!3717041 () Bool)

(declare-fun e!2301456 () Bool)

(declare-fun tp!1130785 () Bool)

(assert (=> b!3717041 (= e!2301456 tp!1130785)))

(declare-fun b!3717039 () Bool)

(assert (=> b!3717039 (= e!2301456 tp_is_empty!18725)))

(declare-fun b!3717042 () Bool)

(declare-fun tp!1130784 () Bool)

(declare-fun tp!1130786 () Bool)

(assert (=> b!3717042 (= e!2301456 (and tp!1130784 tp!1130786))))

(assert (=> b!3715664 (= tp!1130570 e!2301456)))

(declare-fun b!3717040 () Bool)

(declare-fun tp!1130782 () Bool)

(declare-fun tp!1130783 () Bool)

(assert (=> b!3717040 (= e!2301456 (and tp!1130782 tp!1130783))))

(assert (= (and b!3715664 ((_ is ElementMatch!10855) (regOne!22222 (reg!11184 r!26326)))) b!3717039))

(assert (= (and b!3715664 ((_ is Concat!17126) (regOne!22222 (reg!11184 r!26326)))) b!3717040))

(assert (= (and b!3715664 ((_ is Star!10855) (regOne!22222 (reg!11184 r!26326)))) b!3717041))

(assert (= (and b!3715664 ((_ is Union!10855) (regOne!22222 (reg!11184 r!26326)))) b!3717042))

(declare-fun b!3717045 () Bool)

(declare-fun e!2301457 () Bool)

(declare-fun tp!1130790 () Bool)

(assert (=> b!3717045 (= e!2301457 tp!1130790)))

(declare-fun b!3717043 () Bool)

(assert (=> b!3717043 (= e!2301457 tp_is_empty!18725)))

(declare-fun b!3717046 () Bool)

(declare-fun tp!1130789 () Bool)

(declare-fun tp!1130791 () Bool)

(assert (=> b!3717046 (= e!2301457 (and tp!1130789 tp!1130791))))

(assert (=> b!3715664 (= tp!1130571 e!2301457)))

(declare-fun b!3717044 () Bool)

(declare-fun tp!1130787 () Bool)

(declare-fun tp!1130788 () Bool)

(assert (=> b!3717044 (= e!2301457 (and tp!1130787 tp!1130788))))

(assert (= (and b!3715664 ((_ is ElementMatch!10855) (regTwo!22222 (reg!11184 r!26326)))) b!3717043))

(assert (= (and b!3715664 ((_ is Concat!17126) (regTwo!22222 (reg!11184 r!26326)))) b!3717044))

(assert (= (and b!3715664 ((_ is Star!10855) (regTwo!22222 (reg!11184 r!26326)))) b!3717045))

(assert (= (and b!3715664 ((_ is Union!10855) (regTwo!22222 (reg!11184 r!26326)))) b!3717046))

(declare-fun b!3717049 () Bool)

(declare-fun e!2301458 () Bool)

(declare-fun tp!1130795 () Bool)

(assert (=> b!3717049 (= e!2301458 tp!1130795)))

(declare-fun b!3717047 () Bool)

(assert (=> b!3717047 (= e!2301458 tp_is_empty!18725)))

(declare-fun b!3717050 () Bool)

(declare-fun tp!1130794 () Bool)

(declare-fun tp!1130796 () Bool)

(assert (=> b!3717050 (= e!2301458 (and tp!1130794 tp!1130796))))

(assert (=> b!3715673 (= tp!1130583 e!2301458)))

(declare-fun b!3717048 () Bool)

(declare-fun tp!1130792 () Bool)

(declare-fun tp!1130793 () Bool)

(assert (=> b!3717048 (= e!2301458 (and tp!1130792 tp!1130793))))

(assert (= (and b!3715673 ((_ is ElementMatch!10855) (reg!11184 (regTwo!22222 r!26326)))) b!3717047))

(assert (= (and b!3715673 ((_ is Concat!17126) (reg!11184 (regTwo!22222 r!26326)))) b!3717048))

(assert (= (and b!3715673 ((_ is Star!10855) (reg!11184 (regTwo!22222 r!26326)))) b!3717049))

(assert (= (and b!3715673 ((_ is Union!10855) (reg!11184 (regTwo!22222 r!26326)))) b!3717050))

(declare-fun b!3717053 () Bool)

(declare-fun e!2301459 () Bool)

(declare-fun tp!1130800 () Bool)

(assert (=> b!3717053 (= e!2301459 tp!1130800)))

(declare-fun b!3717051 () Bool)

(assert (=> b!3717051 (= e!2301459 tp_is_empty!18725)))

(declare-fun b!3717054 () Bool)

(declare-fun tp!1130799 () Bool)

(declare-fun tp!1130801 () Bool)

(assert (=> b!3717054 (= e!2301459 (and tp!1130799 tp!1130801))))

(assert (=> b!3715666 (= tp!1130572 e!2301459)))

(declare-fun b!3717052 () Bool)

(declare-fun tp!1130797 () Bool)

(declare-fun tp!1130798 () Bool)

(assert (=> b!3717052 (= e!2301459 (and tp!1130797 tp!1130798))))

(assert (= (and b!3715666 ((_ is ElementMatch!10855) (regOne!22223 (reg!11184 r!26326)))) b!3717051))

(assert (= (and b!3715666 ((_ is Concat!17126) (regOne!22223 (reg!11184 r!26326)))) b!3717052))

(assert (= (and b!3715666 ((_ is Star!10855) (regOne!22223 (reg!11184 r!26326)))) b!3717053))

(assert (= (and b!3715666 ((_ is Union!10855) (regOne!22223 (reg!11184 r!26326)))) b!3717054))

(declare-fun b!3717057 () Bool)

(declare-fun e!2301460 () Bool)

(declare-fun tp!1130805 () Bool)

(assert (=> b!3717057 (= e!2301460 tp!1130805)))

(declare-fun b!3717055 () Bool)

(assert (=> b!3717055 (= e!2301460 tp_is_empty!18725)))

(declare-fun b!3717058 () Bool)

(declare-fun tp!1130804 () Bool)

(declare-fun tp!1130806 () Bool)

(assert (=> b!3717058 (= e!2301460 (and tp!1130804 tp!1130806))))

(assert (=> b!3715666 (= tp!1130574 e!2301460)))

(declare-fun b!3717056 () Bool)

(declare-fun tp!1130802 () Bool)

(declare-fun tp!1130803 () Bool)

(assert (=> b!3717056 (= e!2301460 (and tp!1130802 tp!1130803))))

(assert (= (and b!3715666 ((_ is ElementMatch!10855) (regTwo!22223 (reg!11184 r!26326)))) b!3717055))

(assert (= (and b!3715666 ((_ is Concat!17126) (regTwo!22223 (reg!11184 r!26326)))) b!3717056))

(assert (= (and b!3715666 ((_ is Star!10855) (regTwo!22223 (reg!11184 r!26326)))) b!3717057))

(assert (= (and b!3715666 ((_ is Union!10855) (regTwo!22223 (reg!11184 r!26326)))) b!3717058))

(declare-fun b!3717061 () Bool)

(declare-fun e!2301461 () Bool)

(declare-fun tp!1130810 () Bool)

(assert (=> b!3717061 (= e!2301461 tp!1130810)))

(declare-fun b!3717059 () Bool)

(assert (=> b!3717059 (= e!2301461 tp_is_empty!18725)))

(declare-fun b!3717062 () Bool)

(declare-fun tp!1130809 () Bool)

(declare-fun tp!1130811 () Bool)

(assert (=> b!3717062 (= e!2301461 (and tp!1130809 tp!1130811))))

(assert (=> b!3715661 (= tp!1130568 e!2301461)))

(declare-fun b!3717060 () Bool)

(declare-fun tp!1130807 () Bool)

(declare-fun tp!1130808 () Bool)

(assert (=> b!3717060 (= e!2301461 (and tp!1130807 tp!1130808))))

(assert (= (and b!3715661 ((_ is ElementMatch!10855) (reg!11184 (regTwo!22223 r!26326)))) b!3717059))

(assert (= (and b!3715661 ((_ is Concat!17126) (reg!11184 (regTwo!22223 r!26326)))) b!3717060))

(assert (= (and b!3715661 ((_ is Star!10855) (reg!11184 (regTwo!22223 r!26326)))) b!3717061))

(assert (= (and b!3715661 ((_ is Union!10855) (reg!11184 (regTwo!22223 r!26326)))) b!3717062))

(declare-fun b!3717065 () Bool)

(declare-fun e!2301462 () Bool)

(declare-fun tp!1130815 () Bool)

(assert (=> b!3717065 (= e!2301462 tp!1130815)))

(declare-fun b!3717063 () Bool)

(assert (=> b!3717063 (= e!2301462 tp_is_empty!18725)))

(declare-fun b!3717066 () Bool)

(declare-fun tp!1130814 () Bool)

(declare-fun tp!1130816 () Bool)

(assert (=> b!3717066 (= e!2301462 (and tp!1130814 tp!1130816))))

(assert (=> b!3715670 (= tp!1130577 e!2301462)))

(declare-fun b!3717064 () Bool)

(declare-fun tp!1130812 () Bool)

(declare-fun tp!1130813 () Bool)

(assert (=> b!3717064 (= e!2301462 (and tp!1130812 tp!1130813))))

(assert (= (and b!3715670 ((_ is ElementMatch!10855) (regOne!22223 (regOne!22222 r!26326)))) b!3717063))

(assert (= (and b!3715670 ((_ is Concat!17126) (regOne!22223 (regOne!22222 r!26326)))) b!3717064))

(assert (= (and b!3715670 ((_ is Star!10855) (regOne!22223 (regOne!22222 r!26326)))) b!3717065))

(assert (= (and b!3715670 ((_ is Union!10855) (regOne!22223 (regOne!22222 r!26326)))) b!3717066))

(declare-fun b!3717069 () Bool)

(declare-fun e!2301463 () Bool)

(declare-fun tp!1130820 () Bool)

(assert (=> b!3717069 (= e!2301463 tp!1130820)))

(declare-fun b!3717067 () Bool)

(assert (=> b!3717067 (= e!2301463 tp_is_empty!18725)))

(declare-fun b!3717070 () Bool)

(declare-fun tp!1130819 () Bool)

(declare-fun tp!1130821 () Bool)

(assert (=> b!3717070 (= e!2301463 (and tp!1130819 tp!1130821))))

(assert (=> b!3715670 (= tp!1130579 e!2301463)))

(declare-fun b!3717068 () Bool)

(declare-fun tp!1130817 () Bool)

(declare-fun tp!1130818 () Bool)

(assert (=> b!3717068 (= e!2301463 (and tp!1130817 tp!1130818))))

(assert (= (and b!3715670 ((_ is ElementMatch!10855) (regTwo!22223 (regOne!22222 r!26326)))) b!3717067))

(assert (= (and b!3715670 ((_ is Concat!17126) (regTwo!22223 (regOne!22222 r!26326)))) b!3717068))

(assert (= (and b!3715670 ((_ is Star!10855) (regTwo!22223 (regOne!22222 r!26326)))) b!3717069))

(assert (= (and b!3715670 ((_ is Union!10855) (regTwo!22223 (regOne!22222 r!26326)))) b!3717070))

(declare-fun b!3717073 () Bool)

(declare-fun e!2301464 () Bool)

(declare-fun tp!1130825 () Bool)

(assert (=> b!3717073 (= e!2301464 tp!1130825)))

(declare-fun b!3717071 () Bool)

(assert (=> b!3717071 (= e!2301464 tp_is_empty!18725)))

(declare-fun b!3717074 () Bool)

(declare-fun tp!1130824 () Bool)

(declare-fun tp!1130826 () Bool)

(assert (=> b!3717074 (= e!2301464 (and tp!1130824 tp!1130826))))

(assert (=> b!3715656 (= tp!1130560 e!2301464)))

(declare-fun b!3717072 () Bool)

(declare-fun tp!1130822 () Bool)

(declare-fun tp!1130823 () Bool)

(assert (=> b!3717072 (= e!2301464 (and tp!1130822 tp!1130823))))

(assert (= (and b!3715656 ((_ is ElementMatch!10855) (regOne!22222 (regOne!22223 r!26326)))) b!3717071))

(assert (= (and b!3715656 ((_ is Concat!17126) (regOne!22222 (regOne!22223 r!26326)))) b!3717072))

(assert (= (and b!3715656 ((_ is Star!10855) (regOne!22222 (regOne!22223 r!26326)))) b!3717073))

(assert (= (and b!3715656 ((_ is Union!10855) (regOne!22222 (regOne!22223 r!26326)))) b!3717074))

(declare-fun b!3717077 () Bool)

(declare-fun e!2301465 () Bool)

(declare-fun tp!1130830 () Bool)

(assert (=> b!3717077 (= e!2301465 tp!1130830)))

(declare-fun b!3717075 () Bool)

(assert (=> b!3717075 (= e!2301465 tp_is_empty!18725)))

(declare-fun b!3717078 () Bool)

(declare-fun tp!1130829 () Bool)

(declare-fun tp!1130831 () Bool)

(assert (=> b!3717078 (= e!2301465 (and tp!1130829 tp!1130831))))

(assert (=> b!3715656 (= tp!1130561 e!2301465)))

(declare-fun b!3717076 () Bool)

(declare-fun tp!1130827 () Bool)

(declare-fun tp!1130828 () Bool)

(assert (=> b!3717076 (= e!2301465 (and tp!1130827 tp!1130828))))

(assert (= (and b!3715656 ((_ is ElementMatch!10855) (regTwo!22222 (regOne!22223 r!26326)))) b!3717075))

(assert (= (and b!3715656 ((_ is Concat!17126) (regTwo!22222 (regOne!22223 r!26326)))) b!3717076))

(assert (= (and b!3715656 ((_ is Star!10855) (regTwo!22222 (regOne!22223 r!26326)))) b!3717077))

(assert (= (and b!3715656 ((_ is Union!10855) (regTwo!22222 (regOne!22223 r!26326)))) b!3717078))

(declare-fun b!3717081 () Bool)

(declare-fun e!2301466 () Bool)

(declare-fun tp!1130835 () Bool)

(assert (=> b!3717081 (= e!2301466 tp!1130835)))

(declare-fun b!3717079 () Bool)

(assert (=> b!3717079 (= e!2301466 tp_is_empty!18725)))

(declare-fun b!3717082 () Bool)

(declare-fun tp!1130834 () Bool)

(declare-fun tp!1130836 () Bool)

(assert (=> b!3717082 (= e!2301466 (and tp!1130834 tp!1130836))))

(assert (=> b!3715665 (= tp!1130573 e!2301466)))

(declare-fun b!3717080 () Bool)

(declare-fun tp!1130832 () Bool)

(declare-fun tp!1130833 () Bool)

(assert (=> b!3717080 (= e!2301466 (and tp!1130832 tp!1130833))))

(assert (= (and b!3715665 ((_ is ElementMatch!10855) (reg!11184 (reg!11184 r!26326)))) b!3717079))

(assert (= (and b!3715665 ((_ is Concat!17126) (reg!11184 (reg!11184 r!26326)))) b!3717080))

(assert (= (and b!3715665 ((_ is Star!10855) (reg!11184 (reg!11184 r!26326)))) b!3717081))

(assert (= (and b!3715665 ((_ is Union!10855) (reg!11184 (reg!11184 r!26326)))) b!3717082))

(check-sat (not b!3716818) (not b!3716996) (not b!3716773) (not b!3716364) (not b!3717072) (not bm!269484) (not bm!269501) (not b!3716746) (not bm!269557) (not d!1088351) (not b!3716799) (not b!3717004) (not b!3716785) (not d!1088331) (not b!3716686) (not b!3716819) (not d!1088307) (not bm!269571) (not b!3716641) (not bm!269527) (not b!3716553) (not b!3716359) (not b!3717036) (not b!3716891) (not bm!269547) (not b!3716973) (not b!3716499) (not d!1088311) (not b!3717044) (not d!1088133) (not b!3716756) (not d!1088257) (not bm!269532) (not b!3717028) (not d!1088237) (not b!3716269) (not bm!269570) (not bm!269521) (not bm!269524) (not b!3717064) (not bm!269598) (not b!3717040) (not b!3717026) (not b!3716909) (not bm!269401) (not bm!269476) (not bm!269591) (not b!3717053) (not bm!269525) (not d!1088191) (not bm!269588) (not d!1088275) (not b!3716642) (not bm!269497) (not b!3716644) (not bm!269580) (not b!3716504) (not d!1088197) (not d!1088057) (not d!1088219) (not b!3717073) (not b!3716911) (not b!3716355) (not b!3716451) (not bm!269427) (not b!3717042) (not b!3716583) (not bm!269534) (not b!3716832) (not d!1088347) (not d!1088225) (not b!3716827) (not b!3716992) (not b!3717058) (not b!3717082) (not b!3716356) (not b!3716999) (not b!3716843) (not b!3716713) (not b!3717008) (not b!3716490) (not b!3716613) (not bm!269452) (not b!3716064) (not b!3716534) (not b!3716204) (not b!3716518) (not b!3716836) (not b!3716936) (not b!3716650) (not bm!269546) (not b!3716063) (not b!3716784) (not bm!269577) (not b!3716917) (not d!1088203) (not b!3717022) (not b!3717077) (not b!3716456) (not b!3717037) (not bm!269552) (not b!3717056) (not b!3716764) (not b!3716507) (not bm!269478) (not b!3716985) (not b!3717074) (not b!3716548) (not b!3716814) (not bm!269509) (not b!3716781) (not b!3716074) (not bm!269595) (not bm!269515) (not b!3716208) (not b!3717024) (not b!3716940) (not b!3716358) (not d!1088231) (not b!3717062) (not b!3716572) (not b!3717052) (not b!3717050) (not b!3716930) (not b!3716882) (not b!3716405) (not b!3716983) (not b!3716604) (not b!3717030) (not b!3717068) (not b!3716993) (not b!3716351) (not b!3716172) (not bm!269503) (not b!3716991) (not b!3716853) (not b!3716563) (not bm!269554) (not b!3716989) (not d!1088217) (not b!3717021) (not bm!269465) (not bm!269567) (not b!3716997) (not b!3717038) (not d!1088101) (not b!3717003) (not d!1088081) (not b!3716835) (not b!3716709) (not b!3717001) (not bm!269410) (not d!1088239) (not b!3716921) (not b!3717048) (not d!1088243) (not d!1088281) (not b!3717081) (not d!1088343) (not b!3716100) (not b!3716788) (not b!3717069) (not b!3716941) (not b!3717007) (not bm!269466) (not b!3716514) (not b!3716450) (not bm!269548) (not bm!269542) (not bm!269494) (not bm!269568) (not b!3717032) (not bm!269535) (not bm!269549) (not b!3716912) (not b!3716668) (not b!3717046) (not bm!269551) (not b!3716531) (not bm!269574) (not bm!269530) (not d!1088165) (not bm!269589) (not d!1088155) (not b!3717060) (not b!3716574) (not b!3716970) (not bm!269474) (not b!3716448) (not bm!269504) (not b!3716961) (not b!3716984) (not b!3716677) (not bm!269505) (not d!1088337) (not d!1088277) (not b!3716617) (not b!3716564) (not d!1088305) (not bm!269491) (not d!1088253) (not bm!269564) (not b!3717076) (not bm!269585) (not b!3716702) (not b!3716637) (not b!3716987) (not b!3717010) (not b!3716873) (not b!3716566) (not b!3716567) (not b!3717029) (not b!3716833) (not b!3716224) (not b!3716628) (not d!1088173) (not b!3717005) (not bm!269481) (not bm!269483) (not b!3716780) (not d!1088129) (not bm!269443) (not d!1088335) (not b!3717033) (not bm!269514) (not d!1088293) (not b!3716547) (not b!3716943) (not b!3717065) (not bm!269482) (not bm!269442) (not bm!269599) (not b!3716069) (not b!3716711) (not bm!269492) (not bm!269573) (not b!3716949) (not b!3716790) (not b!3716620) (not bm!269558) (not d!1088291) (not b!3717018) (not d!1088295) (not bm!269569) (not b!3717000) (not d!1088329) (not bm!269531) (not bm!269475) (not b!3717070) (not bm!269594) (not bm!269586) (not bm!269490) (not bm!269489) (not b!3717078) (not bm!269602) (not b!3716662) (not bm!269435) (not bm!269584) (not b!3716822) (not bm!269502) (not b!3717025) (not b!3716506) (not b!3716758) (not b!3716068) (not bm!269583) (not b!3716791) (not d!1088255) (not b!3716904) (not b!3716995) (not b!3716821) (not d!1088159) (not b!3716652) (not b!3716645) (not b!3716744) (not bm!269522) (not bm!269434) (not d!1088201) (not b!3717009) (not b!3716908) (not d!1088333) (not bm!269520) (not b!3716841) (not d!1088161) (not bm!269582) (not b!3716621) (not b!3716533) (not b!3716828) (not d!1088235) (not b!3717049) (not b!3716443) (not b!3716806) (not b!3717016) (not b!3716759) (not d!1088113) (not d!1088289) (not b!3716512) (not d!1088315) (not bm!269516) (not bm!269519) (not b!3717013) (not bm!269543) (not d!1088233) (not b!3716787) (not bm!269563) (not b!3716529) (not d!1088345) (not d!1088167) (not b!3717080) (not b!3716537) (not bm!269555) (not b!3716951) (not bm!269453) (not b!3716503) (not b!3717017) (not d!1088349) (not b!3716055) (not b!3716789) (not b!3716447) (not d!1088067) (not b!3717061) (not b!3716794) (not b!3717041) (not b!3717012) (not b!3716701) (not b!3716559) (not b!3717045) (not bm!269603) (not b!3717057) (not bm!269528) (not d!1088193) (not b!3717014) (not b!3717034) (not bm!269576) (not b!3716626) (not bm!269411) (not bm!269536) (not d!1088175) (not bm!269426) (not bm!269560) (not b!3716663) (not d!1088313) (not d!1088309) (not bm!269579) (not d!1088221) (not bm!269485) (not d!1088299) (not b!3717066) (not b!3716618) (not bm!269498) (not bm!269559) (not bm!269510) tp_is_empty!18725 (not b!3717054) (not b!3716944) (not b!3717020) (not b!3716586) (not b!3716988) (not b!3716327) (not bm!269511))
(check-sat)
