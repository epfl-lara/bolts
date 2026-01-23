; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!244426 () Bool)

(assert start!244426)

(declare-fun b!2504841 () Bool)

(declare-fun e!1588280 () Bool)

(declare-fun e!1588276 () Bool)

(assert (=> b!2504841 (= e!1588280 e!1588276)))

(declare-fun res!1059038 () Bool)

(assert (=> b!2504841 (=> res!1059038 e!1588276)))

(declare-datatypes ((C!15010 0))(
  ( (C!15011 (val!9157 Int)) )
))
(declare-datatypes ((List!29491 0))(
  ( (Nil!29391) (Cons!29391 (h!34811 C!15010) (t!211190 List!29491)) )
))
(declare-datatypes ((tuple2!29430 0))(
  ( (tuple2!29431 (_1!17257 List!29491) (_2!17257 List!29491)) )
))
(declare-fun lt!896446 () tuple2!29430)

(declare-fun tl!4068 () List!29491)

(declare-fun ++!7186 (List!29491 List!29491) List!29491)

(assert (=> b!2504841 (= res!1059038 (not (= (++!7186 (_1!17257 lt!896446) (_2!17257 lt!896446)) tl!4068)))))

(declare-datatypes ((Option!5835 0))(
  ( (None!5834) (Some!5834 (v!31765 tuple2!29430)) )
))
(declare-fun lt!896437 () Option!5835)

(declare-fun get!9129 (Option!5835) tuple2!29430)

(assert (=> b!2504841 (= lt!896446 (get!9129 lt!896437))))

(declare-fun isDefined!4657 (Option!5835) Bool)

(assert (=> b!2504841 (isDefined!4657 lt!896437)))

(declare-datatypes ((Regex!7426 0))(
  ( (ElementMatch!7426 (c!398766 C!15010)) (Concat!12122 (regOne!15364 Regex!7426) (regTwo!15364 Regex!7426)) (EmptyExpr!7426) (Star!7426 (reg!7755 Regex!7426)) (EmptyLang!7426) (Union!7426 (regOne!15365 Regex!7426) (regTwo!15365 Regex!7426)) )
))
(declare-fun r!27340 () Regex!7426)

(declare-fun lt!896440 () Regex!7426)

(declare-fun findConcatSeparation!857 (Regex!7426 Regex!7426 List!29491 List!29491 List!29491) Option!5835)

(assert (=> b!2504841 (= lt!896437 (findConcatSeparation!857 lt!896440 (regTwo!15364 r!27340) Nil!29391 tl!4068 tl!4068))))

(declare-datatypes ((Unit!43109 0))(
  ( (Unit!43110) )
))
(declare-fun lt!896438 () Unit!43109)

(declare-fun lemmaConcatAcceptsStringThenFindSeparationIsDefined!139 (Regex!7426 Regex!7426 List!29491) Unit!43109)

(assert (=> b!2504841 (= lt!896438 (lemmaConcatAcceptsStringThenFindSeparationIsDefined!139 lt!896440 (regTwo!15364 r!27340) tl!4068))))

(declare-fun b!2504842 () Bool)

(declare-fun e!1588277 () Bool)

(assert (=> b!2504842 (= e!1588277 (not e!1588280))))

(declare-fun res!1059039 () Bool)

(assert (=> b!2504842 (=> res!1059039 e!1588280)))

(declare-fun lt!896441 () Bool)

(assert (=> b!2504842 (= res!1059039 (not lt!896441))))

(declare-fun e!1588278 () Bool)

(assert (=> b!2504842 e!1588278))

(declare-fun res!1059036 () Bool)

(assert (=> b!2504842 (=> res!1059036 e!1588278)))

(assert (=> b!2504842 (= res!1059036 lt!896441)))

(declare-fun lt!896439 () Regex!7426)

(declare-fun matchR!3429 (Regex!7426 List!29491) Bool)

(assert (=> b!2504842 (= lt!896441 (matchR!3429 lt!896439 tl!4068))))

(declare-fun lt!896443 () Unit!43109)

(declare-fun lt!896444 () Regex!7426)

(declare-fun lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!121 (Regex!7426 Regex!7426 List!29491) Unit!43109)

(assert (=> b!2504842 (= lt!896443 (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!121 lt!896439 lt!896444 tl!4068))))

(declare-fun lt!896442 () Regex!7426)

(declare-fun derivative!121 (Regex!7426 List!29491) Regex!7426)

(assert (=> b!2504842 (= (matchR!3429 lt!896442 tl!4068) (matchR!3429 (derivative!121 lt!896442 tl!4068) Nil!29391))))

(declare-fun lt!896445 () Unit!43109)

(declare-fun lemmaMatchRIsSameAsWholeDerivativeAndNil!75 (Regex!7426 List!29491) Unit!43109)

(assert (=> b!2504842 (= lt!896445 (lemmaMatchRIsSameAsWholeDerivativeAndNil!75 lt!896442 tl!4068))))

(assert (=> b!2504842 (= lt!896442 (Union!7426 lt!896439 lt!896444))))

(declare-fun c!14016 () C!15010)

(declare-fun derivativeStep!1995 (Regex!7426 C!15010) Regex!7426)

(assert (=> b!2504842 (= lt!896444 (derivativeStep!1995 (regTwo!15364 r!27340) c!14016))))

(assert (=> b!2504842 (= lt!896439 (Concat!12122 lt!896440 (regTwo!15364 r!27340)))))

(assert (=> b!2504842 (= lt!896440 (derivativeStep!1995 (regOne!15364 r!27340) c!14016))))

(declare-fun res!1059035 () Bool)

(assert (=> start!244426 (=> (not res!1059035) (not e!1588277))))

(declare-fun validRegex!3052 (Regex!7426) Bool)

(assert (=> start!244426 (= res!1059035 (validRegex!3052 r!27340))))

(assert (=> start!244426 e!1588277))

(declare-fun e!1588279 () Bool)

(assert (=> start!244426 e!1588279))

(declare-fun tp_is_empty!12707 () Bool)

(assert (=> start!244426 tp_is_empty!12707))

(declare-fun e!1588275 () Bool)

(assert (=> start!244426 e!1588275))

(declare-fun b!2504843 () Bool)

(declare-fun tp!801562 () Bool)

(declare-fun tp!801564 () Bool)

(assert (=> b!2504843 (= e!1588279 (and tp!801562 tp!801564))))

(declare-fun b!2504844 () Bool)

(assert (=> b!2504844 (= e!1588276 (validRegex!3052 lt!896440))))

(declare-fun b!2504845 () Bool)

(assert (=> b!2504845 (= e!1588279 tp_is_empty!12707)))

(declare-fun b!2504846 () Bool)

(assert (=> b!2504846 (= e!1588278 (matchR!3429 lt!896444 tl!4068))))

(declare-fun b!2504847 () Bool)

(declare-fun tp!801561 () Bool)

(assert (=> b!2504847 (= e!1588279 tp!801561)))

(declare-fun b!2504848 () Bool)

(declare-fun tp!801563 () Bool)

(assert (=> b!2504848 (= e!1588275 (and tp_is_empty!12707 tp!801563))))

(declare-fun b!2504849 () Bool)

(declare-fun res!1059037 () Bool)

(assert (=> b!2504849 (=> (not res!1059037) (not e!1588277))))

(declare-fun nullable!2343 (Regex!7426) Bool)

(assert (=> b!2504849 (= res!1059037 (nullable!2343 (regOne!15364 r!27340)))))

(declare-fun b!2504850 () Bool)

(declare-fun res!1059034 () Bool)

(assert (=> b!2504850 (=> (not res!1059034) (not e!1588277))))

(assert (=> b!2504850 (= res!1059034 (nullable!2343 (derivative!121 (derivativeStep!1995 r!27340 c!14016) tl!4068)))))

(declare-fun b!2504851 () Bool)

(declare-fun tp!801559 () Bool)

(declare-fun tp!801560 () Bool)

(assert (=> b!2504851 (= e!1588279 (and tp!801559 tp!801560))))

(declare-fun b!2504852 () Bool)

(declare-fun res!1059033 () Bool)

(assert (=> b!2504852 (=> (not res!1059033) (not e!1588277))))

(assert (=> b!2504852 (= res!1059033 (and (not (is-EmptyExpr!7426 r!27340)) (not (is-EmptyLang!7426 r!27340)) (not (is-ElementMatch!7426 r!27340)) (not (is-Union!7426 r!27340)) (not (is-Star!7426 r!27340))))))

(assert (= (and start!244426 res!1059035) b!2504850))

(assert (= (and b!2504850 res!1059034) b!2504852))

(assert (= (and b!2504852 res!1059033) b!2504849))

(assert (= (and b!2504849 res!1059037) b!2504842))

(assert (= (and b!2504842 (not res!1059036)) b!2504846))

(assert (= (and b!2504842 (not res!1059039)) b!2504841))

(assert (= (and b!2504841 (not res!1059038)) b!2504844))

(assert (= (and start!244426 (is-ElementMatch!7426 r!27340)) b!2504845))

(assert (= (and start!244426 (is-Concat!12122 r!27340)) b!2504843))

(assert (= (and start!244426 (is-Star!7426 r!27340)) b!2504847))

(assert (= (and start!244426 (is-Union!7426 r!27340)) b!2504851))

(assert (= (and start!244426 (is-Cons!29391 tl!4068)) b!2504848))

(declare-fun m!2865837 () Bool)

(assert (=> b!2504850 m!2865837))

(assert (=> b!2504850 m!2865837))

(declare-fun m!2865839 () Bool)

(assert (=> b!2504850 m!2865839))

(assert (=> b!2504850 m!2865839))

(declare-fun m!2865841 () Bool)

(assert (=> b!2504850 m!2865841))

(declare-fun m!2865843 () Bool)

(assert (=> start!244426 m!2865843))

(declare-fun m!2865845 () Bool)

(assert (=> b!2504844 m!2865845))

(declare-fun m!2865847 () Bool)

(assert (=> b!2504846 m!2865847))

(declare-fun m!2865849 () Bool)

(assert (=> b!2504849 m!2865849))

(declare-fun m!2865851 () Bool)

(assert (=> b!2504842 m!2865851))

(declare-fun m!2865853 () Bool)

(assert (=> b!2504842 m!2865853))

(declare-fun m!2865855 () Bool)

(assert (=> b!2504842 m!2865855))

(declare-fun m!2865857 () Bool)

(assert (=> b!2504842 m!2865857))

(declare-fun m!2865859 () Bool)

(assert (=> b!2504842 m!2865859))

(declare-fun m!2865861 () Bool)

(assert (=> b!2504842 m!2865861))

(declare-fun m!2865863 () Bool)

(assert (=> b!2504842 m!2865863))

(declare-fun m!2865865 () Bool)

(assert (=> b!2504842 m!2865865))

(assert (=> b!2504842 m!2865851))

(declare-fun m!2865867 () Bool)

(assert (=> b!2504841 m!2865867))

(declare-fun m!2865869 () Bool)

(assert (=> b!2504841 m!2865869))

(declare-fun m!2865871 () Bool)

(assert (=> b!2504841 m!2865871))

(declare-fun m!2865873 () Bool)

(assert (=> b!2504841 m!2865873))

(declare-fun m!2865875 () Bool)

(assert (=> b!2504841 m!2865875))

(push 1)

(assert (not b!2504842))

(assert (not b!2504841))

(assert (not b!2504846))

(assert (not b!2504847))

(assert (not b!2504843))

