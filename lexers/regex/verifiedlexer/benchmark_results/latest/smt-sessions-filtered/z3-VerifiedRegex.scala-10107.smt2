; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!529554 () Bool)

(assert start!529554)

(declare-fun b!5012661 () Bool)

(declare-fun e!3131555 () Bool)

(declare-fun e!3131551 () Bool)

(assert (=> b!5012661 (= e!3131555 e!3131551)))

(declare-fun res!2137581 () Bool)

(assert (=> b!5012661 (=> (not res!2137581) (not e!3131551))))

(declare-datatypes ((C!27848 0))(
  ( (C!27849 (val!23290 Int)) )
))
(declare-datatypes ((Regex!13799 0))(
  ( (ElementMatch!13799 (c!856279 C!27848)) (Concat!22592 (regOne!28110 Regex!13799) (regTwo!28110 Regex!13799)) (EmptyExpr!13799) (Star!13799 (reg!14128 Regex!13799)) (EmptyLang!13799) (Union!13799 (regOne!28111 Regex!13799) (regTwo!28111 Regex!13799)) )
))
(declare-datatypes ((List!58001 0))(
  ( (Nil!57877) (Cons!57877 (h!64325 Regex!13799) (t!370369 List!58001)) )
))
(declare-datatypes ((Context!6448 0))(
  ( (Context!6449 (exprs!3724 List!58001)) )
))
(declare-datatypes ((List!58002 0))(
  ( (Nil!57878) (Cons!57878 (h!64326 Context!6448) (t!370370 List!58002)) )
))
(declare-fun lt!2073519 () List!58002)

(declare-fun r!12727 () Regex!13799)

(declare-fun unfocusZipper!326 (List!58002) Regex!13799)

