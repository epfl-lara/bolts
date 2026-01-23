; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!721348 () Bool)

(assert start!721348)

(declare-fun b!7407036 () Bool)

(assert (=> b!7407036 true))

(declare-fun b!7407034 () Bool)

(declare-fun res!2982145 () Bool)

(declare-fun e!4430105 () Bool)

(assert (=> b!7407034 (=> (not res!2982145) (not e!4430105))))

(declare-datatypes ((C!39062 0))(
  ( (C!39063 (val!29905 Int)) )
))
(declare-datatypes ((List!71971 0))(
  ( (Nil!71847) (Cons!71847 (h!78295 C!39062) (t!386530 List!71971)) )
))
(declare-fun s!7927 () List!71971)

(declare-fun a!2228 () C!39062)

(assert (=> b!7407034 (= res!2982145 (and (is-Cons!71847 s!7927) (= (h!78295 s!7927) a!2228)))))

(declare-fun res!2982147 () Bool)

(assert (=> start!721348 (=> (not res!2982147) (not e!4430105))))

(declare-datatypes ((Regex!19394 0))(
  ( (ElementMatch!19394 (c!1374779 C!39062)) (Concat!28239 (regOne!39300 Regex!19394) (regTwo!39300 Regex!19394)) (EmptyExpr!19394) (Star!19394 (reg!19723 Regex!19394)) (EmptyLang!19394) (Union!19394 (regOne!39301 Regex!19394) (regTwo!39301 Regex!19394)) )
))
(declare-datatypes ((List!71972 0))(
  ( (Nil!71848) (Cons!71848 (h!78296 Regex!19394) (t!386531 List!71972)) )
))
(declare-datatypes ((Context!16668 0))(
  ( (Context!16669 (exprs!8834 List!71972)) )
))
(declare-fun z!3451 () (Set Context!16668))

(declare-fun c!10532 () Context!16668)

(assert (=> start!721348 (= res!2982147 (= z!3451 (set.insert c!10532 (as set.empty (Set Context!16668)))))))

(assert (=> start!721348 e!4430105))

(declare-fun condSetEmpty!56166 () Bool)

(assert (=> start!721348 (= condSetEmpty!56166 (= z!3451 (as set.empty (Set Context!16668))))))

(declare-fun setRes!56166 () Bool)

(assert (=> start!721348 setRes!56166))

(declare-fun e!4430109 () Bool)

(declare-fun inv!91847 (Context!16668) Bool)

(assert (=> start!721348 (and (inv!91847 c!10532) e!4430109)))

(declare-fun tp_is_empty!49051 () Bool)

(assert (=> start!721348 tp_is_empty!49051))

(declare-fun e!4430107 () Bool)

(assert (=> start!721348 e!4430107))

(declare-fun setIsEmpty!56166 () Bool)

(assert (=> setIsEmpty!56166 setRes!56166))

(declare-fun b!7407035 () Bool)

(declare-fun e!4430110 () Bool)

(declare-fun tp!2118971 () Bool)

(assert (=> b!7407035 (= e!4430110 tp!2118971)))

(declare-fun e!4430106 () Bool)

(declare-fun e!4430104 () Bool)

(assert (=> b!7407036 (= e!4430106 (not e!4430104))))

(declare-fun res!2982146 () Bool)

(assert (=> b!7407036 (=> res!2982146 e!4430104)))

(declare-fun lt!2618180 () C!39062)

(declare-fun lt!2618179 () Context!16668)

(declare-fun derivationStepZipper!3668 ((Set Context!16668) C!39062) (Set Context!16668))

(assert (=> b!7407036 (= res!2982146 (not (set.member lt!2618179 (derivationStepZipper!3668 z!3451 lt!2618180))))))

(declare-fun empty!3523 () Context!16668)

(declare-fun lambda!459442 () Int)

(declare-fun flatMapPost!201 ((Set Context!16668) Int Context!16668) Context!16668)

(assert (=> b!7407036 (= (flatMapPost!201 z!3451 lambda!459442 lt!2618179) empty!3523)))

(assert (=> b!7407036 true))

(assert (=> b!7407036 (and (inv!91847 empty!3523) e!4430110)))

(declare-fun b!7407037 () Bool)

(declare-fun res!2982148 () Bool)

(assert (=> b!7407037 (=> (not res!2982148) (not e!4430105))))

(declare-fun head!15172 (List!71972) Regex!19394)

(assert (=> b!7407037 (= res!2982148 (= (head!15172 (exprs!8834 c!10532)) (ElementMatch!19394 a!2228)))))

(declare-fun e!4430108 () Bool)

(declare-fun setNonEmpty!56166 () Bool)

(declare-fun tp!2118970 () Bool)

(declare-fun setElem!56166 () Context!16668)

(assert (=> setNonEmpty!56166 (= setRes!56166 (and tp!2118970 (inv!91847 setElem!56166) e!4430108))))

(declare-fun setRest!56166 () (Set Context!16668))

(assert (=> setNonEmpty!56166 (= z!3451 (set.union (set.insert setElem!56166 (as set.empty (Set Context!16668))) setRest!56166))))

(declare-fun b!7407038 () Bool)

(assert (=> b!7407038 (= e!4430105 e!4430106)))

(declare-fun res!2982143 () Bool)

(assert (=> b!7407038 (=> (not res!2982143) (not e!4430106))))

(declare-fun derivationStepZipperUp!2798 (Context!16668 C!39062) (Set Context!16668))

(assert (=> b!7407038 (= res!2982143 (= (derivationStepZipperUp!2798 c!10532 lt!2618180) (set.insert lt!2618179 (as set.empty (Set Context!16668)))))))

(assert (=> b!7407038 (= lt!2618179 (Context!16669 Nil!71848))))

(declare-fun head!15173 (List!71971) C!39062)

(assert (=> b!7407038 (= lt!2618180 (head!15173 s!7927))))

(declare-fun b!7407039 () Bool)

(declare-fun tp!2118972 () Bool)

(assert (=> b!7407039 (= e!4430108 tp!2118972)))

(declare-fun b!7407040 () Bool)

(declare-fun res!2982149 () Bool)

(assert (=> b!7407040 (=> (not res!2982149) (not e!4430105))))

(declare-fun isEmpty!41034 (List!71972) Bool)

(declare-fun tail!14801 (List!71972) List!71972)

(assert (=> b!7407040 (= res!2982149 (isEmpty!41034 (tail!14801 (exprs!8834 c!10532))))))

(declare-fun b!7407041 () Bool)

(assert (=> b!7407041 (= e!4430104 (inv!91847 lt!2618179))))

(declare-fun b!7407042 () Bool)

(declare-fun tp!2118973 () Bool)

(assert (=> b!7407042 (= e!4430107 (and tp_is_empty!49051 tp!2118973))))

(declare-fun b!7407043 () Bool)

(declare-fun tp!2118974 () Bool)

(assert (=> b!7407043 (= e!4430109 tp!2118974)))

(declare-fun b!7407044 () Bool)

(declare-fun res!2982144 () Bool)

(assert (=> b!7407044 (=> (not res!2982144) (not e!4430105))))

(assert (=> b!7407044 (= res!2982144 (not (isEmpty!41034 (exprs!8834 c!10532))))))

