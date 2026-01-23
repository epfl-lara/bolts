; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!739470 () Bool)

(assert start!739470)

(declare-fun b!7762020 () Bool)

(declare-fun e!4600058 () Bool)

(declare-fun tp!2279628 () Bool)

(assert (=> b!7762020 (= e!4600058 tp!2279628)))

(declare-fun b!7762021 () Bool)

(declare-fun e!4600057 () Bool)

(declare-fun tp!2279627 () Bool)

(declare-fun tp!2279625 () Bool)

(assert (=> b!7762021 (= e!4600057 (and tp!2279627 tp!2279625))))

(declare-fun b!7762022 () Bool)

(declare-fun e!4600056 () Bool)

(declare-fun e!4600055 () Bool)

(assert (=> b!7762022 (= e!4600056 e!4600055)))

(declare-fun res!3094402 () Bool)

(assert (=> b!7762022 (=> (not res!3094402) (not e!4600055))))

(declare-datatypes ((C!41730 0))(
  ( (C!41731 (val!31305 Int)) )
))
(declare-datatypes ((List!73545 0))(
  ( (Nil!73421) (Cons!73421 (h!79869 C!41730) (t!388280 List!73545)) )
))
(declare-datatypes ((tuple2!69790 0))(
  ( (tuple2!69791 (_1!38198 List!73545) (_2!38198 List!73545)) )
))
(declare-datatypes ((Option!17689 0))(
  ( (None!17688) (Some!17688 (v!54823 tuple2!69790)) )
))
(declare-fun lt!2670447 () Option!17689)

(declare-fun isDefined!14301 (Option!17689) Bool)

(assert (=> b!7762022 (= res!3094402 (not (isDefined!14301 lt!2670447)))))

(declare-datatypes ((Regex!20702 0))(
  ( (ElementMatch!20702 (c!1430869 C!41730)) (Concat!29547 (regOne!41916 Regex!20702) (regTwo!41916 Regex!20702)) (EmptyExpr!20702) (Star!20702 (reg!21031 Regex!20702)) (EmptyLang!20702) (Union!20702 (regOne!41917 Regex!20702) (regTwo!41917 Regex!20702)) )
))
(declare-fun r1!3330 () Regex!20702)

(declare-fun r2!3230 () Regex!20702)

(declare-fun s!10216 () List!73545)

(declare-fun findConcatSeparation!3719 (Regex!20702 Regex!20702 List!73545 List!73545 List!73545) Option!17689)

(assert (=> b!7762022 (= lt!2670447 (findConcatSeparation!3719 r1!3330 r2!3230 Nil!73421 s!10216 s!10216))))

(declare-fun b!7762023 () Bool)

(declare-fun tp!2279621 () Bool)

(assert (=> b!7762023 (= e!4600057 tp!2279621)))

(declare-fun b!7762024 () Bool)

(declare-fun tp_is_empty!51759 () Bool)

(assert (=> b!7762024 (= e!4600057 tp_is_empty!51759)))

(declare-fun b!7762025 () Bool)

(declare-fun tp!2279620 () Bool)

(declare-fun tp!2279624 () Bool)

(assert (=> b!7762025 (= e!4600057 (and tp!2279620 tp!2279624))))

(declare-fun b!7762026 () Bool)

(declare-fun tp!2279619 () Bool)

(declare-fun tp!2279623 () Bool)

(assert (=> b!7762026 (= e!4600058 (and tp!2279619 tp!2279623))))

(declare-fun b!7762027 () Bool)

(declare-fun res!3094401 () Bool)

(assert (=> b!7762027 (=> (not res!3094401) (not e!4600056))))

(declare-fun validRegex!11118 (Regex!20702) Bool)

(assert (=> b!7762027 (= res!3094401 (validRegex!11118 r2!3230))))

(declare-fun b!7762028 () Bool)

(declare-fun e!4600054 () Bool)

(declare-fun tp!2279626 () Bool)

(assert (=> b!7762028 (= e!4600054 (and tp_is_empty!51759 tp!2279626))))

(declare-fun b!7762029 () Bool)

(declare-fun isEmpty!42089 (Option!17689) Bool)

(assert (=> b!7762029 (= e!4600055 (not (isEmpty!42089 lt!2670447)))))

(declare-fun res!3094403 () Bool)

(assert (=> start!739470 (=> (not res!3094403) (not e!4600056))))

(assert (=> start!739470 (= res!3094403 (validRegex!11118 r1!3330))))

(assert (=> start!739470 e!4600056))

(assert (=> start!739470 e!4600057))

(assert (=> start!739470 e!4600058))

(assert (=> start!739470 e!4600054))

(declare-fun b!7762030 () Bool)

(declare-fun tp!2279622 () Bool)

(declare-fun tp!2279618 () Bool)

