; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!713278 () Bool)

(assert start!713278)

(declare-fun b!7317077 () Bool)

(declare-fun e!4380462 () Bool)

(declare-datatypes ((C!38174 0))(
  ( (C!38175 (val!29183 Int)) )
))
(declare-datatypes ((Regex!18950 0))(
  ( (ElementMatch!18950 (c!1358353 C!38174)) (Concat!27795 (regOne!38412 Regex!18950) (regTwo!38412 Regex!18950)) (EmptyExpr!18950) (Star!18950 (reg!19279 Regex!18950)) (EmptyLang!18950) (Union!18950 (regOne!38413 Regex!18950) (regTwo!38413 Regex!18950)) )
))
(declare-datatypes ((List!71329 0))(
  ( (Nil!71205) (Cons!71205 (h!77653 Regex!18950) (t!385561 List!71329)) )
))
(declare-datatypes ((Context!15780 0))(
  ( (Context!15781 (exprs!8390 List!71329)) )
))
(declare-fun lt!2602394 () Context!15780)

(declare-fun nullableContext!411 (Context!15780) Bool)

(assert (=> b!7317077 (= e!4380462 (not (nullableContext!411 lt!2602394)))))

(declare-fun b!7317078 () Bool)

(declare-datatypes ((Unit!164647 0))(
  ( (Unit!164648) )
))
(declare-fun e!4380458 () Unit!164647)

(declare-fun Unit!164649 () Unit!164647)

(assert (=> b!7317078 (= e!4380458 Unit!164649)))

(declare-fun lt!2602395 () (Set Context!15780))

(declare-fun z1!542 () (Set Context!15780))

(declare-fun lt!2602393 () Unit!164647)

(declare-fun lambda!452574 () Int)

(declare-fun lemmaContainsThenExists!260 ((Set Context!15780) Context!15780 Int) Unit!164647)

(declare-fun getWitness!2344 ((Set Context!15780) Int) Context!15780)

(assert (=> b!7317078 (= lt!2602393 (lemmaContainsThenExists!260 lt!2602395 (getWitness!2344 z1!542 lambda!452574) lambda!452574))))

(declare-fun res!2956700 () Bool)

(declare-fun exists!4606 ((Set Context!15780) Int) Bool)

(assert (=> b!7317078 (= res!2956700 (exists!4606 lt!2602395 lambda!452574))))

(declare-fun e!4380461 () Bool)

(assert (=> b!7317078 (=> (not res!2956700) (not e!4380461))))

(assert (=> b!7317078 e!4380461))

(declare-fun b!7317079 () Bool)

(declare-fun e!4380456 () Bool)

(declare-fun e!4380454 () Bool)

(assert (=> b!7317079 (= e!4380456 e!4380454)))

(declare-fun res!2956697 () Bool)

(assert (=> b!7317079 (=> (not res!2956697) (not e!4380454))))

(declare-fun z2!461 () (Set Context!15780))

(declare-fun nullableZipper!3129 ((Set Context!15780)) Bool)

(assert (=> b!7317079 (= res!2956697 (nullableZipper!3129 z2!461))))

(declare-fun lt!2602392 () Unit!164647)

(assert (=> b!7317079 (= lt!2602392 e!4380458)))

(declare-fun c!1358352 () Bool)

(assert (=> b!7317079 (= c!1358352 (nullableZipper!3129 z1!542))))

(declare-fun e!4380457 () Bool)

(declare-fun tp!2077500 () Bool)

(declare-fun setElem!54694 () Context!15780)

(declare-fun setNonEmpty!54694 () Bool)

(declare-fun setRes!54694 () Bool)

(declare-fun inv!90497 (Context!15780) Bool)

(assert (=> setNonEmpty!54694 (= setRes!54694 (and tp!2077500 (inv!90497 setElem!54694) e!4380457))))

(declare-fun setRest!54695 () (Set Context!15780))

(assert (=> setNonEmpty!54694 (= z1!542 (set.union (set.insert setElem!54694 (as set.empty (Set Context!15780))) setRest!54695))))

