; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!720054 () Bool)

(assert start!720054)

(declare-fun b!7381018 () Bool)

(declare-fun res!2977048 () Bool)

(declare-fun e!4418184 () Bool)

(assert (=> b!7381018 (=> (not res!2977048) (not e!4418184))))

(declare-datatypes ((C!38926 0))(
  ( (C!38927 (val!29823 Int)) )
))
(declare-datatypes ((Regex!19326 0))(
  ( (ElementMatch!19326 (c!1371882 C!38926)) (Concat!28171 (regOne!39164 Regex!19326) (regTwo!39164 Regex!19326)) (EmptyExpr!19326) (Star!19326 (reg!19655 Regex!19326)) (EmptyLang!19326) (Union!19326 (regOne!39165 Regex!19326) (regTwo!39165 Regex!19326)) )
))
(declare-fun r1!2370 () Regex!19326)

(declare-fun validRegex!9922 (Regex!19326) Bool)

(assert (=> b!7381018 (= res!2977048 (validRegex!9922 (reg!19655 r1!2370)))))

(declare-fun b!7381019 () Bool)

(declare-fun regexDepth!444 (Regex!19326) Int)

(assert (=> b!7381019 (= e!4418184 (>= (regexDepth!444 (reg!19655 r1!2370)) (regexDepth!444 r1!2370)))))

(declare-fun b!7381020 () Bool)

(declare-fun e!4418181 () Bool)

(declare-fun tp!2099510 () Bool)

(declare-fun tp!2099515 () Bool)

(assert (=> b!7381020 (= e!4418181 (and tp!2099510 tp!2099515))))

(declare-fun b!7381021 () Bool)

(declare-fun e!4418183 () Bool)

(declare-fun e!4418185 () Bool)

(assert (=> b!7381021 (= e!4418183 e!4418185)))

(declare-fun res!2977052 () Bool)

(assert (=> b!7381021 (=> (not res!2977052) (not e!4418185))))

(declare-datatypes ((List!71822 0))(
  ( (Nil!71698) (Cons!71698 (h!78146 Regex!19326) (t!386313 List!71822)) )
))
(declare-datatypes ((Context!16532 0))(
  ( (Context!16533 (exprs!8766 List!71822)) )
))
(declare-fun cWitness!61 () Context!16532)

(declare-fun lt!2616925 () (Set Context!16532))

(assert (=> b!7381021 (= res!2977052 (set.member cWitness!61 lt!2616925))))

(declare-fun c!10362 () C!38926)

(declare-fun ct1!282 () Context!16532)

(declare-fun derivationStepZipperDown!3152 (Regex!19326 Context!16532 C!38926) (Set Context!16532))

(assert (=> b!7381021 (= lt!2616925 (derivationStepZipperDown!3152 r1!2370 ct1!282 c!10362))))

(declare-fun b!7381022 () Bool)

(declare-fun e!4418186 () Bool)

(assert (=> b!7381022 (= e!4418186 e!4418184)))

(declare-fun res!2977049 () Bool)

(assert (=> b!7381022 (=> (not res!2977049) (not e!4418184))))

(declare-fun lt!2616926 () (Set Context!16532))

(assert (=> b!7381022 (= res!2977049 (= lt!2616925 lt!2616926))))

(declare-fun lt!2616927 () Regex!19326)

(declare-fun $colon$colon!3304 (List!71822 Regex!19326) List!71822)

(assert (=> b!7381022 (= lt!2616926 (derivationStepZipperDown!3152 (reg!19655 r1!2370) (Context!16533 ($colon$colon!3304 (exprs!8766 ct1!282) lt!2616927)) c!10362))))

(declare-fun b!7381023 () Bool)

(declare-fun e!4418182 () Bool)

(declare-fun tp!2099511 () Bool)

(assert (=> b!7381023 (= e!4418182 tp!2099511)))

(declare-fun b!7381024 () Bool)

(declare-fun e!4418190 () Bool)

(declare-fun tp!2099513 () Bool)

(assert (=> b!7381024 (= e!4418190 tp!2099513)))

(declare-fun b!7381025 () Bool)

(declare-fun e!4418189 () Bool)

(declare-fun nullable!8400 (Regex!19326) Bool)

(assert (=> b!7381025 (= e!4418189 (not (nullable!8400 (regOne!39164 r1!2370))))))

(declare-fun b!7381027 () Bool)

(declare-fun tp!2099512 () Bool)

(assert (=> b!7381027 (= e!4418181 tp!2099512)))

(declare-fun b!7381028 () Bool)

(declare-fun tp_is_empty!48897 () Bool)

(assert (=> b!7381028 (= e!4418181 tp_is_empty!48897)))

(declare-fun b!7381029 () Bool)

(declare-fun e!4418187 () Bool)

(assert (=> b!7381029 (= e!4418187 e!4418186)))

(declare-fun res!2977053 () Bool)

(assert (=> b!7381029 (=> (not res!2977053) (not e!4418186))))

(assert (=> b!7381029 (= res!2977053 (validRegex!9922 lt!2616927))))

(assert (=> b!7381029 (= lt!2616927 (Star!19326 (reg!19655 r1!2370)))))

(declare-fun b!7381030 () Bool)

(declare-fun tp!2099517 () Bool)

(declare-fun tp!2099516 () Bool)

(assert (=> b!7381030 (= e!4418181 (and tp!2099517 tp!2099516))))

(declare-fun b!7381031 () Bool)

(declare-fun res!2977055 () Bool)

(assert (=> b!7381031 (=> (not res!2977055) (not e!4418187))))

(assert (=> b!7381031 (= res!2977055 (and (not (is-Concat!28171 r1!2370)) (is-Star!19326 r1!2370)))))

(declare-fun b!7381032 () Bool)

(declare-fun e!4418188 () Bool)

(declare-fun tp!2099514 () Bool)

(assert (=> b!7381032 (= e!4418188 tp!2099514)))

(declare-fun b!7381033 () Bool)

(assert (=> b!7381033 (= e!4418185 e!4418187)))

(declare-fun res!2977051 () Bool)

(assert (=> b!7381033 (=> (not res!2977051) (not e!4418187))))

(assert (=> b!7381033 (= res!2977051 (and (or (not (is-ElementMatch!19326 r1!2370)) (not (= c!10362 (c!1371882 r1!2370)))) (not (is-Union!19326 r1!2370))))))

(declare-fun lt!2616928 () (Set Context!16532))

(declare-fun ct2!378 () Context!16532)

(declare-fun ++!17142 (List!71822 List!71822) List!71822)

(assert (=> b!7381033 (= lt!2616928 (derivationStepZipperDown!3152 r1!2370 (Context!16533 (++!17142 (exprs!8766 ct1!282) (exprs!8766 ct2!378))) c!10362))))

(declare-datatypes ((Unit!165601 0))(
  ( (Unit!165602) )
))
(declare-fun lt!2616924 () Unit!165601)

(declare-fun lambda!458544 () Int)

(declare-fun lemmaConcatPreservesForall!1999 (List!71822 List!71822 Int) Unit!165601)

(assert (=> b!7381033 (= lt!2616924 (lemmaConcatPreservesForall!1999 (exprs!8766 ct1!282) (exprs!8766 ct2!378) lambda!458544))))

(declare-fun b!7381034 () Bool)

(declare-fun res!2977054 () Bool)

(assert (=> b!7381034 (=> (not res!2977054) (not e!4418184))))

(assert (=> b!7381034 (= res!2977054 (set.member cWitness!61 lt!2616926))))

(declare-fun res!2977050 () Bool)

(assert (=> start!720054 (=> (not res!2977050) (not e!4418183))))

(assert (=> start!720054 (= res!2977050 (validRegex!9922 r1!2370))))

(assert (=> start!720054 e!4418183))

(assert (=> start!720054 tp_is_empty!48897))

(declare-fun inv!91656 (Context!16532) Bool)

(assert (=> start!720054 (and (inv!91656 cWitness!61) e!4418182)))

(assert (=> start!720054 (and (inv!91656 ct1!282) e!4418190)))

(assert (=> start!720054 e!4418181))

(assert (=> start!720054 (and (inv!91656 ct2!378) e!4418188)))

(declare-fun b!7381026 () Bool)

(declare-fun res!2977056 () Bool)

(assert (=> b!7381026 (=> (not res!2977056) (not e!4418187))))

(assert (=> b!7381026 (= res!2977056 e!4418189)))

(declare-fun res!2977047 () Bool)

(assert (=> b!7381026 (=> res!2977047 e!4418189)))

(assert (=> b!7381026 (= res!2977047 (not (is-Concat!28171 r1!2370)))))

(assert (= (and start!720054 res!2977050) b!7381021))

(assert (= (and b!7381021 res!2977052) b!7381033))

(assert (= (and b!7381033 res!2977051) b!7381026))

(assert (= (and b!7381026 (not res!2977047)) b!7381025))

(assert (= (and b!7381026 res!2977056) b!7381031))

(assert (= (and b!7381031 res!2977055) b!7381029))

(assert (= (and b!7381029 res!2977053) b!7381022))

(assert (= (and b!7381022 res!2977049) b!7381018))

(assert (= (and b!7381018 res!2977048) b!7381034))

(assert (= (and b!7381034 res!2977054) b!7381019))

(assert (= start!720054 b!7381023))

(assert (= start!720054 b!7381024))

(assert (= (and start!720054 (is-ElementMatch!19326 r1!2370)) b!7381028))

(assert (= (and start!720054 (is-Concat!28171 r1!2370)) b!7381030))

(assert (= (and start!720054 (is-Star!19326 r1!2370)) b!7381027))

(assert (= (and start!720054 (is-Union!19326 r1!2370)) b!7381020))

(assert (= start!720054 b!7381032))

(declare-fun m!8030970 () Bool)

(assert (=> b!7381018 m!8030970))

(declare-fun m!8030972 () Bool)

(assert (=> b!7381022 m!8030972))

(declare-fun m!8030974 () Bool)

