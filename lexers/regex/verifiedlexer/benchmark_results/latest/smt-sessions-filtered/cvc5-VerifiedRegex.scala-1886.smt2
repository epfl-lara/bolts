; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!92904 () Bool)

(assert start!92904)

(declare-fun bs!257691 () Bool)

(declare-fun b!1088056 () Bool)

(declare-fun b!1088053 () Bool)

(assert (= bs!257691 (and b!1088056 b!1088053)))

(declare-fun lambda!40700 () Int)

(declare-fun lambda!40699 () Int)

(assert (=> bs!257691 (not (= lambda!40700 lambda!40699))))

(assert (=> b!1088056 true))

(declare-fun b!1088048 () Bool)

(declare-fun e!688293 () Bool)

(declare-fun e!688289 () Bool)

(assert (=> b!1088048 (= e!688293 e!688289)))

(declare-fun res!483722 () Bool)

(assert (=> b!1088048 (=> res!483722 e!688289)))

(declare-datatypes ((C!6630 0))(
  ( (C!6631 (val!3563 Int)) )
))
(declare-datatypes ((Regex!3030 0))(
  ( (ElementMatch!3030 (c!184256 C!6630)) (Concat!4863 (regOne!6572 Regex!3030) (regTwo!6572 Regex!3030)) (EmptyExpr!3030) (Star!3030 (reg!3359 Regex!3030)) (EmptyLang!3030) (Union!3030 (regOne!6573 Regex!3030) (regTwo!6573 Regex!3030)) )
))
(declare-datatypes ((List!10393 0))(
  ( (Nil!10377) (Cons!10377 (h!15778 Regex!3030) (t!101439 List!10393)) )
))
(declare-datatypes ((Context!1020 0))(
  ( (Context!1021 (exprs!1010 List!10393)) )
))
(declare-fun z!1122 () (Set Context!1020))

(declare-fun exists!198 ((Set Context!1020) Int) Bool)

(assert (=> b!1088048 (= res!483722 (not (exists!198 z!1122 lambda!40700)))))

(assert (=> b!1088048 (exists!198 z!1122 lambda!40700)))

(declare-datatypes ((Unit!15767 0))(
  ( (Unit!15768) )
))
(declare-fun lt!364012 () Unit!15767)

(declare-fun lt!364008 () Context!1020)

(declare-fun lemmaContainsThenExists!34 ((Set Context!1020) Context!1020 Int) Unit!15767)

(assert (=> b!1088048 (= lt!364012 (lemmaContainsThenExists!34 z!1122 lt!364008 lambda!40700))))

(declare-fun b!1088049 () Bool)

(declare-fun e!688286 () Bool)

(declare-fun tp_is_empty!5691 () Bool)

(declare-fun tp!326142 () Bool)

(assert (=> b!1088049 (= e!688286 (and tp_is_empty!5691 tp!326142))))

(declare-fun res!483729 () Bool)

(declare-fun e!688290 () Bool)

(assert (=> start!92904 (=> (not res!483729) (not e!688290))))

(declare-datatypes ((List!10394 0))(
  ( (Nil!10378) (Cons!10378 (h!15779 Context!1020) (t!101440 List!10394)) )
))
(declare-fun lt!364009 () List!10394)

(declare-fun zl!316 () List!10394)

(assert (=> start!92904 (= res!483729 (= lt!364009 zl!316))))

(declare-fun toList!648 ((Set Context!1020)) List!10394)

(assert (=> start!92904 (= lt!364009 (toList!648 z!1122))))

(assert (=> start!92904 e!688290))

(declare-fun condSetEmpty!7693 () Bool)

(assert (=> start!92904 (= condSetEmpty!7693 (= z!1122 (as set.empty (Set Context!1020))))))

(declare-fun setRes!7693 () Bool)

(assert (=> start!92904 setRes!7693))

(declare-fun e!688288 () Bool)

(assert (=> start!92904 e!688288))

(assert (=> start!92904 e!688286))

(declare-fun b!1088050 () Bool)

(declare-fun e!688291 () Bool)

(declare-fun e!688287 () Bool)

(assert (=> b!1088050 (= e!688291 e!688287)))

(declare-fun res!483728 () Bool)

(assert (=> b!1088050 (=> res!483728 e!688287)))

(declare-fun filter!186 ((Set Context!1020) Int) (Set Context!1020))

(assert (=> b!1088050 (= res!483728 (not (set.member lt!364008 (filter!186 z!1122 lambda!40699))))))

(declare-fun getWitness!102 ((Set Context!1020) Int) Context!1020)

(assert (=> b!1088050 (= lt!364008 (getWitness!102 (filter!186 z!1122 lambda!40699) lambda!40700))))

(declare-fun setIsEmpty!7693 () Bool)

(assert (=> setIsEmpty!7693 setRes!7693))