(assert (= (and start!721348 res!2982147) b!7407044))

(assert (= (and b!7407044 res!2982144) b!7407037))

(assert (= (and b!7407037 res!2982148) b!7407040))

(assert (= (and b!7407040 res!2982149) b!7407034))

(assert (= (and b!7407034 res!2982145) b!7407038))

(assert (= (and b!7407038 res!2982143) b!7407036))

(assert (= b!7407036 b!7407035))

(assert (= (and b!7407036 (not res!2982146)) b!7407041))

(assert (= (and start!721348 condSetEmpty!56166) setIsEmpty!56166))

(assert (= (and start!721348 (not condSetEmpty!56166)) setNonEmpty!56166))

(assert (= setNonEmpty!56166 b!7407039))

(assert (= start!721348 b!7407043))

(assert (= (and start!721348 (is-Cons!71847 s!7927)) b!7407042))

(declare-fun m!8042468 () Bool)

(assert (=> b!7407041 m!8042468))

(declare-fun m!8042470 () Bool)

(assert (=> start!721348 m!8042470))

(declare-fun m!8042472 () Bool)

(assert (=> start!721348 m!8042472))

(declare-fun m!8042474 () Bool)

(assert (=> b!7407037 m!8042474))

(declare-fun m!8042476 () Bool)

(assert (=> b!7407040 m!8042476))

(assert (=> b!7407040 m!8042476))

(declare-fun m!8042478 () Bool)

(assert (=> b!7407040 m!8042478))

(declare-fun m!8042480 () Bool)

(assert (=> b!7407038 m!8042480))

(declare-fun m!8042482 () Bool)

(assert (=> b!7407038 m!8042482))

(declare-fun m!8042484 () Bool)

(assert (=> b!7407038 m!8042484))

(declare-fun m!8042486 () Bool)

(assert (=> b!7407036 m!8042486))

(declare-fun m!8042488 () Bool)

(assert (=> b!7407036 m!8042488))

(declare-fun m!8042490 () Bool)

(assert (=> b!7407036 m!8042490))

(declare-fun m!8042492 () Bool)

(assert (=> b!7407036 m!8042492))

(declare-fun m!8042494 () Bool)

(assert (=> setNonEmpty!56166 m!8042494))

(declare-fun m!8042496 () Bool)

(assert (=> b!7407044 m!8042496))

(push 1)

(assert (not b!7407043))

(assert (not b!7407037))

(assert (not b!7407044))

(assert (not b!7407036))

(assert (not b!7407039))

(assert (not b!7407042))

(assert (not b!7407038))

(assert (not b!7407041))

(assert tp_is_empty!49051)

(assert (not b!7407035))

(assert (not setNonEmpty!56166))

(assert (not start!721348))

(assert (not b!7407040))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2290497 () Bool)

(declare-fun lambda!459448 () Int)

(declare-fun forall!18179 (List!71972 Int) Bool)

(assert (=> d!2290497 (= (inv!91847 setElem!56166) (forall!18179 (exprs!8834 setElem!56166) lambda!459448))))

(declare-fun bs!1923877 () Bool)

(assert (= bs!1923877 d!2290497))

(declare-fun m!8042528 () Bool)

(assert (=> bs!1923877 m!8042528))

(assert (=> setNonEmpty!56166 d!2290497))

(declare-fun bs!1923878 () Bool)

(declare-fun d!2290501 () Bool)

(assert (= bs!1923878 (and d!2290501 d!2290497)))

(declare-fun lambda!459449 () Int)

(assert (=> bs!1923878 (= lambda!459449 lambda!459448)))

(assert (=> d!2290501 (= (inv!91847 c!10532) (forall!18179 (exprs!8834 c!10532) lambda!459449))))

(declare-fun bs!1923879 () Bool)

(assert (= bs!1923879 d!2290501))

(declare-fun m!8042530 () Bool)

(assert (=> bs!1923879 m!8042530))

(assert (=> start!721348 d!2290501))

(declare-fun d!2290503 () Bool)

(assert (=> d!2290503 (= (isEmpty!41034 (exprs!8834 c!10532)) (is-Nil!71848 (exprs!8834 c!10532)))))

(assert (=> b!7407044 d!2290503))

(declare-fun bm!681931 () Bool)

(declare-fun call!681936 () (Set Context!16668))

(declare-fun derivationStepZipperDown!3192 (Regex!19394 Context!16668 C!39062) (Set Context!16668))

(assert (=> bm!681931 (= call!681936 (derivationStepZipperDown!3192 (h!78296 (exprs!8834 c!10532)) (Context!16669 (t!386531 (exprs!8834 c!10532))) lt!2618180))))

(declare-fun b!7407092 () Bool)

(declare-fun e!4430138 () Bool)

(declare-fun nullable!8440 (Regex!19394) Bool)

(assert (=> b!7407092 (= e!4430138 (nullable!8440 (h!78296 (exprs!8834 c!10532))))))

(declare-fun e!4430139 () (Set Context!16668))

(declare-fun b!7407093 () Bool)

(assert (=> b!7407093 (= e!4430139 (set.union call!681936 (derivationStepZipperUp!2798 (Context!16669 (t!386531 (exprs!8834 c!10532))) lt!2618180)))))

(declare-fun d!2290505 () Bool)

(declare-fun c!1374788 () Bool)

(assert (=> d!2290505 (= c!1374788 e!4430138)))

(declare-fun res!2982173 () Bool)

(assert (=> d!2290505 (=> (not res!2982173) (not e!4430138))))

(assert (=> d!2290505 (= res!2982173 (is-Cons!71848 (exprs!8834 c!10532)))))

(assert (=> d!2290505 (= (derivationStepZipperUp!2798 c!10532 lt!2618180) e!4430139)))

(declare-fun b!7407094 () Bool)

(declare-fun e!4430140 () (Set Context!16668))

(assert (=> b!7407094 (= e!4430139 e!4430140)))

(declare-fun c!1374787 () Bool)

(assert (=> b!7407094 (= c!1374787 (is-Cons!71848 (exprs!8834 c!10532)))))

(declare-fun b!7407095 () Bool)

(assert (=> b!7407095 (= e!4430140 call!681936)))

(declare-fun b!7407096 () Bool)

(assert (=> b!7407096 (= e!4430140 (as set.empty (Set Context!16668)))))

(assert (= (and d!2290505 res!2982173) b!7407092))

(assert (= (and d!2290505 c!1374788) b!7407093))

(assert (= (and d!2290505 (not c!1374788)) b!7407094))

(assert (= (and b!7407094 c!1374787) b!7407095))

(assert (= (and b!7407094 (not c!1374787)) b!7407096))

(assert (= (or b!7407093 b!7407095) bm!681931))

(declare-fun m!8042532 () Bool)

(assert (=> bm!681931 m!8042532))

(declare-fun m!8042534 () Bool)

(assert (=> b!7407092 m!8042534))

(declare-fun m!8042536 () Bool)

(assert (=> b!7407093 m!8042536))

(assert (=> b!7407038 d!2290505))

(declare-fun d!2290507 () Bool)

(assert (=> d!2290507 (= (head!15173 s!7927) (h!78295 s!7927))))

