; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!549040 () Bool)

(assert start!549040)

(declare-fun b!5184536 () Bool)

(declare-fun res!2202328 () Bool)

(declare-fun e!3229948 () Bool)

(assert (=> b!5184536 (=> res!2202328 e!3229948)))

(declare-datatypes ((C!29666 0))(
  ( (C!29667 (val!24535 Int)) )
))
(declare-datatypes ((Regex!14698 0))(
  ( (ElementMatch!14698 (c!893483 C!29666)) (Concat!23543 (regOne!29908 Regex!14698) (regTwo!29908 Regex!14698)) (EmptyExpr!14698) (Star!14698 (reg!15027 Regex!14698)) (EmptyLang!14698) (Union!14698 (regOne!29909 Regex!14698) (regTwo!29909 Regex!14698)) )
))
(declare-fun r!7292 () Regex!14698)

(declare-datatypes ((List!60393 0))(
  ( (Nil!60269) (Cons!60269 (h!66717 Regex!14698) (t!373546 List!60393)) )
))
(declare-datatypes ((Context!8164 0))(
  ( (Context!8165 (exprs!4582 List!60393)) )
))
(declare-datatypes ((List!60394 0))(
  ( (Nil!60270) (Cons!60270 (h!66718 Context!8164) (t!373547 List!60394)) )
))
(declare-fun zl!343 () List!60394)

(declare-fun generalisedConcat!367 (List!60393) Regex!14698)

(assert (=> b!5184536 (= res!2202328 (not (= r!7292 (generalisedConcat!367 (exprs!4582 (h!66718 zl!343))))))))

(declare-fun setIsEmpty!32641 () Bool)

(declare-fun setRes!32641 () Bool)

(assert (=> setIsEmpty!32641 setRes!32641))

(declare-fun b!5184537 () Bool)

(declare-fun res!2202326 () Bool)

(assert (=> b!5184537 (=> res!2202326 e!3229948)))

(declare-fun generalisedUnion!627 (List!60393) Regex!14698)

(declare-fun unfocusZipperList!140 (List!60394) List!60393)

(assert (=> b!5184537 (= res!2202326 (not (= r!7292 (generalisedUnion!627 (unfocusZipperList!140 zl!343)))))))

(declare-fun b!5184538 () Bool)

(declare-fun e!3229944 () Bool)

(declare-fun tp_is_empty!38649 () Bool)

(assert (=> b!5184538 (= e!3229944 tp_is_empty!38649)))

(declare-fun b!5184539 () Bool)

(declare-fun res!2202327 () Bool)

(declare-fun e!3229950 () Bool)

(assert (=> b!5184539 (=> (not res!2202327) (not e!3229950))))

(declare-fun unfocusZipper!440 (List!60394) Regex!14698)

(assert (=> b!5184539 (= res!2202327 (= r!7292 (unfocusZipper!440 zl!343)))))

(declare-fun b!5184540 () Bool)

(assert (=> b!5184540 (= e!3229950 (not e!3229948))))

(declare-fun res!2202331 () Bool)

(assert (=> b!5184540 (=> res!2202331 e!3229948)))

(assert (=> b!5184540 (= res!2202331 (not (is-Cons!60270 zl!343)))))

(declare-datatypes ((List!60395 0))(
  ( (Nil!60271) (Cons!60271 (h!66719 C!29666) (t!373548 List!60395)) )
))
(declare-fun s!2326 () List!60395)

(declare-fun matchR!6883 (Regex!14698 List!60395) Bool)

(declare-fun matchRSpec!1801 (Regex!14698 List!60395) Bool)

(assert (=> b!5184540 (= (matchR!6883 r!7292 s!2326) (matchRSpec!1801 r!7292 s!2326))))

(declare-datatypes ((Unit!152230 0))(
  ( (Unit!152231) )
))
(declare-fun lt!2136302 () Unit!152230)

(declare-fun mainMatchTheorem!1801 (Regex!14698 List!60395) Unit!152230)

(assert (=> b!5184540 (= lt!2136302 (mainMatchTheorem!1801 r!7292 s!2326))))

(declare-fun b!5184541 () Bool)

(declare-fun e!3229949 () Bool)

(declare-fun tp!1454550 () Bool)

(assert (=> b!5184541 (= e!3229949 tp!1454550)))

(declare-fun b!5184543 () Bool)

