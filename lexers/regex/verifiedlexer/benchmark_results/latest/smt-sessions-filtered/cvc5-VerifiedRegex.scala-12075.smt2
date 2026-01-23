; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!677232 () Bool)

(assert start!677232)

(declare-fun b!7021397 () Bool)

(declare-fun e!4220714 () Bool)

(declare-fun tp!1934177 () Bool)

(assert (=> b!7021397 (= e!4220714 tp!1934177)))

(declare-fun b!7021398 () Bool)

(declare-fun e!4220712 () Bool)

(declare-fun e!4220713 () Bool)

(assert (=> b!7021398 (= e!4220712 e!4220713)))

(declare-fun res!2866077 () Bool)

(assert (=> b!7021398 (=> (not res!2866077) (not e!4220713))))

(declare-datatypes ((C!35062 0))(
  ( (C!35063 (val!27233 Int)) )
))
(declare-datatypes ((Regex!17396 0))(
  ( (ElementMatch!17396 (c!1304927 C!35062)) (Concat!26241 (regOne!35304 Regex!17396) (regTwo!35304 Regex!17396)) (EmptyExpr!17396) (Star!17396 (reg!17725 Regex!17396)) (EmptyLang!17396) (Union!17396 (regOne!35305 Regex!17396) (regTwo!35305 Regex!17396)) )
))
(declare-datatypes ((List!67731 0))(
  ( (Nil!67607) (Cons!67607 (h!74055 Regex!17396) (t!381486 List!67731)) )
))
(declare-datatypes ((Context!12784 0))(
  ( (Context!12785 (exprs!6892 List!67731)) )
))
(declare-fun c!161 () Context!12784)

(declare-fun lambda!411521 () Int)

(declare-fun forall!16301 (List!67731 Int) Bool)

(assert (=> b!7021398 (= res!2866077 (forall!16301 (exprs!6892 c!161) lambda!411521))))

(declare-fun b!7021399 () Bool)

(declare-fun e!4220711 () Bool)

(declare-fun tp!1934176 () Bool)

(assert (=> b!7021399 (= e!4220711 tp!1934176)))

(declare-fun b!7021400 () Bool)

(declare-fun e!4220715 () Bool)

(declare-fun tp!1934174 () Bool)

(assert (=> b!7021400 (= e!4220715 tp!1934174)))

(declare-fun b!7021401 () Bool)

(declare-fun res!2866078 () Bool)

(assert (=> b!7021401 (=> (not res!2866078) (not e!4220712))))

(declare-datatypes ((List!67732 0))(
  ( (Nil!67608) (Cons!67608 (h!74056 C!35062) (t!381487 List!67732)) )
))
(declare-fun s!7408 () List!67732)

(assert (=> b!7021401 (= res!2866078 (not (is-Cons!67608 s!7408)))))

(declare-fun b!7021402 () Bool)

(declare-fun e!4220716 () Bool)

(declare-fun tp_is_empty!44017 () Bool)

(declare-fun tp!1934175 () Bool)

(assert (=> b!7021402 (= e!4220716 (and tp_is_empty!44017 tp!1934175))))

(declare-fun setRes!48729 () Bool)

(declare-fun setNonEmpty!48729 () Bool)

(declare-fun setElem!48729 () Context!12784)

(declare-fun tp!1934178 () Bool)

(declare-fun inv!86350 (Context!12784) Bool)

(assert (=> setNonEmpty!48729 (= setRes!48729 (and tp!1934178 (inv!86350 setElem!48729) e!4220715))))

(declare-fun z1!570 () (Set Context!12784))

(declare-fun setRest!48729 () (Set Context!12784))

(assert (=> setNonEmpty!48729 (= z1!570 (set.union (set.insert setElem!48729 (as set.empty (Set Context!12784))) setRest!48729))))

(declare-fun b!7021396 () Bool)

(declare-fun ct2!306 () Context!12784)

(assert (=> b!7021396 (= e!4220713 (not (forall!16301 (exprs!6892 ct2!306) lambda!411521)))))

