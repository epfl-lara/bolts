; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!689134 () Bool)

(assert start!689134)

(declare-fun b!7082369 () Bool)

(declare-fun e!4257879 () Bool)

(declare-fun tp!1943803 () Bool)

(assert (=> b!7082369 (= e!4257879 tp!1943803)))

(declare-fun b!7082370 () Bool)

(declare-fun e!4257881 () Bool)

(declare-fun tp!1943807 () Bool)

(assert (=> b!7082370 (= e!4257881 tp!1943807)))

(declare-fun b!7082371 () Bool)

(declare-fun e!4257883 () Bool)

(declare-datatypes ((C!35678 0))(
  ( (C!35679 (val!27541 Int)) )
))
(declare-datatypes ((Regex!17704 0))(
  ( (ElementMatch!17704 (c!1321957 C!35678)) (Concat!26549 (regOne!35920 Regex!17704) (regTwo!35920 Regex!17704)) (EmptyExpr!17704) (Star!17704 (reg!18033 Regex!17704)) (EmptyLang!17704) (Union!17704 (regOne!35921 Regex!17704) (regTwo!35921 Regex!17704)) )
))
(declare-datatypes ((List!68638 0))(
  ( (Nil!68514) (Cons!68514 (h!74962 Regex!17704) (t!382423 List!68638)) )
))
(declare-datatypes ((Context!13400 0))(
  ( (Context!13401 (exprs!7200 List!68638)) )
))
(declare-fun c!161 () Context!13400)

(declare-fun ct2!306 () Context!13400)

(declare-fun inv!87120 (Context!13400) Bool)

(declare-fun ++!15875 (List!68638 List!68638) List!68638)

(assert (=> b!7082371 (= e!4257883 (not (inv!87120 (Context!13401 (++!15875 (exprs!7200 c!161) (exprs!7200 ct2!306))))))))

(declare-datatypes ((Unit!162119 0))(
  ( (Unit!162120) )
))
(declare-fun lt!2553495 () Unit!162119)

(declare-fun lambda!428303 () Int)

(declare-fun lemmaConcatPreservesForall!1015 (List!68638 List!68638 Int) Unit!162119)

(assert (=> b!7082371 (= lt!2553495 (lemmaConcatPreservesForall!1015 (exprs!7200 c!161) (exprs!7200 ct2!306) lambda!428303))))

(declare-fun b!7082372 () Bool)

(declare-fun res!2893194 () Bool)

(assert (=> b!7082372 (=> (not res!2893194) (not e!4257883))))

(declare-datatypes ((List!68639 0))(
  ( (Nil!68515) (Cons!68515 (h!74963 C!35678) (t!382424 List!68639)) )
))
(declare-fun s!7408 () List!68639)

(assert (=> b!7082372 (= res!2893194 (not (is-Cons!68515 s!7408)))))

(declare-fun res!2893195 () Bool)

(assert (=> start!689134 (=> (not res!2893195) (not e!4257883))))

(declare-fun lt!2553496 () (Set Context!13400))

(declare-fun matchZipper!3244 ((Set Context!13400) List!68639) Bool)

(assert (=> start!689134 (= res!2893195 (matchZipper!3244 lt!2553496 s!7408))))

(declare-fun z1!570 () (Set Context!13400))

(declare-fun appendTo!825 ((Set Context!13400) Context!13400) (Set Context!13400))

(assert (=> start!689134 (= lt!2553496 (appendTo!825 z1!570 ct2!306))))

(assert (=> start!689134 e!4257883))

(assert (=> start!689134 (and (inv!87120 c!161) e!4257879)))

(declare-fun condSetEmpty!50566 () Bool)

(assert (=> start!689134 (= condSetEmpty!50566 (= z1!570 (as set.empty (Set Context!13400))))))

(declare-fun setRes!50566 () Bool)

(assert (=> start!689134 setRes!50566))

(declare-fun e!4257882 () Bool)

(assert (=> start!689134 e!4257882))

(assert (=> start!689134 (and (inv!87120 ct2!306) e!4257881)))

(declare-fun b!7082373 () Bool)

(declare-fun e!4257880 () Bool)

(declare-fun tp!1943805 () Bool)

(assert (=> b!7082373 (= e!4257880 tp!1943805)))

