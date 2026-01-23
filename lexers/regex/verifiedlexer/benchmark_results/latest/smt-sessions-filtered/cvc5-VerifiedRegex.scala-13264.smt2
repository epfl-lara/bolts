; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!721576 () Bool)

(assert start!721576)

(declare-fun b!7408109 () Bool)

(assert (=> b!7408109 true))

(declare-fun b!7408108 () Bool)

(assert (=> b!7408108 true))

(declare-fun lambda!459626 () Int)

(declare-fun lambda!459625 () Int)

(assert (=> b!7408108 (not (= lambda!459626 lambda!459625))))

(assert (=> b!7408108 true))

(assert (=> b!7408108 true))

(declare-fun b!7408104 () Bool)

(declare-fun res!2982468 () Bool)

(declare-fun e!4430706 () Bool)

(assert (=> b!7408104 (=> (not res!2982468) (not e!4430706))))

(declare-datatypes ((C!39078 0))(
  ( (C!39079 (val!29913 Int)) )
))
(declare-datatypes ((Regex!19402 0))(
  ( (ElementMatch!19402 (c!1374985 C!39078)) (Concat!28247 (regOne!39316 Regex!19402) (regTwo!39316 Regex!19402)) (EmptyExpr!19402) (Star!19402 (reg!19731 Regex!19402)) (EmptyLang!19402) (Union!19402 (regOne!39317 Regex!19402) (regTwo!39317 Regex!19402)) )
))
(declare-datatypes ((List!71994 0))(
  ( (Nil!71870) (Cons!71870 (h!78318 Regex!19402) (t!386553 List!71994)) )
))
(declare-datatypes ((Context!16684 0))(
  ( (Context!16685 (exprs!8842 List!71994)) )
))
(declare-fun c!10532 () Context!16684)

(declare-fun isEmpty!41042 (List!71994) Bool)

(assert (=> b!7408104 (= res!2982468 (not (isEmpty!41042 (exprs!8842 c!10532))))))

(declare-fun b!7408105 () Bool)

(declare-fun e!4430709 () Bool)

(declare-fun tp!2119474 () Bool)

(assert (=> b!7408105 (= e!4430709 tp!2119474)))

(declare-fun b!7408106 () Bool)

(declare-fun res!2982465 () Bool)

(assert (=> b!7408106 (=> (not res!2982465) (not e!4430706))))

(declare-datatypes ((List!71995 0))(
  ( (Nil!71871) (Cons!71871 (h!78319 C!39078) (t!386554 List!71995)) )
))
(declare-fun s!7927 () List!71995)

(declare-fun a!2228 () C!39078)

(assert (=> b!7408106 (= res!2982465 (and (is-Cons!71871 s!7927) (= (h!78319 s!7927) a!2228)))))

(declare-fun b!7408107 () Bool)

(declare-fun e!4430708 () Bool)

(declare-fun lt!2618353 () Context!16684)

(declare-fun inv!91867 (Context!16684) Bool)

(assert (=> b!7408107 (= e!4430708 (inv!91867 lt!2618353))))

(declare-datatypes ((Unit!165669 0))(
  ( (Unit!165670) )
))
(declare-fun lt!2618355 () Unit!165669)

(declare-fun e!4430711 () Unit!165669)

(assert (=> b!7408107 (= lt!2618355 e!4430711)))

(declare-fun c!1374984 () Bool)

(declare-fun lt!2618356 () (Set Context!16684))

(declare-fun lt!2618352 () (Set Context!16684))

(assert (=> b!7408107 (= c!1374984 (not (= lt!2618356 lt!2618352)))))

(declare-fun setIsEmpty!56220 () Bool)

(declare-fun setRes!56220 () Bool)

(assert (=> setIsEmpty!56220 setRes!56220))

(declare-fun Unit!165671 () Unit!165669)

(assert (=> b!7408108 (= e!4430711 Unit!165671)))

(declare-fun lt!2618354 () Context!16684)

(declare-fun getWitness!2439 ((Set Context!16684) Int) Context!16684)

(assert (=> b!7408108 (= lt!2618354 (getWitness!2439 lt!2618356 lambda!459625))))

(declare-fun lambda!459624 () Int)

(declare-fun z!3451 () (Set Context!16684))

(declare-fun lt!2618358 () Context!16684)

(declare-fun flatMapPost!209 ((Set Context!16684) Int Context!16684) Context!16684)

(assert (=> b!7408108 (= (flatMapPost!209 z!3451 lambda!459624 lt!2618354) lt!2618358)))

(declare-fun lt!2618357 () Context!16684)

(assert (=> b!7408108 (= lt!2618357 (getWitness!2439 z!3451 lambda!459626))))

(assert (=> b!7408108 false))

(declare-fun e!4430710 () Bool)

(assert (=> b!7408109 (= e!4430710 (not e!4430708))))

(declare-fun res!2982470 () Bool)

(assert (=> b!7408109 (=> res!2982470 e!4430708)))

(assert (=> b!7408109 (= res!2982470 (not (set.member lt!2618353 lt!2618356)))))

(assert (=> b!7408109 (= (flatMapPost!209 z!3451 lambda!459624 lt!2618353) lt!2618358)))

(declare-fun empty!3555 () Context!16684)

(assert (=> b!7408109 (= lt!2618358 empty!3555)))

(assert (=> b!7408109 true))

(declare-fun e!4430712 () Bool)

(assert (=> b!7408109 (and (inv!91867 empty!3555) e!4430712)))

(declare-fun res!2982471 () Bool)

(assert (=> start!721576 (=> (not res!2982471) (not e!4430706))))

(assert (=> start!721576 (= res!2982471 (= z!3451 (set.insert c!10532 (as set.empty (Set Context!16684)))))))

(assert (=> start!721576 e!4430706))

(declare-fun condSetEmpty!56220 () Bool)

(assert (=> start!721576 (= condSetEmpty!56220 (= z!3451 (as set.empty (Set Context!16684))))))

(assert (=> start!721576 setRes!56220))

(declare-fun e!4430713 () Bool)

(assert (=> start!721576 (and (inv!91867 c!10532) e!4430713)))

(declare-fun tp_is_empty!49067 () Bool)

(assert (=> start!721576 tp_is_empty!49067))

(declare-fun e!4430707 () Bool)

(assert (=> start!721576 e!4430707))

(declare-fun b!7408110 () Bool)

(declare-fun tp!2119475 () Bool)

(assert (=> b!7408110 (= e!4430712 tp!2119475)))

(declare-fun b!7408111 () Bool)

(declare-fun res!2982466 () Bool)

(assert (=> b!7408111 (=> (not res!2982466) (not e!4430706))))

(declare-fun head!15188 (List!71994) Regex!19402)

(assert (=> b!7408111 (= res!2982466 (= (head!15188 (exprs!8842 c!10532)) (ElementMatch!19402 a!2228)))))

(declare-fun b!7408112 () Bool)

(declare-fun Unit!165672 () Unit!165669)

(assert (=> b!7408112 (= e!4430711 Unit!165672)))

(declare-fun b!7408113 () Bool)

(declare-fun tp!2119473 () Bool)

(assert (=> b!7408113 (= e!4430713 tp!2119473)))

(declare-fun setElem!56220 () Context!16684)

(declare-fun tp!2119476 () Bool)

(declare-fun setNonEmpty!56220 () Bool)

(assert (=> setNonEmpty!56220 (= setRes!56220 (and tp!2119476 (inv!91867 setElem!56220) e!4430709))))

(declare-fun setRest!56220 () (Set Context!16684))

(assert (=> setNonEmpty!56220 (= z!3451 (set.union (set.insert setElem!56220 (as set.empty (Set Context!16684))) setRest!56220))))

(declare-fun b!7408114 () Bool)

(declare-fun tp!2119477 () Bool)

(assert (=> b!7408114 (= e!4430707 (and tp_is_empty!49067 tp!2119477))))

(declare-fun b!7408115 () Bool)

(declare-fun res!2982467 () Bool)

(assert (=> b!7408115 (=> (not res!2982467) (not e!4430706))))

(declare-fun tail!14809 (List!71994) List!71994)

(assert (=> b!7408115 (= res!2982467 (isEmpty!41042 (tail!14809 (exprs!8842 c!10532))))))

(declare-fun b!7408116 () Bool)

(assert (=> b!7408116 (= e!4430706 e!4430710)))

(declare-fun res!2982469 () Bool)

(assert (=> b!7408116 (=> (not res!2982469) (not e!4430710))))

(declare-fun lt!2618359 () C!39078)

(declare-fun derivationStepZipperUp!2806 (Context!16684 C!39078) (Set Context!16684))

(assert (=> b!7408116 (= res!2982469 (= (derivationStepZipperUp!2806 c!10532 lt!2618359) lt!2618352))))

(assert (=> b!7408116 (= lt!2618352 (set.insert lt!2618353 (as set.empty (Set Context!16684))))))

(assert (=> b!7408116 (= lt!2618353 (Context!16685 Nil!71870))))

(declare-fun derivationStepZipper!3676 ((Set Context!16684) C!39078) (Set Context!16684))

(assert (=> b!7408116 (= lt!2618356 (derivationStepZipper!3676 z!3451 lt!2618359))))

(declare-fun head!15189 (List!71995) C!39078)

(assert (=> b!7408116 (= lt!2618359 (head!15189 s!7927))))

(assert (= (and start!721576 res!2982471) b!7408104))

(assert (= (and b!7408104 res!2982468) b!7408111))

(assert (= (and b!7408111 res!2982466) b!7408115))

(assert (= (and b!7408115 res!2982467) b!7408106))

(assert (= (and b!7408106 res!2982465) b!7408116))

(assert (= (and b!7408116 res!2982469) b!7408109))

(assert (= b!7408109 b!7408110))

(assert (= (and b!7408109 (not res!2982470)) b!7408107))

(assert (= (and b!7408107 c!1374984) b!7408108))

(assert (= (and b!7408107 (not c!1374984)) b!7408112))

(assert (= (and start!721576 condSetEmpty!56220) setIsEmpty!56220))

(assert (= (and start!721576 (not condSetEmpty!56220)) setNonEmpty!56220))

(assert (= setNonEmpty!56220 b!7408105))

(assert (= start!721576 b!7408113))

(assert (= (and start!721576 (is-Cons!71871 s!7927)) b!7408114))

(declare-fun m!8043340 () Bool)

(assert (=> b!7408111 m!8043340))

(declare-fun m!8043342 () Bool)

(assert (=> start!721576 m!8043342))

(declare-fun m!8043344 () Bool)

(assert (=> start!721576 m!8043344))

(declare-fun m!8043346 () Bool)

(assert (=> b!7408109 m!8043346))

(declare-fun m!8043348 () Bool)

(assert (=> b!7408109 m!8043348))

(declare-fun m!8043350 () Bool)

(assert (=> b!7408109 m!8043350))

(declare-fun m!8043352 () Bool)

(assert (=> b!7408107 m!8043352))

(declare-fun m!8043354 () Bool)

(assert (=> b!7408115 m!8043354))

