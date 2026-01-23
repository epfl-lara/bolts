; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!694210 () Bool)

(assert start!694210)

(declare-fun b!7125304 () Bool)

(declare-fun e!4281890 () Bool)

(assert (=> b!7125304 (= e!4281890 false)))

(declare-fun lt!2563065 () Int)

(declare-datatypes ((C!36282 0))(
  ( (C!36283 (val!28067 Int)) )
))
(declare-datatypes ((List!69063 0))(
  ( (Nil!68939) (Cons!68939 (h!75387 C!36282) (t!383040 List!69063)) )
))
(declare-fun s1!1688 () List!69063)

(declare-fun size!41447 (List!69063) Int)

(assert (=> b!7125304 (= lt!2563065 (size!41447 s1!1688))))

(declare-fun b!7125305 () Bool)

(declare-fun e!4281888 () Bool)

(declare-fun tp_is_empty!45613 () Bool)

(declare-fun tp!1962589 () Bool)

(assert (=> b!7125305 (= e!4281888 (and tp_is_empty!45613 tp!1962589))))

(declare-fun b!7125307 () Bool)

(declare-fun res!2907346 () Bool)

(assert (=> b!7125307 (=> (not res!2907346) (not e!4281890))))

(declare-fun s2Rec!140 () List!69063)

(assert (=> b!7125307 (= res!2907346 (is-Nil!68939 s2Rec!140))))

(declare-datatypes ((Regex!18006 0))(
  ( (ElementMatch!18006 (c!1329348 C!36282)) (Concat!26851 (regOne!36524 Regex!18006) (regTwo!36524 Regex!18006)) (EmptyExpr!18006) (Star!18006 (reg!18335 Regex!18006)) (EmptyLang!18006) (Union!18006 (regOne!36525 Regex!18006) (regTwo!36525 Regex!18006)) )
))
(declare-datatypes ((List!69064 0))(
  ( (Nil!68940) (Cons!68940 (h!75388 Regex!18006) (t!383041 List!69064)) )
))
(declare-datatypes ((Context!14000 0))(
  ( (Context!14001 (exprs!7500 List!69064)) )
))
(declare-fun setElem!51600 () Context!14000)

(declare-fun setNonEmpty!51600 () Bool)

(declare-fun e!4281889 () Bool)

(declare-fun tp!1962588 () Bool)

(declare-fun setRes!51601 () Bool)

(declare-fun inv!88044 (Context!14000) Bool)

(assert (=> setNonEmpty!51600 (= setRes!51601 (and tp!1962588 (inv!88044 setElem!51600) e!4281889))))

(declare-fun z2!471 () (Set Context!14000))

(declare-fun setRest!51600 () (Set Context!14000))

(assert (=> setNonEmpty!51600 (= z2!471 (set.union (set.insert setElem!51600 (as set.empty (Set Context!14000))) setRest!51600))))

(declare-fun b!7125308 () Bool)

(declare-fun res!2907347 () Bool)

(assert (=> b!7125308 (=> (not res!2907347) (not e!4281890))))

(declare-fun s1Rec!140 () List!69063)

(declare-fun s!7390 () List!69063)

(declare-fun ++!16144 (List!69063 List!69063) List!69063)

(assert (=> b!7125308 (= res!2907347 (= (++!16144 s1Rec!140 s2Rec!140) s!7390))))

(declare-fun b!7125309 () Bool)

(declare-fun res!2907349 () Bool)

(assert (=> b!7125309 (=> (not res!2907349) (not e!4281890))))

(declare-fun e!4281887 () Bool)

(assert (=> b!7125309 (= res!2907349 e!4281887)))

(declare-fun res!2907344 () Bool)

(assert (=> b!7125309 (=> res!2907344 e!4281887)))

(declare-fun z1!552 () (Set Context!14000))

(declare-fun matchZipper!3262 ((Set Context!14000) List!69063) Bool)

(assert (=> b!7125309 (= res!2907344 (not (matchZipper!3262 z1!552 s1Rec!140)))))

