; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!87732 () Bool)

(assert start!87732)

(declare-fun b!997952 () Bool)

(declare-fun e!639979 () Bool)

(declare-datatypes ((C!6098 0))(
  ( (C!6099 (val!3297 Int)) )
))
(declare-datatypes ((Regex!2764 0))(
  ( (ElementMatch!2764 (c!164211 C!6098)) (Concat!4597 (regOne!6040 Regex!2764) (regTwo!6040 Regex!2764)) (EmptyExpr!2764) (Star!2764 (reg!3093 Regex!2764)) (EmptyLang!2764) (Union!2764 (regOne!6041 Regex!2764) (regTwo!6041 Regex!2764)) )
))
(declare-fun r!15766 () Regex!2764)

(declare-datatypes ((List!9994 0))(
  ( (Nil!9978) (Cons!9978 (h!15379 C!6098) (t!101040 List!9994)) )
))
(declare-fun s!10566 () List!9994)

(declare-fun matchR!1300 (Regex!2764 List!9994) Bool)

(assert (=> b!997952 (= e!639979 (matchR!1300 (regTwo!6041 r!15766) s!10566))))

(declare-fun b!997953 () Bool)

(declare-fun e!639980 () Bool)

(declare-fun tp!304382 () Bool)

(assert (=> b!997953 (= e!639980 tp!304382)))

(declare-fun b!997954 () Bool)

(declare-fun tp!304384 () Bool)

(declare-fun tp!304383 () Bool)

(assert (=> b!997954 (= e!639980 (and tp!304384 tp!304383))))

(declare-fun res!450695 () Bool)

(declare-fun e!639976 () Bool)

(assert (=> start!87732 (=> (not res!450695) (not e!639976))))

(declare-fun validRegex!1233 (Regex!2764) Bool)

(assert (=> start!87732 (= res!450695 (validRegex!1233 r!15766))))

(assert (=> start!87732 e!639976))

(assert (=> start!87732 e!639980))

(declare-fun e!639974 () Bool)

(assert (=> start!87732 e!639974))

(declare-fun b!997955 () Bool)

(declare-fun tp_is_empty!5171 () Bool)

(assert (=> b!997955 (= e!639980 tp_is_empty!5171)))

(declare-fun b!997956 () Bool)

(declare-fun e!639977 () Bool)

(declare-fun e!639978 () Bool)

(assert (=> b!997956 (= e!639977 e!639978)))

(declare-fun res!450694 () Bool)

(assert (=> b!997956 (=> res!450694 e!639978)))

(declare-fun lt!351581 () Bool)

(assert (=> b!997956 (= res!450694 (not lt!351581))))

(assert (=> b!997956 e!639979))

(declare-fun res!450697 () Bool)

(assert (=> b!997956 (=> res!450697 e!639979)))

(assert (=> b!997956 (= res!450697 lt!351581)))

(assert (=> b!997956 (= lt!351581 (matchR!1300 (regOne!6041 r!15766) s!10566))))

(declare-datatypes ((Unit!15187 0))(
  ( (Unit!15188) )
))
(declare-fun lt!351580 () Unit!15187)

(declare-fun lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!71 (Regex!2764 Regex!2764 List!9994) Unit!15187)

(assert (=> b!997956 (= lt!351580 (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!71 (regOne!6041 r!15766) (regTwo!6041 r!15766) s!10566))))

(declare-fun b!997957 () Bool)

(declare-fun e!639975 () Bool)

(assert (=> b!997957 (= e!639978 e!639975)))

(declare-fun res!450696 () Bool)

(assert (=> b!997957 (=> (not res!450696) (not e!639975))))

(declare-fun lt!351577 () Regex!2764)

(assert (=> b!997957 (= res!450696 (validRegex!1233 lt!351577))))

(declare-fun lt!351578 () Regex!2764)

(declare-fun removeUselessConcat!361 (Regex!2764) Regex!2764)

(assert (=> b!997957 (= lt!351578 (removeUselessConcat!361 (regTwo!6041 r!15766)))))

(assert (=> b!997957 (matchR!1300 lt!351577 s!10566)))

(assert (=> b!997957 (= lt!351577 (removeUselessConcat!361 (regOne!6041 r!15766)))))

(declare-fun lt!351579 () Unit!15187)

(declare-fun lemmaRemoveUselessConcatSound!207 (Regex!2764 List!9994) Unit!15187)

(assert (=> b!997957 (= lt!351579 (lemmaRemoveUselessConcatSound!207 (regOne!6041 r!15766) s!10566))))

(declare-fun b!997958 () Bool)

(assert (=> b!997958 (= e!639976 (not e!639977))))

(declare-fun res!450693 () Bool)

(assert (=> b!997958 (=> res!450693 e!639977)))

(declare-fun lt!351582 () Bool)

(assert (=> b!997958 (= res!450693 (or (not lt!351582) (and (is-Concat!4597 r!15766) (is-EmptyExpr!2764 (regOne!6040 r!15766))) (and (is-Concat!4597 r!15766) (is-EmptyExpr!2764 (regTwo!6040 r!15766))) (is-Concat!4597 r!15766) (not (is-Union!2764 r!15766))))))

(declare-fun matchRSpec!563 (Regex!2764 List!9994) Bool)

(assert (=> b!997958 (= lt!351582 (matchRSpec!563 r!15766 s!10566))))

(assert (=> b!997958 (= lt!351582 (matchR!1300 r!15766 s!10566))))

(declare-fun lt!351576 () Unit!15187)

(declare-fun mainMatchTheorem!563 (Regex!2764 List!9994) Unit!15187)

(assert (=> b!997958 (= lt!351576 (mainMatchTheorem!563 r!15766 s!10566))))

(declare-fun b!997959 () Bool)

(declare-fun tp!304385 () Bool)

(declare-fun tp!304386 () Bool)

(assert (=> b!997959 (= e!639980 (and tp!304385 tp!304386))))

(declare-fun b!997960 () Bool)

(assert (=> b!997960 (= e!639975 (validRegex!1233 lt!351578))))

(declare-fun b!997961 () Bool)

(declare-fun tp!304381 () Bool)

(assert (=> b!997961 (= e!639974 (and tp_is_empty!5171 tp!304381))))

(assert (= (and start!87732 res!450695) b!997958))

(assert (= (and b!997958 (not res!450693)) b!997956))

(assert (= (and b!997956 (not res!450697)) b!997952))

(assert (= (and b!997956 (not res!450694)) b!997957))

(assert (= (and b!997957 res!450696) b!997960))

(assert (= (and start!87732 (is-ElementMatch!2764 r!15766)) b!997955))

(assert (= (and start!87732 (is-Concat!4597 r!15766)) b!997954))

(assert (= (and start!87732 (is-Star!2764 r!15766)) b!997953))

(assert (= (and start!87732 (is-Union!2764 r!15766)) b!997959))

(assert (= (and start!87732 (is-Cons!9978 s!10566)) b!997961))

(declare-fun m!1188869 () Bool)

(assert (=> b!997956 m!1188869))

(declare-fun m!1188871 () Bool)

(assert (=> b!997956 m!1188871))

(declare-fun m!1188873 () Bool)

(assert (=> b!997957 m!1188873))

(declare-fun m!1188875 () Bool)

(assert (=> b!997957 m!1188875))

(declare-fun m!1188877 () Bool)

(assert (=> b!997957 m!1188877))

(declare-fun m!1188879 () Bool)

(assert (=> b!997957 m!1188879))

(declare-fun m!1188881 () Bool)

(assert (=> b!997957 m!1188881))

(declare-fun m!1188883 () Bool)

(assert (=> b!997960 m!1188883))

(declare-fun m!1188885 () Bool)

(assert (=> b!997958 m!1188885))

(declare-fun m!1188887 () Bool)

(assert (=> b!997958 m!1188887))

(declare-fun m!1188889 () Bool)

(assert (=> b!997958 m!1188889))

(declare-fun m!1188891 () Bool)

(assert (=> b!997952 m!1188891))

(declare-fun m!1188893 () Bool)

(assert (=> start!87732 m!1188893))

(push 1)

(assert (not b!997956))

(assert (not b!997957))

(assert (not start!87732))

(assert (not b!997954))

(assert tp_is_empty!5171)

(assert (not b!997952))

(assert (not b!997959))

(assert (not b!997960))

(assert (not b!997953))

(assert (not b!997961))

(assert (not b!997958))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!998076 () Bool)

(declare-fun e!640058 () Bool)

(declare-fun head!1837 (List!9994) C!6098)

(assert (=> b!998076 (= e!640058 (not (= (head!1837 s!10566) (c!164211 (regOne!6041 r!15766)))))))

(declare-fun b!998077 () Bool)

(declare-fun res!450754 () Bool)

(declare-fun e!640057 () Bool)

(assert (=> b!998077 (=> (not res!450754) (not e!640057))))

(declare-fun isEmpty!6316 (List!9994) Bool)

(declare-fun tail!1399 (List!9994) List!9994)

(assert (=> b!998077 (= res!450754 (isEmpty!6316 (tail!1399 s!10566)))))

(declare-fun b!998078 () Bool)

(declare-fun res!450750 () Bool)

(assert (=> b!998078 (=> res!450750 e!640058)))

(assert (=> b!998078 (= res!450750 (not (isEmpty!6316 (tail!1399 s!10566))))))

(declare-fun b!998079 () Bool)

(declare-fun e!640059 () Bool)

(declare-fun lt!351608 () Bool)

(declare-fun call!66106 () Bool)

(assert (=> b!998079 (= e!640059 (= lt!351608 call!66106))))

