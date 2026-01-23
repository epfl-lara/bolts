; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!212314 () Bool)

(assert start!212314)

(declare-fun res!940277 () Bool)

(declare-fun e!1398591 () Bool)

(assert (=> start!212314 (=> (not res!940277) (not e!1398591))))

(declare-datatypes ((C!12256 0))(
  ( (C!12257 (val!7114 Int)) )
))
(declare-datatypes ((Regex!6055 0))(
  ( (ElementMatch!6055 (c!348158 C!12256)) (Concat!10357 (regOne!12622 Regex!6055) (regTwo!12622 Regex!6055)) (EmptyExpr!6055) (Star!6055 (reg!6384 Regex!6055)) (EmptyLang!6055) (Union!6055 (regOne!12623 Regex!6055) (regTwo!12623 Regex!6055)) )
))
(declare-fun r!12534 () Regex!6055)

(declare-fun validRegex!2331 (Regex!6055) Bool)

(assert (=> start!212314 (= res!940277 (validRegex!2331 r!12534))))

(assert (=> start!212314 e!1398591))

(declare-fun e!1398580 () Bool)

(assert (=> start!212314 e!1398580))

(declare-datatypes ((List!25378 0))(
  ( (Nil!25294) (Cons!25294 (h!30695 C!12256) (t!197976 List!25378)) )
))
(declare-datatypes ((IArray!16387 0))(
  ( (IArray!16388 (innerList!8251 List!25378)) )
))
(declare-datatypes ((Conc!8191 0))(
  ( (Node!8191 (left!19413 Conc!8191) (right!19743 Conc!8191) (csize!16612 Int) (cheight!8402 Int)) (Leaf!11986 (xs!11133 IArray!16387) (csize!16613 Int)) (Empty!8191) )
))
(declare-datatypes ((BalanceConc!16144 0))(
  ( (BalanceConc!16145 (c!348159 Conc!8191)) )
))
(declare-fun totalInput!977 () BalanceConc!16144)

(declare-fun e!1398590 () Bool)

(declare-fun inv!33642 (BalanceConc!16144) Bool)

(assert (=> start!212314 (and (inv!33642 totalInput!977) e!1398590)))

(declare-fun input!5540 () BalanceConc!16144)

(declare-fun e!1398589 () Bool)

(assert (=> start!212314 (and (inv!33642 input!5540) e!1398589)))

(declare-fun condSetEmpty!18384 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!25379 0))(
  ( (Nil!25295) (Cons!25295 (h!30696 Regex!6055) (t!197977 List!25379)) )
))
(declare-datatypes ((Context!3250 0))(
  ( (Context!3251 (exprs!2125 List!25379)) )
))
(declare-fun z!4055 () (InoxSet Context!3250))

(assert (=> start!212314 (= condSetEmpty!18384 (= z!4055 ((as const (Array Context!3250 Bool)) false)))))

(declare-fun setRes!18384 () Bool)

(assert (=> start!212314 setRes!18384))

(declare-fun b!2188661 () Bool)

(declare-fun tp!682391 () Bool)

(declare-fun tp!682395 () Bool)

(assert (=> b!2188661 (= e!1398580 (and tp!682391 tp!682395))))

(declare-fun b!2188662 () Bool)

(declare-fun e!1398592 () Int)

(declare-fun lt!817328 () Int)

(assert (=> b!2188662 (= e!1398592 (- lt!817328 1))))

(declare-fun b!2188663 () Bool)

(declare-fun e!1398586 () Bool)

(declare-fun e!1398583 () Bool)

(assert (=> b!2188663 (= e!1398586 e!1398583)))

(declare-fun res!940278 () Bool)

(assert (=> b!2188663 (=> res!940278 e!1398583)))

(declare-fun lt!817326 () Int)

(declare-fun lt!817339 () Int)

(assert (=> b!2188663 (= res!940278 (or (> lt!817326 lt!817339) (> lt!817339 lt!817326)))))

(declare-datatypes ((tuple2!25106 0))(
  ( (tuple2!25107 (_1!14923 BalanceConc!16144) (_2!14923 BalanceConc!16144)) )
))
(declare-fun lt!817343 () tuple2!25106)

(declare-fun size!19764 (BalanceConc!16144) Int)

(assert (=> b!2188663 (= lt!817339 (size!19764 (_1!14923 lt!817343)))))

(declare-datatypes ((tuple2!25108 0))(
  ( (tuple2!25109 (_1!14924 List!25378) (_2!14924 List!25378)) )
))
(declare-fun lt!817325 () tuple2!25108)

(declare-fun size!19765 (List!25378) Int)

(assert (=> b!2188663 (= lt!817326 (size!19765 (_1!14924 lt!817325)))))

(declare-fun lt!817334 () List!25378)

(declare-fun lt!817327 () Bool)

(declare-fun matchR!2804 (Regex!6055 List!25378) Bool)

(assert (=> b!2188663 (= (matchR!2804 r!12534 lt!817334) lt!817327)))

(declare-datatypes ((Unit!38435 0))(
  ( (Unit!38436) )
))
(declare-fun lt!817345 () Unit!38435)

(declare-datatypes ((List!25380 0))(
  ( (Nil!25296) (Cons!25296 (h!30697 Context!3250) (t!197978 List!25380)) )
))
(declare-fun lt!817331 () List!25380)

(declare-fun theoremZipperRegexEquiv!81 ((InoxSet Context!3250) List!25380 Regex!6055 List!25378) Unit!38435)

(assert (=> b!2188663 (= lt!817345 (theoremZipperRegexEquiv!81 z!4055 lt!817331 r!12534 lt!817334))))

(declare-fun lt!817335 () Bool)

(declare-fun matchZipper!171 ((InoxSet Context!3250) List!25378) Bool)

(assert (=> b!2188663 (= lt!817335 (matchZipper!171 z!4055 (_1!14924 lt!817325)))))

(declare-fun lt!817336 () Unit!38435)

(assert (=> b!2188663 (= lt!817336 (theoremZipperRegexEquiv!81 z!4055 lt!817331 r!12534 (_1!14924 lt!817325)))))

(declare-fun b!2188664 () Bool)

(declare-fun e!1398595 () Bool)

(declare-fun isEmpty!14547 (BalanceConc!16144) Bool)

(assert (=> b!2188664 (= e!1398595 (not (isEmpty!14547 (_1!14923 lt!817343))))))

(declare-fun b!2188665 () Bool)

(declare-fun e!1398579 () Bool)

(declare-fun lt!817342 () tuple2!25108)

(assert (=> b!2188665 (= e!1398579 (matchR!2804 r!12534 (_1!14924 lt!817342)))))

(declare-fun b!2188666 () Bool)

(declare-fun res!940280 () Bool)

(assert (=> b!2188666 (=> res!940280 e!1398583)))

(declare-fun lt!817337 () List!25378)

(declare-fun isPrefix!2171 (List!25378 List!25378) Bool)

(assert (=> b!2188666 (= res!940280 (not (isPrefix!2171 lt!817334 lt!817337)))))

(declare-fun setIsEmpty!18384 () Bool)

(assert (=> setIsEmpty!18384 setRes!18384))

(declare-fun b!2188667 () Bool)

(declare-fun e!1398581 () Bool)

(assert (=> b!2188667 (= e!1398581 e!1398586)))

(declare-fun res!940287 () Bool)

(assert (=> b!2188667 (=> res!940287 e!1398586)))

(declare-fun e!1398585 () Bool)

(assert (=> b!2188667 (= res!940287 e!1398585)))

(declare-fun res!940279 () Bool)

(assert (=> b!2188667 (=> (not res!940279) (not e!1398585))))

(assert (=> b!2188667 (= res!940279 (not lt!817335))))

(assert (=> b!2188667 (= lt!817335 (matchR!2804 r!12534 (_1!14924 lt!817325)))))

(declare-fun b!2188668 () Bool)

(declare-fun isEmpty!14548 (List!25378) Bool)

(assert (=> b!2188668 (= e!1398585 (not (isEmpty!14548 (_1!14924 lt!817325))))))

(declare-fun b!2188669 () Bool)

(declare-fun e!1398594 () Bool)

(assert (=> b!2188669 (= e!1398591 e!1398594)))

(declare-fun res!940281 () Bool)

(assert (=> b!2188669 (=> (not res!940281) (not e!1398594))))

(declare-fun unfocusZipper!162 (List!25380) Regex!6055)

(assert (=> b!2188669 (= res!940281 (= (unfocusZipper!162 lt!817331) r!12534))))

(declare-fun toList!1238 ((InoxSet Context!3250)) List!25380)

(assert (=> b!2188669 (= lt!817331 (toList!1238 z!4055))))

(declare-fun b!2188670 () Bool)

(declare-fun e!1398584 () Bool)

(declare-fun tp!682392 () Bool)

(assert (=> b!2188670 (= e!1398584 tp!682392)))

(declare-fun b!2188671 () Bool)

(declare-fun tp!682397 () Bool)

(declare-fun inv!33643 (Conc!8191) Bool)

(assert (=> b!2188671 (= e!1398590 (and (inv!33643 (c!348159 totalInput!977)) tp!682397))))

(declare-fun b!2188672 () Bool)

(declare-fun e!1398588 () Bool)

(declare-fun e!1398582 () Bool)

(assert (=> b!2188672 (= e!1398588 e!1398582)))

(declare-fun res!940274 () Bool)

(assert (=> b!2188672 (=> (not res!940274) (not e!1398582))))

(declare-fun lt!817322 () List!25378)

(assert (=> b!2188672 (= res!940274 (= lt!817322 lt!817337))))

(declare-fun ++!6416 (List!25378 List!25378) List!25378)

(assert (=> b!2188672 (= lt!817322 (++!6416 (_1!14924 lt!817325) (_2!14924 lt!817325)))))

(declare-fun b!2188673 () Bool)

(assert (=> b!2188673 (= e!1398582 (not e!1398581))))

(declare-fun res!940285 () Bool)

(assert (=> b!2188673 (=> res!940285 e!1398581)))

(assert (=> b!2188673 (= res!940285 e!1398595)))

(declare-fun res!940283 () Bool)

(assert (=> b!2188673 (=> (not res!940283) (not e!1398595))))

(assert (=> b!2188673 (= res!940283 (not lt!817327))))

(assert (=> b!2188673 (= lt!817327 (matchZipper!171 z!4055 lt!817334))))

(assert (=> b!2188673 e!1398579))

(declare-fun res!940276 () Bool)

(assert (=> b!2188673 (=> res!940276 e!1398579)))

(assert (=> b!2188673 (= res!940276 (isEmpty!14548 (_1!14924 lt!817342)))))

(declare-fun findLongestMatchInner!680 (Regex!6055 List!25378 Int List!25378 List!25378 Int) tuple2!25108)

(assert (=> b!2188673 (= lt!817342 (findLongestMatchInner!680 r!12534 Nil!25294 (size!19765 Nil!25294) lt!817337 lt!817337 (size!19765 lt!817337)))))

(declare-fun lt!817324 () Unit!38435)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!653 (Regex!6055 List!25378) Unit!38435)

(assert (=> b!2188673 (= lt!817324 (longestMatchIsAcceptedByMatchOrIsEmpty!653 r!12534 lt!817337))))

(declare-fun e!1398587 () Bool)

(assert (=> b!2188673 e!1398587))

(declare-fun res!940275 () Bool)

(assert (=> b!2188673 (=> res!940275 e!1398587)))

(declare-fun lt!817332 () Int)

(assert (=> b!2188673 (= res!940275 (<= lt!817332 0))))

(declare-fun lt!817346 () Int)

(declare-fun lt!817341 () Int)

(declare-fun furthestNullablePosition!237 ((InoxSet Context!3250) Int BalanceConc!16144 Int Int) Int)

(assert (=> b!2188673 (= lt!817332 (+ 1 (- (furthestNullablePosition!237 z!4055 lt!817328 totalInput!977 lt!817341 lt!817346) lt!817328)))))

(declare-fun lt!817333 () Unit!38435)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmptyRecV3!78 ((InoxSet Context!3250) Int BalanceConc!16144 Int) Unit!38435)

(assert (=> b!2188673 (= lt!817333 (longestMatchIsAcceptedByMatchOrIsEmptyRecV3!78 z!4055 lt!817328 totalInput!977 lt!817346))))

(assert (=> b!2188673 (= lt!817346 e!1398592)))

(declare-fun c!348157 () Bool)

(declare-fun nullableZipper!335 ((InoxSet Context!3250)) Bool)

(assert (=> b!2188673 (= c!348157 (nullableZipper!335 z!4055))))

(declare-fun lt!817323 () List!25378)

(declare-fun take!263 (List!25378 Int) List!25378)

(assert (=> b!2188673 (isPrefix!2171 (take!263 lt!817323 lt!817328) lt!817323)))

(declare-fun lt!817330 () Unit!38435)

(declare-fun lemmaTakeIsPrefix!86 (List!25378 Int) Unit!38435)

(assert (=> b!2188673 (= lt!817330 (lemmaTakeIsPrefix!86 lt!817323 lt!817328))))

(assert (=> b!2188673 (isPrefix!2171 (_1!14924 lt!817325) lt!817322)))

(declare-fun lt!817338 () Unit!38435)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1454 (List!25378 List!25378) Unit!38435)

(assert (=> b!2188673 (= lt!817338 (lemmaConcatTwoListThenFirstIsPrefix!1454 (_1!14924 lt!817325) (_2!14924 lt!817325)))))

(declare-fun lt!817344 () List!25378)

(assert (=> b!2188673 (isPrefix!2171 lt!817334 lt!817344)))

(declare-fun lt!817340 () Unit!38435)

(declare-fun lt!817329 () List!25378)

(assert (=> b!2188673 (= lt!817340 (lemmaConcatTwoListThenFirstIsPrefix!1454 lt!817334 lt!817329))))

(declare-fun b!2188674 () Bool)

(declare-fun e!1398593 () Bool)

(assert (=> b!2188674 (= e!1398594 e!1398593)))

(declare-fun res!940284 () Bool)

(assert (=> b!2188674 (=> (not res!940284) (not e!1398593))))

(declare-fun isSuffix!722 (List!25378 List!25378) Bool)

(assert (=> b!2188674 (= res!940284 (isSuffix!722 lt!817337 lt!817323))))

(declare-fun list!9716 (BalanceConc!16144) List!25378)

(assert (=> b!2188674 (= lt!817323 (list!9716 totalInput!977))))

(assert (=> b!2188674 (= lt!817337 (list!9716 input!5540))))

(declare-fun b!2188675 () Bool)

(declare-fun drop!1273 (List!25378 Int) List!25378)

(assert (=> b!2188675 (= e!1398587 (matchZipper!171 z!4055 (take!263 (drop!1273 lt!817323 lt!817328) lt!817332)))))

(declare-fun b!2188676 () Bool)

(declare-fun tp!682393 () Bool)

(assert (=> b!2188676 (= e!1398589 (and (inv!33643 (c!348159 input!5540)) tp!682393))))

(declare-fun b!2188677 () Bool)

(declare-fun tp_is_empty!9717 () Bool)

(assert (=> b!2188677 (= e!1398580 tp_is_empty!9717)))

(declare-fun b!2188678 () Bool)

(assert (=> b!2188678 (= e!1398583 (= (size!19765 lt!817334) lt!817326))))

(declare-fun b!2188679 () Bool)

(declare-fun tp!682396 () Bool)

(declare-fun tp!682390 () Bool)

(assert (=> b!2188679 (= e!1398580 (and tp!682396 tp!682390))))

(declare-fun b!2188680 () Bool)

(assert (=> b!2188680 (= e!1398592 (- 1))))

(declare-fun b!2188681 () Bool)

(assert (=> b!2188681 (= e!1398593 e!1398588)))

(declare-fun res!940286 () Bool)

(assert (=> b!2188681 (=> (not res!940286) (not e!1398588))))

(assert (=> b!2188681 (= res!940286 (= lt!817344 lt!817337))))

(assert (=> b!2188681 (= lt!817344 (++!6416 lt!817334 lt!817329))))

(assert (=> b!2188681 (= lt!817329 (list!9716 (_2!14923 lt!817343)))))

(assert (=> b!2188681 (= lt!817334 (list!9716 (_1!14923 lt!817343)))))

(declare-fun findLongestMatch!609 (Regex!6055 List!25378) tuple2!25108)

(assert (=> b!2188681 (= lt!817325 (findLongestMatch!609 r!12534 lt!817337))))

(assert (=> b!2188681 (= lt!817328 (- lt!817341 (size!19764 input!5540)))))

(assert (=> b!2188681 (= lt!817341 (size!19764 totalInput!977))))

(declare-fun findLongestMatchZipperSequenceV3!104 ((InoxSet Context!3250) BalanceConc!16144 BalanceConc!16144) tuple2!25106)

(assert (=> b!2188681 (= lt!817343 (findLongestMatchZipperSequenceV3!104 z!4055 input!5540 totalInput!977))))

(declare-fun tp!682394 () Bool)

(declare-fun setNonEmpty!18384 () Bool)

(declare-fun setElem!18384 () Context!3250)

(declare-fun inv!33644 (Context!3250) Bool)

(assert (=> setNonEmpty!18384 (= setRes!18384 (and tp!682394 (inv!33644 setElem!18384) e!1398584))))

(declare-fun setRest!18384 () (InoxSet Context!3250))

(assert (=> setNonEmpty!18384 (= z!4055 ((_ map or) (store ((as const (Array Context!3250 Bool)) false) setElem!18384 true) setRest!18384))))

(declare-fun b!2188682 () Bool)

(declare-fun res!940282 () Bool)

(assert (=> b!2188682 (=> res!940282 e!1398583)))

(assert (=> b!2188682 (= res!940282 (not (isPrefix!2171 (_1!14924 lt!817325) lt!817337)))))

(declare-fun b!2188683 () Bool)

(declare-fun tp!682398 () Bool)

(assert (=> b!2188683 (= e!1398580 tp!682398)))

(assert (= (and start!212314 res!940277) b!2188669))

(assert (= (and b!2188669 res!940281) b!2188674))

(assert (= (and b!2188674 res!940284) b!2188681))

(assert (= (and b!2188681 res!940286) b!2188672))

(assert (= (and b!2188672 res!940274) b!2188673))

(assert (= (and b!2188673 c!348157) b!2188662))

(assert (= (and b!2188673 (not c!348157)) b!2188680))

(assert (= (and b!2188673 (not res!940275)) b!2188675))

(assert (= (and b!2188673 (not res!940276)) b!2188665))

(assert (= (and b!2188673 res!940283) b!2188664))

(assert (= (and b!2188673 (not res!940285)) b!2188667))

(assert (= (and b!2188667 res!940279) b!2188668))

(assert (= (and b!2188667 (not res!940287)) b!2188663))

(assert (= (and b!2188663 (not res!940278)) b!2188666))

