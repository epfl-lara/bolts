; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!689174 () Bool)

(assert start!689174)

(declare-fun b!7082501 () Bool)

(assert (=> b!7082501 true))

(declare-fun e!4257959 () Bool)

(declare-datatypes ((C!35682 0))(
  ( (C!35683 (val!27543 Int)) )
))
(declare-datatypes ((Regex!17706 0))(
  ( (ElementMatch!17706 (c!1321989 C!35682)) (Concat!26551 (regOne!35924 Regex!17706) (regTwo!35924 Regex!17706)) (EmptyExpr!17706) (Star!17706 (reg!18035 Regex!17706)) (EmptyLang!17706) (Union!17706 (regOne!35925 Regex!17706) (regTwo!35925 Regex!17706)) )
))
(declare-datatypes ((List!68644 0))(
  ( (Nil!68520) (Cons!68520 (h!74968 Regex!17706) (t!382429 List!68644)) )
))
(declare-datatypes ((Context!13404 0))(
  ( (Context!13405 (exprs!7202 List!68644)) )
))
(declare-fun lt!2553543 () Context!13404)

(declare-fun ct2!306 () Context!13404)

(declare-fun inv!87125 (Context!13404) Bool)

(declare-fun ++!15877 (List!68644 List!68644) List!68644)

(assert (=> b!7082501 (= e!4257959 (not (inv!87125 (Context!13405 (++!15877 (exprs!7202 lt!2553543) (exprs!7202 ct2!306))))))))

(declare-datatypes ((Unit!162123 0))(
  ( (Unit!162124) )
))
(declare-fun lt!2553541 () Unit!162123)

(declare-fun lambda!428358 () Int)

(declare-fun lemmaConcatPreservesForall!1017 (List!68644 List!68644 Int) Unit!162123)

(assert (=> b!7082501 (= lt!2553541 (lemmaConcatPreservesForall!1017 (exprs!7202 lt!2553543) (exprs!7202 ct2!306) lambda!428358))))

(declare-fun lambda!428357 () Int)

(declare-fun lt!2553544 () Context!13404)

(declare-fun z1!570 () (Set Context!13404))

(declare-fun mapPost2!533 ((Set Context!13404) Int Context!13404) Context!13404)

(assert (=> b!7082501 (= lt!2553543 (mapPost2!533 z1!570 lambda!428357 lt!2553544))))

(declare-fun res!2893239 () Bool)

(declare-fun e!4257958 () Bool)

(assert (=> start!689174 (=> (not res!2893239) (not e!4257958))))

(declare-fun lt!2553542 () (Set Context!13404))

(declare-datatypes ((List!68645 0))(
  ( (Nil!68521) (Cons!68521 (h!74969 C!35682) (t!382430 List!68645)) )
))
(declare-fun s!7408 () List!68645)

(declare-fun matchZipper!3246 ((Set Context!13404) List!68645) Bool)

(assert (=> start!689174 (= res!2893239 (matchZipper!3246 lt!2553542 s!7408))))

(declare-fun appendTo!827 ((Set Context!13404) Context!13404) (Set Context!13404))

(assert (=> start!689174 (= lt!2553542 (appendTo!827 z1!570 ct2!306))))

(assert (=> start!689174 e!4257958))

(declare-fun condSetEmpty!50578 () Bool)

(assert (=> start!689174 (= condSetEmpty!50578 (= z1!570 (as set.empty (Set Context!13404))))))

(declare-fun setRes!50578 () Bool)

(assert (=> start!689174 setRes!50578))

(declare-fun e!4257956 () Bool)

(assert (=> start!689174 (and (inv!87125 ct2!306) e!4257956)))

(declare-fun e!4257955 () Bool)

(assert (=> start!689174 e!4257955))

(declare-fun b!7082502 () Bool)

(declare-fun tp!1943872 () Bool)

