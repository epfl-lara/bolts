; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!722136 () Bool)

(assert start!722136)

(declare-fun b!7412439 () Bool)

(assert (=> b!7412439 true))

(declare-fun b!7412436 () Bool)

(declare-fun e!4433075 () Bool)

(assert (=> b!7412436 (= e!4433075 false)))

(declare-fun b!7412437 () Bool)

(declare-fun res!2983606 () Bool)

(declare-fun e!4433073 () Bool)

(assert (=> b!7412437 (=> (not res!2983606) (not e!4433073))))

(declare-datatypes ((C!39110 0))(
  ( (C!39111 (val!29929 Int)) )
))
(declare-datatypes ((Regex!19418 0))(
  ( (ElementMatch!19418 (c!1375759 C!39110)) (Concat!28263 (regOne!39348 Regex!19418) (regTwo!39348 Regex!19418)) (EmptyExpr!19418) (Star!19418 (reg!19747 Regex!19418)) (EmptyLang!19418) (Union!19418 (regOne!39349 Regex!19418) (regTwo!39349 Regex!19418)) )
))
(declare-datatypes ((List!72040 0))(
  ( (Nil!71916) (Cons!71916 (h!78364 Regex!19418) (t!386601 List!72040)) )
))
(declare-datatypes ((Context!16716 0))(
  ( (Context!16717 (exprs!8858 List!72040)) )
))
(declare-fun c!10532 () Context!16716)

(declare-fun isEmpty!41068 (List!72040) Bool)

(assert (=> b!7412437 (= res!2983606 (not (isEmpty!41068 (exprs!8858 c!10532))))))

(declare-fun z!3451 () (Set Context!16716))

(declare-datatypes ((List!72041 0))(
  ( (Nil!71917) (Cons!71917 (h!78365 C!39110) (t!386602 List!72041)) )
))
(declare-fun s!7927 () List!72041)

(declare-fun a!2228 () C!39110)

(declare-fun b!7412438 () Bool)

(declare-fun e!4433074 () Bool)

(declare-fun matchZipper!3816 ((Set Context!16716) List!72041) Bool)

(assert (=> b!7412438 (= e!4433074 (not (= (matchZipper!3816 z!3451 s!7927) (= s!7927 (Cons!71917 a!2228 Nil!71917)))))))

(declare-fun lt!2619056 () (Set Context!16716))

(assert (=> b!7412438 (not (matchZipper!3816 lt!2619056 (t!386602 s!7927)))))

(declare-datatypes ((Unit!165739 0))(
  ( (Unit!165740) )
))
(declare-fun lt!2619057 () Unit!165739)

(declare-fun lemmaEmptyZipperMatchesNothing!131 ((Set Context!16716) List!72041) Unit!165739)

(assert (=> b!7412438 (= lt!2619057 (lemmaEmptyZipperMatchesNothing!131 lt!2619056 (t!386602 s!7927)))))

(declare-fun e!4433070 () Unit!165739)

(declare-fun Unit!165741 () Unit!165739)

(assert (=> b!7412439 (= e!4433070 Unit!165741)))

(declare-fun empty!3619 () Context!16716)

(declare-fun e!4433071 () Bool)

(declare-fun inv!91907 (Context!16716) Bool)

(assert (=> b!7412439 (and (inv!91907 empty!3619) e!4433071)))

(assert (=> b!7412439 true))

(declare-fun lambda!460054 () Int)

(declare-fun res!2983605 () Bool)

(declare-fun flatMapPost!225 ((Set Context!16716) Int Context!16716) Context!16716)

(declare-datatypes ((List!72042 0))(
  ( (Nil!71918) (Cons!71918 (h!78366 Context!16716) (t!386603 List!72042)) )
))
(declare-fun head!15230 (List!72042) Context!16716)

(declare-fun toList!11769 ((Set Context!16716)) List!72042)

(assert (=> b!7412439 (= res!2983605 (= (flatMapPost!225 z!3451 lambda!460054 (head!15230 (toList!11769 lt!2619056))) empty!3619))))

(assert (=> b!7412439 (=> (not res!2983605) (not e!4433075))))

(assert (=> b!7412439 e!4433075))

(declare-fun b!7412440 () Bool)

(declare-fun e!4433078 () Bool)

(declare-fun tp!2121757 () Bool)

(assert (=> b!7412440 (= e!4433078 tp!2121757)))

(declare-fun setNonEmpty!56338 () Bool)

(declare-fun e!4433076 () Bool)

(declare-fun setElem!56338 () Context!16716)

(declare-fun tp!2121759 () Bool)

(declare-fun setRes!56338 () Bool)

(assert (=> setNonEmpty!56338 (= setRes!56338 (and tp!2121759 (inv!91907 setElem!56338) e!4433076))))

(declare-fun setRest!56338 () (Set Context!16716))

(assert (=> setNonEmpty!56338 (= z!3451 (set.union (set.insert setElem!56338 (as set.empty (Set Context!16716))) setRest!56338))))

(declare-fun b!7412441 () Bool)

(declare-fun res!2983603 () Bool)

(assert (=> b!7412441 (=> (not res!2983603) (not e!4433073))))

(assert (=> b!7412441 (= res!2983603 (and (or (not (is-Cons!71917 s!7927)) (not (= (h!78365 s!7927) a!2228))) (is-Cons!71917 s!7927) (not (= (h!78365 s!7927) a!2228))))))

(declare-fun b!7412442 () Bool)

(declare-fun e!4433072 () Bool)

(assert (=> b!7412442 (= e!4433072 e!4433074)))

(declare-fun res!2983604 () Bool)

(assert (=> b!7412442 (=> (not res!2983604) (not e!4433074))))

(declare-fun lt!2619054 () Bool)

(assert (=> b!7412442 (= res!2983604 (not lt!2619054))))

(declare-fun lt!2619055 () Unit!165739)

(assert (=> b!7412442 (= lt!2619055 e!4433070)))

(declare-fun c!1375758 () Bool)

(assert (=> b!7412442 (= c!1375758 lt!2619054)))

(assert (=> b!7412442 (= lt!2619054 (not (= lt!2619056 (as set.empty (Set Context!16716)))))))

(declare-fun b!7412443 () Bool)

(declare-fun Unit!165742 () Unit!165739)

(assert (=> b!7412443 (= e!4433070 Unit!165742)))

(declare-fun res!2983610 () Bool)

(assert (=> start!722136 (=> (not res!2983610) (not e!4433073))))

(assert (=> start!722136 (= res!2983610 (= z!3451 (set.insert c!10532 (as set.empty (Set Context!16716)))))))

(assert (=> start!722136 e!4433073))

(declare-fun condSetEmpty!56338 () Bool)

(assert (=> start!722136 (= condSetEmpty!56338 (= z!3451 (as set.empty (Set Context!16716))))))

(assert (=> start!722136 setRes!56338))

(assert (=> start!722136 (and (inv!91907 c!10532) e!4433078)))

(declare-fun tp_is_empty!49099 () Bool)

(assert (=> start!722136 tp_is_empty!49099))

(declare-fun e!4433077 () Bool)

(assert (=> start!722136 e!4433077))

(declare-fun b!7412444 () Bool)

(assert (=> b!7412444 (= e!4433073 e!4433072)))

(declare-fun res!2983607 () Bool)

(assert (=> b!7412444 (=> (not res!2983607) (not e!4433072))))

(declare-fun derivationStepZipperUp!2822 (Context!16716 C!39110) (Set Context!16716))

(assert (=> b!7412444 (= res!2983607 (= (derivationStepZipperUp!2822 c!10532 (h!78365 s!7927)) (as set.empty (Set Context!16716))))))

(declare-fun derivationStepZipper!3692 ((Set Context!16716) C!39110) (Set Context!16716))

(assert (=> b!7412444 (= lt!2619056 (derivationStepZipper!3692 z!3451 (h!78365 s!7927)))))

(declare-fun b!7412445 () Bool)

(declare-fun tp!2121758 () Bool)

(assert (=> b!7412445 (= e!4433077 (and tp_is_empty!49099 tp!2121758))))

(declare-fun b!7412446 () Bool)

(declare-fun tp!2121760 () Bool)

(assert (=> b!7412446 (= e!4433071 tp!2121760)))

(declare-fun setIsEmpty!56338 () Bool)

(assert (=> setIsEmpty!56338 setRes!56338))

(declare-fun b!7412447 () Bool)

(declare-fun res!2983608 () Bool)

(assert (=> b!7412447 (=> (not res!2983608) (not e!4433073))))

(declare-fun tail!14833 (List!72040) List!72040)

(assert (=> b!7412447 (= res!2983608 (isEmpty!41068 (tail!14833 (exprs!8858 c!10532))))))

(declare-fun b!7412448 () Bool)

(declare-fun tp!2121761 () Bool)

(assert (=> b!7412448 (= e!4433076 tp!2121761)))

(declare-fun b!7412449 () Bool)

(declare-fun res!2983609 () Bool)

(assert (=> b!7412449 (=> (not res!2983609) (not e!4433073))))

(declare-fun head!15231 (List!72040) Regex!19418)

(assert (=> b!7412449 (= res!2983609 (= (head!15231 (exprs!8858 c!10532)) (ElementMatch!19418 a!2228)))))

(assert (= (and start!722136 res!2983610) b!7412437))

(assert (= (and b!7412437 res!2983606) b!7412449))

(assert (= (and b!7412449 res!2983609) b!7412447))

(assert (= (and b!7412447 res!2983608) b!7412441))

(assert (= (and b!7412441 res!2983603) b!7412444))

(assert (= (and b!7412444 res!2983607) b!7412442))

(assert (= (and b!7412442 c!1375758) b!7412439))

