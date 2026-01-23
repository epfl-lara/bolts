; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!527426 () Bool)

(assert start!527426)

(declare-fun lt!2062791 () Int)

(declare-fun lt!2062783 () Int)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!27720 0))(
  ( (C!27721 (val!23226 Int)) )
))
(declare-datatypes ((Regex!13735 0))(
  ( (ElementMatch!13735 (c!851335 C!27720)) (Concat!22528 (regOne!27982 Regex!13735) (regTwo!27982 Regex!13735)) (EmptyExpr!13735) (Star!13735 (reg!14064 Regex!13735)) (EmptyLang!13735) (Union!13735 (regOne!27983 Regex!13735) (regTwo!27983 Regex!13735)) )
))
(declare-datatypes ((List!57809 0))(
  ( (Nil!57685) (Cons!57685 (h!64133 Regex!13735) (t!370135 List!57809)) )
))
(declare-datatypes ((Context!6320 0))(
  ( (Context!6321 (exprs!3660 List!57809)) )
))
(declare-fun z!4183 () (InoxSet Context!6320))

(declare-fun b!4989526 () Bool)

(declare-datatypes ((List!57810 0))(
  ( (Nil!57686) (Cons!57686 (h!64134 C!27720) (t!370136 List!57810)) )
))
(declare-fun lt!2062794 () List!57810)

(declare-fun e!3118315 () Bool)

(declare-fun matchZipper!511 ((InoxSet Context!6320) List!57810) Bool)

(declare-fun take!600 (List!57810 Int) List!57810)

(declare-fun drop!2398 (List!57810 Int) List!57810)

(assert (=> b!4989526 (= e!3118315 (matchZipper!511 z!4183 (take!600 (drop!2398 lt!2062794 lt!2062783) lt!2062791)))))

(declare-fun b!4989527 () Bool)

(declare-fun e!3118312 () Bool)

(declare-fun e!3118311 () Bool)

(assert (=> b!4989527 (= e!3118312 e!3118311)))

(declare-fun res!2129955 () Bool)

(assert (=> b!4989527 (=> (not res!2129955) (not e!3118311))))

(declare-fun lt!2062787 () List!57810)

(declare-fun lt!2062789 () List!57810)

(assert (=> b!4989527 (= res!2129955 (= lt!2062787 lt!2062789))))

(declare-fun lt!2062796 () List!57810)

(declare-fun lt!2062788 () List!57810)

(declare-fun ++!12579 (List!57810 List!57810) List!57810)

(assert (=> b!4989527 (= lt!2062787 (++!12579 lt!2062796 lt!2062788))))

(declare-datatypes ((IArray!30569 0))(
  ( (IArray!30570 (innerList!15342 List!57810)) )
))
(declare-datatypes ((Conc!15254 0))(
  ( (Node!15254 (left!42211 Conc!15254) (right!42541 Conc!15254) (csize!30738 Int) (cheight!15465 Int)) (Leaf!25330 (xs!18580 IArray!30569) (csize!30739 Int)) (Empty!15254) )
))
(declare-datatypes ((BalanceConc!29938 0))(
  ( (BalanceConc!29939 (c!851336 Conc!15254)) )
))
(declare-datatypes ((tuple2!62768 0))(
  ( (tuple2!62769 (_1!34687 BalanceConc!29938) (_2!34687 BalanceConc!29938)) )
))
(declare-fun lt!2062782 () tuple2!62768)

(declare-fun list!18538 (BalanceConc!29938) List!57810)

(assert (=> b!4989527 (= lt!2062788 (list!18538 (_2!34687 lt!2062782)))))

(assert (=> b!4989527 (= lt!2062796 (list!18538 (_1!34687 lt!2062782)))))

(declare-datatypes ((tuple2!62770 0))(
  ( (tuple2!62771 (_1!34688 List!57810) (_2!34688 List!57810)) )
))
(declare-fun lt!2062792 () tuple2!62770)

(declare-fun r!12727 () Regex!13735)

(declare-fun findLongestMatch!1748 (Regex!13735 List!57810) tuple2!62770)

(assert (=> b!4989527 (= lt!2062792 (findLongestMatch!1748 r!12727 lt!2062789))))

(declare-fun lt!2062786 () Int)