(declare-fun b!998081 () Bool)

(declare-fun res!450749 () Bool)

(declare-fun e!640056 () Bool)

(assert (=> b!998081 (=> res!450749 e!640056)))

(assert (=> b!998081 (= res!450749 e!640057)))

(declare-fun res!450755 () Bool)

(assert (=> b!998081 (=> (not res!450755) (not e!640057))))

(assert (=> b!998081 (= res!450755 lt!351608)))

(declare-fun b!998082 () Bool)

(declare-fun e!640060 () Bool)

(assert (=> b!998082 (= e!640056 e!640060)))

(declare-fun res!450751 () Bool)

(assert (=> b!998082 (=> (not res!450751) (not e!640060))))

(assert (=> b!998082 (= res!450751 (not lt!351608))))

(declare-fun b!998083 () Bool)

(assert (=> b!998083 (= e!640060 e!640058)))

(declare-fun res!450752 () Bool)

(assert (=> b!998083 (=> res!450752 e!640058)))

(assert (=> b!998083 (= res!450752 call!66106)))

(declare-fun bm!66101 () Bool)

(assert (=> bm!66101 (= call!66106 (isEmpty!6316 s!10566))))

(declare-fun b!998084 () Bool)

(declare-fun res!450756 () Bool)

(assert (=> b!998084 (=> res!450756 e!640056)))

(assert (=> b!998084 (= res!450756 (not (is-ElementMatch!2764 (regOne!6041 r!15766))))))

(declare-fun e!640055 () Bool)

(assert (=> b!998084 (= e!640055 e!640056)))

(declare-fun b!998085 () Bool)

(assert (=> b!998085 (= e!640055 (not lt!351608))))

(declare-fun b!998086 () Bool)

(assert (=> b!998086 (= e!640059 e!640055)))

(declare-fun c!164237 () Bool)

(assert (=> b!998086 (= c!164237 (is-EmptyLang!2764 (regOne!6041 r!15766)))))

(declare-fun b!998087 () Bool)

(assert (=> b!998087 (= e!640057 (= (head!1837 s!10566) (c!164211 (regOne!6041 r!15766))))))

(declare-fun b!998080 () Bool)

(declare-fun e!640054 () Bool)

(declare-fun derivativeStep!684 (Regex!2764 C!6098) Regex!2764)

(assert (=> b!998080 (= e!640054 (matchR!1300 (derivativeStep!684 (regOne!6041 r!15766) (head!1837 s!10566)) (tail!1399 s!10566)))))

(declare-fun d!291036 () Bool)

(assert (=> d!291036 e!640059))

(declare-fun c!164238 () Bool)

(assert (=> d!291036 (= c!164238 (is-EmptyExpr!2764 (regOne!6041 r!15766)))))

(assert (=> d!291036 (= lt!351608 e!640054)))

(declare-fun c!164239 () Bool)

(assert (=> d!291036 (= c!164239 (isEmpty!6316 s!10566))))

(assert (=> d!291036 (validRegex!1233 (regOne!6041 r!15766))))

(assert (=> d!291036 (= (matchR!1300 (regOne!6041 r!15766) s!10566) lt!351608)))

(declare-fun b!998088 () Bool)

(declare-fun nullable!878 (Regex!2764) Bool)

(assert (=> b!998088 (= e!640054 (nullable!878 (regOne!6041 r!15766)))))

(declare-fun b!998089 () Bool)

(declare-fun res!450753 () Bool)

(assert (=> b!998089 (=> (not res!450753) (not e!640057))))

(assert (=> b!998089 (= res!450753 (not call!66106))))

(assert (= (and d!291036 c!164239) b!998088))

(assert (= (and d!291036 (not c!164239)) b!998080))

(assert (= (and d!291036 c!164238) b!998079))

(assert (= (and d!291036 (not c!164238)) b!998086))

(assert (= (and b!998086 c!164237) b!998085))

(assert (= (and b!998086 (not c!164237)) b!998084))

(assert (= (and b!998084 (not res!450756)) b!998081))

(assert (= (and b!998081 res!450755) b!998089))

(assert (= (and b!998089 res!450753) b!998077))

(assert (= (and b!998077 res!450754) b!998087))

(assert (= (and b!998081 (not res!450749)) b!998082))

(assert (= (and b!998082 res!450751) b!998083))

(assert (= (and b!998083 (not res!450752)) b!998078))

(assert (= (and b!998078 (not res!450750)) b!998076))

(assert (= (or b!998079 b!998083 b!998089) bm!66101))

(declare-fun m!1188933 () Bool)

(assert (=> d!291036 m!1188933))

(declare-fun m!1188935 () Bool)

(assert (=> d!291036 m!1188935))

(declare-fun m!1188937 () Bool)

(assert (=> b!998080 m!1188937))

(assert (=> b!998080 m!1188937))

(declare-fun m!1188939 () Bool)

(assert (=> b!998080 m!1188939))

(declare-fun m!1188941 () Bool)

(assert (=> b!998080 m!1188941))

(assert (=> b!998080 m!1188939))

(assert (=> b!998080 m!1188941))

(declare-fun m!1188943 () Bool)

(assert (=> b!998080 m!1188943))

(declare-fun m!1188945 () Bool)

(assert (=> b!998088 m!1188945))

(assert (=> bm!66101 m!1188933))

(assert (=> b!998076 m!1188937))

(assert (=> b!998078 m!1188941))

(assert (=> b!998078 m!1188941))

(declare-fun m!1188947 () Bool)

(assert (=> b!998078 m!1188947))

(assert (=> b!998077 m!1188941))

(assert (=> b!998077 m!1188941))

(assert (=> b!998077 m!1188947))

(assert (=> b!998087 m!1188937))

(assert (=> b!997956 d!291036))

(declare-fun d!291042 () Bool)

(declare-fun e!640073 () Bool)

(assert (=> d!291042 e!640073))

(declare-fun res!450764 () Bool)

(assert (=> d!291042 (=> res!450764 e!640073)))

(assert (=> d!291042 (= res!450764 (matchR!1300 (regOne!6041 r!15766) s!10566))))

(declare-fun lt!351612 () Unit!15187)

(declare-fun choose!6309 (Regex!2764 Regex!2764 List!9994) Unit!15187)

(assert (=> d!291042 (= lt!351612 (choose!6309 (regOne!6041 r!15766) (regTwo!6041 r!15766) s!10566))))

(declare-fun e!640074 () Bool)

(assert (=> d!291042 e!640074))

(declare-fun res!450765 () Bool)

(assert (=> d!291042 (=> (not res!450765) (not e!640074))))

(assert (=> d!291042 (= res!450765 (validRegex!1233 (regOne!6041 r!15766)))))

(assert (=> d!291042 (= (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!71 (regOne!6041 r!15766) (regTwo!6041 r!15766) s!10566) lt!351612)))

(declare-fun b!998107 () Bool)

(assert (=> b!998107 (= e!640074 (validRegex!1233 (regTwo!6041 r!15766)))))

(declare-fun b!998108 () Bool)

(assert (=> b!998108 (= e!640073 (matchR!1300 (regTwo!6041 r!15766) s!10566))))

(assert (= (and d!291042 res!450765) b!998107))

(assert (= (and d!291042 (not res!450764)) b!998108))

(assert (=> d!291042 m!1188869))

(declare-fun m!1188955 () Bool)

(assert (=> d!291042 m!1188955))

(assert (=> d!291042 m!1188935))

(declare-fun m!1188961 () Bool)

(assert (=> b!998107 m!1188961))

(assert (=> b!998108 m!1188891))

(assert (=> b!997956 d!291042))

(declare-fun b!998239 () Bool)

(assert (=> b!998239 true))

(assert (=> b!998239 true))

(declare-fun bs!245063 () Bool)

(declare-fun b!998237 () Bool)

(assert (= bs!245063 (and b!998237 b!998239)))

(declare-fun lambda!35472 () Int)

(declare-fun lambda!35471 () Int)

(assert (=> bs!245063 (not (= lambda!35472 lambda!35471))))

(assert (=> b!998237 true))

(assert (=> b!998237 true))

(declare-fun b!998230 () Bool)

(declare-fun e!640143 () Bool)

(assert (=> b!998230 (= e!640143 (matchRSpec!563 (regTwo!6041 r!15766) s!10566))))

(declare-fun b!998231 () Bool)

(declare-fun e!640142 () Bool)

(assert (=> b!998231 (= e!640142 e!640143)))

(declare-fun res!450822 () Bool)

(assert (=> b!998231 (= res!450822 (matchRSpec!563 (regOne!6041 r!15766) s!10566))))

(assert (=> b!998231 (=> res!450822 e!640143)))

(declare-fun b!998232 () Bool)

(declare-fun e!640146 () Bool)

(declare-fun e!640141 () Bool)

(assert (=> b!998232 (= e!640146 e!640141)))

(declare-fun res!450823 () Bool)

(assert (=> b!998232 (= res!450823 (not (is-EmptyLang!2764 r!15766)))))

(assert (=> b!998232 (=> (not res!450823) (not e!640141))))

(declare-fun d!291046 () Bool)

(declare-fun c!164279 () Bool)

(assert (=> d!291046 (= c!164279 (is-EmptyExpr!2764 r!15766))))

(assert (=> d!291046 (= (matchRSpec!563 r!15766 s!10566) e!640146)))

(declare-fun b!998233 () Bool)

(declare-fun res!450821 () Bool)

(declare-fun e!640147 () Bool)

(assert (=> b!998233 (=> res!450821 e!640147)))