(assert (= (and b!7412442 (not c!1375758)) b!7412443))

(assert (= b!7412439 b!7412446))

(assert (= (and b!7412439 res!2983605) b!7412436))

(assert (= (and b!7412442 res!2983604) b!7412438))

(assert (= (and start!722136 condSetEmpty!56338) setIsEmpty!56338))

(assert (= (and start!722136 (not condSetEmpty!56338)) setNonEmpty!56338))

(assert (= setNonEmpty!56338 b!7412448))

(assert (= start!722136 b!7412440))

(assert (= (and start!722136 (is-Cons!71917 s!7927)) b!7412445))

(declare-fun m!8046976 () Bool)

(assert (=> b!7412449 m!8046976))

(declare-fun m!8046978 () Bool)

(assert (=> b!7412439 m!8046978))

(declare-fun m!8046980 () Bool)

(assert (=> b!7412439 m!8046980))

(assert (=> b!7412439 m!8046980))

(declare-fun m!8046982 () Bool)

(assert (=> b!7412439 m!8046982))

(assert (=> b!7412439 m!8046982))

(declare-fun m!8046984 () Bool)

(assert (=> b!7412439 m!8046984))

(declare-fun m!8046986 () Bool)

(assert (=> b!7412444 m!8046986))

(declare-fun m!8046988 () Bool)

(assert (=> b!7412444 m!8046988))

(declare-fun m!8046990 () Bool)

(assert (=> b!7412438 m!8046990))

(declare-fun m!8046992 () Bool)

(assert (=> b!7412438 m!8046992))

(declare-fun m!8046994 () Bool)

(assert (=> b!7412438 m!8046994))

(declare-fun m!8046996 () Bool)

(assert (=> setNonEmpty!56338 m!8046996))

(declare-fun m!8046998 () Bool)

(assert (=> start!722136 m!8046998))

(declare-fun m!8047000 () Bool)

(assert (=> start!722136 m!8047000))

(declare-fun m!8047002 () Bool)

(assert (=> b!7412447 m!8047002))

(assert (=> b!7412447 m!8047002))

(declare-fun m!8047004 () Bool)

(assert (=> b!7412447 m!8047004))

(declare-fun m!8047006 () Bool)

(assert (=> b!7412437 m!8047006))

(push 1)

(assert (not b!7412444))

(assert (not b!7412439))

(assert (not b!7412448))

(assert (not b!7412446))

(assert tp_is_empty!49099)

(assert (not b!7412449))

(assert (not b!7412445))

(assert (not b!7412447))

(assert (not b!7412437))

(assert (not b!7412438))

(assert (not start!722136))

(assert (not setNonEmpty!56338))

(assert (not b!7412440))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2292481 () Bool)

(assert (=> d!2292481 (= (head!15231 (exprs!8858 c!10532)) (h!78364 (exprs!8858 c!10532)))))

(assert (=> b!7412449 d!2292481))

(declare-fun d!2292483 () Bool)

(declare-fun lambda!460060 () Int)

(declare-fun forall!18204 (List!72040 Int) Bool)

(assert (=> d!2292483 (= (inv!91907 c!10532) (forall!18204 (exprs!8858 c!10532) lambda!460060))))

(declare-fun bs!1924903 () Bool)

(assert (= bs!1924903 d!2292483))

(declare-fun m!8047040 () Bool)

(assert (=> bs!1924903 m!8047040))

(assert (=> start!722136 d!2292483))

(declare-fun bs!1924904 () Bool)

(declare-fun d!2292485 () Bool)

(assert (= bs!1924904 (and d!2292485 d!2292483)))

(declare-fun lambda!460061 () Int)

(assert (=> bs!1924904 (= lambda!460061 lambda!460060)))

(assert (=> d!2292485 (= (inv!91907 setElem!56338) (forall!18204 (exprs!8858 setElem!56338) lambda!460061))))

(declare-fun bs!1924905 () Bool)

(assert (= bs!1924905 d!2292485))

(declare-fun m!8047042 () Bool)

(assert (=> bs!1924905 m!8047042))

(assert (=> setNonEmpty!56338 d!2292485))

(declare-fun bs!1924906 () Bool)

(declare-fun d!2292487 () Bool)

(assert (= bs!1924906 (and d!2292487 d!2292483)))

(declare-fun lambda!460062 () Int)

(assert (=> bs!1924906 (= lambda!460062 lambda!460060)))

(declare-fun bs!1924907 () Bool)

(assert (= bs!1924907 (and d!2292487 d!2292485)))

(assert (=> bs!1924907 (= lambda!460062 lambda!460061)))

(assert (=> d!2292487 (= (inv!91907 empty!3619) (forall!18204 (exprs!8858 empty!3619) lambda!460062))))

(declare-fun bs!1924908 () Bool)

(assert (= bs!1924908 d!2292487))

(declare-fun m!8047044 () Bool)

(assert (=> bs!1924908 m!8047044))

(assert (=> b!7412439 d!2292487))

(declare-fun d!2292489 () Bool)

(assert (=> d!2292489 true))

(assert (=> d!2292489 true))

(declare-fun lambda!460065 () Int)

(declare-fun order!29561 () Int)

(declare-fun order!29563 () Int)

(declare-fun dynLambda!29692 (Int Int) Int)

(declare-fun dynLambda!29693 (Int Int) Int)

(assert (=> d!2292489 (< (dynLambda!29692 order!29561 lambda!460054) (dynLambda!29693 order!29563 lambda!460065))))

(declare-fun flatMap!3218 ((Set Context!16716) Int) (Set Context!16716))

(declare-fun exists!4790 ((Set Context!16716) Int) Bool)

(assert (=> d!2292489 (= (set.member (head!15230 (toList!11769 lt!2619056)) (flatMap!3218 z!3451 lambda!460054)) (exists!4790 z!3451 lambda!460065))))

(declare-fun lt!2619072 () Context!16716)

(declare-fun choose!57485 ((Set Context!16716) Int Context!16716) Context!16716)

(assert (=> d!2292489 (= lt!2619072 (choose!57485 z!3451 lambda!460054 (head!15230 (toList!11769 lt!2619056))))))

(assert (=> d!2292489 (= (flatMapPost!225 z!3451 lambda!460054 (head!15230 (toList!11769 lt!2619056))) lt!2619072)))

(declare-fun bs!1924909 () Bool)

(assert (= bs!1924909 d!2292489))

(declare-fun m!8047046 () Bool)

(assert (=> bs!1924909 m!8047046))

(assert (=> bs!1924909 m!8046982))

(declare-fun m!8047048 () Bool)

(assert (=> bs!1924909 m!8047048))

(declare-fun m!8047050 () Bool)

(assert (=> bs!1924909 m!8047050))

(assert (=> bs!1924909 m!8046982))

(declare-fun m!8047052 () Bool)

(assert (=> bs!1924909 m!8047052))

(assert (=> b!7412439 d!2292489))

(declare-fun d!2292491 () Bool)

(assert (=> d!2292491 (= (head!15230 (toList!11769 lt!2619056)) (h!78366 (toList!11769 lt!2619056)))))

(assert (=> b!7412439 d!2292491))

(declare-fun d!2292493 () Bool)

(declare-fun e!4433108 () Bool)

(assert (=> d!2292493 e!4433108))

(declare-fun res!2983637 () Bool)

(assert (=> d!2292493 (=> (not res!2983637) (not e!4433108))))

(declare-fun lt!2619075 () List!72042)

(declare-fun noDuplicate!3111 (List!72042) Bool)

(assert (=> d!2292493 (= res!2983637 (noDuplicate!3111 lt!2619075))))

(declare-fun choose!57486 ((Set Context!16716)) List!72042)

(assert (=> d!2292493 (= lt!2619075 (choose!57486 lt!2619056))))

(assert (=> d!2292493 (= (toList!11769 lt!2619056) lt!2619075)))

(declare-fun b!7412503 () Bool)

(declare-fun content!15223 (List!72042) (Set Context!16716))

(assert (=> b!7412503 (= e!4433108 (= (content!15223 lt!2619075) lt!2619056))))

(assert (= (and d!2292493 res!2983637) b!7412503))

(declare-fun m!8047054 () Bool)

(assert (=> d!2292493 m!8047054))

(declare-fun m!8047056 () Bool)

(assert (=> d!2292493 m!8047056))

(declare-fun m!8047058 () Bool)

(assert (=> b!7412503 m!8047058))

(assert (=> b!7412439 d!2292493))

(declare-fun b!7412514 () Bool)

(declare-fun e!4433115 () Bool)

(declare-fun nullable!8462 (Regex!19418) Bool)

(assert (=> b!7412514 (= e!4433115 (nullable!8462 (h!78364 (exprs!8858 c!10532))))))

(declare-fun b!7412515 () Bool)

(declare-fun e!4433116 () (Set Context!16716))

(declare-fun call!682531 () (Set Context!16716))

(assert (=> b!7412515 (= e!4433116 call!682531)))

(declare-fun e!4433117 () (Set Context!16716))

(declare-fun b!7412516 () Bool)

(assert (=> b!7412516 (= e!4433117 (set.union call!682531 (derivationStepZipperUp!2822 (Context!16717 (t!386601 (exprs!8858 c!10532))) (h!78365 s!7927))))))

(declare-fun b!7412517 () Bool)

(assert (=> b!7412517 (= e!4433116 (as set.empty (Set Context!16716)))))

(declare-fun b!7412518 () Bool)

(assert (=> b!7412518 (= e!4433117 e!4433116)))

(declare-fun c!1375769 () Bool)

(assert (=> b!7412518 (= c!1375769 (is-Cons!71916 (exprs!8858 c!10532)))))

(declare-fun d!2292495 () Bool)

