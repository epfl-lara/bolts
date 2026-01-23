; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!712858 () Bool)

(assert start!712858)

(declare-fun b!7315249 () Bool)

(declare-fun res!2956061 () Bool)

(declare-fun e!4379093 () Bool)

(assert (=> b!7315249 (=> (not res!2956061) (not e!4379093))))

(declare-datatypes ((C!38090 0))(
  ( (C!38091 (val!29141 Int)) )
))
(declare-datatypes ((Regex!18908 0))(
  ( (ElementMatch!18908 (c!1357927 C!38090)) (Concat!27753 (regOne!38328 Regex!18908) (regTwo!38328 Regex!18908)) (EmptyExpr!18908) (Star!18908 (reg!19237 Regex!18908)) (EmptyLang!18908) (Union!18908 (regOne!38329 Regex!18908) (regTwo!38329 Regex!18908)) )
))
(declare-datatypes ((List!71224 0))(
  ( (Nil!71100) (Cons!71100 (h!77548 Regex!18908) (t!385456 List!71224)) )
))
(declare-datatypes ((Context!15696 0))(
  ( (Context!15697 (exprs!8348 List!71224)) )
))
(declare-fun lt!2601825 () (Set Context!15696))

(declare-fun lambda!452019 () Int)

(declare-fun exists!4546 ((Set Context!15696) Int) Bool)

(assert (=> b!7315249 (= res!2956061 (not (exists!4546 lt!2601825 lambda!452019)))))

(declare-fun b!7315250 () Bool)

(declare-fun e!4379096 () Bool)

(assert (=> b!7315250 (= e!4379096 false)))

(declare-fun b!7315251 () Bool)

(declare-fun e!4379091 () Bool)

(assert (=> b!7315251 (= e!4379093 e!4379091)))

(declare-fun res!2956063 () Bool)

(assert (=> b!7315251 (=> (not res!2956063) (not e!4379091))))

(declare-fun z2!461 () (Set Context!15696))

(declare-fun nullableZipper!3089 ((Set Context!15696)) Bool)

(assert (=> b!7315251 (= res!2956063 (nullableZipper!3089 z2!461))))

(declare-datatypes ((Unit!164573 0))(
  ( (Unit!164574) )
))
(declare-fun lt!2601827 () Unit!164573)

(declare-fun e!4379094 () Unit!164573)

(assert (=> b!7315251 (= lt!2601827 e!4379094)))

(declare-fun c!1357926 () Bool)

(declare-fun z1!542 () (Set Context!15696))

(assert (=> b!7315251 (= c!1357926 (nullableZipper!3089 z1!542))))

(declare-fun b!7315252 () Bool)

(declare-fun e!4379095 () Bool)

(declare-fun tp_is_empty!47561 () Bool)

(declare-fun tp!2076168 () Bool)

(assert (=> b!7315252 (= e!4379095 (and tp_is_empty!47561 tp!2076168))))

(declare-fun b!7315253 () Bool)

(declare-fun Unit!164575 () Unit!164573)

(assert (=> b!7315253 (= e!4379094 Unit!164575)))

(declare-fun lt!2601826 () Unit!164573)

(declare-fun lemmaContainsThenExists!240 ((Set Context!15696) Context!15696 Int) Unit!164573)

(declare-fun getWitness!2295 ((Set Context!15696) Int) Context!15696)

(assert (=> b!7315253 (= lt!2601826 (lemmaContainsThenExists!240 lt!2601825 (getWitness!2295 z1!542 lambda!452019) lambda!452019))))

(declare-fun res!2956062 () Bool)

(assert (=> b!7315253 (= res!2956062 (exists!4546 lt!2601825 lambda!452019))))

(assert (=> b!7315253 (=> (not res!2956062) (not e!4379096))))

(assert (=> b!7315253 e!4379096))

(declare-fun b!7315254 () Bool)

(declare-fun e!4379089 () Bool)

(assert (=> b!7315254 (= e!4379089 e!4379093)))

(declare-fun res!2956060 () Bool)

(assert (=> b!7315254 (=> (not res!2956060) (not e!4379093))))