(assert (=> b!7082502 (= e!4257956 tp!1943872)))

(declare-fun b!7082503 () Bool)

(declare-fun res!2893243 () Bool)

(assert (=> b!7082503 (=> (not res!2893243) (not e!4257958))))

(declare-fun lambda!428356 () Int)

(declare-fun exists!3801 ((Set Context!13404) Int) Bool)

(assert (=> b!7082503 (= res!2893243 (exists!3801 lt!2553542 lambda!428356))))

(declare-fun b!7082504 () Bool)

(declare-fun e!4257957 () Bool)

(declare-fun tp!1943871 () Bool)

(assert (=> b!7082504 (= e!4257957 tp!1943871)))

(declare-fun setIsEmpty!50578 () Bool)

(assert (=> setIsEmpty!50578 setRes!50578))

(declare-fun b!7082505 () Bool)

(assert (=> b!7082505 (= e!4257958 e!4257959)))

(declare-fun res!2893240 () Bool)

(assert (=> b!7082505 (=> (not res!2893240) (not e!4257959))))

(declare-fun nullableContext!117 (Context!13404) Bool)

(assert (=> b!7082505 (= res!2893240 (nullableContext!117 lt!2553544))))

(declare-fun getWitness!1844 ((Set Context!13404) Int) Context!13404)

(assert (=> b!7082505 (= lt!2553544 (getWitness!1844 lt!2553542 lambda!428356))))

(declare-fun b!7082506 () Bool)

(declare-fun res!2893242 () Bool)

(assert (=> b!7082506 (=> (not res!2893242) (not e!4257958))))

(assert (=> b!7082506 (= res!2893242 (not (is-Cons!68521 s!7408)))))

(declare-fun setNonEmpty!50578 () Bool)

(declare-fun tp!1943870 () Bool)

(declare-fun setElem!50578 () Context!13404)

(assert (=> setNonEmpty!50578 (= setRes!50578 (and tp!1943870 (inv!87125 setElem!50578) e!4257957))))

(declare-fun setRest!50578 () (Set Context!13404))

(assert (=> setNonEmpty!50578 (= z1!570 (set.union (set.insert setElem!50578 (as set.empty (Set Context!13404))) setRest!50578))))

(declare-fun b!7082507 () Bool)

(declare-fun tp_is_empty!44637 () Bool)

(declare-fun tp!1943869 () Bool)

(assert (=> b!7082507 (= e!4257955 (and tp_is_empty!44637 tp!1943869))))

(declare-fun b!7082508 () Bool)

(declare-fun res!2893241 () Bool)

(assert (=> b!7082508 (=> (not res!2893241) (not e!4257958))))

(declare-fun nullableZipper!2737 ((Set Context!13404)) Bool)

(assert (=> b!7082508 (= res!2893241 (nullableZipper!2737 lt!2553542))))

(assert (= (and start!689174 res!2893239) b!7082506))

(assert (= (and b!7082506 res!2893242) b!7082508))

(assert (= (and b!7082508 res!2893241) b!7082503))

(assert (= (and b!7082503 res!2893243) b!7082505))

(assert (= (and b!7082505 res!2893240) b!7082501))

(assert (= (and start!689174 condSetEmpty!50578) setIsEmpty!50578))

(assert (= (and start!689174 (not condSetEmpty!50578)) setNonEmpty!50578))

(assert (= setNonEmpty!50578 b!7082504))

(assert (= start!689174 b!7082502))

(assert (= (and start!689174 (is-Cons!68521 s!7408)) b!7082507))

(declare-fun m!7814112 () Bool)

(assert (=> b!7082508 m!7814112))

(declare-fun m!7814114 () Bool)

(assert (=> setNonEmpty!50578 m!7814114))

(declare-fun m!7814116 () Bool)

(assert (=> b!7082503 m!7814116))

(declare-fun m!7814118 () Bool)

(assert (=> b!7082501 m!7814118))