(declare-fun b!7317080 () Bool)

(declare-fun Unit!164650 () Unit!164647)

(assert (=> b!7317080 (= e!4380458 Unit!164650)))

(declare-fun setIsEmpty!54694 () Bool)

(declare-fun setRes!54695 () Bool)

(assert (=> setIsEmpty!54694 setRes!54695))

(declare-fun b!7317081 () Bool)

(declare-fun e!4380460 () Bool)

(assert (=> b!7317081 (= e!4380460 e!4380456)))

(declare-fun res!2956696 () Bool)

(assert (=> b!7317081 (=> (not res!2956696) (not e!4380456))))

(assert (=> b!7317081 (= res!2956696 (not (nullableZipper!3129 lt!2602395)))))

(assert (=> b!7317081 (= lt!2602395 (set.union z1!542 z2!461))))

(declare-fun e!4380455 () Bool)

(declare-fun setNonEmpty!54695 () Bool)

(declare-fun setElem!54695 () Context!15780)

(declare-fun tp!2077499 () Bool)

(assert (=> setNonEmpty!54695 (= setRes!54695 (and tp!2077499 (inv!90497 setElem!54695) e!4380455))))

(declare-fun setRest!54694 () (Set Context!15780))

(assert (=> setNonEmpty!54695 (= z2!461 (set.union (set.insert setElem!54695 (as set.empty (Set Context!15780))) setRest!54694))))

(declare-fun setIsEmpty!54695 () Bool)

(assert (=> setIsEmpty!54695 setRes!54694))

(declare-fun b!7317082 () Bool)

(declare-fun res!2956695 () Bool)

(assert (=> b!7317082 (=> (not res!2956695) (not e!4380456))))

(assert (=> b!7317082 (= res!2956695 (not (exists!4606 lt!2602395 lambda!452574)))))

(declare-fun res!2956698 () Bool)

(assert (=> start!713278 (=> (not res!2956698) (not e!4380460))))

(declare-datatypes ((List!71330 0))(
  ( (Nil!71206) (Cons!71206 (h!77654 C!38174) (t!385562 List!71330)) )
))
(declare-fun s!7362 () List!71330)

(assert (=> start!713278 (= res!2956698 (not (is-Cons!71206 s!7362)))))

(assert (=> start!713278 e!4380460))

(declare-fun e!4380459 () Bool)

(assert (=> start!713278 e!4380459))

(declare-fun condSetEmpty!54694 () Bool)

(assert (=> start!713278 (= condSetEmpty!54694 (= z1!542 (as set.empty (Set Context!15780))))))

(assert (=> start!713278 setRes!54694))

(declare-fun condSetEmpty!54695 () Bool)

(assert (=> start!713278 (= condSetEmpty!54695 (= z2!461 (as set.empty (Set Context!15780))))))

(assert (=> start!713278 setRes!54695))

(declare-fun b!7317083 () Bool)

(declare-fun tp!2077498 () Bool)

(assert (=> b!7317083 (= e!4380455 tp!2077498)))

(declare-fun b!7317084 () Bool)

(assert (=> b!7317084 (= e!4380461 false)))

(declare-fun b!7317085 () Bool)

(declare-fun tp!2077501 () Bool)

(assert (=> b!7317085 (= e!4380457 tp!2077501)))

(declare-fun b!7317086 () Bool)

(declare-fun tp_is_empty!47645 () Bool)

(declare-fun tp!2077502 () Bool)

(assert (=> b!7317086 (= e!4380459 (and tp_is_empty!47645 tp!2077502))))

(declare-fun b!7317087 () Bool)

(assert (=> b!7317087 (= e!4380454 e!4380462)))

(declare-fun res!2956699 () Bool)

(assert (=> b!7317087 (=> (not res!2956699) (not e!4380462))))

(assert (=> b!7317087 (= res!2956699 (set.member lt!2602394 lt!2602395))))