(assert (=> b!7315254 (= res!2956060 (not (nullableZipper!3089 lt!2601825)))))

(assert (=> b!7315254 (= lt!2601825 (set.union z1!542 z2!461))))

(declare-fun e!4379090 () Bool)

(declare-fun tp!2076167 () Bool)

(declare-fun setElem!54315 () Context!15696)

(declare-fun setRes!54315 () Bool)

(declare-fun setNonEmpty!54314 () Bool)

(declare-fun inv!90392 (Context!15696) Bool)

(assert (=> setNonEmpty!54314 (= setRes!54315 (and tp!2076167 (inv!90392 setElem!54315) e!4379090))))

(declare-fun setRest!54315 () (Set Context!15696))

(assert (=> setNonEmpty!54314 (= z2!461 (set.union (set.insert setElem!54315 (as set.empty (Set Context!15696))) setRest!54315))))

(declare-fun b!7315255 () Bool)

(declare-fun Unit!164576 () Unit!164573)

(assert (=> b!7315255 (= e!4379094 Unit!164576)))

(declare-fun setIsEmpty!54314 () Bool)

(declare-fun setRes!54314 () Bool)

(assert (=> setIsEmpty!54314 setRes!54314))

(declare-fun res!2956059 () Bool)

(assert (=> start!712858 (=> (not res!2956059) (not e!4379089))))

(declare-datatypes ((List!71225 0))(
  ( (Nil!71101) (Cons!71101 (h!77549 C!38090) (t!385457 List!71225)) )
))
(declare-fun s!7362 () List!71225)

(assert (=> start!712858 (= res!2956059 (not (is-Cons!71101 s!7362)))))

(assert (=> start!712858 e!4379089))

(assert (=> start!712858 e!4379095))

(declare-fun condSetEmpty!54314 () Bool)

(assert (=> start!712858 (= condSetEmpty!54314 (= z1!542 (as set.empty (Set Context!15696))))))

(assert (=> start!712858 setRes!54314))

(declare-fun condSetEmpty!54315 () Bool)

(assert (=> start!712858 (= condSetEmpty!54315 (= z2!461 (as set.empty (Set Context!15696))))))

(assert (=> start!712858 setRes!54315))

(declare-fun b!7315256 () Bool)

(assert (=> b!7315256 (= e!4379091 (not (exists!4546 z2!461 lambda!452019)))))

(declare-fun setIsEmpty!54315 () Bool)

(assert (=> setIsEmpty!54315 setRes!54315))

(declare-fun setNonEmpty!54315 () Bool)

(declare-fun e!4379092 () Bool)

(declare-fun setElem!54314 () Context!15696)

(declare-fun tp!2076169 () Bool)

(assert (=> setNonEmpty!54315 (= setRes!54314 (and tp!2076169 (inv!90392 setElem!54314) e!4379092))))

(declare-fun setRest!54314 () (Set Context!15696))

(assert (=> setNonEmpty!54315 (= z1!542 (set.union (set.insert setElem!54314 (as set.empty (Set Context!15696))) setRest!54314))))

(declare-fun b!7315257 () Bool)

(declare-fun tp!2076166 () Bool)

(assert (=> b!7315257 (= e!4379092 tp!2076166)))

(declare-fun b!7315258 () Bool)

(declare-fun tp!2076170 () Bool)

(assert (=> b!7315258 (= e!4379090 tp!2076170)))

(assert (= (and start!712858 res!2956059) b!7315254))

(assert (= (and b!7315254 res!2956060) b!7315249))

(assert (= (and b!7315249 res!2956061) b!7315251))

(assert (= (and b!7315251 c!1357926) b!7315253))

(assert (= (and b!7315251 (not c!1357926)) b!7315255))

(assert (= (and b!7315253 res!2956062) b!7315250))

(assert (= (and b!7315251 res!2956063) b!7315256))

(assert (= (and start!712858 (is-Cons!71101 s!7362)) b!7315252))

(assert (= (and start!712858 condSetEmpty!54314) setIsEmpty!54314))

(assert (= (and start!712858 (not condSetEmpty!54314)) setNonEmpty!54315))