(declare-fun call!66129 () Bool)

(assert (=> b!998233 (= res!450821 call!66129)))

(declare-fun e!640144 () Bool)

(assert (=> b!998233 (= e!640144 e!640147)))

(declare-fun b!998234 () Bool)

(declare-fun c!164278 () Bool)

(assert (=> b!998234 (= c!164278 (is-Union!2764 r!15766))))

(declare-fun e!640145 () Bool)

(assert (=> b!998234 (= e!640145 e!640142)))

(declare-fun b!998235 () Bool)

(assert (=> b!998235 (= e!640142 e!640144)))

(declare-fun c!164280 () Bool)

(assert (=> b!998235 (= c!164280 (is-Star!2764 r!15766))))

(declare-fun bm!66124 () Bool)

(assert (=> bm!66124 (= call!66129 (isEmpty!6316 s!10566))))

(declare-fun b!998236 () Bool)

(assert (=> b!998236 (= e!640146 call!66129)))

(declare-fun call!66130 () Bool)

(assert (=> b!998237 (= e!640144 call!66130)))

(declare-fun b!998238 () Bool)

(declare-fun c!164281 () Bool)

(assert (=> b!998238 (= c!164281 (is-ElementMatch!2764 r!15766))))

(assert (=> b!998238 (= e!640141 e!640145)))

(declare-fun bm!66125 () Bool)

(declare-fun Exists!499 (Int) Bool)

(assert (=> bm!66125 (= call!66130 (Exists!499 (ite c!164280 lambda!35471 lambda!35472)))))

(assert (=> b!998239 (= e!640147 call!66130)))

(declare-fun b!998240 () Bool)

(assert (=> b!998240 (= e!640145 (= s!10566 (Cons!9978 (c!164211 r!15766) Nil!9978)))))

(assert (= (and d!291046 c!164279) b!998236))

(assert (= (and d!291046 (not c!164279)) b!998232))

(assert (= (and b!998232 res!450823) b!998238))

(assert (= (and b!998238 c!164281) b!998240))

(assert (= (and b!998238 (not c!164281)) b!998234))

(assert (= (and b!998234 c!164278) b!998231))

(assert (= (and b!998234 (not c!164278)) b!998235))

(assert (= (and b!998231 (not res!450822)) b!998230))

(assert (= (and b!998235 c!164280) b!998233))

(assert (= (and b!998235 (not c!164280)) b!998237))

(assert (= (and b!998233 (not res!450821)) b!998239))

(assert (= (or b!998239 b!998237) bm!66125))

(assert (= (or b!998236 b!998233) bm!66124))

(declare-fun m!1188999 () Bool)

(assert (=> b!998230 m!1188999))

(declare-fun m!1189001 () Bool)

(assert (=> b!998231 m!1189001))

(assert (=> bm!66124 m!1188933))

(declare-fun m!1189003 () Bool)

(assert (=> bm!66125 m!1189003))

(assert (=> b!997958 d!291046))

(declare-fun b!998245 () Bool)

(declare-fun e!640152 () Bool)

(assert (=> b!998245 (= e!640152 (not (= (head!1837 s!10566) (c!164211 r!15766))))))

(declare-fun b!998246 () Bool)

(declare-fun res!450829 () Bool)

(declare-fun e!640151 () Bool)

(assert (=> b!998246 (=> (not res!450829) (not e!640151))))

(assert (=> b!998246 (= res!450829 (isEmpty!6316 (tail!1399 s!10566)))))

(declare-fun b!998247 () Bool)

(declare-fun res!450825 () Bool)

(assert (=> b!998247 (=> res!450825 e!640152)))

(assert (=> b!998247 (= res!450825 (not (isEmpty!6316 (tail!1399 s!10566))))))

(declare-fun b!998248 () Bool)

(declare-fun e!640153 () Bool)

(declare-fun lt!351621 () Bool)

(declare-fun call!66131 () Bool)

(assert (=> b!998248 (= e!640153 (= lt!351621 call!66131))))

(declare-fun b!998250 () Bool)

(declare-fun res!450824 () Bool)

(declare-fun e!640150 () Bool)

(assert (=> b!998250 (=> res!450824 e!640150)))

(assert (=> b!998250 (= res!450824 e!640151)))

(declare-fun res!450830 () Bool)

(assert (=> b!998250 (=> (not res!450830) (not e!640151))))

(assert (=> b!998250 (= res!450830 lt!351621)))

(declare-fun b!998251 () Bool)

(declare-fun e!640154 () Bool)

(assert (=> b!998251 (= e!640150 e!640154)))

(declare-fun res!450826 () Bool)

(assert (=> b!998251 (=> (not res!450826) (not e!640154))))

(assert (=> b!998251 (= res!450826 (not lt!351621))))

(declare-fun b!998252 () Bool)

(assert (=> b!998252 (= e!640154 e!640152)))

(declare-fun res!450827 () Bool)

(assert (=> b!998252 (=> res!450827 e!640152)))

(assert (=> b!998252 (= res!450827 call!66131)))

(declare-fun bm!66126 () Bool)

(assert (=> bm!66126 (= call!66131 (isEmpty!6316 s!10566))))

(declare-fun b!998253 () Bool)

(declare-fun res!450831 () Bool)

(assert (=> b!998253 (=> res!450831 e!640150)))

(assert (=> b!998253 (= res!450831 (not (is-ElementMatch!2764 r!15766)))))

(declare-fun e!640149 () Bool)

(assert (=> b!998253 (= e!640149 e!640150)))

(declare-fun b!998254 () Bool)

(assert (=> b!998254 (= e!640149 (not lt!351621))))

(declare-fun b!998255 () Bool)

(assert (=> b!998255 (= e!640153 e!640149)))

(declare-fun c!164282 () Bool)

(assert (=> b!998255 (= c!164282 (is-EmptyLang!2764 r!15766))))

(declare-fun b!998256 () Bool)

(assert (=> b!998256 (= e!640151 (= (head!1837 s!10566) (c!164211 r!15766)))))

(declare-fun b!998249 () Bool)

(declare-fun e!640148 () Bool)

(assert (=> b!998249 (= e!640148 (matchR!1300 (derivativeStep!684 r!15766 (head!1837 s!10566)) (tail!1399 s!10566)))))

(declare-fun d!291056 () Bool)

(assert (=> d!291056 e!640153))

(declare-fun c!164283 () Bool)

(assert (=> d!291056 (= c!164283 (is-EmptyExpr!2764 r!15766))))

(assert (=> d!291056 (= lt!351621 e!640148)))

(declare-fun c!164284 () Bool)

(assert (=> d!291056 (= c!164284 (isEmpty!6316 s!10566))))

(assert (=> d!291056 (validRegex!1233 r!15766)))

(assert (=> d!291056 (= (matchR!1300 r!15766 s!10566) lt!351621)))

(declare-fun b!998257 () Bool)

(assert (=> b!998257 (= e!640148 (nullable!878 r!15766))))

(declare-fun b!998258 () Bool)

(declare-fun res!450828 () Bool)

(assert (=> b!998258 (=> (not res!450828) (not e!640151))))

(assert (=> b!998258 (= res!450828 (not call!66131))))

(assert (= (and d!291056 c!164284) b!998257))

(assert (= (and d!291056 (not c!164284)) b!998249))

(assert (= (and d!291056 c!164283) b!998248))

(assert (= (and d!291056 (not c!164283)) b!998255))

(assert (= (and b!998255 c!164282) b!998254))

(assert (= (and b!998255 (not c!164282)) b!998253))

(assert (= (and b!998253 (not res!450831)) b!998250))

(assert (= (and b!998250 res!450830) b!998258))

(assert (= (and b!998258 res!450828) b!998246))

(assert (= (and b!998246 res!450829) b!998256))

(assert (= (and b!998250 (not res!450824)) b!998251))

(assert (= (and b!998251 res!450826) b!998252))

(assert (= (and b!998252 (not res!450827)) b!998247))

(assert (= (and b!998247 (not res!450825)) b!998245))

(assert (= (or b!998248 b!998252 b!998258) bm!66126))

(assert (=> d!291056 m!1188933))

(assert (=> d!291056 m!1188893))

(assert (=> b!998249 m!1188937))

(assert (=> b!998249 m!1188937))

(declare-fun m!1189005 () Bool)

(assert (=> b!998249 m!1189005))

(assert (=> b!998249 m!1188941))

(assert (=> b!998249 m!1189005))

(assert (=> b!998249 m!1188941))

(declare-fun m!1189007 () Bool)

(assert (=> b!998249 m!1189007))

(declare-fun m!1189009 () Bool)

(assert (=> b!998257 m!1189009))

(assert (=> bm!66126 m!1188933))

(assert (=> b!998245 m!1188937))

(assert (=> b!998247 m!1188941))

(assert (=> b!998247 m!1188941))

(assert (=> b!998247 m!1188947))

(assert (=> b!998246 m!1188941))

(assert (=> b!998246 m!1188941))

(assert (=> b!998246 m!1188947))

(assert (=> b!998256 m!1188937))

(assert (=> b!997958 d!291056))

(declare-fun d!291058 () Bool)

(assert (=> d!291058 (= (matchR!1300 r!15766 s!10566) (matchRSpec!563 r!15766 s!10566))))

(declare-fun lt!351624 () Unit!15187)

(declare-fun choose!6310 (Regex!2764 List!9994) Unit!15187)

(assert (=> d!291058 (= lt!351624 (choose!6310 r!15766 s!10566))))

(assert (=> d!291058 (validRegex!1233 r!15766)))