(assert (= (and b!2188666 (not res!940280)) b!2188682))

(assert (= (and b!2188682 (not res!940282)) b!2188678))

(get-info :version)

(assert (= (and start!212314 ((_ is ElementMatch!6055) r!12534)) b!2188677))

(assert (= (and start!212314 ((_ is Concat!10357) r!12534)) b!2188679))

(assert (= (and start!212314 ((_ is Star!6055) r!12534)) b!2188683))

(assert (= (and start!212314 ((_ is Union!6055) r!12534)) b!2188661))

(assert (= start!212314 b!2188671))

(assert (= start!212314 b!2188676))

(assert (= (and start!212314 condSetEmpty!18384) setIsEmpty!18384))

(assert (= (and start!212314 (not condSetEmpty!18384)) setNonEmpty!18384))

(assert (= setNonEmpty!18384 b!2188670))

(declare-fun m!2631573 () Bool)

(assert (=> b!2188669 m!2631573))

(declare-fun m!2631575 () Bool)

(assert (=> b!2188669 m!2631575))

(declare-fun m!2631577 () Bool)

(assert (=> b!2188666 m!2631577))

(declare-fun m!2631579 () Bool)

(assert (=> b!2188678 m!2631579))

(declare-fun m!2631581 () Bool)

(assert (=> setNonEmpty!18384 m!2631581))

(declare-fun m!2631583 () Bool)

(assert (=> b!2188676 m!2631583))

(declare-fun m!2631585 () Bool)

(assert (=> start!212314 m!2631585))

(declare-fun m!2631587 () Bool)

(assert (=> start!212314 m!2631587))

(declare-fun m!2631589 () Bool)

(assert (=> start!212314 m!2631589))

(declare-fun m!2631591 () Bool)

(assert (=> b!2188673 m!2631591))

(declare-fun m!2631593 () Bool)

(assert (=> b!2188673 m!2631593))

(declare-fun m!2631595 () Bool)

(assert (=> b!2188673 m!2631595))

(declare-fun m!2631597 () Bool)

(assert (=> b!2188673 m!2631597))

(declare-fun m!2631599 () Bool)

(assert (=> b!2188673 m!2631599))

(declare-fun m!2631601 () Bool)

(assert (=> b!2188673 m!2631601))

(declare-fun m!2631603 () Bool)

(assert (=> b!2188673 m!2631603))

(declare-fun m!2631605 () Bool)

(assert (=> b!2188673 m!2631605))

(declare-fun m!2631607 () Bool)

(assert (=> b!2188673 m!2631607))

(declare-fun m!2631609 () Bool)

(assert (=> b!2188673 m!2631609))

(assert (=> b!2188673 m!2631593))

(declare-fun m!2631611 () Bool)

(assert (=> b!2188673 m!2631611))

(declare-fun m!2631613 () Bool)

(assert (=> b!2188673 m!2631613))

(assert (=> b!2188673 m!2631591))

(declare-fun m!2631615 () Bool)

(assert (=> b!2188673 m!2631615))

(declare-fun m!2631617 () Bool)

(assert (=> b!2188673 m!2631617))

(assert (=> b!2188673 m!2631609))

(declare-fun m!2631619 () Bool)

(assert (=> b!2188673 m!2631619))

(declare-fun m!2631621 () Bool)

(assert (=> b!2188673 m!2631621))

(declare-fun m!2631623 () Bool)

(assert (=> b!2188682 m!2631623))

(declare-fun m!2631625 () Bool)

(assert (=> b!2188672 m!2631625))

(declare-fun m!2631627 () Bool)

(assert (=> b!2188674 m!2631627))

(declare-fun m!2631629 () Bool)

(assert (=> b!2188674 m!2631629))

(declare-fun m!2631631 () Bool)

(assert (=> b!2188674 m!2631631))

(declare-fun m!2631633 () Bool)

(assert (=> b!2188664 m!2631633))

(declare-fun m!2631635 () Bool)

(assert (=> b!2188667 m!2631635))

(declare-fun m!2631637 () Bool)

(assert (=> b!2188675 m!2631637))

(assert (=> b!2188675 m!2631637))

(declare-fun m!2631639 () Bool)

(assert (=> b!2188675 m!2631639))

(assert (=> b!2188675 m!2631639))

(declare-fun m!2631641 () Bool)

(assert (=> b!2188675 m!2631641))

(declare-fun m!2631643 () Bool)

(assert (=> b!2188663 m!2631643))

(declare-fun m!2631645 () Bool)

(assert (=> b!2188663 m!2631645))

(declare-fun m!2631647 () Bool)

(assert (=> b!2188663 m!2631647))

(declare-fun m!2631649 () Bool)

(assert (=> b!2188663 m!2631649))

(declare-fun m!2631651 () Bool)

(assert (=> b!2188663 m!2631651))

(declare-fun m!2631653 () Bool)

(assert (=> b!2188663 m!2631653))

(declare-fun m!2631655 () Bool)

(assert (=> b!2188665 m!2631655))

(declare-fun m!2631657 () Bool)

(assert (=> b!2188668 m!2631657))

(declare-fun m!2631659 () Bool)

(assert (=> b!2188681 m!2631659))

(declare-fun m!2631661 () Bool)

(assert (=> b!2188681 m!2631661))

(declare-fun m!2631663 () Bool)

(assert (=> b!2188681 m!2631663))

(declare-fun m!2631665 () Bool)

(assert (=> b!2188681 m!2631665))

(declare-fun m!2631667 () Bool)

(assert (=> b!2188681 m!2631667))

(declare-fun m!2631669 () Bool)

(assert (=> b!2188681 m!2631669))

(declare-fun m!2631671 () Bool)

(assert (=> b!2188681 m!2631671))

(declare-fun m!2631673 () Bool)

(assert (=> b!2188671 m!2631673))

(check-sat (not b!2188671) (not b!2188665) (not b!2188668) tp_is_empty!9717 (not setNonEmpty!18384) (not b!2188672) (not b!2188678) (not b!2188679) (not b!2188683) (not b!2188673) (not b!2188676) (not b!2188661) (not b!2188669) (not b!2188664) (not b!2188682) (not start!212314) (not b!2188681) (not b!2188675) (not b!2188666) (not b!2188670) (not b!2188667) (not b!2188663) (not b!2188674))
(check-sat)
(get-model)

(declare-fun b!2188763 () Bool)

(declare-fun e!1398649 () Bool)

(declare-fun e!1398644 () Bool)

(assert (=> b!2188763 (= e!1398649 e!1398644)))

(declare-fun res!940329 () Bool)

(assert (=> b!2188763 (=> (not res!940329) (not e!1398644))))

(declare-fun lt!817392 () Bool)

(assert (=> b!2188763 (= res!940329 (not lt!817392))))

(declare-fun b!2188764 () Bool)

(declare-fun res!940328 () Bool)

(assert (=> b!2188764 (=> res!940328 e!1398649)))

(declare-fun e!1398645 () Bool)

(assert (=> b!2188764 (= res!940328 e!1398645)))

(declare-fun res!940327 () Bool)

(assert (=> b!2188764 (=> (not res!940327) (not e!1398645))))

(assert (=> b!2188764 (= res!940327 lt!817392)))

(declare-fun b!2188765 () Bool)

(declare-fun head!4674 (List!25378) C!12256)

(assert (=> b!2188765 (= e!1398645 (= (head!4674 (_1!14924 lt!817342)) (c!348158 r!12534)))))

(declare-fun b!2188766 () Bool)

(declare-fun res!940325 () Bool)

(assert (=> b!2188766 (=> res!940325 e!1398649)))

(assert (=> b!2188766 (= res!940325 (not ((_ is ElementMatch!6055) r!12534)))))

(declare-fun e!1398648 () Bool)

(assert (=> b!2188766 (= e!1398648 e!1398649)))

(declare-fun b!2188767 () Bool)

(declare-fun res!940330 () Bool)

(assert (=> b!2188767 (=> (not res!940330) (not e!1398645))))

(declare-fun tail!3146 (List!25378) List!25378)

(assert (=> b!2188767 (= res!940330 (isEmpty!14548 (tail!3146 (_1!14924 lt!817342))))))

(declare-fun b!2188768 () Bool)

(declare-fun e!1398643 () Bool)

(declare-fun derivativeStep!1458 (Regex!6055 C!12256) Regex!6055)

(assert (=> b!2188768 (= e!1398643 (matchR!2804 (derivativeStep!1458 r!12534 (head!4674 (_1!14924 lt!817342))) (tail!3146 (_1!14924 lt!817342))))))

(declare-fun bm!131752 () Bool)

(declare-fun call!131757 () Bool)

(assert (=> bm!131752 (= call!131757 (isEmpty!14548 (_1!14924 lt!817342)))))

(declare-fun b!2188769 () Bool)

(declare-fun e!1398647 () Bool)

(assert (=> b!2188769 (= e!1398647 (= lt!817392 call!131757))))

(declare-fun b!2188770 () Bool)

(declare-fun e!1398646 () Bool)

(assert (=> b!2188770 (= e!1398644 e!1398646)))

(declare-fun res!940331 () Bool)

(assert (=> b!2188770 (=> res!940331 e!1398646)))

(assert (=> b!2188770 (= res!940331 call!131757)))

(declare-fun b!2188772 () Bool)

(declare-fun res!940332 () Bool)

(assert (=> b!2188772 (=> res!940332 e!1398646)))

(assert (=> b!2188772 (= res!940332 (not (isEmpty!14548 (tail!3146 (_1!14924 lt!817342)))))))

(declare-fun b!2188773 () Bool)

(assert (=> b!2188773 (= e!1398646 (not (= (head!4674 (_1!14924 lt!817342)) (c!348158 r!12534))))))

(declare-fun b!2188774 () Bool)

(assert (=> b!2188774 (= e!1398647 e!1398648)))

(declare-fun c!348182 () Bool)

(assert (=> b!2188774 (= c!348182 ((_ is EmptyLang!6055) r!12534))))

(declare-fun b!2188775 () Bool)

(declare-fun nullable!1715 (Regex!6055) Bool)

(assert (=> b!2188775 (= e!1398643 (nullable!1715 r!12534))))

(declare-fun b!2188776 () Bool)

(assert (=> b!2188776 (= e!1398648 (not lt!817392))))

(declare-fun b!2188771 () Bool)

(declare-fun res!940326 () Bool)

(assert (=> b!2188771 (=> (not res!940326) (not e!1398645))))

(assert (=> b!2188771 (= res!940326 (not call!131757))))

(declare-fun d!655963 () Bool)

(assert (=> d!655963 e!1398647))

(declare-fun c!348183 () Bool)

(assert (=> d!655963 (= c!348183 ((_ is EmptyExpr!6055) r!12534))))

(assert (=> d!655963 (= lt!817392 e!1398643)))

(declare-fun c!348181 () Bool)

(assert (=> d!655963 (= c!348181 (isEmpty!14548 (_1!14924 lt!817342)))))

(assert (=> d!655963 (validRegex!2331 r!12534)))

(assert (=> d!655963 (= (matchR!2804 r!12534 (_1!14924 lt!817342)) lt!817392)))

(assert (= (and d!655963 c!348181) b!2188775))

(assert (= (and d!655963 (not c!348181)) b!2188768))

(assert (= (and d!655963 c!348183) b!2188769))

(assert (= (and d!655963 (not c!348183)) b!2188774))

(assert (= (and b!2188774 c!348182) b!2188776))

(assert (= (and b!2188774 (not c!348182)) b!2188766))

(assert (= (and b!2188766 (not res!940325)) b!2188764))

(assert (= (and b!2188764 res!940327) b!2188771))

(assert (= (and b!2188771 res!940326) b!2188767))

(assert (= (and b!2188767 res!940330) b!2188765))

(assert (= (and b!2188764 (not res!940328)) b!2188763))

(assert (= (and b!2188763 res!940329) b!2188770))

(assert (= (and b!2188770 (not res!940331)) b!2188772))

(assert (= (and b!2188772 (not res!940332)) b!2188773))

(assert (= (or b!2188769 b!2188770 b!2188771) bm!131752))

(assert (=> d!655963 m!2631613))

(assert (=> d!655963 m!2631585))

(declare-fun m!2631737 () Bool)

(assert (=> b!2188768 m!2631737))

(assert (=> b!2188768 m!2631737))

(declare-fun m!2631739 () Bool)

(assert (=> b!2188768 m!2631739))

(declare-fun m!2631741 () Bool)

(assert (=> b!2188768 m!2631741))

(assert (=> b!2188768 m!2631739))

(assert (=> b!2188768 m!2631741))

(declare-fun m!2631743 () Bool)

(assert (=> b!2188768 m!2631743))

(assert (=> b!2188772 m!2631741))

(assert (=> b!2188772 m!2631741))

(declare-fun m!2631745 () Bool)

(assert (=> b!2188772 m!2631745))

(assert (=> b!2188765 m!2631737))

(assert (=> b!2188767 m!2631741))

(assert (=> b!2188767 m!2631741))

(assert (=> b!2188767 m!2631745))

(assert (=> b!2188773 m!2631737))

(declare-fun m!2631747 () Bool)

(assert (=> b!2188775 m!2631747))

(assert (=> bm!131752 m!2631613))

(assert (=> b!2188665 d!655963))

(declare-fun b!2188849 () Bool)

(declare-fun res!940374 () Bool)

(declare-fun e!1398693 () Bool)

(assert (=> b!2188849 (=> res!940374 e!1398693)))

(assert (=> b!2188849 (= res!940374 (not ((_ is Concat!10357) r!12534)))))

(declare-fun e!1398696 () Bool)

(assert (=> b!2188849 (= e!1398696 e!1398693)))

(declare-fun b!2188850 () Bool)

(declare-fun res!940373 () Bool)

(declare-fun e!1398698 () Bool)

(assert (=> b!2188850 (=> (not res!940373) (not e!1398698))))

(declare-fun call!131767 () Bool)

(assert (=> b!2188850 (= res!940373 call!131767)))

(assert (=> b!2188850 (= e!1398696 e!1398698)))

(declare-fun bm!131762 () Bool)

(declare-fun call!131768 () Bool)

(declare-fun c!348201 () Bool)

(assert (=> bm!131762 (= call!131768 (validRegex!2331 (ite c!348201 (regTwo!12623 r!12534) (regOne!12622 r!12534))))))

(declare-fun bm!131763 () Bool)

(declare-fun call!131769 () Bool)

(assert (=> bm!131763 (= call!131767 call!131769)))

(declare-fun b!2188851 () Bool)

(declare-fun e!1398694 () Bool)

(declare-fun e!1398695 () Bool)

(assert (=> b!2188851 (= e!1398694 e!1398695)))

(declare-fun res!940375 () Bool)

(assert (=> b!2188851 (= res!940375 (not (nullable!1715 (reg!6384 r!12534))))))

(assert (=> b!2188851 (=> (not res!940375) (not e!1398695))))

(declare-fun d!655981 () Bool)

(declare-fun res!940372 () Bool)

(declare-fun e!1398697 () Bool)

(assert (=> d!655981 (=> res!940372 e!1398697)))

(assert (=> d!655981 (= res!940372 ((_ is ElementMatch!6055) r!12534))))

(assert (=> d!655981 (= (validRegex!2331 r!12534) e!1398697)))

(declare-fun b!2188852 () Bool)

(declare-fun e!1398699 () Bool)

(assert (=> b!2188852 (= e!1398693 e!1398699)))

(declare-fun res!940371 () Bool)

(assert (=> b!2188852 (=> (not res!940371) (not e!1398699))))

(assert (=> b!2188852 (= res!940371 call!131768)))

(declare-fun bm!131764 () Bool)

(declare-fun c!348202 () Bool)

(assert (=> bm!131764 (= call!131769 (validRegex!2331 (ite c!348202 (reg!6384 r!12534) (ite c!348201 (regOne!12623 r!12534) (regTwo!12622 r!12534)))))))

(declare-fun b!2188853 () Bool)

(assert (=> b!2188853 (= e!1398698 call!131768)))

(declare-fun b!2188854 () Bool)

(assert (=> b!2188854 (= e!1398694 e!1398696)))

(assert (=> b!2188854 (= c!348201 ((_ is Union!6055) r!12534))))

(declare-fun b!2188855 () Bool)

(assert (=> b!2188855 (= e!1398697 e!1398694)))

(assert (=> b!2188855 (= c!348202 ((_ is Star!6055) r!12534))))

(declare-fun b!2188856 () Bool)

(assert (=> b!2188856 (= e!1398695 call!131769)))

(declare-fun b!2188857 () Bool)

(assert (=> b!2188857 (= e!1398699 call!131767)))

(assert (= (and d!655981 (not res!940372)) b!2188855))

(assert (= (and b!2188855 c!348202) b!2188851))

(assert (= (and b!2188855 (not c!348202)) b!2188854))

(assert (= (and b!2188851 res!940375) b!2188856))

(assert (= (and b!2188854 c!348201) b!2188850))

(assert (= (and b!2188854 (not c!348201)) b!2188849))

(assert (= (and b!2188850 res!940373) b!2188853))

(assert (= (and b!2188849 (not res!940374)) b!2188852))

(assert (= (and b!2188852 res!940371) b!2188857))

(assert (= (or b!2188853 b!2188852) bm!131762))

(assert (= (or b!2188850 b!2188857) bm!131763))

(assert (= (or b!2188856 bm!131763) bm!131764))

(declare-fun m!2631769 () Bool)

(assert (=> bm!131762 m!2631769))

(declare-fun m!2631771 () Bool)

(assert (=> b!2188851 m!2631771))

(declare-fun m!2631773 () Bool)

(assert (=> bm!131764 m!2631773))

(assert (=> start!212314 d!655981))

(declare-fun d!655989 () Bool)

(declare-fun isBalanced!2548 (Conc!8191) Bool)

(assert (=> d!655989 (= (inv!33642 totalInput!977) (isBalanced!2548 (c!348159 totalInput!977)))))

(declare-fun bs!448286 () Bool)

(assert (= bs!448286 d!655989))

(declare-fun m!2631785 () Bool)

(assert (=> bs!448286 m!2631785))

(assert (=> start!212314 d!655989))

(declare-fun d!655993 () Bool)

(assert (=> d!655993 (= (inv!33642 input!5540) (isBalanced!2548 (c!348159 input!5540)))))

(declare-fun bs!448287 () Bool)

(assert (= bs!448287 d!655993))

(declare-fun m!2631789 () Bool)

(assert (=> bs!448287 m!2631789))

(assert (=> start!212314 d!655993))

(declare-fun d!655997 () Bool)

(declare-fun e!1398714 () Bool)

(assert (=> d!655997 e!1398714))

(declare-fun res!940390 () Bool)

(assert (=> d!655997 (=> res!940390 e!1398714)))

(declare-fun lt!817404 () Bool)

(assert (=> d!655997 (= res!940390 (not lt!817404))))