(assert (=> b!7317087 (= lt!2602394 (getWitness!2344 z2!461 lambda!452574))))

(assert (= (and start!713278 res!2956698) b!7317081))

(assert (= (and b!7317081 res!2956696) b!7317082))

(assert (= (and b!7317082 res!2956695) b!7317079))

(assert (= (and b!7317079 c!1358352) b!7317078))

(assert (= (and b!7317079 (not c!1358352)) b!7317080))

(assert (= (and b!7317078 res!2956700) b!7317084))

(assert (= (and b!7317079 res!2956697) b!7317087))

(assert (= (and b!7317087 res!2956699) b!7317077))

(assert (= (and start!713278 (is-Cons!71206 s!7362)) b!7317086))

(assert (= (and start!713278 condSetEmpty!54694) setIsEmpty!54695))

(assert (= (and start!713278 (not condSetEmpty!54694)) setNonEmpty!54694))

(assert (= setNonEmpty!54694 b!7317085))

(assert (= (and start!713278 condSetEmpty!54695) setIsEmpty!54694))

(assert (= (and start!713278 (not condSetEmpty!54695)) setNonEmpty!54695))

(assert (= setNonEmpty!54695 b!7317083))

(declare-fun m!7981266 () Bool)

(assert (=> b!7317081 m!7981266))

(declare-fun m!7981268 () Bool)

(assert (=> setNonEmpty!54695 m!7981268))

(declare-fun m!7981270 () Bool)

(assert (=> b!7317077 m!7981270))

(declare-fun m!7981272 () Bool)

(assert (=> b!7317082 m!7981272))

(declare-fun m!7981274 () Bool)

(assert (=> b!7317078 m!7981274))

(assert (=> b!7317078 m!7981274))

(declare-fun m!7981276 () Bool)

(assert (=> b!7317078 m!7981276))

(assert (=> b!7317078 m!7981272))

(declare-fun m!7981278 () Bool)

(assert (=> setNonEmpty!54694 m!7981278))

(declare-fun m!7981280 () Bool)

(assert (=> b!7317087 m!7981280))

(declare-fun m!7981282 () Bool)

(assert (=> b!7317087 m!7981282))

(declare-fun m!7981284 () Bool)

(assert (=> b!7317079 m!7981284))

(declare-fun m!7981286 () Bool)

(assert (=> b!7317079 m!7981286))

(push 1)

(assert tp_is_empty!47645)

(assert (not b!7317078))

(assert (not b!7317085))

(assert (not setNonEmpty!54695))

(assert (not b!7317077))

(assert (not b!7317081))

(assert (not b!7317082))

(assert (not setNonEmpty!54694))

(assert (not b!7317087))

(assert (not b!7317079))

(assert (not b!7317086))

(assert (not b!7317083))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2271959 () Bool)

(declare-fun e!4380492 () Bool)

(assert (=> d!2271959 e!4380492))

(declare-fun res!2956721 () Bool)

(assert (=> d!2271959 (=> (not res!2956721) (not e!4380492))))

(declare-fun lt!2602410 () Context!15780)

(declare-fun dynLambda!29169 (Int Context!15780) Bool)

(assert (=> d!2271959 (= res!2956721 (dynLambda!29169 lambda!452574 lt!2602410))))

(declare-datatypes ((List!71333 0))(
  ( (Nil!71209) (Cons!71209 (h!77657 Context!15780) (t!385565 List!71333)) )
))
(declare-fun getWitness!2346 (List!71333 Int) Context!15780)

(declare-fun toList!11634 ((Set Context!15780)) List!71333)

(assert (=> d!2271959 (= lt!2602410 (getWitness!2346 (toList!11634 z2!461) lambda!452574))))

(assert (=> d!2271959 (exists!4606 z2!461 lambda!452574)))

(assert (=> d!2271959 (= (getWitness!2344 z2!461 lambda!452574) lt!2602410)))

(declare-fun b!7317123 () Bool)

(assert (=> b!7317123 (= e!4380492 (set.member lt!2602410 z2!461))))