(assert (=> b!7762030 (= e!4600058 (and tp!2279622 tp!2279618))))

(declare-fun b!7762031 () Bool)

(assert (=> b!7762031 (= e!4600058 tp_is_empty!51759)))

(assert (= (and start!739470 res!3094403) b!7762027))

(assert (= (and b!7762027 res!3094401) b!7762022))

(assert (= (and b!7762022 res!3094402) b!7762029))

(assert (= (and start!739470 (is-ElementMatch!20702 r1!3330)) b!7762024))

(assert (= (and start!739470 (is-Concat!29547 r1!3330)) b!7762025))

(assert (= (and start!739470 (is-Star!20702 r1!3330)) b!7762023))

(assert (= (and start!739470 (is-Union!20702 r1!3330)) b!7762021))

(assert (= (and start!739470 (is-ElementMatch!20702 r2!3230)) b!7762031))

(assert (= (and start!739470 (is-Concat!29547 r2!3230)) b!7762030))

(assert (= (and start!739470 (is-Star!20702 r2!3230)) b!7762020))

(assert (= (and start!739470 (is-Union!20702 r2!3230)) b!7762026))

(assert (= (and start!739470 (is-Cons!73421 s!10216)) b!7762028))

(declare-fun m!8221090 () Bool)

(assert (=> b!7762022 m!8221090))

(declare-fun m!8221092 () Bool)

(assert (=> b!7762022 m!8221092))

(declare-fun m!8221094 () Bool)

(assert (=> b!7762027 m!8221094))

(declare-fun m!8221096 () Bool)

(assert (=> b!7762029 m!8221096))

(declare-fun m!8221098 () Bool)

(assert (=> start!739470 m!8221098))

(push 1)

(assert (not b!7762027))

(assert (not b!7762022))

(assert tp_is_empty!51759)

(assert (not b!7762020))

(assert (not b!7762023))

(assert (not b!7762025))

(assert (not b!7762028))

(assert (not b!7762029))

(assert (not b!7762026))

(assert (not b!7762030))

(assert (not start!739470))

(assert (not b!7762021))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2343625 () Bool)

(assert (=> d!2343625 (= (isDefined!14301 lt!2670447) (not (isEmpty!42089 lt!2670447)))))

(declare-fun bs!1965963 () Bool)

(assert (= bs!1965963 d!2343625))

(assert (=> bs!1965963 m!8221096))

(assert (=> b!7762022 d!2343625))

(declare-fun b!7762122 () Bool)

(declare-fun e!4600114 () Bool)

(declare-fun lt!2670458 () Option!17689)

(declare-fun ++!17877 (List!73545 List!73545) List!73545)

(declare-fun get!26184 (Option!17689) tuple2!69790)

(assert (=> b!7762122 (= e!4600114 (= (++!17877 (_1!38198 (get!26184 lt!2670458)) (_2!38198 (get!26184 lt!2670458))) s!10216))))

(declare-fun b!7762123 () Bool)

(declare-fun e!4600113 () Option!17689)

(assert (=> b!7762123 (= e!4600113 None!17688)))

(declare-fun b!7762124 () Bool)

(declare-fun e!4600112 () Bool)

(assert (=> b!7762124 (= e!4600112 (not (isDefined!14301 lt!2670458)))))

(declare-fun b!7762125 () Bool)

(declare-datatypes ((Unit!168394 0))(
  ( (Unit!168395) )
))
(declare-fun lt!2670459 () Unit!168394)

(declare-fun lt!2670457 () Unit!168394)

(assert (=> b!7762125 (= lt!2670459 lt!2670457)))