(assert (=> b!7408115 m!8043354))

(declare-fun m!8043356 () Bool)

(assert (=> b!7408115 m!8043356))

(declare-fun m!8043358 () Bool)

(assert (=> b!7408108 m!8043358))

(declare-fun m!8043360 () Bool)

(assert (=> b!7408108 m!8043360))

(declare-fun m!8043362 () Bool)

(assert (=> b!7408108 m!8043362))

(declare-fun m!8043364 () Bool)

(assert (=> b!7408104 m!8043364))

(declare-fun m!8043366 () Bool)

(assert (=> b!7408116 m!8043366))

(declare-fun m!8043368 () Bool)

(assert (=> b!7408116 m!8043368))

(declare-fun m!8043370 () Bool)

(assert (=> b!7408116 m!8043370))

(declare-fun m!8043372 () Bool)

(assert (=> b!7408116 m!8043372))

(declare-fun m!8043374 () Bool)

(assert (=> setNonEmpty!56220 m!8043374))

(push 1)

(assert (not b!7408104))

(assert (not b!7408107))

(assert (not b!7408110))

(assert (not b!7408109))

(assert (not b!7408113))

(assert (not b!7408111))

(assert (not b!7408108))

(assert (not setNonEmpty!56220))

(assert (not b!7408116))

(assert (not b!7408105))

(assert tp_is_empty!49067)

(assert (not b!7408114))

(assert (not start!721576))

(assert (not b!7408115))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2290897 () Bool)

(declare-fun e!4430740 () Bool)

(assert (=> d!2290897 e!4430740))

(declare-fun res!2982495 () Bool)

(assert (=> d!2290897 (=> (not res!2982495) (not e!4430740))))

(declare-fun lt!2618386 () Context!16684)

(declare-fun dynLambda!29640 (Int Context!16684) Bool)

(assert (=> d!2290897 (= res!2982495 (dynLambda!29640 lambda!459625 lt!2618386))))

(declare-datatypes ((List!71998 0))(
  ( (Nil!71874) (Cons!71874 (h!78322 Context!16684) (t!386557 List!71998)) )
))
(declare-fun getWitness!2441 (List!71998 Int) Context!16684)

(declare-fun toList!11755 ((Set Context!16684)) List!71998)

(assert (=> d!2290897 (= lt!2618386 (getWitness!2441 (toList!11755 lt!2618356) lambda!459625))))

(declare-fun exists!4766 ((Set Context!16684) Int) Bool)

(assert (=> d!2290897 (exists!4766 lt!2618356 lambda!459625)))

(assert (=> d!2290897 (= (getWitness!2439 lt!2618356 lambda!459625) lt!2618386)))

(declare-fun b!7408170 () Bool)

(assert (=> b!7408170 (= e!4430740 (set.member lt!2618386 lt!2618356))))

(assert (= (and d!2290897 res!2982495) b!7408170))

(declare-fun b_lambda!286263 () Bool)

(assert (=> (not b_lambda!286263) (not d!2290897)))

(declare-fun m!8043412 () Bool)

(assert (=> d!2290897 m!8043412))

(declare-fun m!8043414 () Bool)

(assert (=> d!2290897 m!8043414))

(assert (=> d!2290897 m!8043414))

(declare-fun m!8043416 () Bool)

(assert (=> d!2290897 m!8043416))

(declare-fun m!8043418 () Bool)

(assert (=> d!2290897 m!8043418))

(declare-fun m!8043420 () Bool)

(assert (=> b!7408170 m!8043420))

(assert (=> b!7408108 d!2290897))

(declare-fun bs!1924089 () Bool)

(declare-fun d!2290899 () Bool)

(assert (= bs!1924089 (and d!2290899 b!7408108)))

(declare-fun lambda!459640 () Int)

(assert (=> bs!1924089 (not (= lambda!459640 lambda!459625))))

(assert (=> bs!1924089 (not (= lambda!459640 lambda!459626))))

(assert (=> d!2290899 true))

(assert (=> d!2290899 true))

(declare-fun order!29507 () Int)

(declare-fun order!29505 () Int)

(declare-fun dynLambda!29641 (Int Int) Int)

(declare-fun dynLambda!29642 (Int Int) Int)

(assert (=> d!2290899 (< (dynLambda!29641 order!29505 lambda!459624) (dynLambda!29642 order!29507 lambda!459640))))

(declare-fun flatMap!3204 ((Set Context!16684) Int) (Set Context!16684))

(assert (=> d!2290899 (= (set.member lt!2618354 (flatMap!3204 z!3451 lambda!459624)) (exists!4766 z!3451 lambda!459640))))

(declare-fun lt!2618389 () Context!16684)

(declare-fun choose!57436 ((Set Context!16684) Int Context!16684) Context!16684)

(assert (=> d!2290899 (= lt!2618389 (choose!57436 z!3451 lambda!459624 lt!2618354))))

(assert (=> d!2290899 (= (flatMapPost!209 z!3451 lambda!459624 lt!2618354) lt!2618389)))

(declare-fun bs!1924090 () Bool)

(assert (= bs!1924090 d!2290899))

(declare-fun m!8043422 () Bool)

(assert (=> bs!1924090 m!8043422))

(declare-fun m!8043424 () Bool)

(assert (=> bs!1924090 m!8043424))

(declare-fun m!8043426 () Bool)

(assert (=> bs!1924090 m!8043426))

(declare-fun m!8043428 () Bool)

(assert (=> bs!1924090 m!8043428))

(assert (=> b!7408108 d!2290899))

(declare-fun d!2290901 () Bool)

(declare-fun e!4430741 () Bool)

(assert (=> d!2290901 e!4430741))

(declare-fun res!2982496 () Bool)

(assert (=> d!2290901 (=> (not res!2982496) (not e!4430741))))

(declare-fun lt!2618390 () Context!16684)

(assert (=> d!2290901 (= res!2982496 (dynLambda!29640 lambda!459626 lt!2618390))))

(assert (=> d!2290901 (= lt!2618390 (getWitness!2441 (toList!11755 z!3451) lambda!459626))))

(assert (=> d!2290901 (exists!4766 z!3451 lambda!459626)))

(assert (=> d!2290901 (= (getWitness!2439 z!3451 lambda!459626) lt!2618390)))

(declare-fun b!7408174 () Bool)

(assert (=> b!7408174 (= e!4430741 (set.member lt!2618390 z!3451))))

(assert (= (and d!2290901 res!2982496) b!7408174))

(declare-fun b_lambda!286265 () Bool)

(assert (=> (not b_lambda!286265) (not d!2290901)))

(declare-fun m!8043430 () Bool)

(assert (=> d!2290901 m!8043430))

(declare-fun m!8043432 () Bool)

(assert (=> d!2290901 m!8043432))

(assert (=> d!2290901 m!8043432))

(declare-fun m!8043434 () Bool)

(assert (=> d!2290901 m!8043434))

(declare-fun m!8043436 () Bool)

(assert (=> d!2290901 m!8043436))

(declare-fun m!8043438 () Bool)

(assert (=> b!7408174 m!8043438))

(assert (=> b!7408108 d!2290901))

(declare-fun d!2290903 () Bool)

(declare-fun lambda!459643 () Int)

(declare-fun forall!18188 (List!71994 Int) Bool)

(assert (=> d!2290903 (= (inv!91867 lt!2618353) (forall!18188 (exprs!8842 lt!2618353) lambda!459643))))

(declare-fun bs!1924091 () Bool)

(assert (= bs!1924091 d!2290903))

(declare-fun m!8043440 () Bool)

(assert (=> bs!1924091 m!8043440))

(assert (=> b!7408107 d!2290903))

(declare-fun d!2290905 () Bool)

(assert (=> d!2290905 (= (head!15188 (exprs!8842 c!10532)) (h!78318 (exprs!8842 c!10532)))))

(assert (=> b!7408111 d!2290905))

(declare-fun bm!682050 () Bool)

(declare-fun call!682055 () (Set Context!16684))

(declare-fun derivationStepZipperDown!3200 (Regex!19402 Context!16684 C!39078) (Set Context!16684))

(assert (=> bm!682050 (= call!682055 (derivationStepZipperDown!3200 (h!78318 (exprs!8842 c!10532)) (Context!16685 (t!386553 (exprs!8842 c!10532))) lt!2618359))))

(declare-fun b!7408185 () Bool)

(declare-fun e!4430748 () Bool)

(declare-fun nullable!8448 (Regex!19402) Bool)

(assert (=> b!7408185 (= e!4430748 (nullable!8448 (h!78318 (exprs!8842 c!10532))))))

(declare-fun b!7408186 () Bool)

(declare-fun e!4430750 () (Set Context!16684))

(declare-fun e!4430749 () (Set Context!16684))

(assert (=> b!7408186 (= e!4430750 e!4430749)))

(declare-fun c!1375002 () Bool)

(assert (=> b!7408186 (= c!1375002 (is-Cons!71870 (exprs!8842 c!10532)))))

(declare-fun b!7408187 () Bool)

(assert (=> b!7408187 (= e!4430749 (as set.empty (Set Context!16684)))))

(declare-fun b!7408188 () Bool)

(assert (=> b!7408188 (= e!4430749 call!682055)))

(declare-fun d!2290907 () Bool)

(declare-fun c!1375003 () Bool)

(assert (=> d!2290907 (= c!1375003 e!4430748)))

(declare-fun res!2982499 () Bool)

(assert (=> d!2290907 (=> (not res!2982499) (not e!4430748))))

(assert (=> d!2290907 (= res!2982499 (is-Cons!71870 (exprs!8842 c!10532)))))

(assert (=> d!2290907 (= (derivationStepZipperUp!2806 c!10532 lt!2618359) e!4430750)))

(declare-fun b!7408189 () Bool)

(assert (=> b!7408189 (= e!4430750 (set.union call!682055 (derivationStepZipperUp!2806 (Context!16685 (t!386553 (exprs!8842 c!10532))) lt!2618359)))))

(assert (= (and d!2290907 res!2982499) b!7408185))

(assert (= (and d!2290907 c!1375003) b!7408189))

(assert (= (and d!2290907 (not c!1375003)) b!7408186))

(assert (= (and b!7408186 c!1375002) b!7408188))

(assert (= (and b!7408186 (not c!1375002)) b!7408187))

(assert (= (or b!7408189 b!7408188) bm!682050))

(declare-fun m!8043442 () Bool)

(assert (=> bm!682050 m!8043442))

(declare-fun m!8043444 () Bool)

(assert (=> b!7408185 m!8043444))

(declare-fun m!8043446 () Bool)

(assert (=> b!7408189 m!8043446))

(assert (=> b!7408116 d!2290907))

(declare-fun bs!1924092 () Bool)

(declare-fun d!2290913 () Bool)

(assert (= bs!1924092 (and d!2290913 b!7408109)))

(declare-fun lambda!459646 () Int)

(assert (=> bs!1924092 (= (= lt!2618359 a!2228) (= lambda!459646 lambda!459624))))

(assert (=> d!2290913 true))