(assert (=> b!5012661 (= res!2137581 (= (unfocusZipper!326 lt!2073519) r!12727))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!4183 () (InoxSet Context!6448))

(declare-fun toList!8084 ((InoxSet Context!6448)) List!58002)

(assert (=> b!5012661 (= lt!2073519 (toList!8084 z!4183))))

(declare-fun b!5012662 () Bool)

(declare-fun e!3131556 () Bool)

(declare-fun e!3131554 () Bool)

(assert (=> b!5012662 (= e!3131556 e!3131554)))

(declare-fun res!2137580 () Bool)

(assert (=> b!5012662 (=> (not res!2137580) (not e!3131554))))

(declare-datatypes ((List!58003 0))(
  ( (Nil!57879) (Cons!57879 (h!64327 C!27848) (t!370371 List!58003)) )
))
(declare-fun lt!2073517 () List!58003)

(declare-fun lt!2073525 () List!58003)

(assert (=> b!5012662 (= res!2137580 (= lt!2073517 lt!2073525))))

(declare-datatypes ((tuple2!63040 0))(
  ( (tuple2!63041 (_1!34823 List!58003) (_2!34823 List!58003)) )
))
(declare-fun lt!2073527 () tuple2!63040)

(declare-fun ++!12647 (List!58003 List!58003) List!58003)

(assert (=> b!5012662 (= lt!2073517 (++!12647 (_1!34823 lt!2073527) (_2!34823 lt!2073527)))))

(declare-fun b!5012663 () Bool)

(declare-fun e!3131553 () Bool)

(declare-fun lt!2073516 () tuple2!63040)

(declare-fun matchR!6763 (Regex!13799 List!58003) Bool)

(assert (=> b!5012663 (= e!3131553 (matchR!6763 r!12727 (_1!34823 lt!2073516)))))

(declare-fun b!5012664 () Bool)

(declare-fun e!3131552 () Bool)

(assert (=> b!5012664 (= e!3131551 e!3131552)))

(declare-fun res!2137575 () Bool)

(assert (=> b!5012664 (=> (not res!2137575) (not e!3131552))))

(declare-fun lt!2073520 () List!58003)

(declare-fun isSuffix!1365 (List!58003 List!58003) Bool)

(assert (=> b!5012664 (= res!2137575 (isSuffix!1365 lt!2073525 lt!2073520))))

(declare-datatypes ((IArray!30697 0))(
  ( (IArray!30698 (innerList!15406 List!58003)) )
))
(declare-datatypes ((Conc!15318 0))(
  ( (Node!15318 (left!42319 Conc!15318) (right!42649 Conc!15318) (csize!30866 Int) (cheight!15529 Int)) (Leaf!25426 (xs!18644 IArray!30697) (csize!30867 Int)) (Empty!15318) )
))
(declare-datatypes ((BalanceConc!30066 0))(
  ( (BalanceConc!30067 (c!856280 Conc!15318)) )
))
(declare-fun totalInput!1012 () BalanceConc!30066)

(declare-fun list!18636 (BalanceConc!30066) List!58003)

(assert (=> b!5012664 (= lt!2073520 (list!18636 totalInput!1012))))

(declare-fun input!5597 () BalanceConc!30066)

(assert (=> b!5012664 (= lt!2073525 (list!18636 input!5597))))

(declare-fun b!5012665 () Bool)

(declare-fun e!3131558 () Bool)

(declare-fun tp!1405876 () Bool)

(assert (=> b!5012665 (= e!3131558 tp!1405876)))

(declare-fun b!5012666 () Bool)

(declare-fun e!3131547 () Bool)

(declare-fun tp!1405883 () Bool)

(declare-fun inv!76059 (Conc!15318) Bool)

(assert (=> b!5012666 (= e!3131547 (and (inv!76059 (c!856280 input!5597)) tp!1405883))))

(declare-fun lt!2073523 () Int)

(declare-fun e!3131559 () Bool)

(declare-fun b!5012667 () Bool)

(declare-fun lt!2073538 () Int)

(declare-fun matchZipper!567 ((InoxSet Context!6448) List!58003) Bool)

(declare-fun take!658 (List!58003 Int) List!58003)

(declare-fun drop!2462 (List!58003 Int) List!58003)

(assert (=> b!5012667 (= e!3131559 (matchZipper!567 z!4183 (take!658 (drop!2462 lt!2073520 lt!2073523) lt!2073538)))))

(declare-fun b!5012668 () Bool)

(assert (=> b!5012668 (= e!3131552 e!3131556)))

(declare-fun res!2137577 () Bool)

(assert (=> b!5012668 (=> (not res!2137577) (not e!3131556))))

(declare-fun lt!2073515 () List!58003)

(assert (=> b!5012668 (= res!2137577 (= lt!2073515 lt!2073525))))

(declare-fun lt!2073530 () List!58003)

(declare-fun lt!2073526 () List!58003)

(assert (=> b!5012668 (= lt!2073515 (++!12647 lt!2073530 lt!2073526))))

(declare-datatypes ((tuple2!63042 0))(
  ( (tuple2!63043 (_1!34824 BalanceConc!30066) (_2!34824 BalanceConc!30066)) )
))
(declare-fun lt!2073535 () tuple2!63042)

(assert (=> b!5012668 (= lt!2073526 (list!18636 (_2!34824 lt!2073535)))))

(assert (=> b!5012668 (= lt!2073530 (list!18636 (_1!34824 lt!2073535)))))

(declare-fun findLongestMatch!1812 (Regex!13799 List!58003) tuple2!63040)

(assert (=> b!5012668 (= lt!2073527 (findLongestMatch!1812 r!12727 lt!2073525))))

(declare-fun lt!2073533 () Int)

(declare-fun size!38476 (BalanceConc!30066) Int)

(assert (=> b!5012668 (= lt!2073523 (- lt!2073533 (size!38476 input!5597)))))

(assert (=> b!5012668 (= lt!2073533 (size!38476 totalInput!1012))))

(declare-fun findLongestMatchZipperFastV2!101 ((InoxSet Context!6448) BalanceConc!30066 BalanceConc!30066) tuple2!63042)

(assert (=> b!5012668 (= lt!2073535 (findLongestMatchZipperFastV2!101 z!4183 input!5597 totalInput!1012))))

(declare-fun b!5012669 () Bool)

(declare-fun e!3131561 () Bool)

(declare-fun e!3131557 () Bool)

(assert (=> b!5012669 (= e!3131561 e!3131557)))

(declare-fun res!2137573 () Bool)

(assert (=> b!5012669 (=> res!2137573 e!3131557)))

(declare-fun e!3131550 () Bool)

(assert (=> b!5012669 (= res!2137573 e!3131550)))

(declare-fun res!2137576 () Bool)

(assert (=> b!5012669 (=> (not res!2137576) (not e!3131550))))

(declare-fun lt!2073536 () Bool)

(assert (=> b!5012669 (= res!2137576 (not lt!2073536))))

(assert (=> b!5012669 (= lt!2073536 (matchR!6763 r!12727 (_1!34823 lt!2073527)))))

(declare-fun b!5012670 () Bool)

(assert (=> b!5012670 (= e!3131554 (not e!3131561))))

(declare-fun res!2137578 () Bool)

(assert (=> b!5012670 (=> res!2137578 e!3131561)))

(declare-fun e!3131560 () Bool)

(assert (=> b!5012670 (= res!2137578 e!3131560)))

(declare-fun res!2137579 () Bool)

(assert (=> b!5012670 (=> (not res!2137579) (not e!3131560))))

(declare-fun lt!2073537 () Bool)

(assert (=> b!5012670 (= res!2137579 (not lt!2073537))))

(assert (=> b!5012670 (= lt!2073537 (matchZipper!567 z!4183 lt!2073530))))

(assert (=> b!5012670 e!3131553))

(declare-fun res!2137571 () Bool)

(assert (=> b!5012670 (=> res!2137571 e!3131553)))

(declare-fun isEmpty!31351 (List!58003) Bool)

(assert (=> b!5012670 (= res!2137571 (isEmpty!31351 (_1!34823 lt!2073516)))))

(declare-fun findLongestMatchInner!1988 (Regex!13799 List!58003 Int List!58003 List!58003 Int) tuple2!63040)

(declare-fun size!38477 (List!58003) Int)

(assert (=> b!5012670 (= lt!2073516 (findLongestMatchInner!1988 r!12727 Nil!57879 (size!38477 Nil!57879) lt!2073525 lt!2073525 (size!38477 lt!2073525)))))

(declare-datatypes ((Unit!149095 0))(
  ( (Unit!149096) )
))
(declare-fun lt!2073522 () Unit!149095)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1941 (Regex!13799 List!58003) Unit!149095)