(declare-fun c!1375768 () Bool)

(assert (=> d!2292495 (= c!1375768 e!4433115)))

(declare-fun res!2983640 () Bool)

(assert (=> d!2292495 (=> (not res!2983640) (not e!4433115))))

(assert (=> d!2292495 (= res!2983640 (is-Cons!71916 (exprs!8858 c!10532)))))

(assert (=> d!2292495 (= (derivationStepZipperUp!2822 c!10532 (h!78365 s!7927)) e!4433117)))

(declare-fun bm!682526 () Bool)

(declare-fun derivationStepZipperDown!3214 (Regex!19418 Context!16716 C!39110) (Set Context!16716))

(assert (=> bm!682526 (= call!682531 (derivationStepZipperDown!3214 (h!78364 (exprs!8858 c!10532)) (Context!16717 (t!386601 (exprs!8858 c!10532))) (h!78365 s!7927)))))

(assert (= (and d!2292495 res!2983640) b!7412514))

(assert (= (and d!2292495 c!1375768) b!7412516))

(assert (= (and d!2292495 (not c!1375768)) b!7412518))

(assert (= (and b!7412518 c!1375769) b!7412515))

(assert (= (and b!7412518 (not c!1375769)) b!7412517))

(assert (= (or b!7412516 b!7412515) bm!682526))

(declare-fun m!8047060 () Bool)

(assert (=> b!7412514 m!8047060))

(declare-fun m!8047062 () Bool)

(assert (=> b!7412516 m!8047062))

(declare-fun m!8047064 () Bool)

(assert (=> bm!682526 m!8047064))

(assert (=> b!7412444 d!2292495))

(declare-fun bs!1924910 () Bool)

(declare-fun d!2292499 () Bool)

(assert (= bs!1924910 (and d!2292499 b!7412439)))

(declare-fun lambda!460068 () Int)

(assert (=> bs!1924910 (= lambda!460068 lambda!460054)))

(assert (=> d!2292499 true))

(assert (=> d!2292499 (= (derivationStepZipper!3692 z!3451 (h!78365 s!7927)) (flatMap!3218 z!3451 lambda!460068))))

(declare-fun bs!1924911 () Bool)

(assert (= bs!1924911 d!2292499))

(declare-fun m!8047066 () Bool)

(assert (=> bs!1924911 m!8047066))

(assert (=> b!7412444 d!2292499))

(declare-fun d!2292503 () Bool)

(assert (=> d!2292503 (= (isEmpty!41068 (tail!14833 (exprs!8858 c!10532))) (is-Nil!71916 (tail!14833 (exprs!8858 c!10532))))))

(assert (=> b!7412447 d!2292503))

(declare-fun d!2292507 () Bool)

(assert (=> d!2292507 (= (tail!14833 (exprs!8858 c!10532)) (t!386601 (exprs!8858 c!10532)))))

(assert (=> b!7412447 d!2292507))

(declare-fun d!2292509 () Bool)

(declare-fun c!1375774 () Bool)

(declare-fun isEmpty!41070 (List!72041) Bool)

(assert (=> d!2292509 (= c!1375774 (isEmpty!41070 s!7927))))

(declare-fun e!4433120 () Bool)

(assert (=> d!2292509 (= (matchZipper!3816 z!3451 s!7927) e!4433120)))

(declare-fun b!7412525 () Bool)

(declare-fun nullableZipper!3145 ((Set Context!16716)) Bool)

(assert (=> b!7412525 (= e!4433120 (nullableZipper!3145 z!3451))))

(declare-fun b!7412526 () Bool)

(declare-fun head!15234 (List!72041) C!39110)

(declare-fun tail!14835 (List!72041) List!72041)

(assert (=> b!7412526 (= e!4433120 (matchZipper!3816 (derivationStepZipper!3692 z!3451 (head!15234 s!7927)) (tail!14835 s!7927)))))

(assert (= (and d!2292509 c!1375774) b!7412525))

(assert (= (and d!2292509 (not c!1375774)) b!7412526))

(declare-fun m!8047068 () Bool)

(assert (=> d!2292509 m!8047068))

(declare-fun m!8047070 () Bool)

(assert (=> b!7412525 m!8047070))

(declare-fun m!8047072 () Bool)

(assert (=> b!7412526 m!8047072))

(assert (=> b!7412526 m!8047072))

(declare-fun m!8047074 () Bool)

(assert (=> b!7412526 m!8047074))

(declare-fun m!8047076 () Bool)

(assert (=> b!7412526 m!8047076))

(assert (=> b!7412526 m!8047074))

(assert (=> b!7412526 m!8047076))

(declare-fun m!8047078 () Bool)

(assert (=> b!7412526 m!8047078))

(assert (=> b!7412438 d!2292509))

(declare-fun d!2292513 () Bool)

(declare-fun c!1375775 () Bool)

(assert (=> d!2292513 (= c!1375775 (isEmpty!41070 (t!386602 s!7927)))))

(declare-fun e!4433121 () Bool)

(assert (=> d!2292513 (= (matchZipper!3816 lt!2619056 (t!386602 s!7927)) e!4433121)))

(declare-fun b!7412527 () Bool)

(assert (=> b!7412527 (= e!4433121 (nullableZipper!3145 lt!2619056))))

(declare-fun b!7412528 () Bool)

(assert (=> b!7412528 (= e!4433121 (matchZipper!3816 (derivationStepZipper!3692 lt!2619056 (head!15234 (t!386602 s!7927))) (tail!14835 (t!386602 s!7927))))))

(assert (= (and d!2292513 c!1375775) b!7412527))

(assert (= (and d!2292513 (not c!1375775)) b!7412528))

(declare-fun m!8047080 () Bool)

(assert (=> d!2292513 m!8047080))

(declare-fun m!8047082 () Bool)

(assert (=> b!7412527 m!8047082))

(declare-fun m!8047084 () Bool)

(assert (=> b!7412528 m!8047084))

(assert (=> b!7412528 m!8047084))

(declare-fun m!8047086 () Bool)

(assert (=> b!7412528 m!8047086))

(declare-fun m!8047088 () Bool)

(assert (=> b!7412528 m!8047088))

(assert (=> b!7412528 m!8047086))

(assert (=> b!7412528 m!8047088))

(declare-fun m!8047090 () Bool)

(assert (=> b!7412528 m!8047090))

(assert (=> b!7412438 d!2292513))

(declare-fun d!2292515 () Bool)

(assert (=> d!2292515 (not (matchZipper!3816 lt!2619056 (t!386602 s!7927)))))

(declare-fun lt!2619078 () Unit!165739)

(declare-fun choose!57487 ((Set Context!16716) List!72041) Unit!165739)

(assert (=> d!2292515 (= lt!2619078 (choose!57487 lt!2619056 (t!386602 s!7927)))))

(assert (=> d!2292515 (= lt!2619056 (as set.empty (Set Context!16716)))))

(assert (=> d!2292515 (= (lemmaEmptyZipperMatchesNothing!131 lt!2619056 (t!386602 s!7927)) lt!2619078)))

(declare-fun bs!1924912 () Bool)

(assert (= bs!1924912 d!2292515))

(assert (=> bs!1924912 m!8046992))

(declare-fun m!8047092 () Bool)

(assert (=> bs!1924912 m!8047092))

(assert (=> b!7412438 d!2292515))

(declare-fun d!2292517 () Bool)

(assert (=> d!2292517 (= (isEmpty!41068 (exprs!8858 c!10532)) (is-Nil!71916 (exprs!8858 c!10532)))))

(assert (=> b!7412437 d!2292517))

(declare-fun b!7412533 () Bool)

(declare-fun e!4433124 () Bool)

(declare-fun tp!2121781 () Bool)

(declare-fun tp!2121782 () Bool)

(assert (=> b!7412533 (= e!4433124 (and tp!2121781 tp!2121782))))

(assert (=> b!7412440 (= tp!2121757 e!4433124)))

(assert (= (and b!7412440 (is-Cons!71916 (exprs!8858 c!10532))) b!7412533))

(declare-fun condSetEmpty!56344 () Bool)

(assert (=> setNonEmpty!56338 (= condSetEmpty!56344 (= setRest!56338 (as set.empty (Set Context!16716))))))

(declare-fun setRes!56344 () Bool)

(assert (=> setNonEmpty!56338 (= tp!2121759 setRes!56344)))

(declare-fun setIsEmpty!56344 () Bool)

(assert (=> setIsEmpty!56344 setRes!56344))

(declare-fun setElem!56344 () Context!16716)

(declare-fun setNonEmpty!56344 () Bool)

(declare-fun e!4433127 () Bool)

(declare-fun tp!2121787 () Bool)

(assert (=> setNonEmpty!56344 (= setRes!56344 (and tp!2121787 (inv!91907 setElem!56344) e!4433127))))

(declare-fun setRest!56344 () (Set Context!16716))

(assert (=> setNonEmpty!56344 (= setRest!56338 (set.union (set.insert setElem!56344 (as set.empty (Set Context!16716))) setRest!56344))))

(declare-fun b!7412538 () Bool)

(declare-fun tp!2121788 () Bool)

(assert (=> b!7412538 (= e!4433127 tp!2121788)))

(assert (= (and setNonEmpty!56338 condSetEmpty!56344) setIsEmpty!56344))

(assert (= (and setNonEmpty!56338 (not condSetEmpty!56344)) setNonEmpty!56344))

(assert (= setNonEmpty!56344 b!7412538))

(declare-fun m!8047094 () Bool)

(assert (=> setNonEmpty!56344 m!8047094))

(declare-fun b!7412547 () Bool)

(declare-fun e!4433132 () Bool)

(declare-fun tp!2121791 () Bool)