(assert (= (and d!2271959 res!2956721) b!7317123))

(declare-fun b_lambda!282631 () Bool)

(assert (=> (not b_lambda!282631) (not d!2271959)))

(declare-fun m!7981310 () Bool)

(assert (=> d!2271959 m!7981310))

(declare-fun m!7981312 () Bool)

(assert (=> d!2271959 m!7981312))

(assert (=> d!2271959 m!7981312))

(declare-fun m!7981314 () Bool)

(assert (=> d!2271959 m!7981314))

(declare-fun m!7981316 () Bool)

(assert (=> d!2271959 m!7981316))

(declare-fun m!7981318 () Bool)

(assert (=> b!7317123 m!7981318))

(assert (=> b!7317087 d!2271959))

(declare-fun d!2271963 () Bool)

(declare-fun lambda!452586 () Int)

(declare-fun forall!17782 (List!71329 Int) Bool)

(assert (=> d!2271963 (= (inv!90497 setElem!54694) (forall!17782 (exprs!8390 setElem!54694) lambda!452586))))

(declare-fun bs!1915310 () Bool)

(assert (= bs!1915310 d!2271963))

(declare-fun m!7981320 () Bool)

(assert (=> bs!1915310 m!7981320))

(assert (=> setNonEmpty!54694 d!2271963))

(declare-fun d!2271965 () Bool)

(declare-fun lt!2602413 () Bool)

(declare-fun exists!4608 (List!71333 Int) Bool)

(assert (=> d!2271965 (= lt!2602413 (exists!4608 (toList!11634 lt!2602395) lambda!452574))))

(declare-fun choose!56756 ((Set Context!15780) Int) Bool)

(assert (=> d!2271965 (= lt!2602413 (choose!56756 lt!2602395 lambda!452574))))

(assert (=> d!2271965 (= (exists!4606 lt!2602395 lambda!452574) lt!2602413)))

(declare-fun bs!1915311 () Bool)

(assert (= bs!1915311 d!2271965))

(declare-fun m!7981322 () Bool)

(assert (=> bs!1915311 m!7981322))

(assert (=> bs!1915311 m!7981322))

(declare-fun m!7981324 () Bool)

(assert (=> bs!1915311 m!7981324))

(declare-fun m!7981326 () Bool)

(assert (=> bs!1915311 m!7981326))

(assert (=> b!7317082 d!2271965))

(declare-fun bs!1915313 () Bool)

(declare-fun d!2271967 () Bool)

(assert (= bs!1915313 (and d!2271967 d!2271963)))

(declare-fun lambda!452592 () Int)

(assert (=> bs!1915313 (not (= lambda!452592 lambda!452586))))

(assert (=> d!2271967 (= (nullableContext!411 lt!2602394) (forall!17782 (exprs!8390 lt!2602394) lambda!452592))))

(declare-fun bs!1915314 () Bool)

(assert (= bs!1915314 d!2271967))

(declare-fun m!7981330 () Bool)

(assert (=> bs!1915314 m!7981330))

(assert (=> b!7317077 d!2271967))

(declare-fun bs!1915315 () Bool)

(declare-fun d!2271971 () Bool)

(assert (= bs!1915315 (and d!2271971 b!7317082)))

(declare-fun lambda!452595 () Int)

(assert (=> bs!1915315 (= lambda!452595 lambda!452574)))

(assert (=> d!2271971 (= (nullableZipper!3129 lt!2602395) (exists!4606 lt!2602395 lambda!452595))))

(declare-fun bs!1915316 () Bool)

(assert (= bs!1915316 d!2271971))

(declare-fun m!7981332 () Bool)

(assert (=> bs!1915316 m!7981332))

(assert (=> b!7317081 d!2271971))

(declare-fun d!2271973 () Bool)

(assert (=> d!2271973 (exists!4606 lt!2602395 lambda!452574)))

(declare-fun lt!2602418 () Unit!164647)