(declare-fun setNonEmpty!7693 () Bool)

(declare-fun setElem!7693 () Context!1020)

(declare-fun e!688285 () Bool)

(declare-fun tp!326140 () Bool)

(declare-fun inv!13289 (Context!1020) Bool)

(assert (=> setNonEmpty!7693 (= setRes!7693 (and tp!326140 (inv!13289 setElem!7693) e!688285))))

(declare-fun setRest!7693 () (Set Context!1020))

(assert (=> setNonEmpty!7693 (= z!1122 (set.union (set.insert setElem!7693 (as set.empty (Set Context!1020))) setRest!7693))))

(declare-fun b!1088051 () Bool)

(declare-fun res!483727 () Bool)

(assert (=> b!1088051 (=> res!483727 e!688287)))

(declare-datatypes ((List!10395 0))(
  ( (Nil!10379) (Cons!10379 (h!15780 C!6630) (t!101441 List!10395)) )
))
(declare-fun s!2287 () List!10395)

(declare-fun matchZipper!78 ((Set Context!1020) List!10395) Bool)

(assert (=> b!1088051 (= res!483727 (not (matchZipper!78 (set.insert lt!364008 (as set.empty (Set Context!1020))) s!2287)))))

(declare-fun b!1088052 () Bool)

(declare-fun tp!326141 () Bool)

(declare-fun e!688292 () Bool)

(assert (=> b!1088052 (= e!688288 (and (inv!13289 (h!15779 zl!316)) e!688292 tp!326141))))

(declare-fun res!483725 () Bool)

(assert (=> b!1088053 (=> (not res!483725) (not e!688290))))

(assert (=> b!1088053 (= res!483725 (matchZipper!78 (filter!186 z!1122 lambda!40699) s!2287))))

(declare-fun b!1088054 () Bool)

(declare-fun exists!199 (List!10394 Int) Bool)

(assert (=> b!1088054 (= e!688289 (exists!199 lt!364009 lambda!40700))))

(declare-fun b!1088055 () Bool)

(assert (=> b!1088055 (= e!688287 e!688293)))

(declare-fun res!483724 () Bool)

(assert (=> b!1088055 (=> res!483724 e!688293)))

(assert (=> b!1088055 (= res!483724 (not (set.member lt!364008 z!1122)))))

(declare-fun lt!364011 () Unit!15767)

(declare-fun filterPost!29 ((Set Context!1020) Int Context!1020) Unit!15767)

(assert (=> b!1088055 (= lt!364011 (filterPost!29 z!1122 lambda!40699 lt!364008))))

(assert (=> b!1088056 (= e!688290 (not e!688291))))

(declare-fun res!483726 () Bool)

(assert (=> b!1088056 (=> res!483726 e!688291)))

(assert (=> b!1088056 (= res!483726 (not (exists!198 (filter!186 z!1122 lambda!40699) lambda!40700)))))

(declare-fun lt!364010 () List!10394)

(assert (=> b!1088056 (exists!199 lt!364010 lambda!40700)))

(declare-fun lt!364013 () Unit!15767)

(declare-fun lemmaZipperMatchesExistsMatchingContext!53 (List!10394 List!10395) Unit!15767)

(assert (=> b!1088056 (= lt!364013 (lemmaZipperMatchesExistsMatchingContext!53 lt!364010 s!2287))))

(assert (=> b!1088056 (= lt!364010 (toList!648 (filter!186 z!1122 lambda!40699)))))

(declare-fun b!1088057 () Bool)

(declare-fun tp!326139 () Bool)

(assert (=> b!1088057 (= e!688285 tp!326139)))

(declare-fun b!1088058 () Bool)

(declare-fun tp!326143 () Bool)

(assert (=> b!1088058 (= e!688292 tp!326143)))

(declare-fun b!1088059 () Bool)

(declare-fun res!483723 () Bool)

(assert (=> b!1088059 (=> (not res!483723) (not e!688290))))

(assert (=> b!1088059 (= res!483723 (not (matchZipper!78 z!1122 s!2287)))))

(assert (= (and start!92904 res!483729) b!1088059))

(assert (= (and b!1088059 res!483723) b!1088053))

(assert (= (and b!1088053 res!483725) b!1088056))

(assert (= (and b!1088056 (not res!483726)) b!1088050))

(assert (= (and b!1088050 (not res!483728)) b!1088051))

(assert (= (and b!1088051 (not res!483727)) b!1088055))

(assert (= (and b!1088055 (not res!483724)) b!1088048))

(assert (= (and b!1088048 (not res!483722)) b!1088054))

(assert (= (and start!92904 condSetEmpty!7693) setIsEmpty!7693))

(assert (= (and start!92904 (not condSetEmpty!7693)) setNonEmpty!7693))

(assert (= setNonEmpty!7693 b!1088057))

(assert (= b!1088052 b!1088058))