(declare-fun input!5597 () BalanceConc!29938)

(declare-fun size!38323 (BalanceConc!29938) Int)

(assert (=> b!4989527 (= lt!2062783 (- lt!2062786 (size!38323 input!5597)))))

(declare-fun totalInput!1012 () BalanceConc!29938)

(assert (=> b!4989527 (= lt!2062786 (size!38323 totalInput!1012))))

(declare-fun findLongestMatchZipperFastV2!37 ((InoxSet Context!6320) BalanceConc!29938 BalanceConc!29938) tuple2!62768)

(assert (=> b!4989527 (= lt!2062782 (findLongestMatchZipperFastV2!37 z!4183 input!5597 totalInput!1012))))

(declare-fun b!4989528 () Bool)

(declare-fun res!2129957 () Bool)

(declare-fun e!3118317 () Bool)

(assert (=> b!4989528 (=> (not res!2129957) (not e!3118317))))

(declare-datatypes ((List!57811 0))(
  ( (Nil!57687) (Cons!57687 (h!64135 Context!6320) (t!370137 List!57811)) )
))
(declare-fun unfocusZipper!262 (List!57811) Regex!13735)

(declare-fun toList!8020 ((InoxSet Context!6320)) List!57811)

(assert (=> b!4989528 (= res!2129957 (= (unfocusZipper!262 (toList!8020 z!4183)) r!12727))))

(declare-fun setIsEmpty!28160 () Bool)

(declare-fun setRes!28160 () Bool)

(assert (=> setIsEmpty!28160 setRes!28160))

(declare-fun res!2129954 () Bool)

(assert (=> start!527426 (=> (not res!2129954) (not e!3118317))))

(declare-fun validRegex!6032 (Regex!13735) Bool)

(assert (=> start!527426 (= res!2129954 (validRegex!6032 r!12727))))

(assert (=> start!527426 e!3118317))

(declare-fun e!3118313 () Bool)

(assert (=> start!527426 e!3118313))

(declare-fun condSetEmpty!28160 () Bool)

(assert (=> start!527426 (= condSetEmpty!28160 (= z!4183 ((as const (Array Context!6320 Bool)) false)))))

(assert (=> start!527426 setRes!28160))

(declare-fun e!3118319 () Bool)

(declare-fun inv!75695 (BalanceConc!29938) Bool)

(assert (=> start!527426 (and (inv!75695 input!5597) e!3118319)))

(declare-fun e!3118314 () Bool)

(assert (=> start!527426 (and (inv!75695 totalInput!1012) e!3118314)))

(declare-fun b!4989529 () Bool)

(declare-fun e!3118316 () Bool)

(declare-fun tp!1398533 () Bool)

(assert (=> b!4989529 (= e!3118316 tp!1398533)))

(declare-fun setElem!28160 () Context!6320)

(declare-fun setNonEmpty!28160 () Bool)

(declare-fun tp!1398530 () Bool)

(declare-fun inv!75696 (Context!6320) Bool)

(assert (=> setNonEmpty!28160 (= setRes!28160 (and tp!1398530 (inv!75696 setElem!28160) e!3118316))))

(declare-fun setRest!28160 () (InoxSet Context!6320))

(assert (=> setNonEmpty!28160 (= z!4183 ((_ map or) (store ((as const (Array Context!6320 Bool)) false) setElem!28160 true) setRest!28160))))

(declare-fun b!4989530 () Bool)

(declare-fun e!3118318 () Bool)

(assert (=> b!4989530 (= e!3118311 e!3118318)))

(declare-fun res!2129952 () Bool)

(assert (=> b!4989530 (=> (not res!2129952) (not e!3118318))))

(declare-fun lt!2062790 () List!57810)

(assert (=> b!4989530 (= res!2129952 (= lt!2062790 lt!2062789))))

(assert (=> b!4989530 (= lt!2062790 (++!12579 (_1!34688 lt!2062792) (_2!34688 lt!2062792)))))

(declare-fun b!4989531 () Bool)

(declare-fun tp!1398532 () Bool)

(declare-fun inv!75697 (Conc!15254) Bool)

(assert (=> b!4989531 (= e!3118319 (and (inv!75697 (c!851336 input!5597)) tp!1398532))))

(declare-fun b!4989532 () Bool)