(assert (=> b!7407038 d!2290507))

(declare-fun d!2290509 () Bool)

(assert (=> d!2290509 (= (isEmpty!41034 (tail!14801 (exprs!8834 c!10532))) (is-Nil!71848 (tail!14801 (exprs!8834 c!10532))))))

(assert (=> b!7407040 d!2290509))

(declare-fun d!2290511 () Bool)

(assert (=> d!2290511 (= (tail!14801 (exprs!8834 c!10532)) (t!386531 (exprs!8834 c!10532)))))

(assert (=> b!7407040 d!2290511))

(declare-fun d!2290513 () Bool)

(assert (=> d!2290513 (= (head!15172 (exprs!8834 c!10532)) (h!78296 (exprs!8834 c!10532)))))

(assert (=> b!7407037 d!2290513))

(declare-fun bs!1923880 () Bool)

(declare-fun d!2290515 () Bool)

(assert (= bs!1923880 (and d!2290515 d!2290497)))

(declare-fun lambda!459452 () Int)

(assert (=> bs!1923880 (= lambda!459452 lambda!459448)))

(declare-fun bs!1923881 () Bool)

(assert (= bs!1923881 (and d!2290515 d!2290501)))

(assert (=> bs!1923881 (= lambda!459452 lambda!459449)))

(assert (=> d!2290515 (= (inv!91847 lt!2618179) (forall!18179 (exprs!8834 lt!2618179) lambda!459452))))

(declare-fun bs!1923882 () Bool)

(assert (= bs!1923882 d!2290515))

(declare-fun m!8042538 () Bool)

(assert (=> bs!1923882 m!8042538))

(assert (=> b!7407041 d!2290515))

(declare-fun bs!1923884 () Bool)

(declare-fun d!2290517 () Bool)

(assert (= bs!1923884 (and d!2290517 b!7407036)))

(declare-fun lambda!459456 () Int)

(assert (=> bs!1923884 (= (= lt!2618180 a!2228) (= lambda!459456 lambda!459442))))

(assert (=> d!2290517 true))

(declare-fun flatMap!3196 ((Set Context!16668) Int) (Set Context!16668))

(assert (=> d!2290517 (= (derivationStepZipper!3668 z!3451 lt!2618180) (flatMap!3196 z!3451 lambda!459456))))

(declare-fun bs!1923885 () Bool)

(assert (= bs!1923885 d!2290517))

(declare-fun m!8042542 () Bool)

(assert (=> bs!1923885 m!8042542))

(assert (=> b!7407036 d!2290517))

(declare-fun d!2290521 () Bool)

(assert (=> d!2290521 true))

(assert (=> d!2290521 true))

(declare-fun lambda!459462 () Int)

(declare-fun order!29473 () Int)

(declare-fun order!29475 () Int)

(declare-fun dynLambda!29618 (Int Int) Int)

(declare-fun dynLambda!29619 (Int Int) Int)

(assert (=> d!2290521 (< (dynLambda!29618 order!29473 lambda!459442) (dynLambda!29619 order!29475 lambda!459462))))

(declare-fun exists!4751 ((Set Context!16668) Int) Bool)

(assert (=> d!2290521 (= (set.member lt!2618179 (flatMap!3196 z!3451 lambda!459442)) (exists!4751 z!3451 lambda!459462))))

(declare-fun lt!2618189 () Context!16668)

(declare-fun choose!57416 ((Set Context!16668) Int Context!16668) Context!16668)

(assert (=> d!2290521 (= lt!2618189 (choose!57416 z!3451 lambda!459442 lt!2618179))))

(assert (=> d!2290521 (= (flatMapPost!201 z!3451 lambda!459442 lt!2618179) lt!2618189)))

(declare-fun bs!1923888 () Bool)

(assert (= bs!1923888 d!2290521))

(declare-fun m!8042546 () Bool)

(assert (=> bs!1923888 m!8042546))

(declare-fun m!8042548 () Bool)

(assert (=> bs!1923888 m!8042548))

(declare-fun m!8042550 () Bool)

(assert (=> bs!1923888 m!8042550))

(declare-fun m!8042552 () Bool)

(assert (=> bs!1923888 m!8042552))

(assert (=> b!7407036 d!2290521))

(declare-fun bs!1923889 () Bool)

(declare-fun d!2290525 () Bool)

(assert (= bs!1923889 (and d!2290525 d!2290497)))

(declare-fun lambda!459463 () Int)

(assert (=> bs!1923889 (= lambda!459463 lambda!459448)))

(declare-fun bs!1923890 () Bool)

(assert (= bs!1923890 (and d!2290525 d!2290501)))

(assert (=> bs!1923890 (= lambda!459463 lambda!459449)))

(declare-fun bs!1923891 () Bool)

(assert (= bs!1923891 (and d!2290525 d!2290515)))

(assert (=> bs!1923891 (= lambda!459463 lambda!459452)))

(assert (=> d!2290525 (= (inv!91847 empty!3523) (forall!18179 (exprs!8834 empty!3523) lambda!459463))))

(declare-fun bs!1923892 () Bool)

(assert (= bs!1923892 d!2290525))

(declare-fun m!8042554 () Bool)

(assert (=> bs!1923892 m!8042554))

(assert (=> b!7407036 d!2290525))

(declare-fun condSetEmpty!56172 () Bool)

(assert (=> setNonEmpty!56166 (= condSetEmpty!56172 (= setRest!56166 (as set.empty (Set Context!16668))))))

(declare-fun setRes!56172 () Bool)

(assert (=> setNonEmpty!56166 (= tp!2118970 setRes!56172)))

(declare-fun setIsEmpty!56172 () Bool)

(assert (=> setIsEmpty!56172 setRes!56172))

(declare-fun tp!2118994 () Bool)

(declare-fun e!4430143 () Bool)

(declare-fun setNonEmpty!56172 () Bool)

(declare-fun setElem!56172 () Context!16668)

(assert (=> setNonEmpty!56172 (= setRes!56172 (and tp!2118994 (inv!91847 setElem!56172) e!4430143))))

(declare-fun setRest!56172 () (Set Context!16668))

(assert (=> setNonEmpty!56172 (= setRest!56166 (set.union (set.insert setElem!56172 (as set.empty (Set Context!16668))) setRest!56172))))

(declare-fun b!7407106 () Bool)

(declare-fun tp!2118995 () Bool)

(assert (=> b!7407106 (= e!4430143 tp!2118995)))

(assert (= (and setNonEmpty!56166 condSetEmpty!56172) setIsEmpty!56172))

(assert (= (and setNonEmpty!56166 (not condSetEmpty!56172)) setNonEmpty!56172))

(assert (= setNonEmpty!56172 b!7407106))

(declare-fun m!8042556 () Bool)

(assert (=> setNonEmpty!56172 m!8042556))

(declare-fun b!7407111 () Bool)

(declare-fun e!4430146 () Bool)

(declare-fun tp!2118998 () Bool)

(assert (=> b!7407111 (= e!4430146 (and tp_is_empty!49051 tp!2118998))))

(assert (=> b!7407042 (= tp!2118973 e!4430146)))

(assert (= (and b!7407042 (is-Cons!71847 (t!386530 s!7927))) b!7407111))

