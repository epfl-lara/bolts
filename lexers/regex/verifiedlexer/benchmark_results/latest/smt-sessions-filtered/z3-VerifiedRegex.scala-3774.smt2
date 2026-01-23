; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!210618 () Bool)

(assert start!210618)

(declare-fun b!2171374 () Bool)

(declare-fun e!1388603 () Bool)

(declare-fun tp!677890 () Bool)

(assert (=> b!2171374 (= e!1388603 tp!677890)))

(declare-fun res!934424 () Bool)

(declare-fun e!1388600 () Bool)

(assert (=> start!210618 (=> (not res!934424) (not e!1388600))))

(declare-datatypes ((C!12176 0))(
  ( (C!12177 (val!7074 Int)) )
))
(declare-datatypes ((Regex!6015 0))(
  ( (ElementMatch!6015 (c!344120 C!12176)) (Concat!10317 (regOne!12542 Regex!6015) (regTwo!12542 Regex!6015)) (EmptyExpr!6015) (Star!6015 (reg!6344 Regex!6015)) (EmptyLang!6015) (Union!6015 (regOne!12543 Regex!6015) (regTwo!12543 Regex!6015)) )
))
(declare-fun r!12534 () Regex!6015)

(declare-fun validRegex!2291 (Regex!6015) Bool)

(assert (=> start!210618 (= res!934424 (validRegex!2291 r!12534))))

(assert (=> start!210618 e!1388600))

(assert (=> start!210618 e!1388603))

(declare-datatypes ((List!25258 0))(
  ( (Nil!25174) (Cons!25174 (h!30575 C!12176) (t!197826 List!25258)) )
))
(declare-datatypes ((IArray!16307 0))(
  ( (IArray!16308 (innerList!8211 List!25258)) )
))
(declare-datatypes ((Conc!8151 0))(
  ( (Node!8151 (left!19341 Conc!8151) (right!19671 Conc!8151) (csize!16532 Int) (cheight!8362 Int)) (Leaf!11926 (xs!11093 IArray!16307) (csize!16533 Int)) (Empty!8151) )
))
(declare-datatypes ((BalanceConc!16064 0))(
  ( (BalanceConc!16065 (c!344121 Conc!8151)) )
))
(declare-fun totalInput!977 () BalanceConc!16064)

(declare-fun e!1388611 () Bool)

(declare-fun inv!33408 (BalanceConc!16064) Bool)

(assert (=> start!210618 (and (inv!33408 totalInput!977) e!1388611)))

(declare-fun input!5540 () BalanceConc!16064)

(declare-fun e!1388606 () Bool)

(assert (=> start!210618 (and (inv!33408 input!5540) e!1388606)))

(declare-fun condSetEmpty!18202 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!25259 0))(
  ( (Nil!25175) (Cons!25175 (h!30576 Regex!6015) (t!197827 List!25259)) )
))
(declare-datatypes ((Context!3170 0))(
  ( (Context!3171 (exprs!2085 List!25259)) )
))
(declare-fun z!4055 () (InoxSet Context!3170))

(assert (=> start!210618 (= condSetEmpty!18202 (= z!4055 ((as const (Array Context!3170 Bool)) false)))))

(declare-fun setRes!18202 () Bool)

(assert (=> start!210618 setRes!18202))

(declare-fun b!2171375 () Bool)

(declare-fun e!1388609 () Bool)

(declare-fun e!1388610 () Bool)

(assert (=> b!2171375 (= e!1388609 e!1388610)))

(declare-fun res!934422 () Bool)

(assert (=> b!2171375 (=> (not res!934422) (not e!1388610))))

(declare-fun lt!808818 () List!25258)

(declare-fun lt!808819 () List!25258)

(assert (=> b!2171375 (= res!934422 (= lt!808818 lt!808819))))

(declare-datatypes ((tuple2!24934 0))(
  ( (tuple2!24935 (_1!14837 List!25258) (_2!14837 List!25258)) )
))
(declare-fun lt!808814 () tuple2!24934)

(declare-fun ++!6374 (List!25258 List!25258) List!25258)

(assert (=> b!2171375 (= lt!808818 (++!6374 (_1!14837 lt!808814) (_2!14837 lt!808814)))))

(declare-fun b!2171376 () Bool)

(declare-fun e!1388598 () Bool)

(declare-fun tp!677894 () Bool)

(assert (=> b!2171376 (= e!1388598 tp!677894)))

(declare-fun b!2171377 () Bool)