(assert (=> b!7412547 (= e!4433132 (and tp_is_empty!49099 tp!2121791))))

(assert (=> b!7412445 (= tp!2121758 e!4433132)))

(assert (= (and b!7412445 (is-Cons!71917 (t!386602 s!7927))) b!7412547))

(declare-fun b!7412550 () Bool)

(declare-fun e!4433135 () Bool)

(declare-fun tp!2121792 () Bool)

(declare-fun tp!2121793 () Bool)

(assert (=> b!7412550 (= e!4433135 (and tp!2121792 tp!2121793))))

(assert (=> b!7412448 (= tp!2121761 e!4433135)))

(assert (= (and b!7412448 (is-Cons!71916 (exprs!8858 setElem!56338))) b!7412550))

(declare-fun b!7412551 () Bool)

(declare-fun e!4433136 () Bool)

(declare-fun tp!2121794 () Bool)

(declare-fun tp!2121795 () Bool)

(assert (=> b!7412551 (= e!4433136 (and tp!2121794 tp!2121795))))

(assert (=> b!7412446 (= tp!2121760 e!4433136)))

(assert (= (and b!7412446 (is-Cons!71916 (exprs!8858 empty!3619))) b!7412551))

(push 1)

(assert (not b!7412551))

(assert (not b!7412550))

(assert (not b!7412547))

(assert (not d!2292499))

(assert (not b!7412538))

(assert (not b!7412525))

(assert (not b!7412503))

(assert tp_is_empty!49099)

(assert (not d!2292489))

(assert (not d!2292485))

(assert (not b!7412533))

(assert (not d!2292509))

(assert (not d!2292493))

(assert (not b!7412528))

(assert (not b!7412526))

(assert (not d!2292513))

(assert (not setNonEmpty!56344))

(assert (not b!7412527))

(assert (not d!2292515))

(assert (not d!2292487))

(assert (not b!7412516))

(assert (not d!2292483))

(assert (not b!7412514))

(assert (not bm!682526))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2292541 () Bool)

(declare-fun res!2983651 () Bool)

(declare-fun e!4433164 () Bool)

(assert (=> d!2292541 (=> res!2983651 e!4433164)))

(assert (=> d!2292541 (= res!2983651 (is-Nil!71918 lt!2619075))))

(assert (=> d!2292541 (= (noDuplicate!3111 lt!2619075) e!4433164)))

(declare-fun b!7412600 () Bool)

(declare-fun e!4433165 () Bool)

(assert (=> b!7412600 (= e!4433164 e!4433165)))

(declare-fun res!2983652 () Bool)

(assert (=> b!7412600 (=> (not res!2983652) (not e!4433165))))

(declare-fun contains!20853 (List!72042 Context!16716) Bool)

(assert (=> b!7412600 (= res!2983652 (not (contains!20853 (t!386603 lt!2619075) (h!78366 lt!2619075))))))

(declare-fun b!7412601 () Bool)

(assert (=> b!7412601 (= e!4433165 (noDuplicate!3111 (t!386603 lt!2619075)))))

(assert (= (and d!2292541 (not res!2983651)) b!7412600))

(assert (= (and b!7412600 res!2983652) b!7412601))

(declare-fun m!8047152 () Bool)

(assert (=> b!7412600 m!8047152))

(declare-fun m!8047154 () Bool)

(assert (=> b!7412601 m!8047154))

(assert (=> d!2292493 d!2292541))

(declare-fun d!2292543 () Bool)

(declare-fun e!4433172 () Bool)

(assert (=> d!2292543 e!4433172))

(declare-fun res!2983658 () Bool)

(assert (=> d!2292543 (=> (not res!2983658) (not e!4433172))))

(declare-fun res!2983657 () List!72042)

(assert (=> d!2292543 (= res!2983658 (noDuplicate!3111 res!2983657))))

(declare-fun e!4433173 () Bool)

(assert (=> d!2292543 e!4433173))

(assert (=> d!2292543 (= (choose!57486 lt!2619056) res!2983657)))

(declare-fun b!7412609 () Bool)

(declare-fun e!4433174 () Bool)

(declare-fun tp!2121820 () Bool)

(assert (=> b!7412609 (= e!4433174 tp!2121820)))

(declare-fun tp!2121819 () Bool)

(declare-fun b!7412608 () Bool)

(assert (=> b!7412608 (= e!4433173 (and (inv!91907 (h!78366 res!2983657)) e!4433174 tp!2121819))))

(declare-fun b!7412610 () Bool)

(assert (=> b!7412610 (= e!4433172 (= (content!15223 res!2983657) lt!2619056))))

(assert (= b!7412608 b!7412609))

(assert (= (and d!2292543 (is-Cons!71918 res!2983657)) b!7412608))

(assert (= (and d!2292543 res!2983658) b!7412610))

(declare-fun m!8047156 () Bool)

(assert (=> d!2292543 m!8047156))

(declare-fun m!8047158 () Bool)

(assert (=> b!7412608 m!8047158))

(declare-fun m!8047160 () Bool)

(assert (=> b!7412610 m!8047160))

(assert (=> d!2292493 d!2292543))

(declare-fun d!2292545 () Bool)

(assert (=> d!2292545 (= (isEmpty!41070 s!7927) (is-Nil!71917 s!7927))))

(assert (=> d!2292509 d!2292545))

(declare-fun d!2292547 () Bool)

(assert (=> d!2292547 (= (isEmpty!41070 (t!386602 s!7927)) (is-Nil!71917 (t!386602 s!7927)))))

(assert (=> d!2292513 d!2292547))

(declare-fun d!2292549 () Bool)

(declare-fun res!2983663 () Bool)

(declare-fun e!4433179 () Bool)

(assert (=> d!2292549 (=> res!2983663 e!4433179)))

(assert (=> d!2292549 (= res!2983663 (is-Nil!71916 (exprs!8858 empty!3619)))))

(assert (=> d!2292549 (= (forall!18204 (exprs!8858 empty!3619) lambda!460062) e!4433179)))

(declare-fun b!7412615 () Bool)

(declare-fun e!4433180 () Bool)

(assert (=> b!7412615 (= e!4433179 e!4433180)))

(declare-fun res!2983664 () Bool)

(assert (=> b!7412615 (=> (not res!2983664) (not e!4433180))))

(declare-fun dynLambda!29696 (Int Regex!19418) Bool)

(assert (=> b!7412615 (= res!2983664 (dynLambda!29696 lambda!460062 (h!78364 (exprs!8858 empty!3619))))))

(declare-fun b!7412616 () Bool)

(assert (=> b!7412616 (= e!4433180 (forall!18204 (t!386601 (exprs!8858 empty!3619)) lambda!460062))))

(assert (= (and d!2292549 (not res!2983663)) b!7412615))

(assert (= (and b!7412615 res!2983664) b!7412616))

(declare-fun b_lambda!286759 () Bool)

(assert (=> (not b_lambda!286759) (not b!7412615)))

(declare-fun m!8047162 () Bool)

(assert (=> b!7412615 m!8047162))

(declare-fun m!8047164 () Bool)

(assert (=> b!7412616 m!8047164))

(assert (=> d!2292487 d!2292549))

(declare-fun d!2292551 () Bool)

(declare-fun c!1375788 () Bool)

(assert (=> d!2292551 (= c!1375788 (isEmpty!41070 (tail!14835 (t!386602 s!7927))))))

(declare-fun e!4433181 () Bool)

(assert (=> d!2292551 (= (matchZipper!3816 (derivationStepZipper!3692 lt!2619056 (head!15234 (t!386602 s!7927))) (tail!14835 (t!386602 s!7927))) e!4433181)))

(declare-fun b!7412617 () Bool)

(assert (=> b!7412617 (= e!4433181 (nullableZipper!3145 (derivationStepZipper!3692 lt!2619056 (head!15234 (t!386602 s!7927)))))))

(declare-fun b!7412618 () Bool)

(assert (=> b!7412618 (= e!4433181 (matchZipper!3816 (derivationStepZipper!3692 (derivationStepZipper!3692 lt!2619056 (head!15234 (t!386602 s!7927))) (head!15234 (tail!14835 (t!386602 s!7927)))) (tail!14835 (tail!14835 (t!386602 s!7927)))))))

(assert (= (and d!2292551 c!1375788) b!7412617))

(assert (= (and d!2292551 (not c!1375788)) b!7412618))

(assert (=> d!2292551 m!8047088))

(declare-fun m!8047166 () Bool)

(assert (=> d!2292551 m!8047166))

(assert (=> b!7412617 m!8047086))

(declare-fun m!8047168 () Bool)

(assert (=> b!7412617 m!8047168))

(assert (=> b!7412618 m!8047088))

(declare-fun m!8047170 () Bool)

(assert (=> b!7412618 m!8047170))

(assert (=> b!7412618 m!8047086))

(assert (=> b!7412618 m!8047170))

(declare-fun m!8047172 () Bool)

(assert (=> b!7412618 m!8047172))

(assert (=> b!7412618 m!8047088))

(declare-fun m!8047174 () Bool)

(assert (=> b!7412618 m!8047174))

(assert (=> b!7412618 m!8047172))

(assert (=> b!7412618 m!8047174))

(declare-fun m!8047176 () Bool)

(assert (=> b!7412618 m!8047176))

(assert (=> b!7412528 d!2292551))

(declare-fun bs!1924923 () Bool)

(declare-fun d!2292553 () Bool)

(assert (= bs!1924923 (and d!2292553 b!7412439)))

(declare-fun lambda!460080 () Int)

(assert (=> bs!1924923 (= (= (head!15234 (t!386602 s!7927)) (h!78365 s!7927)) (= lambda!460080 lambda!460054))))

(declare-fun bs!1924924 () Bool)