(declare-fun b!7082374 () Bool)

(declare-fun res!2893192 () Bool)

(assert (=> b!7082374 (=> (not res!2893192) (not e!4257883))))

(declare-fun lambda!428302 () Int)

(declare-fun nullableContext!115 (Context!13400) Bool)

(declare-fun getWitness!1840 ((Set Context!13400) Int) Context!13400)

(assert (=> b!7082374 (= res!2893192 (nullableContext!115 (getWitness!1840 lt!2553496 lambda!428302)))))

(declare-fun b!7082375 () Bool)

(declare-fun res!2893193 () Bool)

(assert (=> b!7082375 (=> (not res!2893193) (not e!4257883))))

(declare-fun nullableZipper!2735 ((Set Context!13400)) Bool)

(assert (=> b!7082375 (= res!2893193 (nullableZipper!2735 lt!2553496))))

(declare-fun setIsEmpty!50566 () Bool)

(assert (=> setIsEmpty!50566 setRes!50566))

(declare-fun tp!1943806 () Bool)

(declare-fun setElem!50566 () Context!13400)

(declare-fun setNonEmpty!50566 () Bool)

(assert (=> setNonEmpty!50566 (= setRes!50566 (and tp!1943806 (inv!87120 setElem!50566) e!4257880))))

(declare-fun setRest!50566 () (Set Context!13400))

(assert (=> setNonEmpty!50566 (= z1!570 (set.union (set.insert setElem!50566 (as set.empty (Set Context!13400))) setRest!50566))))

(declare-fun b!7082376 () Bool)

(declare-fun tp_is_empty!44633 () Bool)

(declare-fun tp!1943804 () Bool)

(assert (=> b!7082376 (= e!4257882 (and tp_is_empty!44633 tp!1943804))))

(declare-fun b!7082377 () Bool)

(declare-fun res!2893191 () Bool)

(assert (=> b!7082377 (=> (not res!2893191) (not e!4257883))))

(declare-fun exists!3797 ((Set Context!13400) Int) Bool)

(assert (=> b!7082377 (= res!2893191 (exists!3797 lt!2553496 lambda!428302))))

(assert (= (and start!689134 res!2893195) b!7082372))

(assert (= (and b!7082372 res!2893194) b!7082375))

(assert (= (and b!7082375 res!2893193) b!7082377))

(assert (= (and b!7082377 res!2893191) b!7082374))

(assert (= (and b!7082374 res!2893192) b!7082371))

(assert (= start!689134 b!7082369))

(assert (= (and start!689134 condSetEmpty!50566) setIsEmpty!50566))

(assert (= (and start!689134 (not condSetEmpty!50566)) setNonEmpty!50566))

(assert (= setNonEmpty!50566 b!7082373))

(assert (= (and start!689134 (is-Cons!68515 s!7408)) b!7082376))

(assert (= start!689134 b!7082370))

(declare-fun m!7813944 () Bool)

(assert (=> b!7082374 m!7813944))

(assert (=> b!7082374 m!7813944))

(declare-fun m!7813946 () Bool)

(assert (=> b!7082374 m!7813946))

(declare-fun m!7813948 () Bool)

(assert (=> b!7082375 m!7813948))

(declare-fun m!7813950 () Bool)

(assert (=> start!689134 m!7813950))

(declare-fun m!7813952 () Bool)

(assert (=> start!689134 m!7813952))

(declare-fun m!7813954 () Bool)

(assert (=> start!689134 m!7813954))

(declare-fun m!7813956 () Bool)

(assert (=> start!689134 m!7813956))

(declare-fun m!7813958 () Bool)

(assert (=> setNonEmpty!50566 m!7813958))

(declare-fun m!7813960 () Bool)

(assert (=> b!7082371 m!7813960))

(declare-fun m!7813962 () Bool)

(assert (=> b!7082371 m!7813962))

(declare-fun m!7813964 () Bool)

(assert (=> b!7082371 m!7813964))

(declare-fun m!7813966 () Bool)

(assert (=> b!7082377 m!7813966))

(push 1)

(assert (not b!7082375))

(assert (not b!7082377))

(assert (not setNonEmpty!50566))

(assert (not b!7082369))

(assert (not b!7082376))