(assert (not b!2504851))

(assert (not b!2504844))

(assert (not start!244426))

(assert (not b!2504849))

(assert (not b!2504850))

(assert tp_is_empty!12707)

(assert (not b!2504848))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!2504944 () Bool)

(declare-fun res!1059097 () Bool)

(declare-fun e!1588334 () Bool)

(assert (=> b!2504944 (=> (not res!1059097) (not e!1588334))))

(declare-fun isEmpty!16857 (List!29491) Bool)

(declare-fun tail!3988 (List!29491) List!29491)

(assert (=> b!2504944 (= res!1059097 (isEmpty!16857 (tail!3988 tl!4068)))))

(declare-fun b!2504945 () Bool)

(declare-fun e!1588339 () Bool)

(assert (=> b!2504945 (= e!1588339 (nullable!2343 lt!896442))))

(declare-fun b!2504946 () Bool)

(declare-fun head!5711 (List!29491) C!15010)

(assert (=> b!2504946 (= e!1588334 (= (head!5711 tl!4068) (c!398766 lt!896442)))))

(declare-fun b!2504947 () Bool)

(declare-fun e!1588338 () Bool)

(declare-fun e!1588335 () Bool)

(assert (=> b!2504947 (= e!1588338 e!1588335)))

(declare-fun res!1059092 () Bool)

(assert (=> b!2504947 (=> res!1059092 e!1588335)))

(declare-fun call!155007 () Bool)

(assert (=> b!2504947 (= res!1059092 call!155007)))

(declare-fun b!2504948 () Bool)

(declare-fun res!1059095 () Bool)

(declare-fun e!1588337 () Bool)

(assert (=> b!2504948 (=> res!1059095 e!1588337)))

(assert (=> b!2504948 (= res!1059095 e!1588334)))

(declare-fun res!1059099 () Bool)

(assert (=> b!2504948 (=> (not res!1059099) (not e!1588334))))

(declare-fun lt!896479 () Bool)

(assert (=> b!2504948 (= res!1059099 lt!896479)))

(declare-fun b!2504949 () Bool)

(declare-fun e!1588336 () Bool)

(declare-fun e!1588340 () Bool)

(assert (=> b!2504949 (= e!1588336 e!1588340)))

(declare-fun c!398780 () Bool)

(assert (=> b!2504949 (= c!398780 (is-EmptyLang!7426 lt!896442))))

(declare-fun b!2504950 () Bool)

(assert (=> b!2504950 (= e!1588339 (matchR!3429 (derivativeStep!1995 lt!896442 (head!5711 tl!4068)) (tail!3988 tl!4068)))))

(declare-fun b!2504951 () Bool)

(declare-fun res!1059098 () Bool)

(assert (=> b!2504951 (=> res!1059098 e!1588335)))

(assert (=> b!2504951 (= res!1059098 (not (isEmpty!16857 (tail!3988 tl!4068))))))

(declare-fun b!2504952 () Bool)

(declare-fun res!1059096 () Bool)

(assert (=> b!2504952 (=> res!1059096 e!1588337)))

(assert (=> b!2504952 (= res!1059096 (not (is-ElementMatch!7426 lt!896442)))))

(assert (=> b!2504952 (= e!1588340 e!1588337)))

(declare-fun b!2504953 () Bool)

(assert (=> b!2504953 (= e!1588336 (= lt!896479 call!155007))))

(declare-fun bm!155002 () Bool)

(assert (=> bm!155002 (= call!155007 (isEmpty!16857 tl!4068))))

(declare-fun d!715921 () Bool)

(assert (=> d!715921 e!1588336))

(declare-fun c!398781 () Bool)

(assert (=> d!715921 (= c!398781 (is-EmptyExpr!7426 lt!896442))))

(assert (=> d!715921 (= lt!896479 e!1588339)))

(declare-fun c!398782 () Bool)

(assert (=> d!715921 (= c!398782 (isEmpty!16857 tl!4068))))

(assert (=> d!715921 (validRegex!3052 lt!896442)))

(assert (=> d!715921 (= (matchR!3429 lt!896442 tl!4068) lt!896479)))

(declare-fun b!2504954 () Bool)

(assert (=> b!2504954 (= e!1588337 e!1588338)))

(declare-fun res!1059094 () Bool)

(assert (=> b!2504954 (=> (not res!1059094) (not e!1588338))))

(assert (=> b!2504954 (= res!1059094 (not lt!896479))))

(declare-fun b!2504955 () Bool)

(declare-fun res!1059093 () Bool)

(assert (=> b!2504955 (=> (not res!1059093) (not e!1588334))))

(assert (=> b!2504955 (= res!1059093 (not call!155007))))

(declare-fun b!2504956 () Bool)

(assert (=> b!2504956 (= e!1588335 (not (= (head!5711 tl!4068) (c!398766 lt!896442))))))

(declare-fun b!2504957 () Bool)

(assert (=> b!2504957 (= e!1588340 (not lt!896479))))

(assert (= (and d!715921 c!398782) b!2504945))

(assert (= (and d!715921 (not c!398782)) b!2504950))

(assert (= (and d!715921 c!398781) b!2504953))

(assert (= (and d!715921 (not c!398781)) b!2504949))

(assert (= (and b!2504949 c!398780) b!2504957))

(assert (= (and b!2504949 (not c!398780)) b!2504952))

(assert (= (and b!2504952 (not res!1059096)) b!2504948))

(assert (= (and b!2504948 res!1059099) b!2504955))

(assert (= (and b!2504955 res!1059093) b!2504944))

(assert (= (and b!2504944 res!1059097) b!2504946))

(assert (= (and b!2504948 (not res!1059095)) b!2504954))

(assert (= (and b!2504954 res!1059094) b!2504947))

(assert (= (and b!2504947 (not res!1059092)) b!2504951))

(assert (= (and b!2504951 (not res!1059098)) b!2504956))

(assert (= (or b!2504953 b!2504947 b!2504955) bm!155002))

(declare-fun m!2865925 () Bool)

(assert (=> b!2504950 m!2865925))

(assert (=> b!2504950 m!2865925))

(declare-fun m!2865927 () Bool)

(assert (=> b!2504950 m!2865927))

(declare-fun m!2865929 () Bool)

(assert (=> b!2504950 m!2865929))

(assert (=> b!2504950 m!2865927))

(assert (=> b!2504950 m!2865929))

(declare-fun m!2865931 () Bool)

(assert (=> b!2504950 m!2865931))

(declare-fun m!2865933 () Bool)

(assert (=> b!2504945 m!2865933))

(assert (=> b!2504951 m!2865929))

(assert (=> b!2504951 m!2865929))

(declare-fun m!2865935 () Bool)

(assert (=> b!2504951 m!2865935))

(declare-fun m!2865937 () Bool)

(assert (=> d!715921 m!2865937))

(declare-fun m!2865939 () Bool)

(assert (=> d!715921 m!2865939))

(assert (=> b!2504944 m!2865929))

(assert (=> b!2504944 m!2865929))

(assert (=> b!2504944 m!2865935))

(assert (=> bm!155002 m!2865937))

(assert (=> b!2504956 m!2865925))

(assert (=> b!2504946 m!2865925))

(assert (=> b!2504842 d!715921))

(declare-fun d!715927 () Bool)

(declare-fun lt!896482 () Regex!7426)

(assert (=> d!715927 (validRegex!3052 lt!896482)))

(declare-fun e!1588343 () Regex!7426)

(assert (=> d!715927 (= lt!896482 e!1588343)))

(declare-fun c!398785 () Bool)

(assert (=> d!715927 (= c!398785 (is-Cons!29391 tl!4068))))

(assert (=> d!715927 (validRegex!3052 lt!896442)))

(assert (=> d!715927 (= (derivative!121 lt!896442 tl!4068) lt!896482)))

(declare-fun b!2504962 () Bool)

(assert (=> b!2504962 (= e!1588343 (derivative!121 (derivativeStep!1995 lt!896442 (h!34811 tl!4068)) (t!211190 tl!4068)))))

(declare-fun b!2504963 () Bool)

(assert (=> b!2504963 (= e!1588343 lt!896442)))

(assert (= (and d!715927 c!398785) b!2504962))

(assert (= (and d!715927 (not c!398785)) b!2504963))

(declare-fun m!2865941 () Bool)

(assert (=> d!715927 m!2865941))

(assert (=> d!715927 m!2865939))

(declare-fun m!2865943 () Bool)

(assert (=> b!2504962 m!2865943))

(assert (=> b!2504962 m!2865943))

(declare-fun m!2865945 () Bool)

(assert (=> b!2504962 m!2865945))

(assert (=> b!2504842 d!715927))

(declare-fun d!715929 () Bool)

(assert (=> d!715929 (= (matchR!3429 lt!896442 tl!4068) (matchR!3429 (derivative!121 lt!896442 tl!4068) Nil!29391))))

(declare-fun lt!896485 () Unit!43109)

(declare-fun choose!14803 (Regex!7426 List!29491) Unit!43109)

(assert (=> d!715929 (= lt!896485 (choose!14803 lt!896442 tl!4068))))

(assert (=> d!715929 (validRegex!3052 lt!896442)))

(assert (=> d!715929 (= (lemmaMatchRIsSameAsWholeDerivativeAndNil!75 lt!896442 tl!4068) lt!896485)))

(declare-fun bs!468649 () Bool)

(assert (= bs!468649 d!715929))

(assert (=> bs!468649 m!2865939))

(assert (=> bs!468649 m!2865851))

(assert (=> bs!468649 m!2865853))

(declare-fun m!2865947 () Bool)

(assert (=> bs!468649 m!2865947))

(assert (=> bs!468649 m!2865865))

(assert (=> bs!468649 m!2865851))

(assert (=> b!2504842 d!715929))

(declare-fun b!2504964 () Bool)

(declare-fun res!1059105 () Bool)

(declare-fun e!1588344 () Bool)

(assert (=> b!2504964 (=> (not res!1059105) (not e!1588344))))

(assert (=> b!2504964 (= res!1059105 (isEmpty!16857 (tail!3988 tl!4068)))))

(declare-fun b!2504965 () Bool)

(declare-fun e!1588349 () Bool)

(assert (=> b!2504965 (= e!1588349 (nullable!2343 lt!896439))))

(declare-fun b!2504966 () Bool)

(assert (=> b!2504966 (= e!1588344 (= (head!5711 tl!4068) (c!398766 lt!896439)))))

(declare-fun b!2504967 () Bool)

(declare-fun e!1588348 () Bool)

(declare-fun e!1588345 () Bool)

(assert (=> b!2504967 (= e!1588348 e!1588345)))

(declare-fun res!1059100 () Bool)

(assert (=> b!2504967 (=> res!1059100 e!1588345)))

(declare-fun call!155008 () Bool)

(assert (=> b!2504967 (= res!1059100 call!155008)))

(declare-fun b!2504968 () Bool)

(declare-fun res!1059103 () Bool)

(declare-fun e!1588347 () Bool)

(assert (=> b!2504968 (=> res!1059103 e!1588347)))

(assert (=> b!2504968 (= res!1059103 e!1588344)))

(declare-fun res!1059107 () Bool)

(assert (=> b!2504968 (=> (not res!1059107) (not e!1588344))))

(declare-fun lt!896486 () Bool)

(assert (=> b!2504968 (= res!1059107 lt!896486)))

(declare-fun b!2504969 () Bool)

(declare-fun e!1588346 () Bool)

(declare-fun e!1588350 () Bool)