(assert (=> d!2290913 (= (derivationStepZipper!3676 z!3451 lt!2618359) (flatMap!3204 z!3451 lambda!459646))))

(declare-fun bs!1924093 () Bool)

(assert (= bs!1924093 d!2290913))

(declare-fun m!8043448 () Bool)

(assert (=> bs!1924093 m!8043448))

(assert (=> b!7408116 d!2290913))

(declare-fun d!2290915 () Bool)

(assert (=> d!2290915 (= (head!15189 s!7927) (h!78319 s!7927))))

(assert (=> b!7408116 d!2290915))

(declare-fun bs!1924094 () Bool)

(declare-fun d!2290917 () Bool)

(assert (= bs!1924094 (and d!2290917 d!2290903)))

(declare-fun lambda!459647 () Int)

(assert (=> bs!1924094 (= lambda!459647 lambda!459643)))

(assert (=> d!2290917 (= (inv!91867 c!10532) (forall!18188 (exprs!8842 c!10532) lambda!459647))))

(declare-fun bs!1924095 () Bool)

(assert (= bs!1924095 d!2290917))

(declare-fun m!8043450 () Bool)

(assert (=> bs!1924095 m!8043450))

(assert (=> start!721576 d!2290917))

(declare-fun d!2290919 () Bool)

(assert (=> d!2290919 (= (isEmpty!41042 (tail!14809 (exprs!8842 c!10532))) (is-Nil!71870 (tail!14809 (exprs!8842 c!10532))))))

(assert (=> b!7408115 d!2290919))

(declare-fun d!2290921 () Bool)

(assert (=> d!2290921 (= (tail!14809 (exprs!8842 c!10532)) (t!386553 (exprs!8842 c!10532)))))

(assert (=> b!7408115 d!2290921))

(declare-fun bs!1924096 () Bool)

(declare-fun d!2290923 () Bool)

(assert (= bs!1924096 (and d!2290923 d!2290903)))

(declare-fun lambda!459648 () Int)

(assert (=> bs!1924096 (= lambda!459648 lambda!459643)))

(declare-fun bs!1924097 () Bool)

(assert (= bs!1924097 (and d!2290923 d!2290917)))

(assert (=> bs!1924097 (= lambda!459648 lambda!459647)))

(assert (=> d!2290923 (= (inv!91867 setElem!56220) (forall!18188 (exprs!8842 setElem!56220) lambda!459648))))

(declare-fun bs!1924098 () Bool)

(assert (= bs!1924098 d!2290923))

(declare-fun m!8043452 () Bool)

(assert (=> bs!1924098 m!8043452))

(assert (=> setNonEmpty!56220 d!2290923))

(declare-fun d!2290925 () Bool)

(assert (=> d!2290925 (= (isEmpty!41042 (exprs!8842 c!10532)) (is-Nil!71870 (exprs!8842 c!10532)))))

(assert (=> b!7408104 d!2290925))

(declare-fun bs!1924099 () Bool)

(declare-fun d!2290927 () Bool)

(assert (= bs!1924099 (and d!2290927 b!7408108)))

(declare-fun lambda!459649 () Int)

(assert (=> bs!1924099 (not (= lambda!459649 lambda!459625))))

(assert (=> bs!1924099 (not (= lambda!459649 lambda!459626))))

(declare-fun bs!1924100 () Bool)

(assert (= bs!1924100 (and d!2290927 d!2290899)))

(assert (=> bs!1924100 (= (= lt!2618353 lt!2618354) (= lambda!459649 lambda!459640))))

(assert (=> d!2290927 true))

(assert (=> d!2290927 true))

(assert (=> d!2290927 (< (dynLambda!29641 order!29505 lambda!459624) (dynLambda!29642 order!29507 lambda!459649))))

(assert (=> d!2290927 (= (set.member lt!2618353 (flatMap!3204 z!3451 lambda!459624)) (exists!4766 z!3451 lambda!459649))))

(declare-fun lt!2618393 () Context!16684)

(assert (=> d!2290927 (= lt!2618393 (choose!57436 z!3451 lambda!459624 lt!2618353))))

(assert (=> d!2290927 (= (flatMapPost!209 z!3451 lambda!459624 lt!2618353) lt!2618393)))

(declare-fun bs!1924101 () Bool)

(assert (= bs!1924101 d!2290927))

(assert (=> bs!1924101 m!8043422))

(declare-fun m!8043454 () Bool)

(assert (=> bs!1924101 m!8043454))

(declare-fun m!8043456 () Bool)

(assert (=> bs!1924101 m!8043456))

(declare-fun m!8043458 () Bool)

(assert (=> bs!1924101 m!8043458))

(assert (=> b!7408109 d!2290927))

(declare-fun bs!1924102 () Bool)

(declare-fun d!2290929 () Bool)

(assert (= bs!1924102 (and d!2290929 d!2290903)))

(declare-fun lambda!459650 () Int)

(assert (=> bs!1924102 (= lambda!459650 lambda!459643)))

(declare-fun bs!1924103 () Bool)

(assert (= bs!1924103 (and d!2290929 d!2290917)))

(assert (=> bs!1924103 (= lambda!459650 lambda!459647)))

(declare-fun bs!1924104 () Bool)

(assert (= bs!1924104 (and d!2290929 d!2290923)))

(assert (=> bs!1924104 (= lambda!459650 lambda!459648)))

(assert (=> d!2290929 (= (inv!91867 empty!3555) (forall!18188 (exprs!8842 empty!3555) lambda!459650))))

(declare-fun bs!1924105 () Bool)

(assert (= bs!1924105 d!2290929))

(declare-fun m!8043460 () Bool)

(assert (=> bs!1924105 m!8043460))

(assert (=> b!7408109 d!2290929))

(declare-fun b!7408197 () Bool)

(declare-fun e!4430756 () Bool)

(declare-fun tp!2119497 () Bool)

(declare-fun tp!2119498 () Bool)

(assert (=> b!7408197 (= e!4430756 (and tp!2119497 tp!2119498))))

(assert (=> b!7408113 (= tp!2119473 e!4430756)))

(assert (= (and b!7408113 (is-Cons!71870 (exprs!8842 c!10532))) b!7408197))

(declare-fun b!7408198 () Bool)

(declare-fun e!4430757 () Bool)

(declare-fun tp!2119499 () Bool)

(declare-fun tp!2119500 () Bool)

(assert (=> b!7408198 (= e!4430757 (and tp!2119499 tp!2119500))))

(assert (=> b!7408110 (= tp!2119475 e!4430757)))

(assert (= (and b!7408110 (is-Cons!71870 (exprs!8842 empty!3555))) b!7408198))

(declare-fun b!7408203 () Bool)

(declare-fun e!4430760 () Bool)

(declare-fun tp!2119503 () Bool)

(assert (=> b!7408203 (= e!4430760 (and tp_is_empty!49067 tp!2119503))))

(assert (=> b!7408114 (= tp!2119477 e!4430760)))

(assert (= (and b!7408114 (is-Cons!71871 (t!386554 s!7927))) b!7408203))

(declare-fun condSetEmpty!56226 () Bool)

(assert (=> setNonEmpty!56220 (= condSetEmpty!56226 (= setRest!56220 (as set.empty (Set Context!16684))))))

(declare-fun setRes!56226 () Bool)

(assert (=> setNonEmpty!56220 (= tp!2119476 setRes!56226)))

(declare-fun setIsEmpty!56226 () Bool)

(assert (=> setIsEmpty!56226 setRes!56226))

(declare-fun tp!2119508 () Bool)

(declare-fun e!4430763 () Bool)

(declare-fun setElem!56226 () Context!16684)

(declare-fun setNonEmpty!56226 () Bool)

(assert (=> setNonEmpty!56226 (= setRes!56226 (and tp!2119508 (inv!91867 setElem!56226) e!4430763))))

(declare-fun setRest!56226 () (Set Context!16684))

(assert (=> setNonEmpty!56226 (= setRest!56220 (set.union (set.insert setElem!56226 (as set.empty (Set Context!16684))) setRest!56226))))

(declare-fun b!7408208 () Bool)

(declare-fun tp!2119509 () Bool)

(assert (=> b!7408208 (= e!4430763 tp!2119509)))

(assert (= (and setNonEmpty!56220 condSetEmpty!56226) setIsEmpty!56226))

(assert (= (and setNonEmpty!56220 (not condSetEmpty!56226)) setNonEmpty!56226))

(assert (= setNonEmpty!56226 b!7408208))

(declare-fun m!8043472 () Bool)

(assert (=> setNonEmpty!56226 m!8043472))

(declare-fun b!7408209 () Bool)

(declare-fun e!4430764 () Bool)

(declare-fun tp!2119510 () Bool)

(declare-fun tp!2119511 () Bool)

(assert (=> b!7408209 (= e!4430764 (and tp!2119510 tp!2119511))))

(assert (=> b!7408105 (= tp!2119474 e!4430764)))

(assert (= (and b!7408105 (is-Cons!71870 (exprs!8842 setElem!56220))) b!7408209))

(declare-fun b_lambda!286269 () Bool)

(assert (= b_lambda!286265 (or b!7408108 b_lambda!286269)))

(declare-fun bs!1924106 () Bool)

(declare-fun d!2290933 () Bool)

(assert (= bs!1924106 (and d!2290933 b!7408108)))

(assert (=> bs!1924106 (= (dynLambda!29640 lambda!459626 lt!2618390) (set.member lt!2618354 (derivationStepZipperUp!2806 lt!2618390 lt!2618359)))))

(declare-fun m!8043474 () Bool)

(assert (=> bs!1924106 m!8043474))

(declare-fun m!8043476 () Bool)

(assert (=> bs!1924106 m!8043476))

(assert (=> d!2290901 d!2290933))

(declare-fun b_lambda!286271 () Bool)

(assert (= b_lambda!286263 (or b!7408108 b_lambda!286271)))

(declare-fun bs!1924107 () Bool)

(declare-fun d!2290935 () Bool)

(assert (= bs!1924107 (and d!2290935 b!7408108)))

(assert (=> bs!1924107 (= (dynLambda!29640 lambda!459625 lt!2618386) (not (= lt!2618386 lt!2618353)))))

(assert (=> d!2290897 d!2290935))

(push 1)

(assert (not b!7408208))

(assert (not b!7408209))

(assert (not bm!682050))

(assert (not b!7408197))

(assert (not d!2290899))

(assert (not d!2290929))

(assert (not b!7408185))

(assert (not b_lambda!286269))

(assert (not d!2290927))

(assert tp_is_empty!49067)

(assert (not d!2290923))

(assert (not d!2290917))

(assert (not b!7408198))

(assert (not d!2290903))

(assert (not d!2290901))

(assert (not bs!1924106))

(assert (not b!7408189))

(assert (not d!2290913))

(assert (not b_lambda!286271))

(assert (not d!2290897))

(assert (not b!7408203))

(assert (not setNonEmpty!56226))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2290965 () Bool)

(declare-fun choose!57438 ((Set Context!16684) Int) (Set Context!16684))