(assert (not b!7082371))

(assert tp_is_empty!44633)

(assert (not b!7082370))

(assert (not start!689134))

(assert (not b!7082374))

(assert (not b!7082373))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!1882377 () Bool)

(declare-fun d!2215240 () Bool)

(assert (= bs!1882377 (and d!2215240 b!7082377)))

(declare-fun lambda!428314 () Int)

(assert (=> bs!1882377 (= lambda!428314 lambda!428302)))

(assert (=> d!2215240 (= (nullableZipper!2735 lt!2553496) (exists!3797 lt!2553496 lambda!428314))))

(declare-fun bs!1882378 () Bool)

(assert (= bs!1882378 d!2215240))

(declare-fun m!7813992 () Bool)

(assert (=> bs!1882378 m!7813992))

(assert (=> b!7082375 d!2215240))

(declare-fun bs!1882379 () Bool)

(declare-fun d!2215242 () Bool)

(assert (= bs!1882379 (and d!2215242 b!7082371)))

(declare-fun lambda!428317 () Int)

(assert (=> bs!1882379 (not (= lambda!428317 lambda!428303))))

(declare-fun forall!16666 (List!68638 Int) Bool)

(assert (=> d!2215242 (= (nullableContext!115 (getWitness!1840 lt!2553496 lambda!428302)) (forall!16666 (exprs!7200 (getWitness!1840 lt!2553496 lambda!428302)) lambda!428317))))

(declare-fun bs!1882380 () Bool)

(assert (= bs!1882380 d!2215242))

(declare-fun m!7813994 () Bool)

(assert (=> bs!1882380 m!7813994))

(assert (=> b!7082374 d!2215242))

(declare-fun d!2215244 () Bool)

(declare-fun e!4257901 () Bool)

(assert (=> d!2215244 e!4257901))

(declare-fun res!2893213 () Bool)

(assert (=> d!2215244 (=> (not res!2893213) (not e!4257901))))

(declare-fun lt!2553505 () Context!13400)

(declare-fun dynLambda!27935 (Int Context!13400) Bool)

(assert (=> d!2215244 (= res!2893213 (dynLambda!27935 lambda!428302 lt!2553505))))

(declare-datatypes ((List!68642 0))(
  ( (Nil!68518) (Cons!68518 (h!74966 Context!13400) (t!382427 List!68642)) )
))
(declare-fun getWitness!1842 (List!68642 Int) Context!13400)

(declare-fun toList!11045 ((Set Context!13400)) List!68642)

(assert (=> d!2215244 (= lt!2553505 (getWitness!1842 (toList!11045 lt!2553496) lambda!428302))))

(assert (=> d!2215244 (exists!3797 lt!2553496 lambda!428302)))

(assert (=> d!2215244 (= (getWitness!1840 lt!2553496 lambda!428302) lt!2553505)))

(declare-fun b!7082407 () Bool)

(assert (=> b!7082407 (= e!4257901 (set.member lt!2553505 lt!2553496))))

(assert (= (and d!2215244 res!2893213) b!7082407))

(declare-fun b_lambda!270657 () Bool)

(assert (=> (not b_lambda!270657) (not d!2215244)))

(declare-fun m!7813996 () Bool)

(assert (=> d!2215244 m!7813996))

(declare-fun m!7813998 () Bool)

(assert (=> d!2215244 m!7813998))

(assert (=> d!2215244 m!7813998))

(declare-fun m!7814000 () Bool)

(assert (=> d!2215244 m!7814000))

(assert (=> d!2215244 m!7813966))

(declare-fun m!7814002 () Bool)

(assert (=> b!7082407 m!7814002))

(assert (=> b!7082374 d!2215244))

(declare-fun bs!1882383 () Bool)

(declare-fun d!2215248 () Bool)

(assert (= bs!1882383 (and d!2215248 b!7082371)))

(declare-fun lambda!428323 () Int)

(assert (=> bs!1882383 (= lambda!428323 lambda!428303)))

(declare-fun bs!1882384 () Bool)

(assert (= bs!1882384 (and d!2215248 d!2215242)))

(assert (=> bs!1882384 (not (= lambda!428323 lambda!428317))))