(assert (= (and start!92904 (is-Cons!10378 zl!316)) b!1088052))

(assert (= (and start!92904 (is-Cons!10379 s!2287)) b!1088049))

(declare-fun m!1238387 () Bool)

(assert (=> b!1088053 m!1238387))

(assert (=> b!1088053 m!1238387))

(declare-fun m!1238389 () Bool)

(assert (=> b!1088053 m!1238389))

(assert (=> b!1088050 m!1238387))

(declare-fun m!1238391 () Bool)

(assert (=> b!1088050 m!1238391))

(assert (=> b!1088050 m!1238387))

(assert (=> b!1088050 m!1238387))

(declare-fun m!1238393 () Bool)

(assert (=> b!1088050 m!1238393))

(assert (=> b!1088056 m!1238387))

(assert (=> b!1088056 m!1238387))

(declare-fun m!1238395 () Bool)

(assert (=> b!1088056 m!1238395))

(declare-fun m!1238397 () Bool)

(assert (=> b!1088056 m!1238397))

(assert (=> b!1088056 m!1238387))

(declare-fun m!1238399 () Bool)

(assert (=> b!1088056 m!1238399))

(assert (=> b!1088056 m!1238387))

(declare-fun m!1238401 () Bool)

(assert (=> b!1088056 m!1238401))

(declare-fun m!1238403 () Bool)

(assert (=> b!1088051 m!1238403))

(assert (=> b!1088051 m!1238403))

(declare-fun m!1238405 () Bool)

(assert (=> b!1088051 m!1238405))

(declare-fun m!1238407 () Bool)

(assert (=> b!1088048 m!1238407))

(assert (=> b!1088048 m!1238407))

(declare-fun m!1238409 () Bool)

(assert (=> b!1088048 m!1238409))

(declare-fun m!1238411 () Bool)

(assert (=> b!1088052 m!1238411))

(declare-fun m!1238413 () Bool)

(assert (=> b!1088055 m!1238413))

(declare-fun m!1238415 () Bool)

(assert (=> b!1088055 m!1238415))

(declare-fun m!1238417 () Bool)

(assert (=> start!92904 m!1238417))

(declare-fun m!1238419 () Bool)

(assert (=> b!1088059 m!1238419))

(declare-fun m!1238421 () Bool)

(assert (=> b!1088054 m!1238421))

(declare-fun m!1238423 () Bool)

(assert (=> setNonEmpty!7693 m!1238423))

(push 1)

(assert (not b!1088056))

(assert (not b!1088048))

(assert (not b!1088058))

(assert (not b!1088052))

(assert (not setNonEmpty!7693))

(assert (not b!1088059))

(assert (not b!1088057))

(assert (not b!1088054))

(assert (not b!1088050))

(assert (not b!1088053))

(assert (not b!1088051))

(assert (not start!92904))

(assert (not b!1088055))

(assert (not b!1088049))

(assert tp_is_empty!5691)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!305969 () Bool)

(declare-fun lt!364034 () Bool)

(assert (=> d!305969 (= lt!364034 (exists!199 (toList!648 z!1122) lambda!40700))))

(declare-fun choose!6981 ((Set Context!1020) Int) Bool)

(assert (=> d!305969 (= lt!364034 (choose!6981 z!1122 lambda!40700))))

(assert (=> d!305969 (= (exists!198 z!1122 lambda!40700) lt!364034)))

(declare-fun bs!257693 () Bool)

(assert (= bs!257693 d!305969))

(assert (=> bs!257693 m!1238417))

(assert (=> bs!257693 m!1238417))

(declare-fun m!1238463 () Bool)

(assert (=> bs!257693 m!1238463))

(declare-fun m!1238465 () Bool)

(assert (=> bs!257693 m!1238465))

(assert (=> b!1088048 d!305969))

(declare-fun d!305973 () Bool)

(assert (=> d!305973 (exists!198 z!1122 lambda!40700)))

(declare-fun lt!364037 () Unit!15767)

(declare-fun choose!6982 ((Set Context!1020) Context!1020 Int) Unit!15767)

(assert (=> d!305973 (= lt!364037 (choose!6982 z!1122 lt!364008 lambda!40700))))

(assert (=> d!305973 (set.member lt!364008 z!1122)))

(assert (=> d!305973 (= (lemmaContainsThenExists!34 z!1122 lt!364008 lambda!40700) lt!364037)))

(declare-fun bs!257695 () Bool)

(assert (= bs!257695 d!305973))

(assert (=> bs!257695 m!1238407))

(declare-fun m!1238469 () Bool)

(assert (=> bs!257695 m!1238469))

(assert (=> bs!257695 m!1238413))

(assert (=> b!1088048 d!305973))

(declare-fun d!305977 () Bool)

(declare-fun lambda!40729 () Int)

(declare-fun forall!2286 (List!10393 Int) Bool)

