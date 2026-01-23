; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!720974 () Bool)

(assert start!720974)

(declare-fun b!7397985 () Bool)

(assert (=> b!7397985 true))

(declare-fun b!7397979 () Bool)

(declare-fun e!4426248 () Bool)

(declare-fun tp_is_empty!49015 () Bool)

(declare-fun tp!2111364 () Bool)

(assert (=> b!7397979 (= e!4426248 (and tp_is_empty!49015 tp!2111364))))

(declare-fun b!7397980 () Bool)

(declare-fun res!2980646 () Bool)

(declare-fun e!4426246 () Bool)

(assert (=> b!7397980 (=> (not res!2980646) (not e!4426246))))

(declare-datatypes ((C!39026 0))(
  ( (C!39027 (val!29887 Int)) )
))
(declare-datatypes ((List!71926 0))(
  ( (Nil!71802) (Cons!71802 (h!78250 C!39026) (t!386483 List!71926)) )
))
(declare-fun s!7927 () List!71926)

(declare-fun a!2228 () C!39026)

(assert (=> b!7397980 (= res!2980646 (and (or (not (is-Cons!71802 s!7927)) (not (= (h!78250 s!7927) a!2228))) (is-Cons!71802 s!7927) (not (= (h!78250 s!7927) a!2228))))))

(declare-fun b!7397981 () Bool)

(declare-fun e!4426244 () Bool)

(assert (=> b!7397981 (= e!4426246 e!4426244)))

(declare-fun res!2980643 () Bool)

(assert (=> b!7397981 (=> (not res!2980643) (not e!4426244))))

(declare-datatypes ((Regex!19376 0))(
  ( (ElementMatch!19376 (c!1374011 C!39026)) (Concat!28221 (regOne!39264 Regex!19376) (regTwo!39264 Regex!19376)) (EmptyExpr!19376) (Star!19376 (reg!19705 Regex!19376)) (EmptyLang!19376) (Union!19376 (regOne!39265 Regex!19376) (regTwo!39265 Regex!19376)) )
))
(declare-datatypes ((List!71927 0))(
  ( (Nil!71803) (Cons!71803 (h!78251 Regex!19376) (t!386484 List!71927)) )
))
(declare-datatypes ((Context!16632 0))(
  ( (Context!16633 (exprs!8816 List!71927)) )
))
(declare-fun c!10532 () Context!16632)

(declare-fun derivationStepZipperUp!2782 (Context!16632 C!39026) (Set Context!16632))

(assert (=> b!7397981 (= res!2980643 (= (derivationStepZipperUp!2782 c!10532 (h!78250 s!7927)) (as set.empty (Set Context!16632))))))

(declare-fun lt!2618018 () (Set Context!16632))

(declare-fun z!3451 () (Set Context!16632))

(declare-fun derivationStepZipper!3658 ((Set Context!16632) C!39026) (Set Context!16632))

(assert (=> b!7397981 (= lt!2618018 (derivationStepZipper!3658 z!3451 (h!78250 s!7927)))))

(declare-fun e!4426245 () Bool)

(declare-fun setRes!56029 () Bool)

(declare-fun tp!2111363 () Bool)

(declare-fun setNonEmpty!56029 () Bool)

(declare-fun setElem!56029 () Context!16632)

(declare-fun inv!91802 (Context!16632) Bool)

(assert (=> setNonEmpty!56029 (= setRes!56029 (and tp!2111363 (inv!91802 setElem!56029) e!4426245))))

(declare-fun setRest!56029 () (Set Context!16632))

(assert (=> setNonEmpty!56029 (= z!3451 (set.union (set.insert setElem!56029 (as set.empty (Set Context!16632))) setRest!56029))))

(declare-fun b!7397982 () Bool)

(declare-fun res!2980644 () Bool)

(assert (=> b!7397982 (=> (not res!2980644) (not e!4426246))))

(declare-fun head!15136 (List!71927) Regex!19376)

(assert (=> b!7397982 (= res!2980644 (= (head!15136 (exprs!8816 c!10532)) (ElementMatch!19376 a!2228)))))

(declare-fun b!7397983 () Bool)

(declare-fun res!2980649 () Bool)

(assert (=> b!7397983 (=> (not res!2980649) (not e!4426244))))

(assert (=> b!7397983 (= res!2980649 (not (= lt!2618018 (as set.empty (Set Context!16632)))))))

(declare-fun b!7397984 () Bool)

(declare-fun res!2980647 () Bool)

(assert (=> b!7397984 (=> (not res!2980647) (not e!4426246))))

(declare-fun isEmpty!41016 (List!71927) Bool)

(declare-fun tail!14783 (List!71927) List!71927)

(assert (=> b!7397984 (= res!2980647 (isEmpty!41016 (tail!14783 (exprs!8816 c!10532))))))

(declare-fun lambda!459240 () Int)

(declare-datatypes ((List!71928 0))(
  ( (Nil!71804) (Cons!71804 (h!78252 Context!16632) (t!386485 List!71928)) )
))
(declare-fun head!15137 (List!71928) Context!16632)

(declare-fun toList!11737 ((Set Context!16632)) List!71928)

(declare-fun flatMap!3186 ((Set Context!16632) Int) (Set Context!16632))

(assert (=> b!7397985 (= e!4426244 (not (set.member (head!15137 (toList!11737 lt!2618018)) (flatMap!3186 z!3451 lambda!459240))))))

(declare-fun setIsEmpty!56029 () Bool)

(assert (=> setIsEmpty!56029 setRes!56029))

(declare-fun res!2980648 () Bool)

(assert (=> start!720974 (=> (not res!2980648) (not e!4426246))))

(assert (=> start!720974 (= res!2980648 (= z!3451 (set.insert c!10532 (as set.empty (Set Context!16632)))))))

(assert (=> start!720974 e!4426246))

(declare-fun condSetEmpty!56029 () Bool)

(assert (=> start!720974 (= condSetEmpty!56029 (= z!3451 (as set.empty (Set Context!16632))))))

(assert (=> start!720974 setRes!56029))

(declare-fun e!4426247 () Bool)

(assert (=> start!720974 (and (inv!91802 c!10532) e!4426247)))

(assert (=> start!720974 tp_is_empty!49015))

(assert (=> start!720974 e!4426248))

(declare-fun b!7397986 () Bool)

(declare-fun tp!2111362 () Bool)