(assert (=> b!5012670 (= lt!2073522 (longestMatchIsAcceptedByMatchOrIsEmpty!1941 r!12727 lt!2073525))))

(assert (=> b!5012670 e!3131559))

(declare-fun res!2137574 () Bool)

(assert (=> b!5012670 (=> res!2137574 e!3131559)))

(assert (=> b!5012670 (= res!2137574 (= lt!2073538 0))))

(declare-fun findLongestMatchInnerZipperFastV2!139 ((InoxSet Context!6448) Int BalanceConc!30066 Int) Int)

(assert (=> b!5012670 (= lt!2073538 (findLongestMatchInnerZipperFastV2!139 z!4183 lt!2073523 totalInput!1012 lt!2073533))))

(declare-fun lt!2073532 () Unit!149095)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmptyRecV2!58 ((InoxSet Context!6448) Int BalanceConc!30066) Unit!149095)

(assert (=> b!5012670 (= lt!2073532 (longestMatchIsAcceptedByMatchOrIsEmptyRecV2!58 z!4183 lt!2073523 totalInput!1012))))

(declare-fun isPrefix!5352 (List!58003 List!58003) Bool)

(assert (=> b!5012670 (isPrefix!5352 (take!658 lt!2073520 lt!2073523) lt!2073520)))

(declare-fun lt!2073521 () Unit!149095)