(assert (=> d!305977 (= (inv!13289 (h!15779 zl!316)) (forall!2286 (exprs!1010 (h!15779 zl!316)) lambda!40729))))

(declare-fun bs!257697 () Bool)

(assert (= bs!257697 d!305977))

(declare-fun m!1238475 () Bool)

(assert (=> bs!257697 m!1238475))

(assert (=> b!1088052 d!305977))

(declare-fun d!305979 () Bool)

(declare-fun e!688324 () Bool)

(assert (=> d!305979 e!688324))

(declare-fun res!483756 () Bool)

(assert (=> d!305979 (=> (not res!483756) (not e!688324))))

(declare-fun lt!364043 () List!10394)

(declare-fun noDuplicate!197 (List!10394) Bool)

(assert (=> d!305979 (= res!483756 (noDuplicate!197 lt!364043))))

(declare-fun choose!6983 ((Set Context!1020)) List!10394)

(assert (=> d!305979 (= lt!364043 (choose!6983 z!1122))))

(assert (=> d!305979 (= (toList!648 z!1122) lt!364043)))

(declare-fun b!1088102 () Bool)

(declare-fun content!1495 (List!10394) (Set Context!1020))

(assert (=> b!1088102 (= e!688324 (= (content!1495 lt!364043) z!1122))))

(assert (= (and d!305979 res!483756) b!1088102))

(declare-fun m!1238477 () Bool)

(assert (=> d!305979 m!1238477))

(declare-fun m!1238479 () Bool)

(assert (=> d!305979 m!1238479))

(declare-fun m!1238481 () Bool)

(assert (=> b!1088102 m!1238481))

(assert (=> start!92904 d!305979))

(declare-fun d!305983 () Bool)

(declare-fun c!184284 () Bool)

(declare-fun isEmpty!6640 (List!10395) Bool)

(assert (=> d!305983 (= c!184284 (isEmpty!6640 s!2287))))

(declare-fun e!688327 () Bool)

(assert (=> d!305983 (= (matchZipper!78 (filter!186 z!1122 lambda!40699) s!2287) e!688327)))

(declare-fun b!1088109 () Bool)

(declare-fun nullableZipper!37 ((Set Context!1020)) Bool)

(assert (=> b!1088109 (= e!688327 (nullableZipper!37 (filter!186 z!1122 lambda!40699)))))

(declare-fun b!1088110 () Bool)

(declare-fun derivationStepZipper!35 ((Set Context!1020) C!6630) (Set Context!1020))

(declare-fun head!2025 (List!10395) C!6630)

(declare-fun tail!1585 (List!10395) List!10395)

(assert (=> b!1088110 (= e!688327 (matchZipper!78 (derivationStepZipper!35 (filter!186 z!1122 lambda!40699) (head!2025 s!2287)) (tail!1585 s!2287)))))

(assert (= (and d!305983 c!184284) b!1088109))

(assert (= (and d!305983 (not c!184284)) b!1088110))

(declare-fun m!1238485 () Bool)

(assert (=> d!305983 m!1238485))

(assert (=> b!1088109 m!1238387))

(declare-fun m!1238487 () Bool)

(assert (=> b!1088109 m!1238487))

(declare-fun m!1238489 () Bool)

(assert (=> b!1088110 m!1238489))

(assert (=> b!1088110 m!1238387))

(assert (=> b!1088110 m!1238489))

(declare-fun m!1238491 () Bool)

(assert (=> b!1088110 m!1238491))

(declare-fun m!1238493 () Bool)

(assert (=> b!1088110 m!1238493))

(assert (=> b!1088110 m!1238491))

(assert (=> b!1088110 m!1238493))

(declare-fun m!1238495 () Bool)

(assert (=> b!1088110 m!1238495))

(assert (=> b!1088053 d!305983))

(declare-fun d!305987 () Bool)

(declare-fun choose!6984 ((Set Context!1020) Int) (Set Context!1020))

(assert (=> d!305987 (= (filter!186 z!1122 lambda!40699) (choose!6984 z!1122 lambda!40699))))

(declare-fun bs!257701 () Bool)

(assert (= bs!257701 d!305987))

(declare-fun m!1238497 () Bool)

(assert (=> bs!257701 m!1238497))

(assert (=> b!1088053 d!305987))

(assert (=> b!1088050 d!305987))

(declare-fun d!305989 () Bool)

(declare-fun e!688330 () Bool)

(assert (=> d!305989 e!688330))

(declare-fun res!483759 () Bool)

(assert (=> d!305989 (=> (not res!483759) (not e!688330))))

(declare-fun lt!364046 () Context!1020)

(declare-fun dynLambda!4538 (Int Context!1020) Bool)

(assert (=> d!305989 (= res!483759 (dynLambda!4538 lambda!40700 lt!364046))))

(declare-fun getWitness!104 (List!10394 Int) Context!1020)