(assert (=> d!2215248 (= (inv!87120 (Context!13401 (++!15875 (exprs!7200 c!161) (exprs!7200 ct2!306)))) (forall!16666 (exprs!7200 (Context!13401 (++!15875 (exprs!7200 c!161) (exprs!7200 ct2!306)))) lambda!428323))))

(declare-fun bs!1882385 () Bool)

(assert (= bs!1882385 d!2215248))

(declare-fun m!7814006 () Bool)

(assert (=> bs!1882385 m!7814006))

(assert (=> b!7082371 d!2215248))

(declare-fun b!7082418 () Bool)

(declare-fun res!2893219 () Bool)

(declare-fun e!4257907 () Bool)

(assert (=> b!7082418 (=> (not res!2893219) (not e!4257907))))

(declare-fun lt!2553511 () List!68638)

(declare-fun size!41269 (List!68638) Int)

(assert (=> b!7082418 (= res!2893219 (= (size!41269 lt!2553511) (+ (size!41269 (exprs!7200 c!161)) (size!41269 (exprs!7200 ct2!306)))))))

(declare-fun b!7082419 () Bool)

(assert (=> b!7082419 (= e!4257907 (or (not (= (exprs!7200 ct2!306) Nil!68514)) (= lt!2553511 (exprs!7200 c!161))))))

(declare-fun d!2215252 () Bool)

(assert (=> d!2215252 e!4257907))

(declare-fun res!2893218 () Bool)

(assert (=> d!2215252 (=> (not res!2893218) (not e!4257907))))

(declare-fun content!13894 (List!68638) (Set Regex!17704))

(assert (=> d!2215252 (= res!2893218 (= (content!13894 lt!2553511) (set.union (content!13894 (exprs!7200 c!161)) (content!13894 (exprs!7200 ct2!306)))))))

(declare-fun e!4257906 () List!68638)

(assert (=> d!2215252 (= lt!2553511 e!4257906)))

(declare-fun c!1321970 () Bool)

(assert (=> d!2215252 (= c!1321970 (is-Nil!68514 (exprs!7200 c!161)))))

(assert (=> d!2215252 (= (++!15875 (exprs!7200 c!161) (exprs!7200 ct2!306)) lt!2553511)))

(declare-fun b!7082416 () Bool)

(assert (=> b!7082416 (= e!4257906 (exprs!7200 ct2!306))))

(declare-fun b!7082417 () Bool)

(assert (=> b!7082417 (= e!4257906 (Cons!68514 (h!74962 (exprs!7200 c!161)) (++!15875 (t!382423 (exprs!7200 c!161)) (exprs!7200 ct2!306))))))

(assert (= (and d!2215252 c!1321970) b!7082416))

(assert (= (and d!2215252 (not c!1321970)) b!7082417))

(assert (= (and d!2215252 res!2893218) b!7082418))

(assert (= (and b!7082418 res!2893219) b!7082419))

(declare-fun m!7814016 () Bool)

(assert (=> b!7082418 m!7814016))

(declare-fun m!7814018 () Bool)

(assert (=> b!7082418 m!7814018))

(declare-fun m!7814020 () Bool)

(assert (=> b!7082418 m!7814020))

(declare-fun m!7814022 () Bool)

(assert (=> d!2215252 m!7814022))

(declare-fun m!7814024 () Bool)

(assert (=> d!2215252 m!7814024))

(declare-fun m!7814026 () Bool)

(assert (=> d!2215252 m!7814026))

(declare-fun m!7814028 () Bool)

(assert (=> b!7082417 m!7814028))

(assert (=> b!7082371 d!2215252))

(declare-fun d!2215258 () Bool)

(assert (=> d!2215258 (forall!16666 (++!15875 (exprs!7200 c!161) (exprs!7200 ct2!306)) lambda!428303)))

(declare-fun lt!2553514 () Unit!162119)

(declare-fun choose!54537 (List!68638 List!68638 Int) Unit!162119)

(assert (=> d!2215258 (= lt!2553514 (choose!54537 (exprs!7200 c!161) (exprs!7200 ct2!306) lambda!428303))))

(assert (=> d!2215258 (forall!16666 (exprs!7200 c!161) lambda!428303)))