(declare-fun tp!1454547 () Bool)

(assert (=> b!5184543 (= e!3229944 tp!1454547)))

(declare-fun b!5184544 () Bool)

(declare-fun tp!1454555 () Bool)

(declare-fun tp!1454551 () Bool)

(assert (=> b!5184544 (= e!3229944 (and tp!1454555 tp!1454551))))

(declare-fun b!5184545 () Bool)

(declare-fun res!2202330 () Bool)

(assert (=> b!5184545 (=> res!2202330 e!3229948)))

(assert (=> b!5184545 (= res!2202330 (or (is-EmptyExpr!14698 r!7292) (is-EmptyLang!14698 r!7292) (is-ElementMatch!14698 r!7292) (not (is-Union!14698 r!7292))))))

(declare-fun b!5184546 () Bool)

(declare-fun e!3229947 () Bool)

(declare-fun tp!1454548 () Bool)

(assert (=> b!5184546 (= e!3229947 (and tp_is_empty!38649 tp!1454548))))

(declare-fun b!5184547 () Bool)

(assert (=> b!5184547 (= e!3229948 true)))

(assert (=> b!5184547 (= (matchR!6883 (regTwo!29909 r!7292) s!2326) (matchRSpec!1801 (regTwo!29909 r!7292) s!2326))))

(declare-fun lt!2136304 () Unit!152230)

(assert (=> b!5184547 (= lt!2136304 (mainMatchTheorem!1801 (regTwo!29909 r!7292) s!2326))))

(assert (=> b!5184547 (= (matchR!6883 (regOne!29909 r!7292) s!2326) (matchRSpec!1801 (regOne!29909 r!7292) s!2326))))

(declare-fun lt!2136303 () Unit!152230)

(assert (=> b!5184547 (= lt!2136303 (mainMatchTheorem!1801 (regOne!29909 r!7292) s!2326))))

(declare-fun e!3229946 () Bool)

(declare-fun b!5184548 () Bool)

(declare-fun tp!1454553 () Bool)

(declare-fun inv!79993 (Context!8164) Bool)

(assert (=> b!5184548 (= e!3229946 (and (inv!79993 (h!66718 zl!343)) e!3229949 tp!1454553))))

(declare-fun b!5184549 () Bool)

(declare-fun res!2202329 () Bool)

(assert (=> b!5184549 (=> (not res!2202329) (not e!3229950))))

(declare-fun z!1189 () (Set Context!8164))

(declare-fun toList!8482 ((Set Context!8164)) List!60394)

(assert (=> b!5184549 (= res!2202329 (= (toList!8482 z!1189) zl!343))))

(declare-fun b!5184550 () Bool)

(declare-fun e!3229945 () Bool)

(declare-fun tp!1454554 () Bool)

(assert (=> b!5184550 (= e!3229945 tp!1454554)))

(declare-fun tp!1454552 () Bool)

(declare-fun setElem!32641 () Context!8164)

(declare-fun setNonEmpty!32641 () Bool)

(assert (=> setNonEmpty!32641 (= setRes!32641 (and tp!1454552 (inv!79993 setElem!32641) e!3229945))))

(declare-fun setRest!32641 () (Set Context!8164))

(assert (=> setNonEmpty!32641 (= z!1189 (set.union (set.insert setElem!32641 (as set.empty (Set Context!8164))) setRest!32641))))

(declare-fun b!5184551 () Bool)

(declare-fun res!2202333 () Bool)

(assert (=> b!5184551 (=> res!2202333 e!3229948)))

(assert (=> b!5184551 (= res!2202333 (not (is-Cons!60269 (exprs!4582 (h!66718 zl!343)))))))

(declare-fun b!5184552 () Bool)

(declare-fun tp!1454546 () Bool)

(declare-fun tp!1454549 () Bool)

(assert (=> b!5184552 (= e!3229944 (and tp!1454546 tp!1454549))))

(declare-fun res!2202332 () Bool)

(assert (=> start!549040 (=> (not res!2202332) (not e!3229950))))

(declare-fun validRegex!6434 (Regex!14698) Bool)

(assert (=> start!549040 (= res!2202332 (validRegex!6434 r!7292))))

(assert (=> start!549040 e!3229950))

(assert (=> start!549040 e!3229944))

(declare-fun condSetEmpty!32641 () Bool)