(assert (=> d!305989 (= lt!364046 (getWitness!104 (toList!648 (filter!186 z!1122 lambda!40699)) lambda!40700))))

(assert (=> d!305989 (exists!198 (filter!186 z!1122 lambda!40699) lambda!40700)))

(assert (=> d!305989 (= (getWitness!102 (filter!186 z!1122 lambda!40699) lambda!40700) lt!364046)))

(declare-fun b!1088113 () Bool)

(assert (=> b!1088113 (= e!688330 (set.member lt!364046 (filter!186 z!1122 lambda!40699)))))

(assert (= (and d!305989 res!483759) b!1088113))

(declare-fun b_lambda!30291 () Bool)

(assert (=> (not b_lambda!30291) (not d!305989)))

(declare-fun m!1238499 () Bool)

(assert (=> d!305989 m!1238499))

(assert (=> d!305989 m!1238387))

(assert (=> d!305989 m!1238399))

(assert (=> d!305989 m!1238399))

(declare-fun m!1238501 () Bool)

(assert (=> d!305989 m!1238501))

(assert (=> d!305989 m!1238387))

(assert (=> d!305989 m!1238395))

(declare-fun m!1238503 () Bool)

(assert (=> b!1088113 m!1238503))

(assert (=> b!1088050 d!305989))

(declare-fun d!305991 () Bool)

(declare-fun c!184285 () Bool)

(assert (=> d!305991 (= c!184285 (isEmpty!6640 s!2287))))

(declare-fun e!688331 () Bool)

(assert (=> d!305991 (= (matchZipper!78 z!1122 s!2287) e!688331)))

(declare-fun b!1088114 () Bool)

(assert (=> b!1088114 (= e!688331 (nullableZipper!37 z!1122))))

(declare-fun b!1088115 () Bool)

(assert (=> b!1088115 (= e!688331 (matchZipper!78 (derivationStepZipper!35 z!1122 (head!2025 s!2287)) (tail!1585 s!2287)))))

(assert (= (and d!305991 c!184285) b!1088114))

(assert (= (and d!305991 (not c!184285)) b!1088115))

(assert (=> d!305991 m!1238485))

(declare-fun m!1238505 () Bool)

(assert (=> b!1088114 m!1238505))

(assert (=> b!1088115 m!1238489))

(assert (=> b!1088115 m!1238489))

(declare-fun m!1238507 () Bool)

(assert (=> b!1088115 m!1238507))

(assert (=> b!1088115 m!1238493))

(assert (=> b!1088115 m!1238507))

(assert (=> b!1088115 m!1238493))

(declare-fun m!1238509 () Bool)

(assert (=> b!1088115 m!1238509))

(assert (=> b!1088059 d!305991))

(declare-fun bs!257702 () Bool)

(declare-fun d!305993 () Bool)

(assert (= bs!257702 (and d!305993 b!1088053)))

(declare-fun lambda!40735 () Int)

(assert (=> bs!257702 (not (= lambda!40735 lambda!40699))))

(declare-fun bs!257703 () Bool)

(assert (= bs!257703 (and d!305993 b!1088056)))

(assert (=> bs!257703 (not (= lambda!40735 lambda!40700))))

(assert (=> d!305993 true))

(declare-fun order!6235 () Int)

(declare-fun dynLambda!4539 (Int Int) Int)

(assert (=> d!305993 (< (dynLambda!4539 order!6235 lambda!40700) (dynLambda!4539 order!6235 lambda!40735))))

(declare-fun forall!2287 (List!10394 Int) Bool)

(assert (=> d!305993 (= (exists!199 lt!364009 lambda!40700) (not (forall!2287 lt!364009 lambda!40735)))))

(declare-fun bs!257704 () Bool)

(assert (= bs!257704 d!305993))

(declare-fun m!1238511 () Bool)

(assert (=> bs!257704 m!1238511))

(assert (=> b!1088054 d!305993))

(declare-fun e!688334 () Bool)

(declare-fun d!305995 () Bool)

(assert (=> d!305995 (= (set.member lt!364008 (filter!186 z!1122 lambda!40699)) e!688334)))

(declare-fun res!483762 () Bool)

(assert (=> d!305995 (=> (not res!483762) (not e!688334))))

(assert (=> d!305995 (= res!483762 (dynLambda!4538 lambda!40699 lt!364008))))

(declare-fun lt!364051 () Unit!15767)

(declare-fun choose!6985 ((Set Context!1020) Int Context!1020) Unit!15767)

(assert (=> d!305995 (= lt!364051 (choose!6985 z!1122 lambda!40699 lt!364008))))

(assert (=> d!305995 (= (filterPost!29 z!1122 lambda!40699 lt!364008) lt!364051)))

(declare-fun b!1088120 () Bool)

(assert (=> b!1088120 (= e!688334 (set.member lt!364008 z!1122))))