(declare-fun m!7814120 () Bool)

(assert (=> b!7082501 m!7814120))

(declare-fun m!7814122 () Bool)

(assert (=> b!7082501 m!7814122))

(declare-fun m!7814124 () Bool)

(assert (=> b!7082501 m!7814124))

(declare-fun m!7814126 () Bool)

(assert (=> b!7082505 m!7814126))

(declare-fun m!7814128 () Bool)

(assert (=> b!7082505 m!7814128))

(declare-fun m!7814130 () Bool)

(assert (=> start!689174 m!7814130))

(declare-fun m!7814132 () Bool)

(assert (=> start!689174 m!7814132))

(declare-fun m!7814134 () Bool)

(assert (=> start!689174 m!7814134))

(push 1)

(assert (not setNonEmpty!50578))

(assert (not b!7082502))

(assert (not b!7082508))

(assert (not start!689174))

(assert tp_is_empty!44637)

(assert (not b!7082507))

(assert (not b!7082501))

(assert (not b!7082504))

(assert (not b!7082503))

(assert (not b!7082505))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!1882431 () Bool)

(declare-fun d!2215293 () Bool)

(assert (= bs!1882431 (and d!2215293 b!7082501)))

(declare-fun lambda!428374 () Int)

(assert (=> bs!1882431 (= lambda!428374 lambda!428358)))

(declare-fun forall!16668 (List!68644 Int) Bool)

(assert (=> d!2215293 (= (inv!87125 setElem!50578) (forall!16668 (exprs!7202 setElem!50578) lambda!428374))))

(declare-fun bs!1882432 () Bool)

(assert (= bs!1882432 d!2215293))

(declare-fun m!7814160 () Bool)

(assert (=> bs!1882432 m!7814160))

(assert (=> setNonEmpty!50578 d!2215293))

(declare-fun d!2215295 () Bool)

(declare-fun lt!2553561 () Bool)

(declare-datatypes ((List!68648 0))(
  ( (Nil!68524) (Cons!68524 (h!74972 Context!13404) (t!382433 List!68648)) )
))
(declare-fun exists!3803 (List!68648 Int) Bool)

(declare-fun toList!11047 ((Set Context!13404)) List!68648)

(assert (=> d!2215295 (= lt!2553561 (exists!3803 (toList!11047 lt!2553542) lambda!428356))))

(declare-fun choose!54541 ((Set Context!13404) Int) Bool)

(assert (=> d!2215295 (= lt!2553561 (choose!54541 lt!2553542 lambda!428356))))

(assert (=> d!2215295 (= (exists!3801 lt!2553542 lambda!428356) lt!2553561)))

(declare-fun bs!1882433 () Bool)

(assert (= bs!1882433 d!2215295))

(declare-fun m!7814162 () Bool)

(assert (=> bs!1882433 m!7814162))

(assert (=> bs!1882433 m!7814162))

(declare-fun m!7814164 () Bool)

(assert (=> bs!1882433 m!7814164))

(declare-fun m!7814166 () Bool)

(assert (=> bs!1882433 m!7814166))

(assert (=> b!7082503 d!2215295))

(declare-fun bs!1882434 () Bool)

(declare-fun d!2215297 () Bool)

(assert (= bs!1882434 (and d!2215297 b!7082503)))

(declare-fun lambda!428377 () Int)

(assert (=> bs!1882434 (= lambda!428377 lambda!428356)))

(assert (=> d!2215297 (= (nullableZipper!2737 lt!2553542) (exists!3801 lt!2553542 lambda!428377))))

(declare-fun bs!1882435 () Bool)

(assert (= bs!1882435 d!2215297))

(declare-fun m!7814168 () Bool)

(assert (=> bs!1882435 m!7814168))

(assert (=> b!7082508 d!2215297))

(declare-fun bs!1882436 () Bool)

(declare-fun d!2215299 () Bool)