(declare-fun b!7407116 () Bool)

(declare-fun e!4430149 () Bool)

(declare-fun tp!2119003 () Bool)

(declare-fun tp!2119004 () Bool)

(assert (=> b!7407116 (= e!4430149 (and tp!2119003 tp!2119004))))

(assert (=> b!7407043 (= tp!2118974 e!4430149)))

(assert (= (and b!7407043 (is-Cons!71848 (exprs!8834 c!10532))) b!7407116))

(declare-fun b!7407117 () Bool)

(declare-fun e!4430150 () Bool)

(declare-fun tp!2119005 () Bool)

(declare-fun tp!2119006 () Bool)

(assert (=> b!7407117 (= e!4430150 (and tp!2119005 tp!2119006))))

(assert (=> b!7407035 (= tp!2118971 e!4430150)))

(assert (= (and b!7407035 (is-Cons!71848 (exprs!8834 empty!3523))) b!7407117))

(declare-fun b!7407118 () Bool)

(declare-fun e!4430151 () Bool)

(declare-fun tp!2119007 () Bool)

(declare-fun tp!2119008 () Bool)

(assert (=> b!7407118 (= e!4430151 (and tp!2119007 tp!2119008))))

(assert (=> b!7407039 (= tp!2118972 e!4430151)))

(assert (= (and b!7407039 (is-Cons!71848 (exprs!8834 setElem!56166))) b!7407118))

(push 1)

(assert (not d!2290501))

(assert (not d!2290515))

(assert (not b!7407092))

(assert (not d!2290525))

(assert (not b!7407093))

(assert (not d!2290497))

(assert (not b!7407106))

(assert (not d!2290521))

(assert (not b!7407118))

(assert (not d!2290517))

(assert (not b!7407116))

(assert (not setNonEmpty!56172))

(assert tp_is_empty!49051)

(assert (not b!7407117))

(assert (not bm!681931))

(assert (not b!7407111))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bm!681935 () Bool)

(declare-fun call!681940 () (Set Context!16668))

(assert (=> bm!681935 (= call!681940 (derivationStepZipperDown!3192 (h!78296 (exprs!8834 (Context!16669 (t!386531 (exprs!8834 c!10532))))) (Context!16669 (t!386531 (exprs!8834 (Context!16669 (t!386531 (exprs!8834 c!10532)))))) lt!2618180))))

(declare-fun b!7407156 () Bool)

(declare-fun e!4430172 () Bool)

(assert (=> b!7407156 (= e!4430172 (nullable!8440 (h!78296 (exprs!8834 (Context!16669 (t!386531 (exprs!8834 c!10532)))))))))

(declare-fun b!7407157 () Bool)

(declare-fun e!4430173 () (Set Context!16668))

(assert (=> b!7407157 (= e!4430173 (set.union call!681940 (derivationStepZipperUp!2798 (Context!16669 (t!386531 (exprs!8834 (Context!16669 (t!386531 (exprs!8834 c!10532)))))) lt!2618180)))))

(declare-fun d!2290545 () Bool)

(declare-fun c!1374800 () Bool)

(assert (=> d!2290545 (= c!1374800 e!4430172)))

(declare-fun res!2982177 () Bool)

(assert (=> d!2290545 (=> (not res!2982177) (not e!4430172))))

(assert (=> d!2290545 (= res!2982177 (is-Cons!71848 (exprs!8834 (Context!16669 (t!386531 (exprs!8834 c!10532))))))))

(assert (=> d!2290545 (= (derivationStepZipperUp!2798 (Context!16669 (t!386531 (exprs!8834 c!10532))) lt!2618180) e!4430173)))

(declare-fun b!7407158 () Bool)

(declare-fun e!4430174 () (Set Context!16668))

(assert (=> b!7407158 (= e!4430173 e!4430174)))

(declare-fun c!1374799 () Bool)

(assert (=> b!7407158 (= c!1374799 (is-Cons!71848 (exprs!8834 (Context!16669 (t!386531 (exprs!8834 c!10532))))))))

(declare-fun b!7407159 () Bool)

(assert (=> b!7407159 (= e!4430174 call!681940)))

(declare-fun b!7407160 () Bool)

(assert (=> b!7407160 (= e!4430174 (as set.empty (Set Context!16668)))))

(assert (= (and d!2290545 res!2982177) b!7407156))

(assert (= (and d!2290545 c!1374800) b!7407157))

(assert (= (and d!2290545 (not c!1374800)) b!7407158))

(assert (= (and b!7407158 c!1374799) b!7407159))

(assert (= (and b!7407158 (not c!1374799)) b!7407160))

(assert (= (or b!7407157 b!7407159) bm!681935))

(declare-fun m!8042580 () Bool)

(assert (=> bm!681935 m!8042580))

(declare-fun m!8042582 () Bool)

(assert (=> b!7407156 m!8042582))

(declare-fun m!8042584 () Bool)

(assert (=> b!7407157 m!8042584))

(assert (=> b!7407093 d!2290545))

(declare-fun d!2290547 () Bool)

(declare-fun choose!57418 ((Set Context!16668) Int) (Set Context!16668))

(assert (=> d!2290547 (= (flatMap!3196 z!3451 lambda!459442) (choose!57418 z!3451 lambda!459442))))

(declare-fun bs!1923903 () Bool)

(assert (= bs!1923903 d!2290547))

(declare-fun m!8042586 () Bool)

(assert (=> bs!1923903 m!8042586))

(assert (=> d!2290521 d!2290547))

(declare-fun d!2290549 () Bool)

(declare-fun lt!2618195 () Bool)

(declare-datatypes ((List!71975 0))(
  ( (Nil!71851) (Cons!71851 (h!78299 Context!16668) (t!386534 List!71975)) )
))
(declare-fun exists!4753 (List!71975 Int) Bool)

(declare-fun toList!11748 ((Set Context!16668)) List!71975)

(assert (=> d!2290549 (= lt!2618195 (exists!4753 (toList!11748 z!3451) lambda!459462))))

(declare-fun choose!57419 ((Set Context!16668) Int) Bool)

(assert (=> d!2290549 (= lt!2618195 (choose!57419 z!3451 lambda!459462))))

(assert (=> d!2290549 (= (exists!4751 z!3451 lambda!459462) lt!2618195)))

(declare-fun bs!1923904 () Bool)

(assert (= bs!1923904 d!2290549))

(declare-fun m!8042588 () Bool)

(assert (=> bs!1923904 m!8042588))

(assert (=> bs!1923904 m!8042588))

(declare-fun m!8042590 () Bool)

(assert (=> bs!1923904 m!8042590))

(declare-fun m!8042592 () Bool)

(assert (=> bs!1923904 m!8042592))

(assert (=> d!2290521 d!2290549))

(declare-fun bs!1923905 () Bool)

(declare-fun d!2290551 () Bool)

(assert (= bs!1923905 (and d!2290551 d!2290521)))

(declare-fun lambda!459472 () Int)

(assert (=> bs!1923905 (= lambda!459472 lambda!459462)))

(assert (=> d!2290551 true))

(assert (=> d!2290551 true))

(assert (=> d!2290551 (< (dynLambda!29618 order!29473 lambda!459442) (dynLambda!29619 order!29475 lambda!459472))))