(declare-fun res!2866081 () Bool)

(assert (=> start!677232 (=> (not res!2866081) (not e!4220712))))

(declare-fun lt!2512157 () (Set Context!12784))

(declare-fun matchZipper!2936 ((Set Context!12784) List!67732) Bool)

(assert (=> start!677232 (= res!2866081 (matchZipper!2936 lt!2512157 s!7408))))

(declare-fun appendTo!517 ((Set Context!12784) Context!12784) (Set Context!12784))

(assert (=> start!677232 (= lt!2512157 (appendTo!517 z1!570 ct2!306))))

(assert (=> start!677232 e!4220712))

(assert (=> start!677232 (and (inv!86350 c!161) e!4220711)))

(declare-fun condSetEmpty!48729 () Bool)

(assert (=> start!677232 (= condSetEmpty!48729 (= z1!570 (as set.empty (Set Context!12784))))))

(assert (=> start!677232 setRes!48729))

(assert (=> start!677232 e!4220716))

(assert (=> start!677232 (and (inv!86350 ct2!306) e!4220714)))

(declare-fun setIsEmpty!48729 () Bool)

(assert (=> setIsEmpty!48729 setRes!48729))

(declare-fun b!7021403 () Bool)

(declare-fun res!2866080 () Bool)

(assert (=> b!7021403 (=> (not res!2866080) (not e!4220712))))

(declare-fun lambda!411520 () Int)

(declare-fun nullableContext!56 (Context!12784) Bool)

(declare-fun getWitness!1366 ((Set Context!12784) Int) Context!12784)

(assert (=> b!7021403 (= res!2866080 (nullableContext!56 (getWitness!1366 lt!2512157 lambda!411520)))))

(declare-fun b!7021404 () Bool)

(declare-fun res!2866079 () Bool)

(assert (=> b!7021404 (=> (not res!2866079) (not e!4220712))))

(declare-fun nullableZipper!2525 ((Set Context!12784)) Bool)

(assert (=> b!7021404 (= res!2866079 (nullableZipper!2525 lt!2512157))))

(declare-fun b!7021405 () Bool)

(declare-fun res!2866076 () Bool)

(assert (=> b!7021405 (=> (not res!2866076) (not e!4220712))))

(declare-fun exists!3284 ((Set Context!12784) Int) Bool)

(assert (=> b!7021405 (= res!2866076 (exists!3284 lt!2512157 lambda!411520))))

(assert (= (and start!677232 res!2866081) b!7021401))

(assert (= (and b!7021401 res!2866078) b!7021404))

(assert (= (and b!7021404 res!2866079) b!7021405))

(assert (= (and b!7021405 res!2866076) b!7021403))

(assert (= (and b!7021403 res!2866080) b!7021398))

(assert (= (and b!7021398 res!2866077) b!7021396))

(assert (= start!677232 b!7021399))

(assert (= (and start!677232 condSetEmpty!48729) setIsEmpty!48729))

(assert (= (and start!677232 (not condSetEmpty!48729)) setNonEmpty!48729))

(assert (= setNonEmpty!48729 b!7021400))

(assert (= (and start!677232 (is-Cons!67608 s!7408)) b!7021402))

(assert (= start!677232 b!7021397))

(declare-fun m!7723304 () Bool)

(assert (=> b!7021404 m!7723304))

(declare-fun m!7723306 () Bool)

(assert (=> b!7021398 m!7723306))

(declare-fun m!7723308 () Bool)

(assert (=> setNonEmpty!48729 m!7723308))

(declare-fun m!7723310 () Bool)

(assert (=> b!7021405 m!7723310))

(declare-fun m!7723312 () Bool)

(assert (=> start!677232 m!7723312))

(declare-fun m!7723314 () Bool)

(assert (=> start!677232 m!7723314))

(declare-fun m!7723316 () Bool)

(assert (=> start!677232 m!7723316))

(declare-fun m!7723318 () Bool)

(assert (=> start!677232 m!7723318))

(declare-fun m!7723320 () Bool)

(assert (=> b!7021403 m!7723320))