(assert (= (and d!305995 res!483762) b!1088120))

(declare-fun b_lambda!30293 () Bool)

(assert (=> (not b_lambda!30293) (not d!305995)))

(assert (=> d!305995 m!1238387))

(assert (=> d!305995 m!1238391))

(declare-fun m!1238513 () Bool)

(assert (=> d!305995 m!1238513))

(declare-fun m!1238515 () Bool)

(assert (=> d!305995 m!1238515))

(assert (=> b!1088120 m!1238413))

(assert (=> b!1088055 d!305995))

(declare-fun bs!257705 () Bool)

(declare-fun d!305997 () Bool)

(assert (= bs!257705 (and d!305997 d!305977)))

(declare-fun lambda!40738 () Int)

(assert (=> bs!257705 (= lambda!40738 lambda!40729)))

(assert (=> d!305997 (= (inv!13289 setElem!7693) (forall!2286 (exprs!1010 setElem!7693) lambda!40738))))

(declare-fun bs!257706 () Bool)

(assert (= bs!257706 d!305997))

(declare-fun m!1238517 () Bool)

(assert (=> bs!257706 m!1238517))

(assert (=> setNonEmpty!7693 d!305997))

(assert (=> b!1088056 d!305987))

(declare-fun d!305999 () Bool)

(declare-fun e!688335 () Bool)

(assert (=> d!305999 e!688335))

(declare-fun res!483763 () Bool)

(assert (=> d!305999 (=> (not res!483763) (not e!688335))))

(declare-fun lt!364052 () List!10394)

(assert (=> d!305999 (= res!483763 (noDuplicate!197 lt!364052))))

(assert (=> d!305999 (= lt!364052 (choose!6983 (filter!186 z!1122 lambda!40699)))))

(assert (=> d!305999 (= (toList!648 (filter!186 z!1122 lambda!40699)) lt!364052)))

(declare-fun b!1088121 () Bool)

(assert (=> b!1088121 (= e!688335 (= (content!1495 lt!364052) (filter!186 z!1122 lambda!40699)))))

(assert (= (and d!305999 res!483763) b!1088121))

(declare-fun m!1238519 () Bool)

(assert (=> d!305999 m!1238519))

(assert (=> d!305999 m!1238387))

(declare-fun m!1238521 () Bool)

(assert (=> d!305999 m!1238521))

(declare-fun m!1238523 () Bool)

(assert (=> b!1088121 m!1238523))

(assert (=> b!1088056 d!305999))

(declare-fun bs!257711 () Bool)

(declare-fun d!306001 () Bool)

(assert (= bs!257711 (and d!306001 b!1088053)))

(declare-fun lambda!40742 () Int)

(assert (=> bs!257711 (not (= lambda!40742 lambda!40699))))

(declare-fun bs!257712 () Bool)

(assert (= bs!257712 (and d!306001 b!1088056)))

(assert (=> bs!257712 (= lambda!40742 lambda!40700)))

(declare-fun bs!257713 () Bool)

(assert (= bs!257713 (and d!306001 d!305993)))

(assert (=> bs!257713 (not (= lambda!40742 lambda!40735))))

(assert (=> d!306001 true))

(assert (=> d!306001 (exists!199 lt!364010 lambda!40742)))

(declare-fun lt!364056 () Unit!15767)

(declare-fun choose!6986 (List!10394 List!10395) Unit!15767)

(assert (=> d!306001 (= lt!364056 (choose!6986 lt!364010 s!2287))))

(assert (=> d!306001 (matchZipper!78 (content!1495 lt!364010) s!2287)))

(assert (=> d!306001 (= (lemmaZipperMatchesExistsMatchingContext!53 lt!364010 s!2287) lt!364056)))

(declare-fun bs!257714 () Bool)

(assert (= bs!257714 d!306001))

(declare-fun m!1238533 () Bool)

(assert (=> bs!257714 m!1238533))

(declare-fun m!1238535 () Bool)

(assert (=> bs!257714 m!1238535))

(declare-fun m!1238537 () Bool)

(assert (=> bs!257714 m!1238537))

(assert (=> bs!257714 m!1238537))

(declare-fun m!1238539 () Bool)

(assert (=> bs!257714 m!1238539))

(assert (=> b!1088056 d!306001))

(declare-fun lt!364059 () Bool)

(declare-fun d!306005 () Bool)

(assert (=> d!306005 (= lt!364059 (exists!199 (toList!648 (filter!186 z!1122 lambda!40699)) lambda!40700))))

(assert (=> d!306005 (= lt!364059 (choose!6981 (filter!186 z!1122 lambda!40699) lambda!40700))))

(assert (=> d!306005 (= (exists!198 (filter!186 z!1122 lambda!40699) lambda!40700) lt!364059)))

(declare-fun bs!257715 () Bool)