(assert (=> b!4989532 (= e!3118317 e!3118312)))

(declare-fun res!2129956 () Bool)

(assert (=> b!4989532 (=> (not res!2129956) (not e!3118312))))

(declare-fun isSuffix!1301 (List!57810 List!57810) Bool)

(assert (=> b!4989532 (= res!2129956 (isSuffix!1301 lt!2062789 lt!2062794))))

(assert (=> b!4989532 (= lt!2062794 (list!18538 totalInput!1012))))

(assert (=> b!4989532 (= lt!2062789 (list!18538 input!5597))))

(declare-fun b!4989533 () Bool)

(declare-fun tp!1398528 () Bool)

(declare-fun tp!1398531 () Bool)

(assert (=> b!4989533 (= e!3118313 (and tp!1398528 tp!1398531))))

(declare-fun b!4989534 () Bool)

(declare-fun tp_is_empty!36467 () Bool)

(assert (=> b!4989534 (= e!3118313 tp_is_empty!36467)))

(declare-fun b!4989535 () Bool)

(assert (=> b!4989535 (= e!3118318 (not true))))

(assert (=> b!4989535 e!3118315))

(declare-fun res!2129953 () Bool)

(assert (=> b!4989535 (=> res!2129953 e!3118315)))

(assert (=> b!4989535 (= res!2129953 (= lt!2062791 0))))

(declare-fun findLongestMatchInnerZipperFastV2!75 ((InoxSet Context!6320) Int BalanceConc!29938 Int) Int)

(assert (=> b!4989535 (= lt!2062791 (findLongestMatchInnerZipperFastV2!75 z!4183 lt!2062783 totalInput!1012 lt!2062786))))

(declare-datatypes ((Unit!148835 0))(
  ( (Unit!148836) )
))
(declare-fun lt!2062795 () Unit!148835)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmptyRecV2!2 ((InoxSet Context!6320) Int BalanceConc!29938) Unit!148835)

(assert (=> b!4989535 (= lt!2062795 (longestMatchIsAcceptedByMatchOrIsEmptyRecV2!2 z!4183 lt!2062783 totalInput!1012))))

(declare-fun isPrefix!5292 (List!57810 List!57810) Bool)

(assert (=> b!4989535 (isPrefix!5292 (take!600 lt!2062794 lt!2062783) lt!2062794)))

(declare-fun lt!2062784 () Unit!148835)

(declare-fun lemmaTakeIsPrefix!94 (List!57810 Int) Unit!148835)

(assert (=> b!4989535 (= lt!2062784 (lemmaTakeIsPrefix!94 lt!2062794 lt!2062783))))

(assert (=> b!4989535 (isPrefix!5292 (_1!34688 lt!2062792) lt!2062790)))

(declare-fun lt!2062793 () Unit!148835)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3390 (List!57810 List!57810) Unit!148835)

(assert (=> b!4989535 (= lt!2062793 (lemmaConcatTwoListThenFirstIsPrefix!3390 (_1!34688 lt!2062792) (_2!34688 lt!2062792)))))

(assert (=> b!4989535 (isPrefix!5292 lt!2062796 lt!2062787)))

(declare-fun lt!2062785 () Unit!148835)

(assert (=> b!4989535 (= lt!2062785 (lemmaConcatTwoListThenFirstIsPrefix!3390 lt!2062796 lt!2062788))))

(declare-fun b!4989536 () Bool)

(declare-fun tp!1398526 () Bool)

(declare-fun tp!1398534 () Bool)

(assert (=> b!4989536 (= e!3118313 (and tp!1398526 tp!1398534))))

(declare-fun b!4989537 () Bool)

(declare-fun tp!1398527 () Bool)

(assert (=> b!4989537 (= e!3118314 (and (inv!75697 (c!851336 totalInput!1012)) tp!1398527))))

(declare-fun b!4989538 () Bool)

(declare-fun tp!1398529 () Bool)

(assert (=> b!4989538 (= e!3118313 tp!1398529)))

(assert (= (and start!527426 res!2129954) b!4989528))

(assert (= (and b!4989528 res!2129957) b!4989532))

(assert (= (and b!4989532 res!2129956) b!4989527))

(assert (= (and b!4989527 res!2129955) b!4989530))

(assert (= (and b!4989530 res!2129952) b!4989535))