(assert (=> d!291058 (= (mainMatchTheorem!563 r!15766 s!10566) lt!351624)))

(declare-fun bs!245064 () Bool)

(assert (= bs!245064 d!291058))

(assert (=> bs!245064 m!1188887))

(assert (=> bs!245064 m!1188885))

(declare-fun m!1189011 () Bool)

(assert (=> bs!245064 m!1189011))

(assert (=> bs!245064 m!1188893))

(assert (=> b!997958 d!291058))

(declare-fun b!998281 () Bool)

(declare-fun e!640172 () Regex!2764)

(declare-fun call!66146 () Regex!2764)

(assert (=> b!998281 (= e!640172 (Star!2764 call!66146))))

(declare-fun b!998282 () Bool)

(declare-fun c!164295 () Bool)

(assert (=> b!998282 (= c!164295 (is-Star!2764 (regTwo!6041 r!15766)))))

(declare-fun e!640167 () Regex!2764)

(assert (=> b!998282 (= e!640167 e!640172)))

(declare-fun d!291060 () Bool)

(declare-fun e!640169 () Bool)

(assert (=> d!291060 e!640169))

(declare-fun res!450834 () Bool)

(assert (=> d!291060 (=> (not res!450834) (not e!640169))))

(declare-fun lt!351627 () Regex!2764)

(assert (=> d!291060 (= res!450834 (validRegex!1233 lt!351627))))

(declare-fun e!640168 () Regex!2764)

(assert (=> d!291060 (= lt!351627 e!640168)))

(declare-fun c!164299 () Bool)

(assert (=> d!291060 (= c!164299 (and (is-Concat!4597 (regTwo!6041 r!15766)) (is-EmptyExpr!2764 (regOne!6040 (regTwo!6041 r!15766)))))))

(assert (=> d!291060 (validRegex!1233 (regTwo!6041 r!15766))))

(assert (=> d!291060 (= (removeUselessConcat!361 (regTwo!6041 r!15766)) lt!351627)))

(declare-fun b!998283 () Bool)

(declare-fun e!640171 () Regex!2764)

(declare-fun call!66143 () Regex!2764)

(assert (=> b!998283 (= e!640171 call!66143)))

(declare-fun bm!66137 () Bool)

(declare-fun call!66142 () Regex!2764)

(declare-fun call!66145 () Regex!2764)

(assert (=> bm!66137 (= call!66142 call!66145)))

(declare-fun bm!66138 () Bool)

(declare-fun call!66144 () Regex!2764)

(assert (=> bm!66138 (= call!66144 call!66143)))

(declare-fun b!998284 () Bool)

(assert (=> b!998284 (= e!640168 call!66145)))

(declare-fun b!998285 () Bool)

(declare-fun c!164297 () Bool)

(assert (=> b!998285 (= c!164297 (is-Concat!4597 (regTwo!6041 r!15766)))))

(declare-fun e!640170 () Regex!2764)

(assert (=> b!998285 (= e!640171 e!640170)))

(declare-fun b!998286 () Bool)

(assert (=> b!998286 (= e!640170 (Concat!4597 call!66142 call!66144))))

(declare-fun b!998287 () Bool)

(assert (=> b!998287 (= e!640170 e!640167)))

(declare-fun c!164298 () Bool)

(assert (=> b!998287 (= c!164298 (is-Union!2764 (regTwo!6041 r!15766)))))

(declare-fun bm!66139 () Bool)

(assert (=> bm!66139 (= call!66146 call!66144)))

(declare-fun bm!66140 () Bool)

(assert (=> bm!66140 (= call!66145 (removeUselessConcat!361 (ite c!164299 (regTwo!6040 (regTwo!6041 r!15766)) (ite c!164297 (regOne!6040 (regTwo!6041 r!15766)) (regOne!6041 (regTwo!6041 r!15766))))))))

(declare-fun b!998288 () Bool)

(assert (=> b!998288 (= e!640168 e!640171)))

(declare-fun c!164296 () Bool)

(assert (=> b!998288 (= c!164296 (and (is-Concat!4597 (regTwo!6041 r!15766)) (is-EmptyExpr!2764 (regTwo!6040 (regTwo!6041 r!15766)))))))

(declare-fun bm!66141 () Bool)

(assert (=> bm!66141 (= call!66143 (removeUselessConcat!361 (ite c!164296 (regOne!6040 (regTwo!6041 r!15766)) (ite c!164297 (regTwo!6040 (regTwo!6041 r!15766)) (ite c!164298 (regTwo!6041 (regTwo!6041 r!15766)) (reg!3093 (regTwo!6041 r!15766)))))))))

(declare-fun b!998289 () Bool)

(assert (=> b!998289 (= e!640167 (Union!2764 call!66142 call!66146))))

(declare-fun b!998290 () Bool)

(assert (=> b!998290 (= e!640169 (= (nullable!878 lt!351627) (nullable!878 (regTwo!6041 r!15766))))))

(declare-fun b!998291 () Bool)

(assert (=> b!998291 (= e!640172 (regTwo!6041 r!15766))))

(assert (= (and d!291060 c!164299) b!998284))

(assert (= (and d!291060 (not c!164299)) b!998288))

(assert (= (and b!998288 c!164296) b!998283))

(assert (= (and b!998288 (not c!164296)) b!998285))

(assert (= (and b!998285 c!164297) b!998286))

(assert (= (and b!998285 (not c!164297)) b!998287))

(assert (= (and b!998287 c!164298) b!998289))

(assert (= (and b!998287 (not c!164298)) b!998282))

(assert (= (and b!998282 c!164295) b!998281))

(assert (= (and b!998282 (not c!164295)) b!998291))

(assert (= (or b!998289 b!998281) bm!66139))

(assert (= (or b!998286 bm!66139) bm!66138))

(assert (= (or b!998286 b!998289) bm!66137))

(assert (= (or b!998283 bm!66138) bm!66141))

(assert (= (or b!998284 bm!66137) bm!66140))

(assert (= (and d!291060 res!450834) b!998290))

(declare-fun m!1189013 () Bool)

(assert (=> d!291060 m!1189013))

(assert (=> d!291060 m!1188961))

(declare-fun m!1189015 () Bool)

(assert (=> bm!66140 m!1189015))

(declare-fun m!1189017 () Bool)

(assert (=> bm!66141 m!1189017))

(declare-fun m!1189019 () Bool)

(assert (=> b!998290 m!1189019))

(declare-fun m!1189021 () Bool)

(assert (=> b!998290 m!1189021))

(assert (=> b!997957 d!291060))

(declare-fun b!998292 () Bool)

(declare-fun e!640178 () Regex!2764)

(declare-fun call!66151 () Regex!2764)

(assert (=> b!998292 (= e!640178 (Star!2764 call!66151))))

(declare-fun b!998293 () Bool)

(declare-fun c!164300 () Bool)

(assert (=> b!998293 (= c!164300 (is-Star!2764 (regOne!6041 r!15766)))))

(declare-fun e!640173 () Regex!2764)

(assert (=> b!998293 (= e!640173 e!640178)))

(declare-fun d!291062 () Bool)

(declare-fun e!640175 () Bool)

(assert (=> d!291062 e!640175))

(declare-fun res!450835 () Bool)

(assert (=> d!291062 (=> (not res!450835) (not e!640175))))

(declare-fun lt!351628 () Regex!2764)

(assert (=> d!291062 (= res!450835 (validRegex!1233 lt!351628))))

(declare-fun e!640174 () Regex!2764)

(assert (=> d!291062 (= lt!351628 e!640174)))

(declare-fun c!164304 () Bool)

(assert (=> d!291062 (= c!164304 (and (is-Concat!4597 (regOne!6041 r!15766)) (is-EmptyExpr!2764 (regOne!6040 (regOne!6041 r!15766)))))))

(assert (=> d!291062 (validRegex!1233 (regOne!6041 r!15766))))

(assert (=> d!291062 (= (removeUselessConcat!361 (regOne!6041 r!15766)) lt!351628)))

(declare-fun b!998294 () Bool)

(declare-fun e!640177 () Regex!2764)

(declare-fun call!66148 () Regex!2764)

(assert (=> b!998294 (= e!640177 call!66148)))

(declare-fun bm!66142 () Bool)

(declare-fun call!66147 () Regex!2764)

(declare-fun call!66150 () Regex!2764)

(assert (=> bm!66142 (= call!66147 call!66150)))

(declare-fun bm!66143 () Bool)

(declare-fun call!66149 () Regex!2764)

(assert (=> bm!66143 (= call!66149 call!66148)))

(declare-fun b!998295 () Bool)

(assert (=> b!998295 (= e!640174 call!66150)))

(declare-fun b!998296 () Bool)

(declare-fun c!164302 () Bool)

(assert (=> b!998296 (= c!164302 (is-Concat!4597 (regOne!6041 r!15766)))))

(declare-fun e!640176 () Regex!2764)

(assert (=> b!998296 (= e!640177 e!640176)))

(declare-fun b!998297 () Bool)

(assert (=> b!998297 (= e!640176 (Concat!4597 call!66147 call!66149))))

(declare-fun b!998298 () Bool)

(assert (=> b!998298 (= e!640176 e!640173)))

(declare-fun c!164303 () Bool)

(assert (=> b!998298 (= c!164303 (is-Union!2764 (regOne!6041 r!15766)))))

(declare-fun bm!66144 () Bool)

(assert (=> bm!66144 (= call!66151 call!66149)))

(declare-fun bm!66145 () Bool)