(assert (=> b!7381022 m!8030974))

(declare-fun m!8030976 () Bool)

(assert (=> start!720054 m!8030976))

(declare-fun m!8030978 () Bool)

(assert (=> start!720054 m!8030978))

(declare-fun m!8030980 () Bool)

(assert (=> start!720054 m!8030980))

(declare-fun m!8030982 () Bool)

(assert (=> start!720054 m!8030982))

(declare-fun m!8030984 () Bool)

(assert (=> b!7381025 m!8030984))

(declare-fun m!8030986 () Bool)

(assert (=> b!7381021 m!8030986))

(declare-fun m!8030988 () Bool)

(assert (=> b!7381021 m!8030988))

(declare-fun m!8030990 () Bool)

(assert (=> b!7381034 m!8030990))

(declare-fun m!8030992 () Bool)

(assert (=> b!7381029 m!8030992))

(declare-fun m!8030994 () Bool)

(assert (=> b!7381019 m!8030994))

(declare-fun m!8030996 () Bool)

(assert (=> b!7381019 m!8030996))

(declare-fun m!8030998 () Bool)

(assert (=> b!7381033 m!8030998))

(declare-fun m!8031000 () Bool)

(assert (=> b!7381033 m!8031000))

(declare-fun m!8031002 () Bool)

(assert (=> b!7381033 m!8031002))

(push 1)

(assert (not b!7381022))

(assert (not b!7381021))

(assert (not b!7381018))

(assert (not b!7381027))

(assert (not b!7381024))

(assert (not b!7381030))

(assert (not b!7381025))

(assert (not start!720054))

(assert (not b!7381023))

(assert (not b!7381033))

(assert (not b!7381032))

(assert tp_is_empty!48897)

(assert (not b!7381020))

(assert (not b!7381029))

(assert (not b!7381019))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7381104 () Bool)

(declare-fun e!4418235 () Bool)

(declare-fun call!679042 () Bool)

(assert (=> b!7381104 (= e!4418235 call!679042)))

(declare-fun b!7381105 () Bool)

(declare-fun e!4418238 () Bool)

(declare-fun call!679043 () Bool)

(assert (=> b!7381105 (= e!4418238 call!679043)))

(declare-fun b!7381106 () Bool)

(declare-fun res!2977100 () Bool)

(declare-fun e!4418236 () Bool)

(assert (=> b!7381106 (=> (not res!2977100) (not e!4418236))))

(assert (=> b!7381106 (= res!2977100 call!679042)))

(declare-fun e!4418241 () Bool)

(assert (=> b!7381106 (= e!4418241 e!4418236)))

(declare-fun bm!679037 () Bool)

(assert (=> bm!679037 (= call!679042 call!679043)))

(declare-fun b!7381107 () Bool)

(declare-fun call!679044 () Bool)

(assert (=> b!7381107 (= e!4418236 call!679044)))

(declare-fun b!7381108 () Bool)

(declare-fun e!4418237 () Bool)

(assert (=> b!7381108 (= e!4418237 e!4418238)))

(declare-fun res!2977097 () Bool)

(assert (=> b!7381108 (= res!2977097 (not (nullable!8400 (reg!19655 lt!2616927))))))

(assert (=> b!7381108 (=> (not res!2977097) (not e!4418238))))

(declare-fun b!7381109 () Bool)

(declare-fun e!4418239 () Bool)

(assert (=> b!7381109 (= e!4418239 e!4418237)))

(declare-fun c!1371888 () Bool)

(assert (=> b!7381109 (= c!1371888 (is-Star!19326 lt!2616927))))

(declare-fun b!7381110 () Bool)

(assert (=> b!7381110 (= e!4418237 e!4418241)))

(declare-fun c!1371889 () Bool)

(assert (=> b!7381110 (= c!1371889 (is-Union!19326 lt!2616927))))

(declare-fun bm!679038 () Bool)

(assert (=> bm!679038 (= call!679044 (validRegex!9922 (ite c!1371889 (regTwo!39165 lt!2616927) (regOne!39164 lt!2616927))))))

(declare-fun bm!679039 () Bool)

(assert (=> bm!679039 (= call!679043 (validRegex!9922 (ite c!1371888 (reg!19655 lt!2616927) (ite c!1371889 (regOne!39165 lt!2616927) (regTwo!39164 lt!2616927)))))))

(declare-fun b!7381112 () Bool)

(declare-fun res!2977101 () Bool)

(declare-fun e!4418240 () Bool)

(assert (=> b!7381112 (=> res!2977101 e!4418240)))

(assert (=> b!7381112 (= res!2977101 (not (is-Concat!28171 lt!2616927)))))

(assert (=> b!7381112 (= e!4418241 e!4418240)))

(declare-fun b!7381111 () Bool)

(assert (=> b!7381111 (= e!4418240 e!4418235)))

(declare-fun res!2977099 () Bool)

(assert (=> b!7381111 (=> (not res!2977099) (not e!4418235))))

(assert (=> b!7381111 (= res!2977099 call!679044)))

(declare-fun d!2285606 () Bool)

(declare-fun res!2977098 () Bool)

(assert (=> d!2285606 (=> res!2977098 e!4418239)))

(assert (=> d!2285606 (= res!2977098 (is-ElementMatch!19326 lt!2616927))))

(assert (=> d!2285606 (= (validRegex!9922 lt!2616927) e!4418239)))

(assert (= (and d!2285606 (not res!2977098)) b!7381109))

(assert (= (and b!7381109 c!1371888) b!7381108))

(assert (= (and b!7381109 (not c!1371888)) b!7381110))

(assert (= (and b!7381108 res!2977097) b!7381105))

(assert (= (and b!7381110 c!1371889) b!7381106))

(assert (= (and b!7381110 (not c!1371889)) b!7381112))

(assert (= (and b!7381106 res!2977100) b!7381107))

(assert (= (and b!7381112 (not res!2977101)) b!7381111))

(assert (= (and b!7381111 res!2977099) b!7381104))

(assert (= (or b!7381106 b!7381104) bm!679037))

(assert (= (or b!7381107 b!7381111) bm!679038))

(assert (= (or b!7381105 bm!679037) bm!679039))

(declare-fun m!8031038 () Bool)

(assert (=> b!7381108 m!8031038))

(declare-fun m!8031040 () Bool)

(assert (=> bm!679038 m!8031040))

(declare-fun m!8031042 () Bool)

(assert (=> bm!679039 m!8031042))

(assert (=> b!7381029 d!2285606))

(declare-fun b!7381113 () Bool)

(declare-fun e!4418242 () Bool)

(declare-fun call!679045 () Bool)

(assert (=> b!7381113 (= e!4418242 call!679045)))

(declare-fun b!7381114 () Bool)

(declare-fun e!4418245 () Bool)

(declare-fun call!679046 () Bool)

(assert (=> b!7381114 (= e!4418245 call!679046)))

(declare-fun b!7381115 () Bool)

(declare-fun res!2977105 () Bool)

(declare-fun e!4418243 () Bool)

(assert (=> b!7381115 (=> (not res!2977105) (not e!4418243))))

(assert (=> b!7381115 (= res!2977105 call!679045)))

(declare-fun e!4418248 () Bool)

(assert (=> b!7381115 (= e!4418248 e!4418243)))

(declare-fun bm!679040 () Bool)

(assert (=> bm!679040 (= call!679045 call!679046)))

(declare-fun b!7381116 () Bool)

(declare-fun call!679047 () Bool)

(assert (=> b!7381116 (= e!4418243 call!679047)))

(declare-fun b!7381117 () Bool)

(declare-fun e!4418244 () Bool)

(assert (=> b!7381117 (= e!4418244 e!4418245)))

(declare-fun res!2977102 () Bool)

(assert (=> b!7381117 (= res!2977102 (not (nullable!8400 (reg!19655 (reg!19655 r1!2370)))))))

(assert (=> b!7381117 (=> (not res!2977102) (not e!4418245))))

(declare-fun b!7381118 () Bool)

(declare-fun e!4418246 () Bool)

(assert (=> b!7381118 (= e!4418246 e!4418244)))

(declare-fun c!1371890 () Bool)

(assert (=> b!7381118 (= c!1371890 (is-Star!19326 (reg!19655 r1!2370)))))

(declare-fun b!7381119 () Bool)

(assert (=> b!7381119 (= e!4418244 e!4418248)))

(declare-fun c!1371891 () Bool)

(assert (=> b!7381119 (= c!1371891 (is-Union!19326 (reg!19655 r1!2370)))))

(declare-fun bm!679041 () Bool)

(assert (=> bm!679041 (= call!679047 (validRegex!9922 (ite c!1371891 (regTwo!39165 (reg!19655 r1!2370)) (regOne!39164 (reg!19655 r1!2370)))))))

(declare-fun bm!679042 () Bool)

(assert (=> bm!679042 (= call!679046 (validRegex!9922 (ite c!1371890 (reg!19655 (reg!19655 r1!2370)) (ite c!1371891 (regOne!39165 (reg!19655 r1!2370)) (regTwo!39164 (reg!19655 r1!2370))))))))

(declare-fun b!7381121 () Bool)

(declare-fun res!2977106 () Bool)

(declare-fun e!4418247 () Bool)

(assert (=> b!7381121 (=> res!2977106 e!4418247)))

(assert (=> b!7381121 (= res!2977106 (not (is-Concat!28171 (reg!19655 r1!2370))))))

(assert (=> b!7381121 (= e!4418248 e!4418247)))

(declare-fun b!7381120 () Bool)

(assert (=> b!7381120 (= e!4418247 e!4418242)))

(declare-fun res!2977104 () Bool)

(assert (=> b!7381120 (=> (not res!2977104) (not e!4418242))))

(assert (=> b!7381120 (= res!2977104 call!679047)))

(declare-fun d!2285608 () Bool)

(declare-fun res!2977103 () Bool)

(assert (=> d!2285608 (=> res!2977103 e!4418246)))