(assert (=> d!2290551 (= (set.member lt!2618179 (flatMap!3196 z!3451 lambda!459442)) (exists!4751 z!3451 lambda!459472))))

(declare-fun _$3!536 () Context!16668)

(declare-fun e!4430177 () Bool)

(assert (=> d!2290551 (and (inv!91847 _$3!536) e!4430177)))

(assert (=> d!2290551 (= (choose!57416 z!3451 lambda!459442 lt!2618179) _$3!536)))

(declare-fun b!7407164 () Bool)

(declare-fun tp!2119030 () Bool)

(assert (=> b!7407164 (= e!4430177 tp!2119030)))

(assert (= d!2290551 b!7407164))

(assert (=> d!2290551 m!8042546))

(assert (=> d!2290551 m!8042548))

(declare-fun m!8042594 () Bool)

(assert (=> d!2290551 m!8042594))

(declare-fun m!8042596 () Bool)

(assert (=> d!2290551 m!8042596))

(assert (=> d!2290521 d!2290551))

(declare-fun d!2290553 () Bool)

(declare-fun res!2982182 () Bool)

(declare-fun e!4430182 () Bool)

(assert (=> d!2290553 (=> res!2982182 e!4430182)))

(assert (=> d!2290553 (= res!2982182 (is-Nil!71848 (exprs!8834 setElem!56166)))))

(assert (=> d!2290553 (= (forall!18179 (exprs!8834 setElem!56166) lambda!459448) e!4430182)))

(declare-fun b!7407169 () Bool)

(declare-fun e!4430183 () Bool)

(assert (=> b!7407169 (= e!4430182 e!4430183)))

(declare-fun res!2982183 () Bool)

(assert (=> b!7407169 (=> (not res!2982183) (not e!4430183))))

(declare-fun dynLambda!29622 (Int Regex!19394) Bool)

(assert (=> b!7407169 (= res!2982183 (dynLambda!29622 lambda!459448 (h!78296 (exprs!8834 setElem!56166))))))

(declare-fun b!7407170 () Bool)

(assert (=> b!7407170 (= e!4430183 (forall!18179 (t!386531 (exprs!8834 setElem!56166)) lambda!459448))))

(assert (= (and d!2290553 (not res!2982182)) b!7407169))

(assert (= (and b!7407169 res!2982183) b!7407170))

(declare-fun b_lambda!286163 () Bool)

(assert (=> (not b_lambda!286163) (not b!7407169)))

(declare-fun m!8042598 () Bool)

(assert (=> b!7407169 m!8042598))

(declare-fun m!8042600 () Bool)

(assert (=> b!7407170 m!8042600))

(assert (=> d!2290497 d!2290553))

(declare-fun d!2290555 () Bool)

(assert (=> d!2290555 (= (flatMap!3196 z!3451 lambda!459456) (choose!57418 z!3451 lambda!459456))))

(declare-fun bs!1923906 () Bool)

(assert (= bs!1923906 d!2290555))

(declare-fun m!8042602 () Bool)

(assert (=> bs!1923906 m!8042602))

(assert (=> d!2290517 d!2290555))

(declare-fun d!2290557 () Bool)

(declare-fun nullableFct!3397 (Regex!19394) Bool)

(assert (=> d!2290557 (= (nullable!8440 (h!78296 (exprs!8834 c!10532))) (nullableFct!3397 (h!78296 (exprs!8834 c!10532))))))

(declare-fun bs!1923907 () Bool)

(assert (= bs!1923907 d!2290557))

(declare-fun m!8042604 () Bool)

(assert (=> bs!1923907 m!8042604))

(assert (=> b!7407092 d!2290557))

(declare-fun d!2290559 () Bool)

(declare-fun res!2982184 () Bool)

(declare-fun e!4430184 () Bool)

(assert (=> d!2290559 (=> res!2982184 e!4430184)))

(assert (=> d!2290559 (= res!2982184 (is-Nil!71848 (exprs!8834 c!10532)))))

(assert (=> d!2290559 (= (forall!18179 (exprs!8834 c!10532) lambda!459449) e!4430184)))

(declare-fun b!7407171 () Bool)

(declare-fun e!4430185 () Bool)

(assert (=> b!7407171 (= e!4430184 e!4430185)))

(declare-fun res!2982185 () Bool)

(assert (=> b!7407171 (=> (not res!2982185) (not e!4430185))))

(assert (=> b!7407171 (= res!2982185 (dynLambda!29622 lambda!459449 (h!78296 (exprs!8834 c!10532))))))

(declare-fun b!7407172 () Bool)

(assert (=> b!7407172 (= e!4430185 (forall!18179 (t!386531 (exprs!8834 c!10532)) lambda!459449))))

(assert (= (and d!2290559 (not res!2982184)) b!7407171))

(assert (= (and b!7407171 res!2982185) b!7407172))

(declare-fun b_lambda!286165 () Bool)

(assert (=> (not b_lambda!286165) (not b!7407171)))

(declare-fun m!8042606 () Bool)

(assert (=> b!7407171 m!8042606))

(declare-fun m!8042608 () Bool)

(assert (=> b!7407172 m!8042608))

(assert (=> d!2290501 d!2290559))

(declare-fun bs!1923908 () Bool)

(declare-fun d!2290561 () Bool)

(assert (= bs!1923908 (and d!2290561 d!2290497)))

(declare-fun lambda!459473 () Int)

(assert (=> bs!1923908 (= lambda!459473 lambda!459448)))

(declare-fun bs!1923909 () Bool)

(assert (= bs!1923909 (and d!2290561 d!2290501)))

(assert (=> bs!1923909 (= lambda!459473 lambda!459449)))

(declare-fun bs!1923910 () Bool)

(assert (= bs!1923910 (and d!2290561 d!2290515)))

(assert (=> bs!1923910 (= lambda!459473 lambda!459452)))

(declare-fun bs!1923911 () Bool)

(assert (= bs!1923911 (and d!2290561 d!2290525)))

(assert (=> bs!1923911 (= lambda!459473 lambda!459463)))

(assert (=> d!2290561 (= (inv!91847 setElem!56172) (forall!18179 (exprs!8834 setElem!56172) lambda!459473))))

(declare-fun bs!1923912 () Bool)

(assert (= bs!1923912 d!2290561))

(declare-fun m!8042610 () Bool)

(assert (=> bs!1923912 m!8042610))

(assert (=> setNonEmpty!56172 d!2290561))

(declare-fun d!2290563 () Bool)

(declare-fun res!2982186 () Bool)

(declare-fun e!4430186 () Bool)

(assert (=> d!2290563 (=> res!2982186 e!4430186)))

(assert (=> d!2290563 (= res!2982186 (is-Nil!71848 (exprs!8834 lt!2618179)))))

(assert (=> d!2290563 (= (forall!18179 (exprs!8834 lt!2618179) lambda!459452) e!4430186)))

(declare-fun b!7407173 () Bool)

(declare-fun e!4430187 () Bool)

(assert (=> b!7407173 (= e!4430186 e!4430187)))

(declare-fun res!2982187 () Bool)

(assert (=> b!7407173 (=> (not res!2982187) (not e!4430187))))