(assert (=> b!7397986 (= e!4426247 tp!2111362)))

(declare-fun b!7397987 () Bool)

(declare-fun res!2980645 () Bool)

(assert (=> b!7397987 (=> (not res!2980645) (not e!4426246))))

(assert (=> b!7397987 (= res!2980645 (not (isEmpty!41016 (exprs!8816 c!10532))))))

(declare-fun b!7397988 () Bool)

(declare-fun tp!2111365 () Bool)

(assert (=> b!7397988 (= e!4426245 tp!2111365)))

(assert (= (and start!720974 res!2980648) b!7397987))

(assert (= (and b!7397987 res!2980645) b!7397982))

(assert (= (and b!7397982 res!2980644) b!7397984))

(assert (= (and b!7397984 res!2980647) b!7397980))

(assert (= (and b!7397980 res!2980646) b!7397981))

(assert (= (and b!7397981 res!2980643) b!7397983))

(assert (= (and b!7397983 res!2980649) b!7397985))

(assert (= (and start!720974 condSetEmpty!56029) setIsEmpty!56029))

(assert (= (and start!720974 (not condSetEmpty!56029)) setNonEmpty!56029))

(assert (= setNonEmpty!56029 b!7397988))

(assert (= start!720974 b!7397986))

(assert (= (and start!720974 (is-Cons!71802 s!7927)) b!7397979))

(declare-fun m!8039112 () Bool)

(assert (=> b!7397982 m!8039112))

(declare-fun m!8039114 () Bool)

(assert (=> b!7397981 m!8039114))

(declare-fun m!8039116 () Bool)

(assert (=> b!7397981 m!8039116))

(declare-fun m!8039118 () Bool)

(assert (=> b!7397987 m!8039118))

(declare-fun m!8039120 () Bool)

(assert (=> setNonEmpty!56029 m!8039120))

(declare-fun m!8039122 () Bool)

(assert (=> start!720974 m!8039122))

(declare-fun m!8039124 () Bool)

(assert (=> start!720974 m!8039124))

(declare-fun m!8039126 () Bool)

(assert (=> b!7397984 m!8039126))

(assert (=> b!7397984 m!8039126))

(declare-fun m!8039128 () Bool)

(assert (=> b!7397984 m!8039128))

(declare-fun m!8039130 () Bool)

(assert (=> b!7397985 m!8039130))

(assert (=> b!7397985 m!8039130))

(declare-fun m!8039132 () Bool)

(assert (=> b!7397985 m!8039132))

(declare-fun m!8039134 () Bool)

(assert (=> b!7397985 m!8039134))

(assert (=> b!7397985 m!8039132))

(declare-fun m!8039136 () Bool)

(assert (=> b!7397985 m!8039136))

(push 1)

(assert (not setNonEmpty!56029))

(assert (not start!720974))

(assert (not b!7397987))

(assert (not b!7397982))

(assert tp_is_empty!49015)

(assert (not b!7397981))

(assert (not b!7397985))

(assert (not b!7397988))

(assert (not b!7397986))

(assert (not b!7397979))

(assert (not b!7397984))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2288938 () Bool)

(declare-fun c!1374018 () Bool)

(declare-fun e!4426272 () Bool)

(assert (=> d!2288938 (= c!1374018 e!4426272)))

(declare-fun res!2980673 () Bool)

(assert (=> d!2288938 (=> (not res!2980673) (not e!4426272))))

(assert (=> d!2288938 (= res!2980673 (is-Cons!71803 (exprs!8816 c!10532)))))

(declare-fun e!4426271 () (Set Context!16632))

(assert (=> d!2288938 (= (derivationStepZipperUp!2782 c!10532 (h!78250 s!7927)) e!4426271)))

(declare-fun call!681110 () (Set Context!16632))

(declare-fun b!7398033 () Bool)

(assert (=> b!7398033 (= e!4426271 (set.union call!681110 (derivationStepZipperUp!2782 (Context!16633 (t!386484 (exprs!8816 c!10532))) (h!78250 s!7927))))))

(declare-fun b!7398034 () Bool)

(declare-fun e!4426270 () (Set Context!16632))

(assert (=> b!7398034 (= e!4426270 call!681110)))

(declare-fun b!7398035 () Bool)

(assert (=> b!7398035 (= e!4426270 (as set.empty (Set Context!16632)))))

(declare-fun b!7398036 () Bool)

(declare-fun nullable!8429 (Regex!19376) Bool)

(assert (=> b!7398036 (= e!4426272 (nullable!8429 (h!78251 (exprs!8816 c!10532))))))

(declare-fun b!7398037 () Bool)

(assert (=> b!7398037 (= e!4426271 e!4426270)))

(declare-fun c!1374017 () Bool)

(assert (=> b!7398037 (= c!1374017 (is-Cons!71803 (exprs!8816 c!10532)))))

(declare-fun bm!681105 () Bool)

(declare-fun derivationStepZipperDown!3181 (Regex!19376 Context!16632 C!39026) (Set Context!16632))

(assert (=> bm!681105 (= call!681110 (derivationStepZipperDown!3181 (h!78251 (exprs!8816 c!10532)) (Context!16633 (t!386484 (exprs!8816 c!10532))) (h!78250 s!7927)))))

(assert (= (and d!2288938 res!2980673) b!7398036))

(assert (= (and d!2288938 c!1374018) b!7398033))

(assert (= (and d!2288938 (not c!1374018)) b!7398037))

(assert (= (and b!7398037 c!1374017) b!7398034))

(assert (= (and b!7398037 (not c!1374017)) b!7398035))

(assert (= (or b!7398033 b!7398034) bm!681105))

(declare-fun m!8039164 () Bool)

(assert (=> b!7398033 m!8039164))

(declare-fun m!8039166 () Bool)

(assert (=> b!7398036 m!8039166))

(declare-fun m!8039168 () Bool)

(assert (=> bm!681105 m!8039168))

(assert (=> b!7397981 d!2288938))

(declare-fun bs!1923169 () Bool)

(declare-fun d!2288940 () Bool)

(assert (= bs!1923169 (and d!2288940 b!7397985)))

(declare-fun lambda!459246 () Int)

(assert (=> bs!1923169 (= lambda!459246 lambda!459240)))

(assert (=> d!2288940 true))

(assert (=> d!2288940 (= (derivationStepZipper!3658 z!3451 (h!78250 s!7927)) (flatMap!3186 z!3451 lambda!459246))))