(declare-fun tp!677888 () Bool)

(declare-fun inv!33409 (Conc!8151) Bool)

(assert (=> b!2171377 (= e!1388606 (and (inv!33409 (c!344121 input!5540)) tp!677888))))

(declare-fun b!2171378 () Bool)

(declare-fun e!1388605 () Int)

(declare-fun lt!808817 () Int)

(assert (=> b!2171378 (= e!1388605 (- lt!808817 1))))

(declare-fun b!2171379 () Bool)

(declare-fun e!1388607 () Bool)

(assert (=> b!2171379 (= e!1388607 e!1388609)))

(declare-fun res!934427 () Bool)

(assert (=> b!2171379 (=> (not res!934427) (not e!1388609))))

(declare-fun lt!808812 () List!25258)

(assert (=> b!2171379 (= res!934427 (= lt!808812 lt!808819))))

(declare-fun lt!808828 () List!25258)

(declare-fun lt!808827 () List!25258)

(assert (=> b!2171379 (= lt!808812 (++!6374 lt!808828 lt!808827))))

(declare-datatypes ((tuple2!24936 0))(
  ( (tuple2!24937 (_1!14838 BalanceConc!16064) (_2!14838 BalanceConc!16064)) )
))
(declare-fun lt!808826 () tuple2!24936)

(declare-fun list!9652 (BalanceConc!16064) List!25258)

(assert (=> b!2171379 (= lt!808827 (list!9652 (_2!14838 lt!808826)))))

(assert (=> b!2171379 (= lt!808828 (list!9652 (_1!14838 lt!808826)))))

(declare-fun findLongestMatch!569 (Regex!6015 List!25258) tuple2!24934)

(assert (=> b!2171379 (= lt!808814 (findLongestMatch!569 r!12534 lt!808819))))

(declare-fun lt!808824 () Int)

(declare-fun size!19666 (BalanceConc!16064) Int)

(assert (=> b!2171379 (= lt!808817 (- lt!808824 (size!19666 input!5540)))))

(assert (=> b!2171379 (= lt!808824 (size!19666 totalInput!977))))

(declare-fun findLongestMatchZipperSequenceV3!64 ((InoxSet Context!3170) BalanceConc!16064 BalanceConc!16064) tuple2!24936)

(assert (=> b!2171379 (= lt!808826 (findLongestMatchZipperSequenceV3!64 z!4055 input!5540 totalInput!977))))

(declare-fun b!2171380 () Bool)

(declare-fun tp!677891 () Bool)

(declare-fun tp!677893 () Bool)

(assert (=> b!2171380 (= e!1388603 (and tp!677891 tp!677893))))

(declare-fun b!2171381 () Bool)

(assert (=> b!2171381 (= e!1388605 (- 1))))

(declare-fun b!2171382 () Bool)

(declare-fun e!1388608 () Bool)

(declare-fun lt!808823 () Regex!6015)

(assert (=> b!2171382 (= e!1388608 (= r!12534 lt!808823))))

(declare-fun tp!677892 () Bool)

(declare-fun setNonEmpty!18202 () Bool)

(declare-fun setElem!18202 () Context!3170)

(declare-fun inv!33410 (Context!3170) Bool)

(assert (=> setNonEmpty!18202 (= setRes!18202 (and tp!677892 (inv!33410 setElem!18202) e!1388598))))

(declare-fun setRest!18202 () (InoxSet Context!3170))

(assert (=> setNonEmpty!18202 (= z!4055 ((_ map or) (store ((as const (Array Context!3170 Bool)) false) setElem!18202 true) setRest!18202))))

(declare-fun b!2171383 () Bool)

(declare-fun tp_is_empty!9637 () Bool)

(assert (=> b!2171383 (= e!1388603 tp_is_empty!9637)))

(declare-fun b!2171384 () Bool)

(declare-fun res!934429 () Bool)

(assert (=> b!2171384 (=> res!934429 e!1388608)))

(declare-fun e!1388601 () Bool)

(assert (=> b!2171384 (= res!934429 e!1388601)))

(declare-fun res!934426 () Bool)

(assert (=> b!2171384 (=> (not res!934426) (not e!1388601))))

(declare-fun matchR!2764 (Regex!6015 List!25258) Bool)

(assert (=> b!2171384 (= res!934426 (not (matchR!2764 r!12534 (_1!14837 lt!808814))))))

(declare-fun b!2171385 () Bool)

(declare-fun tp!677896 () Bool)

(declare-fun tp!677895 () Bool)