(assert (=> d!2285608 (= res!2977103 (is-ElementMatch!19326 (reg!19655 r1!2370)))))

(assert (=> d!2285608 (= (validRegex!9922 (reg!19655 r1!2370)) e!4418246)))

(assert (= (and d!2285608 (not res!2977103)) b!7381118))

(assert (= (and b!7381118 c!1371890) b!7381117))

(assert (= (and b!7381118 (not c!1371890)) b!7381119))

(assert (= (and b!7381117 res!2977102) b!7381114))

(assert (= (and b!7381119 c!1371891) b!7381115))

(assert (= (and b!7381119 (not c!1371891)) b!7381121))

(assert (= (and b!7381115 res!2977105) b!7381116))

(assert (= (and b!7381121 (not res!2977106)) b!7381120))

(assert (= (and b!7381120 res!2977104) b!7381113))

(assert (= (or b!7381115 b!7381113) bm!679040))

(assert (= (or b!7381116 b!7381120) bm!679041))

(assert (= (or b!7381114 bm!679040) bm!679042))

(declare-fun m!8031044 () Bool)

(assert (=> b!7381117 m!8031044))

(declare-fun m!8031046 () Bool)

(assert (=> bm!679041 m!8031046))

(declare-fun m!8031048 () Bool)

(assert (=> bm!679042 m!8031048))

(assert (=> b!7381018 d!2285608))

(declare-fun b!7381122 () Bool)

(declare-fun e!4418249 () Bool)

(declare-fun call!679048 () Bool)

(assert (=> b!7381122 (= e!4418249 call!679048)))

(declare-fun b!7381123 () Bool)

(declare-fun e!4418252 () Bool)

(declare-fun call!679049 () Bool)

(assert (=> b!7381123 (= e!4418252 call!679049)))

(declare-fun b!7381124 () Bool)

(declare-fun res!2977110 () Bool)

(declare-fun e!4418250 () Bool)

(assert (=> b!7381124 (=> (not res!2977110) (not e!4418250))))

(assert (=> b!7381124 (= res!2977110 call!679048)))

(declare-fun e!4418255 () Bool)

(assert (=> b!7381124 (= e!4418255 e!4418250)))

(declare-fun bm!679043 () Bool)

(assert (=> bm!679043 (= call!679048 call!679049)))

(declare-fun b!7381125 () Bool)

(declare-fun call!679050 () Bool)

(assert (=> b!7381125 (= e!4418250 call!679050)))

(declare-fun b!7381126 () Bool)

(declare-fun e!4418251 () Bool)

(assert (=> b!7381126 (= e!4418251 e!4418252)))

(declare-fun res!2977107 () Bool)

(assert (=> b!7381126 (= res!2977107 (not (nullable!8400 (reg!19655 r1!2370))))))

(assert (=> b!7381126 (=> (not res!2977107) (not e!4418252))))

(declare-fun b!7381127 () Bool)

(declare-fun e!4418253 () Bool)

(assert (=> b!7381127 (= e!4418253 e!4418251)))

(declare-fun c!1371892 () Bool)

(assert (=> b!7381127 (= c!1371892 (is-Star!19326 r1!2370))))

(declare-fun b!7381128 () Bool)

(assert (=> b!7381128 (= e!4418251 e!4418255)))

(declare-fun c!1371893 () Bool)

(assert (=> b!7381128 (= c!1371893 (is-Union!19326 r1!2370))))

(declare-fun bm!679044 () Bool)

(assert (=> bm!679044 (= call!679050 (validRegex!9922 (ite c!1371893 (regTwo!39165 r1!2370) (regOne!39164 r1!2370))))))

(declare-fun bm!679045 () Bool)

(assert (=> bm!679045 (= call!679049 (validRegex!9922 (ite c!1371892 (reg!19655 r1!2370) (ite c!1371893 (regOne!39165 r1!2370) (regTwo!39164 r1!2370)))))))

(declare-fun b!7381130 () Bool)

(declare-fun res!2977111 () Bool)

(declare-fun e!4418254 () Bool)

(assert (=> b!7381130 (=> res!2977111 e!4418254)))

(assert (=> b!7381130 (= res!2977111 (not (is-Concat!28171 r1!2370)))))

(assert (=> b!7381130 (= e!4418255 e!4418254)))

(declare-fun b!7381129 () Bool)

(assert (=> b!7381129 (= e!4418254 e!4418249)))

(declare-fun res!2977109 () Bool)

(assert (=> b!7381129 (=> (not res!2977109) (not e!4418249))))

(assert (=> b!7381129 (= res!2977109 call!679050)))

(declare-fun d!2285610 () Bool)

(declare-fun res!2977108 () Bool)

(assert (=> d!2285610 (=> res!2977108 e!4418253)))

(assert (=> d!2285610 (= res!2977108 (is-ElementMatch!19326 r1!2370))))

(assert (=> d!2285610 (= (validRegex!9922 r1!2370) e!4418253)))

(assert (= (and d!2285610 (not res!2977108)) b!7381127))

(assert (= (and b!7381127 c!1371892) b!7381126))

(assert (= (and b!7381127 (not c!1371892)) b!7381128))

(assert (= (and b!7381126 res!2977107) b!7381123))

(assert (= (and b!7381128 c!1371893) b!7381124))

(assert (= (and b!7381128 (not c!1371893)) b!7381130))

(assert (= (and b!7381124 res!2977110) b!7381125))

(assert (= (and b!7381130 (not res!2977111)) b!7381129))

(assert (= (and b!7381129 res!2977109) b!7381122))

(assert (= (or b!7381124 b!7381122) bm!679043))

(assert (= (or b!7381125 b!7381129) bm!679044))

(assert (= (or b!7381123 bm!679043) bm!679045))

(declare-fun m!8031050 () Bool)

(assert (=> b!7381126 m!8031050))

(declare-fun m!8031052 () Bool)

(assert (=> bm!679044 m!8031052))

(declare-fun m!8031054 () Bool)

(assert (=> bm!679045 m!8031054))

(assert (=> start!720054 d!2285610))

(declare-fun bs!1921586 () Bool)

(declare-fun d!2285612 () Bool)

(assert (= bs!1921586 (and d!2285612 b!7381033)))

(declare-fun lambda!458550 () Int)

(assert (=> bs!1921586 (= lambda!458550 lambda!458544)))

(declare-fun forall!18112 (List!71822 Int) Bool)

(assert (=> d!2285612 (= (inv!91656 cWitness!61) (forall!18112 (exprs!8766 cWitness!61) lambda!458550))))

(declare-fun bs!1921587 () Bool)

(assert (= bs!1921587 d!2285612))

(declare-fun m!8031056 () Bool)

(assert (=> bs!1921587 m!8031056))

(assert (=> start!720054 d!2285612))

(declare-fun bs!1921588 () Bool)

(declare-fun d!2285614 () Bool)

(assert (= bs!1921588 (and d!2285614 b!7381033)))

(declare-fun lambda!458551 () Int)

(assert (=> bs!1921588 (= lambda!458551 lambda!458544)))

(declare-fun bs!1921589 () Bool)

(assert (= bs!1921589 (and d!2285614 d!2285612)))

(assert (=> bs!1921589 (= lambda!458551 lambda!458550)))

(assert (=> d!2285614 (= (inv!91656 ct1!282) (forall!18112 (exprs!8766 ct1!282) lambda!458551))))

(declare-fun bs!1921590 () Bool)

(assert (= bs!1921590 d!2285614))

(declare-fun m!8031058 () Bool)

(assert (=> bs!1921590 m!8031058))

(assert (=> start!720054 d!2285614))

(declare-fun bs!1921591 () Bool)

(declare-fun d!2285616 () Bool)

(assert (= bs!1921591 (and d!2285616 b!7381033)))

(declare-fun lambda!458552 () Int)

(assert (=> bs!1921591 (= lambda!458552 lambda!458544)))

(declare-fun bs!1921592 () Bool)

(assert (= bs!1921592 (and d!2285616 d!2285612)))

(assert (=> bs!1921592 (= lambda!458552 lambda!458550)))

(declare-fun bs!1921593 () Bool)

(assert (= bs!1921593 (and d!2285616 d!2285614)))

(assert (=> bs!1921593 (= lambda!458552 lambda!458551)))

(assert (=> d!2285616 (= (inv!91656 ct2!378) (forall!18112 (exprs!8766 ct2!378) lambda!458552))))

(declare-fun bs!1921594 () Bool)

(assert (= bs!1921594 d!2285616))

(declare-fun m!8031060 () Bool)

(assert (=> bs!1921594 m!8031060))

(assert (=> start!720054 d!2285616))

(declare-fun d!2285618 () Bool)

(declare-fun nullableFct!3369 (Regex!19326) Bool)

(assert (=> d!2285618 (= (nullable!8400 (regOne!39164 r1!2370)) (nullableFct!3369 (regOne!39164 r1!2370)))))

(declare-fun bs!1921595 () Bool)

(assert (= bs!1921595 d!2285618))

(declare-fun m!8031062 () Bool)

(assert (=> bs!1921595 m!8031062))

(assert (=> b!7381025 d!2285618))

(declare-fun b!7381187 () Bool)

(declare-fun e!4418295 () Int)

(declare-fun call!679066 () Int)

(assert (=> b!7381187 (= e!4418295 (+ 1 call!679066))))

(declare-fun b!7381188 () Bool)

(declare-fun e!4418293 () Bool)

(declare-fun lt!2616946 () Int)

(declare-fun call!679069 () Int)

(assert (=> b!7381188 (= e!4418293 (> lt!2616946 call!679069))))

(declare-fun call!679070 () Int)

(declare-fun c!1371919 () Bool)

(declare-fun bm!679060 () Bool)

(declare-fun call!679067 () Int)

(declare-fun maxBigInt!0 (Int Int) Int)

(assert (=> bm!679060 (= call!679066 (maxBigInt!0 (ite c!1371919 call!679070 call!679067) (ite c!1371919 call!679067 call!679070)))))