(assert (= bs!1882436 (and d!2215299 b!7082501)))

(declare-fun lambda!428380 () Int)

(assert (=> bs!1882436 (not (= lambda!428380 lambda!428358))))

(declare-fun bs!1882437 () Bool)

(assert (= bs!1882437 (and d!2215299 d!2215293)))

(assert (=> bs!1882437 (not (= lambda!428380 lambda!428374))))

(assert (=> d!2215299 (= (nullableContext!117 lt!2553544) (forall!16668 (exprs!7202 lt!2553544) lambda!428380))))

(declare-fun bs!1882438 () Bool)

(assert (= bs!1882438 d!2215299))

(declare-fun m!7814170 () Bool)

(assert (=> bs!1882438 m!7814170))

(assert (=> b!7082505 d!2215299))

(declare-fun d!2215301 () Bool)

(declare-fun e!4257977 () Bool)

(assert (=> d!2215301 e!4257977))

(declare-fun res!2893263 () Bool)

(assert (=> d!2215301 (=> (not res!2893263) (not e!4257977))))

(declare-fun lt!2553564 () Context!13404)

(declare-fun dynLambda!27937 (Int Context!13404) Bool)

(assert (=> d!2215301 (= res!2893263 (dynLambda!27937 lambda!428356 lt!2553564))))

(declare-fun getWitness!1846 (List!68648 Int) Context!13404)

(assert (=> d!2215301 (= lt!2553564 (getWitness!1846 (toList!11047 lt!2553542) lambda!428356))))

(assert (=> d!2215301 (exists!3801 lt!2553542 lambda!428356)))

(assert (=> d!2215301 (= (getWitness!1844 lt!2553542 lambda!428356) lt!2553564)))

(declare-fun b!7082539 () Bool)

(assert (=> b!7082539 (= e!4257977 (set.member lt!2553564 lt!2553542))))

(assert (= (and d!2215301 res!2893263) b!7082539))

(declare-fun b_lambda!270665 () Bool)

(assert (=> (not b_lambda!270665) (not d!2215301)))

(declare-fun m!7814172 () Bool)

(assert (=> d!2215301 m!7814172))

(assert (=> d!2215301 m!7814162))

(assert (=> d!2215301 m!7814162))

(declare-fun m!7814174 () Bool)

(assert (=> d!2215301 m!7814174))

(assert (=> d!2215301 m!7814116))

(declare-fun m!7814176 () Bool)

(assert (=> b!7082539 m!7814176))

(assert (=> b!7082505 d!2215301))

(declare-fun bs!1882439 () Bool)

(declare-fun d!2215305 () Bool)

(assert (= bs!1882439 (and d!2215305 b!7082501)))

(declare-fun lambda!428381 () Int)

(assert (=> bs!1882439 (= lambda!428381 lambda!428358)))

(declare-fun bs!1882440 () Bool)

(assert (= bs!1882440 (and d!2215305 d!2215293)))

(assert (=> bs!1882440 (= lambda!428381 lambda!428374)))

(declare-fun bs!1882441 () Bool)

(assert (= bs!1882441 (and d!2215305 d!2215299)))

(assert (=> bs!1882441 (not (= lambda!428381 lambda!428380))))

(assert (=> d!2215305 (= (inv!87125 (Context!13405 (++!15877 (exprs!7202 lt!2553543) (exprs!7202 ct2!306)))) (forall!16668 (exprs!7202 (Context!13405 (++!15877 (exprs!7202 lt!2553543) (exprs!7202 ct2!306)))) lambda!428381))))

(declare-fun bs!1882442 () Bool)

(assert (= bs!1882442 d!2215305))

(declare-fun m!7814178 () Bool)

(assert (=> bs!1882442 m!7814178))

(assert (=> b!7082501 d!2215305))

(declare-fun b!7082549 () Bool)

(declare-fun e!4257982 () List!68644)