(assert (=> bm!66145 (= call!66150 (removeUselessConcat!361 (ite c!164304 (regTwo!6040 (regOne!6041 r!15766)) (ite c!164302 (regOne!6040 (regOne!6041 r!15766)) (regOne!6041 (regOne!6041 r!15766))))))))

(declare-fun b!998299 () Bool)

(assert (=> b!998299 (= e!640174 e!640177)))

(declare-fun c!164301 () Bool)

(assert (=> b!998299 (= c!164301 (and (is-Concat!4597 (regOne!6041 r!15766)) (is-EmptyExpr!2764 (regTwo!6040 (regOne!6041 r!15766)))))))

(declare-fun bm!66146 () Bool)

(assert (=> bm!66146 (= call!66148 (removeUselessConcat!361 (ite c!164301 (regOne!6040 (regOne!6041 r!15766)) (ite c!164302 (regTwo!6040 (regOne!6041 r!15766)) (ite c!164303 (regTwo!6041 (regOne!6041 r!15766)) (reg!3093 (regOne!6041 r!15766)))))))))

(declare-fun b!998300 () Bool)

(assert (=> b!998300 (= e!640173 (Union!2764 call!66147 call!66151))))

(declare-fun b!998301 () Bool)

(assert (=> b!998301 (= e!640175 (= (nullable!878 lt!351628) (nullable!878 (regOne!6041 r!15766))))))

(declare-fun b!998302 () Bool)

(assert (=> b!998302 (= e!640178 (regOne!6041 r!15766))))

(assert (= (and d!291062 c!164304) b!998295))

(assert (= (and d!291062 (not c!164304)) b!998299))

(assert (= (and b!998299 c!164301) b!998294))

(assert (= (and b!998299 (not c!164301)) b!998296))

(assert (= (and b!998296 c!164302) b!998297))

(assert (= (and b!998296 (not c!164302)) b!998298))

(assert (= (and b!998298 c!164303) b!998300))

(assert (= (and b!998298 (not c!164303)) b!998293))

(assert (= (and b!998293 c!164300) b!998292))

(assert (= (and b!998293 (not c!164300)) b!998302))

(assert (= (or b!998300 b!998292) bm!66144))

(assert (= (or b!998297 bm!66144) bm!66143))

(assert (= (or b!998297 b!998300) bm!66142))

(assert (= (or b!998294 bm!66143) bm!66146))

(assert (= (or b!998295 bm!66142) bm!66145))

(assert (= (and d!291062 res!450835) b!998301))

(declare-fun m!1189023 () Bool)

(assert (=> d!291062 m!1189023))

(assert (=> d!291062 m!1188935))

(declare-fun m!1189025 () Bool)

(assert (=> bm!66145 m!1189025))

(declare-fun m!1189027 () Bool)

(assert (=> bm!66146 m!1189027))

(declare-fun m!1189029 () Bool)

(assert (=> b!998301 m!1189029))

(assert (=> b!998301 m!1188945))

(assert (=> b!997957 d!291062))

(declare-fun b!998303 () Bool)

(declare-fun e!640183 () Bool)

(assert (=> b!998303 (= e!640183 (not (= (head!1837 s!10566) (c!164211 lt!351577))))))

(declare-fun b!998304 () Bool)

(declare-fun res!450841 () Bool)

(declare-fun e!640182 () Bool)

(assert (=> b!998304 (=> (not res!450841) (not e!640182))))

(assert (=> b!998304 (= res!450841 (isEmpty!6316 (tail!1399 s!10566)))))

(declare-fun b!998305 () Bool)

(declare-fun res!450837 () Bool)

(assert (=> b!998305 (=> res!450837 e!640183)))

(assert (=> b!998305 (= res!450837 (not (isEmpty!6316 (tail!1399 s!10566))))))

(declare-fun b!998306 () Bool)

(declare-fun e!640184 () Bool)

(declare-fun lt!351629 () Bool)

(declare-fun call!66152 () Bool)

(assert (=> b!998306 (= e!640184 (= lt!351629 call!66152))))

(declare-fun b!998308 () Bool)

(declare-fun res!450836 () Bool)

(declare-fun e!640181 () Bool)

(assert (=> b!998308 (=> res!450836 e!640181)))

(assert (=> b!998308 (= res!450836 e!640182)))

(declare-fun res!450842 () Bool)

(assert (=> b!998308 (=> (not res!450842) (not e!640182))))

(assert (=> b!998308 (= res!450842 lt!351629)))

(declare-fun b!998309 () Bool)

(declare-fun e!640185 () Bool)

(assert (=> b!998309 (= e!640181 e!640185)))

(declare-fun res!450838 () Bool)

(assert (=> b!998309 (=> (not res!450838) (not e!640185))))

(assert (=> b!998309 (= res!450838 (not lt!351629))))

(declare-fun b!998310 () Bool)

(assert (=> b!998310 (= e!640185 e!640183)))

(declare-fun res!450839 () Bool)

(assert (=> b!998310 (=> res!450839 e!640183)))

(assert (=> b!998310 (= res!450839 call!66152)))

(declare-fun bm!66147 () Bool)

(assert (=> bm!66147 (= call!66152 (isEmpty!6316 s!10566))))

(declare-fun b!998311 () Bool)

(declare-fun res!450843 () Bool)

(assert (=> b!998311 (=> res!450843 e!640181)))

(assert (=> b!998311 (= res!450843 (not (is-ElementMatch!2764 lt!351577)))))

(declare-fun e!640180 () Bool)

(assert (=> b!998311 (= e!640180 e!640181)))

(declare-fun b!998312 () Bool)

(assert (=> b!998312 (= e!640180 (not lt!351629))))

(declare-fun b!998313 () Bool)

(assert (=> b!998313 (= e!640184 e!640180)))

(declare-fun c!164305 () Bool)

(assert (=> b!998313 (= c!164305 (is-EmptyLang!2764 lt!351577))))

(declare-fun b!998314 () Bool)

(assert (=> b!998314 (= e!640182 (= (head!1837 s!10566) (c!164211 lt!351577)))))

(declare-fun b!998307 () Bool)

(declare-fun e!640179 () Bool)

(assert (=> b!998307 (= e!640179 (matchR!1300 (derivativeStep!684 lt!351577 (head!1837 s!10566)) (tail!1399 s!10566)))))

(declare-fun d!291064 () Bool)

(assert (=> d!291064 e!640184))

(declare-fun c!164306 () Bool)

(assert (=> d!291064 (= c!164306 (is-EmptyExpr!2764 lt!351577))))

(assert (=> d!291064 (= lt!351629 e!640179)))

(declare-fun c!164307 () Bool)

(assert (=> d!291064 (= c!164307 (isEmpty!6316 s!10566))))

(assert (=> d!291064 (validRegex!1233 lt!351577)))

(assert (=> d!291064 (= (matchR!1300 lt!351577 s!10566) lt!351629)))

(declare-fun b!998315 () Bool)

(assert (=> b!998315 (= e!640179 (nullable!878 lt!351577))))

(declare-fun b!998316 () Bool)

(declare-fun res!450840 () Bool)

(assert (=> b!998316 (=> (not res!450840) (not e!640182))))

(assert (=> b!998316 (= res!450840 (not call!66152))))

(assert (= (and d!291064 c!164307) b!998315))

(assert (= (and d!291064 (not c!164307)) b!998307))

(assert (= (and d!291064 c!164306) b!998306))

(assert (= (and d!291064 (not c!164306)) b!998313))

(assert (= (and b!998313 c!164305) b!998312))

(assert (= (and b!998313 (not c!164305)) b!998311))

(assert (= (and b!998311 (not res!450843)) b!998308))

(assert (= (and b!998308 res!450842) b!998316))

(assert (= (and b!998316 res!450840) b!998304))

(assert (= (and b!998304 res!450841) b!998314))

(assert (= (and b!998308 (not res!450836)) b!998309))

(assert (= (and b!998309 res!450838) b!998310))

(assert (= (and b!998310 (not res!450839)) b!998305))

(assert (= (and b!998305 (not res!450837)) b!998303))

(assert (= (or b!998306 b!998310 b!998316) bm!66147))

(assert (=> d!291064 m!1188933))

(assert (=> d!291064 m!1188873))

(assert (=> b!998307 m!1188937))

(assert (=> b!998307 m!1188937))

(declare-fun m!1189031 () Bool)

(assert (=> b!998307 m!1189031))

(assert (=> b!998307 m!1188941))

(assert (=> b!998307 m!1189031))

(assert (=> b!998307 m!1188941))

(declare-fun m!1189033 () Bool)

(assert (=> b!998307 m!1189033))

(declare-fun m!1189035 () Bool)

(assert (=> b!998315 m!1189035))

(assert (=> bm!66147 m!1188933))

(assert (=> b!998303 m!1188937))

(assert (=> b!998305 m!1188941))

(assert (=> b!998305 m!1188941))

(assert (=> b!998305 m!1188947))

(assert (=> b!998304 m!1188941))

(assert (=> b!998304 m!1188941))

(assert (=> b!998304 m!1188947))

(assert (=> b!998314 m!1188937))

(assert (=> b!997957 d!291064))

(declare-fun d!291066 () Bool)

(assert (=> d!291066 (= (matchR!1300 (regOne!6041 r!15766) s!10566) (matchR!1300 (removeUselessConcat!361 (regOne!6041 r!15766)) s!10566))))

(declare-fun lt!351632 () Unit!15187)

(declare-fun choose!6312 (Regex!2764 List!9994) Unit!15187)

(assert (=> d!291066 (= lt!351632 (choose!6312 (regOne!6041 r!15766) s!10566))))

(assert (=> d!291066 (validRegex!1233 (regOne!6041 r!15766))))