(assert (= bs!1924924 (and d!2292553 d!2292499)))

(assert (=> bs!1924924 (= (= (head!15234 (t!386602 s!7927)) (h!78365 s!7927)) (= lambda!460080 lambda!460068))))

(assert (=> d!2292553 true))

(assert (=> d!2292553 (= (derivationStepZipper!3692 lt!2619056 (head!15234 (t!386602 s!7927))) (flatMap!3218 lt!2619056 lambda!460080))))

(declare-fun bs!1924925 () Bool)

(assert (= bs!1924925 d!2292553))

(declare-fun m!8047178 () Bool)

(assert (=> bs!1924925 m!8047178))

(assert (=> b!7412528 d!2292553))

(declare-fun d!2292555 () Bool)

(assert (=> d!2292555 (= (head!15234 (t!386602 s!7927)) (h!78365 (t!386602 s!7927)))))

(assert (=> b!7412528 d!2292555))

(declare-fun d!2292557 () Bool)

(assert (=> d!2292557 (= (tail!14835 (t!386602 s!7927)) (t!386602 (t!386602 s!7927)))))

(assert (=> b!7412528 d!2292557))

(declare-fun bs!1924926 () Bool)

(declare-fun d!2292559 () Bool)

(assert (= bs!1924926 (and d!2292559 d!2292489)))

(declare-fun lambda!460083 () Int)

(assert (=> bs!1924926 (not (= lambda!460083 lambda!460065))))

(assert (=> d!2292559 (= (nullableZipper!3145 lt!2619056) (exists!4790 lt!2619056 lambda!460083))))

(declare-fun bs!1924927 () Bool)

(assert (= bs!1924927 d!2292559))

(declare-fun m!8047180 () Bool)

(assert (=> bs!1924927 m!8047180))

(assert (=> b!7412527 d!2292559))

(declare-fun d!2292561 () Bool)

(declare-fun res!2983665 () Bool)

(declare-fun e!4433182 () Bool)

(assert (=> d!2292561 (=> res!2983665 e!4433182)))

(assert (=> d!2292561 (= res!2983665 (is-Nil!71916 (exprs!8858 setElem!56338)))))

(assert (=> d!2292561 (= (forall!18204 (exprs!8858 setElem!56338) lambda!460061) e!4433182)))

(declare-fun b!7412619 () Bool)

(declare-fun e!4433183 () Bool)

(assert (=> b!7412619 (= e!4433182 e!4433183)))

(declare-fun res!2983666 () Bool)

(assert (=> b!7412619 (=> (not res!2983666) (not e!4433183))))

(assert (=> b!7412619 (= res!2983666 (dynLambda!29696 lambda!460061 (h!78364 (exprs!8858 setElem!56338))))))

(declare-fun b!7412620 () Bool)

(assert (=> b!7412620 (= e!4433183 (forall!18204 (t!386601 (exprs!8858 setElem!56338)) lambda!460061))))

(assert (= (and d!2292561 (not res!2983665)) b!7412619))

(assert (= (and b!7412619 res!2983666) b!7412620))

(declare-fun b_lambda!286761 () Bool)

(assert (=> (not b_lambda!286761) (not b!7412619)))

(declare-fun m!8047182 () Bool)

(assert (=> b!7412619 m!8047182))

(declare-fun m!8047184 () Bool)

(assert (=> b!7412620 m!8047184))

(assert (=> d!2292485 d!2292561))

(declare-fun d!2292563 () Bool)

(declare-fun c!1375791 () Bool)

(assert (=> d!2292563 (= c!1375791 (isEmpty!41070 (tail!14835 s!7927)))))

(declare-fun e!4433184 () Bool)

(assert (=> d!2292563 (= (matchZipper!3816 (derivationStepZipper!3692 z!3451 (head!15234 s!7927)) (tail!14835 s!7927)) e!4433184)))

(declare-fun b!7412621 () Bool)

(assert (=> b!7412621 (= e!4433184 (nullableZipper!3145 (derivationStepZipper!3692 z!3451 (head!15234 s!7927))))))

(declare-fun b!7412622 () Bool)

(assert (=> b!7412622 (= e!4433184 (matchZipper!3816 (derivationStepZipper!3692 (derivationStepZipper!3692 z!3451 (head!15234 s!7927)) (head!15234 (tail!14835 s!7927))) (tail!14835 (tail!14835 s!7927))))))

(assert (= (and d!2292563 c!1375791) b!7412621))

(assert (= (and d!2292563 (not c!1375791)) b!7412622))

(assert (=> d!2292563 m!8047076))

(declare-fun m!8047186 () Bool)

(assert (=> d!2292563 m!8047186))

(assert (=> b!7412621 m!8047074))

(declare-fun m!8047188 () Bool)

(assert (=> b!7412621 m!8047188))

(assert (=> b!7412622 m!8047076))

(declare-fun m!8047190 () Bool)

(assert (=> b!7412622 m!8047190))

(assert (=> b!7412622 m!8047074))

(assert (=> b!7412622 m!8047190))

(declare-fun m!8047192 () Bool)

(assert (=> b!7412622 m!8047192))

(assert (=> b!7412622 m!8047076))

(declare-fun m!8047194 () Bool)

(assert (=> b!7412622 m!8047194))

(assert (=> b!7412622 m!8047192))

(assert (=> b!7412622 m!8047194))

(declare-fun m!8047196 () Bool)

(assert (=> b!7412622 m!8047196))

(assert (=> b!7412526 d!2292563))

(declare-fun bs!1924928 () Bool)

(declare-fun d!2292565 () Bool)

(assert (= bs!1924928 (and d!2292565 b!7412439)))

(declare-fun lambda!460084 () Int)

(assert (=> bs!1924928 (= (= (head!15234 s!7927) (h!78365 s!7927)) (= lambda!460084 lambda!460054))))

(declare-fun bs!1924929 () Bool)

(assert (= bs!1924929 (and d!2292565 d!2292499)))

(assert (=> bs!1924929 (= (= (head!15234 s!7927) (h!78365 s!7927)) (= lambda!460084 lambda!460068))))

(declare-fun bs!1924930 () Bool)

(assert (= bs!1924930 (and d!2292565 d!2292553)))

(assert (=> bs!1924930 (= (= (head!15234 s!7927) (head!15234 (t!386602 s!7927))) (= lambda!460084 lambda!460080))))

(assert (=> d!2292565 true))

(assert (=> d!2292565 (= (derivationStepZipper!3692 z!3451 (head!15234 s!7927)) (flatMap!3218 z!3451 lambda!460084))))

(declare-fun bs!1924931 () Bool)

(assert (= bs!1924931 d!2292565))

(declare-fun m!8047198 () Bool)

(assert (=> bs!1924931 m!8047198))

(assert (=> b!7412526 d!2292565))

(declare-fun d!2292567 () Bool)

(assert (=> d!2292567 (= (head!15234 s!7927) (h!78365 s!7927))))

(assert (=> b!7412526 d!2292567))

(declare-fun d!2292569 () Bool)

(assert (=> d!2292569 (= (tail!14835 s!7927) (t!386602 s!7927))))

(assert (=> b!7412526 d!2292569))

(assert (=> d!2292515 d!2292513))

(declare-fun d!2292571 () Bool)

(assert (=> d!2292571 (not (matchZipper!3816 lt!2619056 (t!386602 s!7927)))))

(assert (=> d!2292571 true))

(declare-fun _$64!838 () Unit!165739)

(assert (=> d!2292571 (= (choose!57487 lt!2619056 (t!386602 s!7927)) _$64!838)))

(declare-fun bs!1924932 () Bool)

(assert (= bs!1924932 d!2292571))

(assert (=> bs!1924932 m!8046992))

(assert (=> d!2292515 d!2292571))

(declare-fun d!2292573 () Bool)

(declare-fun c!1375794 () Bool)

(assert (=> d!2292573 (= c!1375794 (is-Nil!71918 lt!2619075))))

(declare-fun e!4433187 () (Set Context!16716))

(assert (=> d!2292573 (= (content!15223 lt!2619075) e!4433187)))

(declare-fun b!7412627 () Bool)

(assert (=> b!7412627 (= e!4433187 (as set.empty (Set Context!16716)))))

(declare-fun b!7412628 () Bool)

(assert (=> b!7412628 (= e!4433187 (set.union (set.insert (h!78366 lt!2619075) (as set.empty (Set Context!16716))) (content!15223 (t!386603 lt!2619075))))))

(assert (= (and d!2292573 c!1375794) b!7412627))

(assert (= (and d!2292573 (not c!1375794)) b!7412628))

(declare-fun m!8047200 () Bool)

(assert (=> b!7412628 m!8047200))

(declare-fun m!8047202 () Bool)

(assert (=> b!7412628 m!8047202))

(assert (=> b!7412503 d!2292573))

(declare-fun d!2292575 () Bool)

(declare-fun nullableFct!3409 (Regex!19418) Bool)

(assert (=> d!2292575 (= (nullable!8462 (h!78364 (exprs!8858 c!10532))) (nullableFct!3409 (h!78364 (exprs!8858 c!10532))))))

(declare-fun bs!1924933 () Bool)

(assert (= bs!1924933 d!2292575))

(declare-fun m!8047204 () Bool)

(assert (=> bs!1924933 m!8047204))

(assert (=> b!7412514 d!2292575))

(declare-fun bs!1924934 () Bool)

(declare-fun d!2292577 () Bool)

(assert (= bs!1924934 (and d!2292577 d!2292489)))

(declare-fun lambda!460085 () Int)

(assert (=> bs!1924934 (not (= lambda!460085 lambda!460065))))

(declare-fun bs!1924935 () Bool)