(assert (=> b!2504969 (= e!1588346 e!1588350)))

(declare-fun c!398786 () Bool)

(assert (=> b!2504969 (= c!398786 (is-EmptyLang!7426 lt!896439))))

(declare-fun b!2504970 () Bool)

(assert (=> b!2504970 (= e!1588349 (matchR!3429 (derivativeStep!1995 lt!896439 (head!5711 tl!4068)) (tail!3988 tl!4068)))))

(declare-fun b!2504971 () Bool)

(declare-fun res!1059106 () Bool)

(assert (=> b!2504971 (=> res!1059106 e!1588345)))

(assert (=> b!2504971 (= res!1059106 (not (isEmpty!16857 (tail!3988 tl!4068))))))

(declare-fun b!2504972 () Bool)

(declare-fun res!1059104 () Bool)

(assert (=> b!2504972 (=> res!1059104 e!1588347)))

(assert (=> b!2504972 (= res!1059104 (not (is-ElementMatch!7426 lt!896439)))))

(assert (=> b!2504972 (= e!1588350 e!1588347)))

(declare-fun b!2504973 () Bool)

(assert (=> b!2504973 (= e!1588346 (= lt!896486 call!155008))))

(declare-fun bm!155003 () Bool)

(assert (=> bm!155003 (= call!155008 (isEmpty!16857 tl!4068))))

(declare-fun d!715931 () Bool)

(assert (=> d!715931 e!1588346))

(declare-fun c!398787 () Bool)

(assert (=> d!715931 (= c!398787 (is-EmptyExpr!7426 lt!896439))))

(assert (=> d!715931 (= lt!896486 e!1588349)))

(declare-fun c!398788 () Bool)

(assert (=> d!715931 (= c!398788 (isEmpty!16857 tl!4068))))

(assert (=> d!715931 (validRegex!3052 lt!896439)))

(assert (=> d!715931 (= (matchR!3429 lt!896439 tl!4068) lt!896486)))

(declare-fun b!2504974 () Bool)

(assert (=> b!2504974 (= e!1588347 e!1588348)))

(declare-fun res!1059102 () Bool)

(assert (=> b!2504974 (=> (not res!1059102) (not e!1588348))))

(assert (=> b!2504974 (= res!1059102 (not lt!896486))))

(declare-fun b!2504975 () Bool)

(declare-fun res!1059101 () Bool)

(assert (=> b!2504975 (=> (not res!1059101) (not e!1588344))))

(assert (=> b!2504975 (= res!1059101 (not call!155008))))

(declare-fun b!2504976 () Bool)

(assert (=> b!2504976 (= e!1588345 (not (= (head!5711 tl!4068) (c!398766 lt!896439))))))

(declare-fun b!2504977 () Bool)

(assert (=> b!2504977 (= e!1588350 (not lt!896486))))

(assert (= (and d!715931 c!398788) b!2504965))

(assert (= (and d!715931 (not c!398788)) b!2504970))

(assert (= (and d!715931 c!398787) b!2504973))

(assert (= (and d!715931 (not c!398787)) b!2504969))

(assert (= (and b!2504969 c!398786) b!2504977))

(assert (= (and b!2504969 (not c!398786)) b!2504972))

(assert (= (and b!2504972 (not res!1059104)) b!2504968))

(assert (= (and b!2504968 res!1059107) b!2504975))

(assert (= (and b!2504975 res!1059101) b!2504964))

(assert (= (and b!2504964 res!1059105) b!2504966))

(assert (= (and b!2504968 (not res!1059103)) b!2504974))

(assert (= (and b!2504974 res!1059102) b!2504967))

(assert (= (and b!2504967 (not res!1059100)) b!2504971))

(assert (= (and b!2504971 (not res!1059106)) b!2504976))

(assert (= (or b!2504973 b!2504967 b!2504975) bm!155003))

(assert (=> b!2504970 m!2865925))

(assert (=> b!2504970 m!2865925))

(declare-fun m!2865949 () Bool)

(assert (=> b!2504970 m!2865949))

(assert (=> b!2504970 m!2865929))

(assert (=> b!2504970 m!2865949))

(assert (=> b!2504970 m!2865929))

(declare-fun m!2865951 () Bool)

(assert (=> b!2504970 m!2865951))

(declare-fun m!2865953 () Bool)

(assert (=> b!2504965 m!2865953))

(assert (=> b!2504971 m!2865929))

(assert (=> b!2504971 m!2865929))

(assert (=> b!2504971 m!2865935))

(assert (=> d!715931 m!2865937))

(declare-fun m!2865955 () Bool)

(assert (=> d!715931 m!2865955))

(assert (=> b!2504964 m!2865929))

(assert (=> b!2504964 m!2865929))

(assert (=> b!2504964 m!2865935))

(assert (=> bm!155003 m!2865937))

(assert (=> b!2504976 m!2865925))

(assert (=> b!2504966 m!2865925))

(assert (=> b!2504842 d!715931))

(declare-fun d!715933 () Bool)

(declare-fun e!1588356 () Bool)

(assert (=> d!715933 e!1588356))

(declare-fun res!1059113 () Bool)

(assert (=> d!715933 (=> res!1059113 e!1588356)))

(assert (=> d!715933 (= res!1059113 (matchR!3429 lt!896439 tl!4068))))

(declare-fun lt!896489 () Unit!43109)

(declare-fun choose!14804 (Regex!7426 Regex!7426 List!29491) Unit!43109)

(assert (=> d!715933 (= lt!896489 (choose!14804 lt!896439 lt!896444 tl!4068))))

(declare-fun e!1588355 () Bool)

(assert (=> d!715933 e!1588355))

(declare-fun res!1059112 () Bool)

(assert (=> d!715933 (=> (not res!1059112) (not e!1588355))))

(assert (=> d!715933 (= res!1059112 (validRegex!3052 lt!896439))))

(assert (=> d!715933 (= (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!121 lt!896439 lt!896444 tl!4068) lt!896489)))

(declare-fun b!2504982 () Bool)

(assert (=> b!2504982 (= e!1588355 (validRegex!3052 lt!896444))))

(declare-fun b!2504983 () Bool)

(assert (=> b!2504983 (= e!1588356 (matchR!3429 lt!896444 tl!4068))))

(assert (= (and d!715933 res!1059112) b!2504982))

(assert (= (and d!715933 (not res!1059113)) b!2504983))

(assert (=> d!715933 m!2865861))

(declare-fun m!2865957 () Bool)

(assert (=> d!715933 m!2865957))

(assert (=> d!715933 m!2865955))

(declare-fun m!2865959 () Bool)

(assert (=> b!2504982 m!2865959))

(assert (=> b!2504983 m!2865847))

(assert (=> b!2504842 d!715933))

(declare-fun b!2504984 () Bool)

(declare-fun res!1059119 () Bool)

(declare-fun e!1588357 () Bool)

(assert (=> b!2504984 (=> (not res!1059119) (not e!1588357))))

(assert (=> b!2504984 (= res!1059119 (isEmpty!16857 (tail!3988 Nil!29391)))))

(declare-fun b!2504985 () Bool)

(declare-fun e!1588362 () Bool)

(assert (=> b!2504985 (= e!1588362 (nullable!2343 (derivative!121 lt!896442 tl!4068)))))

(declare-fun b!2504986 () Bool)

(assert (=> b!2504986 (= e!1588357 (= (head!5711 Nil!29391) (c!398766 (derivative!121 lt!896442 tl!4068))))))

(declare-fun b!2504987 () Bool)

(declare-fun e!1588361 () Bool)

(declare-fun e!1588358 () Bool)

(assert (=> b!2504987 (= e!1588361 e!1588358)))

(declare-fun res!1059114 () Bool)

(assert (=> b!2504987 (=> res!1059114 e!1588358)))

(declare-fun call!155009 () Bool)

(assert (=> b!2504987 (= res!1059114 call!155009)))

(declare-fun b!2504988 () Bool)

(declare-fun res!1059117 () Bool)

(declare-fun e!1588360 () Bool)

(assert (=> b!2504988 (=> res!1059117 e!1588360)))

(assert (=> b!2504988 (= res!1059117 e!1588357)))

(declare-fun res!1059121 () Bool)

(assert (=> b!2504988 (=> (not res!1059121) (not e!1588357))))

(declare-fun lt!896490 () Bool)

(assert (=> b!2504988 (= res!1059121 lt!896490)))

(declare-fun b!2504989 () Bool)

(declare-fun e!1588359 () Bool)

(declare-fun e!1588363 () Bool)

(assert (=> b!2504989 (= e!1588359 e!1588363)))

(declare-fun c!398789 () Bool)

(assert (=> b!2504989 (= c!398789 (is-EmptyLang!7426 (derivative!121 lt!896442 tl!4068)))))

(declare-fun b!2504990 () Bool)

(assert (=> b!2504990 (= e!1588362 (matchR!3429 (derivativeStep!1995 (derivative!121 lt!896442 tl!4068) (head!5711 Nil!29391)) (tail!3988 Nil!29391)))))

(declare-fun b!2504991 () Bool)

(declare-fun res!1059120 () Bool)

(assert (=> b!2504991 (=> res!1059120 e!1588358)))

(assert (=> b!2504991 (= res!1059120 (not (isEmpty!16857 (tail!3988 Nil!29391))))))

(declare-fun b!2504992 () Bool)

(declare-fun res!1059118 () Bool)

(assert (=> b!2504992 (=> res!1059118 e!1588360)))

(assert (=> b!2504992 (= res!1059118 (not (is-ElementMatch!7426 (derivative!121 lt!896442 tl!4068))))))

(assert (=> b!2504992 (= e!1588363 e!1588360)))

(declare-fun b!2504993 () Bool)

(assert (=> b!2504993 (= e!1588359 (= lt!896490 call!155009))))

(declare-fun bm!155004 () Bool)

(assert (=> bm!155004 (= call!155009 (isEmpty!16857 Nil!29391))))

(declare-fun d!715935 () Bool)

(assert (=> d!715935 e!1588359))

(declare-fun c!398790 () Bool)

(assert (=> d!715935 (= c!398790 (is-EmptyExpr!7426 (derivative!121 lt!896442 tl!4068)))))

(assert (=> d!715935 (= lt!896490 e!1588362)))

(declare-fun c!398791 () Bool)

(assert (=> d!715935 (= c!398791 (isEmpty!16857 Nil!29391))))

(assert (=> d!715935 (validRegex!3052 (derivative!121 lt!896442 tl!4068))))

(assert (=> d!715935 (= (matchR!3429 (derivative!121 lt!896442 tl!4068) Nil!29391) lt!896490)))

(declare-fun b!2504994 () Bool)

(assert (=> b!2504994 (= e!1588360 e!1588361)))

(declare-fun res!1059116 () Bool)

(assert (=> b!2504994 (=> (not res!1059116) (not e!1588361))))

(assert (=> b!2504994 (= res!1059116 (not lt!896490))))

(declare-fun b!2504995 () Bool)

(declare-fun res!1059115 () Bool)

(assert (=> b!2504995 (=> (not res!1059115) (not e!1588357))))

(assert (=> b!2504995 (= res!1059115 (not call!155009))))

(declare-fun b!2504996 () Bool)

(assert (=> b!2504996 (= e!1588358 (not (= (head!5711 Nil!29391) (c!398766 (derivative!121 lt!896442 tl!4068)))))))

(declare-fun b!2504997 () Bool)

(assert (=> b!2504997 (= e!1588363 (not lt!896490))))