(declare-fun bs!1923170 () Bool)

(assert (= bs!1923170 d!2288940))

(declare-fun m!8039170 () Bool)

(assert (=> bs!1923170 m!8039170))

(assert (=> b!7397981 d!2288940))

(declare-fun d!2288942 () Bool)

(assert (=> d!2288942 (= (head!15137 (toList!11737 lt!2618018)) (h!78252 (toList!11737 lt!2618018)))))

(assert (=> b!7397985 d!2288942))

(declare-fun d!2288944 () Bool)

(declare-fun e!4426275 () Bool)

(assert (=> d!2288944 e!4426275))

(declare-fun res!2980676 () Bool)

(assert (=> d!2288944 (=> (not res!2980676) (not e!4426275))))

(declare-fun lt!2618024 () List!71928)

(declare-fun noDuplicate!3096 (List!71928) Bool)

(assert (=> d!2288944 (= res!2980676 (noDuplicate!3096 lt!2618024))))

(declare-fun choose!57398 ((Set Context!16632)) List!71928)

(assert (=> d!2288944 (= lt!2618024 (choose!57398 lt!2618018))))

(assert (=> d!2288944 (= (toList!11737 lt!2618018) lt!2618024)))

(declare-fun b!7398042 () Bool)

(declare-fun content!15208 (List!71928) (Set Context!16632))

(assert (=> b!7398042 (= e!4426275 (= (content!15208 lt!2618024) lt!2618018))))

(assert (= (and d!2288944 res!2980676) b!7398042))

(declare-fun m!8039172 () Bool)

(assert (=> d!2288944 m!8039172))

(declare-fun m!8039174 () Bool)

(assert (=> d!2288944 m!8039174))

(declare-fun m!8039176 () Bool)

(assert (=> b!7398042 m!8039176))

(assert (=> b!7397985 d!2288944))

(declare-fun d!2288946 () Bool)

(declare-fun choose!57399 ((Set Context!16632) Int) (Set Context!16632))

(assert (=> d!2288946 (= (flatMap!3186 z!3451 lambda!459240) (choose!57399 z!3451 lambda!459240))))

(declare-fun bs!1923171 () Bool)

(assert (= bs!1923171 d!2288946))

(declare-fun m!8039178 () Bool)

(assert (=> bs!1923171 m!8039178))

(assert (=> b!7397985 d!2288946))

(declare-fun d!2288948 () Bool)

(assert (=> d!2288948 (= (isEmpty!41016 (tail!14783 (exprs!8816 c!10532))) (is-Nil!71803 (tail!14783 (exprs!8816 c!10532))))))

(assert (=> b!7397984 d!2288948))

(declare-fun d!2288950 () Bool)

(assert (=> d!2288950 (= (tail!14783 (exprs!8816 c!10532)) (t!386484 (exprs!8816 c!10532)))))

(assert (=> b!7397984 d!2288950))

(declare-fun d!2288952 () Bool)

(assert (=> d!2288952 (= (head!15136 (exprs!8816 c!10532)) (h!78251 (exprs!8816 c!10532)))))

(assert (=> b!7397982 d!2288952))

(declare-fun d!2288954 () Bool)

(assert (=> d!2288954 (= (isEmpty!41016 (exprs!8816 c!10532)) (is-Nil!71803 (exprs!8816 c!10532)))))

(assert (=> b!7397987 d!2288954))

(declare-fun d!2288956 () Bool)

(declare-fun lambda!459249 () Int)

(declare-fun forall!18164 (List!71927 Int) Bool)

(assert (=> d!2288956 (= (inv!91802 c!10532) (forall!18164 (exprs!8816 c!10532) lambda!459249))))

(declare-fun bs!1923172 () Bool)

(assert (= bs!1923172 d!2288956))

(declare-fun m!8039180 () Bool)

(assert (=> bs!1923172 m!8039180))

(assert (=> start!720974 d!2288956))

(declare-fun bs!1923173 () Bool)

(declare-fun d!2288958 () Bool)

(assert (= bs!1923173 (and d!2288958 d!2288956)))

(declare-fun lambda!459250 () Int)

(assert (=> bs!1923173 (= lambda!459250 lambda!459249)))

(assert (=> d!2288958 (= (inv!91802 setElem!56029) (forall!18164 (exprs!8816 setElem!56029) lambda!459250))))

(declare-fun bs!1923174 () Bool)

(assert (= bs!1923174 d!2288958))

(declare-fun m!8039182 () Bool)

(assert (=> bs!1923174 m!8039182))

(assert (=> setNonEmpty!56029 d!2288958))

(declare-fun b!7398047 () Bool)

(declare-fun e!4426278 () Bool)

(declare-fun tp!2111380 () Bool)

(assert (=> b!7398047 (= e!4426278 (and tp_is_empty!49015 tp!2111380))))

(assert (=> b!7397979 (= tp!2111364 e!4426278)))

(assert (= (and b!7397979 (is-Cons!71802 (t!386483 s!7927))) b!7398047))

(declare-fun b!7398052 () Bool)

(declare-fun e!4426281 () Bool)

(declare-fun tp!2111385 () Bool)

(declare-fun tp!2111386 () Bool)

(assert (=> b!7398052 (= e!4426281 (and tp!2111385 tp!2111386))))

(assert (=> b!7397988 (= tp!2111365 e!4426281)))

(assert (= (and b!7397988 (is-Cons!71803 (exprs!8816 setElem!56029))) b!7398052))

(declare-fun b!7398053 () Bool)

(declare-fun e!4426282 () Bool)

(declare-fun tp!2111387 () Bool)

(declare-fun tp!2111388 () Bool)

(assert (=> b!7398053 (= e!4426282 (and tp!2111387 tp!2111388))))

(assert (=> b!7397986 (= tp!2111362 e!4426282)))

(assert (= (and b!7397986 (is-Cons!71803 (exprs!8816 c!10532))) b!7398053))

(declare-fun condSetEmpty!56035 () Bool)

(assert (=> setNonEmpty!56029 (= condSetEmpty!56035 (= setRest!56029 (as set.empty (Set Context!16632))))))

(declare-fun setRes!56035 () Bool)

(assert (=> setNonEmpty!56029 (= tp!2111363 setRes!56035)))

(declare-fun setIsEmpty!56035 () Bool)