(assert (= bs!1924935 (and d!2292577 d!2292559)))

(assert (=> bs!1924935 (= lambda!460085 lambda!460083)))

(assert (=> d!2292577 (= (nullableZipper!3145 z!3451) (exists!4790 z!3451 lambda!460085))))

(declare-fun bs!1924936 () Bool)

(assert (= bs!1924936 d!2292577))

(declare-fun m!8047206 () Bool)

(assert (=> bs!1924936 m!8047206))

(assert (=> b!7412525 d!2292577))

(declare-fun bm!682542 () Bool)

(declare-fun call!682551 () List!72040)

(declare-fun call!682550 () List!72040)

(assert (=> bm!682542 (= call!682551 call!682550)))

(declare-fun b!7412651 () Bool)

(declare-fun e!4433204 () (Set Context!16716))

(declare-fun e!4433200 () (Set Context!16716))

(assert (=> b!7412651 (= e!4433204 e!4433200)))

(declare-fun c!1375808 () Bool)

(assert (=> b!7412651 (= c!1375808 (is-Union!19418 (h!78364 (exprs!8858 c!10532))))))

(declare-fun call!682548 () (Set Context!16716))

(declare-fun bm!682543 () Bool)

(assert (=> bm!682543 (= call!682548 (derivationStepZipperDown!3214 (ite c!1375808 (regTwo!39349 (h!78364 (exprs!8858 c!10532))) (regOne!39348 (h!78364 (exprs!8858 c!10532)))) (ite c!1375808 (Context!16717 (t!386601 (exprs!8858 c!10532))) (Context!16717 call!682550)) (h!78365 s!7927)))))

(declare-fun b!7412652 () Bool)

(declare-fun e!4433203 () (Set Context!16716))

(declare-fun call!682547 () (Set Context!16716))

(assert (=> b!7412652 (= e!4433203 call!682547)))

(declare-fun bm!682544 () Bool)

(declare-fun call!682549 () (Set Context!16716))

(assert (=> bm!682544 (= call!682547 call!682549)))

(declare-fun bm!682545 () Bool)

(declare-fun call!682552 () (Set Context!16716))

(assert (=> bm!682545 (= call!682549 call!682552)))

(declare-fun bm!682546 () Bool)

(declare-fun c!1375806 () Bool)

(declare-fun c!1375807 () Bool)

(declare-fun $colon$colon!3348 (List!72040 Regex!19418) List!72040)

(assert (=> bm!682546 (= call!682550 ($colon$colon!3348 (exprs!8858 (Context!16717 (t!386601 (exprs!8858 c!10532)))) (ite (or c!1375807 c!1375806) (regTwo!39348 (h!78364 (exprs!8858 c!10532))) (h!78364 (exprs!8858 c!10532)))))))

(declare-fun b!7412653 () Bool)

(declare-fun e!4433202 () Bool)

(assert (=> b!7412653 (= c!1375807 e!4433202)))

(declare-fun res!2983669 () Bool)

(assert (=> b!7412653 (=> (not res!2983669) (not e!4433202))))

(assert (=> b!7412653 (= res!2983669 (is-Concat!28263 (h!78364 (exprs!8858 c!10532))))))

(declare-fun e!4433201 () (Set Context!16716))

(assert (=> b!7412653 (= e!4433200 e!4433201)))

(declare-fun b!7412654 () Bool)

(assert (=> b!7412654 (= e!4433201 (set.union call!682548 call!682549))))

(declare-fun b!7412655 () Bool)

(declare-fun c!1375809 () Bool)

(assert (=> b!7412655 (= c!1375809 (is-Star!19418 (h!78364 (exprs!8858 c!10532))))))

(declare-fun e!4433205 () (Set Context!16716))

(assert (=> b!7412655 (= e!4433205 e!4433203)))

(declare-fun bm!682547 () Bool)

(assert (=> bm!682547 (= call!682552 (derivationStepZipperDown!3214 (ite c!1375808 (regOne!39349 (h!78364 (exprs!8858 c!10532))) (ite c!1375807 (regTwo!39348 (h!78364 (exprs!8858 c!10532))) (ite c!1375806 (regOne!39348 (h!78364 (exprs!8858 c!10532))) (reg!19747 (h!78364 (exprs!8858 c!10532)))))) (ite (or c!1375808 c!1375807) (Context!16717 (t!386601 (exprs!8858 c!10532))) (Context!16717 call!682551)) (h!78365 s!7927)))))

(declare-fun b!7412656 () Bool)

(assert (=> b!7412656 (= e!4433201 e!4433205)))

(assert (=> b!7412656 (= c!1375806 (is-Concat!28263 (h!78364 (exprs!8858 c!10532))))))

(declare-fun b!7412658 () Bool)

(assert (=> b!7412658 (= e!4433202 (nullable!8462 (regOne!39348 (h!78364 (exprs!8858 c!10532)))))))

(declare-fun b!7412659 () Bool)

(assert (=> b!7412659 (= e!4433200 (set.union call!682552 call!682548))))

(declare-fun b!7412660 () Bool)

(assert (=> b!7412660 (= e!4433205 call!682547)))

(declare-fun b!7412661 () Bool)

(assert (=> b!7412661 (= e!4433203 (as set.empty (Set Context!16716)))))

(declare-fun b!7412657 () Bool)

(assert (=> b!7412657 (= e!4433204 (set.insert (Context!16717 (t!386601 (exprs!8858 c!10532))) (as set.empty (Set Context!16716))))))

(declare-fun d!2292579 () Bool)

(declare-fun c!1375805 () Bool)

(assert (=> d!2292579 (= c!1375805 (and (is-ElementMatch!19418 (h!78364 (exprs!8858 c!10532))) (= (c!1375759 (h!78364 (exprs!8858 c!10532))) (h!78365 s!7927))))))

(assert (=> d!2292579 (= (derivationStepZipperDown!3214 (h!78364 (exprs!8858 c!10532)) (Context!16717 (t!386601 (exprs!8858 c!10532))) (h!78365 s!7927)) e!4433204)))

(assert (= (and d!2292579 c!1375805) b!7412657))

(assert (= (and d!2292579 (not c!1375805)) b!7412651))

(assert (= (and b!7412651 c!1375808) b!7412659))

(assert (= (and b!7412651 (not c!1375808)) b!7412653))

(assert (= (and b!7412653 res!2983669) b!7412658))

(assert (= (and b!7412653 c!1375807) b!7412654))

(assert (= (and b!7412653 (not c!1375807)) b!7412656))

(assert (= (and b!7412656 c!1375806) b!7412660))

(assert (= (and b!7412656 (not c!1375806)) b!7412655))

(assert (= (and b!7412655 c!1375809) b!7412652))

(assert (= (and b!7412655 (not c!1375809)) b!7412661))

(assert (= (or b!7412660 b!7412652) bm!682542))

(assert (= (or b!7412660 b!7412652) bm!682544))

(assert (= (or b!7412654 bm!682542) bm!682546))

(assert (= (or b!7412654 bm!682544) bm!682545))

(assert (= (or b!7412659 bm!682545) bm!682547))

(assert (= (or b!7412659 b!7412654) bm!682543))

(declare-fun m!8047208 () Bool)

(assert (=> b!7412657 m!8047208))

(declare-fun m!8047210 () Bool)

(assert (=> bm!682546 m!8047210))

(declare-fun m!8047212 () Bool)

(assert (=> bm!682543 m!8047212))

(declare-fun m!8047214 () Bool)

(assert (=> bm!682547 m!8047214))

(declare-fun m!8047216 () Bool)

(assert (=> b!7412658 m!8047216))

(assert (=> bm!682526 d!2292579))

(declare-fun d!2292581 () Bool)

(declare-fun choose!57491 ((Set Context!16716) Int) (Set Context!16716))

(assert (=> d!2292581 (= (flatMap!3218 z!3451 lambda!460068) (choose!57491 z!3451 lambda!460068))))

(declare-fun bs!1924937 () Bool)

(assert (= bs!1924937 d!2292581))

(declare-fun m!8047218 () Bool)

(assert (=> bs!1924937 m!8047218))

(assert (=> d!2292499 d!2292581))

(declare-fun d!2292583 () Bool)

(declare-fun res!2983670 () Bool)

(declare-fun e!4433206 () Bool)

(assert (=> d!2292583 (=> res!2983670 e!4433206)))

(assert (=> d!2292583 (= res!2983670 (is-Nil!71916 (exprs!8858 c!10532)))))

(assert (=> d!2292583 (= (forall!18204 (exprs!8858 c!10532) lambda!460060) e!4433206)))

(declare-fun b!7412662 () Bool)

(declare-fun e!4433207 () Bool)

(assert (=> b!7412662 (= e!4433206 e!4433207)))

(declare-fun res!2983671 () Bool)

(assert (=> b!7412662 (=> (not res!2983671) (not e!4433207))))

(assert (=> b!7412662 (= res!2983671 (dynLambda!29696 lambda!460060 (h!78364 (exprs!8858 c!10532))))))

(declare-fun b!7412663 () Bool)

(assert (=> b!7412663 (= e!4433207 (forall!18204 (t!386601 (exprs!8858 c!10532)) lambda!460060))))

(assert (= (and d!2292583 (not res!2983670)) b!7412662))

(assert (= (and b!7412662 res!2983671) b!7412663))

(declare-fun b_lambda!286763 () Bool)

(assert (=> (not b_lambda!286763) (not b!7412662)))

(declare-fun m!8047220 () Bool)

(assert (=> b!7412662 m!8047220))

(declare-fun m!8047222 () Bool)

(assert (=> b!7412663 m!8047222))

(assert (=> d!2292483 d!2292583))

(declare-fun d!2292585 () Bool)