(assert (=> d!2215258 (= (lemmaConcatPreservesForall!1015 (exprs!7200 c!161) (exprs!7200 ct2!306) lambda!428303) lt!2553514)))

(declare-fun bs!1882389 () Bool)

(assert (= bs!1882389 d!2215258))

(assert (=> bs!1882389 m!7813960))

(assert (=> bs!1882389 m!7813960))

(declare-fun m!7814040 () Bool)

(assert (=> bs!1882389 m!7814040))

(declare-fun m!7814042 () Bool)

(assert (=> bs!1882389 m!7814042))

(declare-fun m!7814044 () Bool)

(assert (=> bs!1882389 m!7814044))

(assert (=> b!7082371 d!2215258))

(declare-fun d!2215262 () Bool)

(declare-fun c!1321977 () Bool)

(declare-fun isEmpty!39987 (List!68639) Bool)

(assert (=> d!2215262 (= c!1321977 (isEmpty!39987 s!7408))))

(declare-fun e!4257913 () Bool)

(assert (=> d!2215262 (= (matchZipper!3244 lt!2553496 s!7408) e!4257913)))

(declare-fun b!7082430 () Bool)

(assert (=> b!7082430 (= e!4257913 (nullableZipper!2735 lt!2553496))))

(declare-fun b!7082431 () Bool)

(declare-fun derivationStepZipper!3154 ((Set Context!13400) C!35678) (Set Context!13400))

(declare-fun head!14444 (List!68639) C!35678)

(declare-fun tail!13907 (List!68639) List!68639)

(assert (=> b!7082431 (= e!4257913 (matchZipper!3244 (derivationStepZipper!3154 lt!2553496 (head!14444 s!7408)) (tail!13907 s!7408)))))

(assert (= (and d!2215262 c!1321977) b!7082430))

(assert (= (and d!2215262 (not c!1321977)) b!7082431))

(declare-fun m!7814046 () Bool)

(assert (=> d!2215262 m!7814046))

(assert (=> b!7082430 m!7813948))

(declare-fun m!7814048 () Bool)

(assert (=> b!7082431 m!7814048))

(assert (=> b!7082431 m!7814048))

(declare-fun m!7814050 () Bool)

(assert (=> b!7082431 m!7814050))

(declare-fun m!7814052 () Bool)

(assert (=> b!7082431 m!7814052))

(assert (=> b!7082431 m!7814050))

(assert (=> b!7082431 m!7814052))

(declare-fun m!7814056 () Bool)

(assert (=> b!7082431 m!7814056))

(assert (=> start!689134 d!2215262))

(declare-fun d!2215266 () Bool)

(assert (=> d!2215266 true))

(declare-fun lambda!428341 () Int)

(declare-fun map!16055 ((Set Context!13400) Int) (Set Context!13400))

(assert (=> d!2215266 (= (appendTo!825 z1!570 ct2!306) (map!16055 z1!570 lambda!428341))))

(declare-fun bs!1882403 () Bool)

(assert (= bs!1882403 d!2215266))

(declare-fun m!7814064 () Bool)

(assert (=> bs!1882403 m!7814064))

(assert (=> start!689134 d!2215266))

(declare-fun bs!1882404 () Bool)

(declare-fun d!2215274 () Bool)

(assert (= bs!1882404 (and d!2215274 b!7082371)))

(declare-fun lambda!428342 () Int)

(assert (=> bs!1882404 (= lambda!428342 lambda!428303)))

(declare-fun bs!1882405 () Bool)

(assert (= bs!1882405 (and d!2215274 d!2215242)))

(assert (=> bs!1882405 (not (= lambda!428342 lambda!428317))))

(declare-fun bs!1882406 () Bool)

(assert (= bs!1882406 (and d!2215274 d!2215248)))

(assert (=> bs!1882406 (= lambda!428342 lambda!428323)))

(assert (=> d!2215274 (= (inv!87120 c!161) (forall!16666 (exprs!7200 c!161) lambda!428342))))

(declare-fun bs!1882407 () Bool)

(assert (= bs!1882407 d!2215274))

(declare-fun m!7814066 () Bool)

(assert (=> bs!1882407 m!7814066))

(assert (=> start!689134 d!2215274))

(declare-fun bs!1882408 () Bool)

(declare-fun d!2215276 () Bool)