(assert (=> setIsEmpty!56035 setRes!56035))

(declare-fun setNonEmpty!56035 () Bool)

(declare-fun setElem!56035 () Context!16632)

(declare-fun e!4426285 () Bool)

(declare-fun tp!2111393 () Bool)

(assert (=> setNonEmpty!56035 (= setRes!56035 (and tp!2111393 (inv!91802 setElem!56035) e!4426285))))

(declare-fun setRest!56035 () (Set Context!16632))

(assert (=> setNonEmpty!56035 (= setRest!56029 (set.union (set.insert setElem!56035 (as set.empty (Set Context!16632))) setRest!56035))))

(declare-fun b!7398058 () Bool)

(declare-fun tp!2111394 () Bool)

(assert (=> b!7398058 (= e!4426285 tp!2111394)))

(assert (= (and setNonEmpty!56029 condSetEmpty!56035) setIsEmpty!56035))

(assert (= (and setNonEmpty!56029 (not condSetEmpty!56035)) setNonEmpty!56035))

(assert (= setNonEmpty!56035 b!7398058))

(declare-fun m!8039184 () Bool)

(assert (=> setNonEmpty!56035 m!8039184))

(push 1)

(assert (not d!2288946))

(assert (not d!2288940))

(assert (not d!2288958))

(assert (not b!7398033))

(assert (not setNonEmpty!56035))

(assert (not b!7398047))

(assert (not b!7398042))

(assert (not d!2288944))

(assert tp_is_empty!49015)

(assert (not b!7398036))

(assert (not b!7398053))

(assert (not bm!681105))

(assert (not b!7398052))

(assert (not b!7398058))

(assert (not d!2288956))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7398117 () Bool)

(declare-fun e!4426324 () (Set Context!16632))

(declare-fun call!681131 () (Set Context!16632))

(assert (=> b!7398117 (= e!4426324 call!681131)))

(declare-fun b!7398118 () Bool)

(declare-fun e!4426323 () (Set Context!16632))

(assert (=> b!7398118 (= e!4426323 call!681131)))

(declare-fun d!2288982 () Bool)

(declare-fun c!1374041 () Bool)

(assert (=> d!2288982 (= c!1374041 (and (is-ElementMatch!19376 (h!78251 (exprs!8816 c!10532))) (= (c!1374011 (h!78251 (exprs!8816 c!10532))) (h!78250 s!7927))))))

(declare-fun e!4426320 () (Set Context!16632))

(assert (=> d!2288982 (= (derivationStepZipperDown!3181 (h!78251 (exprs!8816 c!10532)) (Context!16633 (t!386484 (exprs!8816 c!10532))) (h!78250 s!7927)) e!4426320)))

(declare-fun c!1374043 () Bool)

(declare-fun c!1374039 () Bool)

(declare-fun call!681126 () List!71927)

(declare-fun bm!681121 () Bool)

(declare-fun $colon$colon!3328 (List!71927 Regex!19376) List!71927)

(assert (=> bm!681121 (= call!681126 ($colon$colon!3328 (exprs!8816 (Context!16633 (t!386484 (exprs!8816 c!10532)))) (ite (or c!1374039 c!1374043) (regTwo!39264 (h!78251 (exprs!8816 c!10532))) (h!78251 (exprs!8816 c!10532)))))))

(declare-fun bm!681122 () Bool)

(declare-fun call!681129 () (Set Context!16632))

(declare-fun call!681127 () (Set Context!16632))

(assert (=> bm!681122 (= call!681129 call!681127)))

(declare-fun bm!681123 () Bool)

(declare-fun call!681128 () List!71927)

(assert (=> bm!681123 (= call!681128 call!681126)))

(declare-fun b!7398119 () Bool)

(declare-fun c!1374040 () Bool)

(assert (=> b!7398119 (= c!1374040 (is-Star!19376 (h!78251 (exprs!8816 c!10532))))))

(assert (=> b!7398119 (= e!4426323 e!4426324)))

(declare-fun c!1374042 () Bool)

(declare-fun bm!681124 () Bool)

(assert (=> bm!681124 (= call!681127 (derivationStepZipperDown!3181 (ite c!1374042 (regTwo!39265 (h!78251 (exprs!8816 c!10532))) (ite c!1374039 (regTwo!39264 (h!78251 (exprs!8816 c!10532))) (ite c!1374043 (regOne!39264 (h!78251 (exprs!8816 c!10532))) (reg!19705 (h!78251 (exprs!8816 c!10532)))))) (ite (or c!1374042 c!1374039) (Context!16633 (t!386484 (exprs!8816 c!10532))) (Context!16633 call!681128)) (h!78250 s!7927)))))

(declare-fun b!7398120 () Bool)

(declare-fun e!4426322 () (Set Context!16632))

(declare-fun call!681130 () (Set Context!16632))

(assert (=> b!7398120 (= e!4426322 (set.union call!681130 call!681127))))

(declare-fun b!7398121 () Bool)

(assert (=> b!7398121 (= e!4426324 (as set.empty (Set Context!16632)))))

(declare-fun b!7398122 () Bool)

(assert (=> b!7398122 (= e!4426320 (set.insert (Context!16633 (t!386484 (exprs!8816 c!10532))) (as set.empty (Set Context!16632))))))

(declare-fun b!7398123 () Bool)

(declare-fun e!4426325 () Bool)

(assert (=> b!7398123 (= c!1374039 e!4426325)))

(declare-fun res!2980685 () Bool)

(assert (=> b!7398123 (=> (not res!2980685) (not e!4426325))))

(assert (=> b!7398123 (= res!2980685 (is-Concat!28221 (h!78251 (exprs!8816 c!10532))))))

(declare-fun e!4426321 () (Set Context!16632))

(assert (=> b!7398123 (= e!4426322 e!4426321)))

(declare-fun b!7398124 () Bool)

(assert (=> b!7398124 (= e!4426321 (set.union call!681130 call!681129))))

(declare-fun bm!681125 () Bool)

(assert (=> bm!681125 (= call!681131 call!681129)))

(declare-fun b!7398125 () Bool)

(assert (=> b!7398125 (= e!4426320 e!4426322)))

(assert (=> b!7398125 (= c!1374042 (is-Union!19376 (h!78251 (exprs!8816 c!10532))))))

(declare-fun b!7398126 () Bool)