(assert (= setNonEmpty!54315 b!7315257))

(assert (= (and start!712858 condSetEmpty!54315) setIsEmpty!54315))

(assert (= (and start!712858 (not condSetEmpty!54315)) setNonEmpty!54314))

(assert (= setNonEmpty!54314 b!7315258))

(declare-fun m!7979246 () Bool)

(assert (=> setNonEmpty!54315 m!7979246))

(declare-fun m!7979248 () Bool)

(assert (=> b!7315254 m!7979248))

(declare-fun m!7979250 () Bool)

(assert (=> b!7315251 m!7979250))

(declare-fun m!7979252 () Bool)

(assert (=> b!7315251 m!7979252))

(declare-fun m!7979254 () Bool)

(assert (=> b!7315253 m!7979254))

(assert (=> b!7315253 m!7979254))

(declare-fun m!7979256 () Bool)

(assert (=> b!7315253 m!7979256))

(declare-fun m!7979258 () Bool)

(assert (=> b!7315253 m!7979258))

(assert (=> b!7315249 m!7979258))

(declare-fun m!7979260 () Bool)

(assert (=> setNonEmpty!54314 m!7979260))

(declare-fun m!7979262 () Bool)

(assert (=> b!7315256 m!7979262))

(push 1)

(assert (not b!7315249))

(assert (not b!7315254))

(assert (not setNonEmpty!54314))

(assert (not b!7315251))

(assert (not setNonEmpty!54315))

(assert (not b!7315256))

(assert (not b!7315252))

(assert tp_is_empty!47561)

(assert (not b!7315253))

(assert (not b!7315258))

(assert (not b!7315257))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!1914744 () Bool)

(declare-fun d!2271224 () Bool)

(assert (= bs!1914744 (and d!2271224 b!7315249)))

(declare-fun lambda!452031 () Int)

(assert (=> bs!1914744 (= lambda!452031 lambda!452019)))

(assert (=> d!2271224 (= (nullableZipper!3089 z2!461) (exists!4546 z2!461 lambda!452031))))

(declare-fun bs!1914745 () Bool)

(assert (= bs!1914745 d!2271224))

(declare-fun m!7979282 () Bool)

(assert (=> bs!1914745 m!7979282))

(assert (=> b!7315251 d!2271224))

(declare-fun bs!1914746 () Bool)

(declare-fun d!2271226 () Bool)

(assert (= bs!1914746 (and d!2271226 b!7315249)))

(declare-fun lambda!452032 () Int)

(assert (=> bs!1914746 (= lambda!452032 lambda!452019)))

(declare-fun bs!1914747 () Bool)

(assert (= bs!1914747 (and d!2271226 d!2271224)))

(assert (=> bs!1914747 (= lambda!452032 lambda!452031)))

(assert (=> d!2271226 (= (nullableZipper!3089 z1!542) (exists!4546 z1!542 lambda!452032))))

(declare-fun bs!1914748 () Bool)

(assert (= bs!1914748 d!2271226))

(declare-fun m!7979284 () Bool)

(assert (=> bs!1914748 m!7979284))

(assert (=> b!7315251 d!2271226))

(declare-fun d!2271230 () Bool)

(assert (=> d!2271230 (exists!4546 lt!2601825 lambda!452019)))

(declare-fun lt!2601839 () Unit!164573)

(declare-fun choose!56720 ((Set Context!15696) Context!15696 Int) Unit!164573)

(assert (=> d!2271230 (= lt!2601839 (choose!56720 lt!2601825 (getWitness!2295 z1!542 lambda!452019) lambda!452019))))

(assert (=> d!2271230 (set.member (getWitness!2295 z1!542 lambda!452019) lt!2601825)))

(assert (=> d!2271230 (= (lemmaContainsThenExists!240 lt!2601825 (getWitness!2295 z1!542 lambda!452019) lambda!452019) lt!2601839)))

(declare-fun bs!1914749 () Bool)

(assert (= bs!1914749 d!2271230))

(assert (=> bs!1914749 m!7979258))

(assert (=> bs!1914749 m!7979254))

(declare-fun m!7979286 () Bool)

(assert (=> bs!1914749 m!7979286))