(declare-fun lemmaTakeIsPrefix!152 (List!58003 Int) Unit!149095)

(assert (=> b!5012670 (= lt!2073521 (lemmaTakeIsPrefix!152 lt!2073520 lt!2073523))))

(assert (=> b!5012670 (isPrefix!5352 (_1!34823 lt!2073527) lt!2073517)))

(declare-fun lt!2073524 () Unit!149095)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3450 (List!58003 List!58003) Unit!149095)

(assert (=> b!5012670 (= lt!2073524 (lemmaConcatTwoListThenFirstIsPrefix!3450 (_1!34823 lt!2073527) (_2!34823 lt!2073527)))))

(assert (=> b!5012670 (isPrefix!5352 lt!2073530 lt!2073515)))

(declare-fun lt!2073529 () Unit!149095)

(assert (=> b!5012670 (= lt!2073529 (lemmaConcatTwoListThenFirstIsPrefix!3450 lt!2073530 lt!2073526))))

(declare-fun res!2137572 () Bool)

(assert (=> start!529554 (=> (not res!2137572) (not e!3131555))))

(declare-fun validRegex!6096 (Regex!13799) Bool)

(assert (=> start!529554 (= res!2137572 (validRegex!6096 r!12727))))

(assert (=> start!529554 e!3131555))

(declare-fun e!3131549 () Bool)

(assert (=> start!529554 e!3131549))

(declare-fun inv!76060 (BalanceConc!30066) Bool)

(assert (=> start!529554 (and (inv!76060 input!5597) e!3131547)))

(declare-fun condSetEmpty!28442 () Bool)

(assert (=> start!529554 (= condSetEmpty!28442 (= z!4183 ((as const (Array Context!6448 Bool)) false)))))

(declare-fun setRes!28442 () Bool)

(assert (=> start!529554 setRes!28442))

(declare-fun e!3131548 () Bool)

(assert (=> start!529554 (and (inv!76060 totalInput!1012) e!3131548)))

(declare-fun b!5012671 () Bool)

(declare-fun tp_is_empty!36595 () Bool)

(assert (=> b!5012671 (= e!3131549 tp_is_empty!36595)))

(declare-fun b!5012672 () Bool)

(declare-fun tp!1405878 () Bool)

(declare-fun tp!1405881 () Bool)

(assert (=> b!5012672 (= e!3131549 (and tp!1405878 tp!1405881))))

(declare-fun setIsEmpty!28442 () Bool)

(assert (=> setIsEmpty!28442 setRes!28442))

(declare-fun b!5012673 () Bool)

(declare-fun isEmpty!31352 (BalanceConc!30066) Bool)

(assert (=> b!5012673 (= e!3131560 (not (isEmpty!31352 (_1!34824 lt!2073535))))))

(declare-fun b!5012674 () Bool)

(assert (=> b!5012674 (= e!3131550 (not (isEmpty!31351 (_1!34823 lt!2073527))))))

(declare-fun b!5012675 () Bool)

(declare-fun tp!1405879 () Bool)

(assert (=> b!5012675 (= e!3131549 tp!1405879)))

(declare-fun b!5012676 () Bool)

(declare-fun tp!1405882 () Bool)

(assert (=> b!5012676 (= e!3131548 (and (inv!76059 (c!856280 totalInput!1012)) tp!1405882))))

(declare-fun b!5012677 () Bool)

(assert (=> b!5012677 (= e!3131557 true)))

(declare-fun lt!2073518 () Int)

(assert (=> b!5012677 (= lt!2073518 (size!38476 (_1!34824 lt!2073535)))))

(declare-fun lt!2073528 () Int)

(assert (=> b!5012677 (= lt!2073528 (size!38477 (_1!34823 lt!2073527)))))

(assert (=> b!5012677 (= (matchR!6763 r!12727 lt!2073530) lt!2073537)))

(declare-fun lt!2073531 () Unit!149095)

(declare-fun theoremZipperRegexEquiv!171 ((InoxSet Context!6448) List!58002 Regex!13799 List!58003) Unit!149095)