(declare-fun b!7125310 () Bool)

(declare-fun e!4281886 () Bool)

(declare-fun tp!1962590 () Bool)

(assert (=> b!7125310 (= e!4281886 (and tp_is_empty!45613 tp!1962590))))

(declare-fun b!7125311 () Bool)

(declare-fun e!4281894 () Bool)

(declare-fun tp!1962596 () Bool)

(assert (=> b!7125311 (= e!4281894 tp!1962596)))

(declare-fun b!7125312 () Bool)

(declare-fun res!2907350 () Bool)

(assert (=> b!7125312 (=> (not res!2907350) (not e!4281890))))

(declare-fun s2!1620 () List!69063)

(assert (=> b!7125312 (= res!2907350 (= (++!16144 s1!1688 s2!1620) s!7390))))

(declare-fun res!2907348 () Bool)

(assert (=> start!694210 (=> (not res!2907348) (not e!4281890))))

(assert (=> start!694210 (= res!2907348 (matchZipper!3262 z1!552 s1!1688))))

(assert (=> start!694210 e!4281890))

(declare-fun e!4281891 () Bool)

(assert (=> start!694210 e!4281891))

(declare-fun condSetEmpty!51600 () Bool)

(assert (=> start!694210 (= condSetEmpty!51600 (= z1!552 (as set.empty (Set Context!14000))))))

(declare-fun setRes!51600 () Bool)

(assert (=> start!694210 setRes!51600))

(declare-fun e!4281892 () Bool)

(assert (=> start!694210 e!4281892))

(declare-fun condSetEmpty!51601 () Bool)

(assert (=> start!694210 (= condSetEmpty!51601 (= z2!471 (as set.empty (Set Context!14000))))))

(assert (=> start!694210 setRes!51601))

(assert (=> start!694210 e!4281888))

(declare-fun e!4281893 () Bool)

(assert (=> start!694210 e!4281893))

(assert (=> start!694210 e!4281886))

(declare-fun b!7125306 () Bool)

(assert (=> b!7125306 (= e!4281887 (not (matchZipper!3262 z2!471 s2Rec!140)))))

(declare-fun b!7125313 () Bool)

(declare-fun tp!1962592 () Bool)

(assert (=> b!7125313 (= e!4281889 tp!1962592)))

(declare-fun setIsEmpty!51600 () Bool)

(assert (=> setIsEmpty!51600 setRes!51601))

(declare-fun setElem!51601 () Context!14000)

(declare-fun setNonEmpty!51601 () Bool)

(declare-fun tp!1962593 () Bool)

(assert (=> setNonEmpty!51601 (= setRes!51600 (and tp!1962593 (inv!88044 setElem!51601) e!4281894))))

(declare-fun setRest!51601 () (Set Context!14000))

(assert (=> setNonEmpty!51601 (= z1!552 (set.union (set.insert setElem!51601 (as set.empty (Set Context!14000))) setRest!51601))))

(declare-fun b!7125314 () Bool)

(declare-fun res!2907342 () Bool)

(assert (=> b!7125314 (=> (not res!2907342) (not e!4281890))))

(declare-fun isPrefix!5875 (List!69063 List!69063) Bool)

(assert (=> b!7125314 (= res!2907342 (isPrefix!5875 s1Rec!140 s1!1688))))

(declare-fun b!7125315 () Bool)

(declare-fun res!2907343 () Bool)

(assert (=> b!7125315 (=> (not res!2907343) (not e!4281890))))

(assert (=> b!7125315 (= res!2907343 (= (size!41447 s1Rec!140) (size!41447 s!7390)))))

(declare-fun setIsEmpty!51601 () Bool)

(assert (=> setIsEmpty!51601 setRes!51600))

(declare-fun b!7125316 () Bool)

(declare-fun tp!1962591 () Bool)

(assert (=> b!7125316 (= e!4281893 (and tp_is_empty!45613 tp!1962591))))