(declare-fun choose!56757 ((Set Context!15780) Context!15780 Int) Unit!164647)

(assert (=> d!2271973 (= lt!2602418 (choose!56757 lt!2602395 (getWitness!2344 z1!542 lambda!452574) lambda!452574))))

(assert (=> d!2271973 (set.member (getWitness!2344 z1!542 lambda!452574) lt!2602395)))

(assert (=> d!2271973 (= (lemmaContainsThenExists!260 lt!2602395 (getWitness!2344 z1!542 lambda!452574) lambda!452574) lt!2602418)))

(declare-fun bs!1915317 () Bool)

(assert (= bs!1915317 d!2271973))

(assert (=> bs!1915317 m!7981272))

(assert (=> bs!1915317 m!7981274))

(declare-fun m!7981334 () Bool)

(assert (=> bs!1915317 m!7981334))

(assert (=> bs!1915317 m!7981274))

(declare-fun m!7981336 () Bool)

(assert (=> bs!1915317 m!7981336))

(assert (=> b!7317078 d!2271973))

(declare-fun d!2271975 () Bool)

(declare-fun e!4380495 () Bool)

(assert (=> d!2271975 e!4380495))

(declare-fun res!2956722 () Bool)

(assert (=> d!2271975 (=> (not res!2956722) (not e!4380495))))

(declare-fun lt!2602419 () Context!15780)

(assert (=> d!2271975 (= res!2956722 (dynLambda!29169 lambda!452574 lt!2602419))))

(assert (=> d!2271975 (= lt!2602419 (getWitness!2346 (toList!11634 z1!542) lambda!452574))))

(assert (=> d!2271975 (exists!4606 z1!542 lambda!452574)))

(assert (=> d!2271975 (= (getWitness!2344 z1!542 lambda!452574) lt!2602419)))

(declare-fun b!7317124 () Bool)

(assert (=> b!7317124 (= e!4380495 (set.member lt!2602419 z1!542))))

(assert (= (and d!2271975 res!2956722) b!7317124))

(declare-fun b_lambda!282633 () Bool)

(assert (=> (not b_lambda!282633) (not d!2271975)))

(declare-fun m!7981338 () Bool)

(assert (=> d!2271975 m!7981338))

(declare-fun m!7981340 () Bool)

(assert (=> d!2271975 m!7981340))

(assert (=> d!2271975 m!7981340))

(declare-fun m!7981342 () Bool)

(assert (=> d!2271975 m!7981342))

(declare-fun m!7981344 () Bool)

(assert (=> d!2271975 m!7981344))

(declare-fun m!7981346 () Bool)

(assert (=> b!7317124 m!7981346))

(assert (=> b!7317078 d!2271975))

(assert (=> b!7317078 d!2271965))

(declare-fun bs!1915318 () Bool)

(declare-fun d!2271977 () Bool)

(assert (= bs!1915318 (and d!2271977 b!7317082)))

(declare-fun lambda!452596 () Int)

(assert (=> bs!1915318 (= lambda!452596 lambda!452574)))

(declare-fun bs!1915319 () Bool)

(assert (= bs!1915319 (and d!2271977 d!2271971)))

(assert (=> bs!1915319 (= lambda!452596 lambda!452595)))

(assert (=> d!2271977 (= (nullableZipper!3129 z2!461) (exists!4606 z2!461 lambda!452596))))

(declare-fun bs!1915320 () Bool)

(assert (= bs!1915320 d!2271977))

(declare-fun m!7981348 () Bool)

(assert (=> bs!1915320 m!7981348))

(assert (=> b!7317079 d!2271977))

(declare-fun bs!1915321 () Bool)

(declare-fun d!2271979 () Bool)

(assert (= bs!1915321 (and d!2271979 b!7317082)))

(declare-fun lambda!452597 () Int)

(assert (=> bs!1915321 (= lambda!452597 lambda!452574)))

(declare-fun bs!1915322 () Bool)

(assert (= bs!1915322 (and d!2271979 d!2271971)))