(assert (=> b!7021403 m!7723320))

(declare-fun m!7723322 () Bool)

(assert (=> b!7021403 m!7723322))

(declare-fun m!7723324 () Bool)

(assert (=> b!7021396 m!7723324))

(push 1)

(assert (not b!7021397))

(assert (not b!7021398))

(assert (not setNonEmpty!48729))

(assert (not b!7021403))

(assert (not b!7021405))

(assert (not b!7021400))

(assert tp_is_empty!44017)

(assert (not b!7021396))

(assert (not b!7021404))

(assert (not b!7021402))

(assert (not start!677232))

(assert (not b!7021399))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!1867633 () Bool)

(declare-fun d!2188624 () Bool)

(assert (= bs!1867633 (and d!2188624 b!7021398)))

(declare-fun lambda!411532 () Int)

(assert (=> bs!1867633 (= lambda!411532 lambda!411521)))

(assert (=> d!2188624 (= (inv!86350 setElem!48729) (forall!16301 (exprs!6892 setElem!48729) lambda!411532))))

(declare-fun bs!1867634 () Bool)

(assert (= bs!1867634 d!2188624))

(declare-fun m!7723348 () Bool)

(assert (=> bs!1867634 m!7723348))

(assert (=> setNonEmpty!48729 d!2188624))

(declare-fun d!2188628 () Bool)

(declare-fun res!2866108 () Bool)

(declare-fun e!4220743 () Bool)

(assert (=> d!2188628 (=> res!2866108 e!4220743)))

(assert (=> d!2188628 (= res!2866108 (is-Nil!67607 (exprs!6892 c!161)))))

(assert (=> d!2188628 (= (forall!16301 (exprs!6892 c!161) lambda!411521) e!4220743)))

(declare-fun b!7021444 () Bool)

(declare-fun e!4220744 () Bool)

(assert (=> b!7021444 (= e!4220743 e!4220744)))

(declare-fun res!2866109 () Bool)

(assert (=> b!7021444 (=> (not res!2866109) (not e!4220744))))

(declare-fun dynLambda!27235 (Int Regex!17396) Bool)

(assert (=> b!7021444 (= res!2866109 (dynLambda!27235 lambda!411521 (h!74055 (exprs!6892 c!161))))))

(declare-fun b!7021445 () Bool)

(assert (=> b!7021445 (= e!4220744 (forall!16301 (t!381486 (exprs!6892 c!161)) lambda!411521))))

(assert (= (and d!2188628 (not res!2866108)) b!7021444))

(assert (= (and b!7021444 res!2866109) b!7021445))

(declare-fun b_lambda!265107 () Bool)

(assert (=> (not b_lambda!265107) (not b!7021444)))

(declare-fun m!7723350 () Bool)

(assert (=> b!7021444 m!7723350))

(declare-fun m!7723352 () Bool)

(assert (=> b!7021445 m!7723352))

(assert (=> b!7021398 d!2188628))

(declare-fun d!2188630 () Bool)

(declare-fun res!2866110 () Bool)

(declare-fun e!4220745 () Bool)

(assert (=> d!2188630 (=> res!2866110 e!4220745)))

(assert (=> d!2188630 (= res!2866110 (is-Nil!67607 (exprs!6892 ct2!306)))))

(assert (=> d!2188630 (= (forall!16301 (exprs!6892 ct2!306) lambda!411521) e!4220745)))

(declare-fun b!7021446 () Bool)

(declare-fun e!4220746 () Bool)

(assert (=> b!7021446 (= e!4220745 e!4220746)))

(declare-fun res!2866111 () Bool)

(assert (=> b!7021446 (=> (not res!2866111) (not e!4220746))))

(assert (=> b!7021446 (= res!2866111 (dynLambda!27235 lambda!411521 (h!74055 (exprs!6892 ct2!306))))))

(declare-fun b!7021447 () Bool)

(assert (=> b!7021447 (= e!4220746 (forall!16301 (t!381486 (exprs!6892 ct2!306)) lambda!411521))))

