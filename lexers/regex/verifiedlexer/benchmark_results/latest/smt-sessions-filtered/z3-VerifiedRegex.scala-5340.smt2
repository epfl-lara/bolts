; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!272828 () Bool)

(assert start!272828)

(declare-fun res!1171822 () Bool)

(declare-fun e!1780434 () Bool)

(assert (=> start!272828 (=> (not res!1171822) (not e!1780434))))

(declare-fun i!1825 () Int)

(assert (=> start!272828 (= res!1171822 (>= i!1825 0))))

(assert (=> start!272828 e!1780434))

(assert (=> start!272828 true))

(declare-datatypes ((C!16776 0))(
  ( (C!16777 (val!10368 Int)) )
))
(declare-datatypes ((List!33034 0))(
  ( (Nil!32910) (Cons!32910 (h!38330 C!16776) (t!230038 List!33034)) )
))
(declare-datatypes ((IArray!20409 0))(
  ( (IArray!20410 (innerList!10262 List!33034)) )
))
(declare-datatypes ((Conc!10202 0))(
  ( (Node!10202 (left!24834 Conc!10202) (right!25164 Conc!10202) (csize!20634 Int) (cheight!10413 Int)) (Leaf!15543 (xs!13314 IArray!20409) (csize!20635 Int)) (Empty!10202) )
))
(declare-datatypes ((BalanceConc!20042 0))(
  ( (BalanceConc!20043 (c!456441 Conc!10202)) )
))
(declare-fun input!3732 () BalanceConc!20042)

(declare-fun e!1780431 () Bool)

(declare-fun inv!44748 (BalanceConc!20042) Bool)

(assert (=> start!272828 (and (inv!44748 input!3732) e!1780431)))

(declare-fun condSetEmpty!24757 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!8303 0))(
  ( (ElementMatch!8303 (c!456442 C!16776)) (Concat!13443 (regOne!17118 Regex!8303) (regTwo!17118 Regex!8303)) (EmptyExpr!8303) (Star!8303 (reg!8632 Regex!8303)) (EmptyLang!8303) (Union!8303 (regOne!17119 Regex!8303) (regTwo!17119 Regex!8303)) )
))
(declare-datatypes ((List!33035 0))(
  ( (Nil!32911) (Cons!32911 (h!38331 Regex!8303) (t!230039 List!33035)) )
))
(declare-datatypes ((Context!4938 0))(
  ( (Context!4939 (exprs!2969 List!33035)) )
))
(declare-fun z!592 () (InoxSet Context!4938))

(assert (=> start!272828 (= condSetEmpty!24757 (= z!592 ((as const (Array Context!4938 Bool)) false)))))

(declare-fun setRes!24757 () Bool)

(assert (=> start!272828 setRes!24757))

(declare-fun b!2815523 () Bool)

(declare-fun e!1780433 () Bool)

(declare-fun e!1780435 () Bool)

(assert (=> b!2815523 (= e!1780433 e!1780435)))

(declare-fun res!1171823 () Bool)

(assert (=> b!2815523 (=> (not res!1171823) (not e!1780435))))

(declare-fun lt!1005713 () List!33034)

(declare-fun isEmpty!18230 (List!33034) Bool)

(assert (=> b!2815523 (= res!1171823 (isEmpty!18230 lt!1005713))))

(declare-fun dropList!998 (BalanceConc!20042 Int) List!33034)

(assert (=> b!2815523 (= lt!1005713 (dropList!998 input!3732 i!1825))))

(declare-fun b!2815524 () Bool)

(declare-fun e!1780432 () Bool)

(declare-fun tp!898812 () Bool)

(assert (=> b!2815524 (= e!1780432 tp!898812)))

(declare-fun b!2815525 () Bool)

(declare-fun matchZipper!393 ((InoxSet Context!4938) List!33034) Bool)

(declare-fun matchZipperSequence!38 ((InoxSet Context!4938) BalanceConc!20042 Int) Bool)

(assert (=> b!2815525 (= e!1780435 (not (= (matchZipper!393 z!592 lt!1005713) (matchZipperSequence!38 z!592 input!3732 i!1825))))))

(declare-fun setIsEmpty!24757 () Bool)

(assert (=> setIsEmpty!24757 setRes!24757))

(declare-fun b!2815526 () Bool)

(declare-fun tp!898813 () Bool)

(declare-fun inv!44749 (Conc!10202) Bool)

(assert (=> b!2815526 (= e!1780431 (and (inv!44749 (c!456441 input!3732)) tp!898813))))

(declare-fun setNonEmpty!24757 () Bool)

(declare-fun tp!898814 () Bool)

(declare-fun setElem!24757 () Context!4938)

(declare-fun inv!44750 (Context!4938) Bool)

