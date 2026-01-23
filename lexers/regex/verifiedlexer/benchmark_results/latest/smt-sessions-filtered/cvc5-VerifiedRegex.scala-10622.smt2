; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!545848 () Bool)

(assert start!545848)

(declare-fun b_free!133515 () Bool)

(declare-fun b_next!134305 () Bool)

(assert (=> start!545848 (= b_free!133515 (not b_next!134305))))

(declare-fun tp!1447728 () Bool)

(declare-fun b_and!350471 () Bool)

(assert (=> start!545848 (= tp!1447728 b_and!350471)))

(declare-fun setNonEmpty!31253 () Bool)

(declare-fun setRes!31253 () Bool)

(declare-fun tp!1447729 () Bool)

(declare-fun tp_is_empty!38217 () Bool)

(assert (=> setNonEmpty!31253 (= setRes!31253 (and tp!1447729 tp_is_empty!38217))))

(declare-datatypes ((A!465 0))(
  ( (A!466 (val!24319 Int)) )
))
(declare-fun s2!450 () (Set A!465))

(declare-fun setElem!31253 () A!465)

(declare-fun setRest!31253 () (Set A!465))

(assert (=> setNonEmpty!31253 (= s2!450 (set.union (set.insert setElem!31253 (as set.empty (Set A!465))) setRest!31253))))

(declare-fun setNonEmpty!31254 () Bool)

(declare-fun setRes!31254 () Bool)

(declare-fun tp!1447730 () Bool)

(assert (=> setNonEmpty!31254 (= setRes!31254 (and tp!1447730 tp_is_empty!38217))))

(declare-fun s1!479 () (Set A!465))

(declare-fun setElem!31254 () A!465)

(declare-fun setRest!31254 () (Set A!465))

(assert (=> setNonEmpty!31254 (= s1!479 (set.union (set.insert setElem!31254 (as set.empty (Set A!465))) setRest!31254))))

(declare-fun setIsEmpty!31253 () Bool)

(assert (=> setIsEmpty!31253 setRes!31253))

(declare-fun res!2194531 () Bool)

(declare-fun e!3216331 () Bool)

(assert (=> start!545848 (=> (not res!2194531) (not e!3216331))))

(declare-fun p!1744 () Int)

(declare-fun forall!14032 ((Set A!465) Int) Bool)

(assert (=> start!545848 (= res!2194531 (forall!14032 s1!479 p!1744))))

(assert (=> start!545848 e!3216331))

(declare-fun condSetEmpty!31254 () Bool)

(assert (=> start!545848 (= condSetEmpty!31254 (= s1!479 (as set.empty (Set A!465))))))

(assert (=> start!545848 setRes!31254))

(assert (=> start!545848 tp!1447728))

(declare-fun condSetEmpty!31253 () Bool)

(assert (=> start!545848 (= condSetEmpty!31253 (= s2!450 (as set.empty (Set A!465))))))

(assert (=> start!545848 setRes!31253))

(declare-fun b!5162138 () Bool)

(declare-datatypes ((List!59985 0))(
  ( (Nil!59861) (Cons!59861 (h!66309 A!465) (t!373058 List!59985)) )
))
(declare-fun lt!2122324 () List!59985)

(declare-fun forall!14033 (List!59985 Int) Bool)

(assert (=> b!5162138 (= e!3216331 (not (forall!14033 lt!2122324 p!1744)))))

(declare-fun lt!2122325 () List!59985)

(declare-fun toList!8414 ((Set A!465)) List!59985)

(assert (=> b!5162138 (= lt!2122325 (toList!8414 s2!450))))

(assert (=> b!5162138 (= lt!2122324 (toList!8414 s1!479))))

(declare-fun setIsEmpty!31254 () Bool)

(assert (=> setIsEmpty!31254 setRes!31254))

(declare-fun b!5162139 () Bool)

(declare-fun res!2194532 () Bool)

(assert (=> b!5162139 (=> (not res!2194532) (not e!3216331))))

(assert (=> b!5162139 (= res!2194532 (forall!14032 s2!450 p!1744))))

(assert (= (and start!545848 res!2194531) b!5162139))

(assert (= (and b!5162139 res!2194532) b!5162138))

(assert (= (and start!545848 condSetEmpty!31254) setIsEmpty!31254))

(assert (= (and start!545848 (not condSetEmpty!31254)) setNonEmpty!31254))

(assert (= (and start!545848 condSetEmpty!31253) setIsEmpty!31253))

(assert (= (and start!545848 (not condSetEmpty!31253)) setNonEmpty!31253))

(declare-fun m!6212556 () Bool)

(assert (=> start!545848 m!6212556))

(declare-fun m!6212558 () Bool)

(assert (=> b!5162138 m!6212558))

(declare-fun m!6212560 () Bool)

(assert (=> b!5162138 m!6212560))

(declare-fun m!6212562 () Bool)

(assert (=> b!5162138 m!6212562))