(assert (=> d!655997 (= lt!817404 (= lt!817337 (drop!1273 lt!817323 (- (size!19765 lt!817323) (size!19765 lt!817337)))))))

(assert (=> d!655997 (= (isSuffix!722 lt!817337 lt!817323) lt!817404)))

(declare-fun b!2188878 () Bool)

(assert (=> b!2188878 (= e!1398714 (>= (size!19765 lt!817323) (size!19765 lt!817337)))))

(assert (= (and d!655997 (not res!940390)) b!2188878))

(declare-fun m!2631791 () Bool)

(assert (=> d!655997 m!2631791))

(assert (=> d!655997 m!2631593))

(declare-fun m!2631793 () Bool)

(assert (=> d!655997 m!2631793))

(assert (=> b!2188878 m!2631791))

(assert (=> b!2188878 m!2631593))

(assert (=> b!2188674 d!655997))

(declare-fun d!655999 () Bool)

(declare-fun list!9718 (Conc!8191) List!25378)

(assert (=> d!655999 (= (list!9716 totalInput!977) (list!9718 (c!348159 totalInput!977)))))

(declare-fun bs!448288 () Bool)

(assert (= bs!448288 d!655999))

(declare-fun m!2631795 () Bool)

(assert (=> bs!448288 m!2631795))

(assert (=> b!2188674 d!655999))

(declare-fun d!656001 () Bool)

(assert (=> d!656001 (= (list!9716 input!5540) (list!9718 (c!348159 input!5540)))))

(declare-fun bs!448289 () Bool)

(assert (= bs!448289 d!656001))

(declare-fun m!2631797 () Bool)

(assert (=> bs!448289 m!2631797))

(assert (=> b!2188674 d!656001))

(declare-fun d!656003 () Bool)

(declare-fun lt!817407 () Bool)

(assert (=> d!656003 (= lt!817407 (isEmpty!14548 (list!9716 (_1!14923 lt!817343))))))

(declare-fun isEmpty!14549 (Conc!8191) Bool)

(assert (=> d!656003 (= lt!817407 (isEmpty!14549 (c!348159 (_1!14923 lt!817343))))))

(assert (=> d!656003 (= (isEmpty!14547 (_1!14923 lt!817343)) lt!817407)))

(declare-fun bs!448290 () Bool)

(assert (= bs!448290 d!656003))

(assert (=> bs!448290 m!2631669))

(assert (=> bs!448290 m!2631669))

(declare-fun m!2631799 () Bool)

(assert (=> bs!448290 m!2631799))

(declare-fun m!2631801 () Bool)

(assert (=> bs!448290 m!2631801))

(assert (=> b!2188664 d!656003))

(declare-fun d!656005 () Bool)

(declare-fun c!348208 () Bool)

(assert (=> d!656005 (= c!348208 ((_ is Node!8191) (c!348159 input!5540)))))

(declare-fun e!1398719 () Bool)

(assert (=> d!656005 (= (inv!33643 (c!348159 input!5540)) e!1398719)))

(declare-fun b!2188885 () Bool)

(declare-fun inv!33647 (Conc!8191) Bool)

(assert (=> b!2188885 (= e!1398719 (inv!33647 (c!348159 input!5540)))))

(declare-fun b!2188886 () Bool)

(declare-fun e!1398720 () Bool)

(assert (=> b!2188886 (= e!1398719 e!1398720)))

(declare-fun res!940393 () Bool)

(assert (=> b!2188886 (= res!940393 (not ((_ is Leaf!11986) (c!348159 input!5540))))))

(assert (=> b!2188886 (=> res!940393 e!1398720)))

(declare-fun b!2188887 () Bool)

(declare-fun inv!33648 (Conc!8191) Bool)

(assert (=> b!2188887 (= e!1398720 (inv!33648 (c!348159 input!5540)))))

(assert (= (and d!656005 c!348208) b!2188885))

(assert (= (and d!656005 (not c!348208)) b!2188886))

(assert (= (and b!2188886 (not res!940393)) b!2188887))

(declare-fun m!2631803 () Bool)

(assert (=> b!2188885 m!2631803))

(declare-fun m!2631805 () Bool)

(assert (=> b!2188887 m!2631805))

(assert (=> b!2188676 d!656005))

(declare-fun b!2188898 () Bool)

(declare-fun e!1398729 () Bool)

(assert (=> b!2188898 (= e!1398729 (isPrefix!2171 (tail!3146 lt!817334) (tail!3146 lt!817337)))))

(declare-fun b!2188899 () Bool)

(declare-fun e!1398728 () Bool)

(assert (=> b!2188899 (= e!1398728 (>= (size!19765 lt!817337) (size!19765 lt!817334)))))

(declare-fun d!656007 () Bool)

(assert (=> d!656007 e!1398728))

(declare-fun res!940402 () Bool)

(assert (=> d!656007 (=> res!940402 e!1398728)))

(declare-fun lt!817410 () Bool)

(assert (=> d!656007 (= res!940402 (not lt!817410))))

(declare-fun e!1398727 () Bool)

(assert (=> d!656007 (= lt!817410 e!1398727)))

(declare-fun res!940403 () Bool)

(assert (=> d!656007 (=> res!940403 e!1398727)))

(assert (=> d!656007 (= res!940403 ((_ is Nil!25294) lt!817334))))

(assert (=> d!656007 (= (isPrefix!2171 lt!817334 lt!817337) lt!817410)))

(declare-fun b!2188896 () Bool)

(assert (=> b!2188896 (= e!1398727 e!1398729)))

(declare-fun res!940404 () Bool)

(assert (=> b!2188896 (=> (not res!940404) (not e!1398729))))

(assert (=> b!2188896 (= res!940404 (not ((_ is Nil!25294) lt!817337)))))

(declare-fun b!2188897 () Bool)

(declare-fun res!940405 () Bool)

(assert (=> b!2188897 (=> (not res!940405) (not e!1398729))))

(assert (=> b!2188897 (= res!940405 (= (head!4674 lt!817334) (head!4674 lt!817337)))))

(assert (= (and d!656007 (not res!940403)) b!2188896))

(assert (= (and b!2188896 res!940404) b!2188897))

(assert (= (and b!2188897 res!940405) b!2188898))

(assert (= (and d!656007 (not res!940402)) b!2188899))

(declare-fun m!2631807 () Bool)

(assert (=> b!2188898 m!2631807))

(declare-fun m!2631809 () Bool)

(assert (=> b!2188898 m!2631809))

(assert (=> b!2188898 m!2631807))

(assert (=> b!2188898 m!2631809))

(declare-fun m!2631811 () Bool)

(assert (=> b!2188898 m!2631811))

(assert (=> b!2188899 m!2631593))

(assert (=> b!2188899 m!2631579))

(declare-fun m!2631813 () Bool)

(assert (=> b!2188897 m!2631813))

(declare-fun m!2631815 () Bool)

(assert (=> b!2188897 m!2631815))

(assert (=> b!2188666 d!656007))

(declare-fun c!348211 () Bool)

(declare-fun d!656009 () Bool)

(assert (=> d!656009 (= c!348211 (isEmpty!14548 (take!263 (drop!1273 lt!817323 lt!817328) lt!817332)))))

(declare-fun e!1398732 () Bool)

(assert (=> d!656009 (= (matchZipper!171 z!4055 (take!263 (drop!1273 lt!817323 lt!817328) lt!817332)) e!1398732)))

(declare-fun b!2188904 () Bool)

(assert (=> b!2188904 (= e!1398732 (nullableZipper!335 z!4055))))

(declare-fun b!2188905 () Bool)

(declare-fun derivationStepZipper!144 ((InoxSet Context!3250) C!12256) (InoxSet Context!3250))

(assert (=> b!2188905 (= e!1398732 (matchZipper!171 (derivationStepZipper!144 z!4055 (head!4674 (take!263 (drop!1273 lt!817323 lt!817328) lt!817332))) (tail!3146 (take!263 (drop!1273 lt!817323 lt!817328) lt!817332))))))

(assert (= (and d!656009 c!348211) b!2188904))

(assert (= (and d!656009 (not c!348211)) b!2188905))

(assert (=> d!656009 m!2631639))

(declare-fun m!2631817 () Bool)

(assert (=> d!656009 m!2631817))

(assert (=> b!2188904 m!2631617))

(assert (=> b!2188905 m!2631639))

(declare-fun m!2631819 () Bool)

(assert (=> b!2188905 m!2631819))

(assert (=> b!2188905 m!2631819))

(declare-fun m!2631821 () Bool)

(assert (=> b!2188905 m!2631821))

(assert (=> b!2188905 m!2631639))

(declare-fun m!2631823 () Bool)

(assert (=> b!2188905 m!2631823))

(assert (=> b!2188905 m!2631821))

(assert (=> b!2188905 m!2631823))

(declare-fun m!2631825 () Bool)

(assert (=> b!2188905 m!2631825))

(assert (=> b!2188675 d!656009))

(declare-fun b!2188920 () Bool)

(declare-fun e!1398744 () List!25378)

(assert (=> b!2188920 (= e!1398744 (Cons!25294 (h!30695 (drop!1273 lt!817323 lt!817328)) (take!263 (t!197976 (drop!1273 lt!817323 lt!817328)) (- lt!817332 1))))))

(declare-fun b!2188921 () Bool)

(declare-fun e!1398743 () Int)

(declare-fun e!1398742 () Int)

(assert (=> b!2188921 (= e!1398743 e!1398742)))

(declare-fun c!348220 () Bool)

(assert (=> b!2188921 (= c!348220 (>= lt!817332 (size!19765 (drop!1273 lt!817323 lt!817328))))))

(declare-fun b!2188922 () Bool)

(declare-fun e!1398741 () Bool)

(declare-fun lt!817413 () List!25378)

(assert (=> b!2188922 (= e!1398741 (= (size!19765 lt!817413) e!1398743))))

(declare-fun c!348219 () Bool)

(assert (=> b!2188922 (= c!348219 (<= lt!817332 0))))

(declare-fun d!656011 () Bool)

(assert (=> d!656011 e!1398741))

(declare-fun res!940408 () Bool)

(assert (=> d!656011 (=> (not res!940408) (not e!1398741))))

(declare-fun content!3456 (List!25378) (InoxSet C!12256))

(assert (=> d!656011 (= res!940408 (= ((_ map implies) (content!3456 lt!817413) (content!3456 (drop!1273 lt!817323 lt!817328))) ((as const (InoxSet C!12256)) true)))))

(assert (=> d!656011 (= lt!817413 e!1398744)))

(declare-fun c!348218 () Bool)

(assert (=> d!656011 (= c!348218 (or ((_ is Nil!25294) (drop!1273 lt!817323 lt!817328)) (<= lt!817332 0)))))

(assert (=> d!656011 (= (take!263 (drop!1273 lt!817323 lt!817328) lt!817332) lt!817413)))

(declare-fun b!2188923 () Bool)

(assert (=> b!2188923 (= e!1398742 lt!817332)))

(declare-fun b!2188924 () Bool)

(assert (=> b!2188924 (= e!1398743 0)))

(declare-fun b!2188925 () Bool)

(assert (=> b!2188925 (= e!1398744 Nil!25294)))

(declare-fun b!2188926 () Bool)

(assert (=> b!2188926 (= e!1398742 (size!19765 (drop!1273 lt!817323 lt!817328)))))

(assert (= (and d!656011 c!348218) b!2188925))

(assert (= (and d!656011 (not c!348218)) b!2188920))

(assert (= (and d!656011 res!940408) b!2188922))

(assert (= (and b!2188922 c!348219) b!2188924))

(assert (= (and b!2188922 (not c!348219)) b!2188921))

(assert (= (and b!2188921 c!348220) b!2188926))

(assert (= (and b!2188921 (not c!348220)) b!2188923))

(declare-fun m!2631827 () Bool)

(assert (=> d!656011 m!2631827))

(assert (=> d!656011 m!2631637))

(declare-fun m!2631829 () Bool)

(assert (=> d!656011 m!2631829))

(declare-fun m!2631831 () Bool)

(assert (=> b!2188922 m!2631831))

(declare-fun m!2631833 () Bool)

(assert (=> b!2188920 m!2631833))

(assert (=> b!2188926 m!2631637))

(declare-fun m!2631835 () Bool)

(assert (=> b!2188926 m!2631835))

(assert (=> b!2188921 m!2631637))

(assert (=> b!2188921 m!2631835))

(assert (=> b!2188675 d!656011))

(declare-fun b!2188945 () Bool)

(declare-fun e!1398757 () Int)

(declare-fun call!131772 () Int)

(assert (=> b!2188945 (= e!1398757 call!131772)))

(declare-fun b!2188946 () Bool)

(declare-fun e!1398759 () Int)

(assert (=> b!2188946 (= e!1398759 0)))

(declare-fun b!2188947 () Bool)

(declare-fun e!1398756 () List!25378)

(assert (=> b!2188947 (= e!1398756 Nil!25294)))

(declare-fun b!2188948 () Bool)

(declare-fun e!1398758 () List!25378)

(assert (=> b!2188948 (= e!1398758 lt!817323)))

(declare-fun d!656013 () Bool)

(declare-fun e!1398755 () Bool)

(assert (=> d!656013 e!1398755))

(declare-fun res!940411 () Bool)

(assert (=> d!656013 (=> (not res!940411) (not e!1398755))))

(declare-fun lt!817416 () List!25378)

(assert (=> d!656013 (= res!940411 (= ((_ map implies) (content!3456 lt!817416) (content!3456 lt!817323)) ((as const (InoxSet C!12256)) true)))))

(assert (=> d!656013 (= lt!817416 e!1398756)))

(declare-fun c!348230 () Bool)

(assert (=> d!656013 (= c!348230 ((_ is Nil!25294) lt!817323))))

(assert (=> d!656013 (= (drop!1273 lt!817323 lt!817328) lt!817416)))

(declare-fun b!2188949 () Bool)

(assert (=> b!2188949 (= e!1398757 e!1398759)))

(declare-fun c!348232 () Bool)

(assert (=> b!2188949 (= c!348232 (>= lt!817328 call!131772))))

(declare-fun b!2188950 () Bool)

(assert (=> b!2188950 (= e!1398756 e!1398758)))

(declare-fun c!348231 () Bool)

(assert (=> b!2188950 (= c!348231 (<= lt!817328 0))))

(declare-fun bm!131767 () Bool)

(assert (=> bm!131767 (= call!131772 (size!19765 lt!817323))))

(declare-fun b!2188951 () Bool)

(assert (=> b!2188951 (= e!1398758 (drop!1273 (t!197976 lt!817323) (- lt!817328 1)))))

(declare-fun b!2188952 () Bool)

(assert (=> b!2188952 (= e!1398755 (= (size!19765 lt!817416) e!1398757))))

(declare-fun c!348229 () Bool)

(assert (=> b!2188952 (= c!348229 (<= lt!817328 0))))

(declare-fun b!2188953 () Bool)

(assert (=> b!2188953 (= e!1398759 (- call!131772 lt!817328))))

(assert (= (and d!656013 c!348230) b!2188947))

(assert (= (and d!656013 (not c!348230)) b!2188950))

(assert (= (and b!2188950 c!348231) b!2188948))

(assert (= (and b!2188950 (not c!348231)) b!2188951))

(assert (= (and d!656013 res!940411) b!2188952))

(assert (= (and b!2188952 c!348229) b!2188945))

(assert (= (and b!2188952 (not c!348229)) b!2188949))

(assert (= (and b!2188949 c!348232) b!2188946))

(assert (= (and b!2188949 (not c!348232)) b!2188953))

(assert (= (or b!2188945 b!2188949 b!2188953) bm!131767))

(declare-fun m!2631837 () Bool)

(assert (=> d!656013 m!2631837))

(declare-fun m!2631839 () Bool)

(assert (=> d!656013 m!2631839))

(assert (=> bm!131767 m!2631791))

(declare-fun m!2631841 () Bool)

(assert (=> b!2188951 m!2631841))

(declare-fun m!2631843 () Bool)

(assert (=> b!2188952 m!2631843))

(assert (=> b!2188675 d!656013))

(declare-fun d!656015 () Bool)

(assert (=> d!656015 (= (isEmpty!14548 (_1!14924 lt!817325)) ((_ is Nil!25294) (_1!14924 lt!817325)))))

(assert (=> b!2188668 d!656015))

(declare-fun d!656017 () Bool)

(declare-fun lt!817419 () Int)

(assert (=> d!656017 (>= lt!817419 0)))

(declare-fun e!1398762 () Int)

(assert (=> d!656017 (= lt!817419 e!1398762)))

(declare-fun c!348235 () Bool)

(assert (=> d!656017 (= c!348235 ((_ is Nil!25294) lt!817334))))

(assert (=> d!656017 (= (size!19765 lt!817334) lt!817419)))

(declare-fun b!2188958 () Bool)

(assert (=> b!2188958 (= e!1398762 0)))

(declare-fun b!2188959 () Bool)

(assert (=> b!2188959 (= e!1398762 (+ 1 (size!19765 (t!197976 lt!817334))))))

(assert (= (and d!656017 c!348235) b!2188958))

(assert (= (and d!656017 (not c!348235)) b!2188959))

(declare-fun m!2631845 () Bool)

(assert (=> b!2188959 m!2631845))

(assert (=> b!2188678 d!656017))

(declare-fun b!2188960 () Bool)

(declare-fun e!1398769 () Bool)

(declare-fun e!1398764 () Bool)

(assert (=> b!2188960 (= e!1398769 e!1398764)))

(declare-fun res!940416 () Bool)

(assert (=> b!2188960 (=> (not res!940416) (not e!1398764))))

(declare-fun lt!817420 () Bool)

(assert (=> b!2188960 (= res!940416 (not lt!817420))))

(declare-fun b!2188961 () Bool)

(declare-fun res!940415 () Bool)

(assert (=> b!2188961 (=> res!940415 e!1398769)))

(declare-fun e!1398765 () Bool)

(assert (=> b!2188961 (= res!940415 e!1398765)))

(declare-fun res!940414 () Bool)

(assert (=> b!2188961 (=> (not res!940414) (not e!1398765))))

(assert (=> b!2188961 (= res!940414 lt!817420)))

(declare-fun b!2188962 () Bool)

(assert (=> b!2188962 (= e!1398765 (= (head!4674 (_1!14924 lt!817325)) (c!348158 r!12534)))))

(declare-fun b!2188963 () Bool)

(declare-fun res!940412 () Bool)

(assert (=> b!2188963 (=> res!940412 e!1398769)))

(assert (=> b!2188963 (= res!940412 (not ((_ is ElementMatch!6055) r!12534)))))

(declare-fun e!1398768 () Bool)

(assert (=> b!2188963 (= e!1398768 e!1398769)))

(declare-fun b!2188964 () Bool)

(declare-fun res!940417 () Bool)