(assert (=> b!7407173 (= res!2982187 (dynLambda!29622 lambda!459452 (h!78296 (exprs!8834 lt!2618179))))))

(declare-fun b!7407174 () Bool)

(assert (=> b!7407174 (= e!4430187 (forall!18179 (t!386531 (exprs!8834 lt!2618179)) lambda!459452))))

(assert (= (and d!2290563 (not res!2982186)) b!7407173))

(assert (= (and b!7407173 res!2982187) b!7407174))

(declare-fun b_lambda!286167 () Bool)

(assert (=> (not b_lambda!286167) (not b!7407173)))

(declare-fun m!8042612 () Bool)

(assert (=> b!7407173 m!8042612))

(declare-fun m!8042614 () Bool)

(assert (=> b!7407174 m!8042614))

(assert (=> d!2290515 d!2290563))

(declare-fun d!2290565 () Bool)

(declare-fun res!2982188 () Bool)

(declare-fun e!4430188 () Bool)

(assert (=> d!2290565 (=> res!2982188 e!4430188)))

(assert (=> d!2290565 (= res!2982188 (is-Nil!71848 (exprs!8834 empty!3523)))))

(assert (=> d!2290565 (= (forall!18179 (exprs!8834 empty!3523) lambda!459463) e!4430188)))

(declare-fun b!7407175 () Bool)

(declare-fun e!4430189 () Bool)

(assert (=> b!7407175 (= e!4430188 e!4430189)))

(declare-fun res!2982189 () Bool)

(assert (=> b!7407175 (=> (not res!2982189) (not e!4430189))))

(assert (=> b!7407175 (= res!2982189 (dynLambda!29622 lambda!459463 (h!78296 (exprs!8834 empty!3523))))))

(declare-fun b!7407176 () Bool)

(assert (=> b!7407176 (= e!4430189 (forall!18179 (t!386531 (exprs!8834 empty!3523)) lambda!459463))))

(assert (= (and d!2290565 (not res!2982188)) b!7407175))

(assert (= (and b!7407175 res!2982189) b!7407176))

(declare-fun b_lambda!286169 () Bool)

(assert (=> (not b_lambda!286169) (not b!7407175)))

(declare-fun m!8042616 () Bool)

(assert (=> b!7407175 m!8042616))

(declare-fun m!8042618 () Bool)

(assert (=> b!7407176 m!8042618))

(assert (=> d!2290525 d!2290565))

(declare-fun b!7407199 () Bool)

(declare-fun e!4430203 () (Set Context!16668))

(declare-fun call!681955 () (Set Context!16668))

(assert (=> b!7407199 (= e!4430203 call!681955)))

(declare-fun b!7407200 () Bool)

(declare-fun e!4430205 () (Set Context!16668))

(declare-fun call!681953 () (Set Context!16668))

(declare-fun call!681954 () (Set Context!16668))

(assert (=> b!7407200 (= e!4430205 (set.union call!681953 call!681954))))

(declare-fun b!7407201 () Bool)

(declare-fun c!1374812 () Bool)

(declare-fun e!4430204 () Bool)

(assert (=> b!7407201 (= c!1374812 e!4430204)))

(declare-fun res!2982192 () Bool)

(assert (=> b!7407201 (=> (not res!2982192) (not e!4430204))))

(assert (=> b!7407201 (= res!2982192 (is-Concat!28239 (h!78296 (exprs!8834 c!10532))))))

(declare-fun e!4430207 () (Set Context!16668))

(assert (=> b!7407201 (= e!4430207 e!4430205)))

(declare-fun call!681958 () List!71972)

(declare-fun bm!681948 () Bool)

(declare-fun c!1374813 () Bool)

(declare-fun $colon$colon!3336 (List!71972 Regex!19394) List!71972)

(assert (=> bm!681948 (= call!681958 ($colon$colon!3336 (exprs!8834 (Context!16669 (t!386531 (exprs!8834 c!10532)))) (ite (or c!1374812 c!1374813) (regTwo!39300 (h!78296 (exprs!8834 c!10532))) (h!78296 (exprs!8834 c!10532)))))))

(declare-fun b!7407202 () Bool)

(declare-fun c!1374811 () Bool)

(assert (=> b!7407202 (= c!1374811 (is-Star!19394 (h!78296 (exprs!8834 c!10532))))))

(declare-fun e!4430202 () (Set Context!16668))

(assert (=> b!7407202 (= e!4430203 e!4430202)))

(declare-fun b!7407203 () Bool)

(assert (=> b!7407203 (= e!4430205 e!4430203)))

(assert (=> b!7407203 (= c!1374813 (is-Concat!28239 (h!78296 (exprs!8834 c!10532))))))

(declare-fun bm!681949 () Bool)

(declare-fun c!1374814 () Bool)

(assert (=> bm!681949 (= call!681953 (derivationStepZipperDown!3192 (ite c!1374814 (regTwo!39301 (h!78296 (exprs!8834 c!10532))) (regOne!39300 (h!78296 (exprs!8834 c!10532)))) (ite c!1374814 (Context!16669 (t!386531 (exprs!8834 c!10532))) (Context!16669 call!681958)) lt!2618180))))

(declare-fun b!7407204 () Bool)

(assert (=> b!7407204 (= e!4430204 (nullable!8440 (regOne!39300 (h!78296 (exprs!8834 c!10532)))))))

(declare-fun b!7407205 () Bool)

(assert (=> b!7407205 (= e!4430202 call!681955)))

(declare-fun bm!681950 () Bool)

(assert (=> bm!681950 (= call!681955 call!681954)))

(declare-fun bm!681951 () Bool)

(declare-fun call!681957 () List!71972)

(assert (=> bm!681951 (= call!681957 call!681958)))

(declare-fun d!2290567 () Bool)

(declare-fun c!1374815 () Bool)

(assert (=> d!2290567 (= c!1374815 (and (is-ElementMatch!19394 (h!78296 (exprs!8834 c!10532))) (= (c!1374779 (h!78296 (exprs!8834 c!10532))) lt!2618180)))))

(declare-fun e!4430206 () (Set Context!16668))

(assert (=> d!2290567 (= (derivationStepZipperDown!3192 (h!78296 (exprs!8834 c!10532)) (Context!16669 (t!386531 (exprs!8834 c!10532))) lt!2618180) e!4430206)))

(declare-fun b!7407206 () Bool)

(assert (=> b!7407206 (= e!4430202 (as set.empty (Set Context!16668)))))

(declare-fun bm!681952 () Bool)

(declare-fun call!681956 () (Set Context!16668))

(assert (=> bm!681952 (= call!681956 (derivationStepZipperDown!3192 (ite c!1374814 (regOne!39301 (h!78296 (exprs!8834 c!10532))) (ite c!1374812 (regTwo!39300 (h!78296 (exprs!8834 c!10532))) (ite c!1374813 (regOne!39300 (h!78296 (exprs!8834 c!10532))) (reg!19723 (h!78296 (exprs!8834 c!10532)))))) (ite (or c!1374814 c!1374812) (Context!16669 (t!386531 (exprs!8834 c!10532))) (Context!16669 call!681957)) lt!2618180))))

(declare-fun b!7407207 () Bool)