(assert (=> b!7398126 (= e!4426325 (nullable!8429 (regOne!39264 (h!78251 (exprs!8816 c!10532)))))))

(declare-fun b!7398127 () Bool)

(assert (=> b!7398127 (= e!4426321 e!4426323)))

(assert (=> b!7398127 (= c!1374043 (is-Concat!28221 (h!78251 (exprs!8816 c!10532))))))

(declare-fun bm!681126 () Bool)

(assert (=> bm!681126 (= call!681130 (derivationStepZipperDown!3181 (ite c!1374042 (regOne!39265 (h!78251 (exprs!8816 c!10532))) (regOne!39264 (h!78251 (exprs!8816 c!10532)))) (ite c!1374042 (Context!16633 (t!386484 (exprs!8816 c!10532))) (Context!16633 call!681126)) (h!78250 s!7927)))))

(assert (= (and d!2288982 c!1374041) b!7398122))

(assert (= (and d!2288982 (not c!1374041)) b!7398125))

(assert (= (and b!7398125 c!1374042) b!7398120))

(assert (= (and b!7398125 (not c!1374042)) b!7398123))

(assert (= (and b!7398123 res!2980685) b!7398126))

(assert (= (and b!7398123 c!1374039) b!7398124))

(assert (= (and b!7398123 (not c!1374039)) b!7398127))

(assert (= (and b!7398127 c!1374043) b!7398118))

(assert (= (and b!7398127 (not c!1374043)) b!7398119))

(assert (= (and b!7398119 c!1374040) b!7398117))

(assert (= (and b!7398119 (not c!1374040)) b!7398121))

(assert (= (or b!7398118 b!7398117) bm!681123))

(assert (= (or b!7398118 b!7398117) bm!681125))

(assert (= (or b!7398124 bm!681123) bm!681121))

(assert (= (or b!7398124 bm!681125) bm!681122))

(assert (= (or b!7398120 b!7398124) bm!681126))

(assert (= (or b!7398120 bm!681122) bm!681124))

(declare-fun m!8039208 () Bool)

(assert (=> bm!681126 m!8039208))

(declare-fun m!8039210 () Bool)

(assert (=> b!7398126 m!8039210))

(declare-fun m!8039212 () Bool)

(assert (=> bm!681124 m!8039212))

(declare-fun m!8039214 () Bool)

(assert (=> b!7398122 m!8039214))

(declare-fun m!8039216 () Bool)

(assert (=> bm!681121 m!8039216))

(assert (=> bm!681105 d!2288982))

(declare-fun d!2288984 () Bool)

(declare-fun res!2980690 () Bool)

(declare-fun e!4426330 () Bool)

(assert (=> d!2288984 (=> res!2980690 e!4426330)))

(assert (=> d!2288984 (= res!2980690 (is-Nil!71803 (exprs!8816 setElem!56029)))))

(assert (=> d!2288984 (= (forall!18164 (exprs!8816 setElem!56029) lambda!459250) e!4426330)))

(declare-fun b!7398132 () Bool)

(declare-fun e!4426331 () Bool)

(assert (=> b!7398132 (= e!4426330 e!4426331)))

(declare-fun res!2980691 () Bool)

(assert (=> b!7398132 (=> (not res!2980691) (not e!4426331))))

(declare-fun dynLambda!29596 (Int Regex!19376) Bool)

(assert (=> b!7398132 (= res!2980691 (dynLambda!29596 lambda!459250 (h!78251 (exprs!8816 setElem!56029))))))

(declare-fun b!7398133 () Bool)

(assert (=> b!7398133 (= e!4426331 (forall!18164 (t!386484 (exprs!8816 setElem!56029)) lambda!459250))))

(assert (= (and d!2288984 (not res!2980690)) b!7398132))

(assert (= (and b!7398132 res!2980691) b!7398133))

(declare-fun b_lambda!285747 () Bool)

(assert (=> (not b_lambda!285747) (not b!7398132)))

(declare-fun m!8039218 () Bool)

(assert (=> b!7398132 m!8039218))

(declare-fun m!8039220 () Bool)

(assert (=> b!7398133 m!8039220))

(assert (=> d!2288958 d!2288984))

(declare-fun d!2288986 () Bool)

(declare-fun c!1374045 () Bool)

(declare-fun e!4426334 () Bool)

(assert (=> d!2288986 (= c!1374045 e!4426334)))

(declare-fun res!2980692 () Bool)

(assert (=> d!2288986 (=> (not res!2980692) (not e!4426334))))

(assert (=> d!2288986 (= res!2980692 (is-Cons!71803 (exprs!8816 (Context!16633 (t!386484 (exprs!8816 c!10532))))))))

(declare-fun e!4426333 () (Set Context!16632))

(assert (=> d!2288986 (= (derivationStepZipperUp!2782 (Context!16633 (t!386484 (exprs!8816 c!10532))) (h!78250 s!7927)) e!4426333)))

(declare-fun call!681132 () (Set Context!16632))

(declare-fun b!7398134 () Bool)

(assert (=> b!7398134 (= e!4426333 (set.union call!681132 (derivationStepZipperUp!2782 (Context!16633 (t!386484 (exprs!8816 (Context!16633 (t!386484 (exprs!8816 c!10532)))))) (h!78250 s!7927))))))

(declare-fun b!7398135 () Bool)

(declare-fun e!4426332 () (Set Context!16632))

(assert (=> b!7398135 (= e!4426332 call!681132)))

(declare-fun b!7398136 () Bool)

(assert (=> b!7398136 (= e!4426332 (as set.empty (Set Context!16632)))))

(declare-fun b!7398137 () Bool)

(assert (=> b!7398137 (= e!4426334 (nullable!8429 (h!78251 (exprs!8816 (Context!16633 (t!386484 (exprs!8816 c!10532)))))))))

(declare-fun b!7398138 () Bool)

(assert (=> b!7398138 (= e!4426333 e!4426332)))

(declare-fun c!1374044 () Bool)

(assert (=> b!7398138 (= c!1374044 (is-Cons!71803 (exprs!8816 (Context!16633 (t!386484 (exprs!8816 c!10532))))))))

(declare-fun bm!681127 () Bool)

(assert (=> bm!681127 (= call!681132 (derivationStepZipperDown!3181 (h!78251 (exprs!8816 (Context!16633 (t!386484 (exprs!8816 c!10532))))) (Context!16633 (t!386484 (exprs!8816 (Context!16633 (t!386484 (exprs!8816 c!10532)))))) (h!78250 s!7927)))))