(assert (=> d!291066 (= (lemmaRemoveUselessConcatSound!207 (regOne!6041 r!15766) s!10566) lt!351632)))

(declare-fun bs!245065 () Bool)

(assert (= bs!245065 d!291066))

(assert (=> bs!245065 m!1188869))

(assert (=> bs!245065 m!1188935))

(assert (=> bs!245065 m!1188879))

(declare-fun m!1189037 () Bool)

(assert (=> bs!245065 m!1189037))

(assert (=> bs!245065 m!1188879))

(declare-fun m!1189039 () Bool)

(assert (=> bs!245065 m!1189039))

(assert (=> b!997957 d!291066))

(declare-fun d!291068 () Bool)

(declare-fun res!450858 () Bool)

(declare-fun e!640203 () Bool)

(assert (=> d!291068 (=> res!450858 e!640203)))

(assert (=> d!291068 (= res!450858 (is-ElementMatch!2764 lt!351577))))

(assert (=> d!291068 (= (validRegex!1233 lt!351577) e!640203)))

(declare-fun b!998335 () Bool)

(declare-fun e!640206 () Bool)

(assert (=> b!998335 (= e!640203 e!640206)))

(declare-fun c!164313 () Bool)

(assert (=> b!998335 (= c!164313 (is-Star!2764 lt!351577))))

(declare-fun b!998336 () Bool)

(declare-fun e!640205 () Bool)

(declare-fun call!66159 () Bool)

(assert (=> b!998336 (= e!640205 call!66159)))

(declare-fun b!998337 () Bool)

(declare-fun e!640204 () Bool)

(declare-fun call!66161 () Bool)

(assert (=> b!998337 (= e!640204 call!66161)))

(declare-fun b!998338 () Bool)

(declare-fun e!640202 () Bool)

(declare-fun e!640201 () Bool)

(assert (=> b!998338 (= e!640202 e!640201)))

(declare-fun res!450856 () Bool)

(assert (=> b!998338 (=> (not res!450856) (not e!640201))))

(declare-fun call!66160 () Bool)

(assert (=> b!998338 (= res!450856 call!66160)))

(declare-fun b!998339 () Bool)

(assert (=> b!998339 (= e!640206 e!640205)))

(declare-fun res!450854 () Bool)

(assert (=> b!998339 (= res!450854 (not (nullable!878 (reg!3093 lt!351577))))))

(assert (=> b!998339 (=> (not res!450854) (not e!640205))))

(declare-fun b!998340 () Bool)

(declare-fun res!450855 () Bool)

(assert (=> b!998340 (=> res!450855 e!640202)))

(assert (=> b!998340 (= res!450855 (not (is-Concat!4597 lt!351577)))))

(declare-fun e!640200 () Bool)

(assert (=> b!998340 (= e!640200 e!640202)))

(declare-fun bm!66154 () Bool)

(declare-fun c!164312 () Bool)

(assert (=> bm!66154 (= call!66159 (validRegex!1233 (ite c!164313 (reg!3093 lt!351577) (ite c!164312 (regTwo!6041 lt!351577) (regTwo!6040 lt!351577)))))))

(declare-fun b!998341 () Bool)

(declare-fun res!450857 () Bool)

(assert (=> b!998341 (=> (not res!450857) (not e!640204))))

(assert (=> b!998341 (= res!450857 call!66160)))

(assert (=> b!998341 (= e!640200 e!640204)))

(declare-fun b!998342 () Bool)

(assert (=> b!998342 (= e!640201 call!66161)))

(declare-fun bm!66155 () Bool)

(assert (=> bm!66155 (= call!66160 (validRegex!1233 (ite c!164312 (regOne!6041 lt!351577) (regOne!6040 lt!351577))))))

(declare-fun bm!66156 () Bool)

(assert (=> bm!66156 (= call!66161 call!66159)))

(declare-fun b!998343 () Bool)

(assert (=> b!998343 (= e!640206 e!640200)))

(assert (=> b!998343 (= c!164312 (is-Union!2764 lt!351577))))

(assert (= (and d!291068 (not res!450858)) b!998335))

(assert (= (and b!998335 c!164313) b!998339))

(assert (= (and b!998335 (not c!164313)) b!998343))

(assert (= (and b!998339 res!450854) b!998336))

(assert (= (and b!998343 c!164312) b!998341))

(assert (= (and b!998343 (not c!164312)) b!998340))

(assert (= (and b!998341 res!450857) b!998337))

(assert (= (and b!998340 (not res!450855)) b!998338))

(assert (= (and b!998338 res!450856) b!998342))

(assert (= (or b!998337 b!998342) bm!66156))

(assert (= (or b!998341 b!998338) bm!66155))

(assert (= (or b!998336 bm!66156) bm!66154))

(declare-fun m!1189041 () Bool)

(assert (=> b!998339 m!1189041))

(declare-fun m!1189043 () Bool)

(assert (=> bm!66154 m!1189043))

(declare-fun m!1189045 () Bool)

(assert (=> bm!66155 m!1189045))

(assert (=> b!997957 d!291068))

(declare-fun b!998344 () Bool)

(declare-fun e!640211 () Bool)

(assert (=> b!998344 (= e!640211 (not (= (head!1837 s!10566) (c!164211 (regTwo!6041 r!15766)))))))

(declare-fun b!998345 () Bool)

(declare-fun res!450864 () Bool)

(declare-fun e!640210 () Bool)

(assert (=> b!998345 (=> (not res!450864) (not e!640210))))

(assert (=> b!998345 (= res!450864 (isEmpty!6316 (tail!1399 s!10566)))))

(declare-fun b!998346 () Bool)

(declare-fun res!450860 () Bool)

(assert (=> b!998346 (=> res!450860 e!640211)))

(assert (=> b!998346 (= res!450860 (not (isEmpty!6316 (tail!1399 s!10566))))))

(declare-fun b!998347 () Bool)

(declare-fun e!640212 () Bool)

(declare-fun lt!351633 () Bool)

(declare-fun call!66162 () Bool)

(assert (=> b!998347 (= e!640212 (= lt!351633 call!66162))))

(declare-fun b!998349 () Bool)

(declare-fun res!450859 () Bool)

(declare-fun e!640209 () Bool)

(assert (=> b!998349 (=> res!450859 e!640209)))

(assert (=> b!998349 (= res!450859 e!640210)))

(declare-fun res!450865 () Bool)

(assert (=> b!998349 (=> (not res!450865) (not e!640210))))

(assert (=> b!998349 (= res!450865 lt!351633)))

(declare-fun b!998350 () Bool)

(declare-fun e!640213 () Bool)

(assert (=> b!998350 (= e!640209 e!640213)))

(declare-fun res!450861 () Bool)

(assert (=> b!998350 (=> (not res!450861) (not e!640213))))

(assert (=> b!998350 (= res!450861 (not lt!351633))))

(declare-fun b!998351 () Bool)

(assert (=> b!998351 (= e!640213 e!640211)))

(declare-fun res!450862 () Bool)

(assert (=> b!998351 (=> res!450862 e!640211)))

(assert (=> b!998351 (= res!450862 call!66162)))

(declare-fun bm!66157 () Bool)

(assert (=> bm!66157 (= call!66162 (isEmpty!6316 s!10566))))

(declare-fun b!998352 () Bool)

(declare-fun res!450866 () Bool)

(assert (=> b!998352 (=> res!450866 e!640209)))

(assert (=> b!998352 (= res!450866 (not (is-ElementMatch!2764 (regTwo!6041 r!15766))))))

(declare-fun e!640208 () Bool)

(assert (=> b!998352 (= e!640208 e!640209)))

(declare-fun b!998353 () Bool)

(assert (=> b!998353 (= e!640208 (not lt!351633))))

(declare-fun b!998354 () Bool)

(assert (=> b!998354 (= e!640212 e!640208)))

(declare-fun c!164314 () Bool)

(assert (=> b!998354 (= c!164314 (is-EmptyLang!2764 (regTwo!6041 r!15766)))))

(declare-fun b!998355 () Bool)

(assert (=> b!998355 (= e!640210 (= (head!1837 s!10566) (c!164211 (regTwo!6041 r!15766))))))

(declare-fun b!998348 () Bool)

(declare-fun e!640207 () Bool)

(assert (=> b!998348 (= e!640207 (matchR!1300 (derivativeStep!684 (regTwo!6041 r!15766) (head!1837 s!10566)) (tail!1399 s!10566)))))

(declare-fun d!291070 () Bool)

(assert (=> d!291070 e!640212))

(declare-fun c!164315 () Bool)

(assert (=> d!291070 (= c!164315 (is-EmptyExpr!2764 (regTwo!6041 r!15766)))))

(assert (=> d!291070 (= lt!351633 e!640207)))

(declare-fun c!164316 () Bool)

(assert (=> d!291070 (= c!164316 (isEmpty!6316 s!10566))))

(assert (=> d!291070 (validRegex!1233 (regTwo!6041 r!15766))))

(assert (=> d!291070 (= (matchR!1300 (regTwo!6041 r!15766) s!10566) lt!351633)))

(declare-fun b!998356 () Bool)

(assert (=> b!998356 (= e!640207 (nullable!878 (regTwo!6041 r!15766)))))

(declare-fun b!998357 () Bool)

(declare-fun res!450863 () Bool)

(assert (=> b!998357 (=> (not res!450863) (not e!640210))))

(assert (=> b!998357 (= res!450863 (not call!66162))))

(assert (= (and d!291070 c!164316) b!998356))