(assert (=> b!7762125 (= (++!17877 (++!17877 Nil!73421 (Cons!73421 (h!79869 s!10216) Nil!73421)) (t!388280 s!10216)) s!10216)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3363 (List!73545 C!41730 List!73545 List!73545) Unit!168394)

(assert (=> b!7762125 (= lt!2670457 (lemmaMoveElementToOtherListKeepsConcatEq!3363 Nil!73421 (h!79869 s!10216) (t!388280 s!10216) s!10216))))

(assert (=> b!7762125 (= e!4600113 (findConcatSeparation!3719 r1!3330 r2!3230 (++!17877 Nil!73421 (Cons!73421 (h!79869 s!10216) Nil!73421)) (t!388280 s!10216) s!10216))))

(declare-fun b!7762126 () Bool)

(declare-fun e!4600116 () Bool)

(declare-fun matchR!10168 (Regex!20702 List!73545) Bool)

(assert (=> b!7762126 (= e!4600116 (matchR!10168 r2!3230 s!10216))))

(declare-fun d!2343627 () Bool)

(assert (=> d!2343627 e!4600112))

(declare-fun res!3094444 () Bool)

(assert (=> d!2343627 (=> res!3094444 e!4600112)))

(assert (=> d!2343627 (= res!3094444 e!4600114)))

(declare-fun res!3094443 () Bool)

(assert (=> d!2343627 (=> (not res!3094443) (not e!4600114))))

(assert (=> d!2343627 (= res!3094443 (isDefined!14301 lt!2670458))))

(declare-fun e!4600115 () Option!17689)

(assert (=> d!2343627 (= lt!2670458 e!4600115)))

(declare-fun c!1430884 () Bool)

(assert (=> d!2343627 (= c!1430884 e!4600116)))

(declare-fun res!3094446 () Bool)

(assert (=> d!2343627 (=> (not res!3094446) (not e!4600116))))

(assert (=> d!2343627 (= res!3094446 (matchR!10168 r1!3330 Nil!73421))))

(assert (=> d!2343627 (validRegex!11118 r1!3330)))

(assert (=> d!2343627 (= (findConcatSeparation!3719 r1!3330 r2!3230 Nil!73421 s!10216 s!10216) lt!2670458)))

(declare-fun b!7762127 () Bool)

(assert (=> b!7762127 (= e!4600115 (Some!17688 (tuple2!69791 Nil!73421 s!10216)))))

(declare-fun b!7762128 () Bool)

(declare-fun res!3094445 () Bool)

(assert (=> b!7762128 (=> (not res!3094445) (not e!4600114))))

(assert (=> b!7762128 (= res!3094445 (matchR!10168 r1!3330 (_1!38198 (get!26184 lt!2670458))))))

(declare-fun b!7762129 () Bool)

(declare-fun res!3094447 () Bool)

(assert (=> b!7762129 (=> (not res!3094447) (not e!4600114))))

(assert (=> b!7762129 (= res!3094447 (matchR!10168 r2!3230 (_2!38198 (get!26184 lt!2670458))))))

(declare-fun b!7762130 () Bool)

(assert (=> b!7762130 (= e!4600115 e!4600113)))

(declare-fun c!1430883 () Bool)

(assert (=> b!7762130 (= c!1430883 (is-Nil!73421 s!10216))))

(assert (= (and d!2343627 res!3094446) b!7762126))

(assert (= (and d!2343627 c!1430884) b!7762127))

(assert (= (and d!2343627 (not c!1430884)) b!7762130))

(assert (= (and b!7762130 c!1430883) b!7762123))

(assert (= (and b!7762130 (not c!1430883)) b!7762125))

(assert (= (and d!2343627 res!3094443) b!7762128))

(assert (= (and b!7762128 res!3094445) b!7762129))

(assert (= (and b!7762129 res!3094447) b!7762122))

(assert (= (and d!2343627 (not res!3094444)) b!7762124))

(declare-fun m!8221122 () Bool)

(assert (=> b!7762128 m!8221122))

(declare-fun m!8221124 () Bool)

(assert (=> b!7762128 m!8221124))

(declare-fun m!8221126 () Bool)

(assert (=> b!7762126 m!8221126))

(assert (=> b!7762122 m!8221122))

(declare-fun m!8221128 () Bool)

(assert (=> b!7762122 m!8221128))

(declare-fun m!8221130 () Bool)

(assert (=> b!7762125 m!8221130))

(assert (=> b!7762125 m!8221130))

(declare-fun m!8221132 () Bool)

(assert (=> b!7762125 m!8221132))

(declare-fun m!8221134 () Bool)

(assert (=> b!7762125 m!8221134))

(assert (=> b!7762125 m!8221130))

(declare-fun m!8221136 () Bool)

(assert (=> b!7762125 m!8221136))

(assert (=> b!7762129 m!8221122))

(declare-fun m!8221138 () Bool)

(assert (=> b!7762129 m!8221138))

(declare-fun m!8221140 () Bool)

(assert (=> b!7762124 m!8221140))

(assert (=> d!2343627 m!8221140))

(declare-fun m!8221142 () Bool)

(assert (=> d!2343627 m!8221142))

(assert (=> d!2343627 m!8221098))

(assert (=> b!7762022 d!2343627))

(declare-fun c!1430889 () Bool)

(declare-fun c!1430890 () Bool)

(declare-fun bm!719228 () Bool)

(declare-fun call!719233 () Bool)

(assert (=> bm!719228 (= call!719233 (validRegex!11118 (ite c!1430889 (reg!21031 r2!3230) (ite c!1430890 (regTwo!41917 r2!3230) (regTwo!41916 r2!3230)))))))

(declare-fun b!7762150 () Bool)

(declare-fun e!4600134 () Bool)

(declare-fun e!4600135 () Bool)

(assert (=> b!7762150 (= e!4600134 e!4600135)))

(assert (=> b!7762150 (= c!1430889 (is-Star!20702 r2!3230))))

(declare-fun b!7762151 () Bool)

(declare-fun e!4600133 () Bool)

(declare-fun call!719235 () Bool)

(assert (=> b!7762151 (= e!4600133 call!719235)))

(declare-fun b!7762152 () Bool)

(declare-fun e!4600136 () Bool)

(assert (=> b!7762152 (= e!4600136 call!719233)))

(declare-fun b!7762153 () Bool)

(declare-fun res!3094460 () Bool)

(assert (=> b!7762153 (=> (not res!3094460) (not e!4600133))))

(declare-fun call!719234 () Bool)

(assert (=> b!7762153 (= res!3094460 call!719234)))

(declare-fun e!4600131 () Bool)

(assert (=> b!7762153 (= e!4600131 e!4600133)))

(declare-fun bm!719229 () Bool)

(assert (=> bm!719229 (= call!719234 (validRegex!11118 (ite c!1430890 (regOne!41917 r2!3230) (regOne!41916 r2!3230))))))

(declare-fun b!7762154 () Bool)

(declare-fun e!4600137 () Bool)

(assert (=> b!7762154 (= e!4600137 call!719235)))

(declare-fun b!7762149 () Bool)

(assert (=> b!7762149 (= e!4600135 e!4600131)))

(assert (=> b!7762149 (= c!1430890 (is-Union!20702 r2!3230))))

(declare-fun d!2343637 () Bool)

(declare-fun res!3094459 () Bool)

(assert (=> d!2343637 (=> res!3094459 e!4600134)))

(assert (=> d!2343637 (= res!3094459 (is-ElementMatch!20702 r2!3230))))

(assert (=> d!2343637 (= (validRegex!11118 r2!3230) e!4600134)))

(declare-fun b!7762155 () Bool)

(assert (=> b!7762155 (= e!4600135 e!4600136)))

(declare-fun res!3094458 () Bool)

(declare-fun nullable!9112 (Regex!20702) Bool)

(assert (=> b!7762155 (= res!3094458 (not (nullable!9112 (reg!21031 r2!3230))))))

(assert (=> b!7762155 (=> (not res!3094458) (not e!4600136))))

(declare-fun b!7762156 () Bool)

(declare-fun res!3094462 () Bool)

(declare-fun e!4600132 () Bool)

(assert (=> b!7762156 (=> res!3094462 e!4600132)))

(assert (=> b!7762156 (= res!3094462 (not (is-Concat!29547 r2!3230)))))

(assert (=> b!7762156 (= e!4600131 e!4600132)))

(declare-fun b!7762157 () Bool)

(assert (=> b!7762157 (= e!4600132 e!4600137)))

(declare-fun res!3094461 () Bool)

(assert (=> b!7762157 (=> (not res!3094461) (not e!4600137))))

(assert (=> b!7762157 (= res!3094461 call!719234)))

(declare-fun bm!719230 () Bool)

(assert (=> bm!719230 (= call!719235 call!719233)))

(assert (= (and d!2343637 (not res!3094459)) b!7762150))

(assert (= (and b!7762150 c!1430889) b!7762155))

(assert (= (and b!7762150 (not c!1430889)) b!7762149))

(assert (= (and b!7762155 res!3094458) b!7762152))

(assert (= (and b!7762149 c!1430890) b!7762153))

(assert (= (and b!7762149 (not c!1430890)) b!7762156))

(assert (= (and b!7762153 res!3094460) b!7762151))

(assert (= (and b!7762156 (not res!3094462)) b!7762157))

(assert (= (and b!7762157 res!3094461) b!7762154))

(assert (= (or b!7762153 b!7762157) bm!719229))

(assert (= (or b!7762151 b!7762154) bm!719230))

(assert (= (or b!7762152 bm!719230) bm!719228))

(declare-fun m!8221144 () Bool)

(assert (=> bm!719228 m!8221144))

(declare-fun m!8221146 () Bool)

(assert (=> bm!719229 m!8221146))

(declare-fun m!8221148 () Bool)

(assert (=> b!7762155 m!8221148))

(assert (=> b!7762027 d!2343637))

(declare-fun d!2343639 () Bool)

(assert (=> d!2343639 (= (isEmpty!42089 lt!2670447) (not (is-Some!17688 lt!2670447)))))

(assert (=> b!7762029 d!2343639))

(declare-fun bm!719231 () Bool)

(declare-fun c!1430891 () Bool)

(declare-fun c!1430892 () Bool)

(declare-fun call!719236 () Bool)

(assert (=> bm!719231 (= call!719236 (validRegex!11118 (ite c!1430891 (reg!21031 r1!3330) (ite c!1430892 (regTwo!41917 r1!3330) (regTwo!41916 r1!3330)))))))

(declare-fun b!7762159 () Bool)

(declare-fun e!4600141 () Bool)

(declare-fun e!4600142 () Bool)

(assert (=> b!7762159 (= e!4600141 e!4600142)))

(assert (=> b!7762159 (= c!1430891 (is-Star!20702 r1!3330))))

(declare-fun b!7762160 () Bool)

(declare-fun e!4600140 () Bool)

(declare-fun call!719238 () Bool)

(assert (=> b!7762160 (= e!4600140 call!719238)))

(declare-fun b!7762161 () Bool)

(declare-fun e!4600143 () Bool)

(assert (=> b!7762161 (= e!4600143 call!719236)))

(declare-fun b!7762162 () Bool)

(declare-fun res!3094465 () Bool)

(assert (=> b!7762162 (=> (not res!3094465) (not e!4600140))))

(declare-fun call!719237 () Bool)

(assert (=> b!7762162 (= res!3094465 call!719237)))

(declare-fun e!4600138 () Bool)

(assert (=> b!7762162 (= e!4600138 e!4600140)))

(declare-fun bm!719232 () Bool)

(assert (=> bm!719232 (= call!719237 (validRegex!11118 (ite c!1430892 (regOne!41917 r1!3330) (regOne!41916 r1!3330))))))

(declare-fun b!7762163 () Bool)

(declare-fun e!4600144 () Bool)

(assert (=> b!7762163 (= e!4600144 call!719238)))

(declare-fun b!7762158 () Bool)

(assert (=> b!7762158 (= e!4600142 e!4600138)))

(assert (=> b!7762158 (= c!1430892 (is-Union!20702 r1!3330))))

(declare-fun d!2343641 () Bool)

(declare-fun res!3094464 () Bool)

(assert (=> d!2343641 (=> res!3094464 e!4600141)))

(assert (=> d!2343641 (= res!3094464 (is-ElementMatch!20702 r1!3330))))

(assert (=> d!2343641 (= (validRegex!11118 r1!3330) e!4600141)))

(declare-fun b!7762164 () Bool)

(assert (=> b!7762164 (= e!4600142 e!4600143)))

(declare-fun res!3094463 () Bool)

(assert (=> b!7762164 (= res!3094463 (not (nullable!9112 (reg!21031 r1!3330))))))

(assert (=> b!7762164 (=> (not res!3094463) (not e!4600143))))

(declare-fun b!7762165 () Bool)

(declare-fun res!3094467 () Bool)

(declare-fun e!4600139 () Bool)

(assert (=> b!7762165 (=> res!3094467 e!4600139)))

(assert (=> b!7762165 (= res!3094467 (not (is-Concat!29547 r1!3330)))))

(assert (=> b!7762165 (= e!4600138 e!4600139)))

(declare-fun b!7762166 () Bool)

(assert (=> b!7762166 (= e!4600139 e!4600144)))

(declare-fun res!3094466 () Bool)

(assert (=> b!7762166 (=> (not res!3094466) (not e!4600144))))

(assert (=> b!7762166 (= res!3094466 call!719237)))

(declare-fun bm!719233 () Bool)

(assert (=> bm!719233 (= call!719238 call!719236)))

(assert (= (and d!2343641 (not res!3094464)) b!7762159))

(assert (= (and b!7762159 c!1430891) b!7762164))

(assert (= (and b!7762159 (not c!1430891)) b!7762158))

(assert (= (and b!7762164 res!3094463) b!7762161))

(assert (= (and b!7762158 c!1430892) b!7762162))

(assert (= (and b!7762158 (not c!1430892)) b!7762165))

(assert (= (and b!7762162 res!3094465) b!7762160))

(assert (= (and b!7762165 (not res!3094467)) b!7762166))

(assert (= (and b!7762166 res!3094466) b!7762163))

(assert (= (or b!7762162 b!7762166) bm!719232))

(assert (= (or b!7762160 b!7762163) bm!719233))

(assert (= (or b!7762161 bm!719233) bm!719231))

(declare-fun m!8221150 () Bool)

(assert (=> bm!719231 m!8221150))

(declare-fun m!8221152 () Bool)

(assert (=> bm!719232 m!8221152))

(declare-fun m!8221154 () Bool)

(assert (=> b!7762164 m!8221154))

(assert (=> start!739470 d!2343641))

(declare-fun b!7762171 () Bool)

(declare-fun e!4600147 () Bool)

(declare-fun tp!2279664 () Bool)

(assert (=> b!7762171 (= e!4600147 (and tp_is_empty!51759 tp!2279664))))

(assert (=> b!7762028 (= tp!2279626 e!4600147)))

(assert (= (and b!7762028 (is-Cons!73421 (t!388280 s!10216))) b!7762171))

(declare-fun b!7762184 () Bool)

(declare-fun e!4600150 () Bool)

(declare-fun tp!2279679 () Bool)

(assert (=> b!7762184 (= e!4600150 tp!2279679)))

(declare-fun b!7762183 () Bool)

(declare-fun tp!2279678 () Bool)

(declare-fun tp!2279676 () Bool)

(assert (=> b!7762183 (= e!4600150 (and tp!2279678 tp!2279676))))

(declare-fun b!7762182 () Bool)

(assert (=> b!7762182 (= e!4600150 tp_is_empty!51759)))

(assert (=> b!7762023 (= tp!2279621 e!4600150)))

(declare-fun b!7762185 () Bool)

(declare-fun tp!2279675 () Bool)

(declare-fun tp!2279677 () Bool)

(assert (=> b!7762185 (= e!4600150 (and tp!2279675 tp!2279677))))

(assert (= (and b!7762023 (is-ElementMatch!20702 (reg!21031 r1!3330))) b!7762182))

(assert (= (and b!7762023 (is-Concat!29547 (reg!21031 r1!3330))) b!7762183))

(assert (= (and b!7762023 (is-Star!20702 (reg!21031 r1!3330))) b!7762184))

(assert (= (and b!7762023 (is-Union!20702 (reg!21031 r1!3330))) b!7762185))

(declare-fun b!7762188 () Bool)

(declare-fun e!4600151 () Bool)

(declare-fun tp!2279684 () Bool)

(assert (=> b!7762188 (= e!4600151 tp!2279684)))

(declare-fun b!7762187 () Bool)

(declare-fun tp!2279683 () Bool)

(declare-fun tp!2279681 () Bool)

(assert (=> b!7762187 (= e!4600151 (and tp!2279683 tp!2279681))))

(declare-fun b!7762186 () Bool)

(assert (=> b!7762186 (= e!4600151 tp_is_empty!51759)))

(assert (=> b!7762026 (= tp!2279619 e!4600151)))

(declare-fun b!7762189 () Bool)

(declare-fun tp!2279680 () Bool)

(declare-fun tp!2279682 () Bool)

(assert (=> b!7762189 (= e!4600151 (and tp!2279680 tp!2279682))))

(assert (= (and b!7762026 (is-ElementMatch!20702 (regOne!41917 r2!3230))) b!7762186))

(assert (= (and b!7762026 (is-Concat!29547 (regOne!41917 r2!3230))) b!7762187))

(assert (= (and b!7762026 (is-Star!20702 (regOne!41917 r2!3230))) b!7762188))

(assert (= (and b!7762026 (is-Union!20702 (regOne!41917 r2!3230))) b!7762189))

(declare-fun b!7762192 () Bool)

(declare-fun e!4600152 () Bool)

(declare-fun tp!2279689 () Bool)

(assert (=> b!7762192 (= e!4600152 tp!2279689)))

(declare-fun b!7762191 () Bool)

(declare-fun tp!2279688 () Bool)

(declare-fun tp!2279686 () Bool)

(assert (=> b!7762191 (= e!4600152 (and tp!2279688 tp!2279686))))

(declare-fun b!7762190 () Bool)

(assert (=> b!7762190 (= e!4600152 tp_is_empty!51759)))

(assert (=> b!7762026 (= tp!2279623 e!4600152)))

(declare-fun b!7762193 () Bool)

(declare-fun tp!2279685 () Bool)

(declare-fun tp!2279687 () Bool)

(assert (=> b!7762193 (= e!4600152 (and tp!2279685 tp!2279687))))

(assert (= (and b!7762026 (is-ElementMatch!20702 (regTwo!41917 r2!3230))) b!7762190))

(assert (= (and b!7762026 (is-Concat!29547 (regTwo!41917 r2!3230))) b!7762191))

(assert (= (and b!7762026 (is-Star!20702 (regTwo!41917 r2!3230))) b!7762192))

(assert (= (and b!7762026 (is-Union!20702 (regTwo!41917 r2!3230))) b!7762193))

(declare-fun b!7762196 () Bool)

(declare-fun e!4600153 () Bool)

(declare-fun tp!2279694 () Bool)

(assert (=> b!7762196 (= e!4600153 tp!2279694)))

(declare-fun b!7762195 () Bool)

(declare-fun tp!2279693 () Bool)

(declare-fun tp!2279691 () Bool)

(assert (=> b!7762195 (= e!4600153 (and tp!2279693 tp!2279691))))

(declare-fun b!7762194 () Bool)

(assert (=> b!7762194 (= e!4600153 tp_is_empty!51759)))

(assert (=> b!7762021 (= tp!2279627 e!4600153)))

(declare-fun b!7762197 () Bool)

(declare-fun tp!2279690 () Bool)

(declare-fun tp!2279692 () Bool)

(assert (=> b!7762197 (= e!4600153 (and tp!2279690 tp!2279692))))

(assert (= (and b!7762021 (is-ElementMatch!20702 (regOne!41917 r1!3330))) b!7762194))

(assert (= (and b!7762021 (is-Concat!29547 (regOne!41917 r1!3330))) b!7762195))

(assert (= (and b!7762021 (is-Star!20702 (regOne!41917 r1!3330))) b!7762196))

(assert (= (and b!7762021 (is-Union!20702 (regOne!41917 r1!3330))) b!7762197))

(declare-fun b!7762200 () Bool)

(declare-fun e!4600154 () Bool)

(declare-fun tp!2279699 () Bool)

(assert (=> b!7762200 (= e!4600154 tp!2279699)))

(declare-fun b!7762199 () Bool)

(declare-fun tp!2279698 () Bool)

(declare-fun tp!2279696 () Bool)

(assert (=> b!7762199 (= e!4600154 (and tp!2279698 tp!2279696))))

(declare-fun b!7762198 () Bool)

(assert (=> b!7762198 (= e!4600154 tp_is_empty!51759)))

(assert (=> b!7762021 (= tp!2279625 e!4600154)))

(declare-fun b!7762201 () Bool)

(declare-fun tp!2279695 () Bool)

(declare-fun tp!2279697 () Bool)

(assert (=> b!7762201 (= e!4600154 (and tp!2279695 tp!2279697))))

(assert (= (and b!7762021 (is-ElementMatch!20702 (regTwo!41917 r1!3330))) b!7762198))

(assert (= (and b!7762021 (is-Concat!29547 (regTwo!41917 r1!3330))) b!7762199))

(assert (= (and b!7762021 (is-Star!20702 (regTwo!41917 r1!3330))) b!7762200))

(assert (= (and b!7762021 (is-Union!20702 (regTwo!41917 r1!3330))) b!7762201))

(declare-fun b!7762204 () Bool)

(declare-fun e!4600155 () Bool)

(declare-fun tp!2279704 () Bool)

(assert (=> b!7762204 (= e!4600155 tp!2279704)))

(declare-fun b!7762203 () Bool)

(declare-fun tp!2279703 () Bool)

(declare-fun tp!2279701 () Bool)

(assert (=> b!7762203 (= e!4600155 (and tp!2279703 tp!2279701))))

(declare-fun b!7762202 () Bool)

(assert (=> b!7762202 (= e!4600155 tp_is_empty!51759)))

(assert (=> b!7762020 (= tp!2279628 e!4600155)))

(declare-fun b!7762205 () Bool)

(declare-fun tp!2279700 () Bool)

(declare-fun tp!2279702 () Bool)

(assert (=> b!7762205 (= e!4600155 (and tp!2279700 tp!2279702))))

(assert (= (and b!7762020 (is-ElementMatch!20702 (reg!21031 r2!3230))) b!7762202))

(assert (= (and b!7762020 (is-Concat!29547 (reg!21031 r2!3230))) b!7762203))

(assert (= (and b!7762020 (is-Star!20702 (reg!21031 r2!3230))) b!7762204))

(assert (= (and b!7762020 (is-Union!20702 (reg!21031 r2!3230))) b!7762205))

(declare-fun b!7762208 () Bool)

(declare-fun e!4600156 () Bool)

(declare-fun tp!2279709 () Bool)

(assert (=> b!7762208 (= e!4600156 tp!2279709)))

(declare-fun b!7762207 () Bool)

(declare-fun tp!2279708 () Bool)

(declare-fun tp!2279706 () Bool)

(assert (=> b!7762207 (= e!4600156 (and tp!2279708 tp!2279706))))

(declare-fun b!7762206 () Bool)

(assert (=> b!7762206 (= e!4600156 tp_is_empty!51759)))

(assert (=> b!7762030 (= tp!2279622 e!4600156)))

(declare-fun b!7762209 () Bool)

(declare-fun tp!2279705 () Bool)

(declare-fun tp!2279707 () Bool)

(assert (=> b!7762209 (= e!4600156 (and tp!2279705 tp!2279707))))

(assert (= (and b!7762030 (is-ElementMatch!20702 (regOne!41916 r2!3230))) b!7762206))

(assert (= (and b!7762030 (is-Concat!29547 (regOne!41916 r2!3230))) b!7762207))

(assert (= (and b!7762030 (is-Star!20702 (regOne!41916 r2!3230))) b!7762208))

(assert (= (and b!7762030 (is-Union!20702 (regOne!41916 r2!3230))) b!7762209))

(declare-fun b!7762212 () Bool)

(declare-fun e!4600157 () Bool)

(declare-fun tp!2279714 () Bool)

(assert (=> b!7762212 (= e!4600157 tp!2279714)))

(declare-fun b!7762211 () Bool)

(declare-fun tp!2279713 () Bool)

(declare-fun tp!2279711 () Bool)

(assert (=> b!7762211 (= e!4600157 (and tp!2279713 tp!2279711))))

(declare-fun b!7762210 () Bool)

(assert (=> b!7762210 (= e!4600157 tp_is_empty!51759)))

(assert (=> b!7762030 (= tp!2279618 e!4600157)))

(declare-fun b!7762213 () Bool)

(declare-fun tp!2279710 () Bool)

(declare-fun tp!2279712 () Bool)

(assert (=> b!7762213 (= e!4600157 (and tp!2279710 tp!2279712))))

(assert (= (and b!7762030 (is-ElementMatch!20702 (regTwo!41916 r2!3230))) b!7762210))

(assert (= (and b!7762030 (is-Concat!29547 (regTwo!41916 r2!3230))) b!7762211))

(assert (= (and b!7762030 (is-Star!20702 (regTwo!41916 r2!3230))) b!7762212))

(assert (= (and b!7762030 (is-Union!20702 (regTwo!41916 r2!3230))) b!7762213))

(declare-fun b!7762216 () Bool)

(declare-fun e!4600158 () Bool)

(declare-fun tp!2279719 () Bool)

(assert (=> b!7762216 (= e!4600158 tp!2279719)))

(declare-fun b!7762215 () Bool)

(declare-fun tp!2279718 () Bool)

(declare-fun tp!2279716 () Bool)

(assert (=> b!7762215 (= e!4600158 (and tp!2279718 tp!2279716))))

(declare-fun b!7762214 () Bool)

(assert (=> b!7762214 (= e!4600158 tp_is_empty!51759)))

(assert (=> b!7762025 (= tp!2279620 e!4600158)))

(declare-fun b!7762217 () Bool)

(declare-fun tp!2279715 () Bool)

(declare-fun tp!2279717 () Bool)

(assert (=> b!7762217 (= e!4600158 (and tp!2279715 tp!2279717))))

(assert (= (and b!7762025 (is-ElementMatch!20702 (regOne!41916 r1!3330))) b!7762214))

(assert (= (and b!7762025 (is-Concat!29547 (regOne!41916 r1!3330))) b!7762215))

(assert (= (and b!7762025 (is-Star!20702 (regOne!41916 r1!3330))) b!7762216))

(assert (= (and b!7762025 (is-Union!20702 (regOne!41916 r1!3330))) b!7762217))

(declare-fun b!7762220 () Bool)

(declare-fun e!4600159 () Bool)

(declare-fun tp!2279724 () Bool)

(assert (=> b!7762220 (= e!4600159 tp!2279724)))

(declare-fun b!7762219 () Bool)

(declare-fun tp!2279723 () Bool)

(declare-fun tp!2279721 () Bool)

(assert (=> b!7762219 (= e!4600159 (and tp!2279723 tp!2279721))))

(declare-fun b!7762218 () Bool)

(assert (=> b!7762218 (= e!4600159 tp_is_empty!51759)))

(assert (=> b!7762025 (= tp!2279624 e!4600159)))

(declare-fun b!7762221 () Bool)

(declare-fun tp!2279720 () Bool)

(declare-fun tp!2279722 () Bool)

(assert (=> b!7762221 (= e!4600159 (and tp!2279720 tp!2279722))))

(assert (= (and b!7762025 (is-ElementMatch!20702 (regTwo!41916 r1!3330))) b!7762218))

(assert (= (and b!7762025 (is-Concat!29547 (regTwo!41916 r1!3330))) b!7762219))

(assert (= (and b!7762025 (is-Star!20702 (regTwo!41916 r1!3330))) b!7762220))

(assert (= (and b!7762025 (is-Union!20702 (regTwo!41916 r1!3330))) b!7762221))

(push 1)

(assert (not b!7762199))

(assert (not b!7762124))

(assert (not b!7762126))

(assert (not b!7762193))

(assert (not b!7762185))

(assert (not b!7762184))

(assert (not b!7762204))

(assert (not b!7762129))

(assert (not b!7762197))

(assert (not b!7762217))

(assert (not b!7762122))

(assert (not b!7762203))

(assert (not b!7762195))

(assert (not b!7762125))

(assert (not b!7762188))

(assert (not bm!719231))

(assert (not b!7762205))

(assert (not b!7762187))

(assert (not bm!719229))

(assert (not b!7762189))

(assert (not b!7762212))

(assert (not b!7762183))

(assert (not d!2343627))

(assert (not b!7762200))

(assert (not d!2343625))

(assert (not b!7762208))

(assert (not b!7762219))

(assert (not b!7762155))

(assert (not b!7762164))

(assert (not b!7762191))

(assert (not b!7762215))

(assert (not bm!719232))

(assert tp_is_empty!51759)

(assert (not b!7762221))

(assert (not b!7762207))

(assert (not bm!719228))

(assert (not b!7762192))

(assert (not b!7762216))

(assert (not b!7762196))

(assert (not b!7762220))

(assert (not b!7762201))

(assert (not b!7762171))

(assert (not b!7762213))

(assert (not b!7762209))

(assert (not b!7762211))

(assert (not b!7762128))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