(assert (=> b!7407207 (= e!4430206 (set.insert (Context!16669 (t!386531 (exprs!8834 c!10532))) (as set.empty (Set Context!16668))))))

(declare-fun bm!681953 () Bool)

(assert (=> bm!681953 (= call!681954 call!681956)))

(declare-fun b!7407208 () Bool)

(assert (=> b!7407208 (= e!4430207 (set.union call!681956 call!681953))))

(declare-fun b!7407209 () Bool)

(assert (=> b!7407209 (= e!4430206 e!4430207)))

(assert (=> b!7407209 (= c!1374814 (is-Union!19394 (h!78296 (exprs!8834 c!10532))))))

(assert (= (and d!2290567 c!1374815) b!7407207))

(assert (= (and d!2290567 (not c!1374815)) b!7407209))

(assert (= (and b!7407209 c!1374814) b!7407208))

(assert (= (and b!7407209 (not c!1374814)) b!7407201))

(assert (= (and b!7407201 res!2982192) b!7407204))

(assert (= (and b!7407201 c!1374812) b!7407200))

(assert (= (and b!7407201 (not c!1374812)) b!7407203))

(assert (= (and b!7407203 c!1374813) b!7407199))

(assert (= (and b!7407203 (not c!1374813)) b!7407202))

(assert (= (and b!7407202 c!1374811) b!7407205))

(assert (= (and b!7407202 (not c!1374811)) b!7407206))

(assert (= (or b!7407199 b!7407205) bm!681951))

(assert (= (or b!7407199 b!7407205) bm!681950))

(assert (= (or b!7407200 bm!681951) bm!681948))

(assert (= (or b!7407200 bm!681950) bm!681953))

(assert (= (or b!7407208 bm!681953) bm!681952))

(assert (= (or b!7407208 b!7407200) bm!681949))

(declare-fun m!8042620 () Bool)

(assert (=> b!7407207 m!8042620))

(declare-fun m!8042622 () Bool)

(assert (=> bm!681952 m!8042622))

(declare-fun m!8042624 () Bool)

(assert (=> b!7407204 m!8042624))

(declare-fun m!8042626 () Bool)

(assert (=> bm!681948 m!8042626))

(declare-fun m!8042628 () Bool)

(assert (=> bm!681949 m!8042628))

(assert (=> bm!681931 d!2290567))

(declare-fun b!7407222 () Bool)

(declare-fun e!4430210 () Bool)

(declare-fun tp!2119042 () Bool)

(assert (=> b!7407222 (= e!4430210 tp!2119042)))

(declare-fun b!7407223 () Bool)

(declare-fun tp!2119043 () Bool)

(declare-fun tp!2119045 () Bool)

(assert (=> b!7407223 (= e!4430210 (and tp!2119043 tp!2119045))))

(declare-fun b!7407220 () Bool)

(assert (=> b!7407220 (= e!4430210 tp_is_empty!49051)))

(declare-fun b!7407221 () Bool)

(declare-fun tp!2119041 () Bool)

(declare-fun tp!2119044 () Bool)

(assert (=> b!7407221 (= e!4430210 (and tp!2119041 tp!2119044))))

(assert (=> b!7407116 (= tp!2119003 e!4430210)))

(assert (= (and b!7407116 (is-ElementMatch!19394 (h!78296 (exprs!8834 c!10532)))) b!7407220))

(assert (= (and b!7407116 (is-Concat!28239 (h!78296 (exprs!8834 c!10532)))) b!7407221))

(assert (= (and b!7407116 (is-Star!19394 (h!78296 (exprs!8834 c!10532)))) b!7407222))

(assert (= (and b!7407116 (is-Union!19394 (h!78296 (exprs!8834 c!10532)))) b!7407223))

(declare-fun b!7407224 () Bool)

(declare-fun e!4430211 () Bool)

(declare-fun tp!2119046 () Bool)

(declare-fun tp!2119047 () Bool)

(assert (=> b!7407224 (= e!4430211 (and tp!2119046 tp!2119047))))

(assert (=> b!7407116 (= tp!2119004 e!4430211)))

(assert (= (and b!7407116 (is-Cons!71848 (t!386531 (exprs!8834 c!10532)))) b!7407224))

(declare-fun condSetEmpty!56176 () Bool)

(assert (=> setNonEmpty!56172 (= condSetEmpty!56176 (= setRest!56172 (as set.empty (Set Context!16668))))))

(declare-fun setRes!56176 () Bool)

(assert (=> setNonEmpty!56172 (= tp!2118994 setRes!56176)))

(declare-fun setIsEmpty!56176 () Bool)

(assert (=> setIsEmpty!56176 setRes!56176))

(declare-fun tp!2119048 () Bool)

(declare-fun setElem!56176 () Context!16668)

(declare-fun e!4430212 () Bool)

(declare-fun setNonEmpty!56176 () Bool)

(assert (=> setNonEmpty!56176 (= setRes!56176 (and tp!2119048 (inv!91847 setElem!56176) e!4430212))))

(declare-fun setRest!56176 () (Set Context!16668))

(assert (=> setNonEmpty!56176 (= setRest!56172 (set.union (set.insert setElem!56176 (as set.empty (Set Context!16668))) setRest!56176))))

(declare-fun b!7407225 () Bool)

(declare-fun tp!2119049 () Bool)

(assert (=> b!7407225 (= e!4430212 tp!2119049)))

(assert (= (and setNonEmpty!56172 condSetEmpty!56176) setIsEmpty!56176))

(assert (= (and setNonEmpty!56172 (not condSetEmpty!56176)) setNonEmpty!56176))

(assert (= setNonEmpty!56176 b!7407225))

(declare-fun m!8042630 () Bool)

(assert (=> setNonEmpty!56176 m!8042630))

(declare-fun b!7407228 () Bool)

(declare-fun e!4430213 () Bool)

(declare-fun tp!2119051 () Bool)

(assert (=> b!7407228 (= e!4430213 tp!2119051)))

(declare-fun b!7407229 () Bool)

(declare-fun tp!2119052 () Bool)

(declare-fun tp!2119054 () Bool)

(assert (=> b!7407229 (= e!4430213 (and tp!2119052 tp!2119054))))

(declare-fun b!7407226 () Bool)

(assert (=> b!7407226 (= e!4430213 tp_is_empty!49051)))

(declare-fun b!7407227 () Bool)

(declare-fun tp!2119050 () Bool)

(declare-fun tp!2119053 () Bool)

(assert (=> b!7407227 (= e!4430213 (and tp!2119050 tp!2119053))))

(assert (=> b!7407118 (= tp!2119007 e!4430213)))

(assert (= (and b!7407118 (is-ElementMatch!19394 (h!78296 (exprs!8834 setElem!56166)))) b!7407226))

(assert (= (and b!7407118 (is-Concat!28239 (h!78296 (exprs!8834 setElem!56166)))) b!7407227))

(assert (= (and b!7407118 (is-Star!19394 (h!78296 (exprs!8834 setElem!56166)))) b!7407228))

(assert (= (and b!7407118 (is-Union!19394 (h!78296 (exprs!8834 setElem!56166)))) b!7407229))

(declare-fun b!7407230 () Bool)

(declare-fun e!4430214 () Bool)