(assert (=> bs!1914749 m!7979254))

(declare-fun m!7979288 () Bool)

(assert (=> bs!1914749 m!7979288))

(assert (=> b!7315253 d!2271230))

(declare-fun d!2271232 () Bool)

(declare-fun e!4379124 () Bool)

(assert (=> d!2271232 e!4379124))

(declare-fun res!2956081 () Bool)

(assert (=> d!2271232 (=> (not res!2956081) (not e!4379124))))

(declare-fun lt!2601845 () Context!15696)

(declare-fun dynLambda!29148 (Int Context!15696) Bool)

(assert (=> d!2271232 (= res!2956081 (dynLambda!29148 lambda!452019 lt!2601845))))

(declare-datatypes ((List!71228 0))(
  ( (Nil!71104) (Cons!71104 (h!77552 Context!15696) (t!385460 List!71228)) )
))
(declare-fun getWitness!2297 (List!71228 Int) Context!15696)

(declare-fun toList!11613 ((Set Context!15696)) List!71228)

(assert (=> d!2271232 (= lt!2601845 (getWitness!2297 (toList!11613 z1!542) lambda!452019))))

(assert (=> d!2271232 (exists!4546 z1!542 lambda!452019)))

(assert (=> d!2271232 (= (getWitness!2295 z1!542 lambda!452019) lt!2601845)))

(declare-fun b!7315291 () Bool)

(assert (=> b!7315291 (= e!4379124 (set.member lt!2601845 z1!542))))

(assert (= (and d!2271232 res!2956081) b!7315291))

(declare-fun b_lambda!282507 () Bool)

(assert (=> (not b_lambda!282507) (not d!2271232)))

(declare-fun m!7979290 () Bool)

(assert (=> d!2271232 m!7979290))

(declare-fun m!7979294 () Bool)

(assert (=> d!2271232 m!7979294))

(assert (=> d!2271232 m!7979294))

(declare-fun m!7979296 () Bool)

(assert (=> d!2271232 m!7979296))

(declare-fun m!7979298 () Bool)

(assert (=> d!2271232 m!7979298))

(declare-fun m!7979300 () Bool)

(assert (=> b!7315291 m!7979300))

(assert (=> b!7315253 d!2271232))

(declare-fun d!2271234 () Bool)

(declare-fun lt!2601848 () Bool)

(declare-fun exists!4548 (List!71228 Int) Bool)

(assert (=> d!2271234 (= lt!2601848 (exists!4548 (toList!11613 lt!2601825) lambda!452019))))

(declare-fun choose!56721 ((Set Context!15696) Int) Bool)

(assert (=> d!2271234 (= lt!2601848 (choose!56721 lt!2601825 lambda!452019))))

(assert (=> d!2271234 (= (exists!4546 lt!2601825 lambda!452019) lt!2601848)))

(declare-fun bs!1914751 () Bool)

(assert (= bs!1914751 d!2271234))

(declare-fun m!7979306 () Bool)

(assert (=> bs!1914751 m!7979306))

(assert (=> bs!1914751 m!7979306))

(declare-fun m!7979308 () Bool)

(assert (=> bs!1914751 m!7979308))

(declare-fun m!7979310 () Bool)

(assert (=> bs!1914751 m!7979310))

(assert (=> b!7315253 d!2271234))

(declare-fun d!2271238 () Bool)

(declare-fun lt!2601849 () Bool)

(assert (=> d!2271238 (= lt!2601849 (exists!4548 (toList!11613 z2!461) lambda!452019))))

(assert (=> d!2271238 (= lt!2601849 (choose!56721 z2!461 lambda!452019))))

(assert (=> d!2271238 (= (exists!4546 z2!461 lambda!452019) lt!2601849)))

(declare-fun bs!1914752 () Bool)

(assert (= bs!1914752 d!2271238))

(declare-fun m!7979312 () Bool)

(assert (=> bs!1914752 m!7979312))

(assert (=> bs!1914752 m!7979312))

(declare-fun m!7979314 () Bool)

(assert (=> bs!1914752 m!7979314))

(declare-fun m!7979316 () Bool)