(assert (=> b!5012677 (= lt!2073531 (theoremZipperRegexEquiv!171 z!4183 lt!2073519 r!12727 lt!2073530))))

(assert (=> b!5012677 (= lt!2073536 (matchZipper!567 z!4183 (_1!34823 lt!2073527)))))

(declare-fun lt!2073534 () Unit!149095)

(assert (=> b!5012677 (= lt!2073534 (theoremZipperRegexEquiv!171 z!4183 lt!2073519 r!12727 (_1!34823 lt!2073527)))))

(declare-fun setElem!28442 () Context!6448)

(declare-fun tp!1405877 () Bool)

(declare-fun setNonEmpty!28442 () Bool)

(declare-fun inv!76061 (Context!6448) Bool)

(assert (=> setNonEmpty!28442 (= setRes!28442 (and tp!1405877 (inv!76061 setElem!28442) e!3131558))))

(declare-fun setRest!28442 () (InoxSet Context!6448))

(assert (=> setNonEmpty!28442 (= z!4183 ((_ map or) (store ((as const (Array Context!6448 Bool)) false) setElem!28442 true) setRest!28442))))

(declare-fun b!5012678 () Bool)

(declare-fun tp!1405880 () Bool)

(declare-fun tp!1405884 () Bool)

(assert (=> b!5012678 (= e!3131549 (and tp!1405880 tp!1405884))))

(assert (= (and start!529554 res!2137572) b!5012661))

(assert (= (and b!5012661 res!2137581) b!5012664))

(assert (= (and b!5012664 res!2137575) b!5012668))

(assert (= (and b!5012668 res!2137577) b!5012662))

(assert (= (and b!5012662 res!2137580) b!5012670))

(assert (= (and b!5012670 (not res!2137574)) b!5012667))

(assert (= (and b!5012670 (not res!2137571)) b!5012663))

(assert (= (and b!5012670 res!2137579) b!5012673))

(assert (= (and b!5012670 (not res!2137578)) b!5012669))

(assert (= (and b!5012669 res!2137576) b!5012674))

(assert (= (and b!5012669 (not res!2137573)) b!5012677))

(get-info :version)

(assert (= (and start!529554 ((_ is ElementMatch!13799) r!12727)) b!5012671))

(assert (= (and start!529554 ((_ is Concat!22592) r!12727)) b!5012678))

(assert (= (and start!529554 ((_ is Star!13799) r!12727)) b!5012675))

(assert (= (and start!529554 ((_ is Union!13799) r!12727)) b!5012672))

(assert (= start!529554 b!5012666))

(assert (= (and start!529554 condSetEmpty!28442) setIsEmpty!28442))

(assert (= (and start!529554 (not condSetEmpty!28442)) setNonEmpty!28442))

(assert (= setNonEmpty!28442 b!5012665))

(assert (= start!529554 b!5012676))

(declare-fun m!6047160 () Bool)

(assert (=> b!5012666 m!6047160))

(declare-fun m!6047162 () Bool)

(assert (=> b!5012669 m!6047162))

(declare-fun m!6047164 () Bool)

(assert (=> b!5012677 m!6047164))

(declare-fun m!6047166 () Bool)

(assert (=> b!5012677 m!6047166))

(declare-fun m!6047168 () Bool)

(assert (=> b!5012677 m!6047168))

(declare-fun m!6047170 () Bool)

(assert (=> b!5012677 m!6047170))

(declare-fun m!6047172 () Bool)

(assert (=> b!5012677 m!6047172))

(declare-fun m!6047174 () Bool)

(assert (=> b!5012677 m!6047174))

(declare-fun m!6047176 () Bool)

(assert (=> b!5012674 m!6047176))

(declare-fun m!6047178 () Bool)

(assert (=> b!5012676 m!6047178))

(declare-fun m!6047180 () Bool)

(assert (=> b!5012664 m!6047180))

(declare-fun m!6047182 () Bool)

(assert (=> b!5012664 m!6047182))