(assert (= (and b!4989535 (not res!2129953)) b!4989526))

(get-info :version)

(assert (= (and start!527426 ((_ is ElementMatch!13735) r!12727)) b!4989534))

(assert (= (and start!527426 ((_ is Concat!22528) r!12727)) b!4989533))

(assert (= (and start!527426 ((_ is Star!13735) r!12727)) b!4989538))

(assert (= (and start!527426 ((_ is Union!13735) r!12727)) b!4989536))

(assert (= (and start!527426 condSetEmpty!28160) setIsEmpty!28160))

(assert (= (and start!527426 (not condSetEmpty!28160)) setNonEmpty!28160))

(assert (= setNonEmpty!28160 b!4989529))

(assert (= start!527426 b!4989531))

(assert (= start!527426 b!4989537))

(declare-fun m!6021492 () Bool)

(assert (=> setNonEmpty!28160 m!6021492))

(declare-fun m!6021494 () Bool)

(assert (=> b!4989532 m!6021494))

(declare-fun m!6021496 () Bool)

(assert (=> b!4989532 m!6021496))

(declare-fun m!6021498 () Bool)

(assert (=> b!4989532 m!6021498))

(declare-fun m!6021500 () Bool)

(assert (=> b!4989537 m!6021500))

(declare-fun m!6021502 () Bool)

(assert (=> start!527426 m!6021502))

(declare-fun m!6021504 () Bool)

(assert (=> start!527426 m!6021504))

(declare-fun m!6021506 () Bool)

(assert (=> start!527426 m!6021506))

(declare-fun m!6021508 () Bool)

(assert (=> b!4989527 m!6021508))

(declare-fun m!6021510 () Bool)

(assert (=> b!4989527 m!6021510))

(declare-fun m!6021512 () Bool)

(assert (=> b!4989527 m!6021512))

(declare-fun m!6021514 () Bool)

(assert (=> b!4989527 m!6021514))

(declare-fun m!6021516 () Bool)

(assert (=> b!4989527 m!6021516))

(declare-fun m!6021518 () Bool)

(assert (=> b!4989527 m!6021518))

(declare-fun m!6021520 () Bool)

(assert (=> b!4989527 m!6021520))

(declare-fun m!6021522 () Bool)

(assert (=> b!4989531 m!6021522))

(declare-fun m!6021524 () Bool)

(assert (=> b!4989526 m!6021524))

(assert (=> b!4989526 m!6021524))

(declare-fun m!6021526 () Bool)

(assert (=> b!4989526 m!6021526))

(assert (=> b!4989526 m!6021526))

(declare-fun m!6021528 () Bool)

(assert (=> b!4989526 m!6021528))

(declare-fun m!6021530 () Bool)

(assert (=> b!4989530 m!6021530))

(declare-fun m!6021532 () Bool)

(assert (=> b!4989535 m!6021532))

(declare-fun m!6021534 () Bool)

(assert (=> b!4989535 m!6021534))

(declare-fun m!6021536 () Bool)

(assert (=> b!4989535 m!6021536))

(declare-fun m!6021538 () Bool)

(assert (=> b!4989535 m!6021538))

(declare-fun m!6021540 () Bool)

(assert (=> b!4989535 m!6021540))

(declare-fun m!6021542 () Bool)

(assert (=> b!4989535 m!6021542))

(declare-fun m!6021544 () Bool)

(assert (=> b!4989535 m!6021544))

(assert (=> b!4989535 m!6021534))

(declare-fun m!6021546 () Bool)

(assert (=> b!4989535 m!6021546))

(declare-fun m!6021548 () Bool)

(assert (=> b!4989535 m!6021548))

(declare-fun m!6021550 () Bool)

(assert (=> b!4989528 m!6021550))

(assert (=> b!4989528 m!6021550))

(declare-fun m!6021552 () Bool)

(assert (=> b!4989528 m!6021552))

(check-sat (not b!4989527) (not setNonEmpty!28160) (not b!4989529) (not b!4989532) (not b!4989538) (not b!4989528) (not b!4989536) (not b!4989530) (not start!527426) (not b!4989533) (not b!4989526) (not b!4989537) (not b!4989531) (not b!4989535) tp_is_empty!36467)
(check-sat)