(declare-fun m!6212564 () Bool)

(assert (=> b!5162139 m!6212564))

(push 1)

(assert (not start!545848))

(assert tp_is_empty!38217)

(assert (not setNonEmpty!31253))

(assert (not b_next!134305))

(assert b_and!350471)

(assert (not setNonEmpty!31254))

(assert (not b!5162139))

(assert (not b!5162138))

(check-sat)

(pop 1)

(push 1)

(assert b_and!350471)

(assert (not b_next!134305))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1665775 () Bool)

(declare-fun lt!2122334 () Bool)

(assert (=> d!1665775 (= lt!2122334 (forall!14033 (toList!8414 s2!450) p!1744))))

(declare-fun choose!38143 ((Set A!465) Int) Bool)

(assert (=> d!1665775 (= lt!2122334 (choose!38143 s2!450 p!1744))))

(assert (=> d!1665775 (= (forall!14032 s2!450 p!1744) lt!2122334)))

(declare-fun bs!1202617 () Bool)

(assert (= bs!1202617 d!1665775))

(assert (=> bs!1202617 m!6212560))

(assert (=> bs!1202617 m!6212560))

(declare-fun m!6212576 () Bool)

(assert (=> bs!1202617 m!6212576))

(declare-fun m!6212578 () Bool)

(assert (=> bs!1202617 m!6212578))

(assert (=> b!5162139 d!1665775))

(declare-fun d!1665777 () Bool)

(declare-fun res!2194543 () Bool)

(declare-fun e!3216339 () Bool)

(assert (=> d!1665777 (=> res!2194543 e!3216339)))

(assert (=> d!1665777 (= res!2194543 (is-Nil!59861 lt!2122324))))

(assert (=> d!1665777 (= (forall!14033 lt!2122324 p!1744) e!3216339)))

(declare-fun b!5162150 () Bool)

(declare-fun e!3216340 () Bool)

(assert (=> b!5162150 (= e!3216339 e!3216340)))

(declare-fun res!2194544 () Bool)

(assert (=> b!5162150 (=> (not res!2194544) (not e!3216340))))

(declare-fun dynLambda!23825 (Int A!465) Bool)

(assert (=> b!5162150 (= res!2194544 (dynLambda!23825 p!1744 (h!66309 lt!2122324)))))

(declare-fun b!5162151 () Bool)

(assert (=> b!5162151 (= e!3216340 (forall!14033 (t!373058 lt!2122324) p!1744))))

(assert (= (and d!1665777 (not res!2194543)) b!5162150))

(assert (= (and b!5162150 res!2194544) b!5162151))

(declare-fun b_lambda!200589 () Bool)

(assert (=> (not b_lambda!200589) (not b!5162150)))

(declare-fun t!373061 () Bool)

(declare-fun tb!261873 () Bool)

(assert (=> (and start!545848 (= p!1744 p!1744) t!373061) tb!261873))

(declare-fun result!330320 () Bool)

(assert (=> tb!261873 (= result!330320 true)))

(assert (=> b!5162150 t!373061))

(declare-fun b_and!350475 () Bool)

(assert (= b_and!350471 (and (=> t!373061 result!330320) b_and!350475)))

(declare-fun m!6212580 () Bool)

(assert (=> b!5162150 m!6212580))

(declare-fun m!6212582 () Bool)

(assert (=> b!5162151 m!6212582))

(assert (=> b!5162138 d!1665777))

(declare-fun d!1665779 () Bool)

(declare-fun e!3216343 () Bool)

(assert (=> d!1665779 e!3216343))

(declare-fun res!2194547 () Bool)

(assert (=> d!1665779 (=> (not res!2194547) (not e!3216343))))

(declare-fun lt!2122337 () List!59985)

(declare-fun noDuplicate!1119 (List!59985) Bool)

(assert (=> d!1665779 (= res!2194547 (noDuplicate!1119 lt!2122337))))

(declare-fun choose!38144 ((Set A!465)) List!59985)

(assert (=> d!1665779 (= lt!2122337 (choose!38144 s2!450))))

(assert (=> d!1665779 (= (toList!8414 s2!450) lt!2122337)))

(declare-fun b!5162154 () Bool)

(declare-fun content!10596 (List!59985) (Set A!465))

(assert (=> b!5162154 (= e!3216343 (= (content!10596 lt!2122337) s2!450))))

(assert (= (and d!1665779 res!2194547) b!5162154))

(declare-fun m!6212584 () Bool)

(assert (=> d!1665779 m!6212584))

(declare-fun m!6212586 () Bool)

(assert (=> d!1665779 m!6212586))

(declare-fun m!6212588 () Bool)

(assert (=> b!5162154 m!6212588))

(assert (=> b!5162138 d!1665779))

(declare-fun d!1665783 () Bool)

(declare-fun e!3216348 () Bool)

(assert (=> d!1665783 e!3216348))