(assert (= bs!1882408 (and d!2215276 b!7082371)))

(declare-fun lambda!428343 () Int)

(assert (=> bs!1882408 (= lambda!428343 lambda!428303)))

(declare-fun bs!1882409 () Bool)

(assert (= bs!1882409 (and d!2215276 d!2215242)))

(assert (=> bs!1882409 (not (= lambda!428343 lambda!428317))))

(declare-fun bs!1882410 () Bool)

(assert (= bs!1882410 (and d!2215276 d!2215248)))

(assert (=> bs!1882410 (= lambda!428343 lambda!428323)))

(declare-fun bs!1882411 () Bool)

(assert (= bs!1882411 (and d!2215276 d!2215274)))

(assert (=> bs!1882411 (= lambda!428343 lambda!428342)))

(assert (=> d!2215276 (= (inv!87120 ct2!306) (forall!16666 (exprs!7200 ct2!306) lambda!428343))))

(declare-fun bs!1882412 () Bool)

(assert (= bs!1882412 d!2215276))

(declare-fun m!7814068 () Bool)

(assert (=> bs!1882412 m!7814068))

(assert (=> start!689134 d!2215276))

(declare-fun bs!1882413 () Bool)

(declare-fun d!2215278 () Bool)

(assert (= bs!1882413 (and d!2215278 d!2215274)))

(declare-fun lambda!428344 () Int)

(assert (=> bs!1882413 (= lambda!428344 lambda!428342)))

(declare-fun bs!1882414 () Bool)

(assert (= bs!1882414 (and d!2215278 d!2215248)))

(assert (=> bs!1882414 (= lambda!428344 lambda!428323)))

(declare-fun bs!1882415 () Bool)

(assert (= bs!1882415 (and d!2215278 d!2215242)))

(assert (=> bs!1882415 (not (= lambda!428344 lambda!428317))))

(declare-fun bs!1882416 () Bool)

(assert (= bs!1882416 (and d!2215278 b!7082371)))

(assert (=> bs!1882416 (= lambda!428344 lambda!428303)))

(declare-fun bs!1882417 () Bool)

(assert (= bs!1882417 (and d!2215278 d!2215276)))

(assert (=> bs!1882417 (= lambda!428344 lambda!428343)))

(assert (=> d!2215278 (= (inv!87120 setElem!50566) (forall!16666 (exprs!7200 setElem!50566) lambda!428344))))

(declare-fun bs!1882418 () Bool)

(assert (= bs!1882418 d!2215278))

(declare-fun m!7814072 () Bool)

(assert (=> bs!1882418 m!7814072))

(assert (=> setNonEmpty!50566 d!2215278))

(declare-fun d!2215280 () Bool)

(declare-fun lt!2553524 () Bool)

(declare-fun exists!3800 (List!68642 Int) Bool)

(assert (=> d!2215280 (= lt!2553524 (exists!3800 (toList!11045 lt!2553496) lambda!428302))))

(declare-fun choose!54539 ((Set Context!13400) Int) Bool)

(assert (=> d!2215280 (= lt!2553524 (choose!54539 lt!2553496 lambda!428302))))

(assert (=> d!2215280 (= (exists!3797 lt!2553496 lambda!428302) lt!2553524)))

(declare-fun bs!1882425 () Bool)

(assert (= bs!1882425 d!2215280))

(assert (=> bs!1882425 m!7813998))

(assert (=> bs!1882425 m!7813998))

(declare-fun m!7814080 () Bool)

(assert (=> bs!1882425 m!7814080))

(declare-fun m!7814082 () Bool)

(assert (=> bs!1882425 m!7814082))

(assert (=> b!7082377 d!2215280))

(declare-fun b!7082443 () Bool)

(declare-fun e!4257919 () Bool)

(declare-fun tp!1943827 () Bool)

(declare-fun tp!1943828 () Bool)

(assert (=> b!7082443 (= e!4257919 (and tp!1943827 tp!1943828))))

(assert (=> b!7082369 (= tp!1943803 e!4257919)))

(assert (= (and b!7082369 (is-Cons!68514 (exprs!7200 c!161))) b!7082443))

(declare-fun b!7082444 () Bool)

(declare-fun e!4257920 () Bool)