(assert (=> bs!1914752 m!7979316))

(assert (=> b!7315256 d!2271238))

(assert (=> b!7315249 d!2271234))

(declare-fun bs!1914753 () Bool)

(declare-fun d!2271240 () Bool)

(assert (= bs!1914753 (and d!2271240 b!7315249)))

(declare-fun lambda!452033 () Int)

(assert (=> bs!1914753 (= lambda!452033 lambda!452019)))

(declare-fun bs!1914754 () Bool)

(assert (= bs!1914754 (and d!2271240 d!2271224)))

(assert (=> bs!1914754 (= lambda!452033 lambda!452031)))

(declare-fun bs!1914755 () Bool)

(assert (= bs!1914755 (and d!2271240 d!2271226)))

(assert (=> bs!1914755 (= lambda!452033 lambda!452032)))

(assert (=> d!2271240 (= (nullableZipper!3089 lt!2601825) (exists!4546 lt!2601825 lambda!452033))))

(declare-fun bs!1914756 () Bool)

(assert (= bs!1914756 d!2271240))

(declare-fun m!7979318 () Bool)

(assert (=> bs!1914756 m!7979318))

(assert (=> b!7315254 d!2271240))

(declare-fun d!2271242 () Bool)

(declare-fun lambda!452040 () Int)

(declare-fun forall!17760 (List!71224 Int) Bool)

(assert (=> d!2271242 (= (inv!90392 setElem!54315) (forall!17760 (exprs!8348 setElem!54315) lambda!452040))))

(declare-fun bs!1914761 () Bool)

(assert (= bs!1914761 d!2271242))

(declare-fun m!7979322 () Bool)

(assert (=> bs!1914761 m!7979322))

(assert (=> setNonEmpty!54314 d!2271242))

(declare-fun bs!1914762 () Bool)

(declare-fun d!2271246 () Bool)

(assert (= bs!1914762 (and d!2271246 d!2271242)))

(declare-fun lambda!452041 () Int)

(assert (=> bs!1914762 (= lambda!452041 lambda!452040)))

(assert (=> d!2271246 (= (inv!90392 setElem!54314) (forall!17760 (exprs!8348 setElem!54314) lambda!452041))))

(declare-fun bs!1914764 () Bool)

(assert (= bs!1914764 d!2271246))

(declare-fun m!7979326 () Bool)

(assert (=> bs!1914764 m!7979326))

(assert (=> setNonEmpty!54315 d!2271246))

(declare-fun b!7315296 () Bool)

(declare-fun e!4379127 () Bool)

(declare-fun tp!2076190 () Bool)

(declare-fun tp!2076191 () Bool)

(assert (=> b!7315296 (= e!4379127 (and tp!2076190 tp!2076191))))

(assert (=> b!7315257 (= tp!2076166 e!4379127)))

(assert (= (and b!7315257 (is-Cons!71100 (exprs!8348 setElem!54314))) b!7315296))

(declare-fun b!7315297 () Bool)

(declare-fun e!4379128 () Bool)

(declare-fun tp!2076192 () Bool)

(declare-fun tp!2076193 () Bool)

(assert (=> b!7315297 (= e!4379128 (and tp!2076192 tp!2076193))))

(assert (=> b!7315258 (= tp!2076170 e!4379128)))

(assert (= (and b!7315258 (is-Cons!71100 (exprs!8348 setElem!54315))) b!7315297))

(declare-fun b!7315302 () Bool)

(declare-fun e!4379131 () Bool)

(declare-fun tp!2076196 () Bool)

(assert (=> b!7315302 (= e!4379131 (and tp_is_empty!47561 tp!2076196))))

(assert (=> b!7315252 (= tp!2076168 e!4379131)))

(assert (= (and b!7315252 (is-Cons!71101 (t!385457 s!7362))) b!7315302))

(declare-fun condSetEmpty!54324 () Bool)

(assert (=> setNonEmpty!54314 (= condSetEmpty!54324 (= setRest!54315 (as set.empty (Set Context!15696))))))

(declare-fun setRes!54324 () Bool)

(assert (=> setNonEmpty!54314 (= tp!2076167 setRes!54324)))