(assert (= (and d!2188630 (not res!2866110)) b!7021446))

(assert (= (and b!7021446 res!2866111) b!7021447))

(declare-fun b_lambda!265109 () Bool)

(assert (=> (not b_lambda!265109) (not b!7021446)))

(declare-fun m!7723354 () Bool)

(assert (=> b!7021446 m!7723354))

(declare-fun m!7723356 () Bool)

(assert (=> b!7021447 m!7723356))

(assert (=> b!7021396 d!2188630))

(declare-fun d!2188632 () Bool)

(declare-fun lt!2512163 () Bool)

(declare-datatypes ((List!67735 0))(
  ( (Nil!67611) (Cons!67611 (h!74059 Context!12784) (t!381490 List!67735)) )
))
(declare-fun exists!3286 (List!67735 Int) Bool)

(declare-fun toList!10754 ((Set Context!12784)) List!67735)

(assert (=> d!2188632 (= lt!2512163 (exists!3286 (toList!10754 lt!2512157) lambda!411520))))

(declare-fun choose!52974 ((Set Context!12784) Int) Bool)

(assert (=> d!2188632 (= lt!2512163 (choose!52974 lt!2512157 lambda!411520))))

(assert (=> d!2188632 (= (exists!3284 lt!2512157 lambda!411520) lt!2512163)))

(declare-fun bs!1867635 () Bool)

(assert (= bs!1867635 d!2188632))

(declare-fun m!7723366 () Bool)

(assert (=> bs!1867635 m!7723366))

(assert (=> bs!1867635 m!7723366))

(declare-fun m!7723368 () Bool)

(assert (=> bs!1867635 m!7723368))

(declare-fun m!7723370 () Bool)

(assert (=> bs!1867635 m!7723370))

(assert (=> b!7021405 d!2188632))

(declare-fun bs!1867636 () Bool)

(declare-fun d!2188638 () Bool)

(assert (= bs!1867636 (and d!2188638 b!7021398)))

(declare-fun lambda!411535 () Int)

(assert (=> bs!1867636 (not (= lambda!411535 lambda!411521))))

(declare-fun bs!1867637 () Bool)

(assert (= bs!1867637 (and d!2188638 d!2188624)))

(assert (=> bs!1867637 (not (= lambda!411535 lambda!411532))))

(assert (=> d!2188638 (= (nullableContext!56 (getWitness!1366 lt!2512157 lambda!411520)) (forall!16301 (exprs!6892 (getWitness!1366 lt!2512157 lambda!411520)) lambda!411535))))

(declare-fun bs!1867638 () Bool)

(assert (= bs!1867638 d!2188638))

(declare-fun m!7723372 () Bool)

(assert (=> bs!1867638 m!7723372))

(assert (=> b!7021403 d!2188638))

(declare-fun d!2188640 () Bool)

(declare-fun e!4220753 () Bool)

(assert (=> d!2188640 e!4220753))

(declare-fun res!2866118 () Bool)

(assert (=> d!2188640 (=> (not res!2866118) (not e!4220753))))

(declare-fun lt!2512169 () Context!12784)

(declare-fun dynLambda!27236 (Int Context!12784) Bool)

(assert (=> d!2188640 (= res!2866118 (dynLambda!27236 lambda!411520 lt!2512169))))

(declare-fun getWitness!1368 (List!67735 Int) Context!12784)

(assert (=> d!2188640 (= lt!2512169 (getWitness!1368 (toList!10754 lt!2512157) lambda!411520))))

(assert (=> d!2188640 (exists!3284 lt!2512157 lambda!411520)))

(assert (=> d!2188640 (= (getWitness!1366 lt!2512157 lambda!411520) lt!2512169)))

(declare-fun b!7021454 () Bool)

(assert (=> b!7021454 (= e!4220753 (set.member lt!2512169 lt!2512157))))

(assert (= (and d!2188640 res!2866118) b!7021454))

(declare-fun b_lambda!265115 () Bool)

(assert (=> (not b_lambda!265115) (not d!2188640)))