(assert (=> d!2290965 (= (flatMap!3204 z!3451 lambda!459624) (choose!57438 z!3451 lambda!459624))))

(declare-fun bs!1924127 () Bool)

(assert (= bs!1924127 d!2290965))

(declare-fun m!8043524 () Bool)

(assert (=> bs!1924127 m!8043524))

(assert (=> d!2290927 d!2290965))

(declare-fun d!2290967 () Bool)

(declare-fun lt!2618402 () Bool)

(declare-fun exists!4768 (List!71998 Int) Bool)

(assert (=> d!2290967 (= lt!2618402 (exists!4768 (toList!11755 z!3451) lambda!459649))))

(declare-fun choose!57439 ((Set Context!16684) Int) Bool)

(assert (=> d!2290967 (= lt!2618402 (choose!57439 z!3451 lambda!459649))))

(assert (=> d!2290967 (= (exists!4766 z!3451 lambda!459649) lt!2618402)))

(declare-fun bs!1924128 () Bool)

(assert (= bs!1924128 d!2290967))

(assert (=> bs!1924128 m!8043432))

(assert (=> bs!1924128 m!8043432))

(declare-fun m!8043526 () Bool)

(assert (=> bs!1924128 m!8043526))

(declare-fun m!8043528 () Bool)

(assert (=> bs!1924128 m!8043528))

(assert (=> d!2290927 d!2290967))

(declare-fun bs!1924129 () Bool)

(declare-fun d!2290969 () Bool)

(assert (= bs!1924129 (and d!2290969 b!7408108)))

(declare-fun lambda!459666 () Int)

(assert (=> bs!1924129 (not (= lambda!459666 lambda!459625))))

(assert (=> bs!1924129 (not (= lambda!459666 lambda!459626))))

(declare-fun bs!1924130 () Bool)

(assert (= bs!1924130 (and d!2290969 d!2290899)))

(assert (=> bs!1924130 (= (= lt!2618353 lt!2618354) (= lambda!459666 lambda!459640))))

(declare-fun bs!1924131 () Bool)

(assert (= bs!1924131 (and d!2290969 d!2290927)))

(assert (=> bs!1924131 (= lambda!459666 lambda!459649)))

(assert (=> d!2290969 true))

(assert (=> d!2290969 true))

(assert (=> d!2290969 (< (dynLambda!29641 order!29505 lambda!459624) (dynLambda!29642 order!29507 lambda!459666))))

(assert (=> d!2290969 (= (set.member lt!2618353 (flatMap!3204 z!3451 lambda!459624)) (exists!4766 z!3451 lambda!459666))))

(declare-fun _$3!551 () Context!16684)

(declare-fun e!4430788 () Bool)

(assert (=> d!2290969 (and (inv!91867 _$3!551) e!4430788)))

(assert (=> d!2290969 (= (choose!57436 z!3451 lambda!459624 lt!2618353) _$3!551)))

(declare-fun b!7408249 () Bool)

(declare-fun tp!2119533 () Bool)

(assert (=> b!7408249 (= e!4430788 tp!2119533)))

(assert (= d!2290969 b!7408249))

(assert (=> d!2290969 m!8043422))

(assert (=> d!2290969 m!8043454))

(declare-fun m!8043530 () Bool)

(assert (=> d!2290969 m!8043530))

(declare-fun m!8043532 () Bool)

(assert (=> d!2290969 m!8043532))

(assert (=> d!2290927 d!2290969))

(declare-fun d!2290971 () Bool)

(declare-fun res!2982511 () Bool)

(declare-fun e!4430793 () Bool)

(assert (=> d!2290971 (=> res!2982511 e!4430793)))

(assert (=> d!2290971 (= res!2982511 (is-Nil!71870 (exprs!8842 setElem!56220)))))

(assert (=> d!2290971 (= (forall!18188 (exprs!8842 setElem!56220) lambda!459648) e!4430793)))

(declare-fun b!7408254 () Bool)

(declare-fun e!4430794 () Bool)

(assert (=> b!7408254 (= e!4430793 e!4430794)))

(declare-fun res!2982512 () Bool)

(assert (=> b!7408254 (=> (not res!2982512) (not e!4430794))))

(declare-fun dynLambda!29646 (Int Regex!19402) Bool)

(assert (=> b!7408254 (= res!2982512 (dynLambda!29646 lambda!459648 (h!78318 (exprs!8842 setElem!56220))))))

(declare-fun b!7408255 () Bool)

(assert (=> b!7408255 (= e!4430794 (forall!18188 (t!386553 (exprs!8842 setElem!56220)) lambda!459648))))

(assert (= (and d!2290971 (not res!2982511)) b!7408254))

(assert (= (and b!7408254 res!2982512) b!7408255))

(declare-fun b_lambda!286279 () Bool)

(assert (=> (not b_lambda!286279) (not b!7408254)))

(declare-fun m!8043534 () Bool)

(assert (=> b!7408254 m!8043534))

(declare-fun m!8043536 () Bool)

(assert (=> b!7408255 m!8043536))

(assert (=> d!2290923 d!2290971))

(declare-fun d!2290973 () Bool)

(declare-fun res!2982513 () Bool)

(declare-fun e!4430795 () Bool)

(assert (=> d!2290973 (=> res!2982513 e!4430795)))

(assert (=> d!2290973 (= res!2982513 (is-Nil!71870 (exprs!8842 lt!2618353)))))

(assert (=> d!2290973 (= (forall!18188 (exprs!8842 lt!2618353) lambda!459643) e!4430795)))

(declare-fun b!7408256 () Bool)

(declare-fun e!4430796 () Bool)

(assert (=> b!7408256 (= e!4430795 e!4430796)))

(declare-fun res!2982514 () Bool)

(assert (=> b!7408256 (=> (not res!2982514) (not e!4430796))))

(assert (=> b!7408256 (= res!2982514 (dynLambda!29646 lambda!459643 (h!78318 (exprs!8842 lt!2618353))))))

(declare-fun b!7408257 () Bool)

(assert (=> b!7408257 (= e!4430796 (forall!18188 (t!386553 (exprs!8842 lt!2618353)) lambda!459643))))

(assert (= (and d!2290973 (not res!2982513)) b!7408256))

(assert (= (and b!7408256 res!2982514) b!7408257))

(declare-fun b_lambda!286281 () Bool)

(assert (=> (not b_lambda!286281) (not b!7408256)))

(declare-fun m!8043538 () Bool)

(assert (=> b!7408256 m!8043538))

(declare-fun m!8043540 () Bool)

(assert (=> b!7408257 m!8043540))

(assert (=> d!2290903 d!2290973))

(assert (=> d!2290899 d!2290965))

(declare-fun d!2290975 () Bool)

(declare-fun lt!2618403 () Bool)

(assert (=> d!2290975 (= lt!2618403 (exists!4768 (toList!11755 z!3451) lambda!459640))))

(assert (=> d!2290975 (= lt!2618403 (choose!57439 z!3451 lambda!459640))))

(assert (=> d!2290975 (= (exists!4766 z!3451 lambda!459640) lt!2618403)))

(declare-fun bs!1924132 () Bool)

(assert (= bs!1924132 d!2290975))

(assert (=> bs!1924132 m!8043432))

(assert (=> bs!1924132 m!8043432))

(declare-fun m!8043542 () Bool)

(assert (=> bs!1924132 m!8043542))

(declare-fun m!8043544 () Bool)

(assert (=> bs!1924132 m!8043544))

(assert (=> d!2290899 d!2290975))

(declare-fun bs!1924133 () Bool)

(declare-fun d!2290977 () Bool)

(assert (= bs!1924133 (and d!2290977 d!2290969)))

(declare-fun lambda!459667 () Int)

(assert (=> bs!1924133 (= (= lt!2618354 lt!2618353) (= lambda!459667 lambda!459666))))

(declare-fun bs!1924134 () Bool)

(assert (= bs!1924134 (and d!2290977 d!2290927)))

(assert (=> bs!1924134 (= (= lt!2618354 lt!2618353) (= lambda!459667 lambda!459649))))

(declare-fun bs!1924135 () Bool)

(assert (= bs!1924135 (and d!2290977 b!7408108)))

(assert (=> bs!1924135 (not (= lambda!459667 lambda!459625))))

(assert (=> bs!1924135 (not (= lambda!459667 lambda!459626))))

(declare-fun bs!1924136 () Bool)

(assert (= bs!1924136 (and d!2290977 d!2290899)))

(assert (=> bs!1924136 (= lambda!459667 lambda!459640)))

(assert (=> d!2290977 true))

(assert (=> d!2290977 true))

(assert (=> d!2290977 (< (dynLambda!29641 order!29505 lambda!459624) (dynLambda!29642 order!29507 lambda!459667))))

(assert (=> d!2290977 (= (set.member lt!2618354 (flatMap!3204 z!3451 lambda!459624)) (exists!4766 z!3451 lambda!459667))))

(declare-fun _$3!552 () Context!16684)

(declare-fun e!4430797 () Bool)

(assert (=> d!2290977 (and (inv!91867 _$3!552) e!4430797)))

(assert (=> d!2290977 (= (choose!57436 z!3451 lambda!459624 lt!2618354) _$3!552)))

(declare-fun b!7408258 () Bool)

(declare-fun tp!2119534 () Bool)

(assert (=> b!7408258 (= e!4430797 tp!2119534)))

(assert (= d!2290977 b!7408258))

(assert (=> d!2290977 m!8043422))

(assert (=> d!2290977 m!8043424))

(declare-fun m!8043546 () Bool)

(assert (=> d!2290977 m!8043546))

(declare-fun m!8043548 () Bool)

(assert (=> d!2290977 m!8043548))

(assert (=> d!2290899 d!2290977))

(declare-fun bm!682054 () Bool)

(declare-fun call!682059 () (Set Context!16684))

(assert (=> bm!682054 (= call!682059 (derivationStepZipperDown!3200 (h!78318 (exprs!8842 (Context!16685 (t!386553 (exprs!8842 c!10532))))) (Context!16685 (t!386553 (exprs!8842 (Context!16685 (t!386553 (exprs!8842 c!10532)))))) lt!2618359))))

(declare-fun b!7408259 () Bool)

(declare-fun e!4430798 () Bool)

(assert (=> b!7408259 (= e!4430798 (nullable!8448 (h!78318 (exprs!8842 (Context!16685 (t!386553 (exprs!8842 c!10532)))))))))

(declare-fun b!7408260 () Bool)

(declare-fun e!4430800 () (Set Context!16684))

(declare-fun e!4430799 () (Set Context!16684))

(assert (=> b!7408260 (= e!4430800 e!4430799)))

(declare-fun c!1375014 () Bool)

(assert (=> b!7408260 (= c!1375014 (is-Cons!71870 (exprs!8842 (Context!16685 (t!386553 (exprs!8842 c!10532))))))))

(declare-fun b!7408261 () Bool)

(assert (=> b!7408261 (= e!4430799 (as set.empty (Set Context!16684)))))

(declare-fun b!7408262 () Bool)

(assert (=> b!7408262 (= e!4430799 call!682059)))