(declare-fun tp!1943829 () Bool)

(declare-fun tp!1943830 () Bool)

(assert (=> b!7082444 (= e!4257920 (and tp!1943829 tp!1943830))))

(assert (=> b!7082370 (= tp!1943807 e!4257920)))

(assert (= (and b!7082370 (is-Cons!68514 (exprs!7200 ct2!306))) b!7082444))

(declare-fun condSetEmpty!50572 () Bool)

(assert (=> setNonEmpty!50566 (= condSetEmpty!50572 (= setRest!50566 (as set.empty (Set Context!13400))))))

(declare-fun setRes!50572 () Bool)

(assert (=> setNonEmpty!50566 (= tp!1943806 setRes!50572)))

(declare-fun setIsEmpty!50572 () Bool)

(assert (=> setIsEmpty!50572 setRes!50572))

(declare-fun e!4257925 () Bool)

(declare-fun tp!1943835 () Bool)

(declare-fun setNonEmpty!50572 () Bool)

(declare-fun setElem!50572 () Context!13400)

(assert (=> setNonEmpty!50572 (= setRes!50572 (and tp!1943835 (inv!87120 setElem!50572) e!4257925))))

(declare-fun setRest!50572 () (Set Context!13400))

(assert (=> setNonEmpty!50572 (= setRest!50566 (set.union (set.insert setElem!50572 (as set.empty (Set Context!13400))) setRest!50572))))

(declare-fun b!7082453 () Bool)

(declare-fun tp!1943836 () Bool)

(assert (=> b!7082453 (= e!4257925 tp!1943836)))

(assert (= (and setNonEmpty!50566 condSetEmpty!50572) setIsEmpty!50572))

(assert (= (and setNonEmpty!50566 (not condSetEmpty!50572)) setNonEmpty!50572))

(assert (= setNonEmpty!50572 b!7082453))

(declare-fun m!7814084 () Bool)

(assert (=> setNonEmpty!50572 m!7814084))

(declare-fun b!7082454 () Bool)

(declare-fun e!4257928 () Bool)

(declare-fun tp!1943837 () Bool)

(declare-fun tp!1943838 () Bool)

(assert (=> b!7082454 (= e!4257928 (and tp!1943837 tp!1943838))))

(assert (=> b!7082373 (= tp!1943805 e!4257928)))

(assert (= (and b!7082373 (is-Cons!68514 (exprs!7200 setElem!50566))) b!7082454))

(declare-fun b!7082463 () Bool)

(declare-fun e!4257931 () Bool)

(declare-fun tp!1943841 () Bool)

(assert (=> b!7082463 (= e!4257931 (and tp_is_empty!44633 tp!1943841))))

(assert (=> b!7082376 (= tp!1943804 e!4257931)))

(assert (= (and b!7082376 (is-Cons!68515 (t!382424 s!7408))) b!7082463))

(declare-fun b_lambda!270661 () Bool)

(assert (= b_lambda!270657 (or b!7082377 b_lambda!270661)))

(declare-fun bs!1882426 () Bool)

(declare-fun d!2215286 () Bool)

(assert (= bs!1882426 (and d!2215286 b!7082377)))

(assert (=> bs!1882426 (= (dynLambda!27935 lambda!428302 lt!2553505) (nullableContext!115 lt!2553505))))

(declare-fun m!7814086 () Bool)

(assert (=> bs!1882426 m!7814086))

(assert (=> d!2215244 d!2215286))

(push 1)

(assert (not d!2215274))

(assert (not b_lambda!270661))

(assert (not d!2215280))

(assert (not b!7082444))

(assert (not d!2215266))

(assert (not d!2215244))

(assert tp_is_empty!44633)

(assert (not d!2215276))

(assert (not b!7082463))

(assert (not d!2215258))

(assert (not d!2215242))

(assert (not b!7082453))

(assert (not b!7082454))

(assert (not setNonEmpty!50572))

(assert (not d!2215240))

(assert (not b!7082430))

(assert (not d!2215278))

(assert (not b!7082431))

(assert (not b!7082443))

(assert (not bs!1882426))

(assert (not b!7082417))

(assert (not b!7082418))

(assert (not d!2215252))

(assert (not d!2215248))

(assert (not d!2215262))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