(declare-fun m!7723380 () Bool)

(assert (=> d!2188640 m!7723380))

(assert (=> d!2188640 m!7723366))

(assert (=> d!2188640 m!7723366))

(declare-fun m!7723382 () Bool)

(assert (=> d!2188640 m!7723382))

(assert (=> d!2188640 m!7723310))

(declare-fun m!7723384 () Bool)

(assert (=> b!7021454 m!7723384))

(assert (=> b!7021403 d!2188640))

(declare-fun d!2188644 () Bool)

(declare-fun c!1304938 () Bool)

(declare-fun isEmpty!39459 (List!67732) Bool)

(assert (=> d!2188644 (= c!1304938 (isEmpty!39459 s!7408))))

(declare-fun e!4220756 () Bool)

(assert (=> d!2188644 (= (matchZipper!2936 lt!2512157 s!7408) e!4220756)))

(declare-fun b!7021459 () Bool)

(assert (=> b!7021459 (= e!4220756 (nullableZipper!2525 lt!2512157))))

(declare-fun b!7021460 () Bool)

(declare-fun derivationStepZipper!2871 ((Set Context!12784) C!35062) (Set Context!12784))

(declare-fun head!14212 (List!67732) C!35062)

(declare-fun tail!13481 (List!67732) List!67732)

(assert (=> b!7021460 (= e!4220756 (matchZipper!2936 (derivationStepZipper!2871 lt!2512157 (head!14212 s!7408)) (tail!13481 s!7408)))))

(assert (= (and d!2188644 c!1304938) b!7021459))

(assert (= (and d!2188644 (not c!1304938)) b!7021460))

(declare-fun m!7723388 () Bool)

(assert (=> d!2188644 m!7723388))

(assert (=> b!7021459 m!7723304))

(declare-fun m!7723390 () Bool)

(assert (=> b!7021460 m!7723390))

(assert (=> b!7021460 m!7723390))

(declare-fun m!7723392 () Bool)

(assert (=> b!7021460 m!7723392))

(declare-fun m!7723394 () Bool)

(assert (=> b!7021460 m!7723394))

(assert (=> b!7021460 m!7723392))

(assert (=> b!7021460 m!7723394))

(declare-fun m!7723396 () Bool)

(assert (=> b!7021460 m!7723396))

(assert (=> start!677232 d!2188644))

(declare-fun d!2188648 () Bool)

(assert (=> d!2188648 true))

(declare-fun lambda!411546 () Int)

(declare-fun map!15684 ((Set Context!12784) Int) (Set Context!12784))

(assert (=> d!2188648 (= (appendTo!517 z1!570 ct2!306) (map!15684 z1!570 lambda!411546))))

(declare-fun bs!1867644 () Bool)

(assert (= bs!1867644 d!2188648))

(declare-fun m!7723400 () Bool)

(assert (=> bs!1867644 m!7723400))

(assert (=> start!677232 d!2188648))

(declare-fun bs!1867645 () Bool)

(declare-fun d!2188652 () Bool)

(assert (= bs!1867645 (and d!2188652 b!7021398)))

(declare-fun lambda!411547 () Int)

(assert (=> bs!1867645 (= lambda!411547 lambda!411521)))

(declare-fun bs!1867646 () Bool)

(assert (= bs!1867646 (and d!2188652 d!2188624)))

(assert (=> bs!1867646 (= lambda!411547 lambda!411532)))

(declare-fun bs!1867647 () Bool)

(assert (= bs!1867647 (and d!2188652 d!2188638)))

(assert (=> bs!1867647 (not (= lambda!411547 lambda!411535))))

(assert (=> d!2188652 (= (inv!86350 c!161) (forall!16301 (exprs!6892 c!161) lambda!411547))))

(declare-fun bs!1867648 () Bool)

(assert (= bs!1867648 d!2188652))

(declare-fun m!7723402 () Bool)

(assert (=> bs!1867648 m!7723402))

(assert (=> start!677232 d!2188652))

(declare-fun bs!1867649 () Bool)

(declare-fun d!2188654 () Bool)