(declare-fun d!2290979 () Bool)

(declare-fun c!1375015 () Bool)

(assert (=> d!2290979 (= c!1375015 e!4430798)))

(declare-fun res!2982515 () Bool)

(assert (=> d!2290979 (=> (not res!2982515) (not e!4430798))))

(assert (=> d!2290979 (= res!2982515 (is-Cons!71870 (exprs!8842 (Context!16685 (t!386553 (exprs!8842 c!10532))))))))

(assert (=> d!2290979 (= (derivationStepZipperUp!2806 (Context!16685 (t!386553 (exprs!8842 c!10532))) lt!2618359) e!4430800)))

(declare-fun b!7408263 () Bool)

(assert (=> b!7408263 (= e!4430800 (set.union call!682059 (derivationStepZipperUp!2806 (Context!16685 (t!386553 (exprs!8842 (Context!16685 (t!386553 (exprs!8842 c!10532)))))) lt!2618359)))))

(assert (= (and d!2290979 res!2982515) b!7408259))

(assert (= (and d!2290979 c!1375015) b!7408263))

(assert (= (and d!2290979 (not c!1375015)) b!7408260))

(assert (= (and b!7408260 c!1375014) b!7408262))

(assert (= (and b!7408260 (not c!1375014)) b!7408261))

(assert (= (or b!7408263 b!7408262) bm!682054))

(declare-fun m!8043550 () Bool)

(assert (=> bm!682054 m!8043550))

(declare-fun m!8043552 () Bool)

(assert (=> b!7408259 m!8043552))

(declare-fun m!8043554 () Bool)

(assert (=> b!7408263 m!8043554))

(assert (=> b!7408189 d!2290979))

(declare-fun bm!682055 () Bool)

(declare-fun call!682060 () (Set Context!16684))

(assert (=> bm!682055 (= call!682060 (derivationStepZipperDown!3200 (h!78318 (exprs!8842 lt!2618390)) (Context!16685 (t!386553 (exprs!8842 lt!2618390))) lt!2618359))))

(declare-fun b!7408264 () Bool)

(declare-fun e!4430801 () Bool)

(assert (=> b!7408264 (= e!4430801 (nullable!8448 (h!78318 (exprs!8842 lt!2618390))))))

(declare-fun b!7408265 () Bool)

(declare-fun e!4430803 () (Set Context!16684))

(declare-fun e!4430802 () (Set Context!16684))

(assert (=> b!7408265 (= e!4430803 e!4430802)))

(declare-fun c!1375016 () Bool)

(assert (=> b!7408265 (= c!1375016 (is-Cons!71870 (exprs!8842 lt!2618390)))))

(declare-fun b!7408266 () Bool)

(assert (=> b!7408266 (= e!4430802 (as set.empty (Set Context!16684)))))

(declare-fun b!7408267 () Bool)

(assert (=> b!7408267 (= e!4430802 call!682060)))

(declare-fun d!2290981 () Bool)

(declare-fun c!1375017 () Bool)

(assert (=> d!2290981 (= c!1375017 e!4430801)))

(declare-fun res!2982516 () Bool)

(assert (=> d!2290981 (=> (not res!2982516) (not e!4430801))))

(assert (=> d!2290981 (= res!2982516 (is-Cons!71870 (exprs!8842 lt!2618390)))))

(assert (=> d!2290981 (= (derivationStepZipperUp!2806 lt!2618390 lt!2618359) e!4430803)))

(declare-fun b!7408268 () Bool)

(assert (=> b!7408268 (= e!4430803 (set.union call!682060 (derivationStepZipperUp!2806 (Context!16685 (t!386553 (exprs!8842 lt!2618390))) lt!2618359)))))

(assert (= (and d!2290981 res!2982516) b!7408264))

(assert (= (and d!2290981 c!1375017) b!7408268))

(assert (= (and d!2290981 (not c!1375017)) b!7408265))

(assert (= (and b!7408265 c!1375016) b!7408267))

(assert (= (and b!7408265 (not c!1375016)) b!7408266))

(assert (= (or b!7408268 b!7408267) bm!682055))

(declare-fun m!8043556 () Bool)

(assert (=> bm!682055 m!8043556))

(declare-fun m!8043558 () Bool)

(assert (=> b!7408264 m!8043558))

(declare-fun m!8043560 () Bool)

(assert (=> b!7408268 m!8043560))

(assert (=> bs!1924106 d!2290981))

(declare-fun d!2290983 () Bool)

(declare-fun e!4430815 () Bool)

(assert (=> d!2290983 e!4430815))

(declare-fun res!2982521 () Bool)

(assert (=> d!2290983 (=> (not res!2982521) (not e!4430815))))

(declare-fun lt!2618408 () Context!16684)

(assert (=> d!2290983 (= res!2982521 (dynLambda!29640 lambda!459625 lt!2618408))))

(declare-fun e!4430813 () Context!16684)

(assert (=> d!2290983 (= lt!2618408 e!4430813)))

(declare-fun c!1375023 () Bool)

(declare-fun e!4430814 () Bool)

(assert (=> d!2290983 (= c!1375023 e!4430814)))

(declare-fun res!2982522 () Bool)

(assert (=> d!2290983 (=> (not res!2982522) (not e!4430814))))

(assert (=> d!2290983 (= res!2982522 (is-Cons!71874 (toList!11755 lt!2618356)))))

(assert (=> d!2290983 (exists!4768 (toList!11755 lt!2618356) lambda!459625)))

(assert (=> d!2290983 (= (getWitness!2441 (toList!11755 lt!2618356) lambda!459625) lt!2618408)))

(declare-fun b!7408281 () Bool)

(declare-fun lt!2618409 () Unit!165669)

(declare-fun Unit!165677 () Unit!165669)

(assert (=> b!7408281 (= lt!2618409 Unit!165677)))

(assert (=> b!7408281 false))

(declare-fun e!4430812 () Context!16684)

(declare-fun head!15192 (List!71998) Context!16684)

(assert (=> b!7408281 (= e!4430812 (head!15192 (toList!11755 lt!2618356)))))

(declare-fun b!7408282 () Bool)

(declare-fun contains!20843 (List!71998 Context!16684) Bool)

(assert (=> b!7408282 (= e!4430815 (contains!20843 (toList!11755 lt!2618356) lt!2618408))))

(declare-fun b!7408283 () Bool)

(assert (=> b!7408283 (= e!4430814 (dynLambda!29640 lambda!459625 (h!78322 (toList!11755 lt!2618356))))))

(declare-fun b!7408284 () Bool)

(assert (=> b!7408284 (= e!4430813 (h!78322 (toList!11755 lt!2618356)))))

(declare-fun b!7408285 () Bool)

(assert (=> b!7408285 (= e!4430812 (getWitness!2441 (t!386557 (toList!11755 lt!2618356)) lambda!459625))))

(declare-fun b!7408286 () Bool)

(assert (=> b!7408286 (= e!4430813 e!4430812)))

(declare-fun c!1375022 () Bool)

(assert (=> b!7408286 (= c!1375022 (is-Cons!71874 (toList!11755 lt!2618356)))))

(assert (= (and d!2290983 res!2982522) b!7408283))

(assert (= (and d!2290983 c!1375023) b!7408284))

(assert (= (and d!2290983 (not c!1375023)) b!7408286))

(assert (= (and b!7408286 c!1375022) b!7408285))

(assert (= (and b!7408286 (not c!1375022)) b!7408281))

(assert (= (and d!2290983 res!2982521) b!7408282))

(declare-fun b_lambda!286283 () Bool)

(assert (=> (not b_lambda!286283) (not d!2290983)))

(declare-fun b_lambda!286285 () Bool)

(assert (=> (not b_lambda!286285) (not b!7408283)))

(declare-fun m!8043562 () Bool)

(assert (=> b!7408285 m!8043562))

(declare-fun m!8043564 () Bool)

(assert (=> d!2290983 m!8043564))

(assert (=> d!2290983 m!8043414))

(declare-fun m!8043566 () Bool)

(assert (=> d!2290983 m!8043566))

(assert (=> b!7408282 m!8043414))

(declare-fun m!8043568 () Bool)

(assert (=> b!7408282 m!8043568))

(assert (=> b!7408281 m!8043414))

(declare-fun m!8043570 () Bool)

(assert (=> b!7408281 m!8043570))

(declare-fun m!8043572 () Bool)

(assert (=> b!7408283 m!8043572))

(assert (=> d!2290897 d!2290983))

(declare-fun d!2290985 () Bool)

(declare-fun e!4430818 () Bool)

(assert (=> d!2290985 e!4430818))

(declare-fun res!2982525 () Bool)

(assert (=> d!2290985 (=> (not res!2982525) (not e!4430818))))

(declare-fun lt!2618412 () List!71998)

(declare-fun noDuplicate!3102 (List!71998) Bool)

(assert (=> d!2290985 (= res!2982525 (noDuplicate!3102 lt!2618412))))

(declare-fun choose!57440 ((Set Context!16684)) List!71998)

(assert (=> d!2290985 (= lt!2618412 (choose!57440 lt!2618356))))

(assert (=> d!2290985 (= (toList!11755 lt!2618356) lt!2618412)))

(declare-fun b!7408289 () Bool)

(declare-fun content!15214 (List!71998) (Set Context!16684))

(assert (=> b!7408289 (= e!4430818 (= (content!15214 lt!2618412) lt!2618356))))

(assert (= (and d!2290985 res!2982525) b!7408289))

(declare-fun m!8043574 () Bool)

(assert (=> d!2290985 m!8043574))

(declare-fun m!8043576 () Bool)

(assert (=> d!2290985 m!8043576))

(declare-fun m!8043578 () Bool)

(assert (=> b!7408289 m!8043578))

(assert (=> d!2290897 d!2290985))

(declare-fun d!2290987 () Bool)

(declare-fun lt!2618413 () Bool)

(assert (=> d!2290987 (= lt!2618413 (exists!4768 (toList!11755 lt!2618356) lambda!459625))))

(assert (=> d!2290987 (= lt!2618413 (choose!57439 lt!2618356 lambda!459625))))

(assert (=> d!2290987 (= (exists!4766 lt!2618356 lambda!459625) lt!2618413)))

(declare-fun bs!1924137 () Bool)

(assert (= bs!1924137 d!2290987))

(assert (=> bs!1924137 m!8043414))

(assert (=> bs!1924137 m!8043414))

(assert (=> bs!1924137 m!8043566))

(declare-fun m!8043580 () Bool)

(assert (=> bs!1924137 m!8043580))

(assert (=> d!2290897 d!2290987))

(declare-fun d!2290989 () Bool)

(declare-fun res!2982526 () Bool)

(declare-fun e!4430819 () Bool)

(assert (=> d!2290989 (=> res!2982526 e!4430819)))

(assert (=> d!2290989 (= res!2982526 (is-Nil!71870 (exprs!8842 empty!3555)))))

(assert (=> d!2290989 (= (forall!18188 (exprs!8842 empty!3555) lambda!459650) e!4430819)))

(declare-fun b!7408290 () Bool)