(declare-fun b!7381189 () Bool)

(declare-fun e!4418294 () Int)

(declare-fun call!679068 () Int)

(assert (=> b!7381189 (= e!4418294 (+ 1 call!679068))))

(declare-fun bm!679061 () Bool)

(declare-fun call!679071 () Int)

(declare-fun call!679065 () Int)

(assert (=> bm!679061 (= call!679071 call!679065)))

(declare-fun bm!679063 () Bool)

(declare-fun c!1371922 () Bool)

(assert (=> bm!679063 (= call!679068 (regexDepth!444 (ite c!1371922 (reg!19655 (reg!19655 r1!2370)) (ite c!1371919 (regOne!39165 (reg!19655 r1!2370)) (regTwo!39164 (reg!19655 r1!2370))))))))

(declare-fun b!7381190 () Bool)

(declare-fun c!1371921 () Bool)

(assert (=> b!7381190 (= c!1371921 (is-Star!19326 (reg!19655 r1!2370)))))

(declare-fun e!4418290 () Bool)

(declare-fun e!4418289 () Bool)

(assert (=> b!7381190 (= e!4418290 e!4418289)))

(declare-fun b!7381191 () Bool)

(declare-fun e!4418288 () Int)

(assert (=> b!7381191 (= e!4418288 e!4418294)))

(assert (=> b!7381191 (= c!1371922 (is-Star!19326 (reg!19655 r1!2370)))))

(declare-fun b!7381192 () Bool)

(assert (=> b!7381192 (= e!4418289 (= lt!2616946 1))))

(declare-fun b!7381193 () Bool)

(declare-fun e!4418296 () Bool)

(declare-fun e!4418291 () Bool)

(assert (=> b!7381193 (= e!4418296 e!4418291)))

(declare-fun c!1371924 () Bool)

(assert (=> b!7381193 (= c!1371924 (is-Union!19326 (reg!19655 r1!2370)))))

(declare-fun b!7381194 () Bool)

(declare-fun e!4418292 () Int)

(assert (=> b!7381194 (= e!4418292 1)))

(declare-fun bm!679064 () Bool)

(assert (=> bm!679064 (= call!679069 (regexDepth!444 (ite c!1371924 (regTwo!39165 (reg!19655 r1!2370)) (regTwo!39164 (reg!19655 r1!2370)))))))

(declare-fun b!7381195 () Bool)

(assert (=> b!7381195 (= e!4418288 1)))

(declare-fun b!7381196 () Bool)

(assert (=> b!7381196 (= e!4418289 (> lt!2616946 call!679071))))

(declare-fun b!7381197 () Bool)

(assert (=> b!7381197 (= e!4418292 (+ 1 call!679066))))

(declare-fun b!7381198 () Bool)

(assert (=> b!7381198 (= e!4418295 e!4418292)))

(declare-fun c!1371920 () Bool)

(assert (=> b!7381198 (= c!1371920 (is-Concat!28171 (reg!19655 r1!2370)))))

(declare-fun bm!679065 () Bool)

(declare-fun c!1371923 () Bool)

(assert (=> bm!679065 (= call!679065 (regexDepth!444 (ite c!1371924 (regOne!39165 (reg!19655 r1!2370)) (ite c!1371923 (regOne!39164 (reg!19655 r1!2370)) (reg!19655 (reg!19655 r1!2370))))))))

(declare-fun b!7381199 () Bool)

(declare-fun e!4418297 () Bool)

(assert (=> b!7381199 (= e!4418297 (> lt!2616946 call!679069))))

(declare-fun b!7381200 () Bool)

(assert (=> b!7381200 (= e!4418291 e!4418290)))

(assert (=> b!7381200 (= c!1371923 (is-Concat!28171 (reg!19655 r1!2370)))))

(declare-fun b!7381201 () Bool)

(assert (=> b!7381201 (= e!4418291 e!4418293)))

(declare-fun res!2977121 () Bool)

(assert (=> b!7381201 (= res!2977121 (> lt!2616946 call!679065))))

(assert (=> b!7381201 (=> (not res!2977121) (not e!4418293))))

(declare-fun bm!679066 () Bool)

(assert (=> bm!679066 (= call!679067 (regexDepth!444 (ite c!1371919 (regTwo!39165 (reg!19655 r1!2370)) (regOne!39164 (reg!19655 r1!2370)))))))

(declare-fun b!7381202 () Bool)

(declare-fun res!2977122 () Bool)

(assert (=> b!7381202 (=> (not res!2977122) (not e!4418297))))

(assert (=> b!7381202 (= res!2977122 (> lt!2616946 call!679071))))

(assert (=> b!7381202 (= e!4418290 e!4418297)))

(declare-fun b!7381203 () Bool)

(assert (=> b!7381203 (= c!1371919 (is-Union!19326 (reg!19655 r1!2370)))))

(assert (=> b!7381203 (= e!4418294 e!4418295)))

(declare-fun bm!679062 () Bool)

(assert (=> bm!679062 (= call!679070 call!679068)))

(declare-fun d!2285620 () Bool)

(assert (=> d!2285620 e!4418296))

(declare-fun res!2977120 () Bool)

(assert (=> d!2285620 (=> (not res!2977120) (not e!4418296))))

(assert (=> d!2285620 (= res!2977120 (> lt!2616946 0))))

(assert (=> d!2285620 (= lt!2616946 e!4418288)))

(declare-fun c!1371918 () Bool)

(assert (=> d!2285620 (= c!1371918 (is-ElementMatch!19326 (reg!19655 r1!2370)))))

(assert (=> d!2285620 (= (regexDepth!444 (reg!19655 r1!2370)) lt!2616946)))

(assert (= (and d!2285620 c!1371918) b!7381195))

(assert (= (and d!2285620 (not c!1371918)) b!7381191))

(assert (= (and b!7381191 c!1371922) b!7381189))

(assert (= (and b!7381191 (not c!1371922)) b!7381203))

(assert (= (and b!7381203 c!1371919) b!7381187))

(assert (= (and b!7381203 (not c!1371919)) b!7381198))

(assert (= (and b!7381198 c!1371920) b!7381197))

(assert (= (and b!7381198 (not c!1371920)) b!7381194))

(assert (= (or b!7381187 b!7381197) bm!679066))

(assert (= (or b!7381187 b!7381197) bm!679062))

(assert (= (or b!7381187 b!7381197) bm!679060))

(assert (= (or b!7381189 bm!679062) bm!679063))

(assert (= (and d!2285620 res!2977120) b!7381193))

(assert (= (and b!7381193 c!1371924) b!7381201))

(assert (= (and b!7381193 (not c!1371924)) b!7381200))

(assert (= (and b!7381201 res!2977121) b!7381188))

(assert (= (and b!7381200 c!1371923) b!7381202))

(assert (= (and b!7381200 (not c!1371923)) b!7381190))

(assert (= (and b!7381202 res!2977122) b!7381199))

(assert (= (and b!7381190 c!1371921) b!7381196))

(assert (= (and b!7381190 (not c!1371921)) b!7381192))

(assert (= (or b!7381202 b!7381196) bm!679061))

(assert (= (or b!7381188 b!7381199) bm!679064))

(assert (= (or b!7381201 bm!679061) bm!679065))

(declare-fun m!8031064 () Bool)

(assert (=> bm!679065 m!8031064))

(declare-fun m!8031066 () Bool)

(assert (=> bm!679066 m!8031066))

(declare-fun m!8031068 () Bool)

(assert (=> bm!679064 m!8031068))

(declare-fun m!8031070 () Bool)

(assert (=> bm!679060 m!8031070))

(declare-fun m!8031072 () Bool)

(assert (=> bm!679063 m!8031072))

(assert (=> b!7381019 d!2285620))

(declare-fun b!7381204 () Bool)

(declare-fun e!4418305 () Int)

(declare-fun call!679077 () Int)

(assert (=> b!7381204 (= e!4418305 (+ 1 call!679077))))

(declare-fun b!7381205 () Bool)

(declare-fun e!4418303 () Bool)

(declare-fun lt!2616947 () Int)

(declare-fun call!679080 () Int)

(assert (=> b!7381205 (= e!4418303 (> lt!2616947 call!679080))))

(declare-fun call!679081 () Int)

(declare-fun bm!679071 () Bool)

(declare-fun call!679078 () Int)

(declare-fun c!1371926 () Bool)

(assert (=> bm!679071 (= call!679077 (maxBigInt!0 (ite c!1371926 call!679081 call!679078) (ite c!1371926 call!679078 call!679081)))))

(declare-fun b!7381206 () Bool)

(declare-fun e!4418304 () Int)

(declare-fun call!679079 () Int)

(assert (=> b!7381206 (= e!4418304 (+ 1 call!679079))))

(declare-fun bm!679072 () Bool)

(declare-fun call!679082 () Int)

(declare-fun call!679076 () Int)

(assert (=> bm!679072 (= call!679082 call!679076)))

(declare-fun bm!679074 () Bool)

(declare-fun c!1371929 () Bool)

(assert (=> bm!679074 (= call!679079 (regexDepth!444 (ite c!1371929 (reg!19655 r1!2370) (ite c!1371926 (regOne!39165 r1!2370) (regTwo!39164 r1!2370)))))))

(declare-fun b!7381207 () Bool)

(declare-fun c!1371928 () Bool)

(assert (=> b!7381207 (= c!1371928 (is-Star!19326 r1!2370))))

(declare-fun e!4418300 () Bool)

(declare-fun e!4418299 () Bool)

(assert (=> b!7381207 (= e!4418300 e!4418299)))

(declare-fun b!7381208 () Bool)

(declare-fun e!4418298 () Int)

(assert (=> b!7381208 (= e!4418298 e!4418304)))

(assert (=> b!7381208 (= c!1371929 (is-Star!19326 r1!2370))))

(declare-fun b!7381209 () Bool)

(assert (=> b!7381209 (= e!4418299 (= lt!2616947 1))))