(assert (= bs!1867649 (and d!2188654 b!7021398)))

(declare-fun lambda!411548 () Int)

(assert (=> bs!1867649 (= lambda!411548 lambda!411521)))

(declare-fun bs!1867650 () Bool)

(assert (= bs!1867650 (and d!2188654 d!2188624)))

(assert (=> bs!1867650 (= lambda!411548 lambda!411532)))

(declare-fun bs!1867651 () Bool)

(assert (= bs!1867651 (and d!2188654 d!2188638)))

(assert (=> bs!1867651 (not (= lambda!411548 lambda!411535))))

(declare-fun bs!1867652 () Bool)

(assert (= bs!1867652 (and d!2188654 d!2188652)))

(assert (=> bs!1867652 (= lambda!411548 lambda!411547)))

(assert (=> d!2188654 (= (inv!86350 ct2!306) (forall!16301 (exprs!6892 ct2!306) lambda!411548))))

(declare-fun bs!1867653 () Bool)

(assert (= bs!1867653 d!2188654))

(declare-fun m!7723404 () Bool)

(assert (=> bs!1867653 m!7723404))

(assert (=> start!677232 d!2188654))

(declare-fun bs!1867654 () Bool)

(declare-fun d!2188656 () Bool)

(assert (= bs!1867654 (and d!2188656 b!7021405)))

(declare-fun lambda!411551 () Int)

(assert (=> bs!1867654 (= lambda!411551 lambda!411520)))

(assert (=> d!2188656 (= (nullableZipper!2525 lt!2512157) (exists!3284 lt!2512157 lambda!411551))))

(declare-fun bs!1867655 () Bool)

(assert (= bs!1867655 d!2188656))

(declare-fun m!7723406 () Bool)

(assert (=> bs!1867655 m!7723406))

(assert (=> b!7021404 d!2188656))

(declare-fun b!7021470 () Bool)

(declare-fun e!4220762 () Bool)

(declare-fun tp!1934198 () Bool)

(declare-fun tp!1934199 () Bool)

(assert (=> b!7021470 (= e!4220762 (and tp!1934198 tp!1934199))))

(assert (=> b!7021399 (= tp!1934176 e!4220762)))

(assert (= (and b!7021399 (is-Cons!67607 (exprs!6892 c!161))) b!7021470))

(declare-fun b!7021471 () Bool)

(declare-fun e!4220763 () Bool)

(declare-fun tp!1934200 () Bool)

(declare-fun tp!1934201 () Bool)

(assert (=> b!7021471 (= e!4220763 (and tp!1934200 tp!1934201))))

(assert (=> b!7021397 (= tp!1934177 e!4220763)))

(assert (= (and b!7021397 (is-Cons!67607 (exprs!6892 ct2!306))) b!7021471))

(declare-fun condSetEmpty!48735 () Bool)

(assert (=> setNonEmpty!48729 (= condSetEmpty!48735 (= setRest!48729 (as set.empty (Set Context!12784))))))

(declare-fun setRes!48735 () Bool)

(assert (=> setNonEmpty!48729 (= tp!1934178 setRes!48735)))

(declare-fun setIsEmpty!48735 () Bool)

(assert (=> setIsEmpty!48735 setRes!48735))

(declare-fun setElem!48735 () Context!12784)

(declare-fun tp!1934207 () Bool)

(declare-fun e!4220766 () Bool)

(declare-fun setNonEmpty!48735 () Bool)

(assert (=> setNonEmpty!48735 (= setRes!48735 (and tp!1934207 (inv!86350 setElem!48735) e!4220766))))

(declare-fun setRest!48735 () (Set Context!12784))

(assert (=> setNonEmpty!48735 (= setRest!48729 (set.union (set.insert setElem!48735 (as set.empty (Set Context!12784))) setRest!48735))))

(declare-fun b!7021476 () Bool)

(declare-fun tp!1934206 () Bool)

(assert (=> b!7021476 (= e!4220766 tp!1934206)))