(assert (=> b!7082549 (= e!4257982 (Cons!68520 (h!74968 (exprs!7202 lt!2553543)) (++!15877 (t!382429 (exprs!7202 lt!2553543)) (exprs!7202 ct2!306))))))

(declare-fun lt!2553567 () List!68644)

(declare-fun b!7082551 () Bool)

(declare-fun e!4257983 () Bool)

(assert (=> b!7082551 (= e!4257983 (or (not (= (exprs!7202 ct2!306) Nil!68520)) (= lt!2553567 (exprs!7202 lt!2553543))))))

(declare-fun d!2215307 () Bool)

(assert (=> d!2215307 e!4257983))

(declare-fun res!2893269 () Bool)

(assert (=> d!2215307 (=> (not res!2893269) (not e!4257983))))

(declare-fun content!13896 (List!68644) (Set Regex!17706))

(assert (=> d!2215307 (= res!2893269 (= (content!13896 lt!2553567) (set.union (content!13896 (exprs!7202 lt!2553543)) (content!13896 (exprs!7202 ct2!306)))))))

(assert (=> d!2215307 (= lt!2553567 e!4257982)))

(declare-fun c!1322004 () Bool)

(assert (=> d!2215307 (= c!1322004 (is-Nil!68520 (exprs!7202 lt!2553543)))))

(assert (=> d!2215307 (= (++!15877 (exprs!7202 lt!2553543) (exprs!7202 ct2!306)) lt!2553567)))

(declare-fun b!7082550 () Bool)

(declare-fun res!2893268 () Bool)

(assert (=> b!7082550 (=> (not res!2893268) (not e!4257983))))

(declare-fun size!41271 (List!68644) Int)

(assert (=> b!7082550 (= res!2893268 (= (size!41271 lt!2553567) (+ (size!41271 (exprs!7202 lt!2553543)) (size!41271 (exprs!7202 ct2!306)))))))

(declare-fun b!7082548 () Bool)

(assert (=> b!7082548 (= e!4257982 (exprs!7202 ct2!306))))

(assert (= (and d!2215307 c!1322004) b!7082548))

(assert (= (and d!2215307 (not c!1322004)) b!7082549))

(assert (= (and d!2215307 res!2893269) b!7082550))

(assert (= (and b!7082550 res!2893268) b!7082551))

(declare-fun m!7814182 () Bool)

(assert (=> b!7082549 m!7814182))

(declare-fun m!7814184 () Bool)

(assert (=> d!2215307 m!7814184))

(declare-fun m!7814186 () Bool)

(assert (=> d!2215307 m!7814186))

(declare-fun m!7814188 () Bool)

(assert (=> d!2215307 m!7814188))

(declare-fun m!7814190 () Bool)

(assert (=> b!7082550 m!7814190))

(declare-fun m!7814192 () Bool)

(assert (=> b!7082550 m!7814192))

(declare-fun m!7814194 () Bool)

(assert (=> b!7082550 m!7814194))

(assert (=> b!7082501 d!2215307))

(declare-fun d!2215311 () Bool)

(assert (=> d!2215311 (forall!16668 (++!15877 (exprs!7202 lt!2553543) (exprs!7202 ct2!306)) lambda!428358)))

(declare-fun lt!2553570 () Unit!162123)

(declare-fun choose!54542 (List!68644 List!68644 Int) Unit!162123)

(assert (=> d!2215311 (= lt!2553570 (choose!54542 (exprs!7202 lt!2553543) (exprs!7202 ct2!306) lambda!428358))))

(assert (=> d!2215311 (forall!16668 (exprs!7202 lt!2553543) lambda!428358)))

(assert (=> d!2215311 (= (lemmaConcatPreservesForall!1017 (exprs!7202 lt!2553543) (exprs!7202 ct2!306) lambda!428358) lt!2553570)))

(declare-fun bs!1882445 () Bool)