(declare-fun b!7381210 () Bool)

(declare-fun e!4418306 () Bool)

(declare-fun e!4418301 () Bool)

(assert (=> b!7381210 (= e!4418306 e!4418301)))

(declare-fun c!1371931 () Bool)

(assert (=> b!7381210 (= c!1371931 (is-Union!19326 r1!2370))))

(declare-fun b!7381211 () Bool)

(declare-fun e!4418302 () Int)

(assert (=> b!7381211 (= e!4418302 1)))

(declare-fun bm!679075 () Bool)

(assert (=> bm!679075 (= call!679080 (regexDepth!444 (ite c!1371931 (regTwo!39165 r1!2370) (regTwo!39164 r1!2370))))))

(declare-fun b!7381212 () Bool)

(assert (=> b!7381212 (= e!4418298 1)))

(declare-fun b!7381213 () Bool)

(assert (=> b!7381213 (= e!4418299 (> lt!2616947 call!679082))))

(declare-fun b!7381214 () Bool)

(assert (=> b!7381214 (= e!4418302 (+ 1 call!679077))))

(declare-fun b!7381215 () Bool)

(assert (=> b!7381215 (= e!4418305 e!4418302)))

(declare-fun c!1371927 () Bool)

(assert (=> b!7381215 (= c!1371927 (is-Concat!28171 r1!2370))))

(declare-fun c!1371930 () Bool)

(declare-fun bm!679076 () Bool)

(assert (=> bm!679076 (= call!679076 (regexDepth!444 (ite c!1371931 (regOne!39165 r1!2370) (ite c!1371930 (regOne!39164 r1!2370) (reg!19655 r1!2370)))))))

(declare-fun b!7381216 () Bool)

(declare-fun e!4418307 () Bool)

(assert (=> b!7381216 (= e!4418307 (> lt!2616947 call!679080))))

(declare-fun b!7381217 () Bool)

(assert (=> b!7381217 (= e!4418301 e!4418300)))

(assert (=> b!7381217 (= c!1371930 (is-Concat!28171 r1!2370))))

(declare-fun b!7381218 () Bool)

(assert (=> b!7381218 (= e!4418301 e!4418303)))

(declare-fun res!2977124 () Bool)

(assert (=> b!7381218 (= res!2977124 (> lt!2616947 call!679076))))

(assert (=> b!7381218 (=> (not res!2977124) (not e!4418303))))

(declare-fun bm!679077 () Bool)

(assert (=> bm!679077 (= call!679078 (regexDepth!444 (ite c!1371926 (regTwo!39165 r1!2370) (regOne!39164 r1!2370))))))

(declare-fun b!7381219 () Bool)

(declare-fun res!2977125 () Bool)

(assert (=> b!7381219 (=> (not res!2977125) (not e!4418307))))

(assert (=> b!7381219 (= res!2977125 (> lt!2616947 call!679082))))

(assert (=> b!7381219 (= e!4418300 e!4418307)))

(declare-fun b!7381220 () Bool)

(assert (=> b!7381220 (= c!1371926 (is-Union!19326 r1!2370))))

(assert (=> b!7381220 (= e!4418304 e!4418305)))

(declare-fun bm!679073 () Bool)

(assert (=> bm!679073 (= call!679081 call!679079)))

(declare-fun d!2285624 () Bool)

(assert (=> d!2285624 e!4418306))

(declare-fun res!2977123 () Bool)

(assert (=> d!2285624 (=> (not res!2977123) (not e!4418306))))

(assert (=> d!2285624 (= res!2977123 (> lt!2616947 0))))

(assert (=> d!2285624 (= lt!2616947 e!4418298)))

(declare-fun c!1371925 () Bool)

(assert (=> d!2285624 (= c!1371925 (is-ElementMatch!19326 r1!2370))))

(assert (=> d!2285624 (= (regexDepth!444 r1!2370) lt!2616947)))

(assert (= (and d!2285624 c!1371925) b!7381212))

(assert (= (and d!2285624 (not c!1371925)) b!7381208))

(assert (= (and b!7381208 c!1371929) b!7381206))

(assert (= (and b!7381208 (not c!1371929)) b!7381220))

(assert (= (and b!7381220 c!1371926) b!7381204))

(assert (= (and b!7381220 (not c!1371926)) b!7381215))

(assert (= (and b!7381215 c!1371927) b!7381214))

(assert (= (and b!7381215 (not c!1371927)) b!7381211))

(assert (= (or b!7381204 b!7381214) bm!679077))

(assert (= (or b!7381204 b!7381214) bm!679073))

(assert (= (or b!7381204 b!7381214) bm!679071))

(assert (= (or b!7381206 bm!679073) bm!679074))

(assert (= (and d!2285624 res!2977123) b!7381210))

(assert (= (and b!7381210 c!1371931) b!7381218))

(assert (= (and b!7381210 (not c!1371931)) b!7381217))

(assert (= (and b!7381218 res!2977124) b!7381205))

(assert (= (and b!7381217 c!1371930) b!7381219))

(assert (= (and b!7381217 (not c!1371930)) b!7381207))

(assert (= (and b!7381219 res!2977125) b!7381216))

(assert (= (and b!7381207 c!1371928) b!7381213))

(assert (= (and b!7381207 (not c!1371928)) b!7381209))

(assert (= (or b!7381219 b!7381213) bm!679072))

(assert (= (or b!7381205 b!7381216) bm!679075))

(assert (= (or b!7381218 bm!679072) bm!679076))

(declare-fun m!8031074 () Bool)

(assert (=> bm!679076 m!8031074))

(declare-fun m!8031076 () Bool)

(assert (=> bm!679077 m!8031076))

(declare-fun m!8031078 () Bool)

(assert (=> bm!679075 m!8031078))

(declare-fun m!8031080 () Bool)

(assert (=> bm!679071 m!8031080))

(declare-fun m!8031082 () Bool)

(assert (=> bm!679074 m!8031082))

(assert (=> b!7381019 d!2285624))

(declare-fun b!7381243 () Bool)

(declare-fun c!1371943 () Bool)

(assert (=> b!7381243 (= c!1371943 (is-Star!19326 r1!2370))))

(declare-fun e!4418322 () (Set Context!16532))

(declare-fun e!4418320 () (Set Context!16532))

(assert (=> b!7381243 (= e!4418322 e!4418320)))

(declare-fun bm!679098 () Bool)

(declare-fun call!679108 () List!71822)

(declare-fun c!1371946 () Bool)

(declare-fun c!1371944 () Bool)

(declare-fun call!679104 () (Set Context!16532))

(declare-fun c!1371945 () Bool)

(assert (=> bm!679098 (= call!679104 (derivationStepZipperDown!3152 (ite c!1371944 (regTwo!39165 r1!2370) (ite c!1371945 (regTwo!39164 r1!2370) (ite c!1371946 (regOne!39164 r1!2370) (reg!19655 r1!2370)))) (ite (or c!1371944 c!1371945) ct1!282 (Context!16533 call!679108)) c!10362))))

(declare-fun bm!679099 () Bool)

(declare-fun call!679103 () (Set Context!16532))

(declare-fun call!679107 () (Set Context!16532))

(assert (=> bm!679099 (= call!679103 call!679107)))

(declare-fun b!7381244 () Bool)

(assert (=> b!7381244 (= e!4418320 call!679103)))

(declare-fun b!7381245 () Bool)

(declare-fun e!4418323 () (Set Context!16532))

(declare-fun e!4418324 () (Set Context!16532))

(assert (=> b!7381245 (= e!4418323 e!4418324)))

(assert (=> b!7381245 (= c!1371944 (is-Union!19326 r1!2370))))

(declare-fun b!7381246 () Bool)

(declare-fun e!4418325 () (Set Context!16532))

(declare-fun call!679105 () (Set Context!16532))

(assert (=> b!7381246 (= e!4418325 (set.union call!679105 call!679107))))

(declare-fun bm!679100 () Bool)

(declare-fun call!679106 () List!71822)

(assert (=> bm!679100 (= call!679108 call!679106)))

(declare-fun b!7381247 () Bool)

(declare-fun e!4418321 () Bool)

(assert (=> b!7381247 (= e!4418321 (nullable!8400 (regOne!39164 r1!2370)))))

(declare-fun b!7381248 () Bool)

(assert (=> b!7381248 (= e!4418323 (set.insert ct1!282 (as set.empty (Set Context!16532))))))

(declare-fun b!7381249 () Bool)

(assert (=> b!7381249 (= e!4418322 call!679103)))

(declare-fun b!7381250 () Bool)

(assert (=> b!7381250 (= e!4418320 (as set.empty (Set Context!16532)))))

(declare-fun bm!679101 () Bool)

(assert (=> bm!679101 (= call!679107 call!679104)))

(declare-fun d!2285626 () Bool)

(declare-fun c!1371942 () Bool)

(assert (=> d!2285626 (= c!1371942 (and (is-ElementMatch!19326 r1!2370) (= (c!1371882 r1!2370) c!10362)))))

(assert (=> d!2285626 (= (derivationStepZipperDown!3152 r1!2370 ct1!282 c!10362) e!4418323)))

(declare-fun bm!679102 () Bool)

(assert (=> bm!679102 (= call!679105 (derivationStepZipperDown!3152 (ite c!1371944 (regOne!39165 r1!2370) (regOne!39164 r1!2370)) (ite c!1371944 ct1!282 (Context!16533 call!679106)) c!10362))))

(declare-fun b!7381251 () Bool)

(assert (=> b!7381251 (= e!4418325 e!4418322)))

(assert (=> b!7381251 (= c!1371946 (is-Concat!28171 r1!2370))))

(declare-fun bm!679103 () Bool)

(assert (=> bm!679103 (= call!679106 ($colon$colon!3304 (exprs!8766 ct1!282) (ite (or c!1371945 c!1371946) (regTwo!39164 r1!2370) r1!2370)))))

(declare-fun b!7381252 () Bool)