(declare-fun e!4430820 () Bool)

(assert (=> b!7408290 (= e!4430819 e!4430820)))

(declare-fun res!2982527 () Bool)

(assert (=> b!7408290 (=> (not res!2982527) (not e!4430820))))

(assert (=> b!7408290 (= res!2982527 (dynLambda!29646 lambda!459650 (h!78318 (exprs!8842 empty!3555))))))

(declare-fun b!7408291 () Bool)

(assert (=> b!7408291 (= e!4430820 (forall!18188 (t!386553 (exprs!8842 empty!3555)) lambda!459650))))

(assert (= (and d!2290989 (not res!2982526)) b!7408290))

(assert (= (and b!7408290 res!2982527) b!7408291))

(declare-fun b_lambda!286287 () Bool)

(assert (=> (not b_lambda!286287) (not b!7408290)))

(declare-fun m!8043582 () Bool)

(assert (=> b!7408290 m!8043582))

(declare-fun m!8043584 () Bool)

(assert (=> b!7408291 m!8043584))

(assert (=> d!2290929 d!2290989))

(declare-fun d!2290991 () Bool)

(assert (=> d!2290991 (= (flatMap!3204 z!3451 lambda!459646) (choose!57438 z!3451 lambda!459646))))

(declare-fun bs!1924138 () Bool)

(assert (= bs!1924138 d!2290991))

(declare-fun m!8043586 () Bool)

(assert (=> bs!1924138 m!8043586))

(assert (=> d!2290913 d!2290991))

(declare-fun d!2290993 () Bool)

(declare-fun res!2982528 () Bool)

(declare-fun e!4430821 () Bool)

(assert (=> d!2290993 (=> res!2982528 e!4430821)))

(assert (=> d!2290993 (= res!2982528 (is-Nil!71870 (exprs!8842 c!10532)))))

(assert (=> d!2290993 (= (forall!18188 (exprs!8842 c!10532) lambda!459647) e!4430821)))

(declare-fun b!7408292 () Bool)

(declare-fun e!4430822 () Bool)

(assert (=> b!7408292 (= e!4430821 e!4430822)))

(declare-fun res!2982529 () Bool)

(assert (=> b!7408292 (=> (not res!2982529) (not e!4430822))))

(assert (=> b!7408292 (= res!2982529 (dynLambda!29646 lambda!459647 (h!78318 (exprs!8842 c!10532))))))

(declare-fun b!7408293 () Bool)

(assert (=> b!7408293 (= e!4430822 (forall!18188 (t!386553 (exprs!8842 c!10532)) lambda!459647))))

(assert (= (and d!2290993 (not res!2982528)) b!7408292))

(assert (= (and b!7408292 res!2982529) b!7408293))

(declare-fun b_lambda!286289 () Bool)

(assert (=> (not b_lambda!286289) (not b!7408292)))

(declare-fun m!8043588 () Bool)

(assert (=> b!7408292 m!8043588))

(declare-fun m!8043590 () Bool)

(assert (=> b!7408293 m!8043590))

(assert (=> d!2290917 d!2290993))

(declare-fun d!2290995 () Bool)

(declare-fun nullableFct!3400 (Regex!19402) Bool)

(assert (=> d!2290995 (= (nullable!8448 (h!78318 (exprs!8842 c!10532))) (nullableFct!3400 (h!78318 (exprs!8842 c!10532))))))

(declare-fun bs!1924139 () Bool)

(assert (= bs!1924139 d!2290995))

(declare-fun m!8043592 () Bool)

(assert (=> bs!1924139 m!8043592))

(assert (=> b!7408185 d!2290995))

(declare-fun d!2290997 () Bool)

(declare-fun e!4430826 () Bool)

(assert (=> d!2290997 e!4430826))

(declare-fun res!2982530 () Bool)

(assert (=> d!2290997 (=> (not res!2982530) (not e!4430826))))

(declare-fun lt!2618414 () Context!16684)

(assert (=> d!2290997 (= res!2982530 (dynLambda!29640 lambda!459626 lt!2618414))))

(declare-fun e!4430824 () Context!16684)

(assert (=> d!2290997 (= lt!2618414 e!4430824)))

(declare-fun c!1375025 () Bool)

(declare-fun e!4430825 () Bool)

(assert (=> d!2290997 (= c!1375025 e!4430825)))

(declare-fun res!2982531 () Bool)

(assert (=> d!2290997 (=> (not res!2982531) (not e!4430825))))

(assert (=> d!2290997 (= res!2982531 (is-Cons!71874 (toList!11755 z!3451)))))

(assert (=> d!2290997 (exists!4768 (toList!11755 z!3451) lambda!459626)))

(assert (=> d!2290997 (= (getWitness!2441 (toList!11755 z!3451) lambda!459626) lt!2618414)))

(declare-fun b!7408294 () Bool)

(declare-fun lt!2618415 () Unit!165669)

(declare-fun Unit!165678 () Unit!165669)

(assert (=> b!7408294 (= lt!2618415 Unit!165678)))

(assert (=> b!7408294 false))

(declare-fun e!4430823 () Context!16684)

(assert (=> b!7408294 (= e!4430823 (head!15192 (toList!11755 z!3451)))))

(declare-fun b!7408295 () Bool)

(assert (=> b!7408295 (= e!4430826 (contains!20843 (toList!11755 z!3451) lt!2618414))))

(declare-fun b!7408296 () Bool)

(assert (=> b!7408296 (= e!4430825 (dynLambda!29640 lambda!459626 (h!78322 (toList!11755 z!3451))))))

(declare-fun b!7408297 () Bool)

(assert (=> b!7408297 (= e!4430824 (h!78322 (toList!11755 z!3451)))))

(declare-fun b!7408298 () Bool)

(assert (=> b!7408298 (= e!4430823 (getWitness!2441 (t!386557 (toList!11755 z!3451)) lambda!459626))))

(declare-fun b!7408299 () Bool)

(assert (=> b!7408299 (= e!4430824 e!4430823)))

(declare-fun c!1375024 () Bool)

(assert (=> b!7408299 (= c!1375024 (is-Cons!71874 (toList!11755 z!3451)))))

(assert (= (and d!2290997 res!2982531) b!7408296))

(assert (= (and d!2290997 c!1375025) b!7408297))

(assert (= (and d!2290997 (not c!1375025)) b!7408299))

(assert (= (and b!7408299 c!1375024) b!7408298))

(assert (= (and b!7408299 (not c!1375024)) b!7408294))

(assert (= (and d!2290997 res!2982530) b!7408295))

(declare-fun b_lambda!286291 () Bool)

(assert (=> (not b_lambda!286291) (not d!2290997)))

(declare-fun b_lambda!286293 () Bool)

(assert (=> (not b_lambda!286293) (not b!7408296)))

(declare-fun m!8043594 () Bool)

(assert (=> b!7408298 m!8043594))

(declare-fun m!8043596 () Bool)

(assert (=> d!2290997 m!8043596))

(assert (=> d!2290997 m!8043432))

(declare-fun m!8043598 () Bool)

(assert (=> d!2290997 m!8043598))

(assert (=> b!7408295 m!8043432))

(declare-fun m!8043600 () Bool)

(assert (=> b!7408295 m!8043600))

(assert (=> b!7408294 m!8043432))

(declare-fun m!8043602 () Bool)

(assert (=> b!7408294 m!8043602))

(declare-fun m!8043604 () Bool)

(assert (=> b!7408296 m!8043604))

(assert (=> d!2290901 d!2290997))

(declare-fun d!2290999 () Bool)

(declare-fun e!4430827 () Bool)

(assert (=> d!2290999 e!4430827))

(declare-fun res!2982532 () Bool)

(assert (=> d!2290999 (=> (not res!2982532) (not e!4430827))))

(declare-fun lt!2618416 () List!71998)

(assert (=> d!2290999 (= res!2982532 (noDuplicate!3102 lt!2618416))))

(assert (=> d!2290999 (= lt!2618416 (choose!57440 z!3451))))

(assert (=> d!2290999 (= (toList!11755 z!3451) lt!2618416)))

(declare-fun b!7408300 () Bool)

(assert (=> b!7408300 (= e!4430827 (= (content!15214 lt!2618416) z!3451))))

(assert (= (and d!2290999 res!2982532) b!7408300))

(declare-fun m!8043606 () Bool)

(assert (=> d!2290999 m!8043606))

(declare-fun m!8043608 () Bool)

(assert (=> d!2290999 m!8043608))

(declare-fun m!8043610 () Bool)

(assert (=> b!7408300 m!8043610))

(assert (=> d!2290901 d!2290999))

(declare-fun d!2291001 () Bool)

(declare-fun lt!2618417 () Bool)

(assert (=> d!2291001 (= lt!2618417 (exists!4768 (toList!11755 z!3451) lambda!459626))))

(assert (=> d!2291001 (= lt!2618417 (choose!57439 z!3451 lambda!459626))))

(assert (=> d!2291001 (= (exists!4766 z!3451 lambda!459626) lt!2618417)))

(declare-fun bs!1924140 () Bool)

(assert (= bs!1924140 d!2291001))

(assert (=> bs!1924140 m!8043432))

(assert (=> bs!1924140 m!8043432))

(assert (=> bs!1924140 m!8043598))

(declare-fun m!8043612 () Bool)

(assert (=> bs!1924140 m!8043612))

(assert (=> d!2290901 d!2291001))

(declare-fun bs!1924141 () Bool)

(declare-fun d!2291003 () Bool)

(assert (= bs!1924141 (and d!2291003 d!2290903)))

(declare-fun lambda!459668 () Int)

(assert (=> bs!1924141 (= lambda!459668 lambda!459643)))

(declare-fun bs!1924142 () Bool)

(assert (= bs!1924142 (and d!2291003 d!2290917)))

(assert (=> bs!1924142 (= lambda!459668 lambda!459647)))

(declare-fun bs!1924143 () Bool)

(assert (= bs!1924143 (and d!2291003 d!2290923)))

(assert (=> bs!1924143 (= lambda!459668 lambda!459648)))

(declare-fun bs!1924144 () Bool)

(assert (= bs!1924144 (and d!2291003 d!2290929)))

(assert (=> bs!1924144 (= lambda!459668 lambda!459650)))

(assert (=> d!2291003 (= (inv!91867 setElem!56226) (forall!18188 (exprs!8842 setElem!56226) lambda!459668))))

(declare-fun bs!1924145 () Bool)

(assert (= bs!1924145 d!2291003))

(declare-fun m!8043614 () Bool)

(assert (=> bs!1924145 m!8043614))

(assert (=> setNonEmpty!56226 d!2291003))

(declare-fun c!1375036 () Bool)

(declare-fun bm!682068 () Bool)

(declare-fun c!1375040 () Bool)

(declare-fun call!682077 () List!71994)

(declare-fun $colon$colon!3339 (List!71994 Regex!19402) List!71994)