(assert (= (and d!715935 c!398791) b!2504985))

(assert (= (and d!715935 (not c!398791)) b!2504990))

(assert (= (and d!715935 c!398790) b!2504993))

(assert (= (and d!715935 (not c!398790)) b!2504989))

(assert (= (and b!2504989 c!398789) b!2504997))

(assert (= (and b!2504989 (not c!398789)) b!2504992))

(assert (= (and b!2504992 (not res!1059118)) b!2504988))

(assert (= (and b!2504988 res!1059121) b!2504995))

(assert (= (and b!2504995 res!1059115) b!2504984))

(assert (= (and b!2504984 res!1059119) b!2504986))

(assert (= (and b!2504988 (not res!1059117)) b!2504994))

(assert (= (and b!2504994 res!1059116) b!2504987))

(assert (= (and b!2504987 (not res!1059114)) b!2504991))

(assert (= (and b!2504991 (not res!1059120)) b!2504996))

(assert (= (or b!2504993 b!2504987 b!2504995) bm!155004))

(declare-fun m!2865961 () Bool)

(assert (=> b!2504990 m!2865961))

(assert (=> b!2504990 m!2865851))

(assert (=> b!2504990 m!2865961))

(declare-fun m!2865963 () Bool)

(assert (=> b!2504990 m!2865963))

(declare-fun m!2865965 () Bool)

(assert (=> b!2504990 m!2865965))

(assert (=> b!2504990 m!2865963))

(assert (=> b!2504990 m!2865965))

(declare-fun m!2865967 () Bool)

(assert (=> b!2504990 m!2865967))

(assert (=> b!2504985 m!2865851))

(declare-fun m!2865969 () Bool)

(assert (=> b!2504985 m!2865969))

(assert (=> b!2504991 m!2865965))

(assert (=> b!2504991 m!2865965))

(declare-fun m!2865971 () Bool)

(assert (=> b!2504991 m!2865971))

(declare-fun m!2865973 () Bool)

(assert (=> d!715935 m!2865973))

(assert (=> d!715935 m!2865851))

(declare-fun m!2865975 () Bool)

(assert (=> d!715935 m!2865975))

(assert (=> b!2504984 m!2865965))

(assert (=> b!2504984 m!2865965))

(assert (=> b!2504984 m!2865971))

(assert (=> bm!155004 m!2865973))

(assert (=> b!2504996 m!2865961))

(assert (=> b!2504986 m!2865961))

(assert (=> b!2504842 d!715935))

(declare-fun b!2505036 () Bool)

(declare-fun c!398807 () Bool)

(assert (=> b!2505036 (= c!398807 (is-Union!7426 (regTwo!15364 r!27340)))))

(declare-fun e!1588387 () Regex!7426)

(declare-fun e!1588388 () Regex!7426)

(assert (=> b!2505036 (= e!1588387 e!1588388)))

(declare-fun bm!155013 () Bool)

(declare-fun call!155019 () Regex!7426)

(declare-fun call!155021 () Regex!7426)

(assert (=> bm!155013 (= call!155019 call!155021)))

(declare-fun d!715937 () Bool)

(declare-fun lt!896499 () Regex!7426)

(assert (=> d!715937 (validRegex!3052 lt!896499)))

(declare-fun e!1588384 () Regex!7426)

(assert (=> d!715937 (= lt!896499 e!1588384)))

(declare-fun c!398810 () Bool)

(assert (=> d!715937 (= c!398810 (or (is-EmptyExpr!7426 (regTwo!15364 r!27340)) (is-EmptyLang!7426 (regTwo!15364 r!27340))))))

(assert (=> d!715937 (validRegex!3052 (regTwo!15364 r!27340))))

(assert (=> d!715937 (= (derivativeStep!1995 (regTwo!15364 r!27340) c!14016) lt!896499)))

(declare-fun b!2505037 () Bool)

(declare-fun e!1588386 () Regex!7426)

(assert (=> b!2505037 (= e!1588386 (Union!7426 (Concat!12122 call!155019 (regTwo!15364 (regTwo!15364 r!27340))) EmptyLang!7426))))

(declare-fun bm!155014 () Bool)

(declare-fun call!155020 () Regex!7426)

(assert (=> bm!155014 (= call!155020 (derivativeStep!1995 (ite c!398807 (regOne!15365 (regTwo!15364 r!27340)) (regTwo!15364 (regTwo!15364 r!27340))) c!14016))))

(declare-fun bm!155015 () Bool)

(declare-fun call!155018 () Regex!7426)

(assert (=> bm!155015 (= call!155021 call!155018)))

(declare-fun b!2505038 () Bool)

(assert (=> b!2505038 (= e!1588386 (Union!7426 (Concat!12122 call!155019 (regTwo!15364 (regTwo!15364 r!27340))) call!155020))))

(declare-fun b!2505039 () Bool)

(assert (=> b!2505039 (= e!1588384 EmptyLang!7426)))

(declare-fun b!2505040 () Bool)

(declare-fun c!398809 () Bool)

(assert (=> b!2505040 (= c!398809 (nullable!2343 (regOne!15364 (regTwo!15364 r!27340))))))

(declare-fun e!1588385 () Regex!7426)

(assert (=> b!2505040 (= e!1588385 e!1588386)))

(declare-fun c!398806 () Bool)

(declare-fun bm!155016 () Bool)

(assert (=> bm!155016 (= call!155018 (derivativeStep!1995 (ite c!398807 (regTwo!15365 (regTwo!15364 r!27340)) (ite c!398806 (reg!7755 (regTwo!15364 r!27340)) (regOne!15364 (regTwo!15364 r!27340)))) c!14016))))

(declare-fun b!2505041 () Bool)

(assert (=> b!2505041 (= e!1588388 e!1588385)))

(assert (=> b!2505041 (= c!398806 (is-Star!7426 (regTwo!15364 r!27340)))))

(declare-fun b!2505042 () Bool)

(assert (=> b!2505042 (= e!1588384 e!1588387)))

(declare-fun c!398808 () Bool)

(assert (=> b!2505042 (= c!398808 (is-ElementMatch!7426 (regTwo!15364 r!27340)))))

(declare-fun b!2505043 () Bool)

(assert (=> b!2505043 (= e!1588388 (Union!7426 call!155020 call!155018))))

(declare-fun b!2505044 () Bool)

(assert (=> b!2505044 (= e!1588385 (Concat!12122 call!155021 (regTwo!15364 r!27340)))))

(declare-fun b!2505045 () Bool)

(assert (=> b!2505045 (= e!1588387 (ite (= c!14016 (c!398766 (regTwo!15364 r!27340))) EmptyExpr!7426 EmptyLang!7426))))

(assert (= (and d!715937 c!398810) b!2505039))

(assert (= (and d!715937 (not c!398810)) b!2505042))

(assert (= (and b!2505042 c!398808) b!2505045))

(assert (= (and b!2505042 (not c!398808)) b!2505036))

(assert (= (and b!2505036 c!398807) b!2505043))

(assert (= (and b!2505036 (not c!398807)) b!2505041))

(assert (= (and b!2505041 c!398806) b!2505044))

(assert (= (and b!2505041 (not c!398806)) b!2505040))

(assert (= (and b!2505040 c!398809) b!2505038))

(assert (= (and b!2505040 (not c!398809)) b!2505037))

(assert (= (or b!2505038 b!2505037) bm!155013))

(assert (= (or b!2505044 bm!155013) bm!155015))

(assert (= (or b!2505043 bm!155015) bm!155016))

(assert (= (or b!2505043 b!2505038) bm!155014))

(declare-fun m!2865977 () Bool)

(assert (=> d!715937 m!2865977))

(declare-fun m!2865979 () Bool)

(assert (=> d!715937 m!2865979))

(declare-fun m!2865981 () Bool)

(assert (=> bm!155014 m!2865981))

(declare-fun m!2865983 () Bool)

(assert (=> b!2505040 m!2865983))

(declare-fun m!2865985 () Bool)

(assert (=> bm!155016 m!2865985))

(assert (=> b!2504842 d!715937))

(declare-fun b!2505046 () Bool)

(declare-fun c!398812 () Bool)

(assert (=> b!2505046 (= c!398812 (is-Union!7426 (regOne!15364 r!27340)))))

(declare-fun e!1588392 () Regex!7426)

(declare-fun e!1588393 () Regex!7426)

(assert (=> b!2505046 (= e!1588392 e!1588393)))

(declare-fun bm!155017 () Bool)

(declare-fun call!155023 () Regex!7426)

(declare-fun call!155025 () Regex!7426)

(assert (=> bm!155017 (= call!155023 call!155025)))

(declare-fun d!715939 () Bool)

(declare-fun lt!896500 () Regex!7426)

(assert (=> d!715939 (validRegex!3052 lt!896500)))

(declare-fun e!1588389 () Regex!7426)

(assert (=> d!715939 (= lt!896500 e!1588389)))

(declare-fun c!398815 () Bool)

(assert (=> d!715939 (= c!398815 (or (is-EmptyExpr!7426 (regOne!15364 r!27340)) (is-EmptyLang!7426 (regOne!15364 r!27340))))))

(assert (=> d!715939 (validRegex!3052 (regOne!15364 r!27340))))

(assert (=> d!715939 (= (derivativeStep!1995 (regOne!15364 r!27340) c!14016) lt!896500)))

(declare-fun b!2505047 () Bool)

(declare-fun e!1588391 () Regex!7426)

(assert (=> b!2505047 (= e!1588391 (Union!7426 (Concat!12122 call!155023 (regTwo!15364 (regOne!15364 r!27340))) EmptyLang!7426))))

(declare-fun bm!155018 () Bool)

(declare-fun call!155024 () Regex!7426)

(assert (=> bm!155018 (= call!155024 (derivativeStep!1995 (ite c!398812 (regOne!15365 (regOne!15364 r!27340)) (regTwo!15364 (regOne!15364 r!27340))) c!14016))))

(declare-fun bm!155019 () Bool)

(declare-fun call!155022 () Regex!7426)

(assert (=> bm!155019 (= call!155025 call!155022)))

(declare-fun b!2505048 () Bool)

(assert (=> b!2505048 (= e!1588391 (Union!7426 (Concat!12122 call!155023 (regTwo!15364 (regOne!15364 r!27340))) call!155024))))

(declare-fun b!2505049 () Bool)

(assert (=> b!2505049 (= e!1588389 EmptyLang!7426)))

(declare-fun b!2505050 () Bool)

(declare-fun c!398814 () Bool)

(assert (=> b!2505050 (= c!398814 (nullable!2343 (regOne!15364 (regOne!15364 r!27340))))))

(declare-fun e!1588390 () Regex!7426)

(assert (=> b!2505050 (= e!1588390 e!1588391)))

(declare-fun bm!155020 () Bool)

(declare-fun c!398811 () Bool)

(assert (=> bm!155020 (= call!155022 (derivativeStep!1995 (ite c!398812 (regTwo!15365 (regOne!15364 r!27340)) (ite c!398811 (reg!7755 (regOne!15364 r!27340)) (regOne!15364 (regOne!15364 r!27340)))) c!14016))))

(declare-fun b!2505051 () Bool)

(assert (=> b!2505051 (= e!1588393 e!1588390)))

(assert (=> b!2505051 (= c!398811 (is-Star!7426 (regOne!15364 r!27340)))))

(declare-fun b!2505052 () Bool)

(assert (=> b!2505052 (= e!1588389 e!1588392)))