(assert (=> b!7381252 (= e!4418324 (set.union call!679105 call!679104))))

(declare-fun b!7381253 () Bool)

(assert (=> b!7381253 (= c!1371945 e!4418321)))

(declare-fun res!2977128 () Bool)

(assert (=> b!7381253 (=> (not res!2977128) (not e!4418321))))

(assert (=> b!7381253 (= res!2977128 (is-Concat!28171 r1!2370))))

(assert (=> b!7381253 (= e!4418324 e!4418325)))

(assert (= (and d!2285626 c!1371942) b!7381248))

(assert (= (and d!2285626 (not c!1371942)) b!7381245))

(assert (= (and b!7381245 c!1371944) b!7381252))

(assert (= (and b!7381245 (not c!1371944)) b!7381253))

(assert (= (and b!7381253 res!2977128) b!7381247))

(assert (= (and b!7381253 c!1371945) b!7381246))

(assert (= (and b!7381253 (not c!1371945)) b!7381251))

(assert (= (and b!7381251 c!1371946) b!7381249))

(assert (= (and b!7381251 (not c!1371946)) b!7381243))

(assert (= (and b!7381243 c!1371943) b!7381244))

(assert (= (and b!7381243 (not c!1371943)) b!7381250))

(assert (= (or b!7381249 b!7381244) bm!679100))

(assert (= (or b!7381249 b!7381244) bm!679099))

(assert (= (or b!7381246 bm!679099) bm!679101))

(assert (= (or b!7381246 bm!679100) bm!679103))

(assert (= (or b!7381252 bm!679101) bm!679098))

(assert (= (or b!7381252 b!7381246) bm!679102))

(declare-fun m!8031084 () Bool)

(assert (=> bm!679103 m!8031084))

(declare-fun m!8031086 () Bool)

(assert (=> bm!679098 m!8031086))

(declare-fun m!8031088 () Bool)

(assert (=> b!7381248 m!8031088))

(declare-fun m!8031090 () Bool)

(assert (=> bm!679102 m!8031090))

(assert (=> b!7381247 m!8030984))

(assert (=> b!7381021 d!2285626))

(declare-fun b!7381254 () Bool)

(declare-fun c!1371948 () Bool)

(assert (=> b!7381254 (= c!1371948 (is-Star!19326 r1!2370))))

(declare-fun e!4418328 () (Set Context!16532))

(declare-fun e!4418326 () (Set Context!16532))

(assert (=> b!7381254 (= e!4418328 e!4418326)))

(declare-fun c!1371950 () Bool)

(declare-fun call!679114 () List!71822)

(declare-fun bm!679104 () Bool)

(declare-fun call!679110 () (Set Context!16532))

(declare-fun c!1371949 () Bool)

(declare-fun c!1371951 () Bool)

(assert (=> bm!679104 (= call!679110 (derivationStepZipperDown!3152 (ite c!1371949 (regTwo!39165 r1!2370) (ite c!1371950 (regTwo!39164 r1!2370) (ite c!1371951 (regOne!39164 r1!2370) (reg!19655 r1!2370)))) (ite (or c!1371949 c!1371950) (Context!16533 (++!17142 (exprs!8766 ct1!282) (exprs!8766 ct2!378))) (Context!16533 call!679114)) c!10362))))

(declare-fun bm!679105 () Bool)

(declare-fun call!679109 () (Set Context!16532))

(declare-fun call!679113 () (Set Context!16532))

(assert (=> bm!679105 (= call!679109 call!679113)))

(declare-fun b!7381255 () Bool)

(assert (=> b!7381255 (= e!4418326 call!679109)))

(declare-fun b!7381256 () Bool)

(declare-fun e!4418329 () (Set Context!16532))

(declare-fun e!4418330 () (Set Context!16532))

(assert (=> b!7381256 (= e!4418329 e!4418330)))

(assert (=> b!7381256 (= c!1371949 (is-Union!19326 r1!2370))))

(declare-fun b!7381257 () Bool)

(declare-fun e!4418331 () (Set Context!16532))

(declare-fun call!679111 () (Set Context!16532))

(assert (=> b!7381257 (= e!4418331 (set.union call!679111 call!679113))))

(declare-fun bm!679106 () Bool)

(declare-fun call!679112 () List!71822)

(assert (=> bm!679106 (= call!679114 call!679112)))

(declare-fun b!7381258 () Bool)

(declare-fun e!4418327 () Bool)

(assert (=> b!7381258 (= e!4418327 (nullable!8400 (regOne!39164 r1!2370)))))

(declare-fun b!7381259 () Bool)

(assert (=> b!7381259 (= e!4418329 (set.insert (Context!16533 (++!17142 (exprs!8766 ct1!282) (exprs!8766 ct2!378))) (as set.empty (Set Context!16532))))))

(declare-fun b!7381260 () Bool)

(assert (=> b!7381260 (= e!4418328 call!679109)))

(declare-fun b!7381261 () Bool)

(assert (=> b!7381261 (= e!4418326 (as set.empty (Set Context!16532)))))

(declare-fun bm!679107 () Bool)

(assert (=> bm!679107 (= call!679113 call!679110)))

(declare-fun d!2285628 () Bool)

(declare-fun c!1371947 () Bool)

(assert (=> d!2285628 (= c!1371947 (and (is-ElementMatch!19326 r1!2370) (= (c!1371882 r1!2370) c!10362)))))

(assert (=> d!2285628 (= (derivationStepZipperDown!3152 r1!2370 (Context!16533 (++!17142 (exprs!8766 ct1!282) (exprs!8766 ct2!378))) c!10362) e!4418329)))

(declare-fun bm!679108 () Bool)

(assert (=> bm!679108 (= call!679111 (derivationStepZipperDown!3152 (ite c!1371949 (regOne!39165 r1!2370) (regOne!39164 r1!2370)) (ite c!1371949 (Context!16533 (++!17142 (exprs!8766 ct1!282) (exprs!8766 ct2!378))) (Context!16533 call!679112)) c!10362))))

(declare-fun b!7381262 () Bool)

(assert (=> b!7381262 (= e!4418331 e!4418328)))

(assert (=> b!7381262 (= c!1371951 (is-Concat!28171 r1!2370))))

(declare-fun bm!679109 () Bool)

(assert (=> bm!679109 (= call!679112 ($colon$colon!3304 (exprs!8766 (Context!16533 (++!17142 (exprs!8766 ct1!282) (exprs!8766 ct2!378)))) (ite (or c!1371950 c!1371951) (regTwo!39164 r1!2370) r1!2370)))))

(declare-fun b!7381263 () Bool)

(assert (=> b!7381263 (= e!4418330 (set.union call!679111 call!679110))))

(declare-fun b!7381264 () Bool)

(assert (=> b!7381264 (= c!1371950 e!4418327)))

(declare-fun res!2977129 () Bool)

(assert (=> b!7381264 (=> (not res!2977129) (not e!4418327))))

(assert (=> b!7381264 (= res!2977129 (is-Concat!28171 r1!2370))))

(assert (=> b!7381264 (= e!4418330 e!4418331)))

(assert (= (and d!2285628 c!1371947) b!7381259))

(assert (= (and d!2285628 (not c!1371947)) b!7381256))

(assert (= (and b!7381256 c!1371949) b!7381263))

(assert (= (and b!7381256 (not c!1371949)) b!7381264))

(assert (= (and b!7381264 res!2977129) b!7381258))

(assert (= (and b!7381264 c!1371950) b!7381257))

(assert (= (and b!7381264 (not c!1371950)) b!7381262))

(assert (= (and b!7381262 c!1371951) b!7381260))

(assert (= (and b!7381262 (not c!1371951)) b!7381254))

(assert (= (and b!7381254 c!1371948) b!7381255))

(assert (= (and b!7381254 (not c!1371948)) b!7381261))

(assert (= (or b!7381260 b!7381255) bm!679106))

(assert (= (or b!7381260 b!7381255) bm!679105))

(assert (= (or b!7381257 bm!679105) bm!679107))

(assert (= (or b!7381257 bm!679106) bm!679109))

(assert (= (or b!7381263 bm!679107) bm!679104))

(assert (= (or b!7381263 b!7381257) bm!679108))

(declare-fun m!8031092 () Bool)

(assert (=> bm!679109 m!8031092))

(declare-fun m!8031094 () Bool)

(assert (=> bm!679104 m!8031094))

(declare-fun m!8031096 () Bool)

(assert (=> b!7381259 m!8031096))

(declare-fun m!8031098 () Bool)

(assert (=> bm!679108 m!8031098))

(assert (=> b!7381258 m!8030984))

(assert (=> b!7381033 d!2285628))

(declare-fun d!2285630 () Bool)

(declare-fun e!4418342 () Bool)

(assert (=> d!2285630 e!4418342))

(declare-fun res!2977136 () Bool)

(assert (=> d!2285630 (=> (not res!2977136) (not e!4418342))))

(declare-fun lt!2616950 () List!71822)

(declare-fun content!15185 (List!71822) (Set Regex!19326))

(assert (=> d!2285630 (= res!2977136 (= (content!15185 lt!2616950) (set.union (content!15185 (exprs!8766 ct1!282)) (content!15185 (exprs!8766 ct2!378)))))))

(declare-fun e!4418343 () List!71822)

(assert (=> d!2285630 (= lt!2616950 e!4418343)))

(declare-fun c!1371959 () Bool)

(assert (=> d!2285630 (= c!1371959 (is-Nil!71698 (exprs!8766 ct1!282)))))

(assert (=> d!2285630 (= (++!17142 (exprs!8766 ct1!282) (exprs!8766 ct2!378)) lt!2616950)))

(declare-fun b!7381285 () Bool)

(assert (=> b!7381285 (= e!4418343 (Cons!71698 (h!78146 (exprs!8766 ct1!282)) (++!17142 (t!386313 (exprs!8766 ct1!282)) (exprs!8766 ct2!378))))))

(declare-fun b!7381284 () Bool)