(declare-fun tp!2119055 () Bool)

(declare-fun tp!2119056 () Bool)

(assert (=> b!7407230 (= e!4430214 (and tp!2119055 tp!2119056))))

(assert (=> b!7407118 (= tp!2119008 e!4430214)))

(assert (= (and b!7407118 (is-Cons!71848 (t!386531 (exprs!8834 setElem!56166)))) b!7407230))

(declare-fun b!7407231 () Bool)

(declare-fun e!4430215 () Bool)

(declare-fun tp!2119057 () Bool)

(declare-fun tp!2119058 () Bool)

(assert (=> b!7407231 (= e!4430215 (and tp!2119057 tp!2119058))))

(assert (=> b!7407106 (= tp!2118995 e!4430215)))

(assert (= (and b!7407106 (is-Cons!71848 (exprs!8834 setElem!56172))) b!7407231))

(declare-fun b!7407234 () Bool)

(declare-fun e!4430216 () Bool)

(declare-fun tp!2119060 () Bool)

(assert (=> b!7407234 (= e!4430216 tp!2119060)))

(declare-fun b!7407235 () Bool)

(declare-fun tp!2119061 () Bool)

(declare-fun tp!2119063 () Bool)

(assert (=> b!7407235 (= e!4430216 (and tp!2119061 tp!2119063))))

(declare-fun b!7407232 () Bool)

(assert (=> b!7407232 (= e!4430216 tp_is_empty!49051)))

(declare-fun b!7407233 () Bool)

(declare-fun tp!2119059 () Bool)

(declare-fun tp!2119062 () Bool)

(assert (=> b!7407233 (= e!4430216 (and tp!2119059 tp!2119062))))

(assert (=> b!7407117 (= tp!2119005 e!4430216)))

(assert (= (and b!7407117 (is-ElementMatch!19394 (h!78296 (exprs!8834 empty!3523)))) b!7407232))

(assert (= (and b!7407117 (is-Concat!28239 (h!78296 (exprs!8834 empty!3523)))) b!7407233))

(assert (= (and b!7407117 (is-Star!19394 (h!78296 (exprs!8834 empty!3523)))) b!7407234))

(assert (= (and b!7407117 (is-Union!19394 (h!78296 (exprs!8834 empty!3523)))) b!7407235))

(declare-fun b!7407236 () Bool)

(declare-fun e!4430217 () Bool)

(declare-fun tp!2119064 () Bool)

(declare-fun tp!2119065 () Bool)

(assert (=> b!7407236 (= e!4430217 (and tp!2119064 tp!2119065))))

(assert (=> b!7407117 (= tp!2119006 e!4430217)))

(assert (= (and b!7407117 (is-Cons!71848 (t!386531 (exprs!8834 empty!3523)))) b!7407236))

(declare-fun b!7407237 () Bool)

(declare-fun e!4430218 () Bool)

(declare-fun tp!2119066 () Bool)

(assert (=> b!7407237 (= e!4430218 (and tp_is_empty!49051 tp!2119066))))

(assert (=> b!7407111 (= tp!2118998 e!4430218)))

(assert (= (and b!7407111 (is-Cons!71847 (t!386530 (t!386530 s!7927)))) b!7407237))

(declare-fun b_lambda!286171 () Bool)

(assert (= b_lambda!286167 (or d!2290515 b_lambda!286171)))

(declare-fun bs!1923913 () Bool)

(declare-fun d!2290569 () Bool)

(assert (= bs!1923913 (and d!2290569 d!2290515)))

(declare-fun validRegex!9956 (Regex!19394) Bool)

(assert (=> bs!1923913 (= (dynLambda!29622 lambda!459452 (h!78296 (exprs!8834 lt!2618179))) (validRegex!9956 (h!78296 (exprs!8834 lt!2618179))))))

(declare-fun m!8042632 () Bool)

(assert (=> bs!1923913 m!8042632))

(assert (=> b!7407173 d!2290569))

(declare-fun b_lambda!286173 () Bool)

(assert (= b_lambda!286169 (or d!2290525 b_lambda!286173)))

(declare-fun bs!1923914 () Bool)

(declare-fun d!2290571 () Bool)

(assert (= bs!1923914 (and d!2290571 d!2290525)))

(assert (=> bs!1923914 (= (dynLambda!29622 lambda!459463 (h!78296 (exprs!8834 empty!3523))) (validRegex!9956 (h!78296 (exprs!8834 empty!3523))))))

(declare-fun m!8042634 () Bool)

(assert (=> bs!1923914 m!8042634))

(assert (=> b!7407175 d!2290571))

(declare-fun b_lambda!286175 () Bool)

(assert (= b_lambda!286165 (or d!2290501 b_lambda!286175)))

(declare-fun bs!1923915 () Bool)

(declare-fun d!2290573 () Bool)

(assert (= bs!1923915 (and d!2290573 d!2290501)))

(assert (=> bs!1923915 (= (dynLambda!29622 lambda!459449 (h!78296 (exprs!8834 c!10532))) (validRegex!9956 (h!78296 (exprs!8834 c!10532))))))

(declare-fun m!8042636 () Bool)

(assert (=> bs!1923915 m!8042636))

(assert (=> b!7407171 d!2290573))

(declare-fun b_lambda!286177 () Bool)

(assert (= b_lambda!286163 (or d!2290497 b_lambda!286177)))

(declare-fun bs!1923916 () Bool)

(declare-fun d!2290575 () Bool)

(assert (= bs!1923916 (and d!2290575 d!2290497)))

(assert (=> bs!1923916 (= (dynLambda!29622 lambda!459448 (h!78296 (exprs!8834 setElem!56166))) (validRegex!9956 (h!78296 (exprs!8834 setElem!56166))))))

(declare-fun m!8042638 () Bool)

(assert (=> bs!1923916 m!8042638))

(assert (=> b!7407169 d!2290575))

(push 1)

(assert (not b!7407221))

(assert (not b!7407157))

(assert (not b!7407224))

(assert (not b!7407222))

(assert (not b!7407231))

(assert (not b!7407233))

(assert (not b!7407170))

(assert (not bm!681952))

(assert (not setNonEmpty!56176))

(assert (not d!2290551))

(assert (not b!7407164))

(assert (not b!7407228))

(assert (not b!7407229))

(assert (not d!2290547))

(assert (not b_lambda!286173))

(assert (not b!7407230))

(assert (not bm!681949))

(assert (not d!2290557))

(assert (not d!2290555))

(assert tp_is_empty!49051)

(assert (not bm!681935))

(assert (not b!7407234))

(assert (not bs!1923914))

(assert (not b!7407236))

(assert (not b!7407223))

(assert (not b!7407204))

(assert (not bs!1923913))

(assert (not b!7407235))

(assert (not d!2290549))

(assert (not b_lambda!286175))

(assert (not bm!681948))

(assert (not b!7407172))

(assert (not b!7407227))

(assert (not b!7407176))

(assert (not b!7407237))

(assert (not b_lambda!286177))

(assert (not b!7407225))

(assert (not b!7407156))

(assert (not d!2290561))

(assert (not bs!1923915))

(assert (not b_lambda!286171))

(assert (not b!7407174))

(assert (not bs!1923916))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