(assert (=> b!2188964 (=> (not res!940417) (not e!1398765))))

(assert (=> b!2188964 (= res!940417 (isEmpty!14548 (tail!3146 (_1!14924 lt!817325))))))

(declare-fun b!2188965 () Bool)

(declare-fun e!1398763 () Bool)

(assert (=> b!2188965 (= e!1398763 (matchR!2804 (derivativeStep!1458 r!12534 (head!4674 (_1!14924 lt!817325))) (tail!3146 (_1!14924 lt!817325))))))

(declare-fun bm!131768 () Bool)

(declare-fun call!131773 () Bool)

(assert (=> bm!131768 (= call!131773 (isEmpty!14548 (_1!14924 lt!817325)))))

(declare-fun b!2188966 () Bool)

(declare-fun e!1398767 () Bool)

(assert (=> b!2188966 (= e!1398767 (= lt!817420 call!131773))))

(declare-fun b!2188967 () Bool)

(declare-fun e!1398766 () Bool)

(assert (=> b!2188967 (= e!1398764 e!1398766)))

(declare-fun res!940418 () Bool)

(assert (=> b!2188967 (=> res!940418 e!1398766)))

(assert (=> b!2188967 (= res!940418 call!131773)))

(declare-fun b!2188969 () Bool)

(declare-fun res!940419 () Bool)

(assert (=> b!2188969 (=> res!940419 e!1398766)))

(assert (=> b!2188969 (= res!940419 (not (isEmpty!14548 (tail!3146 (_1!14924 lt!817325)))))))

(declare-fun b!2188970 () Bool)

(assert (=> b!2188970 (= e!1398766 (not (= (head!4674 (_1!14924 lt!817325)) (c!348158 r!12534))))))

(declare-fun b!2188971 () Bool)

(assert (=> b!2188971 (= e!1398767 e!1398768)))

(declare-fun c!348237 () Bool)

(assert (=> b!2188971 (= c!348237 ((_ is EmptyLang!6055) r!12534))))

(declare-fun b!2188972 () Bool)

(assert (=> b!2188972 (= e!1398763 (nullable!1715 r!12534))))

(declare-fun b!2188973 () Bool)

(assert (=> b!2188973 (= e!1398768 (not lt!817420))))

(declare-fun b!2188968 () Bool)

(declare-fun res!940413 () Bool)

(assert (=> b!2188968 (=> (not res!940413) (not e!1398765))))

(assert (=> b!2188968 (= res!940413 (not call!131773))))

(declare-fun d!656019 () Bool)

(assert (=> d!656019 e!1398767))

(declare-fun c!348238 () Bool)

(assert (=> d!656019 (= c!348238 ((_ is EmptyExpr!6055) r!12534))))

(assert (=> d!656019 (= lt!817420 e!1398763)))

(declare-fun c!348236 () Bool)

(assert (=> d!656019 (= c!348236 (isEmpty!14548 (_1!14924 lt!817325)))))

(assert (=> d!656019 (validRegex!2331 r!12534)))

(assert (=> d!656019 (= (matchR!2804 r!12534 (_1!14924 lt!817325)) lt!817420)))

(assert (= (and d!656019 c!348236) b!2188972))

(assert (= (and d!656019 (not c!348236)) b!2188965))

(assert (= (and d!656019 c!348238) b!2188966))

(assert (= (and d!656019 (not c!348238)) b!2188971))

(assert (= (and b!2188971 c!348237) b!2188973))

(assert (= (and b!2188971 (not c!348237)) b!2188963))

(assert (= (and b!2188963 (not res!940412)) b!2188961))

(assert (= (and b!2188961 res!940414) b!2188968))

(assert (= (and b!2188968 res!940413) b!2188964))

(assert (= (and b!2188964 res!940417) b!2188962))

(assert (= (and b!2188961 (not res!940415)) b!2188960))

(assert (= (and b!2188960 res!940416) b!2188967))

(assert (= (and b!2188967 (not res!940418)) b!2188969))

(assert (= (and b!2188969 (not res!940419)) b!2188970))

(assert (= (or b!2188966 b!2188967 b!2188968) bm!131768))

(assert (=> d!656019 m!2631657))

(assert (=> d!656019 m!2631585))

(declare-fun m!2631847 () Bool)

(assert (=> b!2188965 m!2631847))

(assert (=> b!2188965 m!2631847))

(declare-fun m!2631849 () Bool)

(assert (=> b!2188965 m!2631849))

(declare-fun m!2631851 () Bool)

(assert (=> b!2188965 m!2631851))

(assert (=> b!2188965 m!2631849))

(assert (=> b!2188965 m!2631851))

(declare-fun m!2631853 () Bool)

(assert (=> b!2188965 m!2631853))

(assert (=> b!2188969 m!2631851))

(assert (=> b!2188969 m!2631851))

(declare-fun m!2631855 () Bool)

(assert (=> b!2188969 m!2631855))

(assert (=> b!2188962 m!2631847))

(assert (=> b!2188964 m!2631851))

(assert (=> b!2188964 m!2631851))

(assert (=> b!2188964 m!2631855))

(assert (=> b!2188970 m!2631847))

(assert (=> b!2188972 m!2631747))

(assert (=> bm!131768 m!2631657))

(assert (=> b!2188667 d!656019))

(declare-fun d!656021 () Bool)

(declare-fun lt!817423 () Regex!6055)

(assert (=> d!656021 (validRegex!2331 lt!817423)))

(declare-fun generalisedUnion!531 (List!25379) Regex!6055)

(declare-fun unfocusZipperList!55 (List!25380) List!25379)

(assert (=> d!656021 (= lt!817423 (generalisedUnion!531 (unfocusZipperList!55 lt!817331)))))

(assert (=> d!656021 (= (unfocusZipper!162 lt!817331) lt!817423)))

(declare-fun bs!448291 () Bool)

(assert (= bs!448291 d!656021))

(declare-fun m!2631857 () Bool)

(assert (=> bs!448291 m!2631857))

(declare-fun m!2631859 () Bool)

(assert (=> bs!448291 m!2631859))

(assert (=> bs!448291 m!2631859))

(declare-fun m!2631861 () Bool)

(assert (=> bs!448291 m!2631861))

(assert (=> b!2188669 d!656021))

(declare-fun d!656023 () Bool)

(declare-fun e!1398772 () Bool)

(assert (=> d!656023 e!1398772))

(declare-fun res!940422 () Bool)

(assert (=> d!656023 (=> (not res!940422) (not e!1398772))))

(declare-fun lt!817426 () List!25380)

(declare-fun noDuplicate!308 (List!25380) Bool)

(assert (=> d!656023 (= res!940422 (noDuplicate!308 lt!817426))))

(declare-fun choose!12968 ((InoxSet Context!3250)) List!25380)

(assert (=> d!656023 (= lt!817426 (choose!12968 z!4055))))

(assert (=> d!656023 (= (toList!1238 z!4055) lt!817426)))

(declare-fun b!2188976 () Bool)

(declare-fun content!3457 (List!25380) (InoxSet Context!3250))

(assert (=> b!2188976 (= e!1398772 (= (content!3457 lt!817426) z!4055))))

(assert (= (and d!656023 res!940422) b!2188976))

(declare-fun m!2631863 () Bool)

(assert (=> d!656023 m!2631863))

(declare-fun m!2631865 () Bool)

(assert (=> d!656023 m!2631865))

(declare-fun m!2631867 () Bool)

(assert (=> b!2188976 m!2631867))

(assert (=> b!2188669 d!656023))

(declare-fun d!656025 () Bool)

(declare-fun lt!817429 () Int)

(assert (=> d!656025 (= lt!817429 (size!19765 (list!9716 totalInput!977)))))

(declare-fun size!19767 (Conc!8191) Int)

(assert (=> d!656025 (= lt!817429 (size!19767 (c!348159 totalInput!977)))))

(assert (=> d!656025 (= (size!19764 totalInput!977) lt!817429)))

(declare-fun bs!448292 () Bool)

(assert (= bs!448292 d!656025))

(assert (=> bs!448292 m!2631629))

(assert (=> bs!448292 m!2631629))

(declare-fun m!2631869 () Bool)

(assert (=> bs!448292 m!2631869))

(declare-fun m!2631871 () Bool)

(assert (=> bs!448292 m!2631871))

(assert (=> b!2188681 d!656025))

(declare-fun d!656027 () Bool)

(declare-fun lt!817450 () tuple2!25108)

(assert (=> d!656027 (= (++!6416 (_1!14924 lt!817450) (_2!14924 lt!817450)) lt!817337)))

(declare-fun sizeTr!132 (List!25378 Int) Int)

(assert (=> d!656027 (= lt!817450 (findLongestMatchInner!680 r!12534 Nil!25294 0 lt!817337 lt!817337 (sizeTr!132 lt!817337 0)))))

(declare-fun lt!817447 () Unit!38435)

(declare-fun lt!817453 () Unit!38435)

(assert (=> d!656027 (= lt!817447 lt!817453)))

(declare-fun lt!817451 () List!25378)

(declare-fun lt!817446 () Int)

(assert (=> d!656027 (= (sizeTr!132 lt!817451 lt!817446) (+ (size!19765 lt!817451) lt!817446))))

(declare-fun lemmaSizeTrEqualsSize!131 (List!25378 Int) Unit!38435)

(assert (=> d!656027 (= lt!817453 (lemmaSizeTrEqualsSize!131 lt!817451 lt!817446))))

(assert (=> d!656027 (= lt!817446 0)))

(assert (=> d!656027 (= lt!817451 Nil!25294)))

(declare-fun lt!817448 () Unit!38435)

(declare-fun lt!817449 () Unit!38435)

(assert (=> d!656027 (= lt!817448 lt!817449)))

(declare-fun lt!817452 () Int)

(assert (=> d!656027 (= (sizeTr!132 lt!817337 lt!817452) (+ (size!19765 lt!817337) lt!817452))))

(assert (=> d!656027 (= lt!817449 (lemmaSizeTrEqualsSize!131 lt!817337 lt!817452))))

(assert (=> d!656027 (= lt!817452 0)))

(assert (=> d!656027 (validRegex!2331 r!12534)))

(assert (=> d!656027 (= (findLongestMatch!609 r!12534 lt!817337) lt!817450)))

(declare-fun bs!448293 () Bool)

(assert (= bs!448293 d!656027))

(assert (=> bs!448293 m!2631593))

(declare-fun m!2631873 () Bool)

(assert (=> bs!448293 m!2631873))

(assert (=> bs!448293 m!2631585))

(declare-fun m!2631875 () Bool)

(assert (=> bs!448293 m!2631875))

(declare-fun m!2631877 () Bool)

(assert (=> bs!448293 m!2631877))

(assert (=> bs!448293 m!2631875))

(declare-fun m!2631879 () Bool)

(assert (=> bs!448293 m!2631879))

(declare-fun m!2631881 () Bool)

(assert (=> bs!448293 m!2631881))

(declare-fun m!2631883 () Bool)

(assert (=> bs!448293 m!2631883))

(declare-fun m!2631885 () Bool)

(assert (=> bs!448293 m!2631885))

(declare-fun m!2631887 () Bool)

(assert (=> bs!448293 m!2631887))

(assert (=> b!2188681 d!656027))

(declare-fun d!656029 () Bool)

(assert (=> d!656029 (= (list!9716 (_1!14923 lt!817343)) (list!9718 (c!348159 (_1!14923 lt!817343))))))

(declare-fun bs!448294 () Bool)

(assert (= bs!448294 d!656029))

(declare-fun m!2631889 () Bool)

(assert (=> bs!448294 m!2631889))

(assert (=> b!2188681 d!656029))

(declare-fun d!656031 () Bool)

(declare-fun lt!817454 () Int)

(assert (=> d!656031 (= lt!817454 (size!19765 (list!9716 input!5540)))))

(assert (=> d!656031 (= lt!817454 (size!19767 (c!348159 input!5540)))))

(assert (=> d!656031 (= (size!19764 input!5540) lt!817454)))

(declare-fun bs!448295 () Bool)

(assert (= bs!448295 d!656031))

(assert (=> bs!448295 m!2631631))

(assert (=> bs!448295 m!2631631))

(declare-fun m!2631891 () Bool)

(assert (=> bs!448295 m!2631891))

(declare-fun m!2631893 () Bool)

(assert (=> bs!448295 m!2631893))

(assert (=> b!2188681 d!656031))

(declare-fun b!2188985 () Bool)

(declare-fun e!1398778 () tuple2!25106)

(declare-fun call!131776 () tuple2!25106)

(assert (=> b!2188985 (= e!1398778 call!131776)))

(declare-fun lt!817466 () Int)

(declare-fun c!348244 () Bool)

(declare-fun bm!131771 () Bool)

(declare-fun splitAt!61 (BalanceConc!16144 Int) tuple2!25106)

(assert (=> bm!131771 (= call!131776 (splitAt!61 input!5540 (ite c!348244 0 lt!817466)))))

(declare-fun b!2188986 () Bool)

(assert (=> b!2188986 (= e!1398778 call!131776)))

(declare-fun d!656033 () Bool)

(declare-fun lt!817465 () tuple2!25106)

(assert (=> d!656033 (= (++!6416 (list!9716 (_1!14923 lt!817465)) (list!9716 (_2!14923 lt!817465))) (list!9716 input!5540))))

(assert (=> d!656033 (= lt!817465 e!1398778)))

(assert (=> d!656033 (= c!348244 (< lt!817466 0))))

(declare-fun e!1398777 () Int)

(declare-fun lt!817463 () Int)

(declare-fun lt!817464 () Int)

(assert (=> d!656033 (= lt!817466 (+ (- (furthestNullablePosition!237 z!4055 lt!817464 totalInput!977 lt!817463 e!1398777) lt!817464) 1))))

(declare-fun c!348243 () Bool)

(assert (=> d!656033 (= c!348243 (nullableZipper!335 z!4055))))

(assert (=> d!656033 (= lt!817464 (- lt!817463 (size!19764 input!5540)))))

(assert (=> d!656033 (= lt!817463 (size!19764 totalInput!977))))

(assert (=> d!656033 (isSuffix!722 (list!9716 input!5540) (list!9716 totalInput!977))))

(assert (=> d!656033 (= (findLongestMatchZipperSequenceV3!104 z!4055 input!5540 totalInput!977) lt!817465)))

(declare-fun b!2188987 () Bool)

(assert (=> b!2188987 (= e!1398777 (- lt!817464 1))))

(declare-fun b!2188988 () Bool)

(assert (=> b!2188988 (= e!1398777 (- 1))))

(assert (= (and d!656033 c!348243) b!2188987))

(assert (= (and d!656033 (not c!348243)) b!2188988))

(assert (= (and d!656033 c!348244) b!2188986))

(assert (= (and d!656033 (not c!348244)) b!2188985))

(assert (= (or b!2188986 b!2188985) bm!131771))

(declare-fun m!2631895 () Bool)

(assert (=> bm!131771 m!2631895))

(declare-fun m!2631897 () Bool)

(assert (=> d!656033 m!2631897))

(assert (=> d!656033 m!2631631))

(assert (=> d!656033 m!2631629))

(declare-fun m!2631899 () Bool)

(assert (=> d!656033 m!2631899))

(declare-fun m!2631901 () Bool)

(assert (=> d!656033 m!2631901))

(assert (=> d!656033 m!2631617))

(assert (=> d!656033 m!2631629))

(declare-fun m!2631903 () Bool)

(assert (=> d!656033 m!2631903))

(assert (=> d!656033 m!2631897))

(assert (=> d!656033 m!2631901))

(declare-fun m!2631905 () Bool)

(assert (=> d!656033 m!2631905))

(assert (=> d!656033 m!2631631))

(assert (=> d!656033 m!2631663))

(assert (=> d!656033 m!2631665))

(assert (=> b!2188681 d!656033))

(declare-fun d!656035 () Bool)

(assert (=> d!656035 (= (list!9716 (_2!14923 lt!817343)) (list!9718 (c!348159 (_2!14923 lt!817343))))))

(declare-fun bs!448296 () Bool)

(assert (= bs!448296 d!656035))

(declare-fun m!2631907 () Bool)

(assert (=> bs!448296 m!2631907))

(assert (=> b!2188681 d!656035))

(declare-fun b!2188999 () Bool)

(declare-fun res!940427 () Bool)

(declare-fun e!1398783 () Bool)

(assert (=> b!2188999 (=> (not res!940427) (not e!1398783))))

(declare-fun lt!817469 () List!25378)

(assert (=> b!2188999 (= res!940427 (= (size!19765 lt!817469) (+ (size!19765 lt!817334) (size!19765 lt!817329))))))

(declare-fun b!2189000 () Bool)

(assert (=> b!2189000 (= e!1398783 (or (not (= lt!817329 Nil!25294)) (= lt!817469 lt!817334)))))

(declare-fun d!656037 () Bool)

(assert (=> d!656037 e!1398783))

(declare-fun res!940428 () Bool)

(assert (=> d!656037 (=> (not res!940428) (not e!1398783))))

(assert (=> d!656037 (= res!940428 (= (content!3456 lt!817469) ((_ map or) (content!3456 lt!817334) (content!3456 lt!817329))))))

(declare-fun e!1398784 () List!25378)

(assert (=> d!656037 (= lt!817469 e!1398784)))

(declare-fun c!348247 () Bool)

(assert (=> d!656037 (= c!348247 ((_ is Nil!25294) lt!817334))))

(assert (=> d!656037 (= (++!6416 lt!817334 lt!817329) lt!817469)))

(declare-fun b!2188998 () Bool)

(assert (=> b!2188998 (= e!1398784 (Cons!25294 (h!30695 lt!817334) (++!6416 (t!197976 lt!817334) lt!817329)))))

(declare-fun b!2188997 () Bool)

(assert (=> b!2188997 (= e!1398784 lt!817329)))

(assert (= (and d!656037 c!348247) b!2188997))

(assert (= (and d!656037 (not c!348247)) b!2188998))

(assert (= (and d!656037 res!940428) b!2188999))

(assert (= (and b!2188999 res!940427) b!2189000))

(declare-fun m!2631909 () Bool)

(assert (=> b!2188999 m!2631909))

(assert (=> b!2188999 m!2631579))

(declare-fun m!2631911 () Bool)

(assert (=> b!2188999 m!2631911))

(declare-fun m!2631913 () Bool)

(assert (=> d!656037 m!2631913))

(declare-fun m!2631915 () Bool)

(assert (=> d!656037 m!2631915))

(declare-fun m!2631917 () Bool)

(assert (=> d!656037 m!2631917))

(declare-fun m!2631919 () Bool)

(assert (=> b!2188998 m!2631919))

(assert (=> b!2188681 d!656037))

(declare-fun b!2189003 () Bool)

(declare-fun res!940429 () Bool)

(declare-fun e!1398785 () Bool)