(assert (=> b!7381284 (= e!4418343 (exprs!8766 ct2!378))))

(declare-fun b!7381286 () Bool)

(declare-fun res!2977135 () Bool)

(assert (=> b!7381286 (=> (not res!2977135) (not e!4418342))))

(declare-fun size!42163 (List!71822) Int)

(assert (=> b!7381286 (= res!2977135 (= (size!42163 lt!2616950) (+ (size!42163 (exprs!8766 ct1!282)) (size!42163 (exprs!8766 ct2!378)))))))

(declare-fun b!7381287 () Bool)

(assert (=> b!7381287 (= e!4418342 (or (not (= (exprs!8766 ct2!378) Nil!71698)) (= lt!2616950 (exprs!8766 ct1!282))))))

(assert (= (and d!2285630 c!1371959) b!7381284))

(assert (= (and d!2285630 (not c!1371959)) b!7381285))

(assert (= (and d!2285630 res!2977136) b!7381286))

(assert (= (and b!7381286 res!2977135) b!7381287))

(declare-fun m!8031108 () Bool)

(assert (=> d!2285630 m!8031108))

(declare-fun m!8031110 () Bool)

(assert (=> d!2285630 m!8031110))

(declare-fun m!8031112 () Bool)

(assert (=> d!2285630 m!8031112))

(declare-fun m!8031114 () Bool)

(assert (=> b!7381285 m!8031114))

(declare-fun m!8031116 () Bool)

(assert (=> b!7381286 m!8031116))

(declare-fun m!8031118 () Bool)

(assert (=> b!7381286 m!8031118))

(declare-fun m!8031120 () Bool)

(assert (=> b!7381286 m!8031120))

(assert (=> b!7381033 d!2285630))

(declare-fun d!2285634 () Bool)

(assert (=> d!2285634 (forall!18112 (++!17142 (exprs!8766 ct1!282) (exprs!8766 ct2!378)) lambda!458544)))

(declare-fun lt!2616953 () Unit!165601)

(declare-fun choose!57344 (List!71822 List!71822 Int) Unit!165601)

(assert (=> d!2285634 (= lt!2616953 (choose!57344 (exprs!8766 ct1!282) (exprs!8766 ct2!378) lambda!458544))))

(assert (=> d!2285634 (forall!18112 (exprs!8766 ct1!282) lambda!458544)))

(assert (=> d!2285634 (= (lemmaConcatPreservesForall!1999 (exprs!8766 ct1!282) (exprs!8766 ct2!378) lambda!458544) lt!2616953)))

(declare-fun bs!1921596 () Bool)

(assert (= bs!1921596 d!2285634))

(assert (=> bs!1921596 m!8030998))

(assert (=> bs!1921596 m!8030998))

(declare-fun m!8031122 () Bool)

(assert (=> bs!1921596 m!8031122))

(declare-fun m!8031124 () Bool)

(assert (=> bs!1921596 m!8031124))

(declare-fun m!8031126 () Bool)

(assert (=> bs!1921596 m!8031126))

(assert (=> b!7381033 d!2285634))

(declare-fun b!7381292 () Bool)

(declare-fun c!1371961 () Bool)

(assert (=> b!7381292 (= c!1371961 (is-Star!19326 (reg!19655 r1!2370)))))

(declare-fun e!4418348 () (Set Context!16532))

(declare-fun e!4418346 () (Set Context!16532))

(assert (=> b!7381292 (= e!4418348 e!4418346)))

(declare-fun call!679122 () (Set Context!16532))

(declare-fun c!1371962 () Bool)

(declare-fun c!1371964 () Bool)

(declare-fun call!679126 () List!71822)

(declare-fun bm!679116 () Bool)

(declare-fun c!1371963 () Bool)

(assert (=> bm!679116 (= call!679122 (derivationStepZipperDown!3152 (ite c!1371962 (regTwo!39165 (reg!19655 r1!2370)) (ite c!1371963 (regTwo!39164 (reg!19655 r1!2370)) (ite c!1371964 (regOne!39164 (reg!19655 r1!2370)) (reg!19655 (reg!19655 r1!2370))))) (ite (or c!1371962 c!1371963) (Context!16533 ($colon$colon!3304 (exprs!8766 ct1!282) lt!2616927)) (Context!16533 call!679126)) c!10362))))

(declare-fun bm!679117 () Bool)

(declare-fun call!679121 () (Set Context!16532))

(declare-fun call!679125 () (Set Context!16532))

(assert (=> bm!679117 (= call!679121 call!679125)))

(declare-fun b!7381293 () Bool)

(assert (=> b!7381293 (= e!4418346 call!679121)))

(declare-fun b!7381294 () Bool)

(declare-fun e!4418349 () (Set Context!16532))

(declare-fun e!4418350 () (Set Context!16532))

(assert (=> b!7381294 (= e!4418349 e!4418350)))

(assert (=> b!7381294 (= c!1371962 (is-Union!19326 (reg!19655 r1!2370)))))

(declare-fun b!7381295 () Bool)

(declare-fun e!4418351 () (Set Context!16532))

(declare-fun call!679123 () (Set Context!16532))

(assert (=> b!7381295 (= e!4418351 (set.union call!679123 call!679125))))

(declare-fun bm!679118 () Bool)

(declare-fun call!679124 () List!71822)

(assert (=> bm!679118 (= call!679126 call!679124)))

(declare-fun b!7381297 () Bool)

(declare-fun e!4418347 () Bool)

(assert (=> b!7381297 (= e!4418347 (nullable!8400 (regOne!39164 (reg!19655 r1!2370))))))

(declare-fun b!7381298 () Bool)

(assert (=> b!7381298 (= e!4418349 (set.insert (Context!16533 ($colon$colon!3304 (exprs!8766 ct1!282) lt!2616927)) (as set.empty (Set Context!16532))))))

(declare-fun b!7381300 () Bool)

(assert (=> b!7381300 (= e!4418348 call!679121)))

(declare-fun b!7381301 () Bool)

(assert (=> b!7381301 (= e!4418346 (as set.empty (Set Context!16532)))))

(declare-fun bm!679119 () Bool)

(assert (=> bm!679119 (= call!679125 call!679122)))

(declare-fun d!2285636 () Bool)

(declare-fun c!1371960 () Bool)

(assert (=> d!2285636 (= c!1371960 (and (is-ElementMatch!19326 (reg!19655 r1!2370)) (= (c!1371882 (reg!19655 r1!2370)) c!10362)))))

(assert (=> d!2285636 (= (derivationStepZipperDown!3152 (reg!19655 r1!2370) (Context!16533 ($colon$colon!3304 (exprs!8766 ct1!282) lt!2616927)) c!10362) e!4418349)))

(declare-fun bm!679120 () Bool)

(assert (=> bm!679120 (= call!679123 (derivationStepZipperDown!3152 (ite c!1371962 (regOne!39165 (reg!19655 r1!2370)) (regOne!39164 (reg!19655 r1!2370))) (ite c!1371962 (Context!16533 ($colon$colon!3304 (exprs!8766 ct1!282) lt!2616927)) (Context!16533 call!679124)) c!10362))))

(declare-fun b!7381302 () Bool)

(assert (=> b!7381302 (= e!4418351 e!4418348)))

(assert (=> b!7381302 (= c!1371964 (is-Concat!28171 (reg!19655 r1!2370)))))

(declare-fun bm!679121 () Bool)

(assert (=> bm!679121 (= call!679124 ($colon$colon!3304 (exprs!8766 (Context!16533 ($colon$colon!3304 (exprs!8766 ct1!282) lt!2616927))) (ite (or c!1371963 c!1371964) (regTwo!39164 (reg!19655 r1!2370)) (reg!19655 r1!2370))))))

(declare-fun b!7381303 () Bool)

(assert (=> b!7381303 (= e!4418350 (set.union call!679123 call!679122))))

(declare-fun b!7381304 () Bool)

(assert (=> b!7381304 (= c!1371963 e!4418347)))

(declare-fun res!2977139 () Bool)

(assert (=> b!7381304 (=> (not res!2977139) (not e!4418347))))

(assert (=> b!7381304 (= res!2977139 (is-Concat!28171 (reg!19655 r1!2370)))))

(assert (=> b!7381304 (= e!4418350 e!4418351)))

(assert (= (and d!2285636 c!1371960) b!7381298))

(assert (= (and d!2285636 (not c!1371960)) b!7381294))

(assert (= (and b!7381294 c!1371962) b!7381303))

(assert (= (and b!7381294 (not c!1371962)) b!7381304))

(assert (= (and b!7381304 res!2977139) b!7381297))

(assert (= (and b!7381304 c!1371963) b!7381295))

(assert (= (and b!7381304 (not c!1371963)) b!7381302))

(assert (= (and b!7381302 c!1371964) b!7381300))

(assert (= (and b!7381302 (not c!1371964)) b!7381292))

(assert (= (and b!7381292 c!1371961) b!7381293))

(assert (= (and b!7381292 (not c!1371961)) b!7381301))

(assert (= (or b!7381300 b!7381293) bm!679118))

(assert (= (or b!7381300 b!7381293) bm!679117))

(assert (= (or b!7381295 bm!679117) bm!679119))

(assert (= (or b!7381295 bm!679118) bm!679121))

(assert (= (or b!7381303 bm!679119) bm!679116))

(assert (= (or b!7381303 b!7381295) bm!679120))

(declare-fun m!8031128 () Bool)

(assert (=> bm!679121 m!8031128))

(declare-fun m!8031130 () Bool)

(assert (=> bm!679116 m!8031130))

(declare-fun m!8031132 () Bool)

(assert (=> b!7381298 m!8031132))

(declare-fun m!8031134 () Bool)

(assert (=> bm!679120 m!8031134))

(declare-fun m!8031136 () Bool)

(assert (=> b!7381297 m!8031136))

(assert (=> b!7381022 d!2285636))

(declare-fun d!2285638 () Bool)