(assert (=> d!2292585 (= (flatMap!3218 z!3451 lambda!460054) (choose!57491 z!3451 lambda!460054))))

(declare-fun bs!1924938 () Bool)

(assert (= bs!1924938 d!2292585))

(declare-fun m!8047224 () Bool)

(assert (=> bs!1924938 m!8047224))

(assert (=> d!2292489 d!2292585))

(declare-fun d!2292587 () Bool)

(declare-fun lt!2619090 () Bool)

(declare-fun exists!4792 (List!72042 Int) Bool)

(assert (=> d!2292587 (= lt!2619090 (exists!4792 (toList!11769 z!3451) lambda!460065))))

(declare-fun choose!57492 ((Set Context!16716) Int) Bool)

(assert (=> d!2292587 (= lt!2619090 (choose!57492 z!3451 lambda!460065))))

(assert (=> d!2292587 (= (exists!4790 z!3451 lambda!460065) lt!2619090)))

(declare-fun bs!1924939 () Bool)

(assert (= bs!1924939 d!2292587))

(declare-fun m!8047226 () Bool)

(assert (=> bs!1924939 m!8047226))

(assert (=> bs!1924939 m!8047226))

(declare-fun m!8047228 () Bool)

(assert (=> bs!1924939 m!8047228))

(declare-fun m!8047230 () Bool)

(assert (=> bs!1924939 m!8047230))

(assert (=> d!2292489 d!2292587))

(declare-fun bs!1924940 () Bool)

(declare-fun d!2292589 () Bool)

(assert (= bs!1924940 (and d!2292589 d!2292489)))

(declare-fun lambda!460088 () Int)

(assert (=> bs!1924940 (= lambda!460088 lambda!460065)))

(declare-fun bs!1924941 () Bool)

(assert (= bs!1924941 (and d!2292589 d!2292559)))

(assert (=> bs!1924941 (not (= lambda!460088 lambda!460083))))

(declare-fun bs!1924942 () Bool)

(assert (= bs!1924942 (and d!2292589 d!2292577)))

(assert (=> bs!1924942 (not (= lambda!460088 lambda!460085))))

(assert (=> d!2292589 true))

(assert (=> d!2292589 true))

(assert (=> d!2292589 (< (dynLambda!29692 order!29561 lambda!460054) (dynLambda!29693 order!29563 lambda!460088))))

(assert (=> d!2292589 (= (set.member (head!15230 (toList!11769 lt!2619056)) (flatMap!3218 z!3451 lambda!460054)) (exists!4790 z!3451 lambda!460088))))

(declare-fun _$3!589 () Context!16716)

(declare-fun e!4433210 () Bool)

(assert (=> d!2292589 (and (inv!91907 _$3!589) e!4433210)))

(assert (=> d!2292589 (= (choose!57485 z!3451 lambda!460054 (head!15230 (toList!11769 lt!2619056))) _$3!589)))

(declare-fun b!7412667 () Bool)

(declare-fun tp!2121823 () Bool)

(assert (=> b!7412667 (= e!4433210 tp!2121823)))

(assert (= d!2292589 b!7412667))

(assert (=> d!2292589 m!8047046))

(assert (=> d!2292589 m!8046982))

(assert (=> d!2292589 m!8047048))

(declare-fun m!8047232 () Bool)

(assert (=> d!2292589 m!8047232))

(declare-fun m!8047234 () Bool)

(assert (=> d!2292589 m!8047234))

(assert (=> d!2292489 d!2292589))

(declare-fun b!7412668 () Bool)

(declare-fun e!4433211 () Bool)

(assert (=> b!7412668 (= e!4433211 (nullable!8462 (h!78364 (exprs!8858 (Context!16717 (t!386601 (exprs!8858 c!10532)))))))))

(declare-fun b!7412669 () Bool)

(declare-fun e!4433212 () (Set Context!16716))

(declare-fun call!682553 () (Set Context!16716))

(assert (=> b!7412669 (= e!4433212 call!682553)))

(declare-fun e!4433213 () (Set Context!16716))

(declare-fun b!7412670 () Bool)

(assert (=> b!7412670 (= e!4433213 (set.union call!682553 (derivationStepZipperUp!2822 (Context!16717 (t!386601 (exprs!8858 (Context!16717 (t!386601 (exprs!8858 c!10532)))))) (h!78365 s!7927))))))

(declare-fun b!7412671 () Bool)

(assert (=> b!7412671 (= e!4433212 (as set.empty (Set Context!16716)))))

(declare-fun b!7412672 () Bool)

(assert (=> b!7412672 (= e!4433213 e!4433212)))

(declare-fun c!1375811 () Bool)

(assert (=> b!7412672 (= c!1375811 (is-Cons!71916 (exprs!8858 (Context!16717 (t!386601 (exprs!8858 c!10532))))))))

(declare-fun d!2292591 () Bool)

(declare-fun c!1375810 () Bool)

(assert (=> d!2292591 (= c!1375810 e!4433211)))

(declare-fun res!2983672 () Bool)

(assert (=> d!2292591 (=> (not res!2983672) (not e!4433211))))

(assert (=> d!2292591 (= res!2983672 (is-Cons!71916 (exprs!8858 (Context!16717 (t!386601 (exprs!8858 c!10532))))))))

(assert (=> d!2292591 (= (derivationStepZipperUp!2822 (Context!16717 (t!386601 (exprs!8858 c!10532))) (h!78365 s!7927)) e!4433213)))

(declare-fun bm!682548 () Bool)

(assert (=> bm!682548 (= call!682553 (derivationStepZipperDown!3214 (h!78364 (exprs!8858 (Context!16717 (t!386601 (exprs!8858 c!10532))))) (Context!16717 (t!386601 (exprs!8858 (Context!16717 (t!386601 (exprs!8858 c!10532)))))) (h!78365 s!7927)))))

(assert (= (and d!2292591 res!2983672) b!7412668))

(assert (= (and d!2292591 c!1375810) b!7412670))

(assert (= (and d!2292591 (not c!1375810)) b!7412672))

(assert (= (and b!7412672 c!1375811) b!7412669))

(assert (= (and b!7412672 (not c!1375811)) b!7412671))

(assert (= (or b!7412670 b!7412669) bm!682548))

(declare-fun m!8047236 () Bool)

(assert (=> b!7412668 m!8047236))

(declare-fun m!8047238 () Bool)

(assert (=> b!7412670 m!8047238))

(declare-fun m!8047240 () Bool)

(assert (=> bm!682548 m!8047240))

(assert (=> b!7412516 d!2292591))

(declare-fun bs!1924943 () Bool)

(declare-fun d!2292593 () Bool)

(assert (= bs!1924943 (and d!2292593 d!2292483)))

(declare-fun lambda!460089 () Int)

(assert (=> bs!1924943 (= lambda!460089 lambda!460060)))

(declare-fun bs!1924944 () Bool)

(assert (= bs!1924944 (and d!2292593 d!2292485)))

(assert (=> bs!1924944 (= lambda!460089 lambda!460061)))

(declare-fun bs!1924945 () Bool)

(assert (= bs!1924945 (and d!2292593 d!2292487)))

(assert (=> bs!1924945 (= lambda!460089 lambda!460062)))

(assert (=> d!2292593 (= (inv!91907 setElem!56344) (forall!18204 (exprs!8858 setElem!56344) lambda!460089))))

(declare-fun bs!1924946 () Bool)

(assert (= bs!1924946 d!2292593))

(declare-fun m!8047242 () Bool)

(assert (=> bs!1924946 m!8047242))

(assert (=> setNonEmpty!56344 d!2292593))

(declare-fun b!7412684 () Bool)

(declare-fun e!4433216 () Bool)

(declare-fun tp!2121838 () Bool)

(declare-fun tp!2121837 () Bool)

(assert (=> b!7412684 (= e!4433216 (and tp!2121838 tp!2121837))))

(declare-fun b!7412685 () Bool)

(declare-fun tp!2121835 () Bool)

(assert (=> b!7412685 (= e!4433216 tp!2121835)))

(declare-fun b!7412686 () Bool)

(declare-fun tp!2121834 () Bool)

(declare-fun tp!2121836 () Bool)

(assert (=> b!7412686 (= e!4433216 (and tp!2121834 tp!2121836))))

(declare-fun b!7412683 () Bool)

(assert (=> b!7412683 (= e!4433216 tp_is_empty!49099)))

(assert (=> b!7412533 (= tp!2121781 e!4433216)))

(assert (= (and b!7412533 (is-ElementMatch!19418 (h!78364 (exprs!8858 c!10532)))) b!7412683))

(assert (= (and b!7412533 (is-Concat!28263 (h!78364 (exprs!8858 c!10532)))) b!7412684))

(assert (= (and b!7412533 (is-Star!19418 (h!78364 (exprs!8858 c!10532)))) b!7412685))

(assert (= (and b!7412533 (is-Union!19418 (h!78364 (exprs!8858 c!10532)))) b!7412686))

(declare-fun b!7412687 () Bool)

(declare-fun e!4433217 () Bool)

(declare-fun tp!2121839 () Bool)

(declare-fun tp!2121840 () Bool)

(assert (=> b!7412687 (= e!4433217 (and tp!2121839 tp!2121840))))

(assert (=> b!7412533 (= tp!2121782 e!4433217)))

(assert (= (and b!7412533 (is-Cons!71916 (t!386601 (exprs!8858 c!10532)))) b!7412687))

(declare-fun b!7412689 () Bool)

(declare-fun e!4433218 () Bool)

(declare-fun tp!2121845 () Bool)

(declare-fun tp!2121844 () Bool)

(assert (=> b!7412689 (= e!4433218 (and tp!2121845 tp!2121844))))