(assert (= bs!1882445 d!2215311))

(assert (=> bs!1882445 m!7814118))

(assert (=> bs!1882445 m!7814118))

(declare-fun m!7814196 () Bool)

(assert (=> bs!1882445 m!7814196))

(declare-fun m!7814198 () Bool)

(assert (=> bs!1882445 m!7814198))

(declare-fun m!7814200 () Bool)

(assert (=> bs!1882445 m!7814200))

(assert (=> b!7082501 d!2215311))

(declare-fun d!2215313 () Bool)

(declare-fun e!4257989 () Bool)

(assert (=> d!2215313 e!4257989))

(declare-fun res!2893272 () Bool)

(assert (=> d!2215313 (=> (not res!2893272) (not e!4257989))))

(declare-fun lt!2553573 () Context!13404)

(declare-fun dynLambda!27938 (Int Context!13404) Context!13404)

(assert (=> d!2215313 (= res!2893272 (= lt!2553544 (dynLambda!27938 lambda!428357 lt!2553573)))))

(declare-fun choose!54543 ((Set Context!13404) Int Context!13404) Context!13404)

(assert (=> d!2215313 (= lt!2553573 (choose!54543 z1!570 lambda!428357 lt!2553544))))

(declare-fun map!16058 ((Set Context!13404) Int) (Set Context!13404))

(assert (=> d!2215313 (set.member lt!2553544 (map!16058 z1!570 lambda!428357))))

(assert (=> d!2215313 (= (mapPost2!533 z1!570 lambda!428357 lt!2553544) lt!2553573)))

(declare-fun b!7082561 () Bool)

(assert (=> b!7082561 (= e!4257989 (set.member lt!2553573 z1!570))))

(assert (= (and d!2215313 res!2893272) b!7082561))

(declare-fun b_lambda!270667 () Bool)

(assert (=> (not b_lambda!270667) (not d!2215313)))

(declare-fun m!7814212 () Bool)

(assert (=> d!2215313 m!7814212))

(declare-fun m!7814214 () Bool)

(assert (=> d!2215313 m!7814214))

(declare-fun m!7814216 () Bool)

(assert (=> d!2215313 m!7814216))

(declare-fun m!7814218 () Bool)

(assert (=> d!2215313 m!7814218))

(declare-fun m!7814220 () Bool)

(assert (=> b!7082561 m!7814220))

(assert (=> b!7082501 d!2215313))

(declare-fun d!2215317 () Bool)

(declare-fun c!1322011 () Bool)

(declare-fun isEmpty!39989 (List!68645) Bool)

(assert (=> d!2215317 (= c!1322011 (isEmpty!39989 s!7408))))

(declare-fun e!4257992 () Bool)

(assert (=> d!2215317 (= (matchZipper!3246 lt!2553542 s!7408) e!4257992)))

(declare-fun b!7082566 () Bool)

(assert (=> b!7082566 (= e!4257992 (nullableZipper!2737 lt!2553542))))

(declare-fun b!7082567 () Bool)

(declare-fun derivationStepZipper!3156 ((Set Context!13404) C!35682) (Set Context!13404))

(declare-fun head!14446 (List!68645) C!35682)

(declare-fun tail!13909 (List!68645) List!68645)

(assert (=> b!7082567 (= e!4257992 (matchZipper!3246 (derivationStepZipper!3156 lt!2553542 (head!14446 s!7408)) (tail!13909 s!7408)))))

(assert (= (and d!2215317 c!1322011) b!7082566))

(assert (= (and d!2215317 (not c!1322011)) b!7082567))

(declare-fun m!7814222 () Bool)

(assert (=> d!2215317 m!7814222))

(assert (=> b!7082566 m!7814112))

(declare-fun m!7814224 () Bool)

(assert (=> b!7082567 m!7814224))

(assert (=> b!7082567 m!7814224))