(assert (=> bm!682068 (= call!682077 ($colon$colon!3339 (exprs!8842 (Context!16685 (t!386553 (exprs!8842 c!10532)))) (ite (or c!1375036 c!1375040) (regTwo!39316 (h!78318 (exprs!8842 c!10532))) (h!78318 (exprs!8842 c!10532)))))))

(declare-fun b!7408323 () Bool)

(declare-fun e!4430842 () (Set Context!16684))

(declare-fun call!682075 () (Set Context!16684))

(assert (=> b!7408323 (= e!4430842 call!682075)))

(declare-fun b!7408324 () Bool)

(declare-fun e!4430840 () (Set Context!16684))

(declare-fun e!4430843 () (Set Context!16684))

(assert (=> b!7408324 (= e!4430840 e!4430843)))

(declare-fun c!1375037 () Bool)

(assert (=> b!7408324 (= c!1375037 (is-Union!19402 (h!78318 (exprs!8842 c!10532))))))

(declare-fun b!7408325 () Bool)

(declare-fun call!682076 () (Set Context!16684))

(declare-fun call!682073 () (Set Context!16684))

(assert (=> b!7408325 (= e!4430843 (set.union call!682076 call!682073))))

(declare-fun b!7408326 () Bool)

(declare-fun e!4430841 () Bool)

(assert (=> b!7408326 (= e!4430841 (nullable!8448 (regOne!39316 (h!78318 (exprs!8842 c!10532)))))))

(declare-fun b!7408327 () Bool)

(assert (=> b!7408327 (= e!4430840 (set.insert (Context!16685 (t!386553 (exprs!8842 c!10532))) (as set.empty (Set Context!16684))))))

(declare-fun bm!682069 () Bool)

(declare-fun call!682078 () (Set Context!16684))

(assert (=> bm!682069 (= call!682075 call!682078)))

(declare-fun bm!682070 () Bool)

(assert (=> bm!682070 (= call!682076 (derivationStepZipperDown!3200 (ite c!1375037 (regOne!39317 (h!78318 (exprs!8842 c!10532))) (regOne!39316 (h!78318 (exprs!8842 c!10532)))) (ite c!1375037 (Context!16685 (t!386553 (exprs!8842 c!10532))) (Context!16685 call!682077)) lt!2618359))))

(declare-fun b!7408329 () Bool)

(declare-fun e!4430844 () (Set Context!16684))

(assert (=> b!7408329 (= e!4430844 call!682075)))

(declare-fun bm!682071 () Bool)

(assert (=> bm!682071 (= call!682078 call!682073)))

(declare-fun b!7408330 () Bool)

(declare-fun c!1375039 () Bool)

(assert (=> b!7408330 (= c!1375039 (is-Star!19402 (h!78318 (exprs!8842 c!10532))))))

(assert (=> b!7408330 (= e!4430844 e!4430842)))

(declare-fun b!7408331 () Bool)

(declare-fun e!4430845 () (Set Context!16684))

(assert (=> b!7408331 (= e!4430845 (set.union call!682076 call!682078))))

(declare-fun b!7408332 () Bool)

(assert (=> b!7408332 (= c!1375036 e!4430841)))

(declare-fun res!2982535 () Bool)

(assert (=> b!7408332 (=> (not res!2982535) (not e!4430841))))

(assert (=> b!7408332 (= res!2982535 (is-Concat!28247 (h!78318 (exprs!8842 c!10532))))))

(assert (=> b!7408332 (= e!4430843 e!4430845)))

(declare-fun call!682074 () List!71994)

(declare-fun bm!682072 () Bool)

(assert (=> bm!682072 (= call!682073 (derivationStepZipperDown!3200 (ite c!1375037 (regTwo!39317 (h!78318 (exprs!8842 c!10532))) (ite c!1375036 (regTwo!39316 (h!78318 (exprs!8842 c!10532))) (ite c!1375040 (regOne!39316 (h!78318 (exprs!8842 c!10532))) (reg!19731 (h!78318 (exprs!8842 c!10532)))))) (ite (or c!1375037 c!1375036) (Context!16685 (t!386553 (exprs!8842 c!10532))) (Context!16685 call!682074)) lt!2618359))))

(declare-fun d!2291005 () Bool)

(declare-fun c!1375038 () Bool)

(assert (=> d!2291005 (= c!1375038 (and (is-ElementMatch!19402 (h!78318 (exprs!8842 c!10532))) (= (c!1374985 (h!78318 (exprs!8842 c!10532))) lt!2618359)))))

(assert (=> d!2291005 (= (derivationStepZipperDown!3200 (h!78318 (exprs!8842 c!10532)) (Context!16685 (t!386553 (exprs!8842 c!10532))) lt!2618359) e!4430840)))

(declare-fun b!7408328 () Bool)

(assert (=> b!7408328 (= e!4430842 (as set.empty (Set Context!16684)))))

(declare-fun bm!682073 () Bool)

(assert (=> bm!682073 (= call!682074 call!682077)))

(declare-fun b!7408333 () Bool)

(assert (=> b!7408333 (= e!4430845 e!4430844)))

(assert (=> b!7408333 (= c!1375040 (is-Concat!28247 (h!78318 (exprs!8842 c!10532))))))

(assert (= (and d!2291005 c!1375038) b!7408327))

(assert (= (and d!2291005 (not c!1375038)) b!7408324))

(assert (= (and b!7408324 c!1375037) b!7408325))

(assert (= (and b!7408324 (not c!1375037)) b!7408332))

(assert (= (and b!7408332 res!2982535) b!7408326))

(assert (= (and b!7408332 c!1375036) b!7408331))

(assert (= (and b!7408332 (not c!1375036)) b!7408333))

(assert (= (and b!7408333 c!1375040) b!7408329))

(assert (= (and b!7408333 (not c!1375040)) b!7408330))

(assert (= (and b!7408330 c!1375039) b!7408323))

(assert (= (and b!7408330 (not c!1375039)) b!7408328))

(assert (= (or b!7408329 b!7408323) bm!682073))

(assert (= (or b!7408329 b!7408323) bm!682069))

(assert (= (or b!7408331 bm!682073) bm!682068))

(assert (= (or b!7408331 bm!682069) bm!682071))

(assert (= (or b!7408325 b!7408331) bm!682070))

(assert (= (or b!7408325 bm!682071) bm!682072))

(declare-fun m!8043616 () Bool)

(assert (=> bm!682072 m!8043616))

(declare-fun m!8043618 () Bool)

(assert (=> b!7408326 m!8043618))

(declare-fun m!8043620 () Bool)

(assert (=> b!7408327 m!8043620))

(declare-fun m!8043622 () Bool)

(assert (=> bm!682070 m!8043622))

(declare-fun m!8043624 () Bool)

(assert (=> bm!682068 m!8043624))

(assert (=> bm!682050 d!2291005))

(declare-fun b!7408334 () Bool)

(declare-fun e!4430846 () Bool)

(declare-fun tp!2119535 () Bool)

(assert (=> b!7408334 (= e!4430846 (and tp_is_empty!49067 tp!2119535))))

(assert (=> b!7408203 (= tp!2119503 e!4430846)))

(assert (= (and b!7408203 (is-Cons!71871 (t!386554 (t!386554 s!7927)))) b!7408334))

(declare-fun b!7408335 () Bool)

(declare-fun e!4430847 () Bool)

(declare-fun tp!2119536 () Bool)

(declare-fun tp!2119537 () Bool)

(assert (=> b!7408335 (= e!4430847 (and tp!2119536 tp!2119537))))

(assert (=> b!7408208 (= tp!2119509 e!4430847)))

(assert (= (and b!7408208 (is-Cons!71870 (exprs!8842 setElem!56226))) b!7408335))

(declare-fun b!7408346 () Bool)

(declare-fun e!4430850 () Bool)

(assert (=> b!7408346 (= e!4430850 tp_is_empty!49067)))

(declare-fun b!7408348 () Bool)

(declare-fun tp!2119549 () Bool)

(assert (=> b!7408348 (= e!4430850 tp!2119549)))

(declare-fun b!7408347 () Bool)

(declare-fun tp!2119552 () Bool)

(declare-fun tp!2119550 () Bool)

(assert (=> b!7408347 (= e!4430850 (and tp!2119552 tp!2119550))))

(declare-fun b!7408349 () Bool)

(declare-fun tp!2119548 () Bool)

(declare-fun tp!2119551 () Bool)

(assert (=> b!7408349 (= e!4430850 (and tp!2119548 tp!2119551))))

(assert (=> b!7408209 (= tp!2119510 e!4430850)))

(assert (= (and b!7408209 (is-ElementMatch!19402 (h!78318 (exprs!8842 setElem!56220)))) b!7408346))

(assert (= (and b!7408209 (is-Concat!28247 (h!78318 (exprs!8842 setElem!56220)))) b!7408347))

(assert (= (and b!7408209 (is-Star!19402 (h!78318 (exprs!8842 setElem!56220)))) b!7408348))

(assert (= (and b!7408209 (is-Union!19402 (h!78318 (exprs!8842 setElem!56220)))) b!7408349))

(declare-fun b!7408350 () Bool)

(declare-fun e!4430851 () Bool)

(declare-fun tp!2119553 () Bool)

(declare-fun tp!2119554 () Bool)

(assert (=> b!7408350 (= e!4430851 (and tp!2119553 tp!2119554))))

(assert (=> b!7408209 (= tp!2119511 e!4430851)))

(assert (= (and b!7408209 (is-Cons!71870 (t!386553 (exprs!8842 setElem!56220)))) b!7408350))

(declare-fun b!7408351 () Bool)

(declare-fun e!4430852 () Bool)

(assert (=> b!7408351 (= e!4430852 tp_is_empty!49067)))

(declare-fun b!7408353 () Bool)

(declare-fun tp!2119556 () Bool)

(assert (=> b!7408353 (= e!4430852 tp!2119556)))

(declare-fun b!7408352 () Bool)

(declare-fun tp!2119559 () Bool)

(declare-fun tp!2119557 () Bool)

(assert (=> b!7408352 (= e!4430852 (and tp!2119559 tp!2119557))))

(declare-fun b!7408354 () Bool)

(declare-fun tp!2119555 () Bool)

(declare-fun tp!2119558 () Bool)

(assert (=> b!7408354 (= e!4430852 (and tp!2119555 tp!2119558))))

(assert (=> b!7408197 (= tp!2119497 e!4430852)))

(assert (= (and b!7408197 (is-ElementMatch!19402 (h!78318 (exprs!8842 c!10532)))) b!7408351))

(assert (= (and b!7408197 (is-Concat!28247 (h!78318 (exprs!8842 c!10532)))) b!7408352))

(assert (= (and b!7408197 (is-Star!19402 (h!78318 (exprs!8842 c!10532)))) b!7408353))

(assert (= (and b!7408197 (is-Union!19402 (h!78318 (exprs!8842 c!10532)))) b!7408354))

(declare-fun b!7408355 () Bool)

(declare-fun e!4430853 () Bool)

(declare-fun tp!2119560 () Bool)

(declare-fun tp!2119561 () Bool)

(assert (=> b!7408355 (= e!4430853 (and tp!2119560 tp!2119561))))