(assert (= (and d!2288986 res!2980692) b!7398137))

(assert (= (and d!2288986 c!1374045) b!7398134))

(assert (= (and d!2288986 (not c!1374045)) b!7398138))

(assert (= (and b!7398138 c!1374044) b!7398135))

(assert (= (and b!7398138 (not c!1374044)) b!7398136))

(assert (= (or b!7398134 b!7398135) bm!681127))

(declare-fun m!8039222 () Bool)

(assert (=> b!7398134 m!8039222))

(declare-fun m!8039224 () Bool)

(assert (=> b!7398137 m!8039224))

(declare-fun m!8039226 () Bool)

(assert (=> bm!681127 m!8039226))

(assert (=> b!7398033 d!2288986))

(declare-fun d!2288988 () Bool)

(declare-fun c!1374048 () Bool)

(assert (=> d!2288988 (= c!1374048 (is-Nil!71804 lt!2618024))))

(declare-fun e!4426337 () (Set Context!16632))

(assert (=> d!2288988 (= (content!15208 lt!2618024) e!4426337)))

(declare-fun b!7398143 () Bool)

(assert (=> b!7398143 (= e!4426337 (as set.empty (Set Context!16632)))))

(declare-fun b!7398144 () Bool)

(assert (=> b!7398144 (= e!4426337 (set.union (set.insert (h!78252 lt!2618024) (as set.empty (Set Context!16632))) (content!15208 (t!386485 lt!2618024))))))

(assert (= (and d!2288988 c!1374048) b!7398143))

(assert (= (and d!2288988 (not c!1374048)) b!7398144))

(declare-fun m!8039228 () Bool)

(assert (=> b!7398144 m!8039228))

(declare-fun m!8039230 () Bool)

(assert (=> b!7398144 m!8039230))

(assert (=> b!7398042 d!2288988))

(declare-fun d!2288990 () Bool)

(declare-fun res!2980697 () Bool)

(declare-fun e!4426342 () Bool)

(assert (=> d!2288990 (=> res!2980697 e!4426342)))

(assert (=> d!2288990 (= res!2980697 (is-Nil!71804 lt!2618024))))

(assert (=> d!2288990 (= (noDuplicate!3096 lt!2618024) e!4426342)))

(declare-fun b!7398149 () Bool)

(declare-fun e!4426343 () Bool)

(assert (=> b!7398149 (= e!4426342 e!4426343)))

(declare-fun res!2980698 () Bool)

(assert (=> b!7398149 (=> (not res!2980698) (not e!4426343))))

(declare-fun contains!20840 (List!71928 Context!16632) Bool)

(assert (=> b!7398149 (= res!2980698 (not (contains!20840 (t!386485 lt!2618024) (h!78252 lt!2618024))))))

(declare-fun b!7398150 () Bool)

(assert (=> b!7398150 (= e!4426343 (noDuplicate!3096 (t!386485 lt!2618024)))))

(assert (= (and d!2288990 (not res!2980697)) b!7398149))

(assert (= (and b!7398149 res!2980698) b!7398150))

(declare-fun m!8039232 () Bool)

(assert (=> b!7398149 m!8039232))

(declare-fun m!8039234 () Bool)

(assert (=> b!7398150 m!8039234))

(assert (=> d!2288944 d!2288990))

(declare-fun d!2288992 () Bool)

(declare-fun e!4426351 () Bool)

(assert (=> d!2288992 e!4426351))

(declare-fun res!2980704 () Bool)

(assert (=> d!2288992 (=> (not res!2980704) (not e!4426351))))

(declare-fun res!2980703 () List!71928)

(assert (=> d!2288992 (= res!2980704 (noDuplicate!3096 res!2980703))))

(declare-fun e!4426350 () Bool)

(assert (=> d!2288992 e!4426350))

(assert (=> d!2288992 (= (choose!57398 lt!2618018) res!2980703)))

(declare-fun b!7398158 () Bool)

(declare-fun e!4426352 () Bool)

(declare-fun tp!2111417 () Bool)

(assert (=> b!7398158 (= e!4426352 tp!2111417)))

(declare-fun b!7398157 () Bool)

(declare-fun tp!2111416 () Bool)

(assert (=> b!7398157 (= e!4426350 (and (inv!91802 (h!78252 res!2980703)) e!4426352 tp!2111416))))

(declare-fun b!7398159 () Bool)

(assert (=> b!7398159 (= e!4426351 (= (content!15208 res!2980703) lt!2618018))))

(assert (= b!7398157 b!7398158))

(assert (= (and d!2288992 (is-Cons!71804 res!2980703)) b!7398157))

(assert (= (and d!2288992 res!2980704) b!7398159))

(declare-fun m!8039236 () Bool)

(assert (=> d!2288992 m!8039236))

(declare-fun m!8039238 () Bool)

(assert (=> b!7398157 m!8039238))

(declare-fun m!8039240 () Bool)

(assert (=> b!7398159 m!8039240))

(assert (=> d!2288944 d!2288992))

(declare-fun d!2288994 () Bool)

(declare-fun res!2980705 () Bool)

(declare-fun e!4426353 () Bool)

(assert (=> d!2288994 (=> res!2980705 e!4426353)))

(assert (=> d!2288994 (= res!2980705 (is-Nil!71803 (exprs!8816 c!10532)))))

(assert (=> d!2288994 (= (forall!18164 (exprs!8816 c!10532) lambda!459249) e!4426353)))

(declare-fun b!7398160 () Bool)

(declare-fun e!4426354 () Bool)

(assert (=> b!7398160 (= e!4426353 e!4426354)))

(declare-fun res!2980706 () Bool)

(assert (=> b!7398160 (=> (not res!2980706) (not e!4426354))))

(assert (=> b!7398160 (= res!2980706 (dynLambda!29596 lambda!459249 (h!78251 (exprs!8816 c!10532))))))

(declare-fun b!7398161 () Bool)

(assert (=> b!7398161 (= e!4426354 (forall!18164 (t!386484 (exprs!8816 c!10532)) lambda!459249))))

(assert (= (and d!2288994 (not res!2980705)) b!7398160))

(assert (= (and b!7398160 res!2980706) b!7398161))

(declare-fun b_lambda!285749 () Bool)