(declare-fun m!7814226 () Bool)

(assert (=> b!7082567 m!7814226))

(declare-fun m!7814228 () Bool)

(assert (=> b!7082567 m!7814228))

(assert (=> b!7082567 m!7814226))

(assert (=> b!7082567 m!7814228))

(declare-fun m!7814230 () Bool)

(assert (=> b!7082567 m!7814230))

(assert (=> start!689174 d!2215317))

(declare-fun bs!1882446 () Bool)

(declare-fun d!2215319 () Bool)

(assert (= bs!1882446 (and d!2215319 b!7082501)))

(declare-fun lambda!428393 () Int)

(assert (=> bs!1882446 (= lambda!428393 lambda!428357)))

(assert (=> d!2215319 true))

(assert (=> d!2215319 (= (appendTo!827 z1!570 ct2!306) (map!16058 z1!570 lambda!428393))))

(declare-fun bs!1882447 () Bool)

(assert (= bs!1882447 d!2215319))

(declare-fun m!7814232 () Bool)

(assert (=> bs!1882447 m!7814232))

(assert (=> start!689174 d!2215319))

(declare-fun bs!1882448 () Bool)

(declare-fun d!2215321 () Bool)

(assert (= bs!1882448 (and d!2215321 b!7082501)))

(declare-fun lambda!428394 () Int)

(assert (=> bs!1882448 (= lambda!428394 lambda!428358)))

(declare-fun bs!1882449 () Bool)

(assert (= bs!1882449 (and d!2215321 d!2215293)))

(assert (=> bs!1882449 (= lambda!428394 lambda!428374)))

(declare-fun bs!1882450 () Bool)

(assert (= bs!1882450 (and d!2215321 d!2215299)))

(assert (=> bs!1882450 (not (= lambda!428394 lambda!428380))))

(declare-fun bs!1882451 () Bool)

(assert (= bs!1882451 (and d!2215321 d!2215305)))

(assert (=> bs!1882451 (= lambda!428394 lambda!428381)))

(assert (=> d!2215321 (= (inv!87125 ct2!306) (forall!16668 (exprs!7202 ct2!306) lambda!428394))))

(declare-fun bs!1882452 () Bool)

(assert (= bs!1882452 d!2215321))

(declare-fun m!7814234 () Bool)

(assert (=> bs!1882452 m!7814234))

(assert (=> start!689174 d!2215321))

(declare-fun b!7082572 () Bool)

(declare-fun e!4257995 () Bool)

(declare-fun tp!1943887 () Bool)

(assert (=> b!7082572 (= e!4257995 (and tp_is_empty!44637 tp!1943887))))

(assert (=> b!7082507 (= tp!1943869 e!4257995)))

(assert (= (and b!7082507 (is-Cons!68521 (t!382430 s!7408))) b!7082572))

(declare-fun condSetEmpty!50584 () Bool)

(assert (=> setNonEmpty!50578 (= condSetEmpty!50584 (= setRest!50578 (as set.empty (Set Context!13404))))))

(declare-fun setRes!50584 () Bool)

(assert (=> setNonEmpty!50578 (= tp!1943870 setRes!50584)))

(declare-fun setIsEmpty!50584 () Bool)

(assert (=> setIsEmpty!50584 setRes!50584))

(declare-fun setElem!50584 () Context!13404)

(declare-fun e!4257998 () Bool)

(declare-fun setNonEmpty!50584 () Bool)

(declare-fun tp!1943893 () Bool)

(assert (=> setNonEmpty!50584 (= setRes!50584 (and tp!1943893 (inv!87125 setElem!50584) e!4257998))))

(declare-fun setRest!50584 () (Set Context!13404))

(assert (=> setNonEmpty!50584 (= setRest!50578 (set.union (set.insert setElem!50584 (as set.empty (Set Context!13404))) setRest!50584))))

(declare-fun b!7082577 () Bool)