(declare-fun b!7125317 () Bool)

(declare-fun tp!1962595 () Bool)

(assert (=> b!7125317 (= e!4281891 (and tp_is_empty!45613 tp!1962595))))

(declare-fun b!7125318 () Bool)

(declare-fun tp!1962594 () Bool)

(assert (=> b!7125318 (= e!4281892 (and tp_is_empty!45613 tp!1962594))))

(declare-fun b!7125319 () Bool)

(declare-fun res!2907345 () Bool)

(assert (=> b!7125319 (=> (not res!2907345) (not e!4281890))))

(assert (=> b!7125319 (= res!2907345 (matchZipper!3262 z2!471 s2!1620))))

(assert (= (and start!694210 res!2907348) b!7125319))

(assert (= (and b!7125319 res!2907345) b!7125312))

(assert (= (and b!7125312 res!2907350) b!7125314))

(assert (= (and b!7125314 res!2907342) b!7125308))

(assert (= (and b!7125308 res!2907347) b!7125309))

(assert (= (and b!7125309 (not res!2907344)) b!7125306))

(assert (= (and b!7125309 res!2907349) b!7125307))

(assert (= (and b!7125307 res!2907346) b!7125315))

(assert (= (and b!7125315 res!2907343) b!7125304))

(assert (= (and start!694210 (is-Cons!68939 s1Rec!140)) b!7125317))

(assert (= (and start!694210 condSetEmpty!51600) setIsEmpty!51601))

(assert (= (and start!694210 (not condSetEmpty!51600)) setNonEmpty!51601))

(assert (= setNonEmpty!51601 b!7125311))

(assert (= (and start!694210 (is-Cons!68939 s2Rec!140)) b!7125318))

(assert (= (and start!694210 condSetEmpty!51601) setIsEmpty!51600))

(assert (= (and start!694210 (not condSetEmpty!51601)) setNonEmpty!51600))

(assert (= setNonEmpty!51600 b!7125313))

(assert (= (and start!694210 (is-Cons!68939 s2!1620)) b!7125305))

(assert (= (and start!694210 (is-Cons!68939 s1!1688)) b!7125316))

(assert (= (and start!694210 (is-Cons!68939 s!7390)) b!7125310))

(declare-fun m!7842480 () Bool)

(assert (=> b!7125312 m!7842480))

(declare-fun m!7842482 () Bool)

(assert (=> b!7125309 m!7842482))

(declare-fun m!7842484 () Bool)

(assert (=> start!694210 m!7842484))

(declare-fun m!7842486 () Bool)

(assert (=> b!7125314 m!7842486))

(declare-fun m!7842488 () Bool)

(assert (=> b!7125306 m!7842488))

(declare-fun m!7842490 () Bool)

(assert (=> b!7125308 m!7842490))

(declare-fun m!7842492 () Bool)

(assert (=> b!7125319 m!7842492))

(declare-fun m!7842494 () Bool)

(assert (=> setNonEmpty!51601 m!7842494))

(declare-fun m!7842496 () Bool)

(assert (=> b!7125315 m!7842496))

(declare-fun m!7842498 () Bool)

(assert (=> b!7125315 m!7842498))

(declare-fun m!7842500 () Bool)

(assert (=> setNonEmpty!51600 m!7842500))

(declare-fun m!7842502 () Bool)

(assert (=> b!7125304 m!7842502))

(push 1)

(assert (not b!7125308))

(assert (not b!7125313))

(assert (not b!7125304))

(assert (not b!7125305))

(assert (not b!7125317))

(assert (not setNonEmpty!51601))

(assert (not b!7125319))

(assert (not b!7125315))

(assert (not b!7125309))

(assert (not b!7125310))

(assert (not b!7125312))

(assert tp_is_empty!45613)

(assert (not b!7125318))

(assert (not setNonEmpty!51600))

(assert (not b!7125316))

(assert (not b!7125311))

(assert (not b!7125306))

(assert (not start!694210))

(assert (not b!7125314))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