(declare-fun setIsEmpty!54324 () Bool)

(assert (=> setIsEmpty!54324 setRes!54324))

(declare-fun setNonEmpty!54324 () Bool)

(declare-fun tp!2076201 () Bool)

(declare-fun e!4379134 () Bool)

(declare-fun setElem!54324 () Context!15696)

(assert (=> setNonEmpty!54324 (= setRes!54324 (and tp!2076201 (inv!90392 setElem!54324) e!4379134))))

(declare-fun setRest!54324 () (Set Context!15696))

(assert (=> setNonEmpty!54324 (= setRest!54315 (set.union (set.insert setElem!54324 (as set.empty (Set Context!15696))) setRest!54324))))

(declare-fun b!7315307 () Bool)

(declare-fun tp!2076202 () Bool)

(assert (=> b!7315307 (= e!4379134 tp!2076202)))

(assert (= (and setNonEmpty!54314 condSetEmpty!54324) setIsEmpty!54324))

(assert (= (and setNonEmpty!54314 (not condSetEmpty!54324)) setNonEmpty!54324))

(assert (= setNonEmpty!54324 b!7315307))

(declare-fun m!7979330 () Bool)

(assert (=> setNonEmpty!54324 m!7979330))

(declare-fun condSetEmpty!54325 () Bool)

(assert (=> setNonEmpty!54315 (= condSetEmpty!54325 (= setRest!54314 (as set.empty (Set Context!15696))))))

(declare-fun setRes!54325 () Bool)

(assert (=> setNonEmpty!54315 (= tp!2076169 setRes!54325)))

(declare-fun setIsEmpty!54325 () Bool)

(assert (=> setIsEmpty!54325 setRes!54325))

(declare-fun e!4379135 () Bool)

(declare-fun tp!2076203 () Bool)

(declare-fun setNonEmpty!54325 () Bool)

(declare-fun setElem!54325 () Context!15696)

(assert (=> setNonEmpty!54325 (= setRes!54325 (and tp!2076203 (inv!90392 setElem!54325) e!4379135))))

(declare-fun setRest!54325 () (Set Context!15696))

(assert (=> setNonEmpty!54325 (= setRest!54314 (set.union (set.insert setElem!54325 (as set.empty (Set Context!15696))) setRest!54325))))

(declare-fun b!7315308 () Bool)

(declare-fun tp!2076204 () Bool)

(assert (=> b!7315308 (= e!4379135 tp!2076204)))

(assert (= (and setNonEmpty!54315 condSetEmpty!54325) setIsEmpty!54325))

(assert (= (and setNonEmpty!54315 (not condSetEmpty!54325)) setNonEmpty!54325))

(assert (= setNonEmpty!54325 b!7315308))

(declare-fun m!7979332 () Bool)

(assert (=> setNonEmpty!54325 m!7979332))

(declare-fun b_lambda!282509 () Bool)

(assert (= b_lambda!282507 (or b!7315249 b_lambda!282509)))

(declare-fun bs!1914769 () Bool)

(declare-fun d!2271252 () Bool)

(assert (= bs!1914769 (and d!2271252 b!7315249)))

(declare-fun nullableContext!394 (Context!15696) Bool)

(assert (=> bs!1914769 (= (dynLambda!29148 lambda!452019 lt!2601845) (nullableContext!394 lt!2601845))))

(declare-fun m!7979334 () Bool)

(assert (=> bs!1914769 m!7979334))

(assert (=> d!2271232 d!2271252))

(push 1)

(assert (not setNonEmpty!54324))

(assert (not b_lambda!282509))

(assert (not d!2271234))

(assert (not b!7315296))

(assert (not d!2271240))

(assert tp_is_empty!47561)

(assert (not b!7315302))

(assert (not setNonEmpty!54325))

(assert (not bs!1914769))

(assert (not d!2271238))

(assert (not d!2271230))

(assert (not b!7315307))

(assert (not b!7315297))

(assert (not d!2271226))

(assert (not d!2271232))

(assert (not d!2271242))

(assert (not b!7315308))

(assert (not d!2271246))

(assert (not d!2271224))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