(assert (= bs!257715 d!306005))

(assert (=> bs!257715 m!1238387))

(assert (=> bs!257715 m!1238399))

(assert (=> bs!257715 m!1238399))

(declare-fun m!1238541 () Bool)

(assert (=> bs!257715 m!1238541))

(assert (=> bs!257715 m!1238387))

(declare-fun m!1238543 () Bool)

(assert (=> bs!257715 m!1238543))

(assert (=> b!1088056 d!306005))

(declare-fun bs!257716 () Bool)

(declare-fun d!306007 () Bool)

(assert (= bs!257716 (and d!306007 b!1088053)))

(declare-fun lambda!40743 () Int)

(assert (=> bs!257716 (not (= lambda!40743 lambda!40699))))

(declare-fun bs!257717 () Bool)

(assert (= bs!257717 (and d!306007 b!1088056)))

(assert (=> bs!257717 (not (= lambda!40743 lambda!40700))))

(declare-fun bs!257718 () Bool)

(assert (= bs!257718 (and d!306007 d!305993)))

(assert (=> bs!257718 (= lambda!40743 lambda!40735)))

(declare-fun bs!257719 () Bool)

(assert (= bs!257719 (and d!306007 d!306001)))

(assert (=> bs!257719 (not (= lambda!40743 lambda!40742))))

(assert (=> d!306007 true))

(assert (=> d!306007 (< (dynLambda!4539 order!6235 lambda!40700) (dynLambda!4539 order!6235 lambda!40743))))

(assert (=> d!306007 (= (exists!199 lt!364010 lambda!40700) (not (forall!2287 lt!364010 lambda!40743)))))

(declare-fun bs!257720 () Bool)

(assert (= bs!257720 d!306007))

(declare-fun m!1238545 () Bool)

(assert (=> bs!257720 m!1238545))

(assert (=> b!1088056 d!306007))

(declare-fun d!306009 () Bool)

(declare-fun c!184290 () Bool)

(assert (=> d!306009 (= c!184290 (isEmpty!6640 s!2287))))

(declare-fun e!688338 () Bool)

(assert (=> d!306009 (= (matchZipper!78 (set.insert lt!364008 (as set.empty (Set Context!1020))) s!2287) e!688338)))

(declare-fun b!1088124 () Bool)

(assert (=> b!1088124 (= e!688338 (nullableZipper!37 (set.insert lt!364008 (as set.empty (Set Context!1020)))))))

(declare-fun b!1088125 () Bool)

(assert (=> b!1088125 (= e!688338 (matchZipper!78 (derivationStepZipper!35 (set.insert lt!364008 (as set.empty (Set Context!1020))) (head!2025 s!2287)) (tail!1585 s!2287)))))

(assert (= (and d!306009 c!184290) b!1088124))

(assert (= (and d!306009 (not c!184290)) b!1088125))

(assert (=> d!306009 m!1238485))

(assert (=> b!1088124 m!1238403))

(declare-fun m!1238547 () Bool)

(assert (=> b!1088124 m!1238547))

(assert (=> b!1088125 m!1238489))

(assert (=> b!1088125 m!1238403))

(assert (=> b!1088125 m!1238489))

(declare-fun m!1238549 () Bool)

(assert (=> b!1088125 m!1238549))

(assert (=> b!1088125 m!1238493))

(assert (=> b!1088125 m!1238549))

(assert (=> b!1088125 m!1238493))

(declare-fun m!1238551 () Bool)

(assert (=> b!1088125 m!1238551))

(assert (=> b!1088051 d!306009))

(declare-fun b!1088131 () Bool)

(declare-fun e!688342 () Bool)

(declare-fun tp!326163 () Bool)

(declare-fun tp!326164 () Bool)

(assert (=> b!1088131 (= e!688342 (and tp!326163 tp!326164))))

(assert (=> b!1088057 (= tp!326139 e!688342)))

(assert (= (and b!1088057 (is-Cons!10377 (exprs!1010 setElem!7693))) b!1088131))

(declare-fun b!1088139 () Bool)

(declare-fun e!688348 () Bool)

(declare-fun tp!326169 () Bool)

(assert (=> b!1088139 (= e!688348 tp!326169)))

(declare-fun b!1088138 () Bool)

(declare-fun e!688347 () Bool)

(declare-fun tp!326170 () Bool)

(assert (=> b!1088138 (= e!688347 (and (inv!13289 (h!15779 (t!101440 zl!316))) e!688348 tp!326170))))

(assert (=> b!1088052 (= tp!326141 e!688347)))

(assert (= b!1088138 b!1088139))

(assert (= (and b!1088052 (is-Cons!10378 (t!101440 zl!316))) b!1088138))

(declare-fun m!1238563 () Bool)

(assert (=> b!1088138 m!1238563))

(declare-fun b!1088144 () Bool)

(declare-fun e!688351 () Bool)