(assert (= (and d!291070 (not c!164316)) b!998348))

(assert (= (and d!291070 c!164315) b!998347))

(assert (= (and d!291070 (not c!164315)) b!998354))

(assert (= (and b!998354 c!164314) b!998353))

(assert (= (and b!998354 (not c!164314)) b!998352))

(assert (= (and b!998352 (not res!450866)) b!998349))

(assert (= (and b!998349 res!450865) b!998357))

(assert (= (and b!998357 res!450863) b!998345))

(assert (= (and b!998345 res!450864) b!998355))

(assert (= (and b!998349 (not res!450859)) b!998350))

(assert (= (and b!998350 res!450861) b!998351))

(assert (= (and b!998351 (not res!450862)) b!998346))

(assert (= (and b!998346 (not res!450860)) b!998344))

(assert (= (or b!998347 b!998351 b!998357) bm!66157))

(assert (=> d!291070 m!1188933))

(assert (=> d!291070 m!1188961))

(assert (=> b!998348 m!1188937))

(assert (=> b!998348 m!1188937))

(declare-fun m!1189047 () Bool)

(assert (=> b!998348 m!1189047))

(assert (=> b!998348 m!1188941))

(assert (=> b!998348 m!1189047))

(assert (=> b!998348 m!1188941))

(declare-fun m!1189049 () Bool)

(assert (=> b!998348 m!1189049))

(assert (=> b!998356 m!1189021))

(assert (=> bm!66157 m!1188933))

(assert (=> b!998344 m!1188937))

(assert (=> b!998346 m!1188941))

(assert (=> b!998346 m!1188941))

(assert (=> b!998346 m!1188947))

(assert (=> b!998345 m!1188941))

(assert (=> b!998345 m!1188941))

(assert (=> b!998345 m!1188947))

(assert (=> b!998355 m!1188937))

(assert (=> b!997952 d!291070))

(declare-fun d!291072 () Bool)

(declare-fun res!450871 () Bool)

(declare-fun e!640217 () Bool)

(assert (=> d!291072 (=> res!450871 e!640217)))

(assert (=> d!291072 (= res!450871 (is-ElementMatch!2764 r!15766))))

(assert (=> d!291072 (= (validRegex!1233 r!15766) e!640217)))

(declare-fun b!998358 () Bool)

(declare-fun e!640220 () Bool)

(assert (=> b!998358 (= e!640217 e!640220)))

(declare-fun c!164318 () Bool)

(assert (=> b!998358 (= c!164318 (is-Star!2764 r!15766))))

(declare-fun b!998359 () Bool)

(declare-fun e!640219 () Bool)

(declare-fun call!66163 () Bool)

(assert (=> b!998359 (= e!640219 call!66163)))

(declare-fun b!998360 () Bool)

(declare-fun e!640218 () Bool)

(declare-fun call!66165 () Bool)

(assert (=> b!998360 (= e!640218 call!66165)))

(declare-fun b!998361 () Bool)

(declare-fun e!640216 () Bool)

(declare-fun e!640215 () Bool)

(assert (=> b!998361 (= e!640216 e!640215)))

(declare-fun res!450869 () Bool)

(assert (=> b!998361 (=> (not res!450869) (not e!640215))))

(declare-fun call!66164 () Bool)

(assert (=> b!998361 (= res!450869 call!66164)))

(declare-fun b!998362 () Bool)

(assert (=> b!998362 (= e!640220 e!640219)))

(declare-fun res!450867 () Bool)

(assert (=> b!998362 (= res!450867 (not (nullable!878 (reg!3093 r!15766))))))

(assert (=> b!998362 (=> (not res!450867) (not e!640219))))

(declare-fun b!998363 () Bool)

(declare-fun res!450868 () Bool)

(assert (=> b!998363 (=> res!450868 e!640216)))

(assert (=> b!998363 (= res!450868 (not (is-Concat!4597 r!15766)))))

(declare-fun e!640214 () Bool)

(assert (=> b!998363 (= e!640214 e!640216)))

(declare-fun bm!66158 () Bool)

(declare-fun c!164317 () Bool)

(assert (=> bm!66158 (= call!66163 (validRegex!1233 (ite c!164318 (reg!3093 r!15766) (ite c!164317 (regTwo!6041 r!15766) (regTwo!6040 r!15766)))))))

(declare-fun b!998364 () Bool)

(declare-fun res!450870 () Bool)

(assert (=> b!998364 (=> (not res!450870) (not e!640218))))

(assert (=> b!998364 (= res!450870 call!66164)))

(assert (=> b!998364 (= e!640214 e!640218)))

(declare-fun b!998365 () Bool)

(assert (=> b!998365 (= e!640215 call!66165)))

(declare-fun bm!66159 () Bool)

(assert (=> bm!66159 (= call!66164 (validRegex!1233 (ite c!164317 (regOne!6041 r!15766) (regOne!6040 r!15766))))))

(declare-fun bm!66160 () Bool)

(assert (=> bm!66160 (= call!66165 call!66163)))

(declare-fun b!998366 () Bool)

(assert (=> b!998366 (= e!640220 e!640214)))

(assert (=> b!998366 (= c!164317 (is-Union!2764 r!15766))))

(assert (= (and d!291072 (not res!450871)) b!998358))

(assert (= (and b!998358 c!164318) b!998362))

(assert (= (and b!998358 (not c!164318)) b!998366))

(assert (= (and b!998362 res!450867) b!998359))

(assert (= (and b!998366 c!164317) b!998364))

(assert (= (and b!998366 (not c!164317)) b!998363))

(assert (= (and b!998364 res!450870) b!998360))

(assert (= (and b!998363 (not res!450868)) b!998361))

(assert (= (and b!998361 res!450869) b!998365))

(assert (= (or b!998360 b!998365) bm!66160))

(assert (= (or b!998364 b!998361) bm!66159))

(assert (= (or b!998359 bm!66160) bm!66158))

(declare-fun m!1189051 () Bool)

(assert (=> b!998362 m!1189051))

(declare-fun m!1189053 () Bool)

(assert (=> bm!66158 m!1189053))

(declare-fun m!1189055 () Bool)

(assert (=> bm!66159 m!1189055))

(assert (=> start!87732 d!291072))

(declare-fun d!291074 () Bool)

(declare-fun res!450876 () Bool)

(declare-fun e!640224 () Bool)

(assert (=> d!291074 (=> res!450876 e!640224)))

(assert (=> d!291074 (= res!450876 (is-ElementMatch!2764 lt!351578))))

(assert (=> d!291074 (= (validRegex!1233 lt!351578) e!640224)))

(declare-fun b!998367 () Bool)

(declare-fun e!640227 () Bool)

(assert (=> b!998367 (= e!640224 e!640227)))

(declare-fun c!164320 () Bool)

(assert (=> b!998367 (= c!164320 (is-Star!2764 lt!351578))))

(declare-fun b!998368 () Bool)

(declare-fun e!640226 () Bool)

(declare-fun call!66166 () Bool)

(assert (=> b!998368 (= e!640226 call!66166)))

(declare-fun b!998369 () Bool)

(declare-fun e!640225 () Bool)

(declare-fun call!66168 () Bool)

(assert (=> b!998369 (= e!640225 call!66168)))

(declare-fun b!998370 () Bool)

(declare-fun e!640223 () Bool)

(declare-fun e!640222 () Bool)

(assert (=> b!998370 (= e!640223 e!640222)))

(declare-fun res!450874 () Bool)

(assert (=> b!998370 (=> (not res!450874) (not e!640222))))

(declare-fun call!66167 () Bool)

(assert (=> b!998370 (= res!450874 call!66167)))

(declare-fun b!998371 () Bool)

(assert (=> b!998371 (= e!640227 e!640226)))

(declare-fun res!450872 () Bool)

(assert (=> b!998371 (= res!450872 (not (nullable!878 (reg!3093 lt!351578))))))

(assert (=> b!998371 (=> (not res!450872) (not e!640226))))

(declare-fun b!998372 () Bool)

(declare-fun res!450873 () Bool)

(assert (=> b!998372 (=> res!450873 e!640223)))

(assert (=> b!998372 (= res!450873 (not (is-Concat!4597 lt!351578)))))

(declare-fun e!640221 () Bool)

(assert (=> b!998372 (= e!640221 e!640223)))

(declare-fun bm!66161 () Bool)

(declare-fun c!164319 () Bool)

(assert (=> bm!66161 (= call!66166 (validRegex!1233 (ite c!164320 (reg!3093 lt!351578) (ite c!164319 (regTwo!6041 lt!351578) (regTwo!6040 lt!351578)))))))

(declare-fun b!998373 () Bool)

(declare-fun res!450875 () Bool)

(assert (=> b!998373 (=> (not res!450875) (not e!640225))))

(assert (=> b!998373 (= res!450875 call!66167)))

(assert (=> b!998373 (= e!640221 e!640225)))

(declare-fun b!998374 () Bool)

(assert (=> b!998374 (= e!640222 call!66168)))

(declare-fun bm!66162 () Bool)

(assert (=> bm!66162 (= call!66167 (validRegex!1233 (ite c!164319 (regOne!6041 lt!351578) (regOne!6040 lt!351578))))))

(declare-fun bm!66163 () Bool)

(assert (=> bm!66163 (= call!66168 call!66166)))

(declare-fun b!998375 () Bool)

(assert (=> b!998375 (= e!640227 e!640221)))

(assert (=> b!998375 (= c!164319 (is-Union!2764 lt!351578))))

(assert (= (and d!291074 (not res!450876)) b!998367))

(assert (= (and b!998367 c!164320) b!998371))