(assert (=> b!2171385 (= e!1388603 (and tp!677896 tp!677895))))

(declare-fun b!2171386 () Bool)

(declare-fun isEmpty!14437 (List!25258) Bool)

(assert (=> b!2171386 (= e!1388601 (not (isEmpty!14437 (_1!14837 lt!808814))))))

(declare-fun b!2171387 () Bool)

(declare-fun e!1388604 () Bool)

(assert (=> b!2171387 (= e!1388604 e!1388607)))

(declare-fun res!934421 () Bool)

(assert (=> b!2171387 (=> (not res!934421) (not e!1388607))))

(declare-fun lt!808815 () List!25258)

(declare-fun isSuffix!682 (List!25258 List!25258) Bool)

(assert (=> b!2171387 (= res!934421 (isSuffix!682 lt!808819 lt!808815))))

(assert (=> b!2171387 (= lt!808815 (list!9652 totalInput!977))))

(assert (=> b!2171387 (= lt!808819 (list!9652 input!5540))))

(declare-fun b!2171388 () Bool)

(declare-fun tp!677889 () Bool)

(assert (=> b!2171388 (= e!1388611 (and (inv!33409 (c!344121 totalInput!977)) tp!677889))))

(declare-fun b!2171389 () Bool)

(assert (=> b!2171389 (= e!1388610 (not e!1388608))))

(declare-fun res!934425 () Bool)

(assert (=> b!2171389 (=> res!934425 e!1388608)))

(declare-fun e!1388602 () Bool)

(assert (=> b!2171389 (= res!934425 e!1388602)))

(declare-fun res!934428 () Bool)

(assert (=> b!2171389 (=> (not res!934428) (not e!1388602))))

(declare-fun matchZipper!131 ((InoxSet Context!3170) List!25258) Bool)

(assert (=> b!2171389 (= res!934428 (not (matchZipper!131 z!4055 lt!808828)))))

(declare-fun e!1388599 () Bool)

(assert (=> b!2171389 e!1388599))

(declare-fun res!934420 () Bool)

(assert (=> b!2171389 (=> res!934420 e!1388599)))

(declare-fun lt!808825 () tuple2!24934)

(assert (=> b!2171389 (= res!934420 (isEmpty!14437 (_1!14837 lt!808825)))))

(declare-fun findLongestMatchInner!640 (Regex!6015 List!25258 Int List!25258 List!25258 Int) tuple2!24934)

(declare-fun size!19667 (List!25258) Int)

(assert (=> b!2171389 (= lt!808825 (findLongestMatchInner!640 r!12534 Nil!25174 (size!19667 Nil!25174) lt!808819 lt!808819 (size!19667 lt!808819)))))

(declare-datatypes ((Unit!38237 0))(
  ( (Unit!38238) )
))
(declare-fun lt!808822 () Unit!38237)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!613 (Regex!6015 List!25258) Unit!38237)

(assert (=> b!2171389 (= lt!808822 (longestMatchIsAcceptedByMatchOrIsEmpty!613 r!12534 lt!808819))))

(declare-fun e!1388597 () Bool)

(assert (=> b!2171389 e!1388597))

(declare-fun res!934423 () Bool)

(assert (=> b!2171389 (=> res!934423 e!1388597)))

(declare-fun lt!808816 () Int)

(assert (=> b!2171389 (= res!934423 (<= lt!808816 0))))

(declare-fun lt!808821 () Int)

(declare-fun furthestNullablePosition!197 ((InoxSet Context!3170) Int BalanceConc!16064 Int Int) Int)

(assert (=> b!2171389 (= lt!808816 (+ 1 (- (furthestNullablePosition!197 z!4055 lt!808817 totalInput!977 lt!808824 lt!808821) lt!808817)))))

(declare-fun lt!808820 () Unit!38237)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmptyRecV3!38 ((InoxSet Context!3170) Int BalanceConc!16064 Int) Unit!38237)

(assert (=> b!2171389 (= lt!808820 (longestMatchIsAcceptedByMatchOrIsEmptyRecV3!38 z!4055 lt!808817 totalInput!977 lt!808821))))

(assert (=> b!2171389 (= lt!808821 e!1388605)))

(declare-fun c!344119 () Bool)

(declare-fun nullableZipper!295 ((InoxSet Context!3170)) Bool)

(assert (=> b!2171389 (= c!344119 (nullableZipper!295 z!4055))))

(declare-fun isPrefix!2131 (List!25258 List!25258) Bool)