(assert (=> bs!1915322 (= lambda!452597 lambda!452595)))

(declare-fun bs!1915323 () Bool)

(assert (= bs!1915323 (and d!2271979 d!2271977)))

(assert (=> bs!1915323 (= lambda!452597 lambda!452596)))

(assert (=> d!2271979 (= (nullableZipper!3129 z1!542) (exists!4606 z1!542 lambda!452597))))

(declare-fun bs!1915324 () Bool)

(assert (= bs!1915324 d!2271979))

(declare-fun m!7981350 () Bool)

(assert (=> bs!1915324 m!7981350))

(assert (=> b!7317079 d!2271979))

(declare-fun bs!1915326 () Bool)

(declare-fun d!2271981 () Bool)

(assert (= bs!1915326 (and d!2271981 d!2271963)))

(declare-fun lambda!452598 () Int)

(assert (=> bs!1915326 (= lambda!452598 lambda!452586)))

(declare-fun bs!1915327 () Bool)

(assert (= bs!1915327 (and d!2271981 d!2271967)))

(assert (=> bs!1915327 (not (= lambda!452598 lambda!452592))))

(assert (=> d!2271981 (= (inv!90497 setElem!54695) (forall!17782 (exprs!8390 setElem!54695) lambda!452598))))

(declare-fun bs!1915328 () Bool)

(assert (= bs!1915328 d!2271981))

(declare-fun m!7981356 () Bool)

(assert (=> bs!1915328 m!7981356))

(assert (=> setNonEmpty!54695 d!2271981))

(declare-fun condSetEmpty!54704 () Bool)

(assert (=> setNonEmpty!54694 (= condSetEmpty!54704 (= setRest!54695 (as set.empty (Set Context!15780))))))

(declare-fun setRes!54704 () Bool)

(assert (=> setNonEmpty!54694 (= tp!2077500 setRes!54704)))

(declare-fun setIsEmpty!54704 () Bool)

(assert (=> setIsEmpty!54704 setRes!54704))

(declare-fun tp!2077522 () Bool)

(declare-fun e!4380498 () Bool)

(declare-fun setElem!54704 () Context!15780)

(declare-fun setNonEmpty!54704 () Bool)

(assert (=> setNonEmpty!54704 (= setRes!54704 (and tp!2077522 (inv!90497 setElem!54704) e!4380498))))

(declare-fun setRest!54704 () (Set Context!15780))

(assert (=> setNonEmpty!54704 (= setRest!54695 (set.union (set.insert setElem!54704 (as set.empty (Set Context!15780))) setRest!54704))))

(declare-fun b!7317129 () Bool)

(declare-fun tp!2077523 () Bool)

(assert (=> b!7317129 (= e!4380498 tp!2077523)))

(assert (= (and setNonEmpty!54694 condSetEmpty!54704) setIsEmpty!54704))

(assert (= (and setNonEmpty!54694 (not condSetEmpty!54704)) setNonEmpty!54704))

(assert (= setNonEmpty!54704 b!7317129))

(declare-fun m!7981358 () Bool)

(assert (=> setNonEmpty!54704 m!7981358))

(declare-fun b!7317134 () Bool)

(declare-fun e!4380501 () Bool)

(declare-fun tp!2077528 () Bool)

(declare-fun tp!2077529 () Bool)

(assert (=> b!7317134 (= e!4380501 (and tp!2077528 tp!2077529))))

(assert (=> b!7317083 (= tp!2077498 e!4380501)))

(assert (= (and b!7317083 (is-Cons!71205 (exprs!8390 setElem!54695))) b!7317134))

(declare-fun b!7317135 () Bool)

(declare-fun e!4380502 () Bool)

(declare-fun tp!2077530 () Bool)

(declare-fun tp!2077531 () Bool)

(assert (=> b!7317135 (= e!4380502 (and tp!2077530 tp!2077531))))

(assert (=> b!7317085 (= tp!2077501 e!4380502)))