(assert (=> setNonEmpty!24757 (= setRes!24757 (and tp!898814 (inv!44750 setElem!24757) e!1780432))))

(declare-fun setRest!24757 () (InoxSet Context!4938))

(assert (=> setNonEmpty!24757 (= z!592 ((_ map or) (store ((as const (Array Context!4938 Bool)) false) setElem!24757 true) setRest!24757))))

(declare-fun b!2815527 () Bool)

(assert (=> b!2815527 (= e!1780434 e!1780433)))

(declare-fun res!1171824 () Bool)

(assert (=> b!2815527 (=> (not res!1171824) (not e!1780433))))

(declare-fun lt!1005712 () Int)

(assert (=> b!2815527 (= res!1171824 (and (<= i!1825 lt!1005712) (= i!1825 lt!1005712)))))

(declare-fun size!25654 (BalanceConc!20042) Int)

(assert (=> b!2815527 (= lt!1005712 (size!25654 input!3732))))

(assert (= (and start!272828 res!1171822) b!2815527))

(assert (= (and b!2815527 res!1171824) b!2815523))

(assert (= (and b!2815523 res!1171823) b!2815525))

(assert (= start!272828 b!2815526))

(assert (= (and start!272828 condSetEmpty!24757) setIsEmpty!24757))

(assert (= (and start!272828 (not condSetEmpty!24757)) setNonEmpty!24757))

(assert (= setNonEmpty!24757 b!2815524))

(declare-fun m!3246501 () Bool)

(assert (=> b!2815523 m!3246501))

(declare-fun m!3246503 () Bool)

(assert (=> b!2815523 m!3246503))

(declare-fun m!3246505 () Bool)

(assert (=> start!272828 m!3246505))

(declare-fun m!3246507 () Bool)

(assert (=> b!2815525 m!3246507))

(declare-fun m!3246509 () Bool)

(assert (=> b!2815525 m!3246509))

(declare-fun m!3246511 () Bool)

(assert (=> b!2815527 m!3246511))

(declare-fun m!3246513 () Bool)

(assert (=> b!2815526 m!3246513))

(declare-fun m!3246515 () Bool)

(assert (=> setNonEmpty!24757 m!3246515))

(check-sat (not b!2815525) (not b!2815526) (not b!2815527) (not start!272828) (not setNonEmpty!24757) (not b!2815523) (not b!2815524))
(check-sat)
(get-model)

(declare-fun d!817723 () Bool)

(declare-fun lt!1005716 () Int)

(declare-fun size!25655 (List!33034) Int)

(declare-fun list!12344 (BalanceConc!20042) List!33034)

(assert (=> d!817723 (= lt!1005716 (size!25655 (list!12344 input!3732)))))

(declare-fun size!25656 (Conc!10202) Int)

(assert (=> d!817723 (= lt!1005716 (size!25656 (c!456441 input!3732)))))

(assert (=> d!817723 (= (size!25654 input!3732) lt!1005716)))

(declare-fun bs!516690 () Bool)

(assert (= bs!516690 d!817723))

(declare-fun m!3246517 () Bool)

(assert (=> bs!516690 m!3246517))

(assert (=> bs!516690 m!3246517))

(declare-fun m!3246519 () Bool)

(assert (=> bs!516690 m!3246519))

(declare-fun m!3246521 () Bool)

(assert (=> bs!516690 m!3246521))

(assert (=> b!2815527 d!817723))

(declare-fun d!817727 () Bool)

(declare-fun lambda!103218 () Int)

(declare-fun forall!6741 (List!33035 Int) Bool)

(assert (=> d!817727 (= (inv!44750 setElem!24757) (forall!6741 (exprs!2969 setElem!24757) lambda!103218))))

(declare-fun bs!516693 () Bool)

(assert (= bs!516693 d!817727))

(declare-fun m!3246551 () Bool)

(assert (=> bs!516693 m!3246551))

(assert (=> setNonEmpty!24757 d!817727))

(declare-fun d!817739 () Bool)

(get-info :version)

(assert (=> d!817739 (= (isEmpty!18230 lt!1005713) ((_ is Nil!32910) lt!1005713))))

(assert (=> b!2815523 d!817739))

(declare-fun d!817741 () Bool)

(declare-fun drop!1775 (List!33034 Int) List!33034)

(declare-fun list!12345 (Conc!10202) List!33034)

(assert (=> d!817741 (= (dropList!998 input!3732 i!1825) (drop!1775 (list!12345 (c!456441 input!3732)) i!1825))))

(declare-fun bs!516694 () Bool)

(assert (= bs!516694 d!817741))

(declare-fun m!3246553 () Bool)

(assert (=> bs!516694 m!3246553))

(assert (=> bs!516694 m!3246553))

(declare-fun m!3246555 () Bool)