(assert (= (and b!998367 (not c!164320)) b!998375))

(assert (= (and b!998371 res!450872) b!998368))

(assert (= (and b!998375 c!164319) b!998373))

(assert (= (and b!998375 (not c!164319)) b!998372))

(assert (= (and b!998373 res!450875) b!998369))

(assert (= (and b!998372 (not res!450873)) b!998370))

(assert (= (and b!998370 res!450874) b!998374))

(assert (= (or b!998369 b!998374) bm!66163))

(assert (= (or b!998373 b!998370) bm!66162))

(assert (= (or b!998368 bm!66163) bm!66161))

(declare-fun m!1189057 () Bool)

(assert (=> b!998371 m!1189057))

(declare-fun m!1189059 () Bool)

(assert (=> bm!66161 m!1189059))

(declare-fun m!1189061 () Bool)

(assert (=> bm!66162 m!1189061))

(assert (=> b!997960 d!291074))

(declare-fun b!998380 () Bool)

(declare-fun e!640230 () Bool)

(declare-fun tp!304407 () Bool)

(assert (=> b!998380 (= e!640230 (and tp_is_empty!5171 tp!304407))))

(assert (=> b!997961 (= tp!304381 e!640230)))

(assert (= (and b!997961 (is-Cons!9978 (t!101040 s!10566))) b!998380))

(declare-fun e!640233 () Bool)

(assert (=> b!997959 (= tp!304385 e!640233)))

(declare-fun b!998393 () Bool)

(declare-fun tp!304419 () Bool)

(assert (=> b!998393 (= e!640233 tp!304419)))

(declare-fun b!998394 () Bool)

(declare-fun tp!304422 () Bool)

(declare-fun tp!304421 () Bool)

(assert (=> b!998394 (= e!640233 (and tp!304422 tp!304421))))

(declare-fun b!998391 () Bool)

(assert (=> b!998391 (= e!640233 tp_is_empty!5171)))

(declare-fun b!998392 () Bool)

(declare-fun tp!304420 () Bool)

(declare-fun tp!304418 () Bool)

(assert (=> b!998392 (= e!640233 (and tp!304420 tp!304418))))

(assert (= (and b!997959 (is-ElementMatch!2764 (regOne!6041 r!15766))) b!998391))

(assert (= (and b!997959 (is-Concat!4597 (regOne!6041 r!15766))) b!998392))

(assert (= (and b!997959 (is-Star!2764 (regOne!6041 r!15766))) b!998393))

(assert (= (and b!997959 (is-Union!2764 (regOne!6041 r!15766))) b!998394))

(declare-fun e!640234 () Bool)

(assert (=> b!997959 (= tp!304386 e!640234)))

(declare-fun b!998397 () Bool)

(declare-fun tp!304424 () Bool)

(assert (=> b!998397 (= e!640234 tp!304424)))

(declare-fun b!998398 () Bool)

(declare-fun tp!304427 () Bool)

(declare-fun tp!304426 () Bool)

(assert (=> b!998398 (= e!640234 (and tp!304427 tp!304426))))

(declare-fun b!998395 () Bool)

(assert (=> b!998395 (= e!640234 tp_is_empty!5171)))

(declare-fun b!998396 () Bool)

(declare-fun tp!304425 () Bool)

(declare-fun tp!304423 () Bool)

(assert (=> b!998396 (= e!640234 (and tp!304425 tp!304423))))

(assert (= (and b!997959 (is-ElementMatch!2764 (regTwo!6041 r!15766))) b!998395))

(assert (= (and b!997959 (is-Concat!4597 (regTwo!6041 r!15766))) b!998396))

(assert (= (and b!997959 (is-Star!2764 (regTwo!6041 r!15766))) b!998397))

(assert (= (and b!997959 (is-Union!2764 (regTwo!6041 r!15766))) b!998398))

(declare-fun e!640235 () Bool)

(assert (=> b!997954 (= tp!304384 e!640235)))

(declare-fun b!998401 () Bool)

(declare-fun tp!304429 () Bool)

(assert (=> b!998401 (= e!640235 tp!304429)))

(declare-fun b!998402 () Bool)

(declare-fun tp!304432 () Bool)

(declare-fun tp!304431 () Bool)

(assert (=> b!998402 (= e!640235 (and tp!304432 tp!304431))))

(declare-fun b!998399 () Bool)

(assert (=> b!998399 (= e!640235 tp_is_empty!5171)))

(declare-fun b!998400 () Bool)

(declare-fun tp!304430 () Bool)

(declare-fun tp!304428 () Bool)

(assert (=> b!998400 (= e!640235 (and tp!304430 tp!304428))))

(assert (= (and b!997954 (is-ElementMatch!2764 (regOne!6040 r!15766))) b!998399))

(assert (= (and b!997954 (is-Concat!4597 (regOne!6040 r!15766))) b!998400))

(assert (= (and b!997954 (is-Star!2764 (regOne!6040 r!15766))) b!998401))

(assert (= (and b!997954 (is-Union!2764 (regOne!6040 r!15766))) b!998402))

(declare-fun e!640236 () Bool)

(assert (=> b!997954 (= tp!304383 e!640236)))

(declare-fun b!998405 () Bool)

(declare-fun tp!304434 () Bool)

(assert (=> b!998405 (= e!640236 tp!304434)))

(declare-fun b!998406 () Bool)

(declare-fun tp!304437 () Bool)

(declare-fun tp!304436 () Bool)

(assert (=> b!998406 (= e!640236 (and tp!304437 tp!304436))))

(declare-fun b!998403 () Bool)

(assert (=> b!998403 (= e!640236 tp_is_empty!5171)))

(declare-fun b!998404 () Bool)

(declare-fun tp!304435 () Bool)

(declare-fun tp!304433 () Bool)

(assert (=> b!998404 (= e!640236 (and tp!304435 tp!304433))))

(assert (= (and b!997954 (is-ElementMatch!2764 (regTwo!6040 r!15766))) b!998403))

(assert (= (and b!997954 (is-Concat!4597 (regTwo!6040 r!15766))) b!998404))

(assert (= (and b!997954 (is-Star!2764 (regTwo!6040 r!15766))) b!998405))

(assert (= (and b!997954 (is-Union!2764 (regTwo!6040 r!15766))) b!998406))

(declare-fun e!640237 () Bool)

(assert (=> b!997953 (= tp!304382 e!640237)))

(declare-fun b!998409 () Bool)

(declare-fun tp!304439 () Bool)

(assert (=> b!998409 (= e!640237 tp!304439)))

(declare-fun b!998410 () Bool)

(declare-fun tp!304442 () Bool)

(declare-fun tp!304441 () Bool)

(assert (=> b!998410 (= e!640237 (and tp!304442 tp!304441))))

(declare-fun b!998407 () Bool)

(assert (=> b!998407 (= e!640237 tp_is_empty!5171)))

(declare-fun b!998408 () Bool)

(declare-fun tp!304440 () Bool)

(declare-fun tp!304438 () Bool)

(assert (=> b!998408 (= e!640237 (and tp!304440 tp!304438))))

(assert (= (and b!997953 (is-ElementMatch!2764 (reg!3093 r!15766))) b!998407))

(assert (= (and b!997953 (is-Concat!4597 (reg!3093 r!15766))) b!998408))

(assert (= (and b!997953 (is-Star!2764 (reg!3093 r!15766))) b!998409))

(assert (= (and b!997953 (is-Union!2764 (reg!3093 r!15766))) b!998410))

(push 1)

(assert (not d!291058))

(assert (not b!998348))

(assert (not b!998246))

(assert (not b!998231))

(assert (not b!998314))

(assert (not b!998303))

(assert (not b!998393))

(assert (not b!998396))

(assert (not b!998088))

(assert (not d!291036))

(assert (not bm!66155))

(assert (not bm!66124))

(assert (not b!998108))

(assert (not b!998400))

(assert (not b!998409))

(assert (not b!998315))

(assert (not bm!66162))

(assert (not d!291062))

(assert (not b!998077))

(assert (not b!998345))

(assert (not b!998087))

(assert (not d!291060))

(assert (not bm!66147))

(assert (not bm!66141))

(assert (not b!998406))

(assert (not b!998405))

(assert (not b!998290))

(assert (not bm!66140))

(assert (not b!998230))

(assert (not bm!66125))

(assert (not b!998371))

(assert (not d!291056))

(assert (not b!998080))

(assert (not bm!66126))

(assert (not d!291042))

(assert (not b!998078))

(assert (not bm!66159))

(assert (not b!998257))

(assert (not b!998344))

(assert (not b!998304))

(assert (not b!998301))

(assert (not b!998307))

(assert (not b!998392))

(assert (not bm!66157))

(assert (not b!998256))

(assert (not b!998305))

(assert (not bm!66154))

(assert (not b!998362))

(assert (not bm!66158))

(assert (not b!998249))

(assert (not b!998410))

(assert (not b!998404))

(assert (not b!998401))

(assert (not d!291064))

(assert (not bm!66146))

(assert (not b!998408))

(assert (not b!998394))

(assert (not d!291066))

(assert (not b!998397))

(assert tp_is_empty!5171)

(assert (not b!998247))

(assert (not bm!66101))

(assert (not b!998245))

(assert (not b!998402))

(assert (not b!998380))

(assert (not b!998076))

(assert (not b!998107))

(assert (not bm!66161))

(assert (not bm!66145))

(assert (not b!998398))

(assert (not b!998339))

(assert (not b!998346))

(assert (not b!998356))

(assert (not b!998355))

(assert (not d!291070))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