(assert (=> (not b_lambda!285749) (not b!7398160)))

(declare-fun m!8039242 () Bool)

(assert (=> b!7398160 m!8039242))

(declare-fun m!8039244 () Bool)

(assert (=> b!7398161 m!8039244))

(assert (=> d!2288956 d!2288994))

(declare-fun d!2288996 () Bool)

(assert (=> d!2288996 (= (flatMap!3186 z!3451 lambda!459246) (choose!57399 z!3451 lambda!459246))))

(declare-fun bs!1923181 () Bool)

(assert (= bs!1923181 d!2288996))

(declare-fun m!8039246 () Bool)

(assert (=> bs!1923181 m!8039246))

(assert (=> d!2288940 d!2288996))

(declare-fun d!2288998 () Bool)

(assert (=> d!2288998 true))

(declare-fun setRes!56041 () Bool)

(assert (=> d!2288998 setRes!56041))

(declare-fun condSetEmpty!56041 () Bool)

(declare-fun res!2980709 () (Set Context!16632))

(assert (=> d!2288998 (= condSetEmpty!56041 (= res!2980709 (as set.empty (Set Context!16632))))))

(assert (=> d!2288998 (= (choose!57399 z!3451 lambda!459240) res!2980709)))

(declare-fun setIsEmpty!56041 () Bool)

(assert (=> setIsEmpty!56041 setRes!56041))

(declare-fun tp!2111422 () Bool)

(declare-fun setNonEmpty!56041 () Bool)

(declare-fun e!4426357 () Bool)

(declare-fun setElem!56041 () Context!16632)

(assert (=> setNonEmpty!56041 (= setRes!56041 (and tp!2111422 (inv!91802 setElem!56041) e!4426357))))

(declare-fun setRest!56041 () (Set Context!16632))

(assert (=> setNonEmpty!56041 (= res!2980709 (set.union (set.insert setElem!56041 (as set.empty (Set Context!16632))) setRest!56041))))

(declare-fun b!7398164 () Bool)

(declare-fun tp!2111423 () Bool)

(assert (=> b!7398164 (= e!4426357 tp!2111423)))

(assert (= (and d!2288998 condSetEmpty!56041) setIsEmpty!56041))

(assert (= (and d!2288998 (not condSetEmpty!56041)) setNonEmpty!56041))

(assert (= setNonEmpty!56041 b!7398164))

(declare-fun m!8039248 () Bool)

(assert (=> setNonEmpty!56041 m!8039248))

(assert (=> d!2288946 d!2288998))

(declare-fun d!2289000 () Bool)

(declare-fun nullableFct!3390 (Regex!19376) Bool)

(assert (=> d!2289000 (= (nullable!8429 (h!78251 (exprs!8816 c!10532))) (nullableFct!3390 (h!78251 (exprs!8816 c!10532))))))

(declare-fun bs!1923182 () Bool)

(assert (= bs!1923182 d!2289000))

(declare-fun m!8039250 () Bool)

(assert (=> bs!1923182 m!8039250))

(assert (=> b!7398036 d!2289000))

(declare-fun bs!1923183 () Bool)

(declare-fun d!2289002 () Bool)

(assert (= bs!1923183 (and d!2289002 d!2288956)))

(declare-fun lambda!459258 () Int)

(assert (=> bs!1923183 (= lambda!459258 lambda!459249)))

(declare-fun bs!1923184 () Bool)

(assert (= bs!1923184 (and d!2289002 d!2288958)))

(assert (=> bs!1923184 (= lambda!459258 lambda!459250)))

(assert (=> d!2289002 (= (inv!91802 setElem!56035) (forall!18164 (exprs!8816 setElem!56035) lambda!459258))))

(declare-fun bs!1923185 () Bool)

(assert (= bs!1923185 d!2289002))

(declare-fun m!8039252 () Bool)

(assert (=> bs!1923185 m!8039252))

(assert (=> setNonEmpty!56035 d!2289002))

(declare-fun b!7398165 () Bool)

(declare-fun e!4426358 () Bool)

(declare-fun tp!2111424 () Bool)

(declare-fun tp!2111425 () Bool)

(assert (=> b!7398165 (= e!4426358 (and tp!2111424 tp!2111425))))

(assert (=> b!7398058 (= tp!2111394 e!4426358)))

(assert (= (and b!7398058 (is-Cons!71803 (exprs!8816 setElem!56035))) b!7398165))

(declare-fun e!4426361 () Bool)

(assert (=> b!7398052 (= tp!2111385 e!4426361)))

(declare-fun b!7398178 () Bool)

(declare-fun tp!2111438 () Bool)

(assert (=> b!7398178 (= e!4426361 tp!2111438)))

(declare-fun b!7398177 () Bool)

(declare-fun tp!2111440 () Bool)

(declare-fun tp!2111439 () Bool)

(assert (=> b!7398177 (= e!4426361 (and tp!2111440 tp!2111439))))

(declare-fun b!7398179 () Bool)

(declare-fun tp!2111437 () Bool)

(declare-fun tp!2111436 () Bool)

(assert (=> b!7398179 (= e!4426361 (and tp!2111437 tp!2111436))))

(declare-fun b!7398176 () Bool)

(assert (=> b!7398176 (= e!4426361 tp_is_empty!49015)))

(assert (= (and b!7398052 (is-ElementMatch!19376 (h!78251 (exprs!8816 setElem!56029)))) b!7398176))

(assert (= (and b!7398052 (is-Concat!28221 (h!78251 (exprs!8816 setElem!56029)))) b!7398177))

(assert (= (and b!7398052 (is-Star!19376 (h!78251 (exprs!8816 setElem!56029)))) b!7398178))

(assert (= (and b!7398052 (is-Union!19376 (h!78251 (exprs!8816 setElem!56029)))) b!7398179))

(declare-fun b!7398180 () Bool)

(declare-fun e!4426362 () Bool)

(declare-fun tp!2111441 () Bool)

(declare-fun tp!2111442 () Bool)

(assert (=> b!7398180 (= e!4426362 (and tp!2111441 tp!2111442))))

(assert (=> b!7398052 (= tp!2111386 e!4426362)))

(assert (= (and b!7398052 (is-Cons!71803 (t!386484 (exprs!8816 setElem!56029)))) b!7398180))

(declare-fun b!7398181 () Bool)

(declare-fun e!4426363 () Bool)