(declare-fun take!223 (List!25258 Int) List!25258)

(assert (=> b!2171389 (isPrefix!2131 (take!223 lt!808815 lt!808817) lt!808815)))

(declare-fun lt!808829 () Unit!38237)

(declare-fun lemmaTakeIsPrefix!46 (List!25258 Int) Unit!38237)

(assert (=> b!2171389 (= lt!808829 (lemmaTakeIsPrefix!46 lt!808815 lt!808817))))

(assert (=> b!2171389 (isPrefix!2131 (_1!14837 lt!808814) lt!808818)))

(declare-fun lt!808830 () Unit!38237)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1414 (List!25258 List!25258) Unit!38237)

(assert (=> b!2171389 (= lt!808830 (lemmaConcatTwoListThenFirstIsPrefix!1414 (_1!14837 lt!808814) (_2!14837 lt!808814)))))

(assert (=> b!2171389 (isPrefix!2131 lt!808828 lt!808812)))

(declare-fun lt!808813 () Unit!38237)

(assert (=> b!2171389 (= lt!808813 (lemmaConcatTwoListThenFirstIsPrefix!1414 lt!808828 lt!808827))))

(declare-fun setIsEmpty!18202 () Bool)

(assert (=> setIsEmpty!18202 setRes!18202))

(declare-fun b!2171390 () Bool)

(declare-fun drop!1233 (List!25258 Int) List!25258)

(assert (=> b!2171390 (= e!1388597 (matchZipper!131 z!4055 (take!223 (drop!1233 lt!808815 lt!808817) lt!808816)))))

(declare-fun b!2171391 () Bool)

(assert (=> b!2171391 (= e!1388600 e!1388604)))

(declare-fun res!934419 () Bool)

(assert (=> b!2171391 (=> (not res!934419) (not e!1388604))))

(assert (=> b!2171391 (= res!934419 (= lt!808823 r!12534))))

(declare-datatypes ((List!25260 0))(
  ( (Nil!25176) (Cons!25176 (h!30577 Context!3170) (t!197828 List!25260)) )
))
(declare-fun unfocusZipper!122 (List!25260) Regex!6015)

(declare-fun toList!1198 ((InoxSet Context!3170)) List!25260)

(assert (=> b!2171391 (= lt!808823 (unfocusZipper!122 (toList!1198 z!4055)))))

(declare-fun b!2171392 () Bool)

(assert (=> b!2171392 (= e!1388599 (matchR!2764 r!12534 (_1!14837 lt!808825)))))

(declare-fun b!2171393 () Bool)

(declare-fun isEmpty!14438 (BalanceConc!16064) Bool)

(assert (=> b!2171393 (= e!1388602 (not (isEmpty!14438 (_1!14838 lt!808826))))))

(assert (= (and start!210618 res!934424) b!2171391))

(assert (= (and b!2171391 res!934419) b!2171387))

(assert (= (and b!2171387 res!934421) b!2171379))

(assert (= (and b!2171379 res!934427) b!2171375))

(assert (= (and b!2171375 res!934422) b!2171389))

(assert (= (and b!2171389 c!344119) b!2171378))

(assert (= (and b!2171389 (not c!344119)) b!2171381))

(assert (= (and b!2171389 (not res!934423)) b!2171390))

(assert (= (and b!2171389 (not res!934420)) b!2171392))

(assert (= (and b!2171389 res!934428) b!2171393))

(assert (= (and b!2171389 (not res!934425)) b!2171384))

(assert (= (and b!2171384 res!934426) b!2171386))

(assert (= (and b!2171384 (not res!934429)) b!2171382))

(get-info :version)

(assert (= (and start!210618 ((_ is ElementMatch!6015) r!12534)) b!2171383))

(assert (= (and start!210618 ((_ is Concat!10317) r!12534)) b!2171380))

(assert (= (and start!210618 ((_ is Star!6015) r!12534)) b!2171374))

(assert (= (and start!210618 ((_ is Union!6015) r!12534)) b!2171385))

(assert (= start!210618 b!2171388))

(assert (= start!210618 b!2171377))

(assert (= (and start!210618 condSetEmpty!18202) setIsEmpty!18202))

(assert (= (and start!210618 (not condSetEmpty!18202)) setNonEmpty!18202))

(assert (= setNonEmpty!18202 b!2171376))

(declare-fun m!2612495 () Bool)

(assert (=> b!2171391 m!2612495))

(assert (=> b!2171391 m!2612495))