(assert (=> bs!516694 m!3246555))

(assert (=> b!2815523 d!817741))

(declare-fun d!817743 () Bool)

(declare-fun c!456454 () Bool)

(assert (=> d!817743 (= c!456454 ((_ is Node!10202) (c!456441 input!3732)))))

(declare-fun e!1780452 () Bool)

(assert (=> d!817743 (= (inv!44749 (c!456441 input!3732)) e!1780452)))

(declare-fun b!2815555 () Bool)

(declare-fun inv!44751 (Conc!10202) Bool)

(assert (=> b!2815555 (= e!1780452 (inv!44751 (c!456441 input!3732)))))

(declare-fun b!2815556 () Bool)

(declare-fun e!1780453 () Bool)

(assert (=> b!2815556 (= e!1780452 e!1780453)))

(declare-fun res!1171830 () Bool)

(assert (=> b!2815556 (= res!1171830 (not ((_ is Leaf!15543) (c!456441 input!3732))))))

(assert (=> b!2815556 (=> res!1171830 e!1780453)))

(declare-fun b!2815557 () Bool)

(declare-fun inv!44752 (Conc!10202) Bool)

(assert (=> b!2815557 (= e!1780453 (inv!44752 (c!456441 input!3732)))))

(assert (= (and d!817743 c!456454) b!2815555))

(assert (= (and d!817743 (not c!456454)) b!2815556))

(assert (= (and b!2815556 (not res!1171830)) b!2815557))

(declare-fun m!3246557 () Bool)

(assert (=> b!2815555 m!3246557))

(declare-fun m!3246559 () Bool)

(assert (=> b!2815557 m!3246559))

(assert (=> b!2815526 d!817743))

(declare-fun d!817745 () Bool)

(declare-fun isBalanced!3096 (Conc!10202) Bool)

(assert (=> d!817745 (= (inv!44748 input!3732) (isBalanced!3096 (c!456441 input!3732)))))

(declare-fun bs!516695 () Bool)

(assert (= bs!516695 d!817745))

(declare-fun m!3246561 () Bool)

(assert (=> bs!516695 m!3246561))

(assert (=> start!272828 d!817745))

(declare-fun d!817747 () Bool)

(declare-fun c!456457 () Bool)

(assert (=> d!817747 (= c!456457 (isEmpty!18230 lt!1005713))))

(declare-fun e!1780456 () Bool)

(assert (=> d!817747 (= (matchZipper!393 z!592 lt!1005713) e!1780456)))

(declare-fun b!2815562 () Bool)

(declare-fun nullableZipper!674 ((InoxSet Context!4938)) Bool)

(assert (=> b!2815562 (= e!1780456 (nullableZipper!674 z!592))))

(declare-fun b!2815563 () Bool)

(declare-fun derivationStepZipper!399 ((InoxSet Context!4938) C!16776) (InoxSet Context!4938))

(declare-fun head!6227 (List!33034) C!16776)

(declare-fun tail!4452 (List!33034) List!33034)

(assert (=> b!2815563 (= e!1780456 (matchZipper!393 (derivationStepZipper!399 z!592 (head!6227 lt!1005713)) (tail!4452 lt!1005713)))))

(assert (= (and d!817747 c!456457) b!2815562))

(assert (= (and d!817747 (not c!456457)) b!2815563))

(assert (=> d!817747 m!3246501))

(declare-fun m!3246563 () Bool)

(assert (=> b!2815562 m!3246563))

(declare-fun m!3246565 () Bool)

(assert (=> b!2815563 m!3246565))

(assert (=> b!2815563 m!3246565))

(declare-fun m!3246567 () Bool)

(assert (=> b!2815563 m!3246567))

(declare-fun m!3246569 () Bool)

(assert (=> b!2815563 m!3246569))

(assert (=> b!2815563 m!3246567))

(assert (=> b!2815563 m!3246569))

(declare-fun m!3246571 () Bool)

(assert (=> b!2815563 m!3246571))

(assert (=> b!2815525 d!817747))

(declare-fun d!817749 () Bool)

(declare-fun c!456460 () Bool)

(assert (=> d!817749 (= c!456460 (= i!1825 (size!25654 input!3732)))))

(declare-fun e!1780459 () Bool)

(assert (=> d!817749 (= (matchZipperSequence!38 z!592 input!3732 i!1825) e!1780459)))

(declare-fun b!2815568 () Bool)

(assert (=> b!2815568 (= e!1780459 (nullableZipper!674 z!592))))

(declare-fun b!2815569 () Bool)

(declare-fun apply!7687 (BalanceConc!20042 Int) C!16776)

(assert (=> b!2815569 (= e!1780459 (matchZipperSequence!38 (derivationStepZipper!399 z!592 (apply!7687 input!3732 i!1825)) input!3732 (+ i!1825 1)))))