(declare-fun m!6047184 () Bool)

(assert (=> b!5012664 m!6047184))

(declare-fun m!6047186 () Bool)

(assert (=> b!5012667 m!6047186))

(assert (=> b!5012667 m!6047186))

(declare-fun m!6047188 () Bool)

(assert (=> b!5012667 m!6047188))

(assert (=> b!5012667 m!6047188))

(declare-fun m!6047190 () Bool)

(assert (=> b!5012667 m!6047190))

(declare-fun m!6047192 () Bool)

(assert (=> b!5012668 m!6047192))

(declare-fun m!6047194 () Bool)

(assert (=> b!5012668 m!6047194))

(declare-fun m!6047196 () Bool)

(assert (=> b!5012668 m!6047196))

(declare-fun m!6047198 () Bool)

(assert (=> b!5012668 m!6047198))

(declare-fun m!6047200 () Bool)

(assert (=> b!5012668 m!6047200))

(declare-fun m!6047202 () Bool)

(assert (=> b!5012668 m!6047202))

(declare-fun m!6047204 () Bool)

(assert (=> b!5012668 m!6047204))

(declare-fun m!6047206 () Bool)

(assert (=> b!5012663 m!6047206))

(declare-fun m!6047208 () Bool)

(assert (=> setNonEmpty!28442 m!6047208))

(declare-fun m!6047210 () Bool)

(assert (=> b!5012661 m!6047210))

(declare-fun m!6047212 () Bool)

(assert (=> b!5012661 m!6047212))

(declare-fun m!6047214 () Bool)

(assert (=> b!5012673 m!6047214))

(declare-fun m!6047216 () Bool)

(assert (=> start!529554 m!6047216))

(declare-fun m!6047218 () Bool)

(assert (=> start!529554 m!6047218))

(declare-fun m!6047220 () Bool)

(assert (=> start!529554 m!6047220))

(declare-fun m!6047222 () Bool)

(assert (=> b!5012670 m!6047222))

(declare-fun m!6047224 () Bool)

(assert (=> b!5012670 m!6047224))

(declare-fun m!6047226 () Bool)

(assert (=> b!5012670 m!6047226))

(declare-fun m!6047228 () Bool)

(assert (=> b!5012670 m!6047228))

(declare-fun m!6047230 () Bool)

(assert (=> b!5012670 m!6047230))

(declare-fun m!6047232 () Bool)

(assert (=> b!5012670 m!6047232))

(declare-fun m!6047234 () Bool)

(assert (=> b!5012670 m!6047234))

(declare-fun m!6047236 () Bool)

(assert (=> b!5012670 m!6047236))

(declare-fun m!6047238 () Bool)

(assert (=> b!5012670 m!6047238))

(declare-fun m!6047240 () Bool)

(assert (=> b!5012670 m!6047240))

(declare-fun m!6047242 () Bool)

(assert (=> b!5012670 m!6047242))

(declare-fun m!6047244 () Bool)

(assert (=> b!5012670 m!6047244))

(declare-fun m!6047246 () Bool)

(assert (=> b!5012670 m!6047246))

(assert (=> b!5012670 m!6047222))

(assert (=> b!5012670 m!6047246))

(declare-fun m!6047248 () Bool)

(assert (=> b!5012670 m!6047248))

(declare-fun m!6047250 () Bool)

(assert (=> b!5012670 m!6047250))

(assert (=> b!5012670 m!6047232))

(declare-fun m!6047252 () Bool)

(assert (=> b!5012662 m!6047252))

(check-sat (not b!5012677) (not b!5012662) (not b!5012675) (not b!5012669) (not setNonEmpty!28442) (not b!5012661) (not b!5012673) (not b!5012674) (not b!5012667) (not b!5012664) (not start!529554) (not b!5012670) (not b!5012672) (not b!5012663) (not b!5012665) (not b!5012666) (not b!5012676) tp_is_empty!36595 (not b!5012668) (not b!5012678))
(check-sat)