(declare-fun tp!2111443 () Bool)

(assert (=> b!7398181 (= e!4426363 (and tp_is_empty!49015 tp!2111443))))

(assert (=> b!7398047 (= tp!2111380 e!4426363)))

(assert (= (and b!7398047 (is-Cons!71802 (t!386483 (t!386483 s!7927)))) b!7398181))

(declare-fun condSetEmpty!56042 () Bool)

(assert (=> setNonEmpty!56035 (= condSetEmpty!56042 (= setRest!56035 (as set.empty (Set Context!16632))))))

(declare-fun setRes!56042 () Bool)

(assert (=> setNonEmpty!56035 (= tp!2111393 setRes!56042)))

(declare-fun setIsEmpty!56042 () Bool)

(assert (=> setIsEmpty!56042 setRes!56042))

(declare-fun e!4426364 () Bool)

(declare-fun setNonEmpty!56042 () Bool)

(declare-fun setElem!56042 () Context!16632)

(declare-fun tp!2111444 () Bool)

(assert (=> setNonEmpty!56042 (= setRes!56042 (and tp!2111444 (inv!91802 setElem!56042) e!4426364))))

(declare-fun setRest!56042 () (Set Context!16632))

(assert (=> setNonEmpty!56042 (= setRest!56035 (set.union (set.insert setElem!56042 (as set.empty (Set Context!16632))) setRest!56042))))

(declare-fun b!7398182 () Bool)

(declare-fun tp!2111445 () Bool)

(assert (=> b!7398182 (= e!4426364 tp!2111445)))

(assert (= (and setNonEmpty!56035 condSetEmpty!56042) setIsEmpty!56042))

(assert (= (and setNonEmpty!56035 (not condSetEmpty!56042)) setNonEmpty!56042))

(assert (= setNonEmpty!56042 b!7398182))

(declare-fun m!8039254 () Bool)

(assert (=> setNonEmpty!56042 m!8039254))

(declare-fun e!4426365 () Bool)

(assert (=> b!7398053 (= tp!2111387 e!4426365)))

(declare-fun b!7398185 () Bool)

(declare-fun tp!2111448 () Bool)

(assert (=> b!7398185 (= e!4426365 tp!2111448)))

(declare-fun b!7398184 () Bool)

(declare-fun tp!2111450 () Bool)

(declare-fun tp!2111449 () Bool)

(assert (=> b!7398184 (= e!4426365 (and tp!2111450 tp!2111449))))

(declare-fun b!7398186 () Bool)

(declare-fun tp!2111447 () Bool)

(declare-fun tp!2111446 () Bool)

(assert (=> b!7398186 (= e!4426365 (and tp!2111447 tp!2111446))))

(declare-fun b!7398183 () Bool)

(assert (=> b!7398183 (= e!4426365 tp_is_empty!49015)))

(assert (= (and b!7398053 (is-ElementMatch!19376 (h!78251 (exprs!8816 c!10532)))) b!7398183))

(assert (= (and b!7398053 (is-Concat!28221 (h!78251 (exprs!8816 c!10532)))) b!7398184))

(assert (= (and b!7398053 (is-Star!19376 (h!78251 (exprs!8816 c!10532)))) b!7398185))

(assert (= (and b!7398053 (is-Union!19376 (h!78251 (exprs!8816 c!10532)))) b!7398186))

(declare-fun b!7398187 () Bool)

(declare-fun e!4426366 () Bool)

(declare-fun tp!2111451 () Bool)

(declare-fun tp!2111452 () Bool)

(assert (=> b!7398187 (= e!4426366 (and tp!2111451 tp!2111452))))

(assert (=> b!7398053 (= tp!2111388 e!4426366)))

(assert (= (and b!7398053 (is-Cons!71803 (t!386484 (exprs!8816 c!10532)))) b!7398187))

(declare-fun b_lambda!285751 () Bool)

(assert (= b_lambda!285749 (or d!2288956 b_lambda!285751)))

(declare-fun bs!1923186 () Bool)

(declare-fun d!2289004 () Bool)

(assert (= bs!1923186 (and d!2289004 d!2288956)))

(declare-fun validRegex!9948 (Regex!19376) Bool)

(assert (=> bs!1923186 (= (dynLambda!29596 lambda!459249 (h!78251 (exprs!8816 c!10532))) (validRegex!9948 (h!78251 (exprs!8816 c!10532))))))

(declare-fun m!8039256 () Bool)

(assert (=> bs!1923186 m!8039256))

(assert (=> b!7398160 d!2289004))

(declare-fun b_lambda!285753 () Bool)

(assert (= b_lambda!285747 (or d!2288958 b_lambda!285753)))

(declare-fun bs!1923187 () Bool)

(declare-fun d!2289006 () Bool)

(assert (= bs!1923187 (and d!2289006 d!2288958)))

(assert (=> bs!1923187 (= (dynLambda!29596 lambda!459250 (h!78251 (exprs!8816 setElem!56029))) (validRegex!9948 (h!78251 (exprs!8816 setElem!56029))))))

(declare-fun m!8039258 () Bool)

(assert (=> bs!1923187 m!8039258))

(assert (=> b!7398132 d!2289006))

(push 1)

(assert (not b!7398126))

(assert (not b!7398137))

(assert (not b!7398134))

(assert (not b!7398133))

(assert (not b_lambda!285753))

(assert (not b!7398187))

(assert (not d!2289000))

(assert (not b!7398144))

(assert (not b!7398178))

(assert (not b!7398158))

(assert tp_is_empty!49015)

(assert (not bm!681124))

(assert (not b_lambda!285751))

(assert (not d!2289002))

(assert (not setNonEmpty!56042))

(assert (not b!7398164))

(assert (not bm!681127))

(assert (not b!7398181))

(assert (not b!7398179))

(assert (not bs!1923186))

(assert (not d!2288996))

(assert (not b!7398150))

(assert (not bm!681121))

(assert (not b!7398180))

(assert (not bm!681126))

(assert (not b!7398165))

(assert (not b!7398184))

(assert (not b!7398185))

(assert (not b!7398186))

(assert (not b!7398149))

(assert (not b!7398177))

(assert (not setNonEmpty!56041))

(assert (not b!7398161))

(assert (not bs!1923187))

(assert (not b!7398182))

(assert (not b!7398159))

(assert (not d!2288992))

(assert (not b!7398157))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