(declare-fun m!2612497 () Bool)

(assert (=> b!2171391 m!2612497))

(declare-fun m!2612499 () Bool)

(assert (=> b!2171393 m!2612499))

(declare-fun m!2612501 () Bool)

(assert (=> b!2171392 m!2612501))

(declare-fun m!2612503 () Bool)

(assert (=> b!2171390 m!2612503))

(assert (=> b!2171390 m!2612503))

(declare-fun m!2612505 () Bool)

(assert (=> b!2171390 m!2612505))

(assert (=> b!2171390 m!2612505))

(declare-fun m!2612507 () Bool)

(assert (=> b!2171390 m!2612507))

(declare-fun m!2612509 () Bool)

(assert (=> b!2171375 m!2612509))

(declare-fun m!2612511 () Bool)

(assert (=> b!2171389 m!2612511))

(declare-fun m!2612513 () Bool)

(assert (=> b!2171389 m!2612513))

(declare-fun m!2612515 () Bool)

(assert (=> b!2171389 m!2612515))

(declare-fun m!2612517 () Bool)

(assert (=> b!2171389 m!2612517))

(declare-fun m!2612519 () Bool)

(assert (=> b!2171389 m!2612519))

(declare-fun m!2612521 () Bool)

(assert (=> b!2171389 m!2612521))

(assert (=> b!2171389 m!2612513))

(declare-fun m!2612523 () Bool)

(assert (=> b!2171389 m!2612523))

(declare-fun m!2612525 () Bool)

(assert (=> b!2171389 m!2612525))

(declare-fun m!2612527 () Bool)

(assert (=> b!2171389 m!2612527))

(declare-fun m!2612529 () Bool)

(assert (=> b!2171389 m!2612529))

(declare-fun m!2612531 () Bool)

(assert (=> b!2171389 m!2612531))

(declare-fun m!2612533 () Bool)

(assert (=> b!2171389 m!2612533))

(declare-fun m!2612535 () Bool)

(assert (=> b!2171389 m!2612535))

(declare-fun m!2612537 () Bool)

(assert (=> b!2171389 m!2612537))

(assert (=> b!2171389 m!2612529))

(assert (=> b!2171389 m!2612527))

(declare-fun m!2612539 () Bool)

(assert (=> b!2171389 m!2612539))

(declare-fun m!2612541 () Bool)

(assert (=> b!2171389 m!2612541))

(declare-fun m!2612543 () Bool)

(assert (=> start!210618 m!2612543))

(declare-fun m!2612545 () Bool)

(assert (=> start!210618 m!2612545))

(declare-fun m!2612547 () Bool)

(assert (=> start!210618 m!2612547))

(declare-fun m!2612549 () Bool)

(assert (=> b!2171379 m!2612549))

(declare-fun m!2612551 () Bool)

(assert (=> b!2171379 m!2612551))

(declare-fun m!2612553 () Bool)

(assert (=> b!2171379 m!2612553))

(declare-fun m!2612555 () Bool)

(assert (=> b!2171379 m!2612555))

(declare-fun m!2612557 () Bool)

(assert (=> b!2171379 m!2612557))

(declare-fun m!2612559 () Bool)

(assert (=> b!2171379 m!2612559))

(declare-fun m!2612561 () Bool)

(assert (=> b!2171379 m!2612561))

(declare-fun m!2612563 () Bool)

(assert (=> b!2171386 m!2612563))

(declare-fun m!2612565 () Bool)

(assert (=> b!2171388 m!2612565))

(declare-fun m!2612567 () Bool)

(assert (=> b!2171377 m!2612567))

(declare-fun m!2612569 () Bool)

(assert (=> setNonEmpty!18202 m!2612569))

(declare-fun m!2612571 () Bool)

(assert (=> b!2171384 m!2612571))

(declare-fun m!2612573 () Bool)

(assert (=> b!2171387 m!2612573))

(declare-fun m!2612575 () Bool)

(assert (=> b!2171387 m!2612575))

(declare-fun m!2612577 () Bool)

(assert (=> b!2171387 m!2612577))

(check-sat (not b!2171387) (not b!2171385) (not b!2171379) (not start!210618) (not b!2171374) tp_is_empty!9637 (not b!2171386) (not b!2171390) (not b!2171389) (not b!2171392) (not b!2171391) (not b!2171375) (not b!2171388) (not b!2171377) (not b!2171380) (not b!2171393) (not setNonEmpty!18202) (not b!2171376) (not b!2171384))
(check-sat)