(assert (=> b!2189003 (=> (not res!940429) (not e!1398785))))

(declare-fun lt!817470 () List!25378)

(assert (=> b!2189003 (= res!940429 (= (size!19765 lt!817470) (+ (size!19765 (_1!14924 lt!817325)) (size!19765 (_2!14924 lt!817325)))))))

(declare-fun b!2189004 () Bool)

(assert (=> b!2189004 (= e!1398785 (or (not (= (_2!14924 lt!817325) Nil!25294)) (= lt!817470 (_1!14924 lt!817325))))))

(declare-fun d!656039 () Bool)

(assert (=> d!656039 e!1398785))

(declare-fun res!940430 () Bool)

(assert (=> d!656039 (=> (not res!940430) (not e!1398785))))

(assert (=> d!656039 (= res!940430 (= (content!3456 lt!817470) ((_ map or) (content!3456 (_1!14924 lt!817325)) (content!3456 (_2!14924 lt!817325)))))))

(declare-fun e!1398786 () List!25378)

(assert (=> d!656039 (= lt!817470 e!1398786)))

(declare-fun c!348248 () Bool)

(assert (=> d!656039 (= c!348248 ((_ is Nil!25294) (_1!14924 lt!817325)))))

(assert (=> d!656039 (= (++!6416 (_1!14924 lt!817325) (_2!14924 lt!817325)) lt!817470)))

(declare-fun b!2189002 () Bool)

(assert (=> b!2189002 (= e!1398786 (Cons!25294 (h!30695 (_1!14924 lt!817325)) (++!6416 (t!197976 (_1!14924 lt!817325)) (_2!14924 lt!817325))))))

(declare-fun b!2189001 () Bool)

(assert (=> b!2189001 (= e!1398786 (_2!14924 lt!817325))))

(assert (= (and d!656039 c!348248) b!2189001))

(assert (= (and d!656039 (not c!348248)) b!2189002))

(assert (= (and d!656039 res!940430) b!2189003))

(assert (= (and b!2189003 res!940429) b!2189004))

(declare-fun m!2631921 () Bool)

(assert (=> b!2189003 m!2631921))

(assert (=> b!2189003 m!2631649))

(declare-fun m!2631923 () Bool)

(assert (=> b!2189003 m!2631923))

(declare-fun m!2631925 () Bool)

(assert (=> d!656039 m!2631925))

(declare-fun m!2631927 () Bool)

(assert (=> d!656039 m!2631927))

(declare-fun m!2631929 () Bool)

(assert (=> d!656039 m!2631929))

(declare-fun m!2631931 () Bool)

(assert (=> b!2189002 m!2631931))

(assert (=> b!2188672 d!656039))

(declare-fun d!656041 () Bool)

(declare-fun lambda!82167 () Int)

(declare-fun forall!5195 (List!25379 Int) Bool)

(assert (=> d!656041 (= (inv!33644 setElem!18384) (forall!5195 (exprs!2125 setElem!18384) lambda!82167))))

(declare-fun bs!448302 () Bool)

(assert (= bs!448302 d!656041))

(declare-fun m!2632083 () Bool)

(assert (=> bs!448302 m!2632083))

(assert (=> setNonEmpty!18384 d!656041))

(declare-fun d!656081 () Bool)

(declare-fun c!348299 () Bool)

(assert (=> d!656081 (= c!348299 ((_ is Node!8191) (c!348159 totalInput!977)))))

(declare-fun e!1398875 () Bool)

(assert (=> d!656081 (= (inv!33643 (c!348159 totalInput!977)) e!1398875)))

(declare-fun b!2189146 () Bool)

(assert (=> b!2189146 (= e!1398875 (inv!33647 (c!348159 totalInput!977)))))

(declare-fun b!2189147 () Bool)

(declare-fun e!1398876 () Bool)

(assert (=> b!2189147 (= e!1398875 e!1398876)))

(declare-fun res!940472 () Bool)

(assert (=> b!2189147 (= res!940472 (not ((_ is Leaf!11986) (c!348159 totalInput!977))))))

(assert (=> b!2189147 (=> res!940472 e!1398876)))

(declare-fun b!2189148 () Bool)

(assert (=> b!2189148 (= e!1398876 (inv!33648 (c!348159 totalInput!977)))))

(assert (= (and d!656081 c!348299) b!2189146))

(assert (= (and d!656081 (not c!348299)) b!2189147))

(assert (= (and b!2189147 (not res!940472)) b!2189148))

(declare-fun m!2632085 () Bool)

(assert (=> b!2189146 m!2632085))

(declare-fun m!2632087 () Bool)

(assert (=> b!2189148 m!2632087))

(assert (=> b!2188671 d!656081))

(declare-fun b!2189152 () Bool)

(declare-fun e!1398880 () Bool)

(assert (=> b!2189152 (= e!1398880 (isPrefix!2171 (tail!3146 (take!263 lt!817323 lt!817328)) (tail!3146 lt!817323)))))

(declare-fun b!2189153 () Bool)

(declare-fun e!1398879 () Bool)

(assert (=> b!2189153 (= e!1398879 (>= (size!19765 lt!817323) (size!19765 (take!263 lt!817323 lt!817328))))))

(declare-fun d!656083 () Bool)

(assert (=> d!656083 e!1398879))

(declare-fun res!940474 () Bool)

(assert (=> d!656083 (=> res!940474 e!1398879)))

(declare-fun lt!817592 () Bool)

(assert (=> d!656083 (= res!940474 (not lt!817592))))

(declare-fun e!1398878 () Bool)

(assert (=> d!656083 (= lt!817592 e!1398878)))

(declare-fun res!940475 () Bool)

(assert (=> d!656083 (=> res!940475 e!1398878)))

(assert (=> d!656083 (= res!940475 ((_ is Nil!25294) (take!263 lt!817323 lt!817328)))))

(assert (=> d!656083 (= (isPrefix!2171 (take!263 lt!817323 lt!817328) lt!817323) lt!817592)))

(declare-fun b!2189150 () Bool)

(assert (=> b!2189150 (= e!1398878 e!1398880)))

(declare-fun res!940476 () Bool)

(assert (=> b!2189150 (=> (not res!940476) (not e!1398880))))

(assert (=> b!2189150 (= res!940476 (not ((_ is Nil!25294) lt!817323)))))

(declare-fun b!2189151 () Bool)

(declare-fun res!940477 () Bool)

(assert (=> b!2189151 (=> (not res!940477) (not e!1398880))))

(assert (=> b!2189151 (= res!940477 (= (head!4674 (take!263 lt!817323 lt!817328)) (head!4674 lt!817323)))))

(assert (= (and d!656083 (not res!940475)) b!2189150))

(assert (= (and b!2189150 res!940476) b!2189151))

(assert (= (and b!2189151 res!940477) b!2189152))

(assert (= (and d!656083 (not res!940474)) b!2189153))

(assert (=> b!2189152 m!2631591))

(declare-fun m!2632093 () Bool)

(assert (=> b!2189152 m!2632093))

(declare-fun m!2632095 () Bool)

(assert (=> b!2189152 m!2632095))

(assert (=> b!2189152 m!2632093))

(assert (=> b!2189152 m!2632095))

(declare-fun m!2632099 () Bool)

(assert (=> b!2189152 m!2632099))

(assert (=> b!2189153 m!2631791))

(assert (=> b!2189153 m!2631591))

(declare-fun m!2632101 () Bool)

(assert (=> b!2189153 m!2632101))

(assert (=> b!2189151 m!2631591))

(declare-fun m!2632103 () Bool)

(assert (=> b!2189151 m!2632103))

(declare-fun m!2632105 () Bool)

(assert (=> b!2189151 m!2632105))

(assert (=> b!2188673 d!656083))

(declare-fun d!656089 () Bool)

(declare-fun c!348303 () Bool)

(assert (=> d!656089 (= c!348303 (isEmpty!14548 lt!817334))))

(declare-fun e!1398885 () Bool)

(assert (=> d!656089 (= (matchZipper!171 z!4055 lt!817334) e!1398885)))

(declare-fun b!2189161 () Bool)

(assert (=> b!2189161 (= e!1398885 (nullableZipper!335 z!4055))))

(declare-fun b!2189162 () Bool)

(assert (=> b!2189162 (= e!1398885 (matchZipper!171 (derivationStepZipper!144 z!4055 (head!4674 lt!817334)) (tail!3146 lt!817334)))))

(assert (= (and d!656089 c!348303) b!2189161))

(assert (= (and d!656089 (not c!348303)) b!2189162))

(declare-fun m!2632107 () Bool)

(assert (=> d!656089 m!2632107))

(assert (=> b!2189161 m!2631617))

(assert (=> b!2189162 m!2631813))

(assert (=> b!2189162 m!2631813))

(declare-fun m!2632109 () Bool)

(assert (=> b!2189162 m!2632109))

(assert (=> b!2189162 m!2631807))

(assert (=> b!2189162 m!2632109))

(assert (=> b!2189162 m!2631807))

(declare-fun m!2632111 () Bool)

(assert (=> b!2189162 m!2632111))

(assert (=> b!2188673 d!656089))

(declare-fun d!656091 () Bool)

(assert (=> d!656091 (isPrefix!2171 lt!817334 (++!6416 lt!817334 lt!817329))))

(declare-fun lt!817600 () Unit!38435)

(declare-fun choose!12970 (List!25378 List!25378) Unit!38435)

(assert (=> d!656091 (= lt!817600 (choose!12970 lt!817334 lt!817329))))

(assert (=> d!656091 (= (lemmaConcatTwoListThenFirstIsPrefix!1454 lt!817334 lt!817329) lt!817600)))

(declare-fun bs!448304 () Bool)

(assert (= bs!448304 d!656091))

(assert (=> bs!448304 m!2631671))

(assert (=> bs!448304 m!2631671))

(declare-fun m!2632125 () Bool)

(assert (=> bs!448304 m!2632125))

(declare-fun m!2632127 () Bool)

(assert (=> bs!448304 m!2632127))

(assert (=> b!2188673 d!656091))

(declare-fun b!2189239 () Bool)

(declare-fun e!1398925 () Int)

(assert (=> b!2189239 (= e!1398925 lt!817328)))

(declare-fun lt!817620 () Int)

(declare-fun d!656099 () Bool)

(assert (=> d!656099 (and (>= lt!817620 (- 1)) (< lt!817620 lt!817341) (>= lt!817620 lt!817346) (or (= lt!817620 lt!817346) (>= lt!817620 lt!817328)))))

(declare-fun e!1398924 () Int)

(assert (=> d!656099 (= lt!817620 e!1398924)))

(declare-fun c!348320 () Bool)

(declare-fun e!1398926 () Bool)

(assert (=> d!656099 (= c!348320 e!1398926)))

(declare-fun res!940503 () Bool)

(assert (=> d!656099 (=> res!940503 e!1398926)))

(assert (=> d!656099 (= res!940503 (= lt!817328 lt!817341))))

(assert (=> d!656099 (and (>= lt!817328 0) (<= lt!817328 lt!817341))))

(assert (=> d!656099 (= (furthestNullablePosition!237 z!4055 lt!817328 totalInput!977 lt!817341 lt!817346) lt!817620)))

(declare-fun b!2189240 () Bool)

(assert (=> b!2189240 (= e!1398925 lt!817346)))

(declare-fun b!2189241 () Bool)

(assert (=> b!2189241 (= e!1398924 lt!817346)))

(declare-fun lt!817619 () (InoxSet Context!3250))

(declare-fun b!2189242 () Bool)

(assert (=> b!2189242 (= e!1398924 (furthestNullablePosition!237 lt!817619 (+ lt!817328 1) totalInput!977 lt!817341 e!1398925))))

(declare-fun apply!6100 (BalanceConc!16144 Int) C!12256)

(assert (=> b!2189242 (= lt!817619 (derivationStepZipper!144 z!4055 (apply!6100 totalInput!977 lt!817328)))))

(declare-fun c!348321 () Bool)

(assert (=> b!2189242 (= c!348321 (nullableZipper!335 lt!817619))))

(declare-fun b!2189243 () Bool)

(declare-fun lostCauseZipper!177 ((InoxSet Context!3250)) Bool)

(assert (=> b!2189243 (= e!1398926 (lostCauseZipper!177 z!4055))))

(assert (= (and d!656099 (not res!940503)) b!2189243))

(assert (= (and d!656099 c!348320) b!2189241))

(assert (= (and d!656099 (not c!348320)) b!2189242))

(assert (= (and b!2189242 c!348321) b!2189239))

(assert (= (and b!2189242 (not c!348321)) b!2189240))

(declare-fun m!2632201 () Bool)

(assert (=> b!2189242 m!2632201))

(declare-fun m!2632203 () Bool)

(assert (=> b!2189242 m!2632203))

(assert (=> b!2189242 m!2632203))

(declare-fun m!2632205 () Bool)

(assert (=> b!2189242 m!2632205))

(declare-fun m!2632207 () Bool)

(assert (=> b!2189242 m!2632207))

(declare-fun m!2632209 () Bool)

(assert (=> b!2189243 m!2632209))

(assert (=> b!2188673 d!656099))

(declare-fun d!656123 () Bool)

(declare-fun e!1398942 () Bool)

(assert (=> d!656123 e!1398942))

(declare-fun res!940508 () Bool)

(assert (=> d!656123 (=> res!940508 e!1398942)))

(declare-fun lt!817626 () Int)

(assert (=> d!656123 (= res!940508 (<= lt!817626 0))))

(assert (=> d!656123 (= lt!817626 (+ (- (furthestNullablePosition!237 z!4055 lt!817328 totalInput!977 (size!19764 totalInput!977) lt!817346) lt!817328) 1))))

(declare-fun lt!817625 () Unit!38435)

(declare-fun choose!12971 ((InoxSet Context!3250) Int BalanceConc!16144 Int) Unit!38435)

(assert (=> d!656123 (= lt!817625 (choose!12971 z!4055 lt!817328 totalInput!977 lt!817346))))

(declare-fun e!1398943 () Bool)

(assert (=> d!656123 e!1398943))

(declare-fun res!940509 () Bool)

(assert (=> d!656123 (=> (not res!940509) (not e!1398943))))

(assert (=> d!656123 (= res!940509 (>= lt!817328 0))))

(assert (=> d!656123 (= (longestMatchIsAcceptedByMatchOrIsEmptyRecV3!78 z!4055 lt!817328 totalInput!977 lt!817346) lt!817625)))

(declare-fun b!2189278 () Bool)

(assert (=> b!2189278 (= e!1398943 (<= lt!817328 (size!19764 totalInput!977)))))

(declare-fun b!2189279 () Bool)

(assert (=> b!2189279 (= e!1398942 (matchZipper!171 z!4055 (take!263 (drop!1273 (list!9716 totalInput!977) lt!817328) lt!817626)))))

(assert (= (and d!656123 res!940509) b!2189278))

(assert (= (and d!656123 (not res!940508)) b!2189279))

(assert (=> d!656123 m!2631663))

(assert (=> d!656123 m!2631663))

(declare-fun m!2632213 () Bool)

(assert (=> d!656123 m!2632213))

(declare-fun m!2632215 () Bool)

(assert (=> d!656123 m!2632215))

(assert (=> b!2189278 m!2631663))

(assert (=> b!2189279 m!2631629))

(assert (=> b!2189279 m!2631629))

(declare-fun m!2632217 () Bool)

(assert (=> b!2189279 m!2632217))

(assert (=> b!2189279 m!2632217))

(declare-fun m!2632219 () Bool)

(assert (=> b!2189279 m!2632219))

(assert (=> b!2189279 m!2632219))

(declare-fun m!2632221 () Bool)

(assert (=> b!2189279 m!2632221))

(assert (=> b!2188673 d!656123))

(declare-fun b!2189282 () Bool)

(declare-fun e!1398946 () Bool)

(assert (=> b!2189282 (= e!1398946 (isPrefix!2171 (tail!3146 (_1!14924 lt!817325)) (tail!3146 lt!817322)))))

(declare-fun b!2189283 () Bool)

(declare-fun e!1398945 () Bool)

(assert (=> b!2189283 (= e!1398945 (>= (size!19765 lt!817322) (size!19765 (_1!14924 lt!817325))))))

(declare-fun d!656125 () Bool)

(assert (=> d!656125 e!1398945))

(declare-fun res!940510 () Bool)

(assert (=> d!656125 (=> res!940510 e!1398945)))

(declare-fun lt!817627 () Bool)

(assert (=> d!656125 (= res!940510 (not lt!817627))))

(declare-fun e!1398944 () Bool)

(assert (=> d!656125 (= lt!817627 e!1398944)))

(declare-fun res!940511 () Bool)

(assert (=> d!656125 (=> res!940511 e!1398944)))

(assert (=> d!656125 (= res!940511 ((_ is Nil!25294) (_1!14924 lt!817325)))))

(assert (=> d!656125 (= (isPrefix!2171 (_1!14924 lt!817325) lt!817322) lt!817627)))

(declare-fun b!2189280 () Bool)

(assert (=> b!2189280 (= e!1398944 e!1398946)))

(declare-fun res!940512 () Bool)

(assert (=> b!2189280 (=> (not res!940512) (not e!1398946))))

(assert (=> b!2189280 (= res!940512 (not ((_ is Nil!25294) lt!817322)))))

(declare-fun b!2189281 () Bool)

(declare-fun res!940513 () Bool)

(assert (=> b!2189281 (=> (not res!940513) (not e!1398946))))

(assert (=> b!2189281 (= res!940513 (= (head!4674 (_1!14924 lt!817325)) (head!4674 lt!817322)))))

(assert (= (and d!656125 (not res!940511)) b!2189280))

(assert (= (and b!2189280 res!940512) b!2189281))

(assert (= (and b!2189281 res!940513) b!2189282))

(assert (= (and d!656125 (not res!940510)) b!2189283))

(assert (=> b!2189282 m!2631851))

(declare-fun m!2632223 () Bool)

(assert (=> b!2189282 m!2632223))

(assert (=> b!2189282 m!2631851))

(assert (=> b!2189282 m!2632223))

(declare-fun m!2632225 () Bool)

(assert (=> b!2189282 m!2632225))

(declare-fun m!2632227 () Bool)

(assert (=> b!2189283 m!2632227))

(assert (=> b!2189283 m!2631649))

(assert (=> b!2189281 m!2631847))

(declare-fun m!2632229 () Bool)

(assert (=> b!2189281 m!2632229))

(assert (=> b!2188673 d!656125))

(declare-fun d!656127 () Bool)

(declare-fun lambda!82173 () Int)

(declare-fun exists!784 ((InoxSet Context!3250) Int) Bool)

(assert (=> d!656127 (= (nullableZipper!335 z!4055) (exists!784 z!4055 lambda!82173))))

(declare-fun bs!448311 () Bool)

(assert (= bs!448311 d!656127))

(declare-fun m!2632231 () Bool)