(assert (=> d!2285638 (= ($colon$colon!3304 (exprs!8766 ct1!282) lt!2616927) (Cons!71698 lt!2616927 (exprs!8766 ct1!282)))))

(assert (=> b!7381022 d!2285638))

(declare-fun b!7381321 () Bool)

(declare-fun e!4418366 () Bool)

(declare-fun tp!2099546 () Bool)

(declare-fun tp!2099547 () Bool)

(assert (=> b!7381321 (= e!4418366 (and tp!2099546 tp!2099547))))

(assert (=> b!7381023 (= tp!2099511 e!4418366)))

(assert (= (and b!7381023 (is-Cons!71698 (exprs!8766 cWitness!61))) b!7381321))

(declare-fun b!7381333 () Bool)

(declare-fun e!4418369 () Bool)

(declare-fun tp!2099560 () Bool)

(declare-fun tp!2099558 () Bool)

(assert (=> b!7381333 (= e!4418369 (and tp!2099560 tp!2099558))))

(declare-fun b!7381334 () Bool)

(declare-fun tp!2099561 () Bool)

(assert (=> b!7381334 (= e!4418369 tp!2099561)))

(declare-fun b!7381335 () Bool)

(declare-fun tp!2099559 () Bool)

(declare-fun tp!2099562 () Bool)

(assert (=> b!7381335 (= e!4418369 (and tp!2099559 tp!2099562))))

(assert (=> b!7381030 (= tp!2099517 e!4418369)))

(declare-fun b!7381332 () Bool)

(assert (=> b!7381332 (= e!4418369 tp_is_empty!48897)))

(assert (= (and b!7381030 (is-ElementMatch!19326 (regOne!39164 r1!2370))) b!7381332))

(assert (= (and b!7381030 (is-Concat!28171 (regOne!39164 r1!2370))) b!7381333))

(assert (= (and b!7381030 (is-Star!19326 (regOne!39164 r1!2370))) b!7381334))

(assert (= (and b!7381030 (is-Union!19326 (regOne!39164 r1!2370))) b!7381335))

(declare-fun b!7381337 () Bool)

(declare-fun e!4418370 () Bool)

(declare-fun tp!2099565 () Bool)

(declare-fun tp!2099563 () Bool)

(assert (=> b!7381337 (= e!4418370 (and tp!2099565 tp!2099563))))

(declare-fun b!7381338 () Bool)

(declare-fun tp!2099566 () Bool)

(assert (=> b!7381338 (= e!4418370 tp!2099566)))

(declare-fun b!7381339 () Bool)

(declare-fun tp!2099564 () Bool)

(declare-fun tp!2099567 () Bool)

(assert (=> b!7381339 (= e!4418370 (and tp!2099564 tp!2099567))))

(assert (=> b!7381030 (= tp!2099516 e!4418370)))

(declare-fun b!7381336 () Bool)

(assert (=> b!7381336 (= e!4418370 tp_is_empty!48897)))

(assert (= (and b!7381030 (is-ElementMatch!19326 (regTwo!39164 r1!2370))) b!7381336))

(assert (= (and b!7381030 (is-Concat!28171 (regTwo!39164 r1!2370))) b!7381337))

(assert (= (and b!7381030 (is-Star!19326 (regTwo!39164 r1!2370))) b!7381338))

(assert (= (and b!7381030 (is-Union!19326 (regTwo!39164 r1!2370))) b!7381339))

(declare-fun b!7381340 () Bool)

(declare-fun e!4418371 () Bool)

(declare-fun tp!2099568 () Bool)

(declare-fun tp!2099569 () Bool)

(assert (=> b!7381340 (= e!4418371 (and tp!2099568 tp!2099569))))

(assert (=> b!7381024 (= tp!2099513 e!4418371)))

(assert (= (and b!7381024 (is-Cons!71698 (exprs!8766 ct1!282))) b!7381340))

(declare-fun b!7381342 () Bool)

(declare-fun e!4418372 () Bool)

(declare-fun tp!2099572 () Bool)

(declare-fun tp!2099570 () Bool)

(assert (=> b!7381342 (= e!4418372 (and tp!2099572 tp!2099570))))

(declare-fun b!7381343 () Bool)

(declare-fun tp!2099573 () Bool)

(assert (=> b!7381343 (= e!4418372 tp!2099573)))

(declare-fun b!7381344 () Bool)

(declare-fun tp!2099571 () Bool)

(declare-fun tp!2099574 () Bool)

(assert (=> b!7381344 (= e!4418372 (and tp!2099571 tp!2099574))))

(assert (=> b!7381020 (= tp!2099510 e!4418372)))

(declare-fun b!7381341 () Bool)

(assert (=> b!7381341 (= e!4418372 tp_is_empty!48897)))

(assert (= (and b!7381020 (is-ElementMatch!19326 (regOne!39165 r1!2370))) b!7381341))

(assert (= (and b!7381020 (is-Concat!28171 (regOne!39165 r1!2370))) b!7381342))

(assert (= (and b!7381020 (is-Star!19326 (regOne!39165 r1!2370))) b!7381343))

(assert (= (and b!7381020 (is-Union!19326 (regOne!39165 r1!2370))) b!7381344))

(declare-fun b!7381346 () Bool)

(declare-fun e!4418373 () Bool)

(declare-fun tp!2099577 () Bool)

(declare-fun tp!2099575 () Bool)

(assert (=> b!7381346 (= e!4418373 (and tp!2099577 tp!2099575))))

(declare-fun b!7381347 () Bool)

(declare-fun tp!2099578 () Bool)

(assert (=> b!7381347 (= e!4418373 tp!2099578)))

(declare-fun b!7381348 () Bool)

(declare-fun tp!2099576 () Bool)

(declare-fun tp!2099579 () Bool)

(assert (=> b!7381348 (= e!4418373 (and tp!2099576 tp!2099579))))

(assert (=> b!7381020 (= tp!2099515 e!4418373)))

(declare-fun b!7381345 () Bool)

(assert (=> b!7381345 (= e!4418373 tp_is_empty!48897)))

(assert (= (and b!7381020 (is-ElementMatch!19326 (regTwo!39165 r1!2370))) b!7381345))

(assert (= (and b!7381020 (is-Concat!28171 (regTwo!39165 r1!2370))) b!7381346))

(assert (= (and b!7381020 (is-Star!19326 (regTwo!39165 r1!2370))) b!7381347))

(assert (= (and b!7381020 (is-Union!19326 (regTwo!39165 r1!2370))) b!7381348))

(declare-fun b!7381350 () Bool)

(declare-fun e!4418374 () Bool)

(declare-fun tp!2099582 () Bool)

(declare-fun tp!2099580 () Bool)

(assert (=> b!7381350 (= e!4418374 (and tp!2099582 tp!2099580))))

(declare-fun b!7381351 () Bool)

(declare-fun tp!2099583 () Bool)

(assert (=> b!7381351 (= e!4418374 tp!2099583)))

(declare-fun b!7381352 () Bool)

(declare-fun tp!2099581 () Bool)

(declare-fun tp!2099584 () Bool)

(assert (=> b!7381352 (= e!4418374 (and tp!2099581 tp!2099584))))

(assert (=> b!7381027 (= tp!2099512 e!4418374)))

(declare-fun b!7381349 () Bool)

(assert (=> b!7381349 (= e!4418374 tp_is_empty!48897)))

(assert (= (and b!7381027 (is-ElementMatch!19326 (reg!19655 r1!2370))) b!7381349))

(assert (= (and b!7381027 (is-Concat!28171 (reg!19655 r1!2370))) b!7381350))

(assert (= (and b!7381027 (is-Star!19326 (reg!19655 r1!2370))) b!7381351))

(assert (= (and b!7381027 (is-Union!19326 (reg!19655 r1!2370))) b!7381352))

(declare-fun b!7381353 () Bool)

(declare-fun e!4418375 () Bool)

(declare-fun tp!2099585 () Bool)

(declare-fun tp!2099586 () Bool)

(assert (=> b!7381353 (= e!4418375 (and tp!2099585 tp!2099586))))

(assert (=> b!7381032 (= tp!2099514 e!4418375)))

(assert (= (and b!7381032 (is-Cons!71698 (exprs!8766 ct2!378))) b!7381353))

(push 1)

(assert (not bm!679116))

(assert (not b!7381297))

(assert (not d!2285618))

(assert (not b!7381108))

(assert (not b!7381247))

(assert (not b!7381321))

(assert (not bm!679042))

(assert (not b!7381339))

(assert (not b!7381333))

(assert (not b!7381346))

(assert (not d!2285614))

(assert (not d!2285616))

(assert (not b!7381351))

(assert (not b!7381340))

(assert (not b!7381347))

(assert (not d!2285612))

(assert (not bm!679071))

(assert (not b!7381344))

(assert (not bm!679065))

(assert (not b!7381338))

(assert (not bm!679103))

(assert (not b!7381117))

(assert (not bm!679041))

(assert (not b!7381334))

(assert (not b!7381352))

(assert (not b!7381337))

(assert (not bm!679120))

(assert (not b!7381126))

(assert (not b!7381348))

(assert (not bm!679102))

(assert (not bm!679077))

(assert (not b!7381353))

(assert (not bm!679038))

(assert (not d!2285634))

(assert (not bm!679104))

(assert (not bm!679098))

(assert (not bm!679045))

(assert (not b!7381335))

(assert (not bm!679064))

(assert (not bm!679044))

(assert (not b!7381285))

(assert tp_is_empty!48897)

(assert (not b!7381350))

(assert (not b!7381258))

(assert (not bm!679066))

(assert (not bm!679121))

(assert (not b!7381343))

(assert (not bm!679109))

(assert (not b!7381342))

(assert (not bm!679108))

(assert (not bm!679074))

(assert (not bm!679063))

(assert (not d!2285630))

(assert (not bm!679076))

(assert (not bm!679075))

(assert (not bm!679060))

(assert (not b!7381286))

(assert (not bm!679039))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