(assert (= (and setNonEmpty!48729 condSetEmpty!48735) setIsEmpty!48735))

(assert (= (and setNonEmpty!48729 (not condSetEmpty!48735)) setNonEmpty!48735))

(assert (= setNonEmpty!48735 b!7021476))

(declare-fun m!7723414 () Bool)

(assert (=> setNonEmpty!48735 m!7723414))

(declare-fun b!7021481 () Bool)

(declare-fun e!4220769 () Bool)

(declare-fun tp!1934210 () Bool)

(assert (=> b!7021481 (= e!4220769 (and tp_is_empty!44017 tp!1934210))))

(assert (=> b!7021402 (= tp!1934175 e!4220769)))

(assert (= (and b!7021402 (is-Cons!67608 (t!381487 s!7408))) b!7021481))

(declare-fun b!7021482 () Bool)

(declare-fun e!4220770 () Bool)

(declare-fun tp!1934211 () Bool)

(declare-fun tp!1934212 () Bool)

(assert (=> b!7021482 (= e!4220770 (and tp!1934211 tp!1934212))))

(assert (=> b!7021400 (= tp!1934174 e!4220770)))

(assert (= (and b!7021400 (is-Cons!67607 (exprs!6892 setElem!48729))) b!7021482))

(declare-fun b_lambda!265119 () Bool)

(assert (= b_lambda!265115 (or b!7021405 b_lambda!265119)))

(declare-fun bs!1867656 () Bool)

(declare-fun d!2188660 () Bool)

(assert (= bs!1867656 (and d!2188660 b!7021405)))

(assert (=> bs!1867656 (= (dynLambda!27236 lambda!411520 lt!2512169) (nullableContext!56 lt!2512169))))

(declare-fun m!7723416 () Bool)

(assert (=> bs!1867656 m!7723416))

(assert (=> d!2188640 d!2188660))

(declare-fun b_lambda!265121 () Bool)

(assert (= b_lambda!265109 (or b!7021398 b_lambda!265121)))

(declare-fun bs!1867657 () Bool)

(declare-fun d!2188662 () Bool)

(assert (= bs!1867657 (and d!2188662 b!7021398)))

(declare-fun validRegex!8918 (Regex!17396) Bool)

(assert (=> bs!1867657 (= (dynLambda!27235 lambda!411521 (h!74055 (exprs!6892 ct2!306))) (validRegex!8918 (h!74055 (exprs!6892 ct2!306))))))

(declare-fun m!7723418 () Bool)

(assert (=> bs!1867657 m!7723418))

(assert (=> b!7021446 d!2188662))

(declare-fun b_lambda!265123 () Bool)

(assert (= b_lambda!265107 (or b!7021398 b_lambda!265123)))

(declare-fun bs!1867658 () Bool)

(declare-fun d!2188664 () Bool)

(assert (= bs!1867658 (and d!2188664 b!7021398)))

(assert (=> bs!1867658 (= (dynLambda!27235 lambda!411521 (h!74055 (exprs!6892 c!161))) (validRegex!8918 (h!74055 (exprs!6892 c!161))))))

(declare-fun m!7723420 () Bool)

(assert (=> bs!1867658 m!7723420))

(assert (=> b!7021444 d!2188664))

(push 1)

(assert (not bs!1867657))

(assert (not setNonEmpty!48735))

(assert (not b!7021445))

(assert (not b!7021459))

(assert (not d!2188656))

(assert (not d!2188648))

(assert (not b_lambda!265121))

(assert (not d!2188644))

(assert (not b!7021481))

(assert (not d!2188632))

(assert (not b!7021476))

(assert (not b!7021482))

(assert (not b!7021460))

(assert (not d!2188654))

(assert (not d!2188624))

(assert (not b_lambda!265123))

(assert (not d!2188640))

(assert (not b_lambda!265119))

(assert (not b!7021447))

(assert (not b!7021470))

(assert tp_is_empty!44017)

(assert (not d!2188638))

(assert (not bs!1867658))

(assert (not d!2188652))

(assert (not b!7021471))

(assert (not bs!1867656))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