(assert (= (and b!7317085 (is-Cons!71205 (exprs!8390 setElem!54694))) b!7317135))

(declare-fun condSetEmpty!54705 () Bool)

(assert (=> setNonEmpty!54695 (= condSetEmpty!54705 (= setRest!54694 (as set.empty (Set Context!15780))))))

(declare-fun setRes!54705 () Bool)

(assert (=> setNonEmpty!54695 (= tp!2077499 setRes!54705)))

(declare-fun setIsEmpty!54705 () Bool)

(assert (=> setIsEmpty!54705 setRes!54705))

(declare-fun tp!2077532 () Bool)

(declare-fun e!4380503 () Bool)

(declare-fun setElem!54705 () Context!15780)

(declare-fun setNonEmpty!54705 () Bool)

(assert (=> setNonEmpty!54705 (= setRes!54705 (and tp!2077532 (inv!90497 setElem!54705) e!4380503))))

(declare-fun setRest!54705 () (Set Context!15780))

(assert (=> setNonEmpty!54705 (= setRest!54694 (set.union (set.insert setElem!54705 (as set.empty (Set Context!15780))) setRest!54705))))

(declare-fun b!7317136 () Bool)

(declare-fun tp!2077533 () Bool)

(assert (=> b!7317136 (= e!4380503 tp!2077533)))

(assert (= (and setNonEmpty!54695 condSetEmpty!54705) setIsEmpty!54705))

(assert (= (and setNonEmpty!54695 (not condSetEmpty!54705)) setNonEmpty!54705))

(assert (= setNonEmpty!54705 b!7317136))

(declare-fun m!7981360 () Bool)

(assert (=> setNonEmpty!54705 m!7981360))

(declare-fun b!7317141 () Bool)

(declare-fun e!4380506 () Bool)

(declare-fun tp!2077536 () Bool)

(assert (=> b!7317141 (= e!4380506 (and tp_is_empty!47645 tp!2077536))))

(assert (=> b!7317086 (= tp!2077502 e!4380506)))

(assert (= (and b!7317086 (is-Cons!71206 (t!385562 s!7362))) b!7317141))

(declare-fun b_lambda!282635 () Bool)

(assert (= b_lambda!282633 (or b!7317082 b_lambda!282635)))

(declare-fun bs!1915329 () Bool)

(declare-fun d!2271985 () Bool)

(assert (= bs!1915329 (and d!2271985 b!7317082)))

(assert (=> bs!1915329 (= (dynLambda!29169 lambda!452574 lt!2602419) (nullableContext!411 lt!2602419))))

(declare-fun m!7981362 () Bool)

(assert (=> bs!1915329 m!7981362))

(assert (=> d!2271975 d!2271985))

(declare-fun b_lambda!282637 () Bool)

(assert (= b_lambda!282631 (or b!7317082 b_lambda!282637)))

(declare-fun bs!1915330 () Bool)

(declare-fun d!2271987 () Bool)

(assert (= bs!1915330 (and d!2271987 b!7317082)))

(assert (=> bs!1915330 (= (dynLambda!29169 lambda!452574 lt!2602410) (nullableContext!411 lt!2602410))))

(declare-fun m!7981364 () Bool)

(assert (=> bs!1915330 m!7981364))

(assert (=> d!2271959 d!2271987))

(push 1)

(assert (not bs!1915330))

(assert (not d!2271981))

(assert (not d!2271965))

(assert (not d!2271959))

(assert (not d!2271977))

(assert (not b!7317141))

(assert (not b!7317129))

(assert (not b!7317134))

(assert (not b!7317135))

(assert (not setNonEmpty!54705))

(assert (not d!2271975))

(assert (not setNonEmpty!54704))

(assert (not d!2271963))

(assert (not d!2271973))

(assert tp_is_empty!47645)

(assert (not bs!1915329))

(assert (not d!2271979))

(assert (not d!2271967))

(assert (not d!2271971))

(assert (not b!7317136))

(assert (not b_lambda!282637))

(assert (not b_lambda!282635))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