(assert (=> b!7408197 (= tp!2119498 e!4430853)))

(assert (= (and b!7408197 (is-Cons!71870 (t!386553 (exprs!8842 c!10532)))) b!7408355))

(declare-fun condSetEmpty!56230 () Bool)

(assert (=> setNonEmpty!56226 (= condSetEmpty!56230 (= setRest!56226 (as set.empty (Set Context!16684))))))

(declare-fun setRes!56230 () Bool)

(assert (=> setNonEmpty!56226 (= tp!2119508 setRes!56230)))

(declare-fun setIsEmpty!56230 () Bool)

(assert (=> setIsEmpty!56230 setRes!56230))

(declare-fun setNonEmpty!56230 () Bool)

(declare-fun e!4430854 () Bool)

(declare-fun tp!2119562 () Bool)

(declare-fun setElem!56230 () Context!16684)

(assert (=> setNonEmpty!56230 (= setRes!56230 (and tp!2119562 (inv!91867 setElem!56230) e!4430854))))

(declare-fun setRest!56230 () (Set Context!16684))

(assert (=> setNonEmpty!56230 (= setRest!56226 (set.union (set.insert setElem!56230 (as set.empty (Set Context!16684))) setRest!56230))))

(declare-fun b!7408356 () Bool)

(declare-fun tp!2119563 () Bool)

(assert (=> b!7408356 (= e!4430854 tp!2119563)))

(assert (= (and setNonEmpty!56226 condSetEmpty!56230) setIsEmpty!56230))

(assert (= (and setNonEmpty!56226 (not condSetEmpty!56230)) setNonEmpty!56230))

(assert (= setNonEmpty!56230 b!7408356))

(declare-fun m!8043626 () Bool)

(assert (=> setNonEmpty!56230 m!8043626))

(declare-fun b!7408357 () Bool)

(declare-fun e!4430855 () Bool)

(assert (=> b!7408357 (= e!4430855 tp_is_empty!49067)))

(declare-fun b!7408359 () Bool)

(declare-fun tp!2119565 () Bool)

(assert (=> b!7408359 (= e!4430855 tp!2119565)))

(declare-fun b!7408358 () Bool)

(declare-fun tp!2119568 () Bool)

(declare-fun tp!2119566 () Bool)

(assert (=> b!7408358 (= e!4430855 (and tp!2119568 tp!2119566))))

(declare-fun b!7408360 () Bool)

(declare-fun tp!2119564 () Bool)

(declare-fun tp!2119567 () Bool)

(assert (=> b!7408360 (= e!4430855 (and tp!2119564 tp!2119567))))

(assert (=> b!7408198 (= tp!2119499 e!4430855)))

(assert (= (and b!7408198 (is-ElementMatch!19402 (h!78318 (exprs!8842 empty!3555)))) b!7408357))

(assert (= (and b!7408198 (is-Concat!28247 (h!78318 (exprs!8842 empty!3555)))) b!7408358))

(assert (= (and b!7408198 (is-Star!19402 (h!78318 (exprs!8842 empty!3555)))) b!7408359))

(assert (= (and b!7408198 (is-Union!19402 (h!78318 (exprs!8842 empty!3555)))) b!7408360))

(declare-fun b!7408361 () Bool)

(declare-fun e!4430856 () Bool)

(declare-fun tp!2119569 () Bool)

(declare-fun tp!2119570 () Bool)

(assert (=> b!7408361 (= e!4430856 (and tp!2119569 tp!2119570))))

(assert (=> b!7408198 (= tp!2119500 e!4430856)))

(assert (= (and b!7408198 (is-Cons!71870 (t!386553 (exprs!8842 empty!3555)))) b!7408361))

(declare-fun b_lambda!286295 () Bool)

(assert (= b_lambda!286285 (or b!7408108 b_lambda!286295)))

(declare-fun bs!1924146 () Bool)

(declare-fun d!2291007 () Bool)

(assert (= bs!1924146 (and d!2291007 b!7408108)))

(assert (=> bs!1924146 (= (dynLambda!29640 lambda!459625 (h!78322 (toList!11755 lt!2618356))) (not (= (h!78322 (toList!11755 lt!2618356)) lt!2618353)))))

(assert (=> b!7408283 d!2291007))

(declare-fun b_lambda!286297 () Bool)

(assert (= b_lambda!286283 (or b!7408108 b_lambda!286297)))

(declare-fun bs!1924147 () Bool)

(declare-fun d!2291009 () Bool)

(assert (= bs!1924147 (and d!2291009 b!7408108)))

(assert (=> bs!1924147 (= (dynLambda!29640 lambda!459625 lt!2618408) (not (= lt!2618408 lt!2618353)))))

(assert (=> d!2290983 d!2291009))

(declare-fun b_lambda!286299 () Bool)

(assert (= b_lambda!286293 (or b!7408108 b_lambda!286299)))

(declare-fun bs!1924148 () Bool)

(declare-fun d!2291011 () Bool)

(assert (= bs!1924148 (and d!2291011 b!7408108)))

(assert (=> bs!1924148 (= (dynLambda!29640 lambda!459626 (h!78322 (toList!11755 z!3451))) (set.member lt!2618354 (derivationStepZipperUp!2806 (h!78322 (toList!11755 z!3451)) lt!2618359)))))

(declare-fun m!8043628 () Bool)

(assert (=> bs!1924148 m!8043628))

(declare-fun m!8043630 () Bool)

(assert (=> bs!1924148 m!8043630))

(assert (=> b!7408296 d!2291011))

(declare-fun b_lambda!286301 () Bool)

(assert (= b_lambda!286281 (or d!2290903 b_lambda!286301)))

(declare-fun bs!1924149 () Bool)

(declare-fun d!2291013 () Bool)

(assert (= bs!1924149 (and d!2291013 d!2290903)))

(declare-fun validRegex!9959 (Regex!19402) Bool)

(assert (=> bs!1924149 (= (dynLambda!29646 lambda!459643 (h!78318 (exprs!8842 lt!2618353))) (validRegex!9959 (h!78318 (exprs!8842 lt!2618353))))))

(declare-fun m!8043632 () Bool)

(assert (=> bs!1924149 m!8043632))

(assert (=> b!7408256 d!2291013))

(declare-fun b_lambda!286303 () Bool)

(assert (= b_lambda!286287 (or d!2290929 b_lambda!286303)))

(declare-fun bs!1924150 () Bool)

(declare-fun d!2291015 () Bool)

(assert (= bs!1924150 (and d!2291015 d!2290929)))

(assert (=> bs!1924150 (= (dynLambda!29646 lambda!459650 (h!78318 (exprs!8842 empty!3555))) (validRegex!9959 (h!78318 (exprs!8842 empty!3555))))))

(declare-fun m!8043634 () Bool)

(assert (=> bs!1924150 m!8043634))

(assert (=> b!7408290 d!2291015))

(declare-fun b_lambda!286305 () Bool)

(assert (= b_lambda!286279 (or d!2290923 b_lambda!286305)))

(declare-fun bs!1924151 () Bool)

(declare-fun d!2291017 () Bool)

(assert (= bs!1924151 (and d!2291017 d!2290923)))

(assert (=> bs!1924151 (= (dynLambda!29646 lambda!459648 (h!78318 (exprs!8842 setElem!56220))) (validRegex!9959 (h!78318 (exprs!8842 setElem!56220))))))

(declare-fun m!8043636 () Bool)

(assert (=> bs!1924151 m!8043636))

(assert (=> b!7408254 d!2291017))

(declare-fun b_lambda!286307 () Bool)

(assert (= b_lambda!286289 (or d!2290917 b_lambda!286307)))

(declare-fun bs!1924152 () Bool)

(declare-fun d!2291019 () Bool)

(assert (= bs!1924152 (and d!2291019 d!2290917)))

(assert (=> bs!1924152 (= (dynLambda!29646 lambda!459647 (h!78318 (exprs!8842 c!10532))) (validRegex!9959 (h!78318 (exprs!8842 c!10532))))))

(declare-fun m!8043638 () Bool)

(assert (=> bs!1924152 m!8043638))

(assert (=> b!7408292 d!2291019))

(declare-fun b_lambda!286309 () Bool)

(assert (= b_lambda!286291 (or b!7408108 b_lambda!286309)))

(declare-fun bs!1924153 () Bool)

(declare-fun d!2291021 () Bool)

(assert (= bs!1924153 (and d!2291021 b!7408108)))

(assert (=> bs!1924153 (= (dynLambda!29640 lambda!459626 lt!2618414) (set.member lt!2618354 (derivationStepZipperUp!2806 lt!2618414 lt!2618359)))))

(declare-fun m!8043640 () Bool)

(assert (=> bs!1924153 m!8043640))

(declare-fun m!8043642 () Bool)

(assert (=> bs!1924153 m!8043642))

(assert (=> d!2290997 d!2291021))

(push 1)

(assert (not b!7408258))

(assert (not bs!1924148))

(assert (not b!7408298))

(assert (not b!7408259))

(assert (not b!7408335))

(assert (not bs!1924151))

(assert (not b!7408289))

(assert (not b!7408300))

(assert (not b!7408294))

(assert (not b_lambda!286305))

(assert (not setNonEmpty!56230))

(assert (not b!7408360))

(assert (not d!2291001))

(assert (not b!7408326))

(assert (not b!7408356))

(assert (not bm!682070))

(assert (not bm!682072))

(assert (not bm!682054))

(assert (not b_lambda!286309))

(assert (not b!7408353))

(assert (not d!2290991))

(assert (not b!7408268))

(assert (not b!7408285))

(assert (not d!2290999))

(assert (not d!2290967))

(assert (not b!7408282))

(assert (not b!7408334))

(assert (not bm!682055))

(assert (not d!2290987))

(assert (not b!7408348))

(assert (not b!7408255))

(assert (not d!2290965))

(assert (not b!7408349))

(assert (not b!7408263))

(assert (not b!7408352))

(assert (not d!2290985))

(assert (not b!7408358))

(assert (not b_lambda!286295))

(assert (not b!7408264))

(assert (not bs!1924150))

(assert (not d!2290975))

(assert (not b_lambda!286269))

(assert (not d!2290997))

(assert (not b!7408354))

(assert (not b!7408355))

(assert (not b!7408359))

(assert (not bs!1924153))

(assert (not b!7408361))

(assert (not d!2290983))

(assert (not b!7408249))

(assert (not b!7408295))

(assert (not bs!1924149))

(assert (not d!2290969))

(assert (not b_lambda!286303))

(assert (not d!2290977))

(assert (not b_lambda!286297))

(assert tp_is_empty!49067)

(assert (not b_lambda!286301))

(assert (not b!7408257))

(assert (not b_lambda!286307))

(assert (not b!7408293))

(assert (not d!2291003))

(assert (not b!7408281))

(assert (not bm!682068))

(assert (not b_lambda!286271))

(assert (not b_lambda!286299))

(assert (not d!2290995))

(assert (not bs!1924152))

(assert (not b!7408347))

(assert (not b!7408291))

(assert (not b!7408350))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