(assert (=> bs!448311 m!2632231))

(assert (=> b!2188673 d!656127))

(declare-fun d!656129 () Bool)

(assert (=> d!656129 (= (isEmpty!14548 (_1!14924 lt!817342)) ((_ is Nil!25294) (_1!14924 lt!817342)))))

(assert (=> b!2188673 d!656129))

(declare-fun d!656131 () Bool)

(declare-fun e!1398949 () Bool)

(assert (=> d!656131 e!1398949))

(declare-fun res!940516 () Bool)

(assert (=> d!656131 (=> res!940516 e!1398949)))

(assert (=> d!656131 (= res!940516 (isEmpty!14548 (_1!14924 (findLongestMatchInner!680 r!12534 Nil!25294 (size!19765 Nil!25294) lt!817337 lt!817337 (size!19765 lt!817337)))))))

(declare-fun lt!817630 () Unit!38435)

(declare-fun choose!12972 (Regex!6055 List!25378) Unit!38435)

(assert (=> d!656131 (= lt!817630 (choose!12972 r!12534 lt!817337))))

(assert (=> d!656131 (validRegex!2331 r!12534)))

(assert (=> d!656131 (= (longestMatchIsAcceptedByMatchOrIsEmpty!653 r!12534 lt!817337) lt!817630)))

(declare-fun b!2189286 () Bool)

(assert (=> b!2189286 (= e!1398949 (matchR!2804 r!12534 (_1!14924 (findLongestMatchInner!680 r!12534 Nil!25294 (size!19765 Nil!25294) lt!817337 lt!817337 (size!19765 lt!817337)))))))

(assert (= (and d!656131 (not res!940516)) b!2189286))

(assert (=> d!656131 m!2631585))

(declare-fun m!2632233 () Bool)

(assert (=> d!656131 m!2632233))

(declare-fun m!2632235 () Bool)

(assert (=> d!656131 m!2632235))

(assert (=> d!656131 m!2631609))

(assert (=> d!656131 m!2631593))

(assert (=> d!656131 m!2631611))

(assert (=> d!656131 m!2631593))

(assert (=> d!656131 m!2631609))

(assert (=> b!2189286 m!2631609))

(assert (=> b!2189286 m!2631593))

(assert (=> b!2189286 m!2631609))

(assert (=> b!2189286 m!2631593))

(assert (=> b!2189286 m!2631611))

(declare-fun m!2632237 () Bool)

(assert (=> b!2189286 m!2632237))

(assert (=> b!2188673 d!656131))

(declare-fun d!656133 () Bool)

(declare-fun lt!817631 () Int)

(assert (=> d!656133 (>= lt!817631 0)))

(declare-fun e!1398950 () Int)

(assert (=> d!656133 (= lt!817631 e!1398950)))

(declare-fun c!348324 () Bool)

(assert (=> d!656133 (= c!348324 ((_ is Nil!25294) Nil!25294))))

(assert (=> d!656133 (= (size!19765 Nil!25294) lt!817631)))

(declare-fun b!2189287 () Bool)

(assert (=> b!2189287 (= e!1398950 0)))

(declare-fun b!2189288 () Bool)

(assert (=> b!2189288 (= e!1398950 (+ 1 (size!19765 (t!197976 Nil!25294))))))

(assert (= (and d!656133 c!348324) b!2189287))

(assert (= (and d!656133 (not c!348324)) b!2189288))

(declare-fun m!2632239 () Bool)

(assert (=> b!2189288 m!2632239))

(assert (=> b!2188673 d!656133))

(declare-fun b!2189289 () Bool)

(declare-fun e!1398954 () List!25378)

(assert (=> b!2189289 (= e!1398954 (Cons!25294 (h!30695 lt!817323) (take!263 (t!197976 lt!817323) (- lt!817328 1))))))

(declare-fun b!2189290 () Bool)

(declare-fun e!1398953 () Int)

(declare-fun e!1398952 () Int)

(assert (=> b!2189290 (= e!1398953 e!1398952)))

(declare-fun c!348327 () Bool)

(assert (=> b!2189290 (= c!348327 (>= lt!817328 (size!19765 lt!817323)))))

(declare-fun b!2189291 () Bool)

(declare-fun e!1398951 () Bool)

(declare-fun lt!817632 () List!25378)

(assert (=> b!2189291 (= e!1398951 (= (size!19765 lt!817632) e!1398953))))

(declare-fun c!348326 () Bool)

(assert (=> b!2189291 (= c!348326 (<= lt!817328 0))))

(declare-fun d!656135 () Bool)

(assert (=> d!656135 e!1398951))

(declare-fun res!940517 () Bool)

(assert (=> d!656135 (=> (not res!940517) (not e!1398951))))

(assert (=> d!656135 (= res!940517 (= ((_ map implies) (content!3456 lt!817632) (content!3456 lt!817323)) ((as const (InoxSet C!12256)) true)))))

(assert (=> d!656135 (= lt!817632 e!1398954)))

(declare-fun c!348325 () Bool)

(assert (=> d!656135 (= c!348325 (or ((_ is Nil!25294) lt!817323) (<= lt!817328 0)))))

(assert (=> d!656135 (= (take!263 lt!817323 lt!817328) lt!817632)))

(declare-fun b!2189292 () Bool)

(assert (=> b!2189292 (= e!1398952 lt!817328)))

(declare-fun b!2189293 () Bool)

(assert (=> b!2189293 (= e!1398953 0)))

(declare-fun b!2189294 () Bool)

(assert (=> b!2189294 (= e!1398954 Nil!25294)))

(declare-fun b!2189295 () Bool)

(assert (=> b!2189295 (= e!1398952 (size!19765 lt!817323))))

(assert (= (and d!656135 c!348325) b!2189294))

(assert (= (and d!656135 (not c!348325)) b!2189289))

(assert (= (and d!656135 res!940517) b!2189291))

(assert (= (and b!2189291 c!348326) b!2189293))

(assert (= (and b!2189291 (not c!348326)) b!2189290))

(assert (= (and b!2189290 c!348327) b!2189295))

(assert (= (and b!2189290 (not c!348327)) b!2189292))

(declare-fun m!2632241 () Bool)

(assert (=> d!656135 m!2632241))

(assert (=> d!656135 m!2631839))

(declare-fun m!2632243 () Bool)

(assert (=> b!2189291 m!2632243))

(declare-fun m!2632245 () Bool)

(assert (=> b!2189289 m!2632245))

(assert (=> b!2189295 m!2631791))

(assert (=> b!2189290 m!2631791))

(assert (=> b!2188673 d!656135))

(declare-fun d!656137 () Bool)

(assert (=> d!656137 (isPrefix!2171 (take!263 lt!817323 lt!817328) lt!817323)))

(declare-fun lt!817635 () Unit!38435)

(declare-fun choose!12973 (List!25378 Int) Unit!38435)

(assert (=> d!656137 (= lt!817635 (choose!12973 lt!817323 lt!817328))))

(assert (=> d!656137 (>= lt!817328 0)))

(assert (=> d!656137 (= (lemmaTakeIsPrefix!86 lt!817323 lt!817328) lt!817635)))

(declare-fun bs!448312 () Bool)

(assert (= bs!448312 d!656137))

(assert (=> bs!448312 m!2631591))

(assert (=> bs!448312 m!2631591))

(assert (=> bs!448312 m!2631615))

(declare-fun m!2632247 () Bool)

(assert (=> bs!448312 m!2632247))

(assert (=> b!2188673 d!656137))

(declare-fun b!2189298 () Bool)

(declare-fun e!1398957 () Bool)

(assert (=> b!2189298 (= e!1398957 (isPrefix!2171 (tail!3146 lt!817334) (tail!3146 lt!817344)))))

(declare-fun b!2189299 () Bool)

(declare-fun e!1398956 () Bool)

(assert (=> b!2189299 (= e!1398956 (>= (size!19765 lt!817344) (size!19765 lt!817334)))))

(declare-fun d!656139 () Bool)

(assert (=> d!656139 e!1398956))

(declare-fun res!940518 () Bool)

(assert (=> d!656139 (=> res!940518 e!1398956)))

(declare-fun lt!817636 () Bool)

(assert (=> d!656139 (= res!940518 (not lt!817636))))

(declare-fun e!1398955 () Bool)

(assert (=> d!656139 (= lt!817636 e!1398955)))

(declare-fun res!940519 () Bool)

(assert (=> d!656139 (=> res!940519 e!1398955)))

(assert (=> d!656139 (= res!940519 ((_ is Nil!25294) lt!817334))))

(assert (=> d!656139 (= (isPrefix!2171 lt!817334 lt!817344) lt!817636)))

(declare-fun b!2189296 () Bool)

(assert (=> b!2189296 (= e!1398955 e!1398957)))

(declare-fun res!940520 () Bool)

(assert (=> b!2189296 (=> (not res!940520) (not e!1398957))))

(assert (=> b!2189296 (= res!940520 (not ((_ is Nil!25294) lt!817344)))))

(declare-fun b!2189297 () Bool)

(declare-fun res!940521 () Bool)

(assert (=> b!2189297 (=> (not res!940521) (not e!1398957))))

(assert (=> b!2189297 (= res!940521 (= (head!4674 lt!817334) (head!4674 lt!817344)))))

(assert (= (and d!656139 (not res!940519)) b!2189296))

(assert (= (and b!2189296 res!940520) b!2189297))

(assert (= (and b!2189297 res!940521) b!2189298))

(assert (= (and d!656139 (not res!940518)) b!2189299))

(assert (=> b!2189298 m!2631807))

(declare-fun m!2632249 () Bool)

(assert (=> b!2189298 m!2632249))

(assert (=> b!2189298 m!2631807))

(assert (=> b!2189298 m!2632249))

(declare-fun m!2632251 () Bool)

(assert (=> b!2189298 m!2632251))

(declare-fun m!2632253 () Bool)

(assert (=> b!2189299 m!2632253))

(assert (=> b!2189299 m!2631579))

(assert (=> b!2189297 m!2631813))

(declare-fun m!2632255 () Bool)

(assert (=> b!2189297 m!2632255))

(assert (=> b!2188673 d!656139))

(declare-fun d!656141 () Bool)

(declare-fun lt!817637 () Int)

(assert (=> d!656141 (>= lt!817637 0)))

(declare-fun e!1398958 () Int)

(assert (=> d!656141 (= lt!817637 e!1398958)))

(declare-fun c!348328 () Bool)

(assert (=> d!656141 (= c!348328 ((_ is Nil!25294) lt!817337))))

(assert (=> d!656141 (= (size!19765 lt!817337) lt!817637)))

(declare-fun b!2189300 () Bool)

(assert (=> b!2189300 (= e!1398958 0)))

(declare-fun b!2189301 () Bool)

(assert (=> b!2189301 (= e!1398958 (+ 1 (size!19765 (t!197976 lt!817337))))))

(assert (= (and d!656141 c!348328) b!2189300))

(assert (= (and d!656141 (not c!348328)) b!2189301))

(declare-fun m!2632257 () Bool)

(assert (=> b!2189301 m!2632257))

(assert (=> b!2188673 d!656141))

(declare-fun b!2189330 () Bool)

(declare-fun e!1398978 () tuple2!25108)

(assert (=> b!2189330 (= e!1398978 (tuple2!25109 Nil!25294 lt!817337))))

(declare-fun bm!131817 () Bool)

(declare-fun call!131829 () Regex!6055)

(declare-fun call!131822 () C!12256)

(assert (=> bm!131817 (= call!131829 (derivativeStep!1458 r!12534 call!131822))))

(declare-fun b!2189331 () Bool)

(declare-fun e!1398977 () Bool)

(declare-fun lt!817700 () tuple2!25108)

(assert (=> b!2189331 (= e!1398977 (>= (size!19765 (_1!14924 lt!817700)) (size!19765 Nil!25294)))))

(declare-fun d!656143 () Bool)

(declare-fun e!1398976 () Bool)

(assert (=> d!656143 e!1398976))

(declare-fun res!940526 () Bool)

(assert (=> d!656143 (=> (not res!940526) (not e!1398976))))

(assert (=> d!656143 (= res!940526 (= (++!6416 (_1!14924 lt!817700) (_2!14924 lt!817700)) lt!817337))))

(declare-fun e!1398980 () tuple2!25108)

(assert (=> d!656143 (= lt!817700 e!1398980)))

(declare-fun c!348345 () Bool)

(declare-fun lostCause!687 (Regex!6055) Bool)

(assert (=> d!656143 (= c!348345 (lostCause!687 r!12534))))

(declare-fun lt!817703 () Unit!38435)

(declare-fun Unit!38440 () Unit!38435)

(assert (=> d!656143 (= lt!817703 Unit!38440)))

(declare-fun getSuffix!1052 (List!25378 List!25378) List!25378)

(assert (=> d!656143 (= (getSuffix!1052 lt!817337 Nil!25294) lt!817337)))

(declare-fun lt!817710 () Unit!38435)

(declare-fun lt!817721 () Unit!38435)

(assert (=> d!656143 (= lt!817710 lt!817721)))

(declare-fun lt!817708 () List!25378)

(assert (=> d!656143 (= lt!817337 lt!817708)))

(declare-fun lemmaSamePrefixThenSameSuffix!974 (List!25378 List!25378 List!25378 List!25378 List!25378) Unit!38435)

(assert (=> d!656143 (= lt!817721 (lemmaSamePrefixThenSameSuffix!974 Nil!25294 lt!817337 Nil!25294 lt!817708 lt!817337))))

(assert (=> d!656143 (= lt!817708 (getSuffix!1052 lt!817337 Nil!25294))))

(declare-fun lt!817712 () Unit!38435)

(declare-fun lt!817717 () Unit!38435)

(assert (=> d!656143 (= lt!817712 lt!817717)))

(assert (=> d!656143 (isPrefix!2171 Nil!25294 (++!6416 Nil!25294 lt!817337))))

(assert (=> d!656143 (= lt!817717 (lemmaConcatTwoListThenFirstIsPrefix!1454 Nil!25294 lt!817337))))

(assert (=> d!656143 (validRegex!2331 r!12534)))

(assert (=> d!656143 (= (findLongestMatchInner!680 r!12534 Nil!25294 (size!19765 Nil!25294) lt!817337 lt!817337 (size!19765 lt!817337)) lt!817700)))

(declare-fun b!2189332 () Bool)

(assert (=> b!2189332 (= e!1398980 (tuple2!25109 Nil!25294 lt!817337))))

(declare-fun call!131825 () List!25378)

(declare-fun call!131828 () tuple2!25108)

(declare-fun bm!131818 () Bool)

(declare-fun lt!817705 () List!25378)

(assert (=> bm!131818 (= call!131828 (findLongestMatchInner!680 call!131829 lt!817705 (+ (size!19765 Nil!25294) 1) call!131825 lt!817337 (size!19765 lt!817337)))))

(declare-fun b!2189333 () Bool)

(declare-fun e!1398975 () tuple2!25108)

(declare-fun e!1398981 () tuple2!25108)

(assert (=> b!2189333 (= e!1398975 e!1398981)))

(declare-fun lt!817707 () tuple2!25108)

(assert (=> b!2189333 (= lt!817707 call!131828)))

(declare-fun c!348346 () Bool)

(assert (=> b!2189333 (= c!348346 (isEmpty!14548 (_1!14924 lt!817707)))))

(declare-fun bm!131819 () Bool)

(declare-fun call!131823 () Unit!38435)

(declare-fun lemmaIsPrefixRefl!1427 (List!25378 List!25378) Unit!38435)

(assert (=> bm!131819 (= call!131823 (lemmaIsPrefixRefl!1427 lt!817337 lt!817337))))

(declare-fun b!2189334 () Bool)

(assert (=> b!2189334 (= e!1398981 lt!817707)))

(declare-fun b!2189335 () Bool)

(declare-fun c!348343 () Bool)

(declare-fun call!131827 () Bool)

(assert (=> b!2189335 (= c!348343 call!131827)))

(declare-fun lt!817713 () Unit!38435)

(declare-fun lt!817702 () Unit!38435)

(assert (=> b!2189335 (= lt!817713 lt!817702)))

(assert (=> b!2189335 (= lt!817337 Nil!25294)))

(declare-fun call!131826 () Unit!38435)

(assert (=> b!2189335 (= lt!817702 call!131826)))

(declare-fun lt!817720 () Unit!38435)

(declare-fun lt!817715 () Unit!38435)

(assert (=> b!2189335 (= lt!817720 lt!817715)))

(declare-fun call!131824 () Bool)

(assert (=> b!2189335 call!131824))

(assert (=> b!2189335 (= lt!817715 call!131823)))

(declare-fun e!1398982 () tuple2!25108)

(assert (=> b!2189335 (= e!1398982 e!1398978)))

(declare-fun bm!131820 () Bool)

(assert (=> bm!131820 (= call!131822 (head!4674 lt!817337))))

(declare-fun b!2189336 () Bool)

(declare-fun e!1398979 () Unit!38435)

(declare-fun Unit!38441 () Unit!38435)

(assert (=> b!2189336 (= e!1398979 Unit!38441)))

(declare-fun lt!817694 () Unit!38435)

(assert (=> b!2189336 (= lt!817694 call!131823)))

(assert (=> b!2189336 call!131824))

(declare-fun lt!817698 () Unit!38435)

(assert (=> b!2189336 (= lt!817698 lt!817694)))

(declare-fun lt!817709 () Unit!38435)

(assert (=> b!2189336 (= lt!817709 call!131826)))

(assert (=> b!2189336 (= lt!817337 Nil!25294)))

(declare-fun lt!817699 () Unit!38435)

(assert (=> b!2189336 (= lt!817699 lt!817709)))

(assert (=> b!2189336 false))

(declare-fun b!2189337 () Bool)

(assert (=> b!2189337 (= e!1398975 call!131828)))

(declare-fun b!2189338 () Bool)

(assert (=> b!2189338 (= e!1398980 e!1398982)))

(declare-fun c!348341 () Bool)

(assert (=> b!2189338 (= c!348341 (= (size!19765 Nil!25294) (size!19765 lt!817337)))))

(declare-fun b!2189339 () Bool)

(declare-fun c!348344 () Bool)

(assert (=> b!2189339 (= c!348344 call!131827)))

(declare-fun lt!817706 () Unit!38435)

(declare-fun lt!817711 () Unit!38435)

(assert (=> b!2189339 (= lt!817706 lt!817711)))

(declare-fun lt!817719 () C!12256)

(declare-fun lt!817718 () List!25378)