(declare-fun b!7412690 () Bool)

(declare-fun tp!2121842 () Bool)

(assert (=> b!7412690 (= e!4433218 tp!2121842)))

(declare-fun b!7412691 () Bool)

(declare-fun tp!2121841 () Bool)

(declare-fun tp!2121843 () Bool)

(assert (=> b!7412691 (= e!4433218 (and tp!2121841 tp!2121843))))

(declare-fun b!7412688 () Bool)

(assert (=> b!7412688 (= e!4433218 tp_is_empty!49099)))

(assert (=> b!7412550 (= tp!2121792 e!4433218)))

(assert (= (and b!7412550 (is-ElementMatch!19418 (h!78364 (exprs!8858 setElem!56338)))) b!7412688))

(assert (= (and b!7412550 (is-Concat!28263 (h!78364 (exprs!8858 setElem!56338)))) b!7412689))

(assert (= (and b!7412550 (is-Star!19418 (h!78364 (exprs!8858 setElem!56338)))) b!7412690))

(assert (= (and b!7412550 (is-Union!19418 (h!78364 (exprs!8858 setElem!56338)))) b!7412691))

(declare-fun b!7412692 () Bool)

(declare-fun e!4433219 () Bool)

(declare-fun tp!2121846 () Bool)

(declare-fun tp!2121847 () Bool)

(assert (=> b!7412692 (= e!4433219 (and tp!2121846 tp!2121847))))

(assert (=> b!7412550 (= tp!2121793 e!4433219)))

(assert (= (and b!7412550 (is-Cons!71916 (t!386601 (exprs!8858 setElem!56338)))) b!7412692))

(declare-fun b!7412693 () Bool)

(declare-fun e!4433220 () Bool)

(declare-fun tp!2121848 () Bool)

(declare-fun tp!2121849 () Bool)

(assert (=> b!7412693 (= e!4433220 (and tp!2121848 tp!2121849))))

(assert (=> b!7412538 (= tp!2121788 e!4433220)))

(assert (= (and b!7412538 (is-Cons!71916 (exprs!8858 setElem!56344))) b!7412693))

(declare-fun b!7412694 () Bool)

(declare-fun e!4433221 () Bool)

(declare-fun tp!2121850 () Bool)

(assert (=> b!7412694 (= e!4433221 (and tp_is_empty!49099 tp!2121850))))

(assert (=> b!7412547 (= tp!2121791 e!4433221)))

(assert (= (and b!7412547 (is-Cons!71917 (t!386602 (t!386602 s!7927)))) b!7412694))

(declare-fun b!7412696 () Bool)

(declare-fun e!4433222 () Bool)

(declare-fun tp!2121855 () Bool)

(declare-fun tp!2121854 () Bool)

(assert (=> b!7412696 (= e!4433222 (and tp!2121855 tp!2121854))))

(declare-fun b!7412697 () Bool)

(declare-fun tp!2121852 () Bool)

(assert (=> b!7412697 (= e!4433222 tp!2121852)))

(declare-fun b!7412698 () Bool)

(declare-fun tp!2121851 () Bool)

(declare-fun tp!2121853 () Bool)

(assert (=> b!7412698 (= e!4433222 (and tp!2121851 tp!2121853))))

(declare-fun b!7412695 () Bool)

(assert (=> b!7412695 (= e!4433222 tp_is_empty!49099)))

(assert (=> b!7412551 (= tp!2121794 e!4433222)))

(assert (= (and b!7412551 (is-ElementMatch!19418 (h!78364 (exprs!8858 empty!3619)))) b!7412695))

(assert (= (and b!7412551 (is-Concat!28263 (h!78364 (exprs!8858 empty!3619)))) b!7412696))

(assert (= (and b!7412551 (is-Star!19418 (h!78364 (exprs!8858 empty!3619)))) b!7412697))

(assert (= (and b!7412551 (is-Union!19418 (h!78364 (exprs!8858 empty!3619)))) b!7412698))

(declare-fun b!7412699 () Bool)

(declare-fun e!4433223 () Bool)

(declare-fun tp!2121856 () Bool)

(declare-fun tp!2121857 () Bool)

(assert (=> b!7412699 (= e!4433223 (and tp!2121856 tp!2121857))))

(assert (=> b!7412551 (= tp!2121795 e!4433223)))

(assert (= (and b!7412551 (is-Cons!71916 (t!386601 (exprs!8858 empty!3619)))) b!7412699))

(declare-fun condSetEmpty!56348 () Bool)

(assert (=> setNonEmpty!56344 (= condSetEmpty!56348 (= setRest!56344 (as set.empty (Set Context!16716))))))

(declare-fun setRes!56348 () Bool)

(assert (=> setNonEmpty!56344 (= tp!2121787 setRes!56348)))

(declare-fun setIsEmpty!56348 () Bool)

(assert (=> setIsEmpty!56348 setRes!56348))

(declare-fun e!4433224 () Bool)

(declare-fun setElem!56348 () Context!16716)

(declare-fun tp!2121858 () Bool)

(declare-fun setNonEmpty!56348 () Bool)

(assert (=> setNonEmpty!56348 (= setRes!56348 (and tp!2121858 (inv!91907 setElem!56348) e!4433224))))

(declare-fun setRest!56348 () (Set Context!16716))

(assert (=> setNonEmpty!56348 (= setRest!56344 (set.union (set.insert setElem!56348 (as set.empty (Set Context!16716))) setRest!56348))))

(declare-fun b!7412700 () Bool)

(declare-fun tp!2121859 () Bool)

(assert (=> b!7412700 (= e!4433224 tp!2121859)))

(assert (= (and setNonEmpty!56344 condSetEmpty!56348) setIsEmpty!56348))

(assert (= (and setNonEmpty!56344 (not condSetEmpty!56348)) setNonEmpty!56348))

(assert (= setNonEmpty!56348 b!7412700))

(declare-fun m!8047244 () Bool)

(assert (=> setNonEmpty!56348 m!8047244))

(declare-fun b_lambda!286765 () Bool)

(assert (= b_lambda!286759 (or d!2292487 b_lambda!286765)))

(declare-fun bs!1924947 () Bool)

(declare-fun d!2292595 () Bool)

(assert (= bs!1924947 (and d!2292595 d!2292487)))

(declare-fun validRegex!9967 (Regex!19418) Bool)

(assert (=> bs!1924947 (= (dynLambda!29696 lambda!460062 (h!78364 (exprs!8858 empty!3619))) (validRegex!9967 (h!78364 (exprs!8858 empty!3619))))))

(declare-fun m!8047246 () Bool)

(assert (=> bs!1924947 m!8047246))

(assert (=> b!7412615 d!2292595))

(declare-fun b_lambda!286767 () Bool)

(assert (= b_lambda!286761 (or d!2292485 b_lambda!286767)))

(declare-fun bs!1924948 () Bool)

(declare-fun d!2292597 () Bool)

(assert (= bs!1924948 (and d!2292597 d!2292485)))

(assert (=> bs!1924948 (= (dynLambda!29696 lambda!460061 (h!78364 (exprs!8858 setElem!56338))) (validRegex!9967 (h!78364 (exprs!8858 setElem!56338))))))

(declare-fun m!8047248 () Bool)

(assert (=> bs!1924948 m!8047248))

(assert (=> b!7412619 d!2292597))

(declare-fun b_lambda!286769 () Bool)

(assert (= b_lambda!286763 (or d!2292483 b_lambda!286769)))

(declare-fun bs!1924949 () Bool)

(declare-fun d!2292599 () Bool)

(assert (= bs!1924949 (and d!2292599 d!2292483)))

(assert (=> bs!1924949 (= (dynLambda!29696 lambda!460060 (h!78364 (exprs!8858 c!10532))) (validRegex!9967 (h!78364 (exprs!8858 c!10532))))))

(declare-fun m!8047250 () Bool)

(assert (=> bs!1924949 m!8047250))

(assert (=> b!7412662 d!2292599))

(push 1)

(assert (not b!7412609))

(assert (not b!7412622))

(assert (not bs!1924948))

(assert (not b!7412697))

(assert (not b!7412685))

(assert (not b!7412689))

(assert (not b!7412621))

(assert (not b!7412601))

(assert (not d!2292575))

(assert (not b!7412699))

(assert (not d!2292553))

(assert (not b_lambda!286767))

(assert (not d!2292593))

(assert (not b!7412700))

(assert (not b!7412620))

(assert (not d!2292589))

(assert (not d!2292563))

(assert (not b!7412618))

(assert (not d!2292543))

(assert (not b_lambda!286769))

(assert (not b!7412687))

(assert (not bm!682546))

(assert (not d!2292587))

(assert (not bm!682548))

(assert (not d!2292551))

(assert (not bm!682547))

(assert (not bs!1924947))

(assert (not b!7412690))

(assert (not bm!682543))

(assert (not b!7412693))

(assert (not d!2292585))

(assert (not b!7412667))

(assert (not b!7412668))

(assert (not b!7412608))

(assert (not d!2292571))

(assert (not b!7412658))

(assert (not b!7412694))

(assert (not b!7412698))

(assert (not d!2292565))

(assert (not bs!1924949))

(assert (not b!7412600))

(assert (not b!7412696))

(assert (not b!7412663))

(assert (not b!7412628))

(assert (not b!7412686))

(assert (not d!2292581))

(assert (not b!7412691))

(assert (not b_lambda!286765))

(assert (not b!7412692))

(assert tp_is_empty!49099)

(assert (not d!2292577))

(assert (not setNonEmpty!56348))

(assert (not b!7412617))

(assert (not b!7412616))

(assert (not b!7412670))

(assert (not b!7412610))

(assert (not b!7412684))

(assert (not d!2292559))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