(declare-fun c!398813 () Bool)

(assert (=> b!2505052 (= c!398813 (is-ElementMatch!7426 (regOne!15364 r!27340)))))

(declare-fun b!2505053 () Bool)

(assert (=> b!2505053 (= e!1588393 (Union!7426 call!155024 call!155022))))

(declare-fun b!2505054 () Bool)

(assert (=> b!2505054 (= e!1588390 (Concat!12122 call!155025 (regOne!15364 r!27340)))))

(declare-fun b!2505055 () Bool)

(assert (=> b!2505055 (= e!1588392 (ite (= c!14016 (c!398766 (regOne!15364 r!27340))) EmptyExpr!7426 EmptyLang!7426))))

(assert (= (and d!715939 c!398815) b!2505049))

(assert (= (and d!715939 (not c!398815)) b!2505052))

(assert (= (and b!2505052 c!398813) b!2505055))

(assert (= (and b!2505052 (not c!398813)) b!2505046))

(assert (= (and b!2505046 c!398812) b!2505053))

(assert (= (and b!2505046 (not c!398812)) b!2505051))

(assert (= (and b!2505051 c!398811) b!2505054))

(assert (= (and b!2505051 (not c!398811)) b!2505050))

(assert (= (and b!2505050 c!398814) b!2505048))

(assert (= (and b!2505050 (not c!398814)) b!2505047))

(assert (= (or b!2505048 b!2505047) bm!155017))

(assert (= (or b!2505054 bm!155017) bm!155019))

(assert (= (or b!2505053 bm!155019) bm!155020))

(assert (= (or b!2505053 b!2505048) bm!155018))

(declare-fun m!2865987 () Bool)

(assert (=> d!715939 m!2865987))

(declare-fun m!2865989 () Bool)

(assert (=> d!715939 m!2865989))

(declare-fun m!2865991 () Bool)

(assert (=> bm!155018 m!2865991))

(declare-fun m!2865993 () Bool)

(assert (=> b!2505050 m!2865993))

(declare-fun m!2865995 () Bool)

(assert (=> bm!155020 m!2865995))

(assert (=> b!2504842 d!715939))

(declare-fun b!2505056 () Bool)

(declare-fun res!1059137 () Bool)

(declare-fun e!1588394 () Bool)

(assert (=> b!2505056 (=> (not res!1059137) (not e!1588394))))

(assert (=> b!2505056 (= res!1059137 (isEmpty!16857 (tail!3988 tl!4068)))))

(declare-fun b!2505057 () Bool)

(declare-fun e!1588399 () Bool)

(assert (=> b!2505057 (= e!1588399 (nullable!2343 lt!896444))))

(declare-fun b!2505058 () Bool)

(assert (=> b!2505058 (= e!1588394 (= (head!5711 tl!4068) (c!398766 lt!896444)))))

(declare-fun b!2505059 () Bool)

(declare-fun e!1588398 () Bool)

(declare-fun e!1588395 () Bool)

(assert (=> b!2505059 (= e!1588398 e!1588395)))

(declare-fun res!1059132 () Bool)

(assert (=> b!2505059 (=> res!1059132 e!1588395)))

(declare-fun call!155026 () Bool)

(assert (=> b!2505059 (= res!1059132 call!155026)))

(declare-fun b!2505060 () Bool)

(declare-fun res!1059135 () Bool)

(declare-fun e!1588397 () Bool)

(assert (=> b!2505060 (=> res!1059135 e!1588397)))

(assert (=> b!2505060 (= res!1059135 e!1588394)))

(declare-fun res!1059139 () Bool)

(assert (=> b!2505060 (=> (not res!1059139) (not e!1588394))))

(declare-fun lt!896501 () Bool)

(assert (=> b!2505060 (= res!1059139 lt!896501)))

(declare-fun b!2505061 () Bool)

(declare-fun e!1588396 () Bool)

(declare-fun e!1588400 () Bool)

(assert (=> b!2505061 (= e!1588396 e!1588400)))

(declare-fun c!398816 () Bool)

(assert (=> b!2505061 (= c!398816 (is-EmptyLang!7426 lt!896444))))

(declare-fun b!2505062 () Bool)

(assert (=> b!2505062 (= e!1588399 (matchR!3429 (derivativeStep!1995 lt!896444 (head!5711 tl!4068)) (tail!3988 tl!4068)))))

(declare-fun b!2505063 () Bool)

(declare-fun res!1059138 () Bool)

(assert (=> b!2505063 (=> res!1059138 e!1588395)))

(assert (=> b!2505063 (= res!1059138 (not (isEmpty!16857 (tail!3988 tl!4068))))))

(declare-fun b!2505064 () Bool)

(declare-fun res!1059136 () Bool)

(assert (=> b!2505064 (=> res!1059136 e!1588397)))

(assert (=> b!2505064 (= res!1059136 (not (is-ElementMatch!7426 lt!896444)))))

(assert (=> b!2505064 (= e!1588400 e!1588397)))

(declare-fun b!2505065 () Bool)

(assert (=> b!2505065 (= e!1588396 (= lt!896501 call!155026))))

(declare-fun bm!155021 () Bool)

(assert (=> bm!155021 (= call!155026 (isEmpty!16857 tl!4068))))

(declare-fun d!715941 () Bool)

(assert (=> d!715941 e!1588396))

(declare-fun c!398817 () Bool)

(assert (=> d!715941 (= c!398817 (is-EmptyExpr!7426 lt!896444))))

(assert (=> d!715941 (= lt!896501 e!1588399)))

(declare-fun c!398818 () Bool)

(assert (=> d!715941 (= c!398818 (isEmpty!16857 tl!4068))))

(assert (=> d!715941 (validRegex!3052 lt!896444)))

(assert (=> d!715941 (= (matchR!3429 lt!896444 tl!4068) lt!896501)))

(declare-fun b!2505066 () Bool)

(assert (=> b!2505066 (= e!1588397 e!1588398)))

(declare-fun res!1059134 () Bool)

(assert (=> b!2505066 (=> (not res!1059134) (not e!1588398))))

(assert (=> b!2505066 (= res!1059134 (not lt!896501))))

(declare-fun b!2505067 () Bool)

(declare-fun res!1059133 () Bool)

(assert (=> b!2505067 (=> (not res!1059133) (not e!1588394))))

(assert (=> b!2505067 (= res!1059133 (not call!155026))))

(declare-fun b!2505068 () Bool)

(assert (=> b!2505068 (= e!1588395 (not (= (head!5711 tl!4068) (c!398766 lt!896444))))))

(declare-fun b!2505069 () Bool)

(assert (=> b!2505069 (= e!1588400 (not lt!896501))))

(assert (= (and d!715941 c!398818) b!2505057))

(assert (= (and d!715941 (not c!398818)) b!2505062))

(assert (= (and d!715941 c!398817) b!2505065))

(assert (= (and d!715941 (not c!398817)) b!2505061))

(assert (= (and b!2505061 c!398816) b!2505069))

(assert (= (and b!2505061 (not c!398816)) b!2505064))

(assert (= (and b!2505064 (not res!1059136)) b!2505060))

(assert (= (and b!2505060 res!1059139) b!2505067))

(assert (= (and b!2505067 res!1059133) b!2505056))

(assert (= (and b!2505056 res!1059137) b!2505058))

(assert (= (and b!2505060 (not res!1059135)) b!2505066))

(assert (= (and b!2505066 res!1059134) b!2505059))

(assert (= (and b!2505059 (not res!1059132)) b!2505063))

(assert (= (and b!2505063 (not res!1059138)) b!2505068))

(assert (= (or b!2505065 b!2505059 b!2505067) bm!155021))

(assert (=> b!2505062 m!2865925))

(assert (=> b!2505062 m!2865925))

(declare-fun m!2865997 () Bool)

(assert (=> b!2505062 m!2865997))

(assert (=> b!2505062 m!2865929))

(assert (=> b!2505062 m!2865997))

(assert (=> b!2505062 m!2865929))

(declare-fun m!2865999 () Bool)

(assert (=> b!2505062 m!2865999))

(declare-fun m!2866001 () Bool)

(assert (=> b!2505057 m!2866001))

(assert (=> b!2505063 m!2865929))

(assert (=> b!2505063 m!2865929))

(assert (=> b!2505063 m!2865935))

(assert (=> d!715941 m!2865937))

(assert (=> d!715941 m!2865959))

(assert (=> b!2505056 m!2865929))

(assert (=> b!2505056 m!2865929))

(assert (=> b!2505056 m!2865935))

(assert (=> bm!155021 m!2865937))

(assert (=> b!2505068 m!2865925))

(assert (=> b!2505058 m!2865925))

(assert (=> b!2504846 d!715941))

(declare-fun d!715943 () Bool)

(declare-fun e!1588411 () Bool)

(assert (=> d!715943 e!1588411))

(declare-fun res!1059149 () Bool)

(assert (=> d!715943 (=> (not res!1059149) (not e!1588411))))

(declare-fun lt!896507 () List!29491)

(declare-fun content!4007 (List!29491) (Set C!15010))

(assert (=> d!715943 (= res!1059149 (= (content!4007 lt!896507) (set.union (content!4007 (_1!17257 lt!896446)) (content!4007 (_2!17257 lt!896446)))))))

(declare-fun e!1588410 () List!29491)

(assert (=> d!715943 (= lt!896507 e!1588410)))

(declare-fun c!398823 () Bool)

(assert (=> d!715943 (= c!398823 (is-Nil!29391 (_1!17257 lt!896446)))))

(assert (=> d!715943 (= (++!7186 (_1!17257 lt!896446) (_2!17257 lt!896446)) lt!896507)))

(declare-fun b!2505088 () Bool)

(assert (=> b!2505088 (= e!1588410 (Cons!29391 (h!34811 (_1!17257 lt!896446)) (++!7186 (t!211190 (_1!17257 lt!896446)) (_2!17257 lt!896446))))))

(declare-fun b!2505087 () Bool)

(assert (=> b!2505087 (= e!1588410 (_2!17257 lt!896446))))

(declare-fun b!2505090 () Bool)

(assert (=> b!2505090 (= e!1588411 (or (not (= (_2!17257 lt!896446) Nil!29391)) (= lt!896507 (_1!17257 lt!896446))))))

(declare-fun b!2505089 () Bool)

(declare-fun res!1059150 () Bool)

(assert (=> b!2505089 (=> (not res!1059150) (not e!1588411))))

(declare-fun size!22891 (List!29491) Int)

(assert (=> b!2505089 (= res!1059150 (= (size!22891 lt!896507) (+ (size!22891 (_1!17257 lt!896446)) (size!22891 (_2!17257 lt!896446)))))))

(assert (= (and d!715943 c!398823) b!2505087))

(assert (= (and d!715943 (not c!398823)) b!2505088))

(assert (= (and d!715943 res!1059149) b!2505089))

(assert (= (and b!2505089 res!1059150) b!2505090))

(declare-fun m!2866003 () Bool)

(assert (=> d!715943 m!2866003))

(declare-fun m!2866005 () Bool)

(assert (=> d!715943 m!2866005))

(declare-fun m!2866007 () Bool)

(assert (=> d!715943 m!2866007))

(declare-fun m!2866009 () Bool)

(assert (=> b!2505088 m!2866009))

(declare-fun m!2866011 () Bool)

(assert (=> b!2505089 m!2866011))

(declare-fun m!2866013 () Bool)

(assert (=> b!2505089 m!2866013))