(assert (=> b!2189339 (= (++!6416 (++!6416 Nil!25294 (Cons!25294 lt!817719 Nil!25294)) lt!817718) lt!817337)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!525 (List!25378 C!12256 List!25378 List!25378) Unit!38435)

(assert (=> b!2189339 (= lt!817711 (lemmaMoveElementToOtherListKeepsConcatEq!525 Nil!25294 lt!817719 lt!817718 lt!817337))))

(assert (=> b!2189339 (= lt!817718 (tail!3146 lt!817337))))

(assert (=> b!2189339 (= lt!817719 (head!4674 lt!817337))))

(declare-fun lt!817714 () Unit!38435)

(declare-fun lt!817696 () Unit!38435)

(assert (=> b!2189339 (= lt!817714 lt!817696)))

(assert (=> b!2189339 (isPrefix!2171 (++!6416 Nil!25294 (Cons!25294 (head!4674 (getSuffix!1052 lt!817337 Nil!25294)) Nil!25294)) lt!817337)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!397 (List!25378 List!25378) Unit!38435)

(assert (=> b!2189339 (= lt!817696 (lemmaAddHeadSuffixToPrefixStillPrefix!397 Nil!25294 lt!817337))))

(declare-fun lt!817716 () Unit!38435)

(declare-fun lt!817695 () Unit!38435)

(assert (=> b!2189339 (= lt!817716 lt!817695)))

(assert (=> b!2189339 (= lt!817695 (lemmaAddHeadSuffixToPrefixStillPrefix!397 Nil!25294 lt!817337))))

(assert (=> b!2189339 (= lt!817705 (++!6416 Nil!25294 (Cons!25294 (head!4674 lt!817337) Nil!25294)))))

(declare-fun lt!817697 () Unit!38435)

(assert (=> b!2189339 (= lt!817697 e!1398979)))

(declare-fun c!348342 () Bool)

(assert (=> b!2189339 (= c!348342 (= (size!19765 Nil!25294) (size!19765 lt!817337)))))

(declare-fun lt!817701 () Unit!38435)

(declare-fun lt!817704 () Unit!38435)

(assert (=> b!2189339 (= lt!817701 lt!817704)))

(assert (=> b!2189339 (<= (size!19765 Nil!25294) (size!19765 lt!817337))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!200 (List!25378 List!25378) Unit!38435)

(assert (=> b!2189339 (= lt!817704 (lemmaIsPrefixThenSmallerEqSize!200 Nil!25294 lt!817337))))

(assert (=> b!2189339 (= e!1398982 e!1398975)))

(declare-fun b!2189340 () Bool)

(declare-fun Unit!38442 () Unit!38435)

(assert (=> b!2189340 (= e!1398979 Unit!38442)))

(declare-fun bm!131821 () Bool)

(assert (=> bm!131821 (= call!131824 (isPrefix!2171 lt!817337 lt!817337))))

(declare-fun bm!131822 () Bool)

(declare-fun lemmaIsPrefixSameLengthThenSameList!373 (List!25378 List!25378 List!25378) Unit!38435)

(assert (=> bm!131822 (= call!131826 (lemmaIsPrefixSameLengthThenSameList!373 lt!817337 Nil!25294 lt!817337))))

(declare-fun b!2189341 () Bool)

(assert (=> b!2189341 (= e!1398978 (tuple2!25109 Nil!25294 Nil!25294))))

(declare-fun b!2189342 () Bool)

(assert (=> b!2189342 (= e!1398981 (tuple2!25109 Nil!25294 lt!817337))))

(declare-fun b!2189343 () Bool)

(assert (=> b!2189343 (= e!1398976 e!1398977)))

(declare-fun res!940527 () Bool)

(assert (=> b!2189343 (=> res!940527 e!1398977)))

(assert (=> b!2189343 (= res!940527 (isEmpty!14548 (_1!14924 lt!817700)))))

(declare-fun bm!131823 () Bool)

(assert (=> bm!131823 (= call!131827 (nullable!1715 r!12534))))

(declare-fun bm!131824 () Bool)

(assert (=> bm!131824 (= call!131825 (tail!3146 lt!817337))))

(assert (= (and d!656143 c!348345) b!2189332))

(assert (= (and d!656143 (not c!348345)) b!2189338))

(assert (= (and b!2189338 c!348341) b!2189335))

(assert (= (and b!2189338 (not c!348341)) b!2189339))

(assert (= (and b!2189335 c!348343) b!2189341))

(assert (= (and b!2189335 (not c!348343)) b!2189330))

(assert (= (and b!2189339 c!348342) b!2189336))

(assert (= (and b!2189339 (not c!348342)) b!2189340))

(assert (= (and b!2189339 c!348344) b!2189333))

(assert (= (and b!2189339 (not c!348344)) b!2189337))

(assert (= (and b!2189333 c!348346) b!2189342))

(assert (= (and b!2189333 (not c!348346)) b!2189334))

(assert (= (or b!2189333 b!2189337) bm!131820))

(assert (= (or b!2189333 b!2189337) bm!131824))

(assert (= (or b!2189333 b!2189337) bm!131817))

(assert (= (or b!2189333 b!2189337) bm!131818))

(assert (= (or b!2189335 b!2189336) bm!131821))

(assert (= (or b!2189335 b!2189336) bm!131819))

(assert (= (or b!2189335 b!2189336) bm!131822))

(assert (= (or b!2189335 b!2189339) bm!131823))

(assert (= (and d!656143 res!940526) b!2189343))

(assert (= (and b!2189343 (not res!940527)) b!2189331))

(assert (=> bm!131824 m!2631809))

(assert (=> bm!131820 m!2631815))

(declare-fun m!2632259 () Bool)

(assert (=> b!2189331 m!2632259))

(assert (=> b!2189331 m!2631609))

(declare-fun m!2632261 () Bool)

(assert (=> bm!131817 m!2632261))

(assert (=> b!2189339 m!2631609))

(declare-fun m!2632263 () Bool)

(assert (=> b!2189339 m!2632263))

(declare-fun m!2632265 () Bool)

(assert (=> b!2189339 m!2632265))

(declare-fun m!2632267 () Bool)

(assert (=> b!2189339 m!2632267))

(declare-fun m!2632269 () Bool)

(assert (=> b!2189339 m!2632269))

(declare-fun m!2632271 () Bool)

(assert (=> b!2189339 m!2632271))

(declare-fun m!2632273 () Bool)

(assert (=> b!2189339 m!2632273))

(declare-fun m!2632275 () Bool)

(assert (=> b!2189339 m!2632275))

(declare-fun m!2632277 () Bool)

(assert (=> b!2189339 m!2632277))

(assert (=> b!2189339 m!2631593))

(assert (=> b!2189339 m!2632269))

(assert (=> b!2189339 m!2631809))

(declare-fun m!2632279 () Bool)

(assert (=> b!2189339 m!2632279))

(assert (=> b!2189339 m!2632263))

(assert (=> b!2189339 m!2632277))

(declare-fun m!2632281 () Bool)

(assert (=> b!2189339 m!2632281))

(assert (=> b!2189339 m!2631815))

(declare-fun m!2632283 () Bool)

(assert (=> b!2189343 m!2632283))

(assert (=> bm!131823 m!2631747))

(assert (=> bm!131818 m!2631593))

(declare-fun m!2632285 () Bool)

(assert (=> bm!131818 m!2632285))

(declare-fun m!2632287 () Bool)

(assert (=> bm!131821 m!2632287))

(declare-fun m!2632289 () Bool)

(assert (=> d!656143 m!2632289))

(declare-fun m!2632291 () Bool)

(assert (=> d!656143 m!2632291))

(declare-fun m!2632293 () Bool)

(assert (=> d!656143 m!2632293))

(declare-fun m!2632295 () Bool)

(assert (=> d!656143 m!2632295))

(declare-fun m!2632297 () Bool)

(assert (=> d!656143 m!2632297))

(assert (=> d!656143 m!2631585))

(assert (=> d!656143 m!2632263))

(declare-fun m!2632299 () Bool)

(assert (=> d!656143 m!2632299))

(assert (=> d!656143 m!2632295))

(declare-fun m!2632301 () Bool)

(assert (=> b!2189333 m!2632301))

(declare-fun m!2632303 () Bool)

(assert (=> bm!131822 m!2632303))

(declare-fun m!2632305 () Bool)

(assert (=> bm!131819 m!2632305))

(assert (=> b!2188673 d!656143))

(declare-fun d!656145 () Bool)

(assert (=> d!656145 (isPrefix!2171 (_1!14924 lt!817325) (++!6416 (_1!14924 lt!817325) (_2!14924 lt!817325)))))

(declare-fun lt!817722 () Unit!38435)

(assert (=> d!656145 (= lt!817722 (choose!12970 (_1!14924 lt!817325) (_2!14924 lt!817325)))))

(assert (=> d!656145 (= (lemmaConcatTwoListThenFirstIsPrefix!1454 (_1!14924 lt!817325) (_2!14924 lt!817325)) lt!817722)))

(declare-fun bs!448313 () Bool)

(assert (= bs!448313 d!656145))

(assert (=> bs!448313 m!2631625))

(assert (=> bs!448313 m!2631625))

(declare-fun m!2632307 () Bool)

(assert (=> bs!448313 m!2632307))

(declare-fun m!2632309 () Bool)

(assert (=> bs!448313 m!2632309))

(assert (=> b!2188673 d!656145))

(declare-fun d!656147 () Bool)

(declare-fun lt!817723 () Int)

(assert (=> d!656147 (= lt!817723 (size!19765 (list!9716 (_1!14923 lt!817343))))))

(assert (=> d!656147 (= lt!817723 (size!19767 (c!348159 (_1!14923 lt!817343))))))

(assert (=> d!656147 (= (size!19764 (_1!14923 lt!817343)) lt!817723)))

(declare-fun bs!448314 () Bool)

(assert (= bs!448314 d!656147))

(assert (=> bs!448314 m!2631669))

(assert (=> bs!448314 m!2631669))

(declare-fun m!2632311 () Bool)

(assert (=> bs!448314 m!2632311))

(declare-fun m!2632313 () Bool)

(assert (=> bs!448314 m!2632313))

(assert (=> b!2188663 d!656147))

(declare-fun d!656149 () Bool)

(assert (=> d!656149 (= (matchR!2804 r!12534 (_1!14924 lt!817325)) (matchZipper!171 z!4055 (_1!14924 lt!817325)))))

(declare-fun lt!817726 () Unit!38435)

(declare-fun choose!12974 ((InoxSet Context!3250) List!25380 Regex!6055 List!25378) Unit!38435)

(assert (=> d!656149 (= lt!817726 (choose!12974 z!4055 lt!817331 r!12534 (_1!14924 lt!817325)))))

(assert (=> d!656149 (validRegex!2331 r!12534)))

(assert (=> d!656149 (= (theoremZipperRegexEquiv!81 z!4055 lt!817331 r!12534 (_1!14924 lt!817325)) lt!817726)))

(declare-fun bs!448315 () Bool)

(assert (= bs!448315 d!656149))

(assert (=> bs!448315 m!2631635))

(assert (=> bs!448315 m!2631645))

(declare-fun m!2632315 () Bool)

(assert (=> bs!448315 m!2632315))

(assert (=> bs!448315 m!2631585))

(assert (=> b!2188663 d!656149))

(declare-fun d!656151 () Bool)

(declare-fun lt!817727 () Int)

(assert (=> d!656151 (>= lt!817727 0)))

(declare-fun e!1398983 () Int)

(assert (=> d!656151 (= lt!817727 e!1398983)))

(declare-fun c!348347 () Bool)

(assert (=> d!656151 (= c!348347 ((_ is Nil!25294) (_1!14924 lt!817325)))))

(assert (=> d!656151 (= (size!19765 (_1!14924 lt!817325)) lt!817727)))

(declare-fun b!2189344 () Bool)

(assert (=> b!2189344 (= e!1398983 0)))

(declare-fun b!2189345 () Bool)

(assert (=> b!2189345 (= e!1398983 (+ 1 (size!19765 (t!197976 (_1!14924 lt!817325)))))))

(assert (= (and d!656151 c!348347) b!2189344))

(assert (= (and d!656151 (not c!348347)) b!2189345))

(declare-fun m!2632317 () Bool)

(assert (=> b!2189345 m!2632317))

(assert (=> b!2188663 d!656151))

(declare-fun d!656153 () Bool)

(assert (=> d!656153 (= (matchR!2804 r!12534 lt!817334) (matchZipper!171 z!4055 lt!817334))))

(declare-fun lt!817728 () Unit!38435)

(assert (=> d!656153 (= lt!817728 (choose!12974 z!4055 lt!817331 r!12534 lt!817334))))

(assert (=> d!656153 (validRegex!2331 r!12534)))

(assert (=> d!656153 (= (theoremZipperRegexEquiv!81 z!4055 lt!817331 r!12534 lt!817334) lt!817728)))

(declare-fun bs!448316 () Bool)

(assert (= bs!448316 d!656153))

(assert (=> bs!448316 m!2631647))

(assert (=> bs!448316 m!2631599))

(declare-fun m!2632319 () Bool)

(assert (=> bs!448316 m!2632319))

(assert (=> bs!448316 m!2631585))

(assert (=> b!2188663 d!656153))

(declare-fun d!656155 () Bool)

(declare-fun c!348348 () Bool)

(assert (=> d!656155 (= c!348348 (isEmpty!14548 (_1!14924 lt!817325)))))

(declare-fun e!1398984 () Bool)

(assert (=> d!656155 (= (matchZipper!171 z!4055 (_1!14924 lt!817325)) e!1398984)))

(declare-fun b!2189346 () Bool)

(assert (=> b!2189346 (= e!1398984 (nullableZipper!335 z!4055))))

(declare-fun b!2189347 () Bool)

(assert (=> b!2189347 (= e!1398984 (matchZipper!171 (derivationStepZipper!144 z!4055 (head!4674 (_1!14924 lt!817325))) (tail!3146 (_1!14924 lt!817325))))))

(assert (= (and d!656155 c!348348) b!2189346))

(assert (= (and d!656155 (not c!348348)) b!2189347))

(assert (=> d!656155 m!2631657))

(assert (=> b!2189346 m!2631617))

(assert (=> b!2189347 m!2631847))

(assert (=> b!2189347 m!2631847))

(declare-fun m!2632321 () Bool)

(assert (=> b!2189347 m!2632321))

(assert (=> b!2189347 m!2631851))

(assert (=> b!2189347 m!2632321))

(assert (=> b!2189347 m!2631851))

(declare-fun m!2632323 () Bool)

(assert (=> b!2189347 m!2632323))

(assert (=> b!2188663 d!656155))

(declare-fun b!2189348 () Bool)

(declare-fun e!1398991 () Bool)

(declare-fun e!1398986 () Bool)

(assert (=> b!2189348 (= e!1398991 e!1398986)))

(declare-fun res!940532 () Bool)

(assert (=> b!2189348 (=> (not res!940532) (not e!1398986))))

(declare-fun lt!817729 () Bool)

(assert (=> b!2189348 (= res!940532 (not lt!817729))))

(declare-fun b!2189349 () Bool)

(declare-fun res!940531 () Bool)

(assert (=> b!2189349 (=> res!940531 e!1398991)))

(declare-fun e!1398987 () Bool)

(assert (=> b!2189349 (= res!940531 e!1398987)))

(declare-fun res!940530 () Bool)

(assert (=> b!2189349 (=> (not res!940530) (not e!1398987))))

(assert (=> b!2189349 (= res!940530 lt!817729)))

(declare-fun b!2189350 () Bool)

(assert (=> b!2189350 (= e!1398987 (= (head!4674 lt!817334) (c!348158 r!12534)))))

(declare-fun b!2189351 () Bool)

(declare-fun res!940528 () Bool)

(assert (=> b!2189351 (=> res!940528 e!1398991)))

(assert (=> b!2189351 (= res!940528 (not ((_ is ElementMatch!6055) r!12534)))))

(declare-fun e!1398990 () Bool)

(assert (=> b!2189351 (= e!1398990 e!1398991)))

(declare-fun b!2189352 () Bool)

(declare-fun res!940533 () Bool)

(assert (=> b!2189352 (=> (not res!940533) (not e!1398987))))

(assert (=> b!2189352 (= res!940533 (isEmpty!14548 (tail!3146 lt!817334)))))

(declare-fun b!2189353 () Bool)

(declare-fun e!1398985 () Bool)

(assert (=> b!2189353 (= e!1398985 (matchR!2804 (derivativeStep!1458 r!12534 (head!4674 lt!817334)) (tail!3146 lt!817334)))))

(declare-fun bm!131825 () Bool)

(declare-fun call!131830 () Bool)

(assert (=> bm!131825 (= call!131830 (isEmpty!14548 lt!817334))))

(declare-fun b!2189354 () Bool)

(declare-fun e!1398989 () Bool)

(assert (=> b!2189354 (= e!1398989 (= lt!817729 call!131830))))

(declare-fun b!2189355 () Bool)

(declare-fun e!1398988 () Bool)

(assert (=> b!2189355 (= e!1398986 e!1398988)))

(declare-fun res!940534 () Bool)

(assert (=> b!2189355 (=> res!940534 e!1398988)))

(assert (=> b!2189355 (= res!940534 call!131830)))

(declare-fun b!2189357 () Bool)

(declare-fun res!940535 () Bool)

(assert (=> b!2189357 (=> res!940535 e!1398988)))

(assert (=> b!2189357 (= res!940535 (not (isEmpty!14548 (tail!3146 lt!817334))))))

(declare-fun b!2189358 () Bool)

(assert (=> b!2189358 (= e!1398988 (not (= (head!4674 lt!817334) (c!348158 r!12534))))))

(declare-fun b!2189359 () Bool)

(assert (=> b!2189359 (= e!1398989 e!1398990)))

(declare-fun c!348350 () Bool)

(assert (=> b!2189359 (= c!348350 ((_ is EmptyLang!6055) r!12534))))

(declare-fun b!2189360 () Bool)

(assert (=> b!2189360 (= e!1398985 (nullable!1715 r!12534))))

(declare-fun b!2189361 () Bool)

(assert (=> b!2189361 (= e!1398990 (not lt!817729))))

(declare-fun b!2189356 () Bool)

(declare-fun res!940529 () Bool)

(assert (=> b!2189356 (=> (not res!940529) (not e!1398987))))

(assert (=> b!2189356 (= res!940529 (not call!131830))))

(declare-fun d!656157 () Bool)

(assert (=> d!656157 e!1398989))

(declare-fun c!348351 () Bool)

(assert (=> d!656157 (= c!348351 ((_ is EmptyExpr!6055) r!12534))))

(assert (=> d!656157 (= lt!817729 e!1398985)))

(declare-fun c!348349 () Bool)

(assert (=> d!656157 (= c!348349 (isEmpty!14548 lt!817334))))

(assert (=> d!656157 (validRegex!2331 r!12534)))

(assert (=> d!656157 (= (matchR!2804 r!12534 lt!817334) lt!817729)))

(assert (= (and d!656157 c!348349) b!2189360))

(assert (= (and d!656157 (not c!348349)) b!2189353))

(assert (= (and d!656157 c!348351) b!2189354))

(assert (= (and d!656157 (not c!348351)) b!2189359))

(assert (= (and b!2189359 c!348350) b!2189361))

(assert (= (and b!2189359 (not c!348350)) b!2189351))

(assert (= (and b!2189351 (not res!940528)) b!2189349))

(assert (= (and b!2189349 res!940530) b!2189356))

(assert (= (and b!2189356 res!940529) b!2189352))

(assert (= (and b!2189352 res!940533) b!2189350))

(assert (= (and b!2189349 (not res!940531)) b!2189348))

(assert (= (and b!2189348 res!940532) b!2189355))

(assert (= (and b!2189355 (not res!940534)) b!2189357))

(assert (= (and b!2189357 (not res!940535)) b!2189358))

(assert (= (or b!2189354 b!2189355 b!2189356) bm!131825))

(assert (=> d!656157 m!2632107))

(assert (=> d!656157 m!2631585))

(assert (=> b!2189353 m!2631813))

(assert (=> b!2189353 m!2631813))

(declare-fun m!2632325 () Bool)

(assert (=> b!2189353 m!2632325))

(assert (=> b!2189353 m!2631807))

(assert (=> b!2189353 m!2632325))

(assert (=> b!2189353 m!2631807))

(declare-fun m!2632327 () Bool)

(assert (=> b!2189353 m!2632327))

(assert (=> b!2189357 m!2631807))

(assert (=> b!2189357 m!2631807))

(declare-fun m!2632329 () Bool)

(assert (=> b!2189357 m!2632329))

(assert (=> b!2189350 m!2631813))

(assert (=> b!2189352 m!2631807))

(assert (=> b!2189352 m!2631807))

(assert (=> b!2189352 m!2632329))

(assert (=> b!2189358 m!2631813))

(assert (=> b!2189360 m!2631747))

(assert (=> bm!131825 m!2632107))

(assert (=> b!2188663 d!656157))

(declare-fun b!2189364 () Bool)

(declare-fun e!1398994 () Bool)

(assert (=> b!2189364 (= e!1398994 (isPrefix!2171 (tail!3146 (_1!14924 lt!817325)) (tail!3146 lt!817337)))))

(declare-fun b!2189365 () Bool)

(declare-fun e!1398993 () Bool)

(assert (=> b!2189365 (= e!1398993 (>= (size!19765 lt!817337) (size!19765 (_1!14924 lt!817325))))))

(declare-fun d!656159 () Bool)

(assert (=> d!656159 e!1398993))

(declare-fun res!940536 () Bool)

(assert (=> d!656159 (=> res!940536 e!1398993)))

(declare-fun lt!817730 () Bool)

(assert (=> d!656159 (= res!940536 (not lt!817730))))

(declare-fun e!1398992 () Bool)

(assert (=> d!656159 (= lt!817730 e!1398992)))

(declare-fun res!940537 () Bool)

(assert (=> d!656159 (=> res!940537 e!1398992)))

(assert (=> d!656159 (= res!940537 ((_ is Nil!25294) (_1!14924 lt!817325)))))

(assert (=> d!656159 (= (isPrefix!2171 (_1!14924 lt!817325) lt!817337) lt!817730)))

(declare-fun b!2189362 () Bool)

(assert (=> b!2189362 (= e!1398992 e!1398994)))

(declare-fun res!940538 () Bool)

(assert (=> b!2189362 (=> (not res!940538) (not e!1398994))))

(assert (=> b!2189362 (= res!940538 (not ((_ is Nil!25294) lt!817337)))))

(declare-fun b!2189363 () Bool)

(declare-fun res!940539 () Bool)

(assert (=> b!2189363 (=> (not res!940539) (not e!1398994))))

(assert (=> b!2189363 (= res!940539 (= (head!4674 (_1!14924 lt!817325)) (head!4674 lt!817337)))))

(assert (= (and d!656159 (not res!940537)) b!2189362))

(assert (= (and b!2189362 res!940538) b!2189363))

(assert (= (and b!2189363 res!940539) b!2189364))

(assert (= (and d!656159 (not res!940536)) b!2189365))

(assert (=> b!2189364 m!2631851))

(assert (=> b!2189364 m!2631809))

(assert (=> b!2189364 m!2631851))

(assert (=> b!2189364 m!2631809))

(declare-fun m!2632331 () Bool)

(assert (=> b!2189364 m!2632331))

(assert (=> b!2189365 m!2631593))

(assert (=> b!2189365 m!2631649))

(assert (=> b!2189363 m!2631847))

(assert (=> b!2189363 m!2631815))

(assert (=> b!2188682 d!656159))

(declare-fun b!2189378 () Bool)

(declare-fun e!1398997 () Bool)

(declare-fun tp!682468 () Bool)

(assert (=> b!2189378 (= e!1398997 tp!682468)))

(assert (=> b!2188679 (= tp!682396 e!1398997)))

(declare-fun b!2189379 () Bool)

(declare-fun tp!682469 () Bool)

(declare-fun tp!682470 () Bool)

(assert (=> b!2189379 (= e!1398997 (and tp!682469 tp!682470))))

(declare-fun b!2189376 () Bool)

(assert (=> b!2189376 (= e!1398997 tp_is_empty!9717)))

(declare-fun b!2189377 () Bool)

(declare-fun tp!682472 () Bool)

(declare-fun tp!682471 () Bool)

(assert (=> b!2189377 (= e!1398997 (and tp!682472 tp!682471))))

(assert (= (and b!2188679 ((_ is ElementMatch!6055) (regOne!12622 r!12534))) b!2189376))

(assert (= (and b!2188679 ((_ is Concat!10357) (regOne!12622 r!12534))) b!2189377))

(assert (= (and b!2188679 ((_ is Star!6055) (regOne!12622 r!12534))) b!2189378))

(assert (= (and b!2188679 ((_ is Union!6055) (regOne!12622 r!12534))) b!2189379))

(declare-fun b!2189382 () Bool)

(declare-fun e!1398998 () Bool)

(declare-fun tp!682473 () Bool)

(assert (=> b!2189382 (= e!1398998 tp!682473)))

(assert (=> b!2188679 (= tp!682390 e!1398998)))

(declare-fun b!2189383 () Bool)

(declare-fun tp!682474 () Bool)

(declare-fun tp!682475 () Bool)

(assert (=> b!2189383 (= e!1398998 (and tp!682474 tp!682475))))

(declare-fun b!2189380 () Bool)

(assert (=> b!2189380 (= e!1398998 tp_is_empty!9717)))

(declare-fun b!2189381 () Bool)

(declare-fun tp!682477 () Bool)

(declare-fun tp!682476 () Bool)

(assert (=> b!2189381 (= e!1398998 (and tp!682477 tp!682476))))

(assert (= (and b!2188679 ((_ is ElementMatch!6055) (regTwo!12622 r!12534))) b!2189380))

(assert (= (and b!2188679 ((_ is Concat!10357) (regTwo!12622 r!12534))) b!2189381))

(assert (= (and b!2188679 ((_ is Star!6055) (regTwo!12622 r!12534))) b!2189382))

(assert (= (and b!2188679 ((_ is Union!6055) (regTwo!12622 r!12534))) b!2189383))

(declare-fun tp!682486 () Bool)

(declare-fun b!2189392 () Bool)

(declare-fun tp!682485 () Bool)

(declare-fun e!1399003 () Bool)

(assert (=> b!2189392 (= e!1399003 (and (inv!33643 (left!19413 (c!348159 input!5540))) tp!682485 (inv!33643 (right!19743 (c!348159 input!5540))) tp!682486))))

(declare-fun b!2189394 () Bool)

(declare-fun e!1399004 () Bool)

(declare-fun tp!682484 () Bool)

(assert (=> b!2189394 (= e!1399004 tp!682484)))

(declare-fun b!2189393 () Bool)

(declare-fun inv!33650 (IArray!16387) Bool)

(assert (=> b!2189393 (= e!1399003 (and (inv!33650 (xs!11133 (c!348159 input!5540))) e!1399004))))

(assert (=> b!2188676 (= tp!682393 (and (inv!33643 (c!348159 input!5540)) e!1399003))))

(assert (= (and b!2188676 ((_ is Node!8191) (c!348159 input!5540))) b!2189392))

(assert (= b!2189393 b!2189394))

(assert (= (and b!2188676 ((_ is Leaf!11986) (c!348159 input!5540))) b!2189393))

(declare-fun m!2632333 () Bool)

(assert (=> b!2189392 m!2632333))

(declare-fun m!2632335 () Bool)

(assert (=> b!2189392 m!2632335))

(declare-fun m!2632337 () Bool)

(assert (=> b!2189393 m!2632337))

(assert (=> b!2188676 m!2631583))

(declare-fun b!2189397 () Bool)

(declare-fun e!1399005 () Bool)

(declare-fun tp!682487 () Bool)

(assert (=> b!2189397 (= e!1399005 tp!682487)))

(assert (=> b!2188661 (= tp!682391 e!1399005)))

(declare-fun b!2189398 () Bool)

(declare-fun tp!682488 () Bool)

(declare-fun tp!682489 () Bool)

(assert (=> b!2189398 (= e!1399005 (and tp!682488 tp!682489))))

(declare-fun b!2189395 () Bool)

(assert (=> b!2189395 (= e!1399005 tp_is_empty!9717)))

(declare-fun b!2189396 () Bool)

(declare-fun tp!682491 () Bool)

(declare-fun tp!682490 () Bool)

(assert (=> b!2189396 (= e!1399005 (and tp!682491 tp!682490))))

(assert (= (and b!2188661 ((_ is ElementMatch!6055) (regOne!12623 r!12534))) b!2189395))

(assert (= (and b!2188661 ((_ is Concat!10357) (regOne!12623 r!12534))) b!2189396))

(assert (= (and b!2188661 ((_ is Star!6055) (regOne!12623 r!12534))) b!2189397))

(assert (= (and b!2188661 ((_ is Union!6055) (regOne!12623 r!12534))) b!2189398))

(declare-fun b!2189401 () Bool)

(declare-fun e!1399006 () Bool)

(declare-fun tp!682492 () Bool)

(assert (=> b!2189401 (= e!1399006 tp!682492)))

(assert (=> b!2188661 (= tp!682395 e!1399006)))

(declare-fun b!2189402 () Bool)

(declare-fun tp!682493 () Bool)

(declare-fun tp!682494 () Bool)

(assert (=> b!2189402 (= e!1399006 (and tp!682493 tp!682494))))

(declare-fun b!2189399 () Bool)

(assert (=> b!2189399 (= e!1399006 tp_is_empty!9717)))

(declare-fun b!2189400 () Bool)

(declare-fun tp!682496 () Bool)

(declare-fun tp!682495 () Bool)

(assert (=> b!2189400 (= e!1399006 (and tp!682496 tp!682495))))

(assert (= (and b!2188661 ((_ is ElementMatch!6055) (regTwo!12623 r!12534))) b!2189399))

(assert (= (and b!2188661 ((_ is Concat!10357) (regTwo!12623 r!12534))) b!2189400))

(assert (= (and b!2188661 ((_ is Star!6055) (regTwo!12623 r!12534))) b!2189401))

(assert (= (and b!2188661 ((_ is Union!6055) (regTwo!12623 r!12534))) b!2189402))

(declare-fun b!2189407 () Bool)

(declare-fun e!1399009 () Bool)

(declare-fun tp!682501 () Bool)

(declare-fun tp!682502 () Bool)

(assert (=> b!2189407 (= e!1399009 (and tp!682501 tp!682502))))

(assert (=> b!2188670 (= tp!682392 e!1399009)))

(assert (= (and b!2188670 ((_ is Cons!25295) (exprs!2125 setElem!18384))) b!2189407))

(declare-fun condSetEmpty!18390 () Bool)

(assert (=> setNonEmpty!18384 (= condSetEmpty!18390 (= setRest!18384 ((as const (Array Context!3250 Bool)) false)))))

(declare-fun setRes!18390 () Bool)

(assert (=> setNonEmpty!18384 (= tp!682394 setRes!18390)))

(declare-fun setIsEmpty!18390 () Bool)

(assert (=> setIsEmpty!18390 setRes!18390))

(declare-fun setElem!18390 () Context!3250)

(declare-fun setNonEmpty!18390 () Bool)

(declare-fun e!1399012 () Bool)

(declare-fun tp!682507 () Bool)

(assert (=> setNonEmpty!18390 (= setRes!18390 (and tp!682507 (inv!33644 setElem!18390) e!1399012))))

(declare-fun setRest!18390 () (InoxSet Context!3250))

(assert (=> setNonEmpty!18390 (= setRest!18384 ((_ map or) (store ((as const (Array Context!3250 Bool)) false) setElem!18390 true) setRest!18390))))

(declare-fun b!2189412 () Bool)

(declare-fun tp!682508 () Bool)

(assert (=> b!2189412 (= e!1399012 tp!682508)))

(assert (= (and setNonEmpty!18384 condSetEmpty!18390) setIsEmpty!18390))

(assert (= (and setNonEmpty!18384 (not condSetEmpty!18390)) setNonEmpty!18390))

(assert (= setNonEmpty!18390 b!2189412))

(declare-fun m!2632339 () Bool)

(assert (=> setNonEmpty!18390 m!2632339))

(declare-fun b!2189413 () Bool)

(declare-fun tp!682510 () Bool)

(declare-fun e!1399013 () Bool)

(declare-fun tp!682511 () Bool)

(assert (=> b!2189413 (= e!1399013 (and (inv!33643 (left!19413 (c!348159 totalInput!977))) tp!682510 (inv!33643 (right!19743 (c!348159 totalInput!977))) tp!682511))))

(declare-fun b!2189415 () Bool)

(declare-fun e!1399014 () Bool)

(declare-fun tp!682509 () Bool)

(assert (=> b!2189415 (= e!1399014 tp!682509)))

(declare-fun b!2189414 () Bool)

(assert (=> b!2189414 (= e!1399013 (and (inv!33650 (xs!11133 (c!348159 totalInput!977))) e!1399014))))

(assert (=> b!2188671 (= tp!682397 (and (inv!33643 (c!348159 totalInput!977)) e!1399013))))

(assert (= (and b!2188671 ((_ is Node!8191) (c!348159 totalInput!977))) b!2189413))

(assert (= b!2189414 b!2189415))

(assert (= (and b!2188671 ((_ is Leaf!11986) (c!348159 totalInput!977))) b!2189414))

(declare-fun m!2632341 () Bool)

(assert (=> b!2189413 m!2632341))

(declare-fun m!2632343 () Bool)

(assert (=> b!2189413 m!2632343))

(declare-fun m!2632345 () Bool)

(assert (=> b!2189414 m!2632345))

(assert (=> b!2188671 m!2631673))

(declare-fun b!2189418 () Bool)

(declare-fun e!1399015 () Bool)

(declare-fun tp!682512 () Bool)

(assert (=> b!2189418 (= e!1399015 tp!682512)))

(assert (=> b!2188683 (= tp!682398 e!1399015)))

(declare-fun b!2189419 () Bool)

(declare-fun tp!682513 () Bool)

(declare-fun tp!682514 () Bool)

(assert (=> b!2189419 (= e!1399015 (and tp!682513 tp!682514))))

(declare-fun b!2189416 () Bool)

(assert (=> b!2189416 (= e!1399015 tp_is_empty!9717)))

(declare-fun b!2189417 () Bool)

(declare-fun tp!682516 () Bool)

(declare-fun tp!682515 () Bool)

(assert (=> b!2189417 (= e!1399015 (and tp!682516 tp!682515))))

(assert (= (and b!2188683 ((_ is ElementMatch!6055) (reg!6384 r!12534))) b!2189416))

(assert (= (and b!2188683 ((_ is Concat!10357) (reg!6384 r!12534))) b!2189417))

(assert (= (and b!2188683 ((_ is Star!6055) (reg!6384 r!12534))) b!2189418))

(assert (= (and b!2188683 ((_ is Union!6055) (reg!6384 r!12534))) b!2189419))

(check-sat (not b!2189281) (not bm!131824) (not d!656157) (not b!2188959) (not d!656039) (not b!2189358) (not b!2189381) (not d!656035) (not b!2189297) (not setNonEmpty!18390) (not b!2189357) (not bm!131817) (not b!2189345) (not b!2189161) (not b!2189283) (not b!2188964) (not b!2188671) (not b!2189162) (not bm!131771) (not b!2189243) (not b!2189290) (not d!656149) (not bm!131823) (not b!2189152) (not b!2188899) (not b!2189363) (not b!2188998) (not b!2189400) (not d!656023) (not d!656155) (not b!2189402) (not d!656041) (not d!656147) (not b!2189002) (not b!2189401) (not d!656031) (not d!656089) (not b!2188922) (not bm!131752) (not b!2189289) (not b!2188976) (not b!2188921) (not d!655993) (not b!2189418) tp_is_empty!9717 (not b!2188951) (not b!2188767) (not b!2189417) (not b!2189353) (not bm!131768) (not b!2189278) (not b!2189242) (not b!2188898) (not b!2189288) (not b!2189151) (not b!2189282) (not b!2188768) (not b!2189291) (not b!2189343) (not d!656091) (not bm!131767) (not b!2189412) (not d!656153) (not d!656009) (not b!2188897) (not b!2189383) (not b!2189364) (not d!656145) (not b!2189379) (not b!2188926) (not d!655997) (not d!656135) (not b!2188775) (not b!2188962) (not b!2189333) (not b!2189392) (not b!2188952) (not bm!131762) (not d!656019) (not bm!131764) (not b!2188887) (not b!2189346) (not bm!131821) (not b!2188999) (not b!2188970) (not b!2189331) (not b!2188878) (not b!2189148) (not bm!131825) (not b!2189301) (not b!2189153) (not b!2188773) (not b!2188904) (not b!2189286) (not b!2188772) (not b!2189146) (not b!2189295) (not d!656003) (not d!656131) (not b!2189415) (not d!656025) (not bm!131818) (not b!2189365) (not d!656027) (not bm!131819) (not b!2189414) (not b!2189279) (not b!2189382) (not bm!131820) (not d!656137) (not b!2189352) (not b!2188765) (not d!656021) (not b!2188965) (not b!2189393) (not b!2189350) (not b!2188885) (not b!2189397) (not b!2189407) (not d!656037) (not b!2189396) (not b!2189413) (not b!2189299) (not d!656127) (not b!2189377) (not d!655989) (not bm!131822) (not d!656123) (not b!2189394) (not d!656011) (not b!2189398) (not b!2188969) (not b!2189003) (not d!655963) (not b!2188676) (not b!2188905) (not b!2189360) (not b!2188920) (not d!656029) (not d!656143) (not b!2189419) (not d!655999) (not b!2188851) (not d!656013) (not d!656001) (not b!2189378) (not b!2189298) (not b!2189339) (not d!656033) (not b!2188972) (not b!2189347))
(check-sat)