(assert (=> start!549040 (= condSetEmpty!32641 (= z!1189 (as set.empty (Set Context!8164))))))

(assert (=> start!549040 setRes!32641))

(assert (=> start!549040 e!3229946))

(assert (=> start!549040 e!3229947))

(declare-fun b!5184542 () Bool)

(declare-fun res!2202325 () Bool)

(assert (=> b!5184542 (=> res!2202325 e!3229948)))

(declare-fun isEmpty!32255 (List!60394) Bool)

(assert (=> b!5184542 (= res!2202325 (not (isEmpty!32255 (t!373547 zl!343))))))

(assert (= (and start!549040 res!2202332) b!5184549))

(assert (= (and b!5184549 res!2202329) b!5184539))

(assert (= (and b!5184539 res!2202327) b!5184540))

(assert (= (and b!5184540 (not res!2202331)) b!5184542))

(assert (= (and b!5184542 (not res!2202325)) b!5184536))

(assert (= (and b!5184536 (not res!2202328)) b!5184551))

(assert (= (and b!5184551 (not res!2202333)) b!5184537))

(assert (= (and b!5184537 (not res!2202326)) b!5184545))

(assert (= (and b!5184545 (not res!2202330)) b!5184547))

(assert (= (and start!549040 (is-ElementMatch!14698 r!7292)) b!5184538))

(assert (= (and start!549040 (is-Concat!23543 r!7292)) b!5184552))

(assert (= (and start!549040 (is-Star!14698 r!7292)) b!5184543))

(assert (= (and start!549040 (is-Union!14698 r!7292)) b!5184544))

(assert (= (and start!549040 condSetEmpty!32641) setIsEmpty!32641))

(assert (= (and start!549040 (not condSetEmpty!32641)) setNonEmpty!32641))

(assert (= setNonEmpty!32641 b!5184550))

(assert (= b!5184548 b!5184541))

(assert (= (and start!549040 (is-Cons!60270 zl!343)) b!5184548))

(assert (= (and start!549040 (is-Cons!60271 s!2326)) b!5184546))

(declare-fun m!6243694 () Bool)

(assert (=> b!5184540 m!6243694))

(declare-fun m!6243696 () Bool)

(assert (=> b!5184540 m!6243696))

(declare-fun m!6243698 () Bool)

(assert (=> b!5184540 m!6243698))

(declare-fun m!6243700 () Bool)

(assert (=> b!5184539 m!6243700))

(declare-fun m!6243702 () Bool)

(assert (=> b!5184549 m!6243702))

(declare-fun m!6243704 () Bool)

(assert (=> start!549040 m!6243704))

(declare-fun m!6243706 () Bool)

(assert (=> b!5184536 m!6243706))

(declare-fun m!6243708 () Bool)

(assert (=> setNonEmpty!32641 m!6243708))

(declare-fun m!6243710 () Bool)

(assert (=> b!5184537 m!6243710))

(assert (=> b!5184537 m!6243710))

(declare-fun m!6243712 () Bool)

(assert (=> b!5184537 m!6243712))

(declare-fun m!6243714 () Bool)

(assert (=> b!5184548 m!6243714))

(declare-fun m!6243716 () Bool)

(assert (=> b!5184547 m!6243716))

(declare-fun m!6243718 () Bool)

(assert (=> b!5184547 m!6243718))

(declare-fun m!6243720 () Bool)

(assert (=> b!5184547 m!6243720))

(declare-fun m!6243722 () Bool)

(assert (=> b!5184547 m!6243722))

(declare-fun m!6243724 () Bool)

(assert (=> b!5184547 m!6243724))

(declare-fun m!6243726 () Bool)

(assert (=> b!5184547 m!6243726))

(declare-fun m!6243728 () Bool)

(assert (=> b!5184542 m!6243728))

(push 1)

(assert (not b!5184540))

(assert (not setNonEmpty!32641))

(assert (not b!5184550))

(assert (not b!5184543))

(assert (not b!5184541))

(assert (not b!5184549))

(assert (not b!5184546))

(assert (not b!5184542))

(assert (not b!5184537))

(assert (not b!5184547))

(assert tp_is_empty!38649)

(assert (not start!549040))

(assert (not b!5184552))

(assert (not b!5184539))

(assert (not b!5184536))

(assert (not b!5184544))

(assert (not b!5184548))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