(assert (= (and d!817749 c!456460) b!2815568))

(assert (= (and d!817749 (not c!456460)) b!2815569))

(assert (=> d!817749 m!3246511))

(assert (=> b!2815568 m!3246563))

(declare-fun m!3246575 () Bool)

(assert (=> b!2815569 m!3246575))

(assert (=> b!2815569 m!3246575))

(declare-fun m!3246577 () Bool)

(assert (=> b!2815569 m!3246577))

(assert (=> b!2815569 m!3246577))

(declare-fun m!3246579 () Bool)

(assert (=> b!2815569 m!3246579))

(assert (=> b!2815525 d!817749))

(declare-fun b!2815574 () Bool)

(declare-fun e!1780462 () Bool)

(declare-fun tp!898819 () Bool)

(declare-fun tp!898820 () Bool)

(assert (=> b!2815574 (= e!1780462 (and tp!898819 tp!898820))))

(assert (=> b!2815524 (= tp!898812 e!1780462)))

(assert (= (and b!2815524 ((_ is Cons!32911) (exprs!2969 setElem!24757))) b!2815574))

(declare-fun condSetEmpty!24760 () Bool)

(assert (=> setNonEmpty!24757 (= condSetEmpty!24760 (= setRest!24757 ((as const (Array Context!4938 Bool)) false)))))

(declare-fun setRes!24760 () Bool)

(assert (=> setNonEmpty!24757 (= tp!898814 setRes!24760)))

(declare-fun setIsEmpty!24760 () Bool)

(assert (=> setIsEmpty!24760 setRes!24760))

(declare-fun e!1780465 () Bool)

(declare-fun tp!898826 () Bool)

(declare-fun setElem!24760 () Context!4938)

(declare-fun setNonEmpty!24760 () Bool)

(assert (=> setNonEmpty!24760 (= setRes!24760 (and tp!898826 (inv!44750 setElem!24760) e!1780465))))

(declare-fun setRest!24760 () (InoxSet Context!4938))

(assert (=> setNonEmpty!24760 (= setRest!24757 ((_ map or) (store ((as const (Array Context!4938 Bool)) false) setElem!24760 true) setRest!24760))))

(declare-fun b!2815579 () Bool)

(declare-fun tp!898825 () Bool)

(assert (=> b!2815579 (= e!1780465 tp!898825)))

(assert (= (and setNonEmpty!24757 condSetEmpty!24760) setIsEmpty!24760))

(assert (= (and setNonEmpty!24757 (not condSetEmpty!24760)) setNonEmpty!24760))

(assert (= setNonEmpty!24760 b!2815579))

(declare-fun m!3246581 () Bool)

(assert (=> setNonEmpty!24760 m!3246581))

(declare-fun e!1780474 () Bool)

(declare-fun b!2815593 () Bool)

(declare-fun tp!898840 () Bool)

(declare-fun tp!898839 () Bool)

(assert (=> b!2815593 (= e!1780474 (and (inv!44749 (left!24834 (c!456441 input!3732))) tp!898839 (inv!44749 (right!25164 (c!456441 input!3732))) tp!898840))))

(declare-fun b!2815595 () Bool)

(declare-fun e!1780473 () Bool)

(declare-fun tp!898841 () Bool)

(assert (=> b!2815595 (= e!1780473 tp!898841)))

(declare-fun b!2815594 () Bool)

(declare-fun inv!44756 (IArray!20409) Bool)

(assert (=> b!2815594 (= e!1780474 (and (inv!44756 (xs!13314 (c!456441 input!3732))) e!1780473))))

(assert (=> b!2815526 (= tp!898813 (and (inv!44749 (c!456441 input!3732)) e!1780474))))

(assert (= (and b!2815526 ((_ is Node!10202) (c!456441 input!3732))) b!2815593))

(assert (= b!2815594 b!2815595))

(assert (= (and b!2815526 ((_ is Leaf!15543) (c!456441 input!3732))) b!2815594))

(declare-fun m!3246587 () Bool)

(assert (=> b!2815593 m!3246587))

(declare-fun m!3246589 () Bool)

(assert (=> b!2815593 m!3246589))

(declare-fun m!3246591 () Bool)

(assert (=> b!2815594 m!3246591))

(assert (=> b!2815526 m!3246513))

(check-sat (not b!2815593) (not b!2815568) (not b!2815594) (not b!2815569) (not b!2815555) (not d!817749) (not b!2815595) (not b!2815526) (not b!2815562) (not b!2815557) (not d!817747) (not d!817727) (not d!817741) (not b!2815579) (not b!2815563) (not setNonEmpty!24760) (not d!817723) (not d!817745) (not b!2815574))
(check-sat)