(declare-fun res!2194552 () Bool)

(assert (=> d!1665783 (=> (not res!2194552) (not e!3216348))))

(declare-fun lt!2122338 () List!59985)

(assert (=> d!1665783 (= res!2194552 (noDuplicate!1119 lt!2122338))))

(assert (=> d!1665783 (= lt!2122338 (choose!38144 s1!479))))

(assert (=> d!1665783 (= (toList!8414 s1!479) lt!2122338)))

(declare-fun b!5162159 () Bool)

(assert (=> b!5162159 (= e!3216348 (= (content!10596 lt!2122338) s1!479))))

(assert (= (and d!1665783 res!2194552) b!5162159))

(declare-fun m!6212590 () Bool)

(assert (=> d!1665783 m!6212590))

(declare-fun m!6212592 () Bool)

(assert (=> d!1665783 m!6212592))

(declare-fun m!6212594 () Bool)

(assert (=> b!5162159 m!6212594))

(assert (=> b!5162138 d!1665783))

(declare-fun d!1665785 () Bool)

(declare-fun lt!2122339 () Bool)

(assert (=> d!1665785 (= lt!2122339 (forall!14033 (toList!8414 s1!479) p!1744))))

(assert (=> d!1665785 (= lt!2122339 (choose!38143 s1!479 p!1744))))

(assert (=> d!1665785 (= (forall!14032 s1!479 p!1744) lt!2122339)))

(declare-fun bs!1202618 () Bool)

(assert (= bs!1202618 d!1665785))

(assert (=> bs!1202618 m!6212562))

(assert (=> bs!1202618 m!6212562))

(declare-fun m!6212596 () Bool)

(assert (=> bs!1202618 m!6212596))

(declare-fun m!6212598 () Bool)

(assert (=> bs!1202618 m!6212598))

(assert (=> start!545848 d!1665785))

(declare-fun condSetEmpty!31263 () Bool)

(assert (=> setNonEmpty!31253 (= condSetEmpty!31263 (= setRest!31253 (as set.empty (Set A!465))))))

(declare-fun setRes!31263 () Bool)

(assert (=> setNonEmpty!31253 (= tp!1447729 setRes!31263)))

(declare-fun setIsEmpty!31263 () Bool)

(assert (=> setIsEmpty!31263 setRes!31263))

(declare-fun setNonEmpty!31263 () Bool)

(declare-fun tp!1447742 () Bool)

(assert (=> setNonEmpty!31263 (= setRes!31263 (and tp!1447742 tp_is_empty!38217))))

(declare-fun setElem!31263 () A!465)

(declare-fun setRest!31263 () (Set A!465))

(assert (=> setNonEmpty!31263 (= setRest!31253 (set.union (set.insert setElem!31263 (as set.empty (Set A!465))) setRest!31263))))

(assert (= (and setNonEmpty!31253 condSetEmpty!31263) setIsEmpty!31263))

(assert (= (and setNonEmpty!31253 (not condSetEmpty!31263)) setNonEmpty!31263))

(declare-fun condSetEmpty!31264 () Bool)

(assert (=> setNonEmpty!31254 (= condSetEmpty!31264 (= setRest!31254 (as set.empty (Set A!465))))))

(declare-fun setRes!31264 () Bool)

(assert (=> setNonEmpty!31254 (= tp!1447730 setRes!31264)))

(declare-fun setIsEmpty!31264 () Bool)

(assert (=> setIsEmpty!31264 setRes!31264))

(declare-fun setNonEmpty!31264 () Bool)

(declare-fun tp!1447743 () Bool)

(assert (=> setNonEmpty!31264 (= setRes!31264 (and tp!1447743 tp_is_empty!38217))))

(declare-fun setElem!31264 () A!465)

(declare-fun setRest!31264 () (Set A!465))

(assert (=> setNonEmpty!31264 (= setRest!31254 (set.union (set.insert setElem!31264 (as set.empty (Set A!465))) setRest!31264))))

(assert (= (and setNonEmpty!31254 condSetEmpty!31264) setIsEmpty!31264))

(assert (= (and setNonEmpty!31254 (not condSetEmpty!31264)) setNonEmpty!31264))

(declare-fun b_lambda!200591 () Bool)

(assert (= b_lambda!200589 (or (and start!545848 b_free!133515) b_lambda!200591)))

(push 1)

(assert (not b_lambda!200591))

(assert (not b_next!134305))

(assert (not setNonEmpty!31264))

(assert (not b!5162151))

(assert (not d!1665783))

(assert b_and!350475)

(assert (not b!5162159))

(assert (not b!5162154))

(assert (not d!1665775))

(assert (not d!1665779))

(assert (not setNonEmpty!31263))

(assert tp_is_empty!38217)

(assert (not d!1665785))

(check-sat)

(pop 1)

(push 1)

(assert b_and!350475)

(assert (not b_next!134305))

(check-sat)

(pop 1)