(declare-fun tp!326173 () Bool)

(assert (=> b!1088144 (= e!688351 (and tp_is_empty!5691 tp!326173))))

(assert (=> b!1088049 (= tp!326142 e!688351)))

(assert (= (and b!1088049 (is-Cons!10379 (t!101441 s!2287))) b!1088144))

(declare-fun b!1088145 () Bool)

(declare-fun e!688352 () Bool)

(declare-fun tp!326174 () Bool)

(declare-fun tp!326175 () Bool)

(assert (=> b!1088145 (= e!688352 (and tp!326174 tp!326175))))

(assert (=> b!1088058 (= tp!326143 e!688352)))

(assert (= (and b!1088058 (is-Cons!10377 (exprs!1010 (h!15779 zl!316)))) b!1088145))

(declare-fun condSetEmpty!7699 () Bool)

(assert (=> setNonEmpty!7693 (= condSetEmpty!7699 (= setRest!7693 (as set.empty (Set Context!1020))))))

(declare-fun setRes!7699 () Bool)

(assert (=> setNonEmpty!7693 (= tp!326140 setRes!7699)))

(declare-fun setIsEmpty!7699 () Bool)

(assert (=> setIsEmpty!7699 setRes!7699))

(declare-fun e!688355 () Bool)

(declare-fun setNonEmpty!7699 () Bool)

(declare-fun tp!326181 () Bool)

(declare-fun setElem!7699 () Context!1020)

(assert (=> setNonEmpty!7699 (= setRes!7699 (and tp!326181 (inv!13289 setElem!7699) e!688355))))

(declare-fun setRest!7699 () (Set Context!1020))

(assert (=> setNonEmpty!7699 (= setRest!7693 (set.union (set.insert setElem!7699 (as set.empty (Set Context!1020))) setRest!7699))))

(declare-fun b!1088150 () Bool)

(declare-fun tp!326180 () Bool)

(assert (=> b!1088150 (= e!688355 tp!326180)))

(assert (= (and setNonEmpty!7693 condSetEmpty!7699) setIsEmpty!7699))

(assert (= (and setNonEmpty!7693 (not condSetEmpty!7699)) setNonEmpty!7699))

(assert (= setNonEmpty!7699 b!1088150))

(declare-fun m!1238565 () Bool)

(assert (=> setNonEmpty!7699 m!1238565))

(declare-fun b_lambda!30295 () Bool)

(assert (= b_lambda!30291 (or b!1088056 b_lambda!30295)))

(declare-fun bs!257722 () Bool)

(declare-fun d!306015 () Bool)

(assert (= bs!257722 (and d!306015 b!1088056)))

(assert (=> bs!257722 (= (dynLambda!4538 lambda!40700 lt!364046) (matchZipper!78 (set.insert lt!364046 (as set.empty (Set Context!1020))) s!2287))))

(declare-fun m!1238567 () Bool)

(assert (=> bs!257722 m!1238567))

(assert (=> bs!257722 m!1238567))

(declare-fun m!1238569 () Bool)

(assert (=> bs!257722 m!1238569))

(assert (=> d!305989 d!306015))

(declare-fun b_lambda!30297 () Bool)

(assert (= b_lambda!30293 (or b!1088053 b_lambda!30297)))

(declare-fun bs!257723 () Bool)

(declare-fun d!306017 () Bool)

(assert (= bs!257723 (and d!306017 b!1088053)))

(declare-fun lostCause!238 (Context!1020) Bool)

(assert (=> bs!257723 (= (dynLambda!4538 lambda!40699 lt!364008) (not (lostCause!238 lt!364008)))))

(declare-fun m!1238571 () Bool)

(assert (=> bs!257723 m!1238571))

(assert (=> d!305995 d!306017))

(push 1)

(assert (not bs!257722))

(assert (not b!1088115))

(assert (not d!305999))

(assert (not b!1088102))

(assert (not d!305979))

(assert (not b!1088109))

(assert (not d!305969))

(assert (not d!305983))

(assert (not b!1088124))

(assert (not b!1088145))

(assert (not setNonEmpty!7699))

(assert (not d!306005))

(assert (not b!1088138))

(assert (not b!1088139))

(assert (not b!1088110))

(assert (not b!1088125))

(assert (not b!1088144))

(assert (not bs!257723))

(assert (not d!305997))

(assert (not b!1088121))

(assert (not b_lambda!30297))

(assert (not d!305977))

(assert (not b!1088114))

(assert (not d!305991))

(assert (not d!306009))

(assert (not d!305989))

(assert (not b!1088131))

(assert (not d!305995))

(assert (not d!305987))

(assert (not d!305993))

(assert (not b_lambda!30295))

(assert (not d!306001))

(assert (not d!305973))

(assert tp_is_empty!5691)

(assert (not b!1088150))

(assert (not d!306007))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