(declare-fun tp!1943892 () Bool)

(assert (=> b!7082577 (= e!4257998 tp!1943892)))

(assert (= (and setNonEmpty!50578 condSetEmpty!50584) setIsEmpty!50584))

(assert (= (and setNonEmpty!50578 (not condSetEmpty!50584)) setNonEmpty!50584))

(assert (= setNonEmpty!50584 b!7082577))

(declare-fun m!7814238 () Bool)

(assert (=> setNonEmpty!50584 m!7814238))

(declare-fun b!7082582 () Bool)

(declare-fun e!4258001 () Bool)

(declare-fun tp!1943898 () Bool)

(declare-fun tp!1943899 () Bool)

(assert (=> b!7082582 (= e!4258001 (and tp!1943898 tp!1943899))))

(assert (=> b!7082504 (= tp!1943871 e!4258001)))

(assert (= (and b!7082504 (is-Cons!68520 (exprs!7202 setElem!50578))) b!7082582))

(declare-fun b!7082583 () Bool)

(declare-fun e!4258002 () Bool)

(declare-fun tp!1943900 () Bool)

(declare-fun tp!1943901 () Bool)

(assert (=> b!7082583 (= e!4258002 (and tp!1943900 tp!1943901))))

(assert (=> b!7082502 (= tp!1943872 e!4258002)))

(assert (= (and b!7082502 (is-Cons!68520 (exprs!7202 ct2!306))) b!7082583))

(declare-fun b_lambda!270669 () Bool)

(assert (= b_lambda!270665 (or b!7082503 b_lambda!270669)))

(declare-fun bs!1882455 () Bool)

(declare-fun d!2215325 () Bool)

(assert (= bs!1882455 (and d!2215325 b!7082503)))

(assert (=> bs!1882455 (= (dynLambda!27937 lambda!428356 lt!2553564) (nullableContext!117 lt!2553564))))

(declare-fun m!7814240 () Bool)

(assert (=> bs!1882455 m!7814240))

(assert (=> d!2215301 d!2215325))

(declare-fun b_lambda!270671 () Bool)

(assert (= b_lambda!270667 (or b!7082501 b_lambda!270671)))

(declare-fun bs!1882456 () Bool)

(declare-fun d!2215327 () Bool)

(assert (= bs!1882456 (and d!2215327 b!7082501)))

(declare-fun lt!2553578 () Unit!162123)

(assert (=> bs!1882456 (= lt!2553578 (lemmaConcatPreservesForall!1017 (exprs!7202 lt!2553573) (exprs!7202 ct2!306) lambda!428358))))

(assert (=> bs!1882456 (= (dynLambda!27938 lambda!428357 lt!2553573) (Context!13405 (++!15877 (exprs!7202 lt!2553573) (exprs!7202 ct2!306))))))

(declare-fun m!7814242 () Bool)

(assert (=> bs!1882456 m!7814242))

(declare-fun m!7814244 () Bool)

(assert (=> bs!1882456 m!7814244))

(assert (=> d!2215313 d!2215327))

(push 1)

(assert (not d!2215295))

(assert (not d!2215305))

(assert (not b_lambda!270669))

(assert (not d!2215307))

(assert (not d!2215319))

(assert (not b_lambda!270671))

(assert (not b!7082577))

(assert (not d!2215301))

(assert (not d!2215321))

(assert (not b!7082572))

(assert (not d!2215297))

(assert (not b!7082550))

(assert (not bs!1882455))

(assert (not b!7082549))

(assert (not d!2215313))

(assert (not b!7082566))

(assert (not b!7082582))

(assert (not bs!1882456))

(assert (not b!7082567))

(assert (not d!2215317))

(assert (not d!2215299))

(assert (not b!7082583))

(assert (not d!2215293))

(assert tp_is_empty!44637)

(assert (not d!2215311))

(assert (not setNonEmpty!50584))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

