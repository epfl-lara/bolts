; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!107932 () Bool)

(assert start!107932)

(declare-fun b!1210538 () Bool)

(declare-fun e!776591 () Bool)

(declare-fun lt!414364 () Int)

(declare-datatypes ((B!1345 0))(
  ( (B!1346 (val!4030 Int)) )
))
(declare-datatypes ((List!12277 0))(
  ( (Nil!12219) (Cons!12219 (h!17620 B!1345) (t!112661 List!12277)) )
))
(declare-fun lt!414360 () List!12277)

(declare-fun size!9743 (List!12277) Int)

(assert (=> b!1210538 (= e!776591 (> lt!414364 (size!9743 lt!414360)))))

(declare-fun lt!414361 () Int)

(assert (=> b!1210538 (< lt!414361 lt!414364)))

(declare-fun lt!414365 () List!12277)

(assert (=> b!1210538 (= lt!414364 (size!9743 lt!414365))))

(declare-fun lt!414359 () List!12277)

(assert (=> b!1210538 (= lt!414361 (size!9743 lt!414359))))

(declare-datatypes ((Unit!18596 0))(
  ( (Unit!18597) )
))
(declare-fun lt!414358 () Unit!18596)

(declare-fun lemmaRemoveElmtContainedSizeSmaller!8 (List!12277 B!1345) Unit!18596)

(assert (=> b!1210538 (= lt!414358 (lemmaRemoveElmtContainedSizeSmaller!8 lt!414365 (h!17620 lt!414365)))))

(declare-fun b!1210539 () Bool)

(declare-fun e!776592 () Bool)

(assert (=> b!1210539 (= e!776592 (not e!776591))))

(declare-fun res!544473 () Bool)

(assert (=> b!1210539 (=> res!544473 e!776591)))

(assert (=> b!1210539 (= res!544473 (or (not (= lt!414365 (Cons!12219 (h!17620 lt!414365) (t!112661 lt!414365)))) (not (= lt!414359 (t!112661 lt!414365))) (not (= (t!112661 lt!414365) lt!414359))))))

(assert (=> b!1210539 (= lt!414359 lt!414360)))

(declare-fun tail!1778 (List!12277) List!12277)

(assert (=> b!1210539 (= lt!414360 (tail!1778 lt!414365))))

(declare-fun -!86 (List!12277 B!1345) List!12277)

(assert (=> b!1210539 (= lt!414359 (-!86 lt!414365 (h!17620 lt!414365)))))

(declare-fun lt!414363 () Unit!18596)

(declare-fun lemmaNoDuplicateMinusHeadSameAsTail!14 (List!12277 B!1345) Unit!18596)

(assert (=> b!1210539 (= lt!414363 (lemmaNoDuplicateMinusHeadSameAsTail!14 lt!414365 (h!17620 lt!414365)))))

(declare-fun b!1210540 () Bool)

(declare-fun res!544468 () Bool)

(assert (=> b!1210540 (=> res!544468 e!776591)))

(declare-fun contains!2037 (List!12277 B!1345) Bool)

(assert (=> b!1210540 (= res!544468 (not (contains!2037 lt!414365 (h!17620 lt!414365))))))

(declare-fun b!1210541 () Bool)

(declare-fun res!544470 () Bool)

(assert (=> b!1210541 (=> (not res!544470) (not e!776592))))

(declare-fun lt!414362 () Bool)

(assert (=> b!1210541 (= res!544470 (not lt!414362))))

(declare-fun setNonEmpty!7954 () Bool)

(declare-fun setRes!7954 () Bool)

(declare-fun tp!342869 () Bool)

(declare-fun tp_is_empty!6203 () Bool)

(assert (=> setNonEmpty!7954 (= setRes!7954 (and tp!342869 tp_is_empty!6203))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun s!1510 () (InoxSet B!1345))

(declare-fun setElem!7954 () B!1345)

(declare-fun setRest!7954 () (InoxSet B!1345))

(assert (=> setNonEmpty!7954 (= s!1510 ((_ map or) (store ((as const (Array B!1345 Bool)) false) setElem!7954 true) setRest!7954))))

(declare-fun res!544472 () Bool)

(declare-fun e!776593 () Bool)

(assert (=> start!107932 (=> (not res!544472) (not e!776593))))

(assert (=> start!107932 (= res!544472 (not (= s!1510 ((as const (Array B!1345 Bool)) false))))))

(assert (=> start!107932 e!776593))

(declare-fun condSetEmpty!7954 () Bool)

(assert (=> start!107932 (= condSetEmpty!7954 (= s!1510 ((as const (Array B!1345 Bool)) false)))))

(assert (=> start!107932 setRes!7954))

(declare-fun setIsEmpty!7954 () Bool)

(assert (=> setIsEmpty!7954 setRes!7954))

(declare-fun b!1210542 () Bool)

(declare-fun e!776590 () Bool)

(declare-fun isEmpty!7303 (List!12277) Bool)

(assert (=> b!1210542 (= e!776590 (not (isEmpty!7303 (t!112661 lt!414365))))))

(declare-fun b!1210543 () Bool)

(assert (=> b!1210543 (= e!776593 e!776592)))

(declare-fun res!544471 () Bool)

(assert (=> b!1210543 (=> (not res!544471) (not e!776592))))

(assert (=> b!1210543 (= res!544471 e!776590)))

(declare-fun res!544469 () Bool)

(assert (=> b!1210543 (=> res!544469 e!776590)))

(assert (=> b!1210543 (= res!544469 lt!414362)))

(get-info :version)

(assert (=> b!1210543 (= lt!414362 (not ((_ is Cons!12219) lt!414365)))))

(declare-fun toList!691 ((InoxSet B!1345)) List!12277)

(assert (=> b!1210543 (= lt!414365 (toList!691 s!1510))))

(assert (= (and start!107932 res!544472) b!1210543))

(assert (= (and b!1210543 (not res!544469)) b!1210542))

(assert (= (and b!1210543 res!544471) b!1210541))

(assert (= (and b!1210541 res!544470) b!1210539))

(assert (= (and b!1210539 (not res!544473)) b!1210540))

(assert (= (and b!1210540 (not res!544468)) b!1210538))

(assert (= (and start!107932 condSetEmpty!7954) setIsEmpty!7954))

(assert (= (and start!107932 (not condSetEmpty!7954)) setNonEmpty!7954))

(declare-fun m!1386443 () Bool)

(assert (=> b!1210540 m!1386443))

(declare-fun m!1386445 () Bool)

(assert (=> b!1210539 m!1386445))

(declare-fun m!1386447 () Bool)

(assert (=> b!1210539 m!1386447))

(declare-fun m!1386449 () Bool)

(assert (=> b!1210539 m!1386449))

(declare-fun m!1386451 () Bool)

(assert (=> b!1210538 m!1386451))

(declare-fun m!1386453 () Bool)

(assert (=> b!1210538 m!1386453))

(declare-fun m!1386455 () Bool)

(assert (=> b!1210538 m!1386455))

(declare-fun m!1386457 () Bool)

(assert (=> b!1210538 m!1386457))

(declare-fun m!1386459 () Bool)

(assert (=> b!1210543 m!1386459))

(declare-fun m!1386461 () Bool)

(assert (=> b!1210542 m!1386461))

(check-sat (not b!1210538) (not b!1210540) (not b!1210543) (not setNonEmpty!7954) (not b!1210542) tp_is_empty!6203 (not b!1210539))
(check-sat)