(declare-fun m!2866015 () Bool)

(assert (=> b!2505089 m!2866015))

(assert (=> b!2504841 d!715943))

(declare-fun d!715945 () Bool)

(assert (=> d!715945 (= (get!9129 lt!896437) (v!31765 lt!896437))))

(assert (=> b!2504841 d!715945))

(declare-fun b!2505121 () Bool)

(declare-fun e!1588431 () Bool)

(declare-fun lt!896517 () Option!5835)

(assert (=> b!2505121 (= e!1588431 (= (++!7186 (_1!17257 (get!9129 lt!896517)) (_2!17257 (get!9129 lt!896517))) tl!4068))))

(declare-fun b!2505122 () Bool)

(declare-fun e!1588432 () Option!5835)

(assert (=> b!2505122 (= e!1588432 (Some!5834 (tuple2!29431 Nil!29391 tl!4068)))))

(declare-fun b!2505123 () Bool)

(declare-fun e!1588430 () Option!5835)

(assert (=> b!2505123 (= e!1588430 None!5834)))

(declare-fun b!2505124 () Bool)

(declare-fun lt!896518 () Unit!43109)

(declare-fun lt!896519 () Unit!43109)

(assert (=> b!2505124 (= lt!896518 lt!896519)))

(assert (=> b!2505124 (= (++!7186 (++!7186 Nil!29391 (Cons!29391 (h!34811 tl!4068) Nil!29391)) (t!211190 tl!4068)) tl!4068)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!737 (List!29491 C!15010 List!29491 List!29491) Unit!43109)

(assert (=> b!2505124 (= lt!896519 (lemmaMoveElementToOtherListKeepsConcatEq!737 Nil!29391 (h!34811 tl!4068) (t!211190 tl!4068) tl!4068))))

(assert (=> b!2505124 (= e!1588430 (findConcatSeparation!857 lt!896440 (regTwo!15364 r!27340) (++!7186 Nil!29391 (Cons!29391 (h!34811 tl!4068) Nil!29391)) (t!211190 tl!4068) tl!4068))))

(declare-fun b!2505126 () Bool)

(declare-fun e!1588428 () Bool)

(assert (=> b!2505126 (= e!1588428 (matchR!3429 (regTwo!15364 r!27340) tl!4068))))

(declare-fun b!2505127 () Bool)

(declare-fun e!1588429 () Bool)

(assert (=> b!2505127 (= e!1588429 (not (isDefined!4657 lt!896517)))))

(declare-fun b!2505128 () Bool)

(assert (=> b!2505128 (= e!1588432 e!1588430)))

(declare-fun c!398831 () Bool)

(assert (=> b!2505128 (= c!398831 (is-Nil!29391 tl!4068))))

(declare-fun b!2505129 () Bool)

(declare-fun res!1059170 () Bool)

(assert (=> b!2505129 (=> (not res!1059170) (not e!1588431))))

(assert (=> b!2505129 (= res!1059170 (matchR!3429 (regTwo!15364 r!27340) (_2!17257 (get!9129 lt!896517))))))

(declare-fun b!2505125 () Bool)

(declare-fun res!1059171 () Bool)

(assert (=> b!2505125 (=> (not res!1059171) (not e!1588431))))

(assert (=> b!2505125 (= res!1059171 (matchR!3429 lt!896440 (_1!17257 (get!9129 lt!896517))))))

(declare-fun d!715947 () Bool)

(assert (=> d!715947 e!1588429))

(declare-fun res!1059167 () Bool)

(assert (=> d!715947 (=> res!1059167 e!1588429)))

(assert (=> d!715947 (= res!1059167 e!1588431)))

(declare-fun res!1059168 () Bool)

(assert (=> d!715947 (=> (not res!1059168) (not e!1588431))))

(assert (=> d!715947 (= res!1059168 (isDefined!4657 lt!896517))))

(assert (=> d!715947 (= lt!896517 e!1588432)))

(declare-fun c!398832 () Bool)

(assert (=> d!715947 (= c!398832 e!1588428)))

(declare-fun res!1059169 () Bool)

(assert (=> d!715947 (=> (not res!1059169) (not e!1588428))))

(assert (=> d!715947 (= res!1059169 (matchR!3429 lt!896440 Nil!29391))))

(assert (=> d!715947 (validRegex!3052 lt!896440)))

(assert (=> d!715947 (= (findConcatSeparation!857 lt!896440 (regTwo!15364 r!27340) Nil!29391 tl!4068 tl!4068) lt!896517)))

(assert (= (and d!715947 res!1059169) b!2505126))

(assert (= (and d!715947 c!398832) b!2505122))

(assert (= (and d!715947 (not c!398832)) b!2505128))

(assert (= (and b!2505128 c!398831) b!2505123))

(assert (= (and b!2505128 (not c!398831)) b!2505124))

(assert (= (and d!715947 res!1059168) b!2505125))

(assert (= (and b!2505125 res!1059171) b!2505129))

(assert (= (and b!2505129 res!1059170) b!2505121))

(assert (= (and d!715947 (not res!1059167)) b!2505127))

(declare-fun m!2866053 () Bool)

(assert (=> d!715947 m!2866053))

(declare-fun m!2866055 () Bool)

(assert (=> d!715947 m!2866055))

(assert (=> d!715947 m!2865845))

(declare-fun m!2866057 () Bool)

(assert (=> b!2505129 m!2866057))

(declare-fun m!2866059 () Bool)

(assert (=> b!2505129 m!2866059))

(assert (=> b!2505125 m!2866057))

(declare-fun m!2866061 () Bool)

(assert (=> b!2505125 m!2866061))

(assert (=> b!2505127 m!2866053))

(declare-fun m!2866063 () Bool)

(assert (=> b!2505124 m!2866063))

(assert (=> b!2505124 m!2866063))

(declare-fun m!2866065 () Bool)

(assert (=> b!2505124 m!2866065))

(declare-fun m!2866067 () Bool)

(assert (=> b!2505124 m!2866067))

(assert (=> b!2505124 m!2866063))

(declare-fun m!2866069 () Bool)

(assert (=> b!2505124 m!2866069))

(assert (=> b!2505121 m!2866057))

(declare-fun m!2866071 () Bool)

(assert (=> b!2505121 m!2866071))

(declare-fun m!2866073 () Bool)

(assert (=> b!2505126 m!2866073))

(assert (=> b!2504841 d!715947))

(declare-fun d!715953 () Bool)

(declare-fun isEmpty!16859 (Option!5835) Bool)

(assert (=> d!715953 (= (isDefined!4657 lt!896437) (not (isEmpty!16859 lt!896437)))))

(declare-fun bs!468650 () Bool)

(assert (= bs!468650 d!715953))

(declare-fun m!2866075 () Bool)

(assert (=> bs!468650 m!2866075))

(assert (=> b!2504841 d!715953))

(declare-fun d!715955 () Bool)

(assert (=> d!715955 (isDefined!4657 (findConcatSeparation!857 lt!896440 (regTwo!15364 r!27340) Nil!29391 tl!4068 tl!4068))))

(declare-fun lt!896522 () Unit!43109)

(declare-fun choose!14805 (Regex!7426 Regex!7426 List!29491) Unit!43109)

(assert (=> d!715955 (= lt!896522 (choose!14805 lt!896440 (regTwo!15364 r!27340) tl!4068))))

(assert (=> d!715955 (validRegex!3052 lt!896440)))

(assert (=> d!715955 (= (lemmaConcatAcceptsStringThenFindSeparationIsDefined!139 lt!896440 (regTwo!15364 r!27340) tl!4068) lt!896522)))

(declare-fun bs!468651 () Bool)

(assert (= bs!468651 d!715955))

(assert (=> bs!468651 m!2865875))

(assert (=> bs!468651 m!2865875))

(declare-fun m!2866077 () Bool)

(assert (=> bs!468651 m!2866077))

(declare-fun m!2866079 () Bool)

(assert (=> bs!468651 m!2866079))

(assert (=> bs!468651 m!2865845))

(assert (=> b!2504841 d!715955))

(declare-fun d!715957 () Bool)

(declare-fun nullableFct!607 (Regex!7426) Bool)

(assert (=> d!715957 (= (nullable!2343 (derivative!121 (derivativeStep!1995 r!27340 c!14016) tl!4068)) (nullableFct!607 (derivative!121 (derivativeStep!1995 r!27340 c!14016) tl!4068)))))

(declare-fun bs!468652 () Bool)

(assert (= bs!468652 d!715957))

(assert (=> bs!468652 m!2865839))

(declare-fun m!2866081 () Bool)

(assert (=> bs!468652 m!2866081))

(assert (=> b!2504850 d!715957))

(declare-fun d!715959 () Bool)

(declare-fun lt!896525 () Regex!7426)

(assert (=> d!715959 (validRegex!3052 lt!896525)))

(declare-fun e!1588433 () Regex!7426)

(assert (=> d!715959 (= lt!896525 e!1588433)))

(declare-fun c!398833 () Bool)

(assert (=> d!715959 (= c!398833 (is-Cons!29391 tl!4068))))

(assert (=> d!715959 (validRegex!3052 (derivativeStep!1995 r!27340 c!14016))))

(assert (=> d!715959 (= (derivative!121 (derivativeStep!1995 r!27340 c!14016) tl!4068) lt!896525)))

(declare-fun b!2505130 () Bool)

(assert (=> b!2505130 (= e!1588433 (derivative!121 (derivativeStep!1995 (derivativeStep!1995 r!27340 c!14016) (h!34811 tl!4068)) (t!211190 tl!4068)))))

(declare-fun b!2505131 () Bool)

(assert (=> b!2505131 (= e!1588433 (derivativeStep!1995 r!27340 c!14016))))

(assert (= (and d!715959 c!398833) b!2505130))

(assert (= (and d!715959 (not c!398833)) b!2505131))

(declare-fun m!2866083 () Bool)

(assert (=> d!715959 m!2866083))

(assert (=> d!715959 m!2865837))

(declare-fun m!2866085 () Bool)

(assert (=> d!715959 m!2866085))

(assert (=> b!2505130 m!2865837))

(declare-fun m!2866087 () Bool)

(assert (=> b!2505130 m!2866087))

(assert (=> b!2505130 m!2866087))

(declare-fun m!2866089 () Bool)

(assert (=> b!2505130 m!2866089))

(assert (=> b!2504850 d!715959))

(declare-fun b!2505132 () Bool)

(declare-fun c!398835 () Bool)

(assert (=> b!2505132 (= c!398835 (is-Union!7426 r!27340))))

(declare-fun e!1588437 () Regex!7426)

(declare-fun e!1588438 () Regex!7426)

(assert (=> b!2505132 (= e!1588437 e!1588438)))

(declare-fun bm!155022 () Bool)

(declare-fun call!155028 () Regex!7426)

(declare-fun call!155030 () Regex!7426)

(assert (=> bm!155022 (= call!155028 call!155030)))

(declare-fun d!715961 () Bool)

(declare-fun lt!896526 () Regex!7426)

(assert (=> d!715961 (validRegex!3052 lt!896526)))

(declare-fun e!1588434 () Regex!7426)

(assert (=> d!715961 (= lt!896526 e!1588434)))

(declare-fun c!398838 () Bool)

(assert (=> d!715961 (= c!398838 (or (is-EmptyExpr!7426 r!27340) (is-EmptyLang!7426 r!27340)))))

(assert (=> d!715961 (validRegex!3052 r!27340)))

(assert (=> d!715961 (= (derivativeStep!1995 r!27340 c!14016) lt!896526)))

(declare-fun b!2505133 () Bool)

(declare-fun e!1588436 () Regex!7426)

(assert (=> b!2505133 (= e!1588436 (Union!7426 (Concat!12122 call!155028 (regTwo!15364 r!27340)) EmptyLang!7426))))

(declare-fun bm!155023 () Bool)

(declare-fun call!155029 () Regex!7426)

(assert (=> bm!155023 (= call!155029 (derivativeStep!1995 (ite c!398835 (regOne!15365 r!27340) (regTwo!15364 r!27340)) c!14016))))

(declare-fun bm!155024 () Bool)

(declare-fun call!155027 () Regex!7426)

(assert (=> bm!155024 (= call!155030 call!155027)))

(declare-fun b!2505134 () Bool)

(assert (=> b!2505134 (= e!1588436 (Union!7426 (Concat!12122 call!155028 (regTwo!15364 r!27340)) call!155029))))

(declare-fun b!2505135 () Bool)

(assert (=> b!2505135 (= e!1588434 EmptyLang!7426)))

(declare-fun b!2505136 () Bool)

(declare-fun c!398837 () Bool)

(assert (=> b!2505136 (= c!398837 (nullable!2343 (regOne!15364 r!27340)))))

(declare-fun e!1588435 () Regex!7426)

(assert (=> b!2505136 (= e!1588435 e!1588436)))

(declare-fun bm!155025 () Bool)

(declare-fun c!398834 () Bool)

(assert (=> bm!155025 (= call!155027 (derivativeStep!1995 (ite c!398835 (regTwo!15365 r!27340) (ite c!398834 (reg!7755 r!27340) (regOne!15364 r!27340))) c!14016))))

(declare-fun b!2505137 () Bool)

(assert (=> b!2505137 (= e!1588438 e!1588435)))

(assert (=> b!2505137 (= c!398834 (is-Star!7426 r!27340))))

(declare-fun b!2505138 () Bool)

(assert (=> b!2505138 (= e!1588434 e!1588437)))

(declare-fun c!398836 () Bool)

(assert (=> b!2505138 (= c!398836 (is-ElementMatch!7426 r!27340))))

(declare-fun b!2505139 () Bool)

(assert (=> b!2505139 (= e!1588438 (Union!7426 call!155029 call!155027))))

(declare-fun b!2505140 () Bool)

(assert (=> b!2505140 (= e!1588435 (Concat!12122 call!155030 r!27340))))

(declare-fun b!2505141 () Bool)

(assert (=> b!2505141 (= e!1588437 (ite (= c!14016 (c!398766 r!27340)) EmptyExpr!7426 EmptyLang!7426))))

(assert (= (and d!715961 c!398838) b!2505135))

(assert (= (and d!715961 (not c!398838)) b!2505138))

(assert (= (and b!2505138 c!398836) b!2505141))

(assert (= (and b!2505138 (not c!398836)) b!2505132))

(assert (= (and b!2505132 c!398835) b!2505139))

(assert (= (and b!2505132 (not c!398835)) b!2505137))

(assert (= (and b!2505137 c!398834) b!2505140))

(assert (= (and b!2505137 (not c!398834)) b!2505136))

(assert (= (and b!2505136 c!398837) b!2505134))

(assert (= (and b!2505136 (not c!398837)) b!2505133))

(assert (= (or b!2505134 b!2505133) bm!155022))

(assert (= (or b!2505140 bm!155022) bm!155024))

(assert (= (or b!2505139 bm!155024) bm!155025))

(assert (= (or b!2505139 b!2505134) bm!155023))

(declare-fun m!2866091 () Bool)

(assert (=> d!715961 m!2866091))

(assert (=> d!715961 m!2865843))

(declare-fun m!2866093 () Bool)

(assert (=> bm!155023 m!2866093))

(assert (=> b!2505136 m!2865849))

(declare-fun m!2866095 () Bool)

(assert (=> bm!155025 m!2866095))

(assert (=> b!2504850 d!715961))

(declare-fun b!2505160 () Bool)

(declare-fun e!1588453 () Bool)

(declare-fun e!1588458 () Bool)

(assert (=> b!2505160 (= e!1588453 e!1588458)))

(declare-fun c!398844 () Bool)

(assert (=> b!2505160 (= c!398844 (is-Star!7426 r!27340))))

(declare-fun b!2505161 () Bool)

(declare-fun e!1588457 () Bool)

(assert (=> b!2505161 (= e!1588458 e!1588457)))

(declare-fun res!1059185 () Bool)

(assert (=> b!2505161 (= res!1059185 (not (nullable!2343 (reg!7755 r!27340))))))

(assert (=> b!2505161 (=> (not res!1059185) (not e!1588457))))

(declare-fun b!2505162 () Bool)

(declare-fun res!1059182 () Bool)

(declare-fun e!1588456 () Bool)

(assert (=> b!2505162 (=> (not res!1059182) (not e!1588456))))

(declare-fun call!155039 () Bool)

(assert (=> b!2505162 (= res!1059182 call!155039)))

(declare-fun e!1588454 () Bool)

(assert (=> b!2505162 (= e!1588454 e!1588456)))

(declare-fun b!2505163 () Bool)

(declare-fun call!155037 () Bool)

(assert (=> b!2505163 (= e!1588456 call!155037)))

(declare-fun d!715963 () Bool)

(declare-fun res!1059186 () Bool)

(assert (=> d!715963 (=> res!1059186 e!1588453)))

(assert (=> d!715963 (= res!1059186 (is-ElementMatch!7426 r!27340))))

(assert (=> d!715963 (= (validRegex!3052 r!27340) e!1588453)))

(declare-fun b!2505164 () Bool)

(declare-fun e!1588455 () Bool)

(declare-fun e!1588459 () Bool)

(assert (=> b!2505164 (= e!1588455 e!1588459)))

(declare-fun res!1059184 () Bool)

(assert (=> b!2505164 (=> (not res!1059184) (not e!1588459))))

(assert (=> b!2505164 (= res!1059184 call!155037)))

(declare-fun b!2505165 () Bool)

(assert (=> b!2505165 (= e!1588459 call!155039)))

(declare-fun bm!155032 () Bool)

(declare-fun call!155038 () Bool)

(declare-fun c!398843 () Bool)

(assert (=> bm!155032 (= call!155038 (validRegex!3052 (ite c!398844 (reg!7755 r!27340) (ite c!398843 (regOne!15365 r!27340) (regTwo!15364 r!27340)))))))

(declare-fun b!2505166 () Bool)

(declare-fun res!1059183 () Bool)

(assert (=> b!2505166 (=> res!1059183 e!1588455)))

(assert (=> b!2505166 (= res!1059183 (not (is-Concat!12122 r!27340)))))

(assert (=> b!2505166 (= e!1588454 e!1588455)))

(declare-fun b!2505167 () Bool)

(assert (=> b!2505167 (= e!1588458 e!1588454)))

(assert (=> b!2505167 (= c!398843 (is-Union!7426 r!27340))))

(declare-fun bm!155033 () Bool)

(assert (=> bm!155033 (= call!155037 (validRegex!3052 (ite c!398843 (regTwo!15365 r!27340) (regOne!15364 r!27340))))))

(declare-fun bm!155034 () Bool)

(assert (=> bm!155034 (= call!155039 call!155038)))

(declare-fun b!2505168 () Bool)

(assert (=> b!2505168 (= e!1588457 call!155038)))

(assert (= (and d!715963 (not res!1059186)) b!2505160))

(assert (= (and b!2505160 c!398844) b!2505161))

(assert (= (and b!2505160 (not c!398844)) b!2505167))

(assert (= (and b!2505161 res!1059185) b!2505168))

(assert (= (and b!2505167 c!398843) b!2505162))

(assert (= (and b!2505167 (not c!398843)) b!2505166))

(assert (= (and b!2505162 res!1059182) b!2505163))

(assert (= (and b!2505166 (not res!1059183)) b!2505164))

(assert (= (and b!2505164 res!1059184) b!2505165))

(assert (= (or b!2505162 b!2505165) bm!155034))

(assert (= (or b!2505163 b!2505164) bm!155033))

(assert (= (or b!2505168 bm!155034) bm!155032))

(declare-fun m!2866103 () Bool)

(assert (=> b!2505161 m!2866103))

(declare-fun m!2866105 () Bool)

(assert (=> bm!155032 m!2866105))

(declare-fun m!2866107 () Bool)

(assert (=> bm!155033 m!2866107))

(assert (=> start!244426 d!715963))

(declare-fun b!2505169 () Bool)

(declare-fun e!1588460 () Bool)

(declare-fun e!1588465 () Bool)

(assert (=> b!2505169 (= e!1588460 e!1588465)))

(declare-fun c!398846 () Bool)

(assert (=> b!2505169 (= c!398846 (is-Star!7426 lt!896440))))

(declare-fun b!2505170 () Bool)

(declare-fun e!1588464 () Bool)

(assert (=> b!2505170 (= e!1588465 e!1588464)))

(declare-fun res!1059190 () Bool)

(assert (=> b!2505170 (= res!1059190 (not (nullable!2343 (reg!7755 lt!896440))))))

(assert (=> b!2505170 (=> (not res!1059190) (not e!1588464))))

(declare-fun b!2505171 () Bool)

(declare-fun res!1059187 () Bool)

(declare-fun e!1588463 () Bool)

(assert (=> b!2505171 (=> (not res!1059187) (not e!1588463))))

(declare-fun call!155042 () Bool)

(assert (=> b!2505171 (= res!1059187 call!155042)))

(declare-fun e!1588461 () Bool)

(assert (=> b!2505171 (= e!1588461 e!1588463)))

(declare-fun b!2505172 () Bool)

(declare-fun call!155040 () Bool)

(assert (=> b!2505172 (= e!1588463 call!155040)))

(declare-fun d!715971 () Bool)

(declare-fun res!1059191 () Bool)

(assert (=> d!715971 (=> res!1059191 e!1588460)))

(assert (=> d!715971 (= res!1059191 (is-ElementMatch!7426 lt!896440))))

(assert (=> d!715971 (= (validRegex!3052 lt!896440) e!1588460)))

(declare-fun b!2505173 () Bool)

(declare-fun e!1588462 () Bool)

(declare-fun e!1588466 () Bool)

(assert (=> b!2505173 (= e!1588462 e!1588466)))

(declare-fun res!1059189 () Bool)

(assert (=> b!2505173 (=> (not res!1059189) (not e!1588466))))

(assert (=> b!2505173 (= res!1059189 call!155040)))

(declare-fun b!2505174 () Bool)

(assert (=> b!2505174 (= e!1588466 call!155042)))

(declare-fun call!155041 () Bool)

(declare-fun c!398845 () Bool)

(declare-fun bm!155035 () Bool)

(assert (=> bm!155035 (= call!155041 (validRegex!3052 (ite c!398846 (reg!7755 lt!896440) (ite c!398845 (regOne!15365 lt!896440) (regTwo!15364 lt!896440)))))))

(declare-fun b!2505175 () Bool)

(declare-fun res!1059188 () Bool)

(assert (=> b!2505175 (=> res!1059188 e!1588462)))

(assert (=> b!2505175 (= res!1059188 (not (is-Concat!12122 lt!896440)))))

(assert (=> b!2505175 (= e!1588461 e!1588462)))

(declare-fun b!2505176 () Bool)

(assert (=> b!2505176 (= e!1588465 e!1588461)))

(assert (=> b!2505176 (= c!398845 (is-Union!7426 lt!896440))))

(declare-fun bm!155036 () Bool)

(assert (=> bm!155036 (= call!155040 (validRegex!3052 (ite c!398845 (regTwo!15365 lt!896440) (regOne!15364 lt!896440))))))

(declare-fun bm!155037 () Bool)

(assert (=> bm!155037 (= call!155042 call!155041)))

(declare-fun b!2505177 () Bool)

(assert (=> b!2505177 (= e!1588464 call!155041)))

(assert (= (and d!715971 (not res!1059191)) b!2505169))

(assert (= (and b!2505169 c!398846) b!2505170))

(assert (= (and b!2505169 (not c!398846)) b!2505176))

(assert (= (and b!2505170 res!1059190) b!2505177))

(assert (= (and b!2505176 c!398845) b!2505171))

(assert (= (and b!2505176 (not c!398845)) b!2505175))

(assert (= (and b!2505171 res!1059187) b!2505172))

(assert (= (and b!2505175 (not res!1059188)) b!2505173))

(assert (= (and b!2505173 res!1059189) b!2505174))

(assert (= (or b!2505171 b!2505174) bm!155037))

(assert (= (or b!2505172 b!2505173) bm!155036))

(assert (= (or b!2505177 bm!155037) bm!155035))

(declare-fun m!2866109 () Bool)

(assert (=> b!2505170 m!2866109))

(declare-fun m!2866111 () Bool)

(assert (=> bm!155035 m!2866111))

(declare-fun m!2866113 () Bool)

(assert (=> bm!155036 m!2866113))

(assert (=> b!2504844 d!715971))

(declare-fun d!715973 () Bool)

(assert (=> d!715973 (= (nullable!2343 (regOne!15364 r!27340)) (nullableFct!607 (regOne!15364 r!27340)))))

(declare-fun bs!468655 () Bool)

(assert (= bs!468655 d!715973))

(declare-fun m!2866115 () Bool)

(assert (=> bs!468655 m!2866115))

(assert (=> b!2504849 d!715973))

(declare-fun b!2505189 () Bool)

(declare-fun e!1588469 () Bool)

(declare-fun tp!801596 () Bool)

(declare-fun tp!801595 () Bool)

(assert (=> b!2505189 (= e!1588469 (and tp!801596 tp!801595))))

(declare-fun b!2505191 () Bool)

(declare-fun tp!801593 () Bool)

(declare-fun tp!801597 () Bool)

(assert (=> b!2505191 (= e!1588469 (and tp!801593 tp!801597))))

(declare-fun b!2505190 () Bool)

(declare-fun tp!801594 () Bool)

(assert (=> b!2505190 (= e!1588469 tp!801594)))

(declare-fun b!2505188 () Bool)

(assert (=> b!2505188 (= e!1588469 tp_is_empty!12707)))

(assert (=> b!2504847 (= tp!801561 e!1588469)))

(assert (= (and b!2504847 (is-ElementMatch!7426 (reg!7755 r!27340))) b!2505188))

(assert (= (and b!2504847 (is-Concat!12122 (reg!7755 r!27340))) b!2505189))

(assert (= (and b!2504847 (is-Star!7426 (reg!7755 r!27340))) b!2505190))

(assert (= (and b!2504847 (is-Union!7426 (reg!7755 r!27340))) b!2505191))

(declare-fun b!2505196 () Bool)

(declare-fun e!1588472 () Bool)

(declare-fun tp!801600 () Bool)

(assert (=> b!2505196 (= e!1588472 (and tp_is_empty!12707 tp!801600))))

(assert (=> b!2504848 (= tp!801563 e!1588472)))

(assert (= (and b!2504848 (is-Cons!29391 (t!211190 tl!4068))) b!2505196))

(declare-fun b!2505198 () Bool)

(declare-fun e!1588473 () Bool)

(declare-fun tp!801604 () Bool)

(declare-fun tp!801603 () Bool)

(assert (=> b!2505198 (= e!1588473 (and tp!801604 tp!801603))))

(declare-fun b!2505200 () Bool)

(declare-fun tp!801601 () Bool)

(declare-fun tp!801605 () Bool)

(assert (=> b!2505200 (= e!1588473 (and tp!801601 tp!801605))))

(declare-fun b!2505199 () Bool)

(declare-fun tp!801602 () Bool)

(assert (=> b!2505199 (= e!1588473 tp!801602)))

(declare-fun b!2505197 () Bool)

(assert (=> b!2505197 (= e!1588473 tp_is_empty!12707)))

(assert (=> b!2504851 (= tp!801559 e!1588473)))

(assert (= (and b!2504851 (is-ElementMatch!7426 (regOne!15365 r!27340))) b!2505197))

(assert (= (and b!2504851 (is-Concat!12122 (regOne!15365 r!27340))) b!2505198))

(assert (= (and b!2504851 (is-Star!7426 (regOne!15365 r!27340))) b!2505199))

(assert (= (and b!2504851 (is-Union!7426 (regOne!15365 r!27340))) b!2505200))

(declare-fun b!2505202 () Bool)

(declare-fun e!1588474 () Bool)

(declare-fun tp!801609 () Bool)

(declare-fun tp!801608 () Bool)

(assert (=> b!2505202 (= e!1588474 (and tp!801609 tp!801608))))

(declare-fun b!2505204 () Bool)

(declare-fun tp!801606 () Bool)

(declare-fun tp!801610 () Bool)

(assert (=> b!2505204 (= e!1588474 (and tp!801606 tp!801610))))

(declare-fun b!2505203 () Bool)

(declare-fun tp!801607 () Bool)

(assert (=> b!2505203 (= e!1588474 tp!801607)))

(declare-fun b!2505201 () Bool)

(assert (=> b!2505201 (= e!1588474 tp_is_empty!12707)))

(assert (=> b!2504851 (= tp!801560 e!1588474)))

(assert (= (and b!2504851 (is-ElementMatch!7426 (regTwo!15365 r!27340))) b!2505201))

(assert (= (and b!2504851 (is-Concat!12122 (regTwo!15365 r!27340))) b!2505202))

(assert (= (and b!2504851 (is-Star!7426 (regTwo!15365 r!27340))) b!2505203))

(assert (= (and b!2504851 (is-Union!7426 (regTwo!15365 r!27340))) b!2505204))

(declare-fun b!2505206 () Bool)

(declare-fun e!1588475 () Bool)

(declare-fun tp!801614 () Bool)

(declare-fun tp!801613 () Bool)

(assert (=> b!2505206 (= e!1588475 (and tp!801614 tp!801613))))

(declare-fun b!2505208 () Bool)

(declare-fun tp!801611 () Bool)

(declare-fun tp!801615 () Bool)

(assert (=> b!2505208 (= e!1588475 (and tp!801611 tp!801615))))

(declare-fun b!2505207 () Bool)

(declare-fun tp!801612 () Bool)

(assert (=> b!2505207 (= e!1588475 tp!801612)))

(declare-fun b!2505205 () Bool)

(assert (=> b!2505205 (= e!1588475 tp_is_empty!12707)))

(assert (=> b!2504843 (= tp!801562 e!1588475)))

(assert (= (and b!2504843 (is-ElementMatch!7426 (regOne!15364 r!27340))) b!2505205))

(assert (= (and b!2504843 (is-Concat!12122 (regOne!15364 r!27340))) b!2505206))

(assert (= (and b!2504843 (is-Star!7426 (regOne!15364 r!27340))) b!2505207))

(assert (= (and b!2504843 (is-Union!7426 (regOne!15364 r!27340))) b!2505208))

(declare-fun b!2505210 () Bool)

(declare-fun e!1588476 () Bool)

(declare-fun tp!801619 () Bool)

(declare-fun tp!801618 () Bool)

(assert (=> b!2505210 (= e!1588476 (and tp!801619 tp!801618))))

(declare-fun b!2505212 () Bool)

(declare-fun tp!801616 () Bool)

(declare-fun tp!801620 () Bool)

(assert (=> b!2505212 (= e!1588476 (and tp!801616 tp!801620))))

(declare-fun b!2505211 () Bool)

(declare-fun tp!801617 () Bool)

(assert (=> b!2505211 (= e!1588476 tp!801617)))

(declare-fun b!2505209 () Bool)

(assert (=> b!2505209 (= e!1588476 tp_is_empty!12707)))

(assert (=> b!2504843 (= tp!801564 e!1588476)))

(assert (= (and b!2504843 (is-ElementMatch!7426 (regTwo!15364 r!27340))) b!2505209))

(assert (= (and b!2504843 (is-Concat!12122 (regTwo!15364 r!27340))) b!2505210))

(assert (= (and b!2504843 (is-Star!7426 (regTwo!15364 r!27340))) b!2505211))

(assert (= (and b!2504843 (is-Union!7426 (regTwo!15364 r!27340))) b!2505212))

(push 1)

(assert (not d!715973))

(assert (not d!715957))

(assert (not b!2505130))

(assert (not b!2505191))

(assert (not b!2505136))

(assert (not d!715937))

(assert (not b!2505129))

(assert (not b!2504962))

(assert (not b!2504976))

(assert (not bm!155003))

(assert (not b!2505204))

(assert (not d!715931))

(assert (not b!2505125))

(assert (not d!715955))

(assert (not b!2504970))

(assert (not b!2505212))

(assert (not b!2504945))

(assert (not b!2505198))

(assert (not d!715947))

(assert (not b!2505206))

(assert (not b!2505127))

(assert (not b!2505062))

(assert (not bm!155025))

(assert (not b!2504956))

(assert (not bm!155032))

(assert (not b!2504985))

(assert (not b!2505211))

(assert (not b!2505202))

(assert (not b!2505207))

(assert tp_is_empty!12707)

(assert (not b!2504950))

(assert (not d!715953))

(assert (not b!2504946))

(assert (not b!2505040))

(assert (not bm!155036))

(assert (not bm!155014))

(assert (not b!2504964))

(assert (not b!2505190))

(assert (not b!2504971))

(assert (not bm!155004))

(assert (not b!2505199))

(assert (not b!2505050))

(assert (not b!2504966))

(assert (not b!2504983))

(assert (not d!715935))

(assert (not d!715959))

(assert (not b!2504944))

(assert (not b!2505126))

(assert (not b!2505189))

(assert (not b!2505203))

(assert (not b!2504965))

(assert (not bm!155020))

(assert (not b!2505057))

(assert (not b!2504990))

(assert (not b!2504991))

(assert (not b!2505056))

(assert (not b!2505208))

(assert (not d!715941))

(assert (not b!2505063))

(assert (not d!715939))

(assert (not d!715943))

(assert (not d!715921))

(assert (not bm!155016))

(assert (not b!2505088))

(assert (not b!2505210))

(assert (not bm!155035))

(assert (not d!715929))

(assert (not b!2505170))

(assert (not b!2504982))

(assert (not bm!155033))

(assert (not b!2505089))

(assert (not b!2505200))

(assert (not d!715961))

(assert (not b!2505196))

(assert (not b!2505121))

(assert (not b!2505124))

(assert (not b!2505161))

(assert (not bm!155002))

(assert (not bm!155018))

(assert (not b!2504984))

(assert (not b!2505068))

(assert (not b!2504951))

(assert (not bm!155023))

(assert (not b!2504986))

(assert (not b!2504996))

(assert (not bm!155021))

(assert (not d!715933))

(assert (not d!715927))

(assert (not b!2505058))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

