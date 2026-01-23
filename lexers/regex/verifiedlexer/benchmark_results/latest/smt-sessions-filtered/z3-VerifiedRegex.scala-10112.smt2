; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!529790 () Bool)

(assert start!529790)

(declare-fun b!5014726 () Bool)

(declare-fun e!3132878 () Bool)

(declare-fun e!3132867 () Bool)

(assert (=> b!5014726 (= e!3132878 e!3132867)))

(declare-fun res!2138488 () Bool)

(assert (=> b!5014726 (=> (not res!2138488) (not e!3132867))))

(declare-datatypes ((C!27868 0))(
  ( (C!27869 (val!23300 Int)) )
))
(declare-datatypes ((List!58031 0))(
  ( (Nil!57907) (Cons!57907 (h!64355 C!27868) (t!370399 List!58031)) )
))
(declare-fun lt!2075000 () List!58031)

(declare-fun lt!2075001 () List!58031)

(declare-fun isSuffix!1375 (List!58031 List!58031) Bool)

(assert (=> b!5014726 (= res!2138488 (isSuffix!1375 lt!2075000 lt!2075001))))

(declare-datatypes ((IArray!30717 0))(
  ( (IArray!30718 (innerList!15416 List!58031)) )
))
(declare-datatypes ((Conc!15328 0))(
  ( (Node!15328 (left!42334 Conc!15328) (right!42664 Conc!15328) (csize!30886 Int) (cheight!15539 Int)) (Leaf!25441 (xs!18654 IArray!30717) (csize!30887 Int)) (Empty!15328) )
))
(declare-datatypes ((BalanceConc!30086 0))(
  ( (BalanceConc!30087 (c!856663 Conc!15328)) )
))
(declare-fun totalInput!1012 () BalanceConc!30086)

(declare-fun list!18650 (BalanceConc!30086) List!58031)

(assert (=> b!5014726 (= lt!2075001 (list!18650 totalInput!1012))))

(declare-fun input!5597 () BalanceConc!30086)

(assert (=> b!5014726 (= lt!2075000 (list!18650 input!5597))))

(declare-fun lt!2074995 () Int)

(declare-fun b!5014727 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!13809 0))(
  ( (ElementMatch!13809 (c!856664 C!27868)) (Concat!22602 (regOne!28130 Regex!13809) (regTwo!28130 Regex!13809)) (EmptyExpr!13809) (Star!13809 (reg!14138 Regex!13809)) (EmptyLang!13809) (Union!13809 (regOne!28131 Regex!13809) (regTwo!28131 Regex!13809)) )
))
(declare-datatypes ((List!58032 0))(
  ( (Nil!57908) (Cons!57908 (h!64356 Regex!13809) (t!370400 List!58032)) )
))
(declare-datatypes ((Context!6468 0))(
  ( (Context!6469 (exprs!3734 List!58032)) )
))
(declare-fun z!4183 () (InoxSet Context!6468))

(declare-fun e!3132877 () Bool)

(declare-fun lt!2075008 () Int)

(declare-fun matchZipper!577 ((InoxSet Context!6468) List!58031) Bool)

(declare-fun take!668 (List!58031 Int) List!58031)

(declare-fun drop!2472 (List!58031 Int) List!58031)

(assert (=> b!5014727 (= e!3132877 (matchZipper!577 z!4183 (take!668 (drop!2472 lt!2075001 lt!2074995) lt!2075008)))))

(declare-fun b!5014728 () Bool)

(declare-fun e!3132868 () Bool)

(declare-fun tp!1406388 () Bool)

(declare-fun inv!76116 (Conc!15328) Bool)

(assert (=> b!5014728 (= e!3132868 (and (inv!76116 (c!856663 totalInput!1012)) tp!1406388))))

(declare-fun setIsEmpty!28484 () Bool)

(declare-fun setRes!28484 () Bool)

(assert (=> setIsEmpty!28484 setRes!28484))

(declare-fun tp!1406386 () Bool)

(declare-fun e!3132881 () Bool)

(declare-fun setElem!28484 () Context!6468)

(declare-fun setNonEmpty!28484 () Bool)

(declare-fun inv!76117 (Context!6468) Bool)

(assert (=> setNonEmpty!28484 (= setRes!28484 (and tp!1406386 (inv!76117 setElem!28484) e!3132881))))

(declare-fun setRest!28484 () (InoxSet Context!6468))

(assert (=> setNonEmpty!28484 (= z!4183 ((_ map or) (store ((as const (Array Context!6468 Bool)) false) setElem!28484 true) setRest!28484))))

(declare-fun b!5014729 () Bool)

(declare-fun e!3132869 () Bool)

(declare-datatypes ((tuple2!63080 0))(
  ( (tuple2!63081 (_1!34843 BalanceConc!30086) (_2!34843 BalanceConc!30086)) )
))
(declare-fun lt!2075011 () tuple2!63080)

(declare-fun isEmpty!31375 (BalanceConc!30086) Bool)

(assert (=> b!5014729 (= e!3132869 (not (isEmpty!31375 (_1!34843 lt!2075011))))))

(declare-fun b!5014730 () Bool)

(declare-fun e!3132872 () Bool)

(declare-fun e!3132866 () Bool)

(assert (=> b!5014730 (= e!3132872 e!3132866)))

(declare-fun res!2138487 () Bool)

(assert (=> b!5014730 (=> (not res!2138487) (not e!3132866))))

(declare-fun lt!2075013 () List!58031)

(assert (=> b!5014730 (= res!2138487 (= lt!2075013 lt!2075000))))

(declare-datatypes ((tuple2!63082 0))(
  ( (tuple2!63083 (_1!34844 List!58031) (_2!34844 List!58031)) )
))
(declare-fun lt!2074993 () tuple2!63082)

(declare-fun ++!12657 (List!58031 List!58031) List!58031)

(assert (=> b!5014730 (= lt!2075013 (++!12657 (_1!34844 lt!2074993) (_2!34844 lt!2074993)))))

(declare-fun b!5014732 () Bool)

(declare-fun e!3132874 () Bool)

(assert (=> b!5014732 (= e!3132874 false)))

(declare-fun lt!2075006 () List!58031)

(declare-fun lt!2075002 () Bool)

(assert (=> b!5014732 (or (= lt!2075006 (_1!34844 lt!2074993)) (not lt!2075002))))

(declare-datatypes ((Unit!149127 0))(
  ( (Unit!149128) )
))
(declare-fun lt!2075012 () Unit!149127)

(declare-fun r!12727 () Regex!13809)

(declare-fun longestMatchNoBiggerStringMatch!17 (Regex!13809 List!58031 List!58031 List!58031) Unit!149127)

(assert (=> b!5014732 (= lt!2075012 (longestMatchNoBiggerStringMatch!17 r!12727 lt!2075000 (_1!34844 lt!2074993) lt!2075006))))

(declare-fun b!5014733 () Bool)

(declare-fun e!3132875 () Bool)

(declare-fun tp_is_empty!36615 () Bool)

(assert (=> b!5014733 (= e!3132875 tp_is_empty!36615)))

(declare-fun b!5014734 () Bool)

(declare-fun e!3132879 () Bool)

(declare-fun isEmpty!31376 (List!58031) Bool)

(assert (=> b!5014734 (= e!3132879 (not (isEmpty!31376 (_1!34844 lt!2074993))))))

(declare-fun b!5014735 () Bool)

(declare-fun e!3132870 () Bool)

(declare-fun tp!1406387 () Bool)

(assert (=> b!5014735 (= e!3132870 (and (inv!76116 (c!856663 input!5597)) tp!1406387))))

(declare-fun b!5014736 () Bool)

(declare-fun tp!1406390 () Bool)

(assert (=> b!5014736 (= e!3132875 tp!1406390)))

(declare-fun b!5014737 () Bool)

(declare-fun e!3132876 () Bool)

(assert (=> b!5014737 (= e!3132866 (not e!3132876))))

(declare-fun res!2138482 () Bool)

(assert (=> b!5014737 (=> res!2138482 e!3132876)))

(assert (=> b!5014737 (= res!2138482 e!3132869)))

(declare-fun res!2138493 () Bool)

(assert (=> b!5014737 (=> (not res!2138493) (not e!3132869))))

(declare-fun lt!2074992 () Bool)

(assert (=> b!5014737 (= res!2138493 (not lt!2074992))))

(assert (=> b!5014737 (= lt!2074992 (matchZipper!577 z!4183 lt!2075006))))

(declare-fun e!3132873 () Bool)

(assert (=> b!5014737 e!3132873))

(declare-fun res!2138491 () Bool)

(assert (=> b!5014737 (=> res!2138491 e!3132873)))

(declare-fun lt!2074989 () tuple2!63082)

(assert (=> b!5014737 (= res!2138491 (isEmpty!31376 (_1!34844 lt!2074989)))))

(declare-fun findLongestMatchInner!1998 (Regex!13809 List!58031 Int List!58031 List!58031 Int) tuple2!63082)

(declare-fun size!38500 (List!58031) Int)

(assert (=> b!5014737 (= lt!2074989 (findLongestMatchInner!1998 r!12727 Nil!57907 (size!38500 Nil!57907) lt!2075000 lt!2075000 (size!38500 lt!2075000)))))

(declare-fun lt!2074999 () Unit!149127)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1951 (Regex!13809 List!58031) Unit!149127)

(assert (=> b!5014737 (= lt!2074999 (longestMatchIsAcceptedByMatchOrIsEmpty!1951 r!12727 lt!2075000))))

(assert (=> b!5014737 e!3132877))

(declare-fun res!2138492 () Bool)

(assert (=> b!5014737 (=> res!2138492 e!3132877)))

(assert (=> b!5014737 (= res!2138492 (= lt!2075008 0))))

(declare-fun lt!2074996 () Int)

(declare-fun findLongestMatchInnerZipperFastV2!149 ((InoxSet Context!6468) Int BalanceConc!30086 Int) Int)

(assert (=> b!5014737 (= lt!2075008 (findLongestMatchInnerZipperFastV2!149 z!4183 lt!2074995 totalInput!1012 lt!2074996))))

(declare-fun lt!2075004 () Unit!149127)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmptyRecV2!68 ((InoxSet Context!6468) Int BalanceConc!30086) Unit!149127)

(assert (=> b!5014737 (= lt!2075004 (longestMatchIsAcceptedByMatchOrIsEmptyRecV2!68 z!4183 lt!2074995 totalInput!1012))))

(declare-fun isPrefix!5362 (List!58031 List!58031) Bool)

(assert (=> b!5014737 (isPrefix!5362 (take!668 lt!2075001 lt!2074995) lt!2075001)))

(declare-fun lt!2074990 () Unit!149127)

(declare-fun lemmaTakeIsPrefix!162 (List!58031 Int) Unit!149127)

(assert (=> b!5014737 (= lt!2074990 (lemmaTakeIsPrefix!162 lt!2075001 lt!2074995))))

(assert (=> b!5014737 (isPrefix!5362 (_1!34844 lt!2074993) lt!2075013)))

(declare-fun lt!2074998 () Unit!149127)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3460 (List!58031 List!58031) Unit!149127)

(assert (=> b!5014737 (= lt!2074998 (lemmaConcatTwoListThenFirstIsPrefix!3460 (_1!34844 lt!2074993) (_2!34844 lt!2074993)))))

(declare-fun lt!2074991 () List!58031)

(assert (=> b!5014737 (isPrefix!5362 lt!2075006 lt!2074991)))

(declare-fun lt!2075005 () Unit!149127)

(declare-fun lt!2075014 () List!58031)

(assert (=> b!5014737 (= lt!2075005 (lemmaConcatTwoListThenFirstIsPrefix!3460 lt!2075006 lt!2075014))))

(declare-fun b!5014738 () Bool)

(declare-fun e!3132880 () Bool)

(assert (=> b!5014738 (= e!3132880 e!3132878)))

(declare-fun res!2138483 () Bool)

(assert (=> b!5014738 (=> (not res!2138483) (not e!3132878))))

(declare-datatypes ((List!58033 0))(
  ( (Nil!57909) (Cons!57909 (h!64357 Context!6468) (t!370401 List!58033)) )
))
(declare-fun lt!2075003 () List!58033)

(declare-fun unfocusZipper!336 (List!58033) Regex!13809)

(assert (=> b!5014738 (= res!2138483 (= (unfocusZipper!336 lt!2075003) r!12727))))

(declare-fun toList!8094 ((InoxSet Context!6468)) List!58033)

(assert (=> b!5014738 (= lt!2075003 (toList!8094 z!4183))))

(declare-fun b!5014739 () Bool)

(declare-fun e!3132871 () Bool)

(assert (=> b!5014739 (= e!3132871 e!3132874)))

(declare-fun res!2138490 () Bool)

(assert (=> b!5014739 (=> res!2138490 e!3132874)))

(declare-fun lt!2075009 () Int)

(declare-fun lt!2074994 () Int)

(assert (=> b!5014739 (= res!2138490 (or (> lt!2075009 lt!2074994) (<= lt!2074994 lt!2075009)))))

(declare-fun size!38501 (BalanceConc!30086) Int)

(assert (=> b!5014739 (= lt!2074994 (size!38501 (_1!34843 lt!2075011)))))

(assert (=> b!5014739 (= lt!2075009 (size!38500 (_1!34844 lt!2074993)))))

(assert (=> b!5014739 (= lt!2075002 lt!2074992)))

(declare-fun matchR!6773 (Regex!13809 List!58031) Bool)

(assert (=> b!5014739 (= lt!2075002 (matchR!6773 r!12727 lt!2075006))))

(declare-fun lt!2074997 () Unit!149127)

(declare-fun theoremZipperRegexEquiv!181 ((InoxSet Context!6468) List!58033 Regex!13809 List!58031) Unit!149127)

(assert (=> b!5014739 (= lt!2074997 (theoremZipperRegexEquiv!181 z!4183 lt!2075003 r!12727 lt!2075006))))

(declare-fun lt!2075010 () Bool)

(assert (=> b!5014739 (= lt!2075010 (matchZipper!577 z!4183 (_1!34844 lt!2074993)))))

(declare-fun lt!2075007 () Unit!149127)

(assert (=> b!5014739 (= lt!2075007 (theoremZipperRegexEquiv!181 z!4183 lt!2075003 r!12727 (_1!34844 lt!2074993)))))

(declare-fun b!5014740 () Bool)

(assert (=> b!5014740 (= e!3132873 (matchR!6773 r!12727 (_1!34844 lt!2074989)))))

(declare-fun b!5014741 () Bool)

(declare-fun tp!1406385 () Bool)

(declare-fun tp!1406389 () Bool)

(assert (=> b!5014741 (= e!3132875 (and tp!1406385 tp!1406389))))

(declare-fun b!5014742 () Bool)

(declare-fun tp!1406382 () Bool)

(assert (=> b!5014742 (= e!3132881 tp!1406382)))

(declare-fun res!2138486 () Bool)

(assert (=> start!529790 (=> (not res!2138486) (not e!3132880))))

(declare-fun validRegex!6106 (Regex!13809) Bool)

(assert (=> start!529790 (= res!2138486 (validRegex!6106 r!12727))))

(assert (=> start!529790 e!3132880))

(assert (=> start!529790 e!3132875))

(declare-fun inv!76118 (BalanceConc!30086) Bool)

(assert (=> start!529790 (and (inv!76118 input!5597) e!3132870)))

(declare-fun condSetEmpty!28484 () Bool)

(assert (=> start!529790 (= condSetEmpty!28484 (= z!4183 ((as const (Array Context!6468 Bool)) false)))))

(assert (=> start!529790 setRes!28484))

(assert (=> start!529790 (and (inv!76118 totalInput!1012) e!3132868)))

(declare-fun b!5014731 () Bool)

(assert (=> b!5014731 (= e!3132876 e!3132871)))

(declare-fun res!2138484 () Bool)

(assert (=> b!5014731 (=> res!2138484 e!3132871)))

(assert (=> b!5014731 (= res!2138484 e!3132879)))

(declare-fun res!2138489 () Bool)

(assert (=> b!5014731 (=> (not res!2138489) (not e!3132879))))

(assert (=> b!5014731 (= res!2138489 (not lt!2075010))))

(assert (=> b!5014731 (= lt!2075010 (matchR!6773 r!12727 (_1!34844 lt!2074993)))))

(declare-fun b!5014743 () Bool)

(declare-fun tp!1406383 () Bool)

(declare-fun tp!1406384 () Bool)

(assert (=> b!5014743 (= e!3132875 (and tp!1406383 tp!1406384))))

(declare-fun b!5014744 () Bool)

(assert (=> b!5014744 (= e!3132867 e!3132872)))

(declare-fun res!2138485 () Bool)

(assert (=> b!5014744 (=> (not res!2138485) (not e!3132872))))

(assert (=> b!5014744 (= res!2138485 (= lt!2074991 lt!2075000))))

(assert (=> b!5014744 (= lt!2074991 (++!12657 lt!2075006 lt!2075014))))

(assert (=> b!5014744 (= lt!2075014 (list!18650 (_2!34843 lt!2075011)))))

(assert (=> b!5014744 (= lt!2075006 (list!18650 (_1!34843 lt!2075011)))))

(declare-fun findLongestMatch!1822 (Regex!13809 List!58031) tuple2!63082)

(assert (=> b!5014744 (= lt!2074993 (findLongestMatch!1822 r!12727 lt!2075000))))

(assert (=> b!5014744 (= lt!2074995 (- lt!2074996 (size!38501 input!5597)))))

(assert (=> b!5014744 (= lt!2074996 (size!38501 totalInput!1012))))

(declare-fun findLongestMatchZipperFastV2!111 ((InoxSet Context!6468) BalanceConc!30086 BalanceConc!30086) tuple2!63080)

(assert (=> b!5014744 (= lt!2075011 (findLongestMatchZipperFastV2!111 z!4183 input!5597 totalInput!1012))))

(assert (= (and start!529790 res!2138486) b!5014738))

(assert (= (and b!5014738 res!2138483) b!5014726))

(assert (= (and b!5014726 res!2138488) b!5014744))

(assert (= (and b!5014744 res!2138485) b!5014730))

(assert (= (and b!5014730 res!2138487) b!5014737))

(assert (= (and b!5014737 (not res!2138492)) b!5014727))

(assert (= (and b!5014737 (not res!2138491)) b!5014740))

(assert (= (and b!5014737 res!2138493) b!5014729))

(assert (= (and b!5014737 (not res!2138482)) b!5014731))

(assert (= (and b!5014731 res!2138489) b!5014734))

(assert (= (and b!5014731 (not res!2138484)) b!5014739))

(assert (= (and b!5014739 (not res!2138490)) b!5014732))

(get-info :version)

(assert (= (and start!529790 ((_ is ElementMatch!13809) r!12727)) b!5014733))

(assert (= (and start!529790 ((_ is Concat!22602) r!12727)) b!5014741))

(assert (= (and start!529790 ((_ is Star!13809) r!12727)) b!5014736))

(assert (= (and start!529790 ((_ is Union!13809) r!12727)) b!5014743))

(assert (= start!529790 b!5014735))

(assert (= (and start!529790 condSetEmpty!28484) setIsEmpty!28484))

(assert (= (and start!529790 (not condSetEmpty!28484)) setNonEmpty!28484))

(assert (= setNonEmpty!28484 b!5014742))

(assert (= start!529790 b!5014728))

(declare-fun m!6049482 () Bool)

(assert (=> b!5014734 m!6049482))

(declare-fun m!6049484 () Bool)

(assert (=> b!5014730 m!6049484))

(declare-fun m!6049486 () Bool)

(assert (=> b!5014729 m!6049486))

(declare-fun m!6049488 () Bool)

(assert (=> b!5014737 m!6049488))

(declare-fun m!6049490 () Bool)

(assert (=> b!5014737 m!6049490))

(declare-fun m!6049492 () Bool)

(assert (=> b!5014737 m!6049492))

(declare-fun m!6049494 () Bool)

(assert (=> b!5014737 m!6049494))

(declare-fun m!6049496 () Bool)

(assert (=> b!5014737 m!6049496))

(declare-fun m!6049498 () Bool)

(assert (=> b!5014737 m!6049498))

(declare-fun m!6049500 () Bool)

(assert (=> b!5014737 m!6049500))

(assert (=> b!5014737 m!6049490))

(declare-fun m!6049502 () Bool)

(assert (=> b!5014737 m!6049502))

(declare-fun m!6049504 () Bool)

(assert (=> b!5014737 m!6049504))

(declare-fun m!6049506 () Bool)

(assert (=> b!5014737 m!6049506))

(assert (=> b!5014737 m!6049500))

(declare-fun m!6049508 () Bool)

(assert (=> b!5014737 m!6049508))

(declare-fun m!6049510 () Bool)

(assert (=> b!5014737 m!6049510))

(declare-fun m!6049512 () Bool)

(assert (=> b!5014737 m!6049512))

(assert (=> b!5014737 m!6049502))

(declare-fun m!6049514 () Bool)

(assert (=> b!5014737 m!6049514))

(declare-fun m!6049516 () Bool)

(assert (=> b!5014737 m!6049516))

(declare-fun m!6049518 () Bool)

(assert (=> b!5014740 m!6049518))

(declare-fun m!6049520 () Bool)

(assert (=> b!5014731 m!6049520))

(declare-fun m!6049522 () Bool)

(assert (=> b!5014732 m!6049522))

(declare-fun m!6049524 () Bool)

(assert (=> b!5014728 m!6049524))

(declare-fun m!6049526 () Bool)

(assert (=> b!5014735 m!6049526))

(declare-fun m!6049528 () Bool)

(assert (=> start!529790 m!6049528))

(declare-fun m!6049530 () Bool)

(assert (=> start!529790 m!6049530))

(declare-fun m!6049532 () Bool)

(assert (=> start!529790 m!6049532))

(declare-fun m!6049534 () Bool)

(assert (=> b!5014744 m!6049534))

(declare-fun m!6049536 () Bool)

(assert (=> b!5014744 m!6049536))

(declare-fun m!6049538 () Bool)

(assert (=> b!5014744 m!6049538))

(declare-fun m!6049540 () Bool)

(assert (=> b!5014744 m!6049540))

(declare-fun m!6049542 () Bool)

(assert (=> b!5014744 m!6049542))

(declare-fun m!6049544 () Bool)

(assert (=> b!5014744 m!6049544))

(declare-fun m!6049546 () Bool)

(assert (=> b!5014744 m!6049546))

(declare-fun m!6049548 () Bool)

(assert (=> b!5014727 m!6049548))

(assert (=> b!5014727 m!6049548))

(declare-fun m!6049550 () Bool)

(assert (=> b!5014727 m!6049550))

(assert (=> b!5014727 m!6049550))

(declare-fun m!6049552 () Bool)

(assert (=> b!5014727 m!6049552))

(declare-fun m!6049554 () Bool)

(assert (=> b!5014739 m!6049554))

(declare-fun m!6049556 () Bool)

(assert (=> b!5014739 m!6049556))

(declare-fun m!6049558 () Bool)

(assert (=> b!5014739 m!6049558))

(declare-fun m!6049560 () Bool)

(assert (=> b!5014739 m!6049560))

(declare-fun m!6049562 () Bool)

(assert (=> b!5014739 m!6049562))

(declare-fun m!6049564 () Bool)

(assert (=> b!5014739 m!6049564))

(declare-fun m!6049566 () Bool)

(assert (=> setNonEmpty!28484 m!6049566))

(declare-fun m!6049568 () Bool)

(assert (=> b!5014738 m!6049568))

(declare-fun m!6049570 () Bool)

(assert (=> b!5014738 m!6049570))

(declare-fun m!6049572 () Bool)

(assert (=> b!5014726 m!6049572))

(declare-fun m!6049574 () Bool)

(assert (=> b!5014726 m!6049574))

(declare-fun m!6049576 () Bool)

(assert (=> b!5014726 m!6049576))

(check-sat (not b!5014728) (not b!5014735) (not b!5014729) (not b!5014731) (not b!5014739) (not b!5014736) tp_is_empty!36615 (not b!5014730) (not setNonEmpty!28484) (not b!5014734) (not start!529790) (not b!5014737) (not b!5014742) (not b!5014738) (not b!5014726) (not b!5014732) (not b!5014743) (not b!5014727) (not b!5014744) (not b!5014740) (not b!5014741))
(check-sat)
(get-model)

(declare-fun d!1614601 () Bool)

(declare-fun c!856667 () Bool)

(assert (=> d!1614601 (= c!856667 ((_ is Node!15328) (c!856663 input!5597)))))

(declare-fun e!3132886 () Bool)

(assert (=> d!1614601 (= (inv!76116 (c!856663 input!5597)) e!3132886)))

(declare-fun b!5014751 () Bool)

(declare-fun inv!76119 (Conc!15328) Bool)

(assert (=> b!5014751 (= e!3132886 (inv!76119 (c!856663 input!5597)))))

(declare-fun b!5014752 () Bool)

(declare-fun e!3132887 () Bool)

(assert (=> b!5014752 (= e!3132886 e!3132887)))

(declare-fun res!2138496 () Bool)

(assert (=> b!5014752 (= res!2138496 (not ((_ is Leaf!25441) (c!856663 input!5597))))))

(assert (=> b!5014752 (=> res!2138496 e!3132887)))

(declare-fun b!5014753 () Bool)

(declare-fun inv!76120 (Conc!15328) Bool)

(assert (=> b!5014753 (= e!3132887 (inv!76120 (c!856663 input!5597)))))

(assert (= (and d!1614601 c!856667) b!5014751))

(assert (= (and d!1614601 (not c!856667)) b!5014752))

(assert (= (and b!5014752 (not res!2138496)) b!5014753))

(declare-fun m!6049578 () Bool)

(assert (=> b!5014751 m!6049578))

(declare-fun m!6049580 () Bool)

(assert (=> b!5014753 m!6049580))

(assert (=> b!5014735 d!1614601))

(declare-fun d!1614603 () Bool)

(declare-fun e!3132890 () Bool)

(assert (=> d!1614603 e!3132890))

(declare-fun res!2138499 () Bool)

(assert (=> d!1614603 (=> res!2138499 e!3132890)))

(declare-fun lt!2075017 () Bool)

(assert (=> d!1614603 (= res!2138499 (not lt!2075017))))

(assert (=> d!1614603 (= lt!2075017 (= lt!2075000 (drop!2472 lt!2075001 (- (size!38500 lt!2075001) (size!38500 lt!2075000)))))))

(assert (=> d!1614603 (= (isSuffix!1375 lt!2075000 lt!2075001) lt!2075017)))

(declare-fun b!5014756 () Bool)

(assert (=> b!5014756 (= e!3132890 (>= (size!38500 lt!2075001) (size!38500 lt!2075000)))))

(assert (= (and d!1614603 (not res!2138499)) b!5014756))

(declare-fun m!6049582 () Bool)

(assert (=> d!1614603 m!6049582))

(assert (=> d!1614603 m!6049502))

(declare-fun m!6049584 () Bool)

(assert (=> d!1614603 m!6049584))

(assert (=> b!5014756 m!6049582))

(assert (=> b!5014756 m!6049502))

(assert (=> b!5014726 d!1614603))

(declare-fun d!1614605 () Bool)

(declare-fun list!18651 (Conc!15328) List!58031)

(assert (=> d!1614605 (= (list!18650 totalInput!1012) (list!18651 (c!856663 totalInput!1012)))))

(declare-fun bs!1186877 () Bool)

(assert (= bs!1186877 d!1614605))

(declare-fun m!6049586 () Bool)

(assert (=> bs!1186877 m!6049586))

(assert (=> b!5014726 d!1614605))

(declare-fun d!1614607 () Bool)

(assert (=> d!1614607 (= (list!18650 input!5597) (list!18651 (c!856663 input!5597)))))

(declare-fun bs!1186878 () Bool)

(assert (= bs!1186878 d!1614607))

(declare-fun m!6049588 () Bool)

(assert (=> bs!1186878 m!6049588))

(assert (=> b!5014726 d!1614607))

(declare-fun d!1614609 () Bool)

(assert (=> d!1614609 (= (isEmpty!31376 (_1!34844 lt!2074993)) ((_ is Nil!57907) (_1!34844 lt!2074993)))))

(assert (=> b!5014734 d!1614609))

(declare-fun b!5014775 () Bool)

(declare-fun res!2138510 () Bool)

(declare-fun e!3132909 () Bool)

(assert (=> b!5014775 (=> (not res!2138510) (not e!3132909))))

(declare-fun call!350226 () Bool)

(assert (=> b!5014775 (= res!2138510 call!350226)))

(declare-fun e!3132906 () Bool)

(assert (=> b!5014775 (= e!3132906 e!3132909)))

(declare-fun b!5014776 () Bool)

(declare-fun e!3132911 () Bool)

(assert (=> b!5014776 (= e!3132911 call!350226)))

(declare-fun b!5014777 () Bool)

(declare-fun e!3132907 () Bool)

(declare-fun e!3132905 () Bool)

(assert (=> b!5014777 (= e!3132907 e!3132905)))

(declare-fun res!2138511 () Bool)

(declare-fun nullable!4696 (Regex!13809) Bool)

(assert (=> b!5014777 (= res!2138511 (not (nullable!4696 (reg!14138 r!12727))))))

(assert (=> b!5014777 (=> (not res!2138511) (not e!3132905))))

(declare-fun b!5014779 () Bool)

(declare-fun res!2138512 () Bool)

(declare-fun e!3132908 () Bool)

(assert (=> b!5014779 (=> res!2138512 e!3132908)))

(assert (=> b!5014779 (= res!2138512 (not ((_ is Concat!22602) r!12727)))))

(assert (=> b!5014779 (= e!3132906 e!3132908)))

(declare-fun b!5014780 () Bool)

(declare-fun call!350228 () Bool)

(assert (=> b!5014780 (= e!3132905 call!350228)))

(declare-fun b!5014781 () Bool)

(assert (=> b!5014781 (= e!3132908 e!3132911)))

(declare-fun res!2138513 () Bool)

(assert (=> b!5014781 (=> (not res!2138513) (not e!3132911))))

(declare-fun call!350227 () Bool)

(assert (=> b!5014781 (= res!2138513 call!350227)))

(declare-fun b!5014782 () Bool)

(assert (=> b!5014782 (= e!3132909 call!350227)))

(declare-fun c!856673 () Bool)

(declare-fun bm!350221 () Bool)

(declare-fun c!856672 () Bool)

(assert (=> bm!350221 (= call!350228 (validRegex!6106 (ite c!856672 (reg!14138 r!12727) (ite c!856673 (regOne!28131 r!12727) (regTwo!28130 r!12727)))))))

(declare-fun b!5014783 () Bool)

(declare-fun e!3132910 () Bool)

(assert (=> b!5014783 (= e!3132910 e!3132907)))

(assert (=> b!5014783 (= c!856672 ((_ is Star!13809) r!12727))))

(declare-fun bm!350222 () Bool)

(assert (=> bm!350222 (= call!350226 call!350228)))

(declare-fun bm!350223 () Bool)

(assert (=> bm!350223 (= call!350227 (validRegex!6106 (ite c!856673 (regTwo!28131 r!12727) (regOne!28130 r!12727))))))

(declare-fun b!5014778 () Bool)

(assert (=> b!5014778 (= e!3132907 e!3132906)))

(assert (=> b!5014778 (= c!856673 ((_ is Union!13809) r!12727))))

(declare-fun d!1614611 () Bool)

(declare-fun res!2138514 () Bool)

(assert (=> d!1614611 (=> res!2138514 e!3132910)))

(assert (=> d!1614611 (= res!2138514 ((_ is ElementMatch!13809) r!12727))))

(assert (=> d!1614611 (= (validRegex!6106 r!12727) e!3132910)))

(assert (= (and d!1614611 (not res!2138514)) b!5014783))

(assert (= (and b!5014783 c!856672) b!5014777))

(assert (= (and b!5014783 (not c!856672)) b!5014778))

(assert (= (and b!5014777 res!2138511) b!5014780))

(assert (= (and b!5014778 c!856673) b!5014775))

(assert (= (and b!5014778 (not c!856673)) b!5014779))

(assert (= (and b!5014775 res!2138510) b!5014782))

(assert (= (and b!5014779 (not res!2138512)) b!5014781))

(assert (= (and b!5014781 res!2138513) b!5014776))

(assert (= (or b!5014782 b!5014781) bm!350223))

(assert (= (or b!5014775 b!5014776) bm!350222))

(assert (= (or b!5014780 bm!350222) bm!350221))

(declare-fun m!6049590 () Bool)

(assert (=> b!5014777 m!6049590))

(declare-fun m!6049592 () Bool)

(assert (=> bm!350221 m!6049592))

(declare-fun m!6049594 () Bool)

(assert (=> bm!350223 m!6049594))

(assert (=> start!529790 d!1614611))

(declare-fun d!1614615 () Bool)

(declare-fun isBalanced!4279 (Conc!15328) Bool)

(assert (=> d!1614615 (= (inv!76118 input!5597) (isBalanced!4279 (c!856663 input!5597)))))

(declare-fun bs!1186879 () Bool)

(assert (= bs!1186879 d!1614615))

(declare-fun m!6049596 () Bool)

(assert (=> bs!1186879 m!6049596))

(assert (=> start!529790 d!1614615))

(declare-fun d!1614617 () Bool)

(assert (=> d!1614617 (= (inv!76118 totalInput!1012) (isBalanced!4279 (c!856663 totalInput!1012)))))

(declare-fun bs!1186880 () Bool)

(assert (= bs!1186880 d!1614617))

(declare-fun m!6049598 () Bool)

(assert (=> bs!1186880 m!6049598))

(assert (=> start!529790 d!1614617))

(declare-fun d!1614619 () Bool)

(declare-fun lt!2075048 () tuple2!63082)

(assert (=> d!1614619 (= (++!12657 (_1!34844 lt!2075048) (_2!34844 lt!2075048)) lt!2075000)))

(declare-fun sizeTr!407 (List!58031 Int) Int)

(assert (=> d!1614619 (= lt!2075048 (findLongestMatchInner!1998 r!12727 Nil!57907 0 lt!2075000 lt!2075000 (sizeTr!407 lt!2075000 0)))))

(declare-fun lt!2075044 () Unit!149127)

(declare-fun lt!2075049 () Unit!149127)

(assert (=> d!1614619 (= lt!2075044 lt!2075049)))

(declare-fun lt!2075047 () List!58031)

(declare-fun lt!2075046 () Int)

(assert (=> d!1614619 (= (sizeTr!407 lt!2075047 lt!2075046) (+ (size!38500 lt!2075047) lt!2075046))))

(declare-fun lemmaSizeTrEqualsSize!406 (List!58031 Int) Unit!149127)

(assert (=> d!1614619 (= lt!2075049 (lemmaSizeTrEqualsSize!406 lt!2075047 lt!2075046))))

(assert (=> d!1614619 (= lt!2075046 0)))

(assert (=> d!1614619 (= lt!2075047 Nil!57907)))

(declare-fun lt!2075045 () Unit!149127)

(declare-fun lt!2075050 () Unit!149127)

(assert (=> d!1614619 (= lt!2075045 lt!2075050)))

(declare-fun lt!2075043 () Int)

(assert (=> d!1614619 (= (sizeTr!407 lt!2075000 lt!2075043) (+ (size!38500 lt!2075000) lt!2075043))))

(assert (=> d!1614619 (= lt!2075050 (lemmaSizeTrEqualsSize!406 lt!2075000 lt!2075043))))

(assert (=> d!1614619 (= lt!2075043 0)))

(assert (=> d!1614619 (validRegex!6106 r!12727)))

(assert (=> d!1614619 (= (findLongestMatch!1822 r!12727 lt!2075000) lt!2075048)))

(declare-fun bs!1186884 () Bool)

(assert (= bs!1186884 d!1614619))

(assert (=> bs!1186884 m!6049502))

(declare-fun m!6049624 () Bool)

(assert (=> bs!1186884 m!6049624))

(declare-fun m!6049626 () Bool)

(assert (=> bs!1186884 m!6049626))

(declare-fun m!6049628 () Bool)

(assert (=> bs!1186884 m!6049628))

(assert (=> bs!1186884 m!6049528))

(declare-fun m!6049630 () Bool)

(assert (=> bs!1186884 m!6049630))

(declare-fun m!6049632 () Bool)

(assert (=> bs!1186884 m!6049632))

(declare-fun m!6049634 () Bool)

(assert (=> bs!1186884 m!6049634))

(assert (=> bs!1186884 m!6049624))

(declare-fun m!6049636 () Bool)

(assert (=> bs!1186884 m!6049636))

(declare-fun m!6049638 () Bool)

(assert (=> bs!1186884 m!6049638))

(assert (=> b!5014744 d!1614619))

(declare-fun d!1614633 () Bool)

(assert (=> d!1614633 (= (list!18650 (_1!34843 lt!2075011)) (list!18651 (c!856663 (_1!34843 lt!2075011))))))

(declare-fun bs!1186885 () Bool)

(assert (= bs!1186885 d!1614633))

(declare-fun m!6049640 () Bool)

(assert (=> bs!1186885 m!6049640))

(assert (=> b!5014744 d!1614633))

(declare-fun d!1614635 () Bool)

(assert (=> d!1614635 (= (list!18650 (_2!34843 lt!2075011)) (list!18651 (c!856663 (_2!34843 lt!2075011))))))

(declare-fun bs!1186886 () Bool)

(assert (= bs!1186886 d!1614635))

(declare-fun m!6049642 () Bool)

(assert (=> bs!1186886 m!6049642))

(assert (=> b!5014744 d!1614635))

(declare-fun d!1614637 () Bool)

(declare-fun lt!2075053 () Int)

(assert (=> d!1614637 (= lt!2075053 (size!38500 (list!18650 totalInput!1012)))))

(declare-fun size!38502 (Conc!15328) Int)

(assert (=> d!1614637 (= lt!2075053 (size!38502 (c!856663 totalInput!1012)))))

(assert (=> d!1614637 (= (size!38501 totalInput!1012) lt!2075053)))

(declare-fun bs!1186887 () Bool)

(assert (= bs!1186887 d!1614637))

(assert (=> bs!1186887 m!6049574))

(assert (=> bs!1186887 m!6049574))

(declare-fun m!6049644 () Bool)

(assert (=> bs!1186887 m!6049644))

(declare-fun m!6049646 () Bool)

(assert (=> bs!1186887 m!6049646))

(assert (=> b!5014744 d!1614637))

(declare-fun d!1614639 () Bool)

(declare-fun lt!2075058 () tuple2!63080)

(assert (=> d!1614639 (= (++!12657 (list!18650 (_1!34843 lt!2075058)) (list!18650 (_2!34843 lt!2075058))) (list!18650 input!5597))))

(declare-fun lt!2075059 () Int)

(declare-fun splitAt!460 (BalanceConc!30086 Int) tuple2!63080)

(assert (=> d!1614639 (= lt!2075058 (splitAt!460 input!5597 (findLongestMatchInnerZipperFastV2!149 z!4183 (- lt!2075059 (size!38501 input!5597)) totalInput!1012 lt!2075059)))))

(assert (=> d!1614639 (= lt!2075059 (size!38501 totalInput!1012))))

(assert (=> d!1614639 (isSuffix!1375 (list!18650 input!5597) (list!18650 totalInput!1012))))

(assert (=> d!1614639 (= (findLongestMatchZipperFastV2!111 z!4183 input!5597 totalInput!1012) lt!2075058)))

(declare-fun bs!1186888 () Bool)

(assert (= bs!1186888 d!1614639))

(assert (=> bs!1186888 m!6049536))

(declare-fun m!6049648 () Bool)

(assert (=> bs!1186888 m!6049648))

(declare-fun m!6049650 () Bool)

(assert (=> bs!1186888 m!6049650))

(declare-fun m!6049652 () Bool)

(assert (=> bs!1186888 m!6049652))

(assert (=> bs!1186888 m!6049576))

(assert (=> bs!1186888 m!6049538))

(assert (=> bs!1186888 m!6049648))

(declare-fun m!6049654 () Bool)

(assert (=> bs!1186888 m!6049654))

(declare-fun m!6049656 () Bool)

(assert (=> bs!1186888 m!6049656))

(assert (=> bs!1186888 m!6049574))

(assert (=> bs!1186888 m!6049654))

(assert (=> bs!1186888 m!6049650))

(assert (=> bs!1186888 m!6049576))

(assert (=> bs!1186888 m!6049574))

(declare-fun m!6049658 () Bool)

(assert (=> bs!1186888 m!6049658))

(assert (=> b!5014744 d!1614639))

(declare-fun e!3132928 () Bool)

(declare-fun b!5014810 () Bool)

(declare-fun lt!2075062 () List!58031)

(assert (=> b!5014810 (= e!3132928 (or (not (= lt!2075014 Nil!57907)) (= lt!2075062 lt!2075006)))))

(declare-fun b!5014809 () Bool)

(declare-fun res!2138529 () Bool)

(assert (=> b!5014809 (=> (not res!2138529) (not e!3132928))))

(assert (=> b!5014809 (= res!2138529 (= (size!38500 lt!2075062) (+ (size!38500 lt!2075006) (size!38500 lt!2075014))))))

(declare-fun b!5014808 () Bool)

(declare-fun e!3132929 () List!58031)

(assert (=> b!5014808 (= e!3132929 (Cons!57907 (h!64355 lt!2075006) (++!12657 (t!370399 lt!2075006) lt!2075014)))))

(declare-fun d!1614641 () Bool)

(assert (=> d!1614641 e!3132928))

(declare-fun res!2138528 () Bool)

(assert (=> d!1614641 (=> (not res!2138528) (not e!3132928))))

(declare-fun content!10267 (List!58031) (InoxSet C!27868))

(assert (=> d!1614641 (= res!2138528 (= (content!10267 lt!2075062) ((_ map or) (content!10267 lt!2075006) (content!10267 lt!2075014))))))

(assert (=> d!1614641 (= lt!2075062 e!3132929)))

(declare-fun c!856679 () Bool)

(assert (=> d!1614641 (= c!856679 ((_ is Nil!57907) lt!2075006))))

(assert (=> d!1614641 (= (++!12657 lt!2075006 lt!2075014) lt!2075062)))

(declare-fun b!5014807 () Bool)

(assert (=> b!5014807 (= e!3132929 lt!2075014)))

(assert (= (and d!1614641 c!856679) b!5014807))

(assert (= (and d!1614641 (not c!856679)) b!5014808))

(assert (= (and d!1614641 res!2138528) b!5014809))

(assert (= (and b!5014809 res!2138529) b!5014810))

(declare-fun m!6049660 () Bool)

(assert (=> b!5014809 m!6049660))

(declare-fun m!6049662 () Bool)

(assert (=> b!5014809 m!6049662))

(declare-fun m!6049664 () Bool)

(assert (=> b!5014809 m!6049664))

(declare-fun m!6049666 () Bool)

(assert (=> b!5014808 m!6049666))

(declare-fun m!6049668 () Bool)

(assert (=> d!1614641 m!6049668))

(declare-fun m!6049670 () Bool)

(assert (=> d!1614641 m!6049670))

(declare-fun m!6049672 () Bool)

(assert (=> d!1614641 m!6049672))

(assert (=> b!5014744 d!1614641))

(declare-fun d!1614643 () Bool)

(declare-fun lt!2075063 () Int)

(assert (=> d!1614643 (= lt!2075063 (size!38500 (list!18650 input!5597)))))

(assert (=> d!1614643 (= lt!2075063 (size!38502 (c!856663 input!5597)))))

(assert (=> d!1614643 (= (size!38501 input!5597) lt!2075063)))

(declare-fun bs!1186889 () Bool)

(assert (= bs!1186889 d!1614643))

(assert (=> bs!1186889 m!6049576))

(assert (=> bs!1186889 m!6049576))

(declare-fun m!6049674 () Bool)

(assert (=> bs!1186889 m!6049674))

(declare-fun m!6049676 () Bool)

(assert (=> bs!1186889 m!6049676))

(assert (=> b!5014744 d!1614643))

(declare-fun d!1614645 () Bool)

(declare-fun lt!2075066 () Regex!13809)

(assert (=> d!1614645 (validRegex!6106 lt!2075066)))

(declare-fun generalisedUnion!590 (List!58032) Regex!13809)

(declare-fun unfocusZipperList!103 (List!58033) List!58032)

(assert (=> d!1614645 (= lt!2075066 (generalisedUnion!590 (unfocusZipperList!103 lt!2075003)))))

(assert (=> d!1614645 (= (unfocusZipper!336 lt!2075003) lt!2075066)))

(declare-fun bs!1186890 () Bool)

(assert (= bs!1186890 d!1614645))

(declare-fun m!6049678 () Bool)

(assert (=> bs!1186890 m!6049678))

(declare-fun m!6049680 () Bool)

(assert (=> bs!1186890 m!6049680))

(assert (=> bs!1186890 m!6049680))

(declare-fun m!6049682 () Bool)

(assert (=> bs!1186890 m!6049682))

(assert (=> b!5014738 d!1614645))

(declare-fun d!1614647 () Bool)

(declare-fun e!3132932 () Bool)

(assert (=> d!1614647 e!3132932))

(declare-fun res!2138532 () Bool)

(assert (=> d!1614647 (=> (not res!2138532) (not e!3132932))))

(declare-fun lt!2075069 () List!58033)

(declare-fun noDuplicate!1039 (List!58033) Bool)

(assert (=> d!1614647 (= res!2138532 (noDuplicate!1039 lt!2075069))))

(declare-fun choose!37094 ((InoxSet Context!6468)) List!58033)

(assert (=> d!1614647 (= lt!2075069 (choose!37094 z!4183))))

(assert (=> d!1614647 (= (toList!8094 z!4183) lt!2075069)))

(declare-fun b!5014813 () Bool)

(declare-fun content!10268 (List!58033) (InoxSet Context!6468))

(assert (=> b!5014813 (= e!3132932 (= (content!10268 lt!2075069) z!4183))))

(assert (= (and d!1614647 res!2138532) b!5014813))

(declare-fun m!6049684 () Bool)

(assert (=> d!1614647 m!6049684))

(declare-fun m!6049686 () Bool)

(assert (=> d!1614647 m!6049686))

(declare-fun m!6049688 () Bool)

(assert (=> b!5014813 m!6049688))

(assert (=> b!5014738 d!1614647))

(declare-fun b!5014824 () Bool)

(declare-fun e!3132941 () Bool)

(declare-fun tail!9878 (List!58031) List!58031)

(assert (=> b!5014824 (= e!3132941 (isPrefix!5362 (tail!9878 lt!2075006) (tail!9878 lt!2074991)))))

(declare-fun b!5014823 () Bool)

(declare-fun res!2138544 () Bool)

(assert (=> b!5014823 (=> (not res!2138544) (not e!3132941))))

(declare-fun head!10745 (List!58031) C!27868)

(assert (=> b!5014823 (= res!2138544 (= (head!10745 lt!2075006) (head!10745 lt!2074991)))))

(declare-fun b!5014825 () Bool)

(declare-fun e!3132940 () Bool)

(assert (=> b!5014825 (= e!3132940 (>= (size!38500 lt!2074991) (size!38500 lt!2075006)))))

(declare-fun b!5014822 () Bool)

(declare-fun e!3132939 () Bool)

(assert (=> b!5014822 (= e!3132939 e!3132941)))

(declare-fun res!2138543 () Bool)

(assert (=> b!5014822 (=> (not res!2138543) (not e!3132941))))

(assert (=> b!5014822 (= res!2138543 (not ((_ is Nil!57907) lt!2074991)))))

(declare-fun d!1614649 () Bool)

(assert (=> d!1614649 e!3132940))

(declare-fun res!2138541 () Bool)

(assert (=> d!1614649 (=> res!2138541 e!3132940)))

(declare-fun lt!2075072 () Bool)

(assert (=> d!1614649 (= res!2138541 (not lt!2075072))))

(assert (=> d!1614649 (= lt!2075072 e!3132939)))

(declare-fun res!2138542 () Bool)

(assert (=> d!1614649 (=> res!2138542 e!3132939)))

(assert (=> d!1614649 (= res!2138542 ((_ is Nil!57907) lt!2075006))))

(assert (=> d!1614649 (= (isPrefix!5362 lt!2075006 lt!2074991) lt!2075072)))

(assert (= (and d!1614649 (not res!2138542)) b!5014822))

(assert (= (and b!5014822 res!2138543) b!5014823))

(assert (= (and b!5014823 res!2138544) b!5014824))

(assert (= (and d!1614649 (not res!2138541)) b!5014825))

(declare-fun m!6049690 () Bool)

(assert (=> b!5014824 m!6049690))

(declare-fun m!6049692 () Bool)

(assert (=> b!5014824 m!6049692))

(assert (=> b!5014824 m!6049690))

(assert (=> b!5014824 m!6049692))

(declare-fun m!6049694 () Bool)

(assert (=> b!5014824 m!6049694))

(declare-fun m!6049696 () Bool)

(assert (=> b!5014823 m!6049696))

(declare-fun m!6049698 () Bool)

(assert (=> b!5014823 m!6049698))

(declare-fun m!6049700 () Bool)

(assert (=> b!5014825 m!6049700))

(assert (=> b!5014825 m!6049662))

(assert (=> b!5014737 d!1614649))

(declare-fun d!1614651 () Bool)

(declare-fun c!856682 () Bool)

(assert (=> d!1614651 (= c!856682 (isEmpty!31376 lt!2075006))))

(declare-fun e!3132944 () Bool)

(assert (=> d!1614651 (= (matchZipper!577 z!4183 lt!2075006) e!3132944)))

(declare-fun b!5014830 () Bool)

(declare-fun nullableZipper!891 ((InoxSet Context!6468)) Bool)

(assert (=> b!5014830 (= e!3132944 (nullableZipper!891 z!4183))))

(declare-fun b!5014831 () Bool)

(declare-fun derivationStepZipper!640 ((InoxSet Context!6468) C!27868) (InoxSet Context!6468))

(assert (=> b!5014831 (= e!3132944 (matchZipper!577 (derivationStepZipper!640 z!4183 (head!10745 lt!2075006)) (tail!9878 lt!2075006)))))

(assert (= (and d!1614651 c!856682) b!5014830))

(assert (= (and d!1614651 (not c!856682)) b!5014831))

(declare-fun m!6049702 () Bool)

(assert (=> d!1614651 m!6049702))

(declare-fun m!6049704 () Bool)

(assert (=> b!5014830 m!6049704))

(assert (=> b!5014831 m!6049696))

(assert (=> b!5014831 m!6049696))

(declare-fun m!6049706 () Bool)

(assert (=> b!5014831 m!6049706))

(assert (=> b!5014831 m!6049690))

(assert (=> b!5014831 m!6049706))

(assert (=> b!5014831 m!6049690))

(declare-fun m!6049708 () Bool)

(assert (=> b!5014831 m!6049708))

(assert (=> b!5014737 d!1614651))

(declare-fun b!5014848 () Bool)

(declare-fun e!3132959 () Bool)

(declare-fun lostCauseZipper!837 ((InoxSet Context!6468)) Bool)

(assert (=> b!5014848 (= e!3132959 (lostCauseZipper!837 z!4183))))

(declare-fun b!5014849 () Bool)

(declare-fun e!3132957 () Int)

(declare-fun lt!2075080 () Int)

(assert (=> b!5014849 (= e!3132957 (+ 1 lt!2075080))))

(declare-fun b!5014850 () Bool)

(declare-fun e!3132955 () Bool)

(assert (=> b!5014850 (= e!3132955 (<= lt!2074995 (size!38501 totalInput!1012)))))

(declare-fun d!1614653 () Bool)

(declare-fun lt!2075079 () Int)

(assert (=> d!1614653 (and (>= lt!2075079 0) (<= lt!2075079 (- lt!2074996 lt!2074995)))))

(declare-fun e!3132956 () Int)

(assert (=> d!1614653 (= lt!2075079 e!3132956)))

(declare-fun c!856691 () Bool)

(assert (=> d!1614653 (= c!856691 e!3132959)))

(declare-fun res!2138550 () Bool)

(assert (=> d!1614653 (=> res!2138550 e!3132959)))

(assert (=> d!1614653 (= res!2138550 (= lt!2074995 lt!2074996))))

(assert (=> d!1614653 e!3132955))

(declare-fun res!2138549 () Bool)

(assert (=> d!1614653 (=> (not res!2138549) (not e!3132955))))

(assert (=> d!1614653 (= res!2138549 (>= lt!2074995 0))))

(assert (=> d!1614653 (= (findLongestMatchInnerZipperFastV2!149 z!4183 lt!2074995 totalInput!1012 lt!2074996) lt!2075079)))

(declare-fun b!5014851 () Bool)

(assert (=> b!5014851 (= e!3132956 0)))

(declare-fun b!5014852 () Bool)

(declare-fun e!3132958 () Int)

(assert (=> b!5014852 (= e!3132958 1)))

(declare-fun b!5014853 () Bool)

(declare-fun c!856689 () Bool)

(declare-fun lt!2075081 () (InoxSet Context!6468))

(assert (=> b!5014853 (= c!856689 (nullableZipper!891 lt!2075081))))

(assert (=> b!5014853 (= e!3132957 e!3132958)))

(declare-fun b!5014854 () Bool)

(assert (=> b!5014854 (= e!3132958 0)))

(declare-fun b!5014855 () Bool)

(assert (=> b!5014855 (= e!3132956 e!3132957)))

(declare-fun apply!14008 (BalanceConc!30086 Int) C!27868)

(assert (=> b!5014855 (= lt!2075081 (derivationStepZipper!640 z!4183 (apply!14008 totalInput!1012 lt!2074995)))))

(assert (=> b!5014855 (= lt!2075080 (findLongestMatchInnerZipperFastV2!149 lt!2075081 (+ lt!2074995 1) totalInput!1012 lt!2074996))))

(declare-fun c!856690 () Bool)

(assert (=> b!5014855 (= c!856690 (> lt!2075080 0))))

(assert (= (and d!1614653 res!2138549) b!5014850))

(assert (= (and d!1614653 (not res!2138550)) b!5014848))

(assert (= (and d!1614653 c!856691) b!5014851))

(assert (= (and d!1614653 (not c!856691)) b!5014855))

(assert (= (and b!5014855 c!856690) b!5014849))

(assert (= (and b!5014855 (not c!856690)) b!5014853))

(assert (= (and b!5014853 c!856689) b!5014852))

(assert (= (and b!5014853 (not c!856689)) b!5014854))

(declare-fun m!6049710 () Bool)

(assert (=> b!5014848 m!6049710))

(assert (=> b!5014850 m!6049538))

(declare-fun m!6049712 () Bool)

(assert (=> b!5014853 m!6049712))

(declare-fun m!6049714 () Bool)

(assert (=> b!5014855 m!6049714))

(assert (=> b!5014855 m!6049714))

(declare-fun m!6049716 () Bool)

(assert (=> b!5014855 m!6049716))

(declare-fun m!6049718 () Bool)

(assert (=> b!5014855 m!6049718))

(assert (=> b!5014737 d!1614653))

(declare-fun d!1614655 () Bool)

(declare-fun lt!2075098 () Int)

(assert (=> d!1614655 (>= lt!2075098 0)))

(declare-fun e!3132962 () Int)

(assert (=> d!1614655 (= lt!2075098 e!3132962)))

(declare-fun c!856694 () Bool)

(assert (=> d!1614655 (= c!856694 ((_ is Nil!57907) lt!2075000))))

(assert (=> d!1614655 (= (size!38500 lt!2075000) lt!2075098)))

(declare-fun b!5014862 () Bool)

(assert (=> b!5014862 (= e!3132962 0)))

(declare-fun b!5014863 () Bool)

(assert (=> b!5014863 (= e!3132962 (+ 1 (size!38500 (t!370399 lt!2075000))))))

(assert (= (and d!1614655 c!856694) b!5014862))

(assert (= (and d!1614655 (not c!856694)) b!5014863))

(declare-fun m!6049720 () Bool)

(assert (=> b!5014863 m!6049720))

(assert (=> b!5014737 d!1614655))

(declare-fun d!1614657 () Bool)

(assert (=> d!1614657 (isPrefix!5362 lt!2075006 (++!12657 lt!2075006 lt!2075014))))

(declare-fun lt!2075143 () Unit!149127)

(declare-fun choose!37095 (List!58031 List!58031) Unit!149127)

(assert (=> d!1614657 (= lt!2075143 (choose!37095 lt!2075006 lt!2075014))))

(assert (=> d!1614657 (= (lemmaConcatTwoListThenFirstIsPrefix!3460 lt!2075006 lt!2075014) lt!2075143)))

(declare-fun bs!1186891 () Bool)

(assert (= bs!1186891 d!1614657))

(assert (=> bs!1186891 m!6049542))

(assert (=> bs!1186891 m!6049542))

(declare-fun m!6049722 () Bool)

(assert (=> bs!1186891 m!6049722))

(declare-fun m!6049724 () Bool)

(assert (=> bs!1186891 m!6049724))

(assert (=> b!5014737 d!1614657))

(declare-fun b!5015007 () Bool)

(declare-fun e!3133053 () tuple2!63082)

(assert (=> b!5015007 (= e!3133053 (tuple2!63083 Nil!57907 lt!2075000))))

(declare-fun b!5015008 () Bool)

(declare-fun e!3133059 () tuple2!63082)

(declare-fun lt!2075255 () tuple2!63082)

(assert (=> b!5015008 (= e!3133059 lt!2075255)))

(declare-fun b!5015009 () Bool)

(declare-fun e!3133054 () tuple2!63082)

(declare-fun call!350275 () tuple2!63082)

(assert (=> b!5015009 (= e!3133054 call!350275)))

(declare-fun bm!350264 () Bool)

(declare-fun call!350274 () List!58031)

(assert (=> bm!350264 (= call!350274 (tail!9878 lt!2075000))))

(declare-fun b!5015010 () Bool)

(declare-fun e!3133060 () tuple2!63082)

(assert (=> b!5015010 (= e!3133060 (tuple2!63083 Nil!57907 lt!2075000))))

(declare-fun b!5015011 () Bool)

(declare-fun e!3133055 () Bool)

(declare-fun lt!2075269 () tuple2!63082)

(assert (=> b!5015011 (= e!3133055 (>= (size!38500 (_1!34844 lt!2075269)) (size!38500 Nil!57907)))))

(declare-fun b!5015013 () Bool)

(declare-fun e!3133057 () Bool)

(assert (=> b!5015013 (= e!3133057 e!3133055)))

(declare-fun res!2138594 () Bool)

(assert (=> b!5015013 (=> res!2138594 e!3133055)))

(assert (=> b!5015013 (= res!2138594 (isEmpty!31376 (_1!34844 lt!2075269)))))

(declare-fun b!5015014 () Bool)

(declare-fun e!3133056 () Unit!149127)

(declare-fun Unit!149132 () Unit!149127)

(assert (=> b!5015014 (= e!3133056 Unit!149132)))

(declare-fun lt!2075271 () Unit!149127)

(declare-fun call!350273 () Unit!149127)

(assert (=> b!5015014 (= lt!2075271 call!350273)))

(declare-fun call!350270 () Bool)

(assert (=> b!5015014 call!350270))

(declare-fun lt!2075270 () Unit!149127)

(assert (=> b!5015014 (= lt!2075270 lt!2075271)))

(declare-fun lt!2075258 () Unit!149127)

(declare-fun call!350271 () Unit!149127)

(assert (=> b!5015014 (= lt!2075258 call!350271)))

(assert (=> b!5015014 (= lt!2075000 Nil!57907)))

(declare-fun lt!2075264 () Unit!149127)

(assert (=> b!5015014 (= lt!2075264 lt!2075258)))

(assert (=> b!5015014 false))

(declare-fun bm!350265 () Bool)

(declare-fun call!350272 () C!27868)

(assert (=> bm!350265 (= call!350272 (head!10745 lt!2075000))))

(declare-fun bm!350266 () Bool)

(declare-fun call!350269 () Regex!13809)

(declare-fun derivativeStep!3987 (Regex!13809 C!27868) Regex!13809)

(assert (=> bm!350266 (= call!350269 (derivativeStep!3987 r!12727 call!350272))))

(declare-fun lt!2075257 () List!58031)

(declare-fun bm!350267 () Bool)

(assert (=> bm!350267 (= call!350275 (findLongestMatchInner!1998 call!350269 lt!2075257 (+ (size!38500 Nil!57907) 1) call!350274 lt!2075000 (size!38500 lt!2075000)))))

(declare-fun bm!350268 () Bool)

(assert (=> bm!350268 (= call!350270 (isPrefix!5362 lt!2075000 lt!2075000))))

(declare-fun b!5015015 () Bool)

(declare-fun c!856751 () Bool)

(declare-fun call!350276 () Bool)

(assert (=> b!5015015 (= c!856751 call!350276)))

(declare-fun lt!2075259 () Unit!149127)

(declare-fun lt!2075260 () Unit!149127)

(assert (=> b!5015015 (= lt!2075259 lt!2075260)))

(declare-fun lt!2075252 () C!27868)

(declare-fun lt!2075261 () List!58031)

(assert (=> b!5015015 (= (++!12657 (++!12657 Nil!57907 (Cons!57907 lt!2075252 Nil!57907)) lt!2075261) lt!2075000)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1508 (List!58031 C!27868 List!58031 List!58031) Unit!149127)

(assert (=> b!5015015 (= lt!2075260 (lemmaMoveElementToOtherListKeepsConcatEq!1508 Nil!57907 lt!2075252 lt!2075261 lt!2075000))))

(assert (=> b!5015015 (= lt!2075261 (tail!9878 lt!2075000))))

(assert (=> b!5015015 (= lt!2075252 (head!10745 lt!2075000))))

(declare-fun lt!2075276 () Unit!149127)

(declare-fun lt!2075265 () Unit!149127)

(assert (=> b!5015015 (= lt!2075276 lt!2075265)))

(declare-fun getSuffix!3152 (List!58031 List!58031) List!58031)

(assert (=> b!5015015 (isPrefix!5362 (++!12657 Nil!57907 (Cons!57907 (head!10745 (getSuffix!3152 lt!2075000 Nil!57907)) Nil!57907)) lt!2075000)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!897 (List!58031 List!58031) Unit!149127)

(assert (=> b!5015015 (= lt!2075265 (lemmaAddHeadSuffixToPrefixStillPrefix!897 Nil!57907 lt!2075000))))

(declare-fun lt!2075262 () Unit!149127)

(declare-fun lt!2075253 () Unit!149127)

(assert (=> b!5015015 (= lt!2075262 lt!2075253)))

(assert (=> b!5015015 (= lt!2075253 (lemmaAddHeadSuffixToPrefixStillPrefix!897 Nil!57907 lt!2075000))))

(assert (=> b!5015015 (= lt!2075257 (++!12657 Nil!57907 (Cons!57907 (head!10745 lt!2075000) Nil!57907)))))

(declare-fun lt!2075279 () Unit!149127)

(assert (=> b!5015015 (= lt!2075279 e!3133056)))

(declare-fun c!856749 () Bool)

(assert (=> b!5015015 (= c!856749 (= (size!38500 Nil!57907) (size!38500 lt!2075000)))))

(declare-fun lt!2075266 () Unit!149127)

(declare-fun lt!2075277 () Unit!149127)

(assert (=> b!5015015 (= lt!2075266 lt!2075277)))

(assert (=> b!5015015 (<= (size!38500 Nil!57907) (size!38500 lt!2075000))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!823 (List!58031 List!58031) Unit!149127)

(assert (=> b!5015015 (= lt!2075277 (lemmaIsPrefixThenSmallerEqSize!823 Nil!57907 lt!2075000))))

(declare-fun e!3133058 () tuple2!63082)

(assert (=> b!5015015 (= e!3133058 e!3133054)))

(declare-fun b!5015016 () Bool)

(assert (=> b!5015016 (= e!3133054 e!3133059)))

(assert (=> b!5015016 (= lt!2075255 call!350275)))

(declare-fun c!856750 () Bool)

(assert (=> b!5015016 (= c!856750 (isEmpty!31376 (_1!34844 lt!2075255)))))

(declare-fun bm!350269 () Bool)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1283 (List!58031 List!58031 List!58031) Unit!149127)

(assert (=> bm!350269 (= call!350271 (lemmaIsPrefixSameLengthThenSameList!1283 lt!2075000 Nil!57907 lt!2075000))))

(declare-fun b!5015017 () Bool)

(declare-fun c!856746 () Bool)

(assert (=> b!5015017 (= c!856746 call!350276)))

(declare-fun lt!2075278 () Unit!149127)

(declare-fun lt!2075268 () Unit!149127)

(assert (=> b!5015017 (= lt!2075278 lt!2075268)))

(assert (=> b!5015017 (= lt!2075000 Nil!57907)))

(assert (=> b!5015017 (= lt!2075268 call!350271)))

(declare-fun lt!2075256 () Unit!149127)

(declare-fun lt!2075273 () Unit!149127)

(assert (=> b!5015017 (= lt!2075256 lt!2075273)))

(assert (=> b!5015017 call!350270))

(assert (=> b!5015017 (= lt!2075273 call!350273)))

(assert (=> b!5015017 (= e!3133058 e!3133053)))

(declare-fun b!5015018 () Bool)

(assert (=> b!5015018 (= e!3133053 (tuple2!63083 Nil!57907 Nil!57907))))

(declare-fun b!5015019 () Bool)

(assert (=> b!5015019 (= e!3133060 e!3133058)))

(declare-fun c!856747 () Bool)

(assert (=> b!5015019 (= c!856747 (= (size!38500 Nil!57907) (size!38500 lt!2075000)))))

(declare-fun bm!350270 () Bool)

(assert (=> bm!350270 (= call!350276 (nullable!4696 r!12727))))

(declare-fun d!1614659 () Bool)

(assert (=> d!1614659 e!3133057))

(declare-fun res!2138595 () Bool)

(assert (=> d!1614659 (=> (not res!2138595) (not e!3133057))))

(assert (=> d!1614659 (= res!2138595 (= (++!12657 (_1!34844 lt!2075269) (_2!34844 lt!2075269)) lt!2075000))))

(assert (=> d!1614659 (= lt!2075269 e!3133060)))

(declare-fun c!856748 () Bool)

(declare-fun lostCause!1196 (Regex!13809) Bool)

(assert (=> d!1614659 (= c!856748 (lostCause!1196 r!12727))))

(declare-fun lt!2075272 () Unit!149127)

(declare-fun Unit!149133 () Unit!149127)

(assert (=> d!1614659 (= lt!2075272 Unit!149133)))

(assert (=> d!1614659 (= (getSuffix!3152 lt!2075000 Nil!57907) lt!2075000)))

(declare-fun lt!2075267 () Unit!149127)

(declare-fun lt!2075254 () Unit!149127)

(assert (=> d!1614659 (= lt!2075267 lt!2075254)))

(declare-fun lt!2075274 () List!58031)

(assert (=> d!1614659 (= lt!2075000 lt!2075274)))

(declare-fun lemmaSamePrefixThenSameSuffix!2566 (List!58031 List!58031 List!58031 List!58031 List!58031) Unit!149127)

(assert (=> d!1614659 (= lt!2075254 (lemmaSamePrefixThenSameSuffix!2566 Nil!57907 lt!2075000 Nil!57907 lt!2075274 lt!2075000))))

(assert (=> d!1614659 (= lt!2075274 (getSuffix!3152 lt!2075000 Nil!57907))))

(declare-fun lt!2075263 () Unit!149127)

(declare-fun lt!2075275 () Unit!149127)

(assert (=> d!1614659 (= lt!2075263 lt!2075275)))

(assert (=> d!1614659 (isPrefix!5362 Nil!57907 (++!12657 Nil!57907 lt!2075000))))

(assert (=> d!1614659 (= lt!2075275 (lemmaConcatTwoListThenFirstIsPrefix!3460 Nil!57907 lt!2075000))))

(assert (=> d!1614659 (validRegex!6106 r!12727)))

(assert (=> d!1614659 (= (findLongestMatchInner!1998 r!12727 Nil!57907 (size!38500 Nil!57907) lt!2075000 lt!2075000 (size!38500 lt!2075000)) lt!2075269)))

(declare-fun b!5015012 () Bool)

(assert (=> b!5015012 (= e!3133059 (tuple2!63083 Nil!57907 lt!2075000))))

(declare-fun bm!350271 () Bool)

(declare-fun lemmaIsPrefixRefl!3635 (List!58031 List!58031) Unit!149127)

(assert (=> bm!350271 (= call!350273 (lemmaIsPrefixRefl!3635 lt!2075000 lt!2075000))))

(declare-fun b!5015020 () Bool)

(declare-fun Unit!149134 () Unit!149127)

(assert (=> b!5015020 (= e!3133056 Unit!149134)))

(assert (= (and d!1614659 c!856748) b!5015010))

(assert (= (and d!1614659 (not c!856748)) b!5015019))

(assert (= (and b!5015019 c!856747) b!5015017))

(assert (= (and b!5015019 (not c!856747)) b!5015015))

(assert (= (and b!5015017 c!856746) b!5015018))

(assert (= (and b!5015017 (not c!856746)) b!5015007))

(assert (= (and b!5015015 c!856749) b!5015014))

(assert (= (and b!5015015 (not c!856749)) b!5015020))

(assert (= (and b!5015015 c!856751) b!5015016))

(assert (= (and b!5015015 (not c!856751)) b!5015009))

(assert (= (and b!5015016 c!856750) b!5015012))

(assert (= (and b!5015016 (not c!856750)) b!5015008))

(assert (= (or b!5015016 b!5015009) bm!350265))

(assert (= (or b!5015016 b!5015009) bm!350264))

(assert (= (or b!5015016 b!5015009) bm!350266))

(assert (= (or b!5015016 b!5015009) bm!350267))

(assert (= (or b!5015017 b!5015015) bm!350270))

(assert (= (or b!5015017 b!5015014) bm!350268))

(assert (= (or b!5015017 b!5015014) bm!350269))

(assert (= (or b!5015017 b!5015014) bm!350271))

(assert (= (and d!1614659 res!2138595) b!5015013))

(assert (= (and b!5015013 (not res!2138594)) b!5015011))

(declare-fun m!6049850 () Bool)

(assert (=> bm!350264 m!6049850))

(declare-fun m!6049852 () Bool)

(assert (=> b!5015013 m!6049852))

(declare-fun m!6049854 () Bool)

(assert (=> d!1614659 m!6049854))

(declare-fun m!6049856 () Bool)

(assert (=> d!1614659 m!6049856))

(declare-fun m!6049858 () Bool)

(assert (=> d!1614659 m!6049858))

(assert (=> d!1614659 m!6049528))

(assert (=> d!1614659 m!6049858))

(declare-fun m!6049860 () Bool)

(assert (=> d!1614659 m!6049860))

(declare-fun m!6049862 () Bool)

(assert (=> d!1614659 m!6049862))

(declare-fun m!6049864 () Bool)

(assert (=> d!1614659 m!6049864))

(declare-fun m!6049866 () Bool)

(assert (=> d!1614659 m!6049866))

(declare-fun m!6049868 () Bool)

(assert (=> bm!350270 m!6049868))

(declare-fun m!6049870 () Bool)

(assert (=> bm!350266 m!6049870))

(assert (=> bm!350267 m!6049502))

(declare-fun m!6049872 () Bool)

(assert (=> bm!350267 m!6049872))

(assert (=> b!5015015 m!6049490))

(assert (=> b!5015015 m!6049866))

(declare-fun m!6049874 () Bool)

(assert (=> b!5015015 m!6049874))

(assert (=> b!5015015 m!6049850))

(declare-fun m!6049876 () Bool)

(assert (=> b!5015015 m!6049876))

(declare-fun m!6049878 () Bool)

(assert (=> b!5015015 m!6049878))

(declare-fun m!6049880 () Bool)

(assert (=> b!5015015 m!6049880))

(declare-fun m!6049882 () Bool)

(assert (=> b!5015015 m!6049882))

(declare-fun m!6049884 () Bool)

(assert (=> b!5015015 m!6049884))

(declare-fun m!6049886 () Bool)

(assert (=> b!5015015 m!6049886))

(assert (=> b!5015015 m!6049882))

(declare-fun m!6049888 () Bool)

(assert (=> b!5015015 m!6049888))

(declare-fun m!6049890 () Bool)

(assert (=> b!5015015 m!6049890))

(assert (=> b!5015015 m!6049880))

(declare-fun m!6049892 () Bool)

(assert (=> b!5015015 m!6049892))

(assert (=> b!5015015 m!6049866))

(assert (=> b!5015015 m!6049502))

(assert (=> bm!350265 m!6049878))

(declare-fun m!6049894 () Bool)

(assert (=> bm!350268 m!6049894))

(declare-fun m!6049896 () Bool)

(assert (=> bm!350271 m!6049896))

(declare-fun m!6049898 () Bool)

(assert (=> b!5015011 m!6049898))

(assert (=> b!5015011 m!6049490))

(declare-fun m!6049900 () Bool)

(assert (=> b!5015016 m!6049900))

(declare-fun m!6049902 () Bool)

(assert (=> bm!350269 m!6049902))

(assert (=> b!5014737 d!1614659))

(declare-fun d!1614681 () Bool)

(declare-fun e!3133095 () Bool)

(assert (=> d!1614681 e!3133095))

(declare-fun res!2138611 () Bool)

(assert (=> d!1614681 (=> res!2138611 e!3133095)))

(assert (=> d!1614681 (= res!2138611 (= (findLongestMatchInnerZipperFastV2!149 z!4183 lt!2074995 totalInput!1012 (size!38501 totalInput!1012)) 0))))

(declare-fun lt!2075296 () Unit!149127)

(declare-fun choose!37099 ((InoxSet Context!6468) Int BalanceConc!30086) Unit!149127)

(assert (=> d!1614681 (= lt!2075296 (choose!37099 z!4183 lt!2074995 totalInput!1012))))

(declare-fun e!3133096 () Bool)

(assert (=> d!1614681 e!3133096))

(declare-fun res!2138610 () Bool)

(assert (=> d!1614681 (=> (not res!2138610) (not e!3133096))))

(assert (=> d!1614681 (= res!2138610 (>= lt!2074995 0))))

(assert (=> d!1614681 (= (longestMatchIsAcceptedByMatchOrIsEmptyRecV2!68 z!4183 lt!2074995 totalInput!1012) lt!2075296)))

(declare-fun b!5015077 () Bool)

(assert (=> b!5015077 (= e!3133096 (<= lt!2074995 (size!38501 totalInput!1012)))))

(declare-fun b!5015078 () Bool)

(assert (=> b!5015078 (= e!3133095 (matchZipper!577 z!4183 (take!668 (drop!2472 (list!18650 totalInput!1012) lt!2074995) (findLongestMatchInnerZipperFastV2!149 z!4183 lt!2074995 totalInput!1012 (size!38501 totalInput!1012)))))))

(assert (= (and d!1614681 res!2138610) b!5015077))

(assert (= (and d!1614681 (not res!2138611)) b!5015078))

(assert (=> d!1614681 m!6049538))

(assert (=> d!1614681 m!6049538))

(declare-fun m!6049958 () Bool)

(assert (=> d!1614681 m!6049958))

(declare-fun m!6049960 () Bool)

(assert (=> d!1614681 m!6049960))

(assert (=> b!5015077 m!6049538))

(declare-fun m!6049962 () Bool)

(assert (=> b!5015078 m!6049962))

(declare-fun m!6049964 () Bool)

(assert (=> b!5015078 m!6049964))

(assert (=> b!5015078 m!6049538))

(declare-fun m!6049966 () Bool)

(assert (=> b!5015078 m!6049966))

(assert (=> b!5015078 m!6049958))

(assert (=> b!5015078 m!6049962))

(assert (=> b!5015078 m!6049574))

(assert (=> b!5015078 m!6049538))

(assert (=> b!5015078 m!6049958))

(assert (=> b!5015078 m!6049574))

(assert (=> b!5015078 m!6049966))

(assert (=> b!5014737 d!1614681))

(declare-fun d!1614701 () Bool)

(assert (=> d!1614701 (isPrefix!5362 (take!668 lt!2075001 lt!2074995) lt!2075001)))

(declare-fun lt!2075299 () Unit!149127)

(declare-fun choose!37101 (List!58031 Int) Unit!149127)

(assert (=> d!1614701 (= lt!2075299 (choose!37101 lt!2075001 lt!2074995))))

(assert (=> d!1614701 (>= lt!2074995 0)))

(assert (=> d!1614701 (= (lemmaTakeIsPrefix!162 lt!2075001 lt!2074995) lt!2075299)))

(declare-fun bs!1186895 () Bool)

(assert (= bs!1186895 d!1614701))

(assert (=> bs!1186895 m!6049500))

(assert (=> bs!1186895 m!6049500))

(assert (=> bs!1186895 m!6049508))

(declare-fun m!6049968 () Bool)

(assert (=> bs!1186895 m!6049968))

(assert (=> b!5014737 d!1614701))

(declare-fun d!1614703 () Bool)

(assert (=> d!1614703 (isPrefix!5362 (_1!34844 lt!2074993) (++!12657 (_1!34844 lt!2074993) (_2!34844 lt!2074993)))))

(declare-fun lt!2075300 () Unit!149127)

(assert (=> d!1614703 (= lt!2075300 (choose!37095 (_1!34844 lt!2074993) (_2!34844 lt!2074993)))))

(assert (=> d!1614703 (= (lemmaConcatTwoListThenFirstIsPrefix!3460 (_1!34844 lt!2074993) (_2!34844 lt!2074993)) lt!2075300)))

(declare-fun bs!1186896 () Bool)

(assert (= bs!1186896 d!1614703))

(assert (=> bs!1186896 m!6049484))

(assert (=> bs!1186896 m!6049484))

(declare-fun m!6049970 () Bool)

(assert (=> bs!1186896 m!6049970))

(declare-fun m!6049972 () Bool)

(assert (=> bs!1186896 m!6049972))

(assert (=> b!5014737 d!1614703))

(declare-fun b!5015081 () Bool)

(declare-fun e!3133099 () Bool)

(assert (=> b!5015081 (= e!3133099 (isPrefix!5362 (tail!9878 (_1!34844 lt!2074993)) (tail!9878 lt!2075013)))))

(declare-fun b!5015080 () Bool)

(declare-fun res!2138615 () Bool)

(assert (=> b!5015080 (=> (not res!2138615) (not e!3133099))))

(assert (=> b!5015080 (= res!2138615 (= (head!10745 (_1!34844 lt!2074993)) (head!10745 lt!2075013)))))

(declare-fun b!5015082 () Bool)

(declare-fun e!3133098 () Bool)

(assert (=> b!5015082 (= e!3133098 (>= (size!38500 lt!2075013) (size!38500 (_1!34844 lt!2074993))))))

(declare-fun b!5015079 () Bool)

(declare-fun e!3133097 () Bool)

(assert (=> b!5015079 (= e!3133097 e!3133099)))

(declare-fun res!2138614 () Bool)

(assert (=> b!5015079 (=> (not res!2138614) (not e!3133099))))

(assert (=> b!5015079 (= res!2138614 (not ((_ is Nil!57907) lt!2075013)))))

(declare-fun d!1614705 () Bool)

(assert (=> d!1614705 e!3133098))

(declare-fun res!2138612 () Bool)

(assert (=> d!1614705 (=> res!2138612 e!3133098)))

(declare-fun lt!2075301 () Bool)

(assert (=> d!1614705 (= res!2138612 (not lt!2075301))))

(assert (=> d!1614705 (= lt!2075301 e!3133097)))

(declare-fun res!2138613 () Bool)

(assert (=> d!1614705 (=> res!2138613 e!3133097)))

(assert (=> d!1614705 (= res!2138613 ((_ is Nil!57907) (_1!34844 lt!2074993)))))

(assert (=> d!1614705 (= (isPrefix!5362 (_1!34844 lt!2074993) lt!2075013) lt!2075301)))

(assert (= (and d!1614705 (not res!2138613)) b!5015079))

(assert (= (and b!5015079 res!2138614) b!5015080))

(assert (= (and b!5015080 res!2138615) b!5015081))

(assert (= (and d!1614705 (not res!2138612)) b!5015082))

(declare-fun m!6049974 () Bool)

(assert (=> b!5015081 m!6049974))

(declare-fun m!6049976 () Bool)

(assert (=> b!5015081 m!6049976))

(assert (=> b!5015081 m!6049974))

(assert (=> b!5015081 m!6049976))

(declare-fun m!6049978 () Bool)

(assert (=> b!5015081 m!6049978))

(declare-fun m!6049980 () Bool)

(assert (=> b!5015080 m!6049980))

(declare-fun m!6049982 () Bool)

(assert (=> b!5015080 m!6049982))

(declare-fun m!6049984 () Bool)

(assert (=> b!5015082 m!6049984))

(assert (=> b!5015082 m!6049564))

(assert (=> b!5014737 d!1614705))

(declare-fun d!1614707 () Bool)

(declare-fun e!3133102 () Bool)

(assert (=> d!1614707 e!3133102))

(declare-fun res!2138618 () Bool)

(assert (=> d!1614707 (=> res!2138618 e!3133102)))

(assert (=> d!1614707 (= res!2138618 (isEmpty!31376 (_1!34844 (findLongestMatchInner!1998 r!12727 Nil!57907 (size!38500 Nil!57907) lt!2075000 lt!2075000 (size!38500 lt!2075000)))))))

(declare-fun lt!2075304 () Unit!149127)

(declare-fun choose!37102 (Regex!13809 List!58031) Unit!149127)

(assert (=> d!1614707 (= lt!2075304 (choose!37102 r!12727 lt!2075000))))

(assert (=> d!1614707 (validRegex!6106 r!12727)))

(assert (=> d!1614707 (= (longestMatchIsAcceptedByMatchOrIsEmpty!1951 r!12727 lt!2075000) lt!2075304)))

(declare-fun b!5015085 () Bool)

(assert (=> b!5015085 (= e!3133102 (matchR!6773 r!12727 (_1!34844 (findLongestMatchInner!1998 r!12727 Nil!57907 (size!38500 Nil!57907) lt!2075000 lt!2075000 (size!38500 lt!2075000)))))))

(assert (= (and d!1614707 (not res!2138618)) b!5015085))

(declare-fun m!6049986 () Bool)

(assert (=> d!1614707 m!6049986))

(assert (=> d!1614707 m!6049490))

(assert (=> d!1614707 m!6049502))

(assert (=> d!1614707 m!6049504))

(declare-fun m!6049988 () Bool)

(assert (=> d!1614707 m!6049988))

(assert (=> d!1614707 m!6049528))

(assert (=> d!1614707 m!6049490))

(assert (=> d!1614707 m!6049502))

(assert (=> b!5015085 m!6049490))

(assert (=> b!5015085 m!6049502))

(assert (=> b!5015085 m!6049490))

(assert (=> b!5015085 m!6049502))

(assert (=> b!5015085 m!6049504))

(declare-fun m!6049990 () Bool)

(assert (=> b!5015085 m!6049990))

(assert (=> b!5014737 d!1614707))

(declare-fun d!1614709 () Bool)

(declare-fun lt!2075305 () Int)

(assert (=> d!1614709 (>= lt!2075305 0)))

(declare-fun e!3133103 () Int)

(assert (=> d!1614709 (= lt!2075305 e!3133103)))

(declare-fun c!856773 () Bool)

(assert (=> d!1614709 (= c!856773 ((_ is Nil!57907) Nil!57907))))

(assert (=> d!1614709 (= (size!38500 Nil!57907) lt!2075305)))

(declare-fun b!5015086 () Bool)

(assert (=> b!5015086 (= e!3133103 0)))

(declare-fun b!5015087 () Bool)

(assert (=> b!5015087 (= e!3133103 (+ 1 (size!38500 (t!370399 Nil!57907))))))

(assert (= (and d!1614709 c!856773) b!5015086))

(assert (= (and d!1614709 (not c!856773)) b!5015087))

(declare-fun m!6049992 () Bool)

(assert (=> b!5015087 m!6049992))

(assert (=> b!5014737 d!1614709))

(declare-fun b!5015090 () Bool)

(declare-fun e!3133106 () Bool)

(assert (=> b!5015090 (= e!3133106 (isPrefix!5362 (tail!9878 (take!668 lt!2075001 lt!2074995)) (tail!9878 lt!2075001)))))

(declare-fun b!5015089 () Bool)

(declare-fun res!2138622 () Bool)

(assert (=> b!5015089 (=> (not res!2138622) (not e!3133106))))

(assert (=> b!5015089 (= res!2138622 (= (head!10745 (take!668 lt!2075001 lt!2074995)) (head!10745 lt!2075001)))))

(declare-fun b!5015091 () Bool)

(declare-fun e!3133105 () Bool)

(assert (=> b!5015091 (= e!3133105 (>= (size!38500 lt!2075001) (size!38500 (take!668 lt!2075001 lt!2074995))))))

(declare-fun b!5015088 () Bool)

(declare-fun e!3133104 () Bool)

(assert (=> b!5015088 (= e!3133104 e!3133106)))

(declare-fun res!2138621 () Bool)

(assert (=> b!5015088 (=> (not res!2138621) (not e!3133106))))

(assert (=> b!5015088 (= res!2138621 (not ((_ is Nil!57907) lt!2075001)))))

(declare-fun d!1614711 () Bool)

(assert (=> d!1614711 e!3133105))

(declare-fun res!2138619 () Bool)

(assert (=> d!1614711 (=> res!2138619 e!3133105)))

(declare-fun lt!2075306 () Bool)

(assert (=> d!1614711 (= res!2138619 (not lt!2075306))))

(assert (=> d!1614711 (= lt!2075306 e!3133104)))

(declare-fun res!2138620 () Bool)

(assert (=> d!1614711 (=> res!2138620 e!3133104)))

(assert (=> d!1614711 (= res!2138620 ((_ is Nil!57907) (take!668 lt!2075001 lt!2074995)))))

(assert (=> d!1614711 (= (isPrefix!5362 (take!668 lt!2075001 lt!2074995) lt!2075001) lt!2075306)))

(assert (= (and d!1614711 (not res!2138620)) b!5015088))

(assert (= (and b!5015088 res!2138621) b!5015089))

(assert (= (and b!5015089 res!2138622) b!5015090))

(assert (= (and d!1614711 (not res!2138619)) b!5015091))

(assert (=> b!5015090 m!6049500))

(declare-fun m!6049994 () Bool)

(assert (=> b!5015090 m!6049994))

(declare-fun m!6049996 () Bool)

(assert (=> b!5015090 m!6049996))

(assert (=> b!5015090 m!6049994))

(assert (=> b!5015090 m!6049996))

(declare-fun m!6049998 () Bool)

(assert (=> b!5015090 m!6049998))

(assert (=> b!5015089 m!6049500))

(declare-fun m!6050000 () Bool)

(assert (=> b!5015089 m!6050000))

(declare-fun m!6050002 () Bool)

(assert (=> b!5015089 m!6050002))

(assert (=> b!5015091 m!6049582))

(assert (=> b!5015091 m!6049500))

(declare-fun m!6050004 () Bool)

(assert (=> b!5015091 m!6050004))

(assert (=> b!5014737 d!1614711))

(declare-fun d!1614713 () Bool)

(assert (=> d!1614713 (= (isEmpty!31376 (_1!34844 lt!2074989)) ((_ is Nil!57907) (_1!34844 lt!2074989)))))

(assert (=> b!5014737 d!1614713))

(declare-fun b!5015106 () Bool)

(declare-fun e!3133115 () List!58031)

(assert (=> b!5015106 (= e!3133115 Nil!57907)))

(declare-fun b!5015107 () Bool)

(declare-fun e!3133118 () Int)

(assert (=> b!5015107 (= e!3133118 (size!38500 lt!2075001))))

(declare-fun b!5015108 () Bool)

(declare-fun e!3133117 () Int)

(assert (=> b!5015108 (= e!3133117 0)))

(declare-fun b!5015109 () Bool)

(assert (=> b!5015109 (= e!3133118 lt!2074995)))

(declare-fun b!5015110 () Bool)

(declare-fun e!3133116 () Bool)

(declare-fun lt!2075309 () List!58031)

(assert (=> b!5015110 (= e!3133116 (= (size!38500 lt!2075309) e!3133117))))

(declare-fun c!856782 () Bool)

(assert (=> b!5015110 (= c!856782 (<= lt!2074995 0))))

(declare-fun d!1614715 () Bool)

(assert (=> d!1614715 e!3133116))

(declare-fun res!2138625 () Bool)

(assert (=> d!1614715 (=> (not res!2138625) (not e!3133116))))

(assert (=> d!1614715 (= res!2138625 (= ((_ map implies) (content!10267 lt!2075309) (content!10267 lt!2075001)) ((as const (InoxSet C!27868)) true)))))

(assert (=> d!1614715 (= lt!2075309 e!3133115)))

(declare-fun c!856780 () Bool)

(assert (=> d!1614715 (= c!856780 (or ((_ is Nil!57907) lt!2075001) (<= lt!2074995 0)))))

(assert (=> d!1614715 (= (take!668 lt!2075001 lt!2074995) lt!2075309)))

(declare-fun b!5015111 () Bool)

(assert (=> b!5015111 (= e!3133115 (Cons!57907 (h!64355 lt!2075001) (take!668 (t!370399 lt!2075001) (- lt!2074995 1))))))

(declare-fun b!5015112 () Bool)

(assert (=> b!5015112 (= e!3133117 e!3133118)))

(declare-fun c!856781 () Bool)

(assert (=> b!5015112 (= c!856781 (>= lt!2074995 (size!38500 lt!2075001)))))

(assert (= (and d!1614715 c!856780) b!5015106))

(assert (= (and d!1614715 (not c!856780)) b!5015111))

(assert (= (and d!1614715 res!2138625) b!5015110))

(assert (= (and b!5015110 c!856782) b!5015108))

(assert (= (and b!5015110 (not c!856782)) b!5015112))

(assert (= (and b!5015112 c!856781) b!5015107))

(assert (= (and b!5015112 (not c!856781)) b!5015109))

(declare-fun m!6050006 () Bool)

(assert (=> b!5015111 m!6050006))

(assert (=> b!5015107 m!6049582))

(declare-fun m!6050008 () Bool)

(assert (=> b!5015110 m!6050008))

(declare-fun m!6050010 () Bool)

(assert (=> d!1614715 m!6050010))

(declare-fun m!6050012 () Bool)

(assert (=> d!1614715 m!6050012))

(assert (=> b!5015112 m!6049582))

(assert (=> b!5014737 d!1614715))

(declare-fun d!1614717 () Bool)

(declare-fun c!856783 () Bool)

(assert (=> d!1614717 (= c!856783 ((_ is Node!15328) (c!856663 totalInput!1012)))))

(declare-fun e!3133119 () Bool)

(assert (=> d!1614717 (= (inv!76116 (c!856663 totalInput!1012)) e!3133119)))

(declare-fun b!5015113 () Bool)

(assert (=> b!5015113 (= e!3133119 (inv!76119 (c!856663 totalInput!1012)))))

(declare-fun b!5015114 () Bool)

(declare-fun e!3133120 () Bool)

(assert (=> b!5015114 (= e!3133119 e!3133120)))

(declare-fun res!2138626 () Bool)

(assert (=> b!5015114 (= res!2138626 (not ((_ is Leaf!25441) (c!856663 totalInput!1012))))))

(assert (=> b!5015114 (=> res!2138626 e!3133120)))

(declare-fun b!5015115 () Bool)

(assert (=> b!5015115 (= e!3133120 (inv!76120 (c!856663 totalInput!1012)))))

(assert (= (and d!1614717 c!856783) b!5015113))

(assert (= (and d!1614717 (not c!856783)) b!5015114))

(assert (= (and b!5015114 (not res!2138626)) b!5015115))

(declare-fun m!6050014 () Bool)

(assert (=> b!5015113 m!6050014))

(declare-fun m!6050016 () Bool)

(assert (=> b!5015115 m!6050016))

(assert (=> b!5014728 d!1614717))

(declare-fun c!856784 () Bool)

(declare-fun d!1614719 () Bool)

(assert (=> d!1614719 (= c!856784 (isEmpty!31376 (take!668 (drop!2472 lt!2075001 lt!2074995) lt!2075008)))))

(declare-fun e!3133121 () Bool)

(assert (=> d!1614719 (= (matchZipper!577 z!4183 (take!668 (drop!2472 lt!2075001 lt!2074995) lt!2075008)) e!3133121)))

(declare-fun b!5015116 () Bool)

(assert (=> b!5015116 (= e!3133121 (nullableZipper!891 z!4183))))

(declare-fun b!5015117 () Bool)

(assert (=> b!5015117 (= e!3133121 (matchZipper!577 (derivationStepZipper!640 z!4183 (head!10745 (take!668 (drop!2472 lt!2075001 lt!2074995) lt!2075008))) (tail!9878 (take!668 (drop!2472 lt!2075001 lt!2074995) lt!2075008))))))

(assert (= (and d!1614719 c!856784) b!5015116))

(assert (= (and d!1614719 (not c!856784)) b!5015117))

(assert (=> d!1614719 m!6049550))

(declare-fun m!6050018 () Bool)

(assert (=> d!1614719 m!6050018))

(assert (=> b!5015116 m!6049704))

(assert (=> b!5015117 m!6049550))

(declare-fun m!6050020 () Bool)

(assert (=> b!5015117 m!6050020))

(assert (=> b!5015117 m!6050020))

(declare-fun m!6050022 () Bool)

(assert (=> b!5015117 m!6050022))

(assert (=> b!5015117 m!6049550))

(declare-fun m!6050024 () Bool)

(assert (=> b!5015117 m!6050024))

(assert (=> b!5015117 m!6050022))

(assert (=> b!5015117 m!6050024))

(declare-fun m!6050026 () Bool)

(assert (=> b!5015117 m!6050026))

(assert (=> b!5014727 d!1614719))

(declare-fun b!5015118 () Bool)

(declare-fun e!3133122 () List!58031)

(assert (=> b!5015118 (= e!3133122 Nil!57907)))

(declare-fun b!5015119 () Bool)

(declare-fun e!3133125 () Int)

(assert (=> b!5015119 (= e!3133125 (size!38500 (drop!2472 lt!2075001 lt!2074995)))))

(declare-fun b!5015120 () Bool)

(declare-fun e!3133124 () Int)

(assert (=> b!5015120 (= e!3133124 0)))

(declare-fun b!5015121 () Bool)

(assert (=> b!5015121 (= e!3133125 lt!2075008)))

(declare-fun b!5015122 () Bool)

(declare-fun e!3133123 () Bool)

(declare-fun lt!2075310 () List!58031)

(assert (=> b!5015122 (= e!3133123 (= (size!38500 lt!2075310) e!3133124))))

(declare-fun c!856787 () Bool)

(assert (=> b!5015122 (= c!856787 (<= lt!2075008 0))))

(declare-fun d!1614721 () Bool)

(assert (=> d!1614721 e!3133123))

(declare-fun res!2138627 () Bool)

(assert (=> d!1614721 (=> (not res!2138627) (not e!3133123))))

(assert (=> d!1614721 (= res!2138627 (= ((_ map implies) (content!10267 lt!2075310) (content!10267 (drop!2472 lt!2075001 lt!2074995))) ((as const (InoxSet C!27868)) true)))))

(assert (=> d!1614721 (= lt!2075310 e!3133122)))

(declare-fun c!856785 () Bool)

(assert (=> d!1614721 (= c!856785 (or ((_ is Nil!57907) (drop!2472 lt!2075001 lt!2074995)) (<= lt!2075008 0)))))

(assert (=> d!1614721 (= (take!668 (drop!2472 lt!2075001 lt!2074995) lt!2075008) lt!2075310)))

(declare-fun b!5015123 () Bool)

(assert (=> b!5015123 (= e!3133122 (Cons!57907 (h!64355 (drop!2472 lt!2075001 lt!2074995)) (take!668 (t!370399 (drop!2472 lt!2075001 lt!2074995)) (- lt!2075008 1))))))

(declare-fun b!5015124 () Bool)

(assert (=> b!5015124 (= e!3133124 e!3133125)))

(declare-fun c!856786 () Bool)

(assert (=> b!5015124 (= c!856786 (>= lt!2075008 (size!38500 (drop!2472 lt!2075001 lt!2074995))))))

(assert (= (and d!1614721 c!856785) b!5015118))

(assert (= (and d!1614721 (not c!856785)) b!5015123))

(assert (= (and d!1614721 res!2138627) b!5015122))

(assert (= (and b!5015122 c!856787) b!5015120))

(assert (= (and b!5015122 (not c!856787)) b!5015124))

(assert (= (and b!5015124 c!856786) b!5015119))

(assert (= (and b!5015124 (not c!856786)) b!5015121))

(declare-fun m!6050028 () Bool)

(assert (=> b!5015123 m!6050028))

(assert (=> b!5015119 m!6049548))

(declare-fun m!6050030 () Bool)

(assert (=> b!5015119 m!6050030))

(declare-fun m!6050032 () Bool)

(assert (=> b!5015122 m!6050032))

(declare-fun m!6050034 () Bool)

(assert (=> d!1614721 m!6050034))

(assert (=> d!1614721 m!6049548))

(declare-fun m!6050036 () Bool)

(assert (=> d!1614721 m!6050036))

(assert (=> b!5015124 m!6049548))

(assert (=> b!5015124 m!6050030))

(assert (=> b!5014727 d!1614721))

(declare-fun b!5015144 () Bool)

(declare-fun e!3133137 () Int)

(declare-fun e!3133139 () Int)

(assert (=> b!5015144 (= e!3133137 e!3133139)))

(declare-fun c!856798 () Bool)

(declare-fun call!350282 () Int)

(assert (=> b!5015144 (= c!856798 (>= lt!2074995 call!350282))))

(declare-fun b!5015145 () Bool)

(assert (=> b!5015145 (= e!3133139 0)))

(declare-fun b!5015146 () Bool)

(assert (=> b!5015146 (= e!3133139 (- call!350282 lt!2074995))))

(declare-fun b!5015147 () Bool)

(assert (=> b!5015147 (= e!3133137 call!350282)))

(declare-fun b!5015148 () Bool)

(declare-fun e!3133138 () Bool)

(declare-fun lt!2075313 () List!58031)

(assert (=> b!5015148 (= e!3133138 (= (size!38500 lt!2075313) e!3133137))))

(declare-fun c!856796 () Bool)

(assert (=> b!5015148 (= c!856796 (<= lt!2074995 0))))

(declare-fun b!5015149 () Bool)

(declare-fun e!3133136 () List!58031)

(declare-fun e!3133140 () List!58031)

(assert (=> b!5015149 (= e!3133136 e!3133140)))

(declare-fun c!856799 () Bool)

(assert (=> b!5015149 (= c!856799 (<= lt!2074995 0))))

(declare-fun b!5015150 () Bool)

(assert (=> b!5015150 (= e!3133140 (drop!2472 (t!370399 lt!2075001) (- lt!2074995 1)))))

(declare-fun d!1614723 () Bool)

(assert (=> d!1614723 e!3133138))

(declare-fun res!2138630 () Bool)

(assert (=> d!1614723 (=> (not res!2138630) (not e!3133138))))

(assert (=> d!1614723 (= res!2138630 (= ((_ map implies) (content!10267 lt!2075313) (content!10267 lt!2075001)) ((as const (InoxSet C!27868)) true)))))

(assert (=> d!1614723 (= lt!2075313 e!3133136)))

(declare-fun c!856797 () Bool)

(assert (=> d!1614723 (= c!856797 ((_ is Nil!57907) lt!2075001))))

(assert (=> d!1614723 (= (drop!2472 lt!2075001 lt!2074995) lt!2075313)))

(declare-fun b!5015143 () Bool)

(assert (=> b!5015143 (= e!3133140 lt!2075001)))

(declare-fun b!5015151 () Bool)

(assert (=> b!5015151 (= e!3133136 Nil!57907)))

(declare-fun bm!350277 () Bool)

(assert (=> bm!350277 (= call!350282 (size!38500 lt!2075001))))

(assert (= (and d!1614723 c!856797) b!5015151))

(assert (= (and d!1614723 (not c!856797)) b!5015149))

(assert (= (and b!5015149 c!856799) b!5015143))

(assert (= (and b!5015149 (not c!856799)) b!5015150))

(assert (= (and d!1614723 res!2138630) b!5015148))

(assert (= (and b!5015148 c!856796) b!5015147))

(assert (= (and b!5015148 (not c!856796)) b!5015144))

(assert (= (and b!5015144 c!856798) b!5015145))

(assert (= (and b!5015144 (not c!856798)) b!5015146))

(assert (= (or b!5015147 b!5015144 b!5015146) bm!350277))

(declare-fun m!6050038 () Bool)

(assert (=> b!5015148 m!6050038))

(declare-fun m!6050040 () Bool)

(assert (=> b!5015150 m!6050040))

(declare-fun m!6050042 () Bool)

(assert (=> d!1614723 m!6050042))

(assert (=> d!1614723 m!6050012))

(assert (=> bm!350277 m!6049582))

(assert (=> b!5014727 d!1614723))

(declare-fun b!5015155 () Bool)

(declare-fun e!3133141 () Bool)

(declare-fun lt!2075314 () List!58031)

(assert (=> b!5015155 (= e!3133141 (or (not (= (_2!34844 lt!2074993) Nil!57907)) (= lt!2075314 (_1!34844 lt!2074993))))))

(declare-fun b!5015154 () Bool)

(declare-fun res!2138632 () Bool)

(assert (=> b!5015154 (=> (not res!2138632) (not e!3133141))))

(assert (=> b!5015154 (= res!2138632 (= (size!38500 lt!2075314) (+ (size!38500 (_1!34844 lt!2074993)) (size!38500 (_2!34844 lt!2074993)))))))

(declare-fun b!5015153 () Bool)

(declare-fun e!3133142 () List!58031)

(assert (=> b!5015153 (= e!3133142 (Cons!57907 (h!64355 (_1!34844 lt!2074993)) (++!12657 (t!370399 (_1!34844 lt!2074993)) (_2!34844 lt!2074993))))))

(declare-fun d!1614725 () Bool)

(assert (=> d!1614725 e!3133141))

(declare-fun res!2138631 () Bool)

(assert (=> d!1614725 (=> (not res!2138631) (not e!3133141))))

(assert (=> d!1614725 (= res!2138631 (= (content!10267 lt!2075314) ((_ map or) (content!10267 (_1!34844 lt!2074993)) (content!10267 (_2!34844 lt!2074993)))))))

(assert (=> d!1614725 (= lt!2075314 e!3133142)))

(declare-fun c!856800 () Bool)

(assert (=> d!1614725 (= c!856800 ((_ is Nil!57907) (_1!34844 lt!2074993)))))

(assert (=> d!1614725 (= (++!12657 (_1!34844 lt!2074993) (_2!34844 lt!2074993)) lt!2075314)))

(declare-fun b!5015152 () Bool)

(assert (=> b!5015152 (= e!3133142 (_2!34844 lt!2074993))))

(assert (= (and d!1614725 c!856800) b!5015152))

(assert (= (and d!1614725 (not c!856800)) b!5015153))

(assert (= (and d!1614725 res!2138631) b!5015154))

(assert (= (and b!5015154 res!2138632) b!5015155))

(declare-fun m!6050044 () Bool)

(assert (=> b!5015154 m!6050044))

(assert (=> b!5015154 m!6049564))

(declare-fun m!6050046 () Bool)

(assert (=> b!5015154 m!6050046))

(declare-fun m!6050048 () Bool)

(assert (=> b!5015153 m!6050048))

(declare-fun m!6050050 () Bool)

(assert (=> d!1614725 m!6050050))

(declare-fun m!6050052 () Bool)

(assert (=> d!1614725 m!6050052))

(declare-fun m!6050054 () Bool)

(assert (=> d!1614725 m!6050054))

(assert (=> b!5014730 d!1614725))

(declare-fun b!5015184 () Bool)

(declare-fun e!3133163 () Bool)

(assert (=> b!5015184 (= e!3133163 (= (head!10745 (_1!34844 lt!2074989)) (c!856664 r!12727)))))

(declare-fun b!5015185 () Bool)

(declare-fun e!3133161 () Bool)

(declare-fun lt!2075317 () Bool)

(declare-fun call!350285 () Bool)

(assert (=> b!5015185 (= e!3133161 (= lt!2075317 call!350285))))

(declare-fun b!5015186 () Bool)

(declare-fun e!3133159 () Bool)

(declare-fun e!3133157 () Bool)

(assert (=> b!5015186 (= e!3133159 e!3133157)))

(declare-fun res!2138650 () Bool)

(assert (=> b!5015186 (=> (not res!2138650) (not e!3133157))))

(assert (=> b!5015186 (= res!2138650 (not lt!2075317))))

(declare-fun b!5015187 () Bool)

(declare-fun e!3133158 () Bool)

(assert (=> b!5015187 (= e!3133158 (matchR!6773 (derivativeStep!3987 r!12727 (head!10745 (_1!34844 lt!2074989))) (tail!9878 (_1!34844 lt!2074989))))))

(declare-fun bm!350280 () Bool)

(assert (=> bm!350280 (= call!350285 (isEmpty!31376 (_1!34844 lt!2074989)))))

(declare-fun b!5015188 () Bool)

(declare-fun e!3133160 () Bool)

(assert (=> b!5015188 (= e!3133157 e!3133160)))

(declare-fun res!2138652 () Bool)

(assert (=> b!5015188 (=> res!2138652 e!3133160)))

(assert (=> b!5015188 (= res!2138652 call!350285)))

(declare-fun b!5015189 () Bool)

(declare-fun e!3133162 () Bool)

(assert (=> b!5015189 (= e!3133161 e!3133162)))

(declare-fun c!856807 () Bool)

(assert (=> b!5015189 (= c!856807 ((_ is EmptyLang!13809) r!12727))))

(declare-fun d!1614727 () Bool)

(assert (=> d!1614727 e!3133161))

(declare-fun c!856808 () Bool)

(assert (=> d!1614727 (= c!856808 ((_ is EmptyExpr!13809) r!12727))))

(assert (=> d!1614727 (= lt!2075317 e!3133158)))

(declare-fun c!856809 () Bool)

(assert (=> d!1614727 (= c!856809 (isEmpty!31376 (_1!34844 lt!2074989)))))

(assert (=> d!1614727 (validRegex!6106 r!12727)))

(assert (=> d!1614727 (= (matchR!6773 r!12727 (_1!34844 lt!2074989)) lt!2075317)))

(declare-fun b!5015190 () Bool)

(assert (=> b!5015190 (= e!3133158 (nullable!4696 r!12727))))

(declare-fun b!5015191 () Bool)

(declare-fun res!2138654 () Bool)

(assert (=> b!5015191 (=> res!2138654 e!3133159)))

(assert (=> b!5015191 (= res!2138654 (not ((_ is ElementMatch!13809) r!12727)))))

(assert (=> b!5015191 (= e!3133162 e!3133159)))

(declare-fun b!5015192 () Bool)

(declare-fun res!2138651 () Bool)

(assert (=> b!5015192 (=> res!2138651 e!3133159)))

(assert (=> b!5015192 (= res!2138651 e!3133163)))

(declare-fun res!2138656 () Bool)

(assert (=> b!5015192 (=> (not res!2138656) (not e!3133163))))

(assert (=> b!5015192 (= res!2138656 lt!2075317)))

(declare-fun b!5015193 () Bool)

(declare-fun res!2138655 () Bool)

(assert (=> b!5015193 (=> res!2138655 e!3133160)))

(assert (=> b!5015193 (= res!2138655 (not (isEmpty!31376 (tail!9878 (_1!34844 lt!2074989)))))))

(declare-fun b!5015194 () Bool)

(declare-fun res!2138653 () Bool)

(assert (=> b!5015194 (=> (not res!2138653) (not e!3133163))))

(assert (=> b!5015194 (= res!2138653 (isEmpty!31376 (tail!9878 (_1!34844 lt!2074989))))))

(declare-fun b!5015195 () Bool)

(assert (=> b!5015195 (= e!3133162 (not lt!2075317))))

(declare-fun b!5015196 () Bool)

(assert (=> b!5015196 (= e!3133160 (not (= (head!10745 (_1!34844 lt!2074989)) (c!856664 r!12727))))))

(declare-fun b!5015197 () Bool)

(declare-fun res!2138649 () Bool)

(assert (=> b!5015197 (=> (not res!2138649) (not e!3133163))))

(assert (=> b!5015197 (= res!2138649 (not call!350285))))

(assert (= (and d!1614727 c!856809) b!5015190))

(assert (= (and d!1614727 (not c!856809)) b!5015187))

(assert (= (and d!1614727 c!856808) b!5015185))

(assert (= (and d!1614727 (not c!856808)) b!5015189))

(assert (= (and b!5015189 c!856807) b!5015195))

(assert (= (and b!5015189 (not c!856807)) b!5015191))

(assert (= (and b!5015191 (not res!2138654)) b!5015192))

(assert (= (and b!5015192 res!2138656) b!5015197))

(assert (= (and b!5015197 res!2138649) b!5015194))

(assert (= (and b!5015194 res!2138653) b!5015184))

(assert (= (and b!5015192 (not res!2138651)) b!5015186))

(assert (= (and b!5015186 res!2138650) b!5015188))

(assert (= (and b!5015188 (not res!2138652)) b!5015193))

(assert (= (and b!5015193 (not res!2138655)) b!5015196))

(assert (= (or b!5015185 b!5015188 b!5015197) bm!350280))

(assert (=> b!5015190 m!6049868))

(declare-fun m!6050056 () Bool)

(assert (=> b!5015196 m!6050056))

(declare-fun m!6050058 () Bool)

(assert (=> b!5015194 m!6050058))

(assert (=> b!5015194 m!6050058))

(declare-fun m!6050060 () Bool)

(assert (=> b!5015194 m!6050060))

(assert (=> bm!350280 m!6049514))

(assert (=> b!5015184 m!6050056))

(assert (=> b!5015193 m!6050058))

(assert (=> b!5015193 m!6050058))

(assert (=> b!5015193 m!6050060))

(assert (=> b!5015187 m!6050056))

(assert (=> b!5015187 m!6050056))

(declare-fun m!6050062 () Bool)

(assert (=> b!5015187 m!6050062))

(assert (=> b!5015187 m!6050058))

(assert (=> b!5015187 m!6050062))

(assert (=> b!5015187 m!6050058))

(declare-fun m!6050064 () Bool)

(assert (=> b!5015187 m!6050064))

(assert (=> d!1614727 m!6049514))

(assert (=> d!1614727 m!6049528))

(assert (=> b!5014740 d!1614727))

(declare-fun d!1614729 () Bool)

(declare-fun lt!2075320 () Bool)

(assert (=> d!1614729 (= lt!2075320 (isEmpty!31376 (list!18650 (_1!34843 lt!2075011))))))

(declare-fun isEmpty!31378 (Conc!15328) Bool)

(assert (=> d!1614729 (= lt!2075320 (isEmpty!31378 (c!856663 (_1!34843 lt!2075011))))))

(assert (=> d!1614729 (= (isEmpty!31375 (_1!34843 lt!2075011)) lt!2075320)))

(declare-fun bs!1186897 () Bool)

(assert (= bs!1186897 d!1614729))

(assert (=> bs!1186897 m!6049546))

(assert (=> bs!1186897 m!6049546))

(declare-fun m!6050066 () Bool)

(assert (=> bs!1186897 m!6050066))

(declare-fun m!6050068 () Bool)

(assert (=> bs!1186897 m!6050068))

(assert (=> b!5014729 d!1614729))

(declare-fun d!1614731 () Bool)

(declare-fun lt!2075321 () Int)

(assert (=> d!1614731 (>= lt!2075321 0)))

(declare-fun e!3133164 () Int)

(assert (=> d!1614731 (= lt!2075321 e!3133164)))

(declare-fun c!856810 () Bool)

(assert (=> d!1614731 (= c!856810 ((_ is Nil!57907) (_1!34844 lt!2074993)))))

(assert (=> d!1614731 (= (size!38500 (_1!34844 lt!2074993)) lt!2075321)))

(declare-fun b!5015198 () Bool)

(assert (=> b!5015198 (= e!3133164 0)))

(declare-fun b!5015199 () Bool)

(assert (=> b!5015199 (= e!3133164 (+ 1 (size!38500 (t!370399 (_1!34844 lt!2074993)))))))

(assert (= (and d!1614731 c!856810) b!5015198))

(assert (= (and d!1614731 (not c!856810)) b!5015199))

(declare-fun m!6050070 () Bool)

(assert (=> b!5015199 m!6050070))

(assert (=> b!5014739 d!1614731))

(declare-fun d!1614733 () Bool)

(assert (=> d!1614733 (= (matchR!6773 r!12727 lt!2075006) (matchZipper!577 z!4183 lt!2075006))))

(declare-fun lt!2075324 () Unit!149127)

(declare-fun choose!37103 ((InoxSet Context!6468) List!58033 Regex!13809 List!58031) Unit!149127)

(assert (=> d!1614733 (= lt!2075324 (choose!37103 z!4183 lt!2075003 r!12727 lt!2075006))))

(assert (=> d!1614733 (validRegex!6106 r!12727)))

(assert (=> d!1614733 (= (theoremZipperRegexEquiv!181 z!4183 lt!2075003 r!12727 lt!2075006) lt!2075324)))

(declare-fun bs!1186898 () Bool)

(assert (= bs!1186898 d!1614733))

(assert (=> bs!1186898 m!6049558))

(assert (=> bs!1186898 m!6049494))

(declare-fun m!6050072 () Bool)

(assert (=> bs!1186898 m!6050072))

(assert (=> bs!1186898 m!6049528))

(assert (=> b!5014739 d!1614733))

(declare-fun b!5015200 () Bool)

(declare-fun e!3133171 () Bool)

(assert (=> b!5015200 (= e!3133171 (= (head!10745 lt!2075006) (c!856664 r!12727)))))

(declare-fun b!5015201 () Bool)

(declare-fun e!3133169 () Bool)

(declare-fun lt!2075325 () Bool)

(declare-fun call!350286 () Bool)

(assert (=> b!5015201 (= e!3133169 (= lt!2075325 call!350286))))

(declare-fun b!5015202 () Bool)

(declare-fun e!3133167 () Bool)

(declare-fun e!3133165 () Bool)

(assert (=> b!5015202 (= e!3133167 e!3133165)))

(declare-fun res!2138658 () Bool)

(assert (=> b!5015202 (=> (not res!2138658) (not e!3133165))))

(assert (=> b!5015202 (= res!2138658 (not lt!2075325))))

(declare-fun b!5015203 () Bool)

(declare-fun e!3133166 () Bool)

(assert (=> b!5015203 (= e!3133166 (matchR!6773 (derivativeStep!3987 r!12727 (head!10745 lt!2075006)) (tail!9878 lt!2075006)))))

(declare-fun bm!350281 () Bool)

(assert (=> bm!350281 (= call!350286 (isEmpty!31376 lt!2075006))))

(declare-fun b!5015204 () Bool)

(declare-fun e!3133168 () Bool)

(assert (=> b!5015204 (= e!3133165 e!3133168)))

(declare-fun res!2138660 () Bool)

(assert (=> b!5015204 (=> res!2138660 e!3133168)))

(assert (=> b!5015204 (= res!2138660 call!350286)))

(declare-fun b!5015205 () Bool)

(declare-fun e!3133170 () Bool)

(assert (=> b!5015205 (= e!3133169 e!3133170)))

(declare-fun c!856811 () Bool)

(assert (=> b!5015205 (= c!856811 ((_ is EmptyLang!13809) r!12727))))

(declare-fun d!1614735 () Bool)

(assert (=> d!1614735 e!3133169))

(declare-fun c!856812 () Bool)

(assert (=> d!1614735 (= c!856812 ((_ is EmptyExpr!13809) r!12727))))

(assert (=> d!1614735 (= lt!2075325 e!3133166)))

(declare-fun c!856813 () Bool)

(assert (=> d!1614735 (= c!856813 (isEmpty!31376 lt!2075006))))

(assert (=> d!1614735 (validRegex!6106 r!12727)))

(assert (=> d!1614735 (= (matchR!6773 r!12727 lt!2075006) lt!2075325)))

(declare-fun b!5015206 () Bool)

(assert (=> b!5015206 (= e!3133166 (nullable!4696 r!12727))))

(declare-fun b!5015207 () Bool)

(declare-fun res!2138662 () Bool)

(assert (=> b!5015207 (=> res!2138662 e!3133167)))

(assert (=> b!5015207 (= res!2138662 (not ((_ is ElementMatch!13809) r!12727)))))

(assert (=> b!5015207 (= e!3133170 e!3133167)))

(declare-fun b!5015208 () Bool)

(declare-fun res!2138659 () Bool)

(assert (=> b!5015208 (=> res!2138659 e!3133167)))

(assert (=> b!5015208 (= res!2138659 e!3133171)))

(declare-fun res!2138664 () Bool)

(assert (=> b!5015208 (=> (not res!2138664) (not e!3133171))))

(assert (=> b!5015208 (= res!2138664 lt!2075325)))

(declare-fun b!5015209 () Bool)

(declare-fun res!2138663 () Bool)

(assert (=> b!5015209 (=> res!2138663 e!3133168)))

(assert (=> b!5015209 (= res!2138663 (not (isEmpty!31376 (tail!9878 lt!2075006))))))

(declare-fun b!5015210 () Bool)

(declare-fun res!2138661 () Bool)

(assert (=> b!5015210 (=> (not res!2138661) (not e!3133171))))

(assert (=> b!5015210 (= res!2138661 (isEmpty!31376 (tail!9878 lt!2075006)))))

(declare-fun b!5015211 () Bool)

(assert (=> b!5015211 (= e!3133170 (not lt!2075325))))

(declare-fun b!5015212 () Bool)

(assert (=> b!5015212 (= e!3133168 (not (= (head!10745 lt!2075006) (c!856664 r!12727))))))

(declare-fun b!5015213 () Bool)

(declare-fun res!2138657 () Bool)

(assert (=> b!5015213 (=> (not res!2138657) (not e!3133171))))

(assert (=> b!5015213 (= res!2138657 (not call!350286))))

(assert (= (and d!1614735 c!856813) b!5015206))

(assert (= (and d!1614735 (not c!856813)) b!5015203))

(assert (= (and d!1614735 c!856812) b!5015201))

(assert (= (and d!1614735 (not c!856812)) b!5015205))

(assert (= (and b!5015205 c!856811) b!5015211))

(assert (= (and b!5015205 (not c!856811)) b!5015207))

(assert (= (and b!5015207 (not res!2138662)) b!5015208))

(assert (= (and b!5015208 res!2138664) b!5015213))

(assert (= (and b!5015213 res!2138657) b!5015210))

(assert (= (and b!5015210 res!2138661) b!5015200))

(assert (= (and b!5015208 (not res!2138659)) b!5015202))

(assert (= (and b!5015202 res!2138658) b!5015204))

(assert (= (and b!5015204 (not res!2138660)) b!5015209))

(assert (= (and b!5015209 (not res!2138663)) b!5015212))

(assert (= (or b!5015201 b!5015204 b!5015213) bm!350281))

(assert (=> b!5015206 m!6049868))

(assert (=> b!5015212 m!6049696))

(assert (=> b!5015210 m!6049690))

(assert (=> b!5015210 m!6049690))

(declare-fun m!6050074 () Bool)

(assert (=> b!5015210 m!6050074))

(assert (=> bm!350281 m!6049702))

(assert (=> b!5015200 m!6049696))

(assert (=> b!5015209 m!6049690))

(assert (=> b!5015209 m!6049690))

(assert (=> b!5015209 m!6050074))

(assert (=> b!5015203 m!6049696))

(assert (=> b!5015203 m!6049696))

(declare-fun m!6050076 () Bool)

(assert (=> b!5015203 m!6050076))

(assert (=> b!5015203 m!6049690))

(assert (=> b!5015203 m!6050076))

(assert (=> b!5015203 m!6049690))

(declare-fun m!6050078 () Bool)

(assert (=> b!5015203 m!6050078))

(assert (=> d!1614735 m!6049702))

(assert (=> d!1614735 m!6049528))

(assert (=> b!5014739 d!1614735))

(declare-fun d!1614737 () Bool)

(declare-fun lt!2075326 () Int)

(assert (=> d!1614737 (= lt!2075326 (size!38500 (list!18650 (_1!34843 lt!2075011))))))

(assert (=> d!1614737 (= lt!2075326 (size!38502 (c!856663 (_1!34843 lt!2075011))))))

(assert (=> d!1614737 (= (size!38501 (_1!34843 lt!2075011)) lt!2075326)))

(declare-fun bs!1186899 () Bool)

(assert (= bs!1186899 d!1614737))

(assert (=> bs!1186899 m!6049546))

(assert (=> bs!1186899 m!6049546))

(declare-fun m!6050080 () Bool)

(assert (=> bs!1186899 m!6050080))

(declare-fun m!6050082 () Bool)

(assert (=> bs!1186899 m!6050082))

(assert (=> b!5014739 d!1614737))

(declare-fun d!1614739 () Bool)

(declare-fun c!856814 () Bool)

(assert (=> d!1614739 (= c!856814 (isEmpty!31376 (_1!34844 lt!2074993)))))

(declare-fun e!3133172 () Bool)

(assert (=> d!1614739 (= (matchZipper!577 z!4183 (_1!34844 lt!2074993)) e!3133172)))

(declare-fun b!5015214 () Bool)

(assert (=> b!5015214 (= e!3133172 (nullableZipper!891 z!4183))))

(declare-fun b!5015215 () Bool)

(assert (=> b!5015215 (= e!3133172 (matchZipper!577 (derivationStepZipper!640 z!4183 (head!10745 (_1!34844 lt!2074993))) (tail!9878 (_1!34844 lt!2074993))))))

(assert (= (and d!1614739 c!856814) b!5015214))

(assert (= (and d!1614739 (not c!856814)) b!5015215))

(assert (=> d!1614739 m!6049482))

(assert (=> b!5015214 m!6049704))

(assert (=> b!5015215 m!6049980))

(assert (=> b!5015215 m!6049980))

(declare-fun m!6050084 () Bool)

(assert (=> b!5015215 m!6050084))

(assert (=> b!5015215 m!6049974))

(assert (=> b!5015215 m!6050084))

(assert (=> b!5015215 m!6049974))

(declare-fun m!6050086 () Bool)

(assert (=> b!5015215 m!6050086))

(assert (=> b!5014739 d!1614739))

(declare-fun d!1614741 () Bool)

(assert (=> d!1614741 (= (matchR!6773 r!12727 (_1!34844 lt!2074993)) (matchZipper!577 z!4183 (_1!34844 lt!2074993)))))

(declare-fun lt!2075327 () Unit!149127)

(assert (=> d!1614741 (= lt!2075327 (choose!37103 z!4183 lt!2075003 r!12727 (_1!34844 lt!2074993)))))

(assert (=> d!1614741 (validRegex!6106 r!12727)))

(assert (=> d!1614741 (= (theoremZipperRegexEquiv!181 z!4183 lt!2075003 r!12727 (_1!34844 lt!2074993)) lt!2075327)))

(declare-fun bs!1186900 () Bool)

(assert (= bs!1186900 d!1614741))

(assert (=> bs!1186900 m!6049520))

(assert (=> bs!1186900 m!6049554))

(declare-fun m!6050088 () Bool)

(assert (=> bs!1186900 m!6050088))

(assert (=> bs!1186900 m!6049528))

(assert (=> b!5014739 d!1614741))

(declare-fun d!1614743 () Bool)

(declare-fun lambda!248602 () Int)

(declare-fun forall!13378 (List!58032 Int) Bool)

(assert (=> d!1614743 (= (inv!76117 setElem!28484) (forall!13378 (exprs!3734 setElem!28484) lambda!248602))))

(declare-fun bs!1186910 () Bool)

(assert (= bs!1186910 d!1614743))

(declare-fun m!6050158 () Bool)

(assert (=> bs!1186910 m!6050158))

(assert (=> setNonEmpty!28484 d!1614743))

(declare-fun d!1614769 () Bool)

(declare-fun e!3133213 () Bool)

(assert (=> d!1614769 e!3133213))

(declare-fun res!2138707 () Bool)

(assert (=> d!1614769 (=> res!2138707 e!3133213)))

(assert (=> d!1614769 (= res!2138707 (= lt!2075006 (_1!34844 lt!2074993)))))

(declare-fun lt!2075382 () Unit!149127)

(declare-fun choose!37105 (Regex!13809 List!58031 List!58031 List!58031) Unit!149127)

(assert (=> d!1614769 (= lt!2075382 (choose!37105 r!12727 lt!2075000 (_1!34844 lt!2074993) lt!2075006))))

(assert (=> d!1614769 (validRegex!6106 r!12727)))

(assert (=> d!1614769 (= (longestMatchNoBiggerStringMatch!17 r!12727 lt!2075000 (_1!34844 lt!2074993) lt!2075006) lt!2075382)))

(declare-fun b!5015292 () Bool)

(assert (=> b!5015292 (= e!3133213 (not (matchR!6773 r!12727 lt!2075006)))))

(assert (= (and d!1614769 (not res!2138707)) b!5015292))

(declare-fun m!6050176 () Bool)

(assert (=> d!1614769 m!6050176))

(assert (=> d!1614769 m!6049528))

(assert (=> b!5015292 m!6049558))

(assert (=> b!5014732 d!1614769))

(declare-fun b!5015293 () Bool)

(declare-fun e!3133220 () Bool)

(assert (=> b!5015293 (= e!3133220 (= (head!10745 (_1!34844 lt!2074993)) (c!856664 r!12727)))))

(declare-fun b!5015294 () Bool)

(declare-fun e!3133218 () Bool)

(declare-fun lt!2075383 () Bool)

(declare-fun call!350291 () Bool)

(assert (=> b!5015294 (= e!3133218 (= lt!2075383 call!350291))))

(declare-fun b!5015295 () Bool)

(declare-fun e!3133216 () Bool)

(declare-fun e!3133214 () Bool)

(assert (=> b!5015295 (= e!3133216 e!3133214)))

(declare-fun res!2138709 () Bool)

(assert (=> b!5015295 (=> (not res!2138709) (not e!3133214))))

(assert (=> b!5015295 (= res!2138709 (not lt!2075383))))

(declare-fun b!5015296 () Bool)

(declare-fun e!3133215 () Bool)

(assert (=> b!5015296 (= e!3133215 (matchR!6773 (derivativeStep!3987 r!12727 (head!10745 (_1!34844 lt!2074993))) (tail!9878 (_1!34844 lt!2074993))))))

(declare-fun bm!350286 () Bool)

(assert (=> bm!350286 (= call!350291 (isEmpty!31376 (_1!34844 lt!2074993)))))

(declare-fun b!5015297 () Bool)

(declare-fun e!3133217 () Bool)

(assert (=> b!5015297 (= e!3133214 e!3133217)))

(declare-fun res!2138711 () Bool)

(assert (=> b!5015297 (=> res!2138711 e!3133217)))

(assert (=> b!5015297 (= res!2138711 call!350291)))

(declare-fun b!5015298 () Bool)

(declare-fun e!3133219 () Bool)

(assert (=> b!5015298 (= e!3133218 e!3133219)))

(declare-fun c!856832 () Bool)

(assert (=> b!5015298 (= c!856832 ((_ is EmptyLang!13809) r!12727))))

(declare-fun d!1614781 () Bool)

(assert (=> d!1614781 e!3133218))

(declare-fun c!856833 () Bool)

(assert (=> d!1614781 (= c!856833 ((_ is EmptyExpr!13809) r!12727))))

(assert (=> d!1614781 (= lt!2075383 e!3133215)))

(declare-fun c!856834 () Bool)

(assert (=> d!1614781 (= c!856834 (isEmpty!31376 (_1!34844 lt!2074993)))))

(assert (=> d!1614781 (validRegex!6106 r!12727)))

(assert (=> d!1614781 (= (matchR!6773 r!12727 (_1!34844 lt!2074993)) lt!2075383)))

(declare-fun b!5015299 () Bool)

(assert (=> b!5015299 (= e!3133215 (nullable!4696 r!12727))))

(declare-fun b!5015300 () Bool)

(declare-fun res!2138713 () Bool)

(assert (=> b!5015300 (=> res!2138713 e!3133216)))

(assert (=> b!5015300 (= res!2138713 (not ((_ is ElementMatch!13809) r!12727)))))

(assert (=> b!5015300 (= e!3133219 e!3133216)))

(declare-fun b!5015301 () Bool)

(declare-fun res!2138710 () Bool)

(assert (=> b!5015301 (=> res!2138710 e!3133216)))

(assert (=> b!5015301 (= res!2138710 e!3133220)))

(declare-fun res!2138715 () Bool)

(assert (=> b!5015301 (=> (not res!2138715) (not e!3133220))))

(assert (=> b!5015301 (= res!2138715 lt!2075383)))

(declare-fun b!5015302 () Bool)

(declare-fun res!2138714 () Bool)

(assert (=> b!5015302 (=> res!2138714 e!3133217)))

(assert (=> b!5015302 (= res!2138714 (not (isEmpty!31376 (tail!9878 (_1!34844 lt!2074993)))))))

(declare-fun b!5015303 () Bool)

(declare-fun res!2138712 () Bool)

(assert (=> b!5015303 (=> (not res!2138712) (not e!3133220))))

(assert (=> b!5015303 (= res!2138712 (isEmpty!31376 (tail!9878 (_1!34844 lt!2074993))))))

(declare-fun b!5015304 () Bool)

(assert (=> b!5015304 (= e!3133219 (not lt!2075383))))

(declare-fun b!5015305 () Bool)

(assert (=> b!5015305 (= e!3133217 (not (= (head!10745 (_1!34844 lt!2074993)) (c!856664 r!12727))))))

(declare-fun b!5015306 () Bool)

(declare-fun res!2138708 () Bool)

(assert (=> b!5015306 (=> (not res!2138708) (not e!3133220))))

(assert (=> b!5015306 (= res!2138708 (not call!350291))))

(assert (= (and d!1614781 c!856834) b!5015299))

(assert (= (and d!1614781 (not c!856834)) b!5015296))

(assert (= (and d!1614781 c!856833) b!5015294))

(assert (= (and d!1614781 (not c!856833)) b!5015298))

(assert (= (and b!5015298 c!856832) b!5015304))

(assert (= (and b!5015298 (not c!856832)) b!5015300))

(assert (= (and b!5015300 (not res!2138713)) b!5015301))

(assert (= (and b!5015301 res!2138715) b!5015306))

(assert (= (and b!5015306 res!2138708) b!5015303))

(assert (= (and b!5015303 res!2138712) b!5015293))

(assert (= (and b!5015301 (not res!2138710)) b!5015295))

(assert (= (and b!5015295 res!2138709) b!5015297))

(assert (= (and b!5015297 (not res!2138711)) b!5015302))

(assert (= (and b!5015302 (not res!2138714)) b!5015305))

(assert (= (or b!5015294 b!5015297 b!5015306) bm!350286))

(assert (=> b!5015299 m!6049868))

(assert (=> b!5015305 m!6049980))

(assert (=> b!5015303 m!6049974))

(assert (=> b!5015303 m!6049974))

(declare-fun m!6050180 () Bool)

(assert (=> b!5015303 m!6050180))

(assert (=> bm!350286 m!6049482))

(assert (=> b!5015293 m!6049980))

(assert (=> b!5015302 m!6049974))

(assert (=> b!5015302 m!6049974))

(assert (=> b!5015302 m!6050180))

(assert (=> b!5015296 m!6049980))

(assert (=> b!5015296 m!6049980))

(declare-fun m!6050182 () Bool)

(assert (=> b!5015296 m!6050182))

(assert (=> b!5015296 m!6049974))

(assert (=> b!5015296 m!6050182))

(assert (=> b!5015296 m!6049974))

(declare-fun m!6050184 () Bool)

(assert (=> b!5015296 m!6050184))

(assert (=> d!1614781 m!6049482))

(assert (=> d!1614781 m!6049528))

(assert (=> b!5014731 d!1614781))

(declare-fun tp!1406399 () Bool)

(declare-fun e!3133235 () Bool)

(declare-fun tp!1406398 () Bool)

(declare-fun b!5015334 () Bool)

(assert (=> b!5015334 (= e!3133235 (and (inv!76116 (left!42334 (c!856663 input!5597))) tp!1406398 (inv!76116 (right!42664 (c!856663 input!5597))) tp!1406399))))

(declare-fun b!5015336 () Bool)

(declare-fun e!3133236 () Bool)

(declare-fun tp!1406397 () Bool)

(assert (=> b!5015336 (= e!3133236 tp!1406397)))

(declare-fun b!5015335 () Bool)

(declare-fun inv!76123 (IArray!30717) Bool)

(assert (=> b!5015335 (= e!3133235 (and (inv!76123 (xs!18654 (c!856663 input!5597))) e!3133236))))

(assert (=> b!5014735 (= tp!1406387 (and (inv!76116 (c!856663 input!5597)) e!3133235))))

(assert (= (and b!5014735 ((_ is Node!15328) (c!856663 input!5597))) b!5015334))

(assert (= b!5015335 b!5015336))

(assert (= (and b!5014735 ((_ is Leaf!25441) (c!856663 input!5597))) b!5015335))

(declare-fun m!6050208 () Bool)

(assert (=> b!5015334 m!6050208))

(declare-fun m!6050210 () Bool)

(assert (=> b!5015334 m!6050210))

(declare-fun m!6050212 () Bool)

(assert (=> b!5015335 m!6050212))

(assert (=> b!5014735 m!6049526))

(declare-fun condSetEmpty!28487 () Bool)

(assert (=> setNonEmpty!28484 (= condSetEmpty!28487 (= setRest!28484 ((as const (Array Context!6468 Bool)) false)))))

(declare-fun setRes!28487 () Bool)

(assert (=> setNonEmpty!28484 (= tp!1406386 setRes!28487)))

(declare-fun setIsEmpty!28487 () Bool)

(assert (=> setIsEmpty!28487 setRes!28487))

(declare-fun setNonEmpty!28487 () Bool)

(declare-fun setElem!28487 () Context!6468)

(declare-fun e!3133249 () Bool)

(declare-fun tp!1406404 () Bool)

(assert (=> setNonEmpty!28487 (= setRes!28487 (and tp!1406404 (inv!76117 setElem!28487) e!3133249))))

(declare-fun setRest!28487 () (InoxSet Context!6468))

(assert (=> setNonEmpty!28487 (= setRest!28484 ((_ map or) (store ((as const (Array Context!6468 Bool)) false) setElem!28487 true) setRest!28487))))

(declare-fun b!5015355 () Bool)

(declare-fun tp!1406405 () Bool)

(assert (=> b!5015355 (= e!3133249 tp!1406405)))

(assert (= (and setNonEmpty!28484 condSetEmpty!28487) setIsEmpty!28487))

(assert (= (and setNonEmpty!28484 (not condSetEmpty!28487)) setNonEmpty!28487))

(assert (= setNonEmpty!28487 b!5015355))

(declare-fun m!6050214 () Bool)

(assert (=> setNonEmpty!28487 m!6050214))

(declare-fun e!3133256 () Bool)

(assert (=> b!5014743 (= tp!1406383 e!3133256)))

(declare-fun b!5015373 () Bool)

(declare-fun tp!1406420 () Bool)

(declare-fun tp!1406419 () Bool)

(assert (=> b!5015373 (= e!3133256 (and tp!1406420 tp!1406419))))

(declare-fun b!5015372 () Bool)

(declare-fun tp!1406416 () Bool)

(assert (=> b!5015372 (= e!3133256 tp!1406416)))

(declare-fun b!5015370 () Bool)

(assert (=> b!5015370 (= e!3133256 tp_is_empty!36615)))

(declare-fun b!5015371 () Bool)

(declare-fun tp!1406418 () Bool)

(declare-fun tp!1406417 () Bool)

(assert (=> b!5015371 (= e!3133256 (and tp!1406418 tp!1406417))))

(assert (= (and b!5014743 ((_ is ElementMatch!13809) (regOne!28131 r!12727))) b!5015370))

(assert (= (and b!5014743 ((_ is Concat!22602) (regOne!28131 r!12727))) b!5015371))

(assert (= (and b!5014743 ((_ is Star!13809) (regOne!28131 r!12727))) b!5015372))

(assert (= (and b!5014743 ((_ is Union!13809) (regOne!28131 r!12727))) b!5015373))

(declare-fun e!3133257 () Bool)

(assert (=> b!5014743 (= tp!1406384 e!3133257)))

(declare-fun b!5015377 () Bool)

(declare-fun tp!1406425 () Bool)

(declare-fun tp!1406424 () Bool)

(assert (=> b!5015377 (= e!3133257 (and tp!1406425 tp!1406424))))

(declare-fun b!5015376 () Bool)

(declare-fun tp!1406421 () Bool)

(assert (=> b!5015376 (= e!3133257 tp!1406421)))

(declare-fun b!5015374 () Bool)

(assert (=> b!5015374 (= e!3133257 tp_is_empty!36615)))

(declare-fun b!5015375 () Bool)

(declare-fun tp!1406423 () Bool)

(declare-fun tp!1406422 () Bool)

(assert (=> b!5015375 (= e!3133257 (and tp!1406423 tp!1406422))))

(assert (= (and b!5014743 ((_ is ElementMatch!13809) (regTwo!28131 r!12727))) b!5015374))

(assert (= (and b!5014743 ((_ is Concat!22602) (regTwo!28131 r!12727))) b!5015375))

(assert (= (and b!5014743 ((_ is Star!13809) (regTwo!28131 r!12727))) b!5015376))

(assert (= (and b!5014743 ((_ is Union!13809) (regTwo!28131 r!12727))) b!5015377))

(declare-fun b!5015378 () Bool)

(declare-fun e!3133258 () Bool)

(declare-fun tp!1406428 () Bool)

(declare-fun tp!1406427 () Bool)

(assert (=> b!5015378 (= e!3133258 (and (inv!76116 (left!42334 (c!856663 totalInput!1012))) tp!1406427 (inv!76116 (right!42664 (c!856663 totalInput!1012))) tp!1406428))))

(declare-fun b!5015380 () Bool)

(declare-fun e!3133259 () Bool)

(declare-fun tp!1406426 () Bool)

(assert (=> b!5015380 (= e!3133259 tp!1406426)))

(declare-fun b!5015379 () Bool)

(assert (=> b!5015379 (= e!3133258 (and (inv!76123 (xs!18654 (c!856663 totalInput!1012))) e!3133259))))

(assert (=> b!5014728 (= tp!1406388 (and (inv!76116 (c!856663 totalInput!1012)) e!3133258))))

(assert (= (and b!5014728 ((_ is Node!15328) (c!856663 totalInput!1012))) b!5015378))

(assert (= b!5015379 b!5015380))

(assert (= (and b!5014728 ((_ is Leaf!25441) (c!856663 totalInput!1012))) b!5015379))

(declare-fun m!6050216 () Bool)

(assert (=> b!5015378 m!6050216))

(declare-fun m!6050218 () Bool)

(assert (=> b!5015378 m!6050218))

(declare-fun m!6050220 () Bool)

(assert (=> b!5015379 m!6050220))

(assert (=> b!5014728 m!6049524))

(declare-fun b!5015385 () Bool)

(declare-fun e!3133262 () Bool)

(declare-fun tp!1406433 () Bool)

(declare-fun tp!1406434 () Bool)

(assert (=> b!5015385 (= e!3133262 (and tp!1406433 tp!1406434))))

(assert (=> b!5014742 (= tp!1406382 e!3133262)))

(assert (= (and b!5014742 ((_ is Cons!57908) (exprs!3734 setElem!28484))) b!5015385))

(declare-fun e!3133263 () Bool)

(assert (=> b!5014736 (= tp!1406390 e!3133263)))

(declare-fun b!5015389 () Bool)

(declare-fun tp!1406439 () Bool)

(declare-fun tp!1406438 () Bool)

(assert (=> b!5015389 (= e!3133263 (and tp!1406439 tp!1406438))))

(declare-fun b!5015388 () Bool)

(declare-fun tp!1406435 () Bool)

(assert (=> b!5015388 (= e!3133263 tp!1406435)))

(declare-fun b!5015386 () Bool)

(assert (=> b!5015386 (= e!3133263 tp_is_empty!36615)))

(declare-fun b!5015387 () Bool)

(declare-fun tp!1406437 () Bool)

(declare-fun tp!1406436 () Bool)

(assert (=> b!5015387 (= e!3133263 (and tp!1406437 tp!1406436))))

(assert (= (and b!5014736 ((_ is ElementMatch!13809) (reg!14138 r!12727))) b!5015386))

(assert (= (and b!5014736 ((_ is Concat!22602) (reg!14138 r!12727))) b!5015387))

(assert (= (and b!5014736 ((_ is Star!13809) (reg!14138 r!12727))) b!5015388))

(assert (= (and b!5014736 ((_ is Union!13809) (reg!14138 r!12727))) b!5015389))

(declare-fun e!3133264 () Bool)

(assert (=> b!5014741 (= tp!1406385 e!3133264)))

(declare-fun b!5015393 () Bool)

(declare-fun tp!1406444 () Bool)

(declare-fun tp!1406443 () Bool)

(assert (=> b!5015393 (= e!3133264 (and tp!1406444 tp!1406443))))

(declare-fun b!5015392 () Bool)

(declare-fun tp!1406440 () Bool)

(assert (=> b!5015392 (= e!3133264 tp!1406440)))

(declare-fun b!5015390 () Bool)

(assert (=> b!5015390 (= e!3133264 tp_is_empty!36615)))

(declare-fun b!5015391 () Bool)

(declare-fun tp!1406442 () Bool)

(declare-fun tp!1406441 () Bool)

(assert (=> b!5015391 (= e!3133264 (and tp!1406442 tp!1406441))))

(assert (= (and b!5014741 ((_ is ElementMatch!13809) (regOne!28130 r!12727))) b!5015390))

(assert (= (and b!5014741 ((_ is Concat!22602) (regOne!28130 r!12727))) b!5015391))

(assert (= (and b!5014741 ((_ is Star!13809) (regOne!28130 r!12727))) b!5015392))

(assert (= (and b!5014741 ((_ is Union!13809) (regOne!28130 r!12727))) b!5015393))

(declare-fun e!3133265 () Bool)

(assert (=> b!5014741 (= tp!1406389 e!3133265)))

(declare-fun b!5015397 () Bool)

(declare-fun tp!1406449 () Bool)

(declare-fun tp!1406448 () Bool)

(assert (=> b!5015397 (= e!3133265 (and tp!1406449 tp!1406448))))

(declare-fun b!5015396 () Bool)

(declare-fun tp!1406445 () Bool)

(assert (=> b!5015396 (= e!3133265 tp!1406445)))

(declare-fun b!5015394 () Bool)

(assert (=> b!5015394 (= e!3133265 tp_is_empty!36615)))

(declare-fun b!5015395 () Bool)

(declare-fun tp!1406447 () Bool)

(declare-fun tp!1406446 () Bool)

(assert (=> b!5015395 (= e!3133265 (and tp!1406447 tp!1406446))))

(assert (= (and b!5014741 ((_ is ElementMatch!13809) (regTwo!28130 r!12727))) b!5015394))

(assert (= (and b!5014741 ((_ is Concat!22602) (regTwo!28130 r!12727))) b!5015395))

(assert (= (and b!5014741 ((_ is Star!13809) (regTwo!28130 r!12727))) b!5015396))

(assert (= (and b!5014741 ((_ is Union!13809) (regTwo!28130 r!12727))) b!5015397))

(check-sat (not b!5015377) (not b!5015299) (not d!1614641) (not b!5014728) (not setNonEmpty!28487) (not bm!350286) (not b!5015335) (not d!1614735) (not d!1614633) (not bm!350270) (not d!1614617) (not d!1614639) (not b!5015296) (not b!5014735) (not b!5015210) (not b!5015081) (not b!5015107) (not b!5014855) (not b!5014753) (not b!5015391) (not b!5015388) (not b!5015397) (not b!5015396) (not d!1614719) (not b!5015148) (not bm!350223) (not b!5015292) (not d!1614701) (not b!5015212) (not d!1614647) (not b!5015373) (not b!5015091) (not d!1614651) (not b!5015293) (not b!5015082) (not d!1614729) (not b!5015111) (not d!1614741) (not b!5015085) (not d!1614615) (not b!5015372) (not b!5015203) (not b!5015116) tp_is_empty!36615 (not d!1614657) (not b!5014831) (not d!1614645) (not b!5015206) (not b!5015090) (not b!5015302) (not b!5015087) (not b!5015154) (not d!1614733) (not b!5015380) (not b!5015379) (not b!5015385) (not d!1614643) (not b!5015122) (not b!5015089) (not bm!350267) (not d!1614603) (not b!5015209) (not d!1614721) (not d!1614737) (not b!5014853) (not bm!350266) (not d!1614769) (not d!1614781) (not bm!350265) (not b!5014809) (not d!1614743) (not b!5015015) (not d!1614707) (not d!1614619) (not b!5015113) (not b!5014808) (not bm!350269) (not b!5015389) (not d!1614739) (not b!5015077) (not bm!350268) (not d!1614681) (not b!5014850) (not d!1614725) (not bm!350281) (not b!5015013) (not d!1614715) (not b!5015123) (not b!5015117) (not b!5015184) (not b!5015303) (not d!1614635) (not b!5015395) (not b!5015371) (not b!5015387) (not d!1614659) (not b!5015199) (not b!5014825) (not b!5015150) (not b!5015011) (not bm!350221) (not d!1614637) (not b!5014823) (not b!5014751) (not b!5014830) (not b!5015119) (not bm!350264) (not b!5015214) (not b!5015153) (not b!5014813) (not bm!350271) (not b!5015190) (not b!5015336) (not b!5015355) (not b!5015112) (not d!1614723) (not b!5015194) (not b!5015193) (not b!5015393) (not b!5015078) (not b!5015378) (not b!5015376) (not b!5015115) (not b!5015375) (not b!5015124) (not bm!350277) (not b!5014863) (not b!5015196) (not d!1614703) (not d!1614607) (not b!5015016) (not b!5014756) (not d!1614605) (not b!5014824) (not b!5015334) (not b!5014777) (not d!1614727) (not b!5015305) (not b!5015392) (not b!5015110) (not b!5015187) (not b!5015215) (not bm!350280) (not b!5015200) (not b!5014848) (not b!5015080))
(check-sat)
(get-model)

(declare-fun d!1614793 () Bool)

(declare-fun lambda!248605 () Int)

(declare-fun exists!1366 ((InoxSet Context!6468) Int) Bool)

(assert (=> d!1614793 (= (nullableZipper!891 lt!2075081) (exists!1366 lt!2075081 lambda!248605))))

(declare-fun bs!1186915 () Bool)

(assert (= bs!1186915 d!1614793))

(declare-fun m!6050246 () Bool)

(assert (=> bs!1186915 m!6050246))

(assert (=> b!5014853 d!1614793))

(declare-fun d!1614795 () Bool)

(declare-fun lt!2075387 () Int)

(assert (=> d!1614795 (>= lt!2075387 0)))

(declare-fun e!3133294 () Int)

(assert (=> d!1614795 (= lt!2075387 e!3133294)))

(declare-fun c!856847 () Bool)

(assert (=> d!1614795 (= c!856847 ((_ is Nil!57907) lt!2075062))))

(assert (=> d!1614795 (= (size!38500 lt!2075062) lt!2075387)))

(declare-fun b!5015461 () Bool)

(assert (=> b!5015461 (= e!3133294 0)))

(declare-fun b!5015462 () Bool)

(assert (=> b!5015462 (= e!3133294 (+ 1 (size!38500 (t!370399 lt!2075062))))))

(assert (= (and d!1614795 c!856847) b!5015461))

(assert (= (and d!1614795 (not c!856847)) b!5015462))

(declare-fun m!6050248 () Bool)

(assert (=> b!5015462 m!6050248))

(assert (=> b!5014809 d!1614795))

(declare-fun d!1614797 () Bool)

(declare-fun lt!2075388 () Int)

(assert (=> d!1614797 (>= lt!2075388 0)))

(declare-fun e!3133295 () Int)

(assert (=> d!1614797 (= lt!2075388 e!3133295)))

(declare-fun c!856848 () Bool)

(assert (=> d!1614797 (= c!856848 ((_ is Nil!57907) lt!2075006))))

(assert (=> d!1614797 (= (size!38500 lt!2075006) lt!2075388)))

(declare-fun b!5015463 () Bool)

(assert (=> b!5015463 (= e!3133295 0)))

(declare-fun b!5015464 () Bool)

(assert (=> b!5015464 (= e!3133295 (+ 1 (size!38500 (t!370399 lt!2075006))))))

(assert (= (and d!1614797 c!856848) b!5015463))

(assert (= (and d!1614797 (not c!856848)) b!5015464))

(declare-fun m!6050250 () Bool)

(assert (=> b!5015464 m!6050250))

(assert (=> b!5014809 d!1614797))

(declare-fun d!1614799 () Bool)

(declare-fun lt!2075389 () Int)

(assert (=> d!1614799 (>= lt!2075389 0)))

(declare-fun e!3133296 () Int)

(assert (=> d!1614799 (= lt!2075389 e!3133296)))

(declare-fun c!856849 () Bool)

(assert (=> d!1614799 (= c!856849 ((_ is Nil!57907) lt!2075014))))

(assert (=> d!1614799 (= (size!38500 lt!2075014) lt!2075389)))

(declare-fun b!5015465 () Bool)

(assert (=> b!5015465 (= e!3133296 0)))

(declare-fun b!5015466 () Bool)

(assert (=> b!5015466 (= e!3133296 (+ 1 (size!38500 (t!370399 lt!2075014))))))

(assert (= (and d!1614799 c!856849) b!5015465))

(assert (= (and d!1614799 (not c!856849)) b!5015466))

(declare-fun m!6050252 () Bool)

(assert (=> b!5015466 m!6050252))

(assert (=> b!5014809 d!1614799))

(declare-fun d!1614801 () Bool)

(assert (not d!1614801))

(assert (=> b!5015087 d!1614801))

(declare-fun d!1614803 () Bool)

(assert (=> d!1614803 (= (head!10745 (_1!34844 lt!2074989)) (h!64355 (_1!34844 lt!2074989)))))

(assert (=> b!5015196 d!1614803))

(declare-fun d!1614805 () Bool)

(assert (=> d!1614805 (= (isEmpty!31376 (_1!34844 lt!2075255)) ((_ is Nil!57907) (_1!34844 lt!2075255)))))

(assert (=> b!5015016 d!1614805))

(declare-fun d!1614807 () Bool)

(declare-fun lt!2075390 () Int)

(assert (=> d!1614807 (>= lt!2075390 0)))

(declare-fun e!3133297 () Int)

(assert (=> d!1614807 (= lt!2075390 e!3133297)))

(declare-fun c!856850 () Bool)

(assert (=> d!1614807 (= c!856850 ((_ is Nil!57907) lt!2075001))))

(assert (=> d!1614807 (= (size!38500 lt!2075001) lt!2075390)))

(declare-fun b!5015467 () Bool)

(assert (=> b!5015467 (= e!3133297 0)))

(declare-fun b!5015468 () Bool)

(assert (=> b!5015468 (= e!3133297 (+ 1 (size!38500 (t!370399 lt!2075001))))))

(assert (= (and d!1614807 c!856850) b!5015467))

(assert (= (and d!1614807 (not c!856850)) b!5015468))

(declare-fun m!6050254 () Bool)

(assert (=> b!5015468 m!6050254))

(assert (=> b!5015112 d!1614807))

(assert (=> d!1614707 d!1614611))

(declare-fun d!1614809 () Bool)

(assert (=> d!1614809 (= (isEmpty!31376 (_1!34844 (findLongestMatchInner!1998 r!12727 Nil!57907 (size!38500 Nil!57907) lt!2075000 lt!2075000 (size!38500 lt!2075000)))) ((_ is Nil!57907) (_1!34844 (findLongestMatchInner!1998 r!12727 Nil!57907 (size!38500 Nil!57907) lt!2075000 lt!2075000 (size!38500 lt!2075000)))))))

(assert (=> d!1614707 d!1614809))

(assert (=> d!1614707 d!1614655))

(assert (=> d!1614707 d!1614659))

(declare-fun d!1614811 () Bool)

(declare-fun e!3133300 () Bool)

(assert (=> d!1614811 e!3133300))

(declare-fun res!2138744 () Bool)

(assert (=> d!1614811 (=> res!2138744 e!3133300)))

(assert (=> d!1614811 (= res!2138744 (isEmpty!31376 (_1!34844 (findLongestMatchInner!1998 r!12727 Nil!57907 (size!38500 Nil!57907) lt!2075000 lt!2075000 (size!38500 lt!2075000)))))))

(assert (=> d!1614811 true))

(declare-fun _$92!572 () Unit!149127)

(assert (=> d!1614811 (= (choose!37102 r!12727 lt!2075000) _$92!572)))

(declare-fun b!5015471 () Bool)

(assert (=> b!5015471 (= e!3133300 (matchR!6773 r!12727 (_1!34844 (findLongestMatchInner!1998 r!12727 Nil!57907 (size!38500 Nil!57907) lt!2075000 lt!2075000 (size!38500 lt!2075000)))))))

(assert (= (and d!1614811 (not res!2138744)) b!5015471))

(assert (=> d!1614811 m!6049490))

(assert (=> d!1614811 m!6049502))

(assert (=> d!1614811 m!6049490))

(assert (=> d!1614811 m!6049502))

(assert (=> d!1614811 m!6049504))

(assert (=> d!1614811 m!6049986))

(assert (=> b!5015471 m!6049490))

(assert (=> b!5015471 m!6049502))

(assert (=> b!5015471 m!6049490))

(assert (=> b!5015471 m!6049502))

(assert (=> b!5015471 m!6049504))

(assert (=> b!5015471 m!6049990))

(assert (=> d!1614707 d!1614811))

(assert (=> d!1614707 d!1614709))

(declare-fun d!1614813 () Bool)

(declare-fun nullableFct!1272 (Regex!13809) Bool)

(assert (=> d!1614813 (= (nullable!4696 (reg!14138 r!12727)) (nullableFct!1272 (reg!14138 r!12727)))))

(declare-fun bs!1186916 () Bool)

(assert (= bs!1186916 d!1614813))

(declare-fun m!6050256 () Bool)

(assert (=> bs!1186916 m!6050256))

(assert (=> b!5014777 d!1614813))

(declare-fun d!1614815 () Bool)

(assert (=> d!1614815 (= (isEmpty!31376 (list!18650 (_1!34843 lt!2075011))) ((_ is Nil!57907) (list!18650 (_1!34843 lt!2075011))))))

(assert (=> d!1614729 d!1614815))

(assert (=> d!1614729 d!1614633))

(declare-fun d!1614817 () Bool)

(declare-fun lt!2075393 () Bool)

(assert (=> d!1614817 (= lt!2075393 (isEmpty!31376 (list!18651 (c!856663 (_1!34843 lt!2075011)))))))

(assert (=> d!1614817 (= lt!2075393 (= (size!38502 (c!856663 (_1!34843 lt!2075011))) 0))))

(assert (=> d!1614817 (= (isEmpty!31378 (c!856663 (_1!34843 lt!2075011))) lt!2075393)))

(declare-fun bs!1186917 () Bool)

(assert (= bs!1186917 d!1614817))

(assert (=> bs!1186917 m!6049640))

(assert (=> bs!1186917 m!6049640))

(declare-fun m!6050258 () Bool)

(assert (=> bs!1186917 m!6050258))

(assert (=> bs!1186917 m!6050082))

(assert (=> d!1614729 d!1614817))

(declare-fun d!1614819 () Bool)

(declare-fun c!856853 () Bool)

(assert (=> d!1614819 (= c!856853 ((_ is Nil!57909) lt!2075069))))

(declare-fun e!3133303 () (InoxSet Context!6468))

(assert (=> d!1614819 (= (content!10268 lt!2075069) e!3133303)))

(declare-fun b!5015476 () Bool)

(assert (=> b!5015476 (= e!3133303 ((as const (Array Context!6468 Bool)) false))))

(declare-fun b!5015477 () Bool)

(assert (=> b!5015477 (= e!3133303 ((_ map or) (store ((as const (Array Context!6468 Bool)) false) (h!64357 lt!2075069) true) (content!10268 (t!370401 lt!2075069))))))

(assert (= (and d!1614819 c!856853) b!5015476))

(assert (= (and d!1614819 (not c!856853)) b!5015477))

(declare-fun m!6050260 () Bool)

(assert (=> b!5015477 m!6050260))

(declare-fun m!6050262 () Bool)

(assert (=> b!5015477 m!6050262))

(assert (=> b!5014813 d!1614819))

(declare-fun d!1614821 () Bool)

(declare-fun lt!2075394 () Int)

(assert (=> d!1614821 (>= lt!2075394 0)))

(declare-fun e!3133304 () Int)

(assert (=> d!1614821 (= lt!2075394 e!3133304)))

(declare-fun c!856854 () Bool)

(assert (=> d!1614821 (= c!856854 ((_ is Nil!57907) (list!18650 input!5597)))))

(assert (=> d!1614821 (= (size!38500 (list!18650 input!5597)) lt!2075394)))

(declare-fun b!5015478 () Bool)

(assert (=> b!5015478 (= e!3133304 0)))

(declare-fun b!5015479 () Bool)

(assert (=> b!5015479 (= e!3133304 (+ 1 (size!38500 (t!370399 (list!18650 input!5597)))))))

(assert (= (and d!1614821 c!856854) b!5015478))

(assert (= (and d!1614821 (not c!856854)) b!5015479))

(declare-fun m!6050264 () Bool)

(assert (=> b!5015479 m!6050264))

(assert (=> d!1614643 d!1614821))

(assert (=> d!1614643 d!1614607))

(declare-fun d!1614823 () Bool)

(declare-fun lt!2075397 () Int)

(assert (=> d!1614823 (= lt!2075397 (size!38500 (list!18651 (c!856663 input!5597))))))

(assert (=> d!1614823 (= lt!2075397 (ite ((_ is Empty!15328) (c!856663 input!5597)) 0 (ite ((_ is Leaf!25441) (c!856663 input!5597)) (csize!30887 (c!856663 input!5597)) (csize!30886 (c!856663 input!5597)))))))

(assert (=> d!1614823 (= (size!38502 (c!856663 input!5597)) lt!2075397)))

(declare-fun bs!1186918 () Bool)

(assert (= bs!1186918 d!1614823))

(assert (=> bs!1186918 m!6049588))

(assert (=> bs!1186918 m!6049588))

(declare-fun m!6050266 () Bool)

(assert (=> bs!1186918 m!6050266))

(assert (=> d!1614643 d!1614823))

(declare-fun d!1614825 () Bool)

(declare-fun res!2138749 () Bool)

(declare-fun e!3133307 () Bool)

(assert (=> d!1614825 (=> (not res!2138749) (not e!3133307))))

(declare-fun list!18653 (IArray!30717) List!58031)

(assert (=> d!1614825 (= res!2138749 (<= (size!38500 (list!18653 (xs!18654 (c!856663 totalInput!1012)))) 512))))

(assert (=> d!1614825 (= (inv!76120 (c!856663 totalInput!1012)) e!3133307)))

(declare-fun b!5015484 () Bool)

(declare-fun res!2138750 () Bool)

(assert (=> b!5015484 (=> (not res!2138750) (not e!3133307))))

(assert (=> b!5015484 (= res!2138750 (= (csize!30887 (c!856663 totalInput!1012)) (size!38500 (list!18653 (xs!18654 (c!856663 totalInput!1012))))))))

(declare-fun b!5015485 () Bool)

(assert (=> b!5015485 (= e!3133307 (and (> (csize!30887 (c!856663 totalInput!1012)) 0) (<= (csize!30887 (c!856663 totalInput!1012)) 512)))))

(assert (= (and d!1614825 res!2138749) b!5015484))

(assert (= (and b!5015484 res!2138750) b!5015485))

(declare-fun m!6050268 () Bool)

(assert (=> d!1614825 m!6050268))

(assert (=> d!1614825 m!6050268))

(declare-fun m!6050270 () Bool)

(assert (=> d!1614825 m!6050270))

(assert (=> b!5015484 m!6050268))

(assert (=> b!5015484 m!6050268))

(assert (=> b!5015484 m!6050270))

(assert (=> b!5015115 d!1614825))

(declare-fun bm!350305 () Bool)

(declare-fun call!350311 () Regex!13809)

(declare-fun call!350313 () Regex!13809)

(assert (=> bm!350305 (= call!350311 call!350313)))

(declare-fun b!5015506 () Bool)

(declare-fun e!3133318 () Regex!13809)

(declare-fun e!3133320 () Regex!13809)

(assert (=> b!5015506 (= e!3133318 e!3133320)))

(declare-fun c!856869 () Bool)

(assert (=> b!5015506 (= c!856869 ((_ is Star!13809) r!12727))))

(declare-fun b!5015507 () Bool)

(declare-fun e!3133322 () Regex!13809)

(assert (=> b!5015507 (= e!3133322 (ite (= call!350272 (c!856664 r!12727)) EmptyExpr!13809 EmptyLang!13809))))

(declare-fun d!1614827 () Bool)

(declare-fun lt!2075400 () Regex!13809)

(assert (=> d!1614827 (validRegex!6106 lt!2075400)))

(declare-fun e!3133319 () Regex!13809)

(assert (=> d!1614827 (= lt!2075400 e!3133319)))

(declare-fun c!856867 () Bool)

(assert (=> d!1614827 (= c!856867 (or ((_ is EmptyExpr!13809) r!12727) ((_ is EmptyLang!13809) r!12727)))))

(assert (=> d!1614827 (validRegex!6106 r!12727)))

(assert (=> d!1614827 (= (derivativeStep!3987 r!12727 call!350272) lt!2075400)))

(declare-fun b!5015508 () Bool)

(assert (=> b!5015508 (= e!3133319 e!3133322)))

(declare-fun c!856865 () Bool)

(assert (=> b!5015508 (= c!856865 ((_ is ElementMatch!13809) r!12727))))

(declare-fun b!5015509 () Bool)

(declare-fun e!3133321 () Regex!13809)

(declare-fun call!350312 () Regex!13809)

(declare-fun call!350310 () Regex!13809)

(assert (=> b!5015509 (= e!3133321 (Union!13809 (Concat!22602 call!350312 (regTwo!28130 r!12727)) call!350310))))

(declare-fun b!5015510 () Bool)

(assert (=> b!5015510 (= e!3133318 (Union!13809 call!350313 call!350312))))

(declare-fun c!856868 () Bool)

(declare-fun c!856866 () Bool)

(declare-fun bm!350306 () Bool)

(assert (=> bm!350306 (= call!350313 (derivativeStep!3987 (ite c!856868 (regOne!28131 r!12727) (ite c!856869 (reg!14138 r!12727) (ite c!856866 (regTwo!28130 r!12727) (regOne!28130 r!12727)))) call!350272))))

(declare-fun b!5015511 () Bool)

(assert (=> b!5015511 (= e!3133320 (Concat!22602 call!350311 r!12727))))

(declare-fun b!5015512 () Bool)

(assert (=> b!5015512 (= e!3133321 (Union!13809 (Concat!22602 call!350310 (regTwo!28130 r!12727)) EmptyLang!13809))))

(declare-fun b!5015513 () Bool)

(assert (=> b!5015513 (= c!856868 ((_ is Union!13809) r!12727))))

(assert (=> b!5015513 (= e!3133322 e!3133318)))

(declare-fun bm!350307 () Bool)

(assert (=> bm!350307 (= call!350310 call!350311)))

(declare-fun b!5015514 () Bool)

(assert (=> b!5015514 (= c!856866 (nullable!4696 (regOne!28130 r!12727)))))

(assert (=> b!5015514 (= e!3133320 e!3133321)))

(declare-fun bm!350308 () Bool)

(assert (=> bm!350308 (= call!350312 (derivativeStep!3987 (ite c!856868 (regTwo!28131 r!12727) (regOne!28130 r!12727)) call!350272))))

(declare-fun b!5015515 () Bool)

(assert (=> b!5015515 (= e!3133319 EmptyLang!13809)))

(assert (= (and d!1614827 c!856867) b!5015515))

(assert (= (and d!1614827 (not c!856867)) b!5015508))

(assert (= (and b!5015508 c!856865) b!5015507))

(assert (= (and b!5015508 (not c!856865)) b!5015513))

(assert (= (and b!5015513 c!856868) b!5015510))

(assert (= (and b!5015513 (not c!856868)) b!5015506))

(assert (= (and b!5015506 c!856869) b!5015511))

(assert (= (and b!5015506 (not c!856869)) b!5015514))

(assert (= (and b!5015514 c!856866) b!5015509))

(assert (= (and b!5015514 (not c!856866)) b!5015512))

(assert (= (or b!5015509 b!5015512) bm!350307))

(assert (= (or b!5015511 bm!350307) bm!350305))

(assert (= (or b!5015510 bm!350305) bm!350306))

(assert (= (or b!5015510 b!5015509) bm!350308))

(declare-fun m!6050272 () Bool)

(assert (=> d!1614827 m!6050272))

(assert (=> d!1614827 m!6049528))

(declare-fun m!6050274 () Bool)

(assert (=> bm!350306 m!6050274))

(declare-fun m!6050276 () Bool)

(assert (=> b!5015514 m!6050276))

(declare-fun m!6050278 () Bool)

(assert (=> bm!350308 m!6050278))

(assert (=> bm!350266 d!1614827))

(declare-fun d!1614829 () Bool)

(assert (=> d!1614829 (= (head!10745 lt!2075006) (h!64355 lt!2075006))))

(assert (=> b!5014823 d!1614829))

(declare-fun d!1614831 () Bool)

(assert (=> d!1614831 (= (head!10745 lt!2074991) (h!64355 lt!2074991))))

(assert (=> b!5014823 d!1614831))

(declare-fun d!1614833 () Bool)

(assert (=> d!1614833 (= (isEmpty!31376 (tail!9878 lt!2075006)) ((_ is Nil!57907) (tail!9878 lt!2075006)))))

(assert (=> b!5015209 d!1614833))

(declare-fun d!1614835 () Bool)

(assert (=> d!1614835 (= (tail!9878 lt!2075006) (t!370399 lt!2075006))))

(assert (=> b!5015209 d!1614835))

(assert (=> b!5014756 d!1614807))

(assert (=> b!5014756 d!1614655))

(declare-fun b!5015516 () Bool)

(declare-fun e!3133323 () List!58031)

(assert (=> b!5015516 (= e!3133323 Nil!57907)))

(declare-fun b!5015517 () Bool)

(declare-fun e!3133326 () Int)

(assert (=> b!5015517 (= e!3133326 (size!38500 (drop!2472 (list!18650 totalInput!1012) lt!2074995)))))

(declare-fun b!5015518 () Bool)

(declare-fun e!3133325 () Int)

(assert (=> b!5015518 (= e!3133325 0)))

(declare-fun b!5015519 () Bool)

(assert (=> b!5015519 (= e!3133326 (findLongestMatchInnerZipperFastV2!149 z!4183 lt!2074995 totalInput!1012 (size!38501 totalInput!1012)))))

(declare-fun b!5015520 () Bool)

(declare-fun e!3133324 () Bool)

(declare-fun lt!2075401 () List!58031)

(assert (=> b!5015520 (= e!3133324 (= (size!38500 lt!2075401) e!3133325))))

(declare-fun c!856872 () Bool)

(assert (=> b!5015520 (= c!856872 (<= (findLongestMatchInnerZipperFastV2!149 z!4183 lt!2074995 totalInput!1012 (size!38501 totalInput!1012)) 0))))

(declare-fun d!1614837 () Bool)

(assert (=> d!1614837 e!3133324))

(declare-fun res!2138751 () Bool)

(assert (=> d!1614837 (=> (not res!2138751) (not e!3133324))))

(assert (=> d!1614837 (= res!2138751 (= ((_ map implies) (content!10267 lt!2075401) (content!10267 (drop!2472 (list!18650 totalInput!1012) lt!2074995))) ((as const (InoxSet C!27868)) true)))))

(assert (=> d!1614837 (= lt!2075401 e!3133323)))

(declare-fun c!856870 () Bool)

(assert (=> d!1614837 (= c!856870 (or ((_ is Nil!57907) (drop!2472 (list!18650 totalInput!1012) lt!2074995)) (<= (findLongestMatchInnerZipperFastV2!149 z!4183 lt!2074995 totalInput!1012 (size!38501 totalInput!1012)) 0)))))

(assert (=> d!1614837 (= (take!668 (drop!2472 (list!18650 totalInput!1012) lt!2074995) (findLongestMatchInnerZipperFastV2!149 z!4183 lt!2074995 totalInput!1012 (size!38501 totalInput!1012))) lt!2075401)))

(declare-fun b!5015521 () Bool)

(assert (=> b!5015521 (= e!3133323 (Cons!57907 (h!64355 (drop!2472 (list!18650 totalInput!1012) lt!2074995)) (take!668 (t!370399 (drop!2472 (list!18650 totalInput!1012) lt!2074995)) (- (findLongestMatchInnerZipperFastV2!149 z!4183 lt!2074995 totalInput!1012 (size!38501 totalInput!1012)) 1))))))

(declare-fun b!5015522 () Bool)

(assert (=> b!5015522 (= e!3133325 e!3133326)))

(declare-fun c!856871 () Bool)

(assert (=> b!5015522 (= c!856871 (>= (findLongestMatchInnerZipperFastV2!149 z!4183 lt!2074995 totalInput!1012 (size!38501 totalInput!1012)) (size!38500 (drop!2472 (list!18650 totalInput!1012) lt!2074995))))))

(assert (= (and d!1614837 c!856870) b!5015516))

(assert (= (and d!1614837 (not c!856870)) b!5015521))

(assert (= (and d!1614837 res!2138751) b!5015520))

(assert (= (and b!5015520 c!856872) b!5015518))

(assert (= (and b!5015520 (not c!856872)) b!5015522))

(assert (= (and b!5015522 c!856871) b!5015517))

(assert (= (and b!5015522 (not c!856871)) b!5015519))

(declare-fun m!6050280 () Bool)

(assert (=> b!5015521 m!6050280))

(assert (=> b!5015517 m!6049966))

(declare-fun m!6050282 () Bool)

(assert (=> b!5015517 m!6050282))

(declare-fun m!6050284 () Bool)

(assert (=> b!5015520 m!6050284))

(declare-fun m!6050286 () Bool)

(assert (=> d!1614837 m!6050286))

(assert (=> d!1614837 m!6049966))

(declare-fun m!6050288 () Bool)

(assert (=> d!1614837 m!6050288))

(assert (=> b!5015522 m!6049966))

(assert (=> b!5015522 m!6050282))

(assert (=> b!5015078 d!1614837))

(declare-fun b!5015523 () Bool)

(declare-fun e!3133331 () Bool)

(assert (=> b!5015523 (= e!3133331 (lostCauseZipper!837 z!4183))))

(declare-fun b!5015524 () Bool)

(declare-fun e!3133329 () Int)

(declare-fun lt!2075403 () Int)

(assert (=> b!5015524 (= e!3133329 (+ 1 lt!2075403))))

(declare-fun b!5015525 () Bool)

(declare-fun e!3133327 () Bool)

(assert (=> b!5015525 (= e!3133327 (<= lt!2074995 (size!38501 totalInput!1012)))))

(declare-fun d!1614839 () Bool)

(declare-fun lt!2075402 () Int)

(assert (=> d!1614839 (and (>= lt!2075402 0) (<= lt!2075402 (- (size!38501 totalInput!1012) lt!2074995)))))

(declare-fun e!3133328 () Int)

(assert (=> d!1614839 (= lt!2075402 e!3133328)))

(declare-fun c!856875 () Bool)

(assert (=> d!1614839 (= c!856875 e!3133331)))

(declare-fun res!2138753 () Bool)

(assert (=> d!1614839 (=> res!2138753 e!3133331)))

(assert (=> d!1614839 (= res!2138753 (= lt!2074995 (size!38501 totalInput!1012)))))

(assert (=> d!1614839 e!3133327))

(declare-fun res!2138752 () Bool)

(assert (=> d!1614839 (=> (not res!2138752) (not e!3133327))))

(assert (=> d!1614839 (= res!2138752 (>= lt!2074995 0))))

(assert (=> d!1614839 (= (findLongestMatchInnerZipperFastV2!149 z!4183 lt!2074995 totalInput!1012 (size!38501 totalInput!1012)) lt!2075402)))

(declare-fun b!5015526 () Bool)

(assert (=> b!5015526 (= e!3133328 0)))

(declare-fun b!5015527 () Bool)

(declare-fun e!3133330 () Int)

(assert (=> b!5015527 (= e!3133330 1)))

(declare-fun b!5015528 () Bool)

(declare-fun c!856873 () Bool)

(declare-fun lt!2075404 () (InoxSet Context!6468))

(assert (=> b!5015528 (= c!856873 (nullableZipper!891 lt!2075404))))

(assert (=> b!5015528 (= e!3133329 e!3133330)))

(declare-fun b!5015529 () Bool)

(assert (=> b!5015529 (= e!3133330 0)))

(declare-fun b!5015530 () Bool)

(assert (=> b!5015530 (= e!3133328 e!3133329)))

(assert (=> b!5015530 (= lt!2075404 (derivationStepZipper!640 z!4183 (apply!14008 totalInput!1012 lt!2074995)))))

(assert (=> b!5015530 (= lt!2075403 (findLongestMatchInnerZipperFastV2!149 lt!2075404 (+ lt!2074995 1) totalInput!1012 (size!38501 totalInput!1012)))))

(declare-fun c!856874 () Bool)

(assert (=> b!5015530 (= c!856874 (> lt!2075403 0))))

(assert (= (and d!1614839 res!2138752) b!5015525))

(assert (= (and d!1614839 (not res!2138753)) b!5015523))

(assert (= (and d!1614839 c!856875) b!5015526))

(assert (= (and d!1614839 (not c!856875)) b!5015530))

(assert (= (and b!5015530 c!856874) b!5015524))

(assert (= (and b!5015530 (not c!856874)) b!5015528))

(assert (= (and b!5015528 c!856873) b!5015527))

(assert (= (and b!5015528 (not c!856873)) b!5015529))

(assert (=> b!5015523 m!6049710))

(assert (=> b!5015525 m!6049538))

(declare-fun m!6050290 () Bool)

(assert (=> b!5015528 m!6050290))

(assert (=> b!5015530 m!6049714))

(assert (=> b!5015530 m!6049714))

(assert (=> b!5015530 m!6049716))

(assert (=> b!5015530 m!6049538))

(declare-fun m!6050292 () Bool)

(assert (=> b!5015530 m!6050292))

(assert (=> b!5015078 d!1614839))

(assert (=> b!5015078 d!1614605))

(declare-fun c!856876 () Bool)

(declare-fun d!1614841 () Bool)

(assert (=> d!1614841 (= c!856876 (isEmpty!31376 (take!668 (drop!2472 (list!18650 totalInput!1012) lt!2074995) (findLongestMatchInnerZipperFastV2!149 z!4183 lt!2074995 totalInput!1012 (size!38501 totalInput!1012)))))))

(declare-fun e!3133332 () Bool)

(assert (=> d!1614841 (= (matchZipper!577 z!4183 (take!668 (drop!2472 (list!18650 totalInput!1012) lt!2074995) (findLongestMatchInnerZipperFastV2!149 z!4183 lt!2074995 totalInput!1012 (size!38501 totalInput!1012)))) e!3133332)))

(declare-fun b!5015531 () Bool)

(assert (=> b!5015531 (= e!3133332 (nullableZipper!891 z!4183))))

(declare-fun b!5015532 () Bool)

(assert (=> b!5015532 (= e!3133332 (matchZipper!577 (derivationStepZipper!640 z!4183 (head!10745 (take!668 (drop!2472 (list!18650 totalInput!1012) lt!2074995) (findLongestMatchInnerZipperFastV2!149 z!4183 lt!2074995 totalInput!1012 (size!38501 totalInput!1012))))) (tail!9878 (take!668 (drop!2472 (list!18650 totalInput!1012) lt!2074995) (findLongestMatchInnerZipperFastV2!149 z!4183 lt!2074995 totalInput!1012 (size!38501 totalInput!1012))))))))

(assert (= (and d!1614841 c!856876) b!5015531))

(assert (= (and d!1614841 (not c!856876)) b!5015532))

(assert (=> d!1614841 m!6049962))

(declare-fun m!6050294 () Bool)

(assert (=> d!1614841 m!6050294))

(assert (=> b!5015531 m!6049704))

(assert (=> b!5015532 m!6049962))

(declare-fun m!6050296 () Bool)

(assert (=> b!5015532 m!6050296))

(assert (=> b!5015532 m!6050296))

(declare-fun m!6050298 () Bool)

(assert (=> b!5015532 m!6050298))

(assert (=> b!5015532 m!6049962))

(declare-fun m!6050300 () Bool)

(assert (=> b!5015532 m!6050300))

(assert (=> b!5015532 m!6050298))

(assert (=> b!5015532 m!6050300))

(declare-fun m!6050302 () Bool)

(assert (=> b!5015532 m!6050302))

(assert (=> b!5015078 d!1614841))

(assert (=> b!5015078 d!1614637))

(declare-fun b!5015534 () Bool)

(declare-fun e!3133334 () Int)

(declare-fun e!3133336 () Int)

(assert (=> b!5015534 (= e!3133334 e!3133336)))

(declare-fun c!856879 () Bool)

(declare-fun call!350314 () Int)

(assert (=> b!5015534 (= c!856879 (>= lt!2074995 call!350314))))

(declare-fun b!5015535 () Bool)

(assert (=> b!5015535 (= e!3133336 0)))

(declare-fun b!5015536 () Bool)

(assert (=> b!5015536 (= e!3133336 (- call!350314 lt!2074995))))

(declare-fun b!5015537 () Bool)

(assert (=> b!5015537 (= e!3133334 call!350314)))

(declare-fun b!5015538 () Bool)

(declare-fun e!3133335 () Bool)

(declare-fun lt!2075405 () List!58031)

(assert (=> b!5015538 (= e!3133335 (= (size!38500 lt!2075405) e!3133334))))

(declare-fun c!856877 () Bool)

(assert (=> b!5015538 (= c!856877 (<= lt!2074995 0))))

(declare-fun b!5015539 () Bool)

(declare-fun e!3133333 () List!58031)

(declare-fun e!3133337 () List!58031)

(assert (=> b!5015539 (= e!3133333 e!3133337)))

(declare-fun c!856880 () Bool)

(assert (=> b!5015539 (= c!856880 (<= lt!2074995 0))))

(declare-fun b!5015540 () Bool)

(assert (=> b!5015540 (= e!3133337 (drop!2472 (t!370399 (list!18650 totalInput!1012)) (- lt!2074995 1)))))

(declare-fun d!1614843 () Bool)

(assert (=> d!1614843 e!3133335))

(declare-fun res!2138754 () Bool)

(assert (=> d!1614843 (=> (not res!2138754) (not e!3133335))))

(assert (=> d!1614843 (= res!2138754 (= ((_ map implies) (content!10267 lt!2075405) (content!10267 (list!18650 totalInput!1012))) ((as const (InoxSet C!27868)) true)))))

(assert (=> d!1614843 (= lt!2075405 e!3133333)))

(declare-fun c!856878 () Bool)

(assert (=> d!1614843 (= c!856878 ((_ is Nil!57907) (list!18650 totalInput!1012)))))

(assert (=> d!1614843 (= (drop!2472 (list!18650 totalInput!1012) lt!2074995) lt!2075405)))

(declare-fun b!5015533 () Bool)

(assert (=> b!5015533 (= e!3133337 (list!18650 totalInput!1012))))

(declare-fun b!5015541 () Bool)

(assert (=> b!5015541 (= e!3133333 Nil!57907)))

(declare-fun bm!350309 () Bool)

(assert (=> bm!350309 (= call!350314 (size!38500 (list!18650 totalInput!1012)))))

(assert (= (and d!1614843 c!856878) b!5015541))

(assert (= (and d!1614843 (not c!856878)) b!5015539))

(assert (= (and b!5015539 c!856880) b!5015533))

(assert (= (and b!5015539 (not c!856880)) b!5015540))

(assert (= (and d!1614843 res!2138754) b!5015538))

(assert (= (and b!5015538 c!856877) b!5015537))

(assert (= (and b!5015538 (not c!856877)) b!5015534))

(assert (= (and b!5015534 c!856879) b!5015535))

(assert (= (and b!5015534 (not c!856879)) b!5015536))

(assert (= (or b!5015537 b!5015534 b!5015536) bm!350309))

(declare-fun m!6050304 () Bool)

(assert (=> b!5015538 m!6050304))

(declare-fun m!6050306 () Bool)

(assert (=> b!5015540 m!6050306))

(declare-fun m!6050308 () Bool)

(assert (=> d!1614843 m!6050308))

(assert (=> d!1614843 m!6049574))

(declare-fun m!6050310 () Bool)

(assert (=> d!1614843 m!6050310))

(assert (=> bm!350309 m!6049574))

(assert (=> bm!350309 m!6049644))

(assert (=> b!5015078 d!1614843))

(assert (=> d!1614701 d!1614711))

(assert (=> d!1614701 d!1614715))

(declare-fun d!1614845 () Bool)

(assert (=> d!1614845 (isPrefix!5362 (take!668 lt!2075001 lt!2074995) lt!2075001)))

(assert (=> d!1614845 true))

(declare-fun _$48!757 () Unit!149127)

(assert (=> d!1614845 (= (choose!37101 lt!2075001 lt!2074995) _$48!757)))

(declare-fun bs!1186919 () Bool)

(assert (= bs!1186919 d!1614845))

(assert (=> bs!1186919 m!6049500))

(assert (=> bs!1186919 m!6049500))

(assert (=> bs!1186919 m!6049508))

(assert (=> d!1614701 d!1614845))

(declare-fun d!1614847 () Bool)

(declare-fun lt!2075406 () Int)

(assert (=> d!1614847 (>= lt!2075406 0)))

(declare-fun e!3133338 () Int)

(assert (=> d!1614847 (= lt!2075406 e!3133338)))

(declare-fun c!856881 () Bool)

(assert (=> d!1614847 (= c!856881 ((_ is Nil!57907) (drop!2472 lt!2075001 lt!2074995)))))

(assert (=> d!1614847 (= (size!38500 (drop!2472 lt!2075001 lt!2074995)) lt!2075406)))

(declare-fun b!5015542 () Bool)

(assert (=> b!5015542 (= e!3133338 0)))

(declare-fun b!5015543 () Bool)

(assert (=> b!5015543 (= e!3133338 (+ 1 (size!38500 (t!370399 (drop!2472 lt!2075001 lt!2074995)))))))

(assert (= (and d!1614847 c!856881) b!5015542))

(assert (= (and d!1614847 (not c!856881)) b!5015543))

(declare-fun m!6050312 () Bool)

(assert (=> b!5015543 m!6050312))

(assert (=> b!5015124 d!1614847))

(declare-fun d!1614849 () Bool)

(declare-fun c!856884 () Bool)

(assert (=> d!1614849 (= c!856884 ((_ is Nil!57907) lt!2075062))))

(declare-fun e!3133341 () (InoxSet C!27868))

(assert (=> d!1614849 (= (content!10267 lt!2075062) e!3133341)))

(declare-fun b!5015548 () Bool)

(assert (=> b!5015548 (= e!3133341 ((as const (Array C!27868 Bool)) false))))

(declare-fun b!5015549 () Bool)

(assert (=> b!5015549 (= e!3133341 ((_ map or) (store ((as const (Array C!27868 Bool)) false) (h!64355 lt!2075062) true) (content!10267 (t!370399 lt!2075062))))))

(assert (= (and d!1614849 c!856884) b!5015548))

(assert (= (and d!1614849 (not c!856884)) b!5015549))

(declare-fun m!6050314 () Bool)

(assert (=> b!5015549 m!6050314))

(declare-fun m!6050316 () Bool)

(assert (=> b!5015549 m!6050316))

(assert (=> d!1614641 d!1614849))

(declare-fun d!1614851 () Bool)

(declare-fun c!856885 () Bool)

(assert (=> d!1614851 (= c!856885 ((_ is Nil!57907) lt!2075006))))

(declare-fun e!3133342 () (InoxSet C!27868))

(assert (=> d!1614851 (= (content!10267 lt!2075006) e!3133342)))

(declare-fun b!5015550 () Bool)

(assert (=> b!5015550 (= e!3133342 ((as const (Array C!27868 Bool)) false))))

(declare-fun b!5015551 () Bool)

(assert (=> b!5015551 (= e!3133342 ((_ map or) (store ((as const (Array C!27868 Bool)) false) (h!64355 lt!2075006) true) (content!10267 (t!370399 lt!2075006))))))

(assert (= (and d!1614851 c!856885) b!5015550))

(assert (= (and d!1614851 (not c!856885)) b!5015551))

(declare-fun m!6050318 () Bool)

(assert (=> b!5015551 m!6050318))

(declare-fun m!6050320 () Bool)

(assert (=> b!5015551 m!6050320))

(assert (=> d!1614641 d!1614851))

(declare-fun d!1614853 () Bool)

(declare-fun c!856886 () Bool)

(assert (=> d!1614853 (= c!856886 ((_ is Nil!57907) lt!2075014))))

(declare-fun e!3133343 () (InoxSet C!27868))

(assert (=> d!1614853 (= (content!10267 lt!2075014) e!3133343)))

(declare-fun b!5015552 () Bool)

(assert (=> b!5015552 (= e!3133343 ((as const (Array C!27868 Bool)) false))))

(declare-fun b!5015553 () Bool)

(assert (=> b!5015553 (= e!3133343 ((_ map or) (store ((as const (Array C!27868 Bool)) false) (h!64355 lt!2075014) true) (content!10267 (t!370399 lt!2075014))))))

(assert (= (and d!1614853 c!856886) b!5015552))

(assert (= (and d!1614853 (not c!856886)) b!5015553))

(declare-fun m!6050322 () Bool)

(assert (=> b!5015553 m!6050322))

(declare-fun m!6050324 () Bool)

(assert (=> b!5015553 m!6050324))

(assert (=> d!1614641 d!1614853))

(assert (=> bm!350286 d!1614609))

(assert (=> d!1614741 d!1614781))

(assert (=> d!1614741 d!1614739))

(declare-fun d!1614855 () Bool)

(assert (=> d!1614855 (= (matchR!6773 r!12727 (_1!34844 lt!2074993)) (matchZipper!577 z!4183 (_1!34844 lt!2074993)))))

(assert (=> d!1614855 true))

(declare-fun _$44!1363 () Unit!149127)

(assert (=> d!1614855 (= (choose!37103 z!4183 lt!2075003 r!12727 (_1!34844 lt!2074993)) _$44!1363)))

(declare-fun bs!1186920 () Bool)

(assert (= bs!1186920 d!1614855))

(assert (=> bs!1186920 m!6049520))

(assert (=> bs!1186920 m!6049554))

(assert (=> d!1614741 d!1614855))

(assert (=> d!1614741 d!1614611))

(declare-fun b!5015555 () Bool)

(declare-fun e!3133345 () Int)

(declare-fun e!3133347 () Int)

(assert (=> b!5015555 (= e!3133345 e!3133347)))

(declare-fun c!856889 () Bool)

(declare-fun call!350315 () Int)

(assert (=> b!5015555 (= c!856889 (>= (- lt!2074995 1) call!350315))))

(declare-fun b!5015556 () Bool)

(assert (=> b!5015556 (= e!3133347 0)))

(declare-fun b!5015557 () Bool)

(assert (=> b!5015557 (= e!3133347 (- call!350315 (- lt!2074995 1)))))

(declare-fun b!5015558 () Bool)

(assert (=> b!5015558 (= e!3133345 call!350315)))

(declare-fun b!5015559 () Bool)

(declare-fun e!3133346 () Bool)

(declare-fun lt!2075407 () List!58031)

(assert (=> b!5015559 (= e!3133346 (= (size!38500 lt!2075407) e!3133345))))

(declare-fun c!856887 () Bool)

(assert (=> b!5015559 (= c!856887 (<= (- lt!2074995 1) 0))))

(declare-fun b!5015560 () Bool)

(declare-fun e!3133344 () List!58031)

(declare-fun e!3133348 () List!58031)

(assert (=> b!5015560 (= e!3133344 e!3133348)))

(declare-fun c!856890 () Bool)

(assert (=> b!5015560 (= c!856890 (<= (- lt!2074995 1) 0))))

(declare-fun b!5015561 () Bool)

(assert (=> b!5015561 (= e!3133348 (drop!2472 (t!370399 (t!370399 lt!2075001)) (- (- lt!2074995 1) 1)))))

(declare-fun d!1614857 () Bool)

(assert (=> d!1614857 e!3133346))

(declare-fun res!2138755 () Bool)

(assert (=> d!1614857 (=> (not res!2138755) (not e!3133346))))

(assert (=> d!1614857 (= res!2138755 (= ((_ map implies) (content!10267 lt!2075407) (content!10267 (t!370399 lt!2075001))) ((as const (InoxSet C!27868)) true)))))

(assert (=> d!1614857 (= lt!2075407 e!3133344)))

(declare-fun c!856888 () Bool)

(assert (=> d!1614857 (= c!856888 ((_ is Nil!57907) (t!370399 lt!2075001)))))

(assert (=> d!1614857 (= (drop!2472 (t!370399 lt!2075001) (- lt!2074995 1)) lt!2075407)))

(declare-fun b!5015554 () Bool)

(assert (=> b!5015554 (= e!3133348 (t!370399 lt!2075001))))

(declare-fun b!5015562 () Bool)

(assert (=> b!5015562 (= e!3133344 Nil!57907)))

(declare-fun bm!350310 () Bool)

(assert (=> bm!350310 (= call!350315 (size!38500 (t!370399 lt!2075001)))))

(assert (= (and d!1614857 c!856888) b!5015562))

(assert (= (and d!1614857 (not c!856888)) b!5015560))

(assert (= (and b!5015560 c!856890) b!5015554))

(assert (= (and b!5015560 (not c!856890)) b!5015561))

(assert (= (and d!1614857 res!2138755) b!5015559))

(assert (= (and b!5015559 c!856887) b!5015558))

(assert (= (and b!5015559 (not c!856887)) b!5015555))

(assert (= (and b!5015555 c!856889) b!5015556))

(assert (= (and b!5015555 (not c!856889)) b!5015557))

(assert (= (or b!5015558 b!5015555 b!5015557) bm!350310))

(declare-fun m!6050326 () Bool)

(assert (=> b!5015559 m!6050326))

(declare-fun m!6050328 () Bool)

(assert (=> b!5015561 m!6050328))

(declare-fun m!6050330 () Bool)

(assert (=> d!1614857 m!6050330))

(declare-fun m!6050332 () Bool)

(assert (=> d!1614857 m!6050332))

(assert (=> bm!350310 m!6050254))

(assert (=> b!5015150 d!1614857))

(declare-fun bs!1186921 () Bool)

(declare-fun d!1614859 () Bool)

(assert (= bs!1186921 (and d!1614859 d!1614793)))

(declare-fun lambda!248606 () Int)

(assert (=> bs!1186921 (= lambda!248606 lambda!248605)))

(assert (=> d!1614859 (= (nullableZipper!891 z!4183) (exists!1366 z!4183 lambda!248606))))

(declare-fun bs!1186922 () Bool)

(assert (= bs!1186922 d!1614859))

(declare-fun m!6050334 () Bool)

(assert (=> bs!1186922 m!6050334))

(assert (=> b!5015116 d!1614859))

(declare-fun d!1614861 () Bool)

(assert (=> d!1614861 (= (nullable!4696 r!12727) (nullableFct!1272 r!12727))))

(declare-fun bs!1186923 () Bool)

(assert (= bs!1186923 d!1614861))

(declare-fun m!6050336 () Bool)

(assert (=> bs!1186923 m!6050336))

(assert (=> bm!350270 d!1614861))

(assert (=> d!1614727 d!1614713))

(assert (=> d!1614727 d!1614611))

(declare-fun d!1614863 () Bool)

(assert (=> d!1614863 (= (head!10745 (_1!34844 lt!2074993)) (h!64355 (_1!34844 lt!2074993)))))

(assert (=> b!5015080 d!1614863))

(declare-fun d!1614865 () Bool)

(assert (=> d!1614865 (= (head!10745 lt!2075013) (h!64355 lt!2075013))))

(assert (=> b!5015080 d!1614865))

(declare-fun d!1614867 () Bool)

(assert (=> d!1614867 (= (isEmpty!31376 (tail!9878 (_1!34844 lt!2074989))) ((_ is Nil!57907) (tail!9878 (_1!34844 lt!2074989))))))

(assert (=> b!5015193 d!1614867))

(declare-fun d!1614869 () Bool)

(assert (=> d!1614869 (= (tail!9878 (_1!34844 lt!2074989)) (t!370399 (_1!34844 lt!2074989)))))

(assert (=> b!5015193 d!1614869))

(declare-fun b!5015563 () Bool)

(declare-fun e!3133349 () tuple2!63082)

(assert (=> b!5015563 (= e!3133349 (tuple2!63083 Nil!57907 lt!2075000))))

(declare-fun b!5015564 () Bool)

(declare-fun e!3133355 () tuple2!63082)

(declare-fun lt!2075411 () tuple2!63082)

(assert (=> b!5015564 (= e!3133355 lt!2075411)))

(declare-fun b!5015565 () Bool)

(declare-fun e!3133350 () tuple2!63082)

(declare-fun call!350322 () tuple2!63082)

(assert (=> b!5015565 (= e!3133350 call!350322)))

(declare-fun bm!350311 () Bool)

(declare-fun call!350321 () List!58031)

(assert (=> bm!350311 (= call!350321 (tail!9878 call!350274))))

(declare-fun b!5015566 () Bool)

(declare-fun e!3133356 () tuple2!63082)

(assert (=> b!5015566 (= e!3133356 (tuple2!63083 Nil!57907 lt!2075000))))

(declare-fun b!5015567 () Bool)

(declare-fun e!3133351 () Bool)

(declare-fun lt!2075425 () tuple2!63082)

(assert (=> b!5015567 (= e!3133351 (>= (size!38500 (_1!34844 lt!2075425)) (size!38500 lt!2075257)))))

(declare-fun b!5015569 () Bool)

(declare-fun e!3133353 () Bool)

(assert (=> b!5015569 (= e!3133353 e!3133351)))

(declare-fun res!2138756 () Bool)

(assert (=> b!5015569 (=> res!2138756 e!3133351)))

(assert (=> b!5015569 (= res!2138756 (isEmpty!31376 (_1!34844 lt!2075425)))))

(declare-fun b!5015570 () Bool)

(declare-fun e!3133352 () Unit!149127)

(declare-fun Unit!149135 () Unit!149127)

(assert (=> b!5015570 (= e!3133352 Unit!149135)))

(declare-fun lt!2075427 () Unit!149127)

(declare-fun call!350320 () Unit!149127)

(assert (=> b!5015570 (= lt!2075427 call!350320)))

(declare-fun call!350317 () Bool)

(assert (=> b!5015570 call!350317))

(declare-fun lt!2075426 () Unit!149127)

(assert (=> b!5015570 (= lt!2075426 lt!2075427)))

(declare-fun lt!2075414 () Unit!149127)

(declare-fun call!350318 () Unit!149127)

(assert (=> b!5015570 (= lt!2075414 call!350318)))

(assert (=> b!5015570 (= lt!2075000 lt!2075257)))

(declare-fun lt!2075420 () Unit!149127)

(assert (=> b!5015570 (= lt!2075420 lt!2075414)))

(assert (=> b!5015570 false))

(declare-fun bm!350312 () Bool)

(declare-fun call!350319 () C!27868)

(assert (=> bm!350312 (= call!350319 (head!10745 call!350274))))

(declare-fun bm!350313 () Bool)

(declare-fun call!350316 () Regex!13809)

(assert (=> bm!350313 (= call!350316 (derivativeStep!3987 call!350269 call!350319))))

(declare-fun lt!2075413 () List!58031)

(declare-fun bm!350314 () Bool)

(assert (=> bm!350314 (= call!350322 (findLongestMatchInner!1998 call!350316 lt!2075413 (+ (size!38500 Nil!57907) 1 1) call!350321 lt!2075000 (size!38500 lt!2075000)))))

(declare-fun bm!350315 () Bool)

(assert (=> bm!350315 (= call!350317 (isPrefix!5362 lt!2075000 lt!2075000))))

(declare-fun b!5015571 () Bool)

(declare-fun c!856896 () Bool)

(declare-fun call!350323 () Bool)

(assert (=> b!5015571 (= c!856896 call!350323)))

(declare-fun lt!2075415 () Unit!149127)

(declare-fun lt!2075416 () Unit!149127)

(assert (=> b!5015571 (= lt!2075415 lt!2075416)))

(declare-fun lt!2075417 () List!58031)

(declare-fun lt!2075408 () C!27868)

(assert (=> b!5015571 (= (++!12657 (++!12657 lt!2075257 (Cons!57907 lt!2075408 Nil!57907)) lt!2075417) lt!2075000)))

(assert (=> b!5015571 (= lt!2075416 (lemmaMoveElementToOtherListKeepsConcatEq!1508 lt!2075257 lt!2075408 lt!2075417 lt!2075000))))

(assert (=> b!5015571 (= lt!2075417 (tail!9878 call!350274))))

(assert (=> b!5015571 (= lt!2075408 (head!10745 call!350274))))

(declare-fun lt!2075432 () Unit!149127)

(declare-fun lt!2075421 () Unit!149127)

(assert (=> b!5015571 (= lt!2075432 lt!2075421)))

(assert (=> b!5015571 (isPrefix!5362 (++!12657 lt!2075257 (Cons!57907 (head!10745 (getSuffix!3152 lt!2075000 lt!2075257)) Nil!57907)) lt!2075000)))

(assert (=> b!5015571 (= lt!2075421 (lemmaAddHeadSuffixToPrefixStillPrefix!897 lt!2075257 lt!2075000))))

(declare-fun lt!2075418 () Unit!149127)

(declare-fun lt!2075409 () Unit!149127)

(assert (=> b!5015571 (= lt!2075418 lt!2075409)))

(assert (=> b!5015571 (= lt!2075409 (lemmaAddHeadSuffixToPrefixStillPrefix!897 lt!2075257 lt!2075000))))

(assert (=> b!5015571 (= lt!2075413 (++!12657 lt!2075257 (Cons!57907 (head!10745 call!350274) Nil!57907)))))

(declare-fun lt!2075435 () Unit!149127)

(assert (=> b!5015571 (= lt!2075435 e!3133352)))

(declare-fun c!856894 () Bool)

(assert (=> b!5015571 (= c!856894 (= (size!38500 lt!2075257) (size!38500 lt!2075000)))))

(declare-fun lt!2075422 () Unit!149127)

(declare-fun lt!2075433 () Unit!149127)

(assert (=> b!5015571 (= lt!2075422 lt!2075433)))

(assert (=> b!5015571 (<= (size!38500 lt!2075257) (size!38500 lt!2075000))))

(assert (=> b!5015571 (= lt!2075433 (lemmaIsPrefixThenSmallerEqSize!823 lt!2075257 lt!2075000))))

(declare-fun e!3133354 () tuple2!63082)

(assert (=> b!5015571 (= e!3133354 e!3133350)))

(declare-fun b!5015572 () Bool)

(assert (=> b!5015572 (= e!3133350 e!3133355)))

(assert (=> b!5015572 (= lt!2075411 call!350322)))

(declare-fun c!856895 () Bool)

(assert (=> b!5015572 (= c!856895 (isEmpty!31376 (_1!34844 lt!2075411)))))

(declare-fun bm!350316 () Bool)

(assert (=> bm!350316 (= call!350318 (lemmaIsPrefixSameLengthThenSameList!1283 lt!2075000 lt!2075257 lt!2075000))))

(declare-fun b!5015573 () Bool)

(declare-fun c!856891 () Bool)

(assert (=> b!5015573 (= c!856891 call!350323)))

(declare-fun lt!2075434 () Unit!149127)

(declare-fun lt!2075424 () Unit!149127)

(assert (=> b!5015573 (= lt!2075434 lt!2075424)))

(assert (=> b!5015573 (= lt!2075000 lt!2075257)))

(assert (=> b!5015573 (= lt!2075424 call!350318)))

(declare-fun lt!2075412 () Unit!149127)

(declare-fun lt!2075429 () Unit!149127)

(assert (=> b!5015573 (= lt!2075412 lt!2075429)))

(assert (=> b!5015573 call!350317))

(assert (=> b!5015573 (= lt!2075429 call!350320)))

(assert (=> b!5015573 (= e!3133354 e!3133349)))

(declare-fun b!5015574 () Bool)

(assert (=> b!5015574 (= e!3133349 (tuple2!63083 lt!2075257 Nil!57907))))

(declare-fun b!5015575 () Bool)

(assert (=> b!5015575 (= e!3133356 e!3133354)))

(declare-fun c!856892 () Bool)

(assert (=> b!5015575 (= c!856892 (= (+ (size!38500 Nil!57907) 1) (size!38500 lt!2075000)))))

(declare-fun bm!350317 () Bool)

(assert (=> bm!350317 (= call!350323 (nullable!4696 call!350269))))

(declare-fun d!1614871 () Bool)

(assert (=> d!1614871 e!3133353))

(declare-fun res!2138757 () Bool)

(assert (=> d!1614871 (=> (not res!2138757) (not e!3133353))))

(assert (=> d!1614871 (= res!2138757 (= (++!12657 (_1!34844 lt!2075425) (_2!34844 lt!2075425)) lt!2075000))))

(assert (=> d!1614871 (= lt!2075425 e!3133356)))

(declare-fun c!856893 () Bool)

(assert (=> d!1614871 (= c!856893 (lostCause!1196 call!350269))))

(declare-fun lt!2075428 () Unit!149127)

(declare-fun Unit!149136 () Unit!149127)

(assert (=> d!1614871 (= lt!2075428 Unit!149136)))

(assert (=> d!1614871 (= (getSuffix!3152 lt!2075000 lt!2075257) call!350274)))

(declare-fun lt!2075423 () Unit!149127)

(declare-fun lt!2075410 () Unit!149127)

(assert (=> d!1614871 (= lt!2075423 lt!2075410)))

(declare-fun lt!2075430 () List!58031)

(assert (=> d!1614871 (= call!350274 lt!2075430)))

(assert (=> d!1614871 (= lt!2075410 (lemmaSamePrefixThenSameSuffix!2566 lt!2075257 call!350274 lt!2075257 lt!2075430 lt!2075000))))

(assert (=> d!1614871 (= lt!2075430 (getSuffix!3152 lt!2075000 lt!2075257))))

(declare-fun lt!2075419 () Unit!149127)

(declare-fun lt!2075431 () Unit!149127)

(assert (=> d!1614871 (= lt!2075419 lt!2075431)))

(assert (=> d!1614871 (isPrefix!5362 lt!2075257 (++!12657 lt!2075257 call!350274))))

(assert (=> d!1614871 (= lt!2075431 (lemmaConcatTwoListThenFirstIsPrefix!3460 lt!2075257 call!350274))))

(assert (=> d!1614871 (validRegex!6106 call!350269)))

(assert (=> d!1614871 (= (findLongestMatchInner!1998 call!350269 lt!2075257 (+ (size!38500 Nil!57907) 1) call!350274 lt!2075000 (size!38500 lt!2075000)) lt!2075425)))

(declare-fun b!5015568 () Bool)

(assert (=> b!5015568 (= e!3133355 (tuple2!63083 lt!2075257 call!350274))))

(declare-fun bm!350318 () Bool)

(assert (=> bm!350318 (= call!350320 (lemmaIsPrefixRefl!3635 lt!2075000 lt!2075000))))

(declare-fun b!5015576 () Bool)

(declare-fun Unit!149137 () Unit!149127)

(assert (=> b!5015576 (= e!3133352 Unit!149137)))

(assert (= (and d!1614871 c!856893) b!5015566))

(assert (= (and d!1614871 (not c!856893)) b!5015575))

(assert (= (and b!5015575 c!856892) b!5015573))

(assert (= (and b!5015575 (not c!856892)) b!5015571))

(assert (= (and b!5015573 c!856891) b!5015574))

(assert (= (and b!5015573 (not c!856891)) b!5015563))

(assert (= (and b!5015571 c!856894) b!5015570))

(assert (= (and b!5015571 (not c!856894)) b!5015576))

(assert (= (and b!5015571 c!856896) b!5015572))

(assert (= (and b!5015571 (not c!856896)) b!5015565))

(assert (= (and b!5015572 c!856895) b!5015568))

(assert (= (and b!5015572 (not c!856895)) b!5015564))

(assert (= (or b!5015572 b!5015565) bm!350312))

(assert (= (or b!5015572 b!5015565) bm!350311))

(assert (= (or b!5015572 b!5015565) bm!350313))

(assert (= (or b!5015572 b!5015565) bm!350314))

(assert (= (or b!5015573 b!5015571) bm!350317))

(assert (= (or b!5015573 b!5015570) bm!350315))

(assert (= (or b!5015573 b!5015570) bm!350316))

(assert (= (or b!5015573 b!5015570) bm!350318))

(assert (= (and d!1614871 res!2138757) b!5015569))

(assert (= (and b!5015569 (not res!2138756)) b!5015567))

(declare-fun m!6050338 () Bool)

(assert (=> bm!350311 m!6050338))

(declare-fun m!6050340 () Bool)

(assert (=> b!5015569 m!6050340))

(declare-fun m!6050342 () Bool)

(assert (=> d!1614871 m!6050342))

(declare-fun m!6050344 () Bool)

(assert (=> d!1614871 m!6050344))

(declare-fun m!6050346 () Bool)

(assert (=> d!1614871 m!6050346))

(declare-fun m!6050348 () Bool)

(assert (=> d!1614871 m!6050348))

(assert (=> d!1614871 m!6050346))

(declare-fun m!6050350 () Bool)

(assert (=> d!1614871 m!6050350))

(declare-fun m!6050352 () Bool)

(assert (=> d!1614871 m!6050352))

(declare-fun m!6050354 () Bool)

(assert (=> d!1614871 m!6050354))

(declare-fun m!6050356 () Bool)

(assert (=> d!1614871 m!6050356))

(declare-fun m!6050358 () Bool)

(assert (=> bm!350317 m!6050358))

(declare-fun m!6050360 () Bool)

(assert (=> bm!350313 m!6050360))

(assert (=> bm!350314 m!6049502))

(declare-fun m!6050362 () Bool)

(assert (=> bm!350314 m!6050362))

(declare-fun m!6050364 () Bool)

(assert (=> b!5015571 m!6050364))

(assert (=> b!5015571 m!6050356))

(declare-fun m!6050366 () Bool)

(assert (=> b!5015571 m!6050366))

(assert (=> b!5015571 m!6050338))

(declare-fun m!6050368 () Bool)

(assert (=> b!5015571 m!6050368))

(declare-fun m!6050370 () Bool)

(assert (=> b!5015571 m!6050370))

(declare-fun m!6050372 () Bool)

(assert (=> b!5015571 m!6050372))

(declare-fun m!6050374 () Bool)

(assert (=> b!5015571 m!6050374))

(declare-fun m!6050376 () Bool)

(assert (=> b!5015571 m!6050376))

(declare-fun m!6050378 () Bool)

(assert (=> b!5015571 m!6050378))

(assert (=> b!5015571 m!6050374))

(declare-fun m!6050380 () Bool)

(assert (=> b!5015571 m!6050380))

(declare-fun m!6050382 () Bool)

(assert (=> b!5015571 m!6050382))

(assert (=> b!5015571 m!6050372))

(declare-fun m!6050384 () Bool)

(assert (=> b!5015571 m!6050384))

(assert (=> b!5015571 m!6050356))

(assert (=> b!5015571 m!6049502))

(assert (=> bm!350312 m!6050370))

(assert (=> bm!350315 m!6049894))

(assert (=> bm!350318 m!6049896))

(declare-fun m!6050386 () Bool)

(assert (=> b!5015567 m!6050386))

(assert (=> b!5015567 m!6050364))

(declare-fun m!6050388 () Bool)

(assert (=> b!5015572 m!6050388))

(declare-fun m!6050390 () Bool)

(assert (=> bm!350316 m!6050390))

(assert (=> bm!350267 d!1614871))

(declare-fun b!5015577 () Bool)

(declare-fun res!2138758 () Bool)

(declare-fun e!3133361 () Bool)

(assert (=> b!5015577 (=> (not res!2138758) (not e!3133361))))

(declare-fun call!350324 () Bool)

(assert (=> b!5015577 (= res!2138758 call!350324)))

(declare-fun e!3133358 () Bool)

(assert (=> b!5015577 (= e!3133358 e!3133361)))

(declare-fun b!5015578 () Bool)

(declare-fun e!3133363 () Bool)

(assert (=> b!5015578 (= e!3133363 call!350324)))

(declare-fun b!5015579 () Bool)

(declare-fun e!3133359 () Bool)

(declare-fun e!3133357 () Bool)

(assert (=> b!5015579 (= e!3133359 e!3133357)))

(declare-fun res!2138759 () Bool)

(assert (=> b!5015579 (= res!2138759 (not (nullable!4696 (reg!14138 (ite c!856673 (regTwo!28131 r!12727) (regOne!28130 r!12727))))))))

(assert (=> b!5015579 (=> (not res!2138759) (not e!3133357))))

(declare-fun b!5015581 () Bool)

(declare-fun res!2138760 () Bool)

(declare-fun e!3133360 () Bool)

(assert (=> b!5015581 (=> res!2138760 e!3133360)))

(assert (=> b!5015581 (= res!2138760 (not ((_ is Concat!22602) (ite c!856673 (regTwo!28131 r!12727) (regOne!28130 r!12727)))))))

(assert (=> b!5015581 (= e!3133358 e!3133360)))

(declare-fun b!5015582 () Bool)

(declare-fun call!350326 () Bool)

(assert (=> b!5015582 (= e!3133357 call!350326)))

(declare-fun b!5015583 () Bool)

(assert (=> b!5015583 (= e!3133360 e!3133363)))

(declare-fun res!2138761 () Bool)

(assert (=> b!5015583 (=> (not res!2138761) (not e!3133363))))

(declare-fun call!350325 () Bool)

(assert (=> b!5015583 (= res!2138761 call!350325)))

(declare-fun b!5015584 () Bool)

(assert (=> b!5015584 (= e!3133361 call!350325)))

(declare-fun c!856898 () Bool)

(declare-fun c!856897 () Bool)

(declare-fun bm!350319 () Bool)

(assert (=> bm!350319 (= call!350326 (validRegex!6106 (ite c!856897 (reg!14138 (ite c!856673 (regTwo!28131 r!12727) (regOne!28130 r!12727))) (ite c!856898 (regOne!28131 (ite c!856673 (regTwo!28131 r!12727) (regOne!28130 r!12727))) (regTwo!28130 (ite c!856673 (regTwo!28131 r!12727) (regOne!28130 r!12727)))))))))

(declare-fun b!5015585 () Bool)

(declare-fun e!3133362 () Bool)

(assert (=> b!5015585 (= e!3133362 e!3133359)))

(assert (=> b!5015585 (= c!856897 ((_ is Star!13809) (ite c!856673 (regTwo!28131 r!12727) (regOne!28130 r!12727))))))

(declare-fun bm!350320 () Bool)

(assert (=> bm!350320 (= call!350324 call!350326)))

(declare-fun bm!350321 () Bool)

(assert (=> bm!350321 (= call!350325 (validRegex!6106 (ite c!856898 (regTwo!28131 (ite c!856673 (regTwo!28131 r!12727) (regOne!28130 r!12727))) (regOne!28130 (ite c!856673 (regTwo!28131 r!12727) (regOne!28130 r!12727))))))))

(declare-fun b!5015580 () Bool)

(assert (=> b!5015580 (= e!3133359 e!3133358)))

(assert (=> b!5015580 (= c!856898 ((_ is Union!13809) (ite c!856673 (regTwo!28131 r!12727) (regOne!28130 r!12727))))))

(declare-fun d!1614873 () Bool)

(declare-fun res!2138762 () Bool)

(assert (=> d!1614873 (=> res!2138762 e!3133362)))

(assert (=> d!1614873 (= res!2138762 ((_ is ElementMatch!13809) (ite c!856673 (regTwo!28131 r!12727) (regOne!28130 r!12727))))))

(assert (=> d!1614873 (= (validRegex!6106 (ite c!856673 (regTwo!28131 r!12727) (regOne!28130 r!12727))) e!3133362)))

(assert (= (and d!1614873 (not res!2138762)) b!5015585))

(assert (= (and b!5015585 c!856897) b!5015579))

(assert (= (and b!5015585 (not c!856897)) b!5015580))

(assert (= (and b!5015579 res!2138759) b!5015582))

(assert (= (and b!5015580 c!856898) b!5015577))

(assert (= (and b!5015580 (not c!856898)) b!5015581))

(assert (= (and b!5015577 res!2138758) b!5015584))

(assert (= (and b!5015581 (not res!2138760)) b!5015583))

(assert (= (and b!5015583 res!2138761) b!5015578))

(assert (= (or b!5015584 b!5015583) bm!350321))

(assert (= (or b!5015577 b!5015578) bm!350320))

(assert (= (or b!5015582 bm!350320) bm!350319))

(declare-fun m!6050392 () Bool)

(assert (=> b!5015579 m!6050392))

(declare-fun m!6050394 () Bool)

(assert (=> bm!350319 m!6050394))

(declare-fun m!6050396 () Bool)

(assert (=> bm!350321 m!6050396))

(assert (=> bm!350223 d!1614873))

(declare-fun d!1614875 () Bool)

(assert (=> d!1614875 (= lt!2075000 Nil!57907)))

(declare-fun lt!2075438 () Unit!149127)

(declare-fun choose!37107 (List!58031 List!58031 List!58031) Unit!149127)

(assert (=> d!1614875 (= lt!2075438 (choose!37107 lt!2075000 Nil!57907 lt!2075000))))

(assert (=> d!1614875 (isPrefix!5362 lt!2075000 lt!2075000)))

(assert (=> d!1614875 (= (lemmaIsPrefixSameLengthThenSameList!1283 lt!2075000 Nil!57907 lt!2075000) lt!2075438)))

(declare-fun bs!1186924 () Bool)

(assert (= bs!1186924 d!1614875))

(declare-fun m!6050398 () Bool)

(assert (=> bs!1186924 m!6050398))

(assert (=> bs!1186924 m!6049894))

(assert (=> bm!350269 d!1614875))

(assert (=> b!5015293 d!1614863))

(declare-fun b!5015587 () Bool)

(declare-fun e!3133365 () Int)

(declare-fun e!3133367 () Int)

(assert (=> b!5015587 (= e!3133365 e!3133367)))

(declare-fun c!856901 () Bool)

(declare-fun call!350327 () Int)

(assert (=> b!5015587 (= c!856901 (>= (- (size!38500 lt!2075001) (size!38500 lt!2075000)) call!350327))))

(declare-fun b!5015588 () Bool)

(assert (=> b!5015588 (= e!3133367 0)))

(declare-fun b!5015589 () Bool)

(assert (=> b!5015589 (= e!3133367 (- call!350327 (- (size!38500 lt!2075001) (size!38500 lt!2075000))))))

(declare-fun b!5015590 () Bool)

(assert (=> b!5015590 (= e!3133365 call!350327)))

(declare-fun b!5015591 () Bool)

(declare-fun e!3133366 () Bool)

(declare-fun lt!2075439 () List!58031)

(assert (=> b!5015591 (= e!3133366 (= (size!38500 lt!2075439) e!3133365))))

(declare-fun c!856899 () Bool)

(assert (=> b!5015591 (= c!856899 (<= (- (size!38500 lt!2075001) (size!38500 lt!2075000)) 0))))

(declare-fun b!5015592 () Bool)

(declare-fun e!3133364 () List!58031)

(declare-fun e!3133368 () List!58031)

(assert (=> b!5015592 (= e!3133364 e!3133368)))

(declare-fun c!856902 () Bool)

(assert (=> b!5015592 (= c!856902 (<= (- (size!38500 lt!2075001) (size!38500 lt!2075000)) 0))))

(declare-fun b!5015593 () Bool)

(assert (=> b!5015593 (= e!3133368 (drop!2472 (t!370399 lt!2075001) (- (- (size!38500 lt!2075001) (size!38500 lt!2075000)) 1)))))

(declare-fun d!1614877 () Bool)

(assert (=> d!1614877 e!3133366))

(declare-fun res!2138763 () Bool)

(assert (=> d!1614877 (=> (not res!2138763) (not e!3133366))))

(assert (=> d!1614877 (= res!2138763 (= ((_ map implies) (content!10267 lt!2075439) (content!10267 lt!2075001)) ((as const (InoxSet C!27868)) true)))))

(assert (=> d!1614877 (= lt!2075439 e!3133364)))

(declare-fun c!856900 () Bool)

(assert (=> d!1614877 (= c!856900 ((_ is Nil!57907) lt!2075001))))

(assert (=> d!1614877 (= (drop!2472 lt!2075001 (- (size!38500 lt!2075001) (size!38500 lt!2075000))) lt!2075439)))

(declare-fun b!5015586 () Bool)

(assert (=> b!5015586 (= e!3133368 lt!2075001)))

(declare-fun b!5015594 () Bool)

(assert (=> b!5015594 (= e!3133364 Nil!57907)))

(declare-fun bm!350322 () Bool)

(assert (=> bm!350322 (= call!350327 (size!38500 lt!2075001))))

(assert (= (and d!1614877 c!856900) b!5015594))

(assert (= (and d!1614877 (not c!856900)) b!5015592))

(assert (= (and b!5015592 c!856902) b!5015586))

(assert (= (and b!5015592 (not c!856902)) b!5015593))

(assert (= (and d!1614877 res!2138763) b!5015591))

(assert (= (and b!5015591 c!856899) b!5015590))

(assert (= (and b!5015591 (not c!856899)) b!5015587))

(assert (= (and b!5015587 c!856901) b!5015588))

(assert (= (and b!5015587 (not c!856901)) b!5015589))

(assert (= (or b!5015590 b!5015587 b!5015589) bm!350322))

(declare-fun m!6050400 () Bool)

(assert (=> b!5015591 m!6050400))

(declare-fun m!6050402 () Bool)

(assert (=> b!5015593 m!6050402))

(declare-fun m!6050404 () Bool)

(assert (=> d!1614877 m!6050404))

(assert (=> d!1614877 m!6050012))

(assert (=> bm!350322 m!6049582))

(assert (=> d!1614603 d!1614877))

(assert (=> d!1614603 d!1614807))

(assert (=> d!1614603 d!1614655))

(assert (=> d!1614781 d!1614609))

(assert (=> d!1614781 d!1614611))

(declare-fun d!1614879 () Bool)

(assert (=> d!1614879 (= (isEmpty!31376 (_1!34844 lt!2075269)) ((_ is Nil!57907) (_1!34844 lt!2075269)))))

(assert (=> b!5015013 d!1614879))

(assert (=> b!5015305 d!1614863))

(assert (=> b!5015206 d!1614861))

(declare-fun d!1614881 () Bool)

(declare-fun res!2138770 () Bool)

(declare-fun e!3133371 () Bool)

(assert (=> d!1614881 (=> (not res!2138770) (not e!3133371))))

(assert (=> d!1614881 (= res!2138770 (= (csize!30886 (c!856663 input!5597)) (+ (size!38502 (left!42334 (c!856663 input!5597))) (size!38502 (right!42664 (c!856663 input!5597))))))))

(assert (=> d!1614881 (= (inv!76119 (c!856663 input!5597)) e!3133371)))

(declare-fun b!5015601 () Bool)

(declare-fun res!2138771 () Bool)

(assert (=> b!5015601 (=> (not res!2138771) (not e!3133371))))

(assert (=> b!5015601 (= res!2138771 (and (not (= (left!42334 (c!856663 input!5597)) Empty!15328)) (not (= (right!42664 (c!856663 input!5597)) Empty!15328))))))

(declare-fun b!5015602 () Bool)

(declare-fun res!2138772 () Bool)

(assert (=> b!5015602 (=> (not res!2138772) (not e!3133371))))

(declare-fun max!0 (Int Int) Int)

(declare-fun height!2037 (Conc!15328) Int)

(assert (=> b!5015602 (= res!2138772 (= (cheight!15539 (c!856663 input!5597)) (+ (max!0 (height!2037 (left!42334 (c!856663 input!5597))) (height!2037 (right!42664 (c!856663 input!5597)))) 1)))))

(declare-fun b!5015603 () Bool)

(assert (=> b!5015603 (= e!3133371 (<= 0 (cheight!15539 (c!856663 input!5597))))))

(assert (= (and d!1614881 res!2138770) b!5015601))

(assert (= (and b!5015601 res!2138771) b!5015602))

(assert (= (and b!5015602 res!2138772) b!5015603))

(declare-fun m!6050406 () Bool)

(assert (=> d!1614881 m!6050406))

(declare-fun m!6050408 () Bool)

(assert (=> d!1614881 m!6050408))

(declare-fun m!6050410 () Bool)

(assert (=> b!5015602 m!6050410))

(declare-fun m!6050412 () Bool)

(assert (=> b!5015602 m!6050412))

(assert (=> b!5015602 m!6050410))

(assert (=> b!5015602 m!6050412))

(declare-fun m!6050414 () Bool)

(assert (=> b!5015602 m!6050414))

(assert (=> b!5014751 d!1614881))

(assert (=> d!1614733 d!1614735))

(assert (=> d!1614733 d!1614651))

(declare-fun d!1614883 () Bool)

(assert (=> d!1614883 (= (matchR!6773 r!12727 lt!2075006) (matchZipper!577 z!4183 lt!2075006))))

(assert (=> d!1614883 true))

(declare-fun _$44!1364 () Unit!149127)

(assert (=> d!1614883 (= (choose!37103 z!4183 lt!2075003 r!12727 lt!2075006) _$44!1364)))

(declare-fun bs!1186925 () Bool)

(assert (= bs!1186925 d!1614883))

(assert (=> bs!1186925 m!6049558))

(assert (=> bs!1186925 m!6049494))

(assert (=> d!1614733 d!1614883))

(assert (=> d!1614733 d!1614611))

(declare-fun b!5015606 () Bool)

(declare-fun e!3133374 () Bool)

(assert (=> b!5015606 (= e!3133374 (isPrefix!5362 (tail!9878 (tail!9878 lt!2075006)) (tail!9878 (tail!9878 lt!2074991))))))

(declare-fun b!5015605 () Bool)

(declare-fun res!2138776 () Bool)

(assert (=> b!5015605 (=> (not res!2138776) (not e!3133374))))

(assert (=> b!5015605 (= res!2138776 (= (head!10745 (tail!9878 lt!2075006)) (head!10745 (tail!9878 lt!2074991))))))

(declare-fun b!5015607 () Bool)

(declare-fun e!3133373 () Bool)

(assert (=> b!5015607 (= e!3133373 (>= (size!38500 (tail!9878 lt!2074991)) (size!38500 (tail!9878 lt!2075006))))))

(declare-fun b!5015604 () Bool)

(declare-fun e!3133372 () Bool)

(assert (=> b!5015604 (= e!3133372 e!3133374)))

(declare-fun res!2138775 () Bool)

(assert (=> b!5015604 (=> (not res!2138775) (not e!3133374))))

(assert (=> b!5015604 (= res!2138775 (not ((_ is Nil!57907) (tail!9878 lt!2074991))))))

(declare-fun d!1614885 () Bool)

(assert (=> d!1614885 e!3133373))

(declare-fun res!2138773 () Bool)

(assert (=> d!1614885 (=> res!2138773 e!3133373)))

(declare-fun lt!2075440 () Bool)

(assert (=> d!1614885 (= res!2138773 (not lt!2075440))))

(assert (=> d!1614885 (= lt!2075440 e!3133372)))

(declare-fun res!2138774 () Bool)

(assert (=> d!1614885 (=> res!2138774 e!3133372)))

(assert (=> d!1614885 (= res!2138774 ((_ is Nil!57907) (tail!9878 lt!2075006)))))

(assert (=> d!1614885 (= (isPrefix!5362 (tail!9878 lt!2075006) (tail!9878 lt!2074991)) lt!2075440)))

(assert (= (and d!1614885 (not res!2138774)) b!5015604))

(assert (= (and b!5015604 res!2138775) b!5015605))

(assert (= (and b!5015605 res!2138776) b!5015606))

(assert (= (and d!1614885 (not res!2138773)) b!5015607))

(assert (=> b!5015606 m!6049690))

(declare-fun m!6050416 () Bool)

(assert (=> b!5015606 m!6050416))

(assert (=> b!5015606 m!6049692))

(declare-fun m!6050418 () Bool)

(assert (=> b!5015606 m!6050418))

(assert (=> b!5015606 m!6050416))

(assert (=> b!5015606 m!6050418))

(declare-fun m!6050420 () Bool)

(assert (=> b!5015606 m!6050420))

(assert (=> b!5015605 m!6049690))

(declare-fun m!6050422 () Bool)

(assert (=> b!5015605 m!6050422))

(assert (=> b!5015605 m!6049692))

(declare-fun m!6050424 () Bool)

(assert (=> b!5015605 m!6050424))

(assert (=> b!5015607 m!6049692))

(declare-fun m!6050426 () Bool)

(assert (=> b!5015607 m!6050426))

(assert (=> b!5015607 m!6049690))

(declare-fun m!6050428 () Bool)

(assert (=> b!5015607 m!6050428))

(assert (=> b!5014824 d!1614885))

(assert (=> b!5014824 d!1614835))

(declare-fun d!1614887 () Bool)

(assert (=> d!1614887 (= (tail!9878 lt!2074991) (t!370399 lt!2074991))))

(assert (=> b!5014824 d!1614887))

(assert (=> b!5015210 d!1614833))

(assert (=> b!5015210 d!1614835))

(assert (=> d!1614681 d!1614839))

(assert (=> d!1614681 d!1614637))

(declare-fun d!1614889 () Bool)

(declare-fun e!3133377 () Bool)

(assert (=> d!1614889 e!3133377))

(declare-fun res!2138779 () Bool)

(assert (=> d!1614889 (=> res!2138779 e!3133377)))

(assert (=> d!1614889 (= res!2138779 (= (findLongestMatchInnerZipperFastV2!149 z!4183 lt!2074995 totalInput!1012 (size!38501 totalInput!1012)) 0))))

(assert (=> d!1614889 true))

(declare-fun _$81!108 () Unit!149127)

(assert (=> d!1614889 (= (choose!37099 z!4183 lt!2074995 totalInput!1012) _$81!108)))

(declare-fun b!5015610 () Bool)

(assert (=> b!5015610 (= e!3133377 (matchZipper!577 z!4183 (take!668 (drop!2472 (list!18650 totalInput!1012) lt!2074995) (findLongestMatchInnerZipperFastV2!149 z!4183 lt!2074995 totalInput!1012 (size!38501 totalInput!1012)))))))

(assert (= (and d!1614889 (not res!2138779)) b!5015610))

(assert (=> d!1614889 m!6049538))

(assert (=> d!1614889 m!6049538))

(assert (=> d!1614889 m!6049958))

(assert (=> b!5015610 m!6049962))

(assert (=> b!5015610 m!6049964))

(assert (=> b!5015610 m!6049966))

(assert (=> b!5015610 m!6049958))

(assert (=> b!5015610 m!6049962))

(assert (=> b!5015610 m!6049574))

(assert (=> b!5015610 m!6049966))

(assert (=> b!5015610 m!6049538))

(assert (=> b!5015610 m!6049958))

(assert (=> b!5015610 m!6049574))

(assert (=> b!5015610 m!6049538))

(assert (=> d!1614681 d!1614889))

(declare-fun d!1614891 () Bool)

(declare-fun c!856903 () Bool)

(assert (=> d!1614891 (= c!856903 ((_ is Nil!57907) lt!2075310))))

(declare-fun e!3133378 () (InoxSet C!27868))

(assert (=> d!1614891 (= (content!10267 lt!2075310) e!3133378)))

(declare-fun b!5015611 () Bool)

(assert (=> b!5015611 (= e!3133378 ((as const (Array C!27868 Bool)) false))))

(declare-fun b!5015612 () Bool)

(assert (=> b!5015612 (= e!3133378 ((_ map or) (store ((as const (Array C!27868 Bool)) false) (h!64355 lt!2075310) true) (content!10267 (t!370399 lt!2075310))))))

(assert (= (and d!1614891 c!856903) b!5015611))

(assert (= (and d!1614891 (not c!856903)) b!5015612))

(declare-fun m!6050430 () Bool)

(assert (=> b!5015612 m!6050430))

(declare-fun m!6050432 () Bool)

(assert (=> b!5015612 m!6050432))

(assert (=> d!1614721 d!1614891))

(declare-fun d!1614893 () Bool)

(declare-fun c!856904 () Bool)

(assert (=> d!1614893 (= c!856904 ((_ is Nil!57907) (drop!2472 lt!2075001 lt!2074995)))))

(declare-fun e!3133379 () (InoxSet C!27868))

(assert (=> d!1614893 (= (content!10267 (drop!2472 lt!2075001 lt!2074995)) e!3133379)))

(declare-fun b!5015613 () Bool)

(assert (=> b!5015613 (= e!3133379 ((as const (Array C!27868 Bool)) false))))

(declare-fun b!5015614 () Bool)

(assert (=> b!5015614 (= e!3133379 ((_ map or) (store ((as const (Array C!27868 Bool)) false) (h!64355 (drop!2472 lt!2075001 lt!2074995)) true) (content!10267 (t!370399 (drop!2472 lt!2075001 lt!2074995)))))))

(assert (= (and d!1614893 c!856904) b!5015613))

(assert (= (and d!1614893 (not c!856904)) b!5015614))

(declare-fun m!6050434 () Bool)

(assert (=> b!5015614 m!6050434))

(declare-fun m!6050436 () Bool)

(assert (=> b!5015614 m!6050436))

(assert (=> d!1614721 d!1614893))

(assert (=> b!5015292 d!1614735))

(declare-fun d!1614895 () Bool)

(assert (=> d!1614895 (= (head!10745 (take!668 lt!2075001 lt!2074995)) (h!64355 (take!668 lt!2075001 lt!2074995)))))

(assert (=> b!5015089 d!1614895))

(declare-fun d!1614897 () Bool)

(assert (=> d!1614897 (= (head!10745 lt!2075001) (h!64355 lt!2075001))))

(assert (=> b!5015089 d!1614897))

(assert (=> b!5014850 d!1614637))

(declare-fun b!5015615 () Bool)

(declare-fun e!3133386 () Bool)

(assert (=> b!5015615 (= e!3133386 (= (head!10745 (tail!9878 lt!2075006)) (c!856664 (derivativeStep!3987 r!12727 (head!10745 lt!2075006)))))))

(declare-fun b!5015616 () Bool)

(declare-fun e!3133384 () Bool)

(declare-fun lt!2075441 () Bool)

(declare-fun call!350328 () Bool)

(assert (=> b!5015616 (= e!3133384 (= lt!2075441 call!350328))))

(declare-fun b!5015617 () Bool)

(declare-fun e!3133382 () Bool)

(declare-fun e!3133380 () Bool)

(assert (=> b!5015617 (= e!3133382 e!3133380)))

(declare-fun res!2138781 () Bool)

(assert (=> b!5015617 (=> (not res!2138781) (not e!3133380))))

(assert (=> b!5015617 (= res!2138781 (not lt!2075441))))

(declare-fun b!5015618 () Bool)

(declare-fun e!3133381 () Bool)

(assert (=> b!5015618 (= e!3133381 (matchR!6773 (derivativeStep!3987 (derivativeStep!3987 r!12727 (head!10745 lt!2075006)) (head!10745 (tail!9878 lt!2075006))) (tail!9878 (tail!9878 lt!2075006))))))

(declare-fun bm!350323 () Bool)

(assert (=> bm!350323 (= call!350328 (isEmpty!31376 (tail!9878 lt!2075006)))))

(declare-fun b!5015619 () Bool)

(declare-fun e!3133383 () Bool)

(assert (=> b!5015619 (= e!3133380 e!3133383)))

(declare-fun res!2138783 () Bool)

(assert (=> b!5015619 (=> res!2138783 e!3133383)))

(assert (=> b!5015619 (= res!2138783 call!350328)))

(declare-fun b!5015620 () Bool)

(declare-fun e!3133385 () Bool)

(assert (=> b!5015620 (= e!3133384 e!3133385)))

(declare-fun c!856905 () Bool)

(assert (=> b!5015620 (= c!856905 ((_ is EmptyLang!13809) (derivativeStep!3987 r!12727 (head!10745 lt!2075006))))))

(declare-fun d!1614899 () Bool)

(assert (=> d!1614899 e!3133384))

(declare-fun c!856906 () Bool)

(assert (=> d!1614899 (= c!856906 ((_ is EmptyExpr!13809) (derivativeStep!3987 r!12727 (head!10745 lt!2075006))))))

(assert (=> d!1614899 (= lt!2075441 e!3133381)))

(declare-fun c!856907 () Bool)

(assert (=> d!1614899 (= c!856907 (isEmpty!31376 (tail!9878 lt!2075006)))))

(assert (=> d!1614899 (validRegex!6106 (derivativeStep!3987 r!12727 (head!10745 lt!2075006)))))

(assert (=> d!1614899 (= (matchR!6773 (derivativeStep!3987 r!12727 (head!10745 lt!2075006)) (tail!9878 lt!2075006)) lt!2075441)))

(declare-fun b!5015621 () Bool)

(assert (=> b!5015621 (= e!3133381 (nullable!4696 (derivativeStep!3987 r!12727 (head!10745 lt!2075006))))))

(declare-fun b!5015622 () Bool)

(declare-fun res!2138785 () Bool)

(assert (=> b!5015622 (=> res!2138785 e!3133382)))

(assert (=> b!5015622 (= res!2138785 (not ((_ is ElementMatch!13809) (derivativeStep!3987 r!12727 (head!10745 lt!2075006)))))))

(assert (=> b!5015622 (= e!3133385 e!3133382)))

(declare-fun b!5015623 () Bool)

(declare-fun res!2138782 () Bool)

(assert (=> b!5015623 (=> res!2138782 e!3133382)))

(assert (=> b!5015623 (= res!2138782 e!3133386)))

(declare-fun res!2138787 () Bool)

(assert (=> b!5015623 (=> (not res!2138787) (not e!3133386))))

(assert (=> b!5015623 (= res!2138787 lt!2075441)))

(declare-fun b!5015624 () Bool)

(declare-fun res!2138786 () Bool)

(assert (=> b!5015624 (=> res!2138786 e!3133383)))

(assert (=> b!5015624 (= res!2138786 (not (isEmpty!31376 (tail!9878 (tail!9878 lt!2075006)))))))

(declare-fun b!5015625 () Bool)

(declare-fun res!2138784 () Bool)

(assert (=> b!5015625 (=> (not res!2138784) (not e!3133386))))

(assert (=> b!5015625 (= res!2138784 (isEmpty!31376 (tail!9878 (tail!9878 lt!2075006))))))

(declare-fun b!5015626 () Bool)

(assert (=> b!5015626 (= e!3133385 (not lt!2075441))))

(declare-fun b!5015627 () Bool)

(assert (=> b!5015627 (= e!3133383 (not (= (head!10745 (tail!9878 lt!2075006)) (c!856664 (derivativeStep!3987 r!12727 (head!10745 lt!2075006))))))))

(declare-fun b!5015628 () Bool)

(declare-fun res!2138780 () Bool)

(assert (=> b!5015628 (=> (not res!2138780) (not e!3133386))))

(assert (=> b!5015628 (= res!2138780 (not call!350328))))

(assert (= (and d!1614899 c!856907) b!5015621))

(assert (= (and d!1614899 (not c!856907)) b!5015618))

(assert (= (and d!1614899 c!856906) b!5015616))

(assert (= (and d!1614899 (not c!856906)) b!5015620))

(assert (= (and b!5015620 c!856905) b!5015626))

(assert (= (and b!5015620 (not c!856905)) b!5015622))

(assert (= (and b!5015622 (not res!2138785)) b!5015623))

(assert (= (and b!5015623 res!2138787) b!5015628))

(assert (= (and b!5015628 res!2138780) b!5015625))

(assert (= (and b!5015625 res!2138784) b!5015615))

(assert (= (and b!5015623 (not res!2138782)) b!5015617))

(assert (= (and b!5015617 res!2138781) b!5015619))

(assert (= (and b!5015619 (not res!2138783)) b!5015624))

(assert (= (and b!5015624 (not res!2138786)) b!5015627))

(assert (= (or b!5015616 b!5015619 b!5015628) bm!350323))

(assert (=> b!5015621 m!6050076))

(declare-fun m!6050438 () Bool)

(assert (=> b!5015621 m!6050438))

(assert (=> b!5015627 m!6049690))

(assert (=> b!5015627 m!6050422))

(assert (=> b!5015625 m!6049690))

(assert (=> b!5015625 m!6050416))

(assert (=> b!5015625 m!6050416))

(declare-fun m!6050440 () Bool)

(assert (=> b!5015625 m!6050440))

(assert (=> bm!350323 m!6049690))

(assert (=> bm!350323 m!6050074))

(assert (=> b!5015615 m!6049690))

(assert (=> b!5015615 m!6050422))

(assert (=> b!5015624 m!6049690))

(assert (=> b!5015624 m!6050416))

(assert (=> b!5015624 m!6050416))

(assert (=> b!5015624 m!6050440))

(assert (=> b!5015618 m!6049690))

(assert (=> b!5015618 m!6050422))

(assert (=> b!5015618 m!6050076))

(assert (=> b!5015618 m!6050422))

(declare-fun m!6050442 () Bool)

(assert (=> b!5015618 m!6050442))

(assert (=> b!5015618 m!6049690))

(assert (=> b!5015618 m!6050416))

(assert (=> b!5015618 m!6050442))

(assert (=> b!5015618 m!6050416))

(declare-fun m!6050444 () Bool)

(assert (=> b!5015618 m!6050444))

(assert (=> d!1614899 m!6049690))

(assert (=> d!1614899 m!6050074))

(assert (=> d!1614899 m!6050076))

(declare-fun m!6050446 () Bool)

(assert (=> d!1614899 m!6050446))

(assert (=> b!5015203 d!1614899))

(declare-fun bm!350324 () Bool)

(declare-fun call!350330 () Regex!13809)

(declare-fun call!350332 () Regex!13809)

(assert (=> bm!350324 (= call!350330 call!350332)))

(declare-fun b!5015629 () Bool)

(declare-fun e!3133387 () Regex!13809)

(declare-fun e!3133389 () Regex!13809)

(assert (=> b!5015629 (= e!3133387 e!3133389)))

(declare-fun c!856912 () Bool)

(assert (=> b!5015629 (= c!856912 ((_ is Star!13809) r!12727))))

(declare-fun b!5015630 () Bool)

(declare-fun e!3133391 () Regex!13809)

(assert (=> b!5015630 (= e!3133391 (ite (= (head!10745 lt!2075006) (c!856664 r!12727)) EmptyExpr!13809 EmptyLang!13809))))

(declare-fun d!1614901 () Bool)

(declare-fun lt!2075442 () Regex!13809)

(assert (=> d!1614901 (validRegex!6106 lt!2075442)))

(declare-fun e!3133388 () Regex!13809)

(assert (=> d!1614901 (= lt!2075442 e!3133388)))

(declare-fun c!856910 () Bool)

(assert (=> d!1614901 (= c!856910 (or ((_ is EmptyExpr!13809) r!12727) ((_ is EmptyLang!13809) r!12727)))))

(assert (=> d!1614901 (validRegex!6106 r!12727)))

(assert (=> d!1614901 (= (derivativeStep!3987 r!12727 (head!10745 lt!2075006)) lt!2075442)))

(declare-fun b!5015631 () Bool)

(assert (=> b!5015631 (= e!3133388 e!3133391)))

(declare-fun c!856908 () Bool)

(assert (=> b!5015631 (= c!856908 ((_ is ElementMatch!13809) r!12727))))

(declare-fun e!3133390 () Regex!13809)

(declare-fun b!5015632 () Bool)

(declare-fun call!350329 () Regex!13809)

(declare-fun call!350331 () Regex!13809)

(assert (=> b!5015632 (= e!3133390 (Union!13809 (Concat!22602 call!350331 (regTwo!28130 r!12727)) call!350329))))

(declare-fun b!5015633 () Bool)

(assert (=> b!5015633 (= e!3133387 (Union!13809 call!350332 call!350331))))

(declare-fun c!856911 () Bool)

(declare-fun bm!350325 () Bool)

(declare-fun c!856909 () Bool)

(assert (=> bm!350325 (= call!350332 (derivativeStep!3987 (ite c!856911 (regOne!28131 r!12727) (ite c!856912 (reg!14138 r!12727) (ite c!856909 (regTwo!28130 r!12727) (regOne!28130 r!12727)))) (head!10745 lt!2075006)))))

(declare-fun b!5015634 () Bool)

(assert (=> b!5015634 (= e!3133389 (Concat!22602 call!350330 r!12727))))

(declare-fun b!5015635 () Bool)

(assert (=> b!5015635 (= e!3133390 (Union!13809 (Concat!22602 call!350329 (regTwo!28130 r!12727)) EmptyLang!13809))))

(declare-fun b!5015636 () Bool)

(assert (=> b!5015636 (= c!856911 ((_ is Union!13809) r!12727))))

(assert (=> b!5015636 (= e!3133391 e!3133387)))

(declare-fun bm!350326 () Bool)

(assert (=> bm!350326 (= call!350329 call!350330)))

(declare-fun b!5015637 () Bool)

(assert (=> b!5015637 (= c!856909 (nullable!4696 (regOne!28130 r!12727)))))

(assert (=> b!5015637 (= e!3133389 e!3133390)))

(declare-fun bm!350327 () Bool)

(assert (=> bm!350327 (= call!350331 (derivativeStep!3987 (ite c!856911 (regTwo!28131 r!12727) (regOne!28130 r!12727)) (head!10745 lt!2075006)))))

(declare-fun b!5015638 () Bool)

(assert (=> b!5015638 (= e!3133388 EmptyLang!13809)))

(assert (= (and d!1614901 c!856910) b!5015638))

(assert (= (and d!1614901 (not c!856910)) b!5015631))

(assert (= (and b!5015631 c!856908) b!5015630))

(assert (= (and b!5015631 (not c!856908)) b!5015636))

(assert (= (and b!5015636 c!856911) b!5015633))

(assert (= (and b!5015636 (not c!856911)) b!5015629))

(assert (= (and b!5015629 c!856912) b!5015634))

(assert (= (and b!5015629 (not c!856912)) b!5015637))

(assert (= (and b!5015637 c!856909) b!5015632))

(assert (= (and b!5015637 (not c!856909)) b!5015635))

(assert (= (or b!5015632 b!5015635) bm!350326))

(assert (= (or b!5015634 bm!350326) bm!350324))

(assert (= (or b!5015633 bm!350324) bm!350325))

(assert (= (or b!5015633 b!5015632) bm!350327))

(declare-fun m!6050448 () Bool)

(assert (=> d!1614901 m!6050448))

(assert (=> d!1614901 m!6049528))

(assert (=> bm!350325 m!6049696))

(declare-fun m!6050450 () Bool)

(assert (=> bm!350325 m!6050450))

(assert (=> b!5015637 m!6050276))

(assert (=> bm!350327 m!6049696))

(declare-fun m!6050452 () Bool)

(assert (=> bm!350327 m!6050452))

(assert (=> b!5015203 d!1614901))

(assert (=> b!5015203 d!1614829))

(assert (=> b!5015203 d!1614835))

(declare-fun d!1614903 () Bool)

(declare-fun lt!2075443 () Int)

(assert (=> d!1614903 (>= lt!2075443 0)))

(declare-fun e!3133392 () Int)

(assert (=> d!1614903 (= lt!2075443 e!3133392)))

(declare-fun c!856913 () Bool)

(assert (=> d!1614903 (= c!856913 ((_ is Nil!57907) (t!370399 (_1!34844 lt!2074993))))))

(assert (=> d!1614903 (= (size!38500 (t!370399 (_1!34844 lt!2074993))) lt!2075443)))

(declare-fun b!5015639 () Bool)

(assert (=> b!5015639 (= e!3133392 0)))

(declare-fun b!5015640 () Bool)

(assert (=> b!5015640 (= e!3133392 (+ 1 (size!38500 (t!370399 (t!370399 (_1!34844 lt!2074993))))))))

(assert (= (and d!1614903 c!856913) b!5015639))

(assert (= (and d!1614903 (not c!856913)) b!5015640))

(declare-fun m!6050454 () Bool)

(assert (=> b!5015640 m!6050454))

(assert (=> b!5015199 d!1614903))

(declare-fun b!5015650 () Bool)

(declare-fun e!3133397 () List!58031)

(declare-fun e!3133398 () List!58031)

(assert (=> b!5015650 (= e!3133397 e!3133398)))

(declare-fun c!856919 () Bool)

(assert (=> b!5015650 (= c!856919 ((_ is Leaf!25441) (c!856663 input!5597)))))

(declare-fun b!5015652 () Bool)

(assert (=> b!5015652 (= e!3133398 (++!12657 (list!18651 (left!42334 (c!856663 input!5597))) (list!18651 (right!42664 (c!856663 input!5597)))))))

(declare-fun b!5015651 () Bool)

(assert (=> b!5015651 (= e!3133398 (list!18653 (xs!18654 (c!856663 input!5597))))))

(declare-fun d!1614905 () Bool)

(declare-fun c!856918 () Bool)

(assert (=> d!1614905 (= c!856918 ((_ is Empty!15328) (c!856663 input!5597)))))

(assert (=> d!1614905 (= (list!18651 (c!856663 input!5597)) e!3133397)))

(declare-fun b!5015649 () Bool)

(assert (=> b!5015649 (= e!3133397 Nil!57907)))

(assert (= (and d!1614905 c!856918) b!5015649))

(assert (= (and d!1614905 (not c!856918)) b!5015650))

(assert (= (and b!5015650 c!856919) b!5015651))

(assert (= (and b!5015650 (not c!856919)) b!5015652))

(declare-fun m!6050456 () Bool)

(assert (=> b!5015652 m!6050456))

(declare-fun m!6050458 () Bool)

(assert (=> b!5015652 m!6050458))

(assert (=> b!5015652 m!6050456))

(assert (=> b!5015652 m!6050458))

(declare-fun m!6050460 () Bool)

(assert (=> b!5015652 m!6050460))

(declare-fun m!6050462 () Bool)

(assert (=> b!5015651 m!6050462))

(assert (=> d!1614607 d!1614905))

(declare-fun d!1614907 () Bool)

(declare-fun c!856920 () Bool)

(assert (=> d!1614907 (= c!856920 ((_ is Node!15328) (left!42334 (c!856663 totalInput!1012))))))

(declare-fun e!3133399 () Bool)

(assert (=> d!1614907 (= (inv!76116 (left!42334 (c!856663 totalInput!1012))) e!3133399)))

(declare-fun b!5015653 () Bool)

(assert (=> b!5015653 (= e!3133399 (inv!76119 (left!42334 (c!856663 totalInput!1012))))))

(declare-fun b!5015654 () Bool)

(declare-fun e!3133400 () Bool)

(assert (=> b!5015654 (= e!3133399 e!3133400)))

(declare-fun res!2138788 () Bool)

(assert (=> b!5015654 (= res!2138788 (not ((_ is Leaf!25441) (left!42334 (c!856663 totalInput!1012)))))))

(assert (=> b!5015654 (=> res!2138788 e!3133400)))

(declare-fun b!5015655 () Bool)

(assert (=> b!5015655 (= e!3133400 (inv!76120 (left!42334 (c!856663 totalInput!1012))))))

(assert (= (and d!1614907 c!856920) b!5015653))

(assert (= (and d!1614907 (not c!856920)) b!5015654))

(assert (= (and b!5015654 (not res!2138788)) b!5015655))

(declare-fun m!6050464 () Bool)

(assert (=> b!5015653 m!6050464))

(declare-fun m!6050466 () Bool)

(assert (=> b!5015655 m!6050466))

(assert (=> b!5015378 d!1614907))

(declare-fun d!1614909 () Bool)

(declare-fun c!856921 () Bool)

(assert (=> d!1614909 (= c!856921 ((_ is Node!15328) (right!42664 (c!856663 totalInput!1012))))))

(declare-fun e!3133401 () Bool)

(assert (=> d!1614909 (= (inv!76116 (right!42664 (c!856663 totalInput!1012))) e!3133401)))

(declare-fun b!5015656 () Bool)

(assert (=> b!5015656 (= e!3133401 (inv!76119 (right!42664 (c!856663 totalInput!1012))))))

(declare-fun b!5015657 () Bool)

(declare-fun e!3133402 () Bool)

(assert (=> b!5015657 (= e!3133401 e!3133402)))

(declare-fun res!2138789 () Bool)

(assert (=> b!5015657 (= res!2138789 (not ((_ is Leaf!25441) (right!42664 (c!856663 totalInput!1012)))))))

(assert (=> b!5015657 (=> res!2138789 e!3133402)))

(declare-fun b!5015658 () Bool)

(assert (=> b!5015658 (= e!3133402 (inv!76120 (right!42664 (c!856663 totalInput!1012))))))

(assert (= (and d!1614909 c!856921) b!5015656))

(assert (= (and d!1614909 (not c!856921)) b!5015657))

(assert (= (and b!5015657 (not res!2138789)) b!5015658))

(declare-fun m!6050468 () Bool)

(assert (=> b!5015656 m!6050468))

(declare-fun m!6050470 () Bool)

(assert (=> b!5015658 m!6050470))

(assert (=> b!5015378 d!1614909))

(declare-fun d!1614911 () Bool)

(declare-fun lt!2075444 () Int)

(assert (=> d!1614911 (>= lt!2075444 0)))

(declare-fun e!3133403 () Int)

(assert (=> d!1614911 (= lt!2075444 e!3133403)))

(declare-fun c!856922 () Bool)

(assert (=> d!1614911 (= c!856922 ((_ is Nil!57907) (t!370399 lt!2075000)))))

(assert (=> d!1614911 (= (size!38500 (t!370399 lt!2075000)) lt!2075444)))

(declare-fun b!5015659 () Bool)

(assert (=> b!5015659 (= e!3133403 0)))

(declare-fun b!5015660 () Bool)

(assert (=> b!5015660 (= e!3133403 (+ 1 (size!38500 (t!370399 (t!370399 lt!2075000)))))))

(assert (= (and d!1614911 c!856922) b!5015659))

(assert (= (and d!1614911 (not c!856922)) b!5015660))

(declare-fun m!6050472 () Bool)

(assert (=> b!5015660 m!6050472))

(assert (=> b!5014863 d!1614911))

(declare-fun d!1614913 () Bool)

(assert (=> d!1614913 (= (tail!9878 lt!2075000) (t!370399 lt!2075000))))

(assert (=> bm!350264 d!1614913))

(declare-fun b!5015664 () Bool)

(declare-fun e!3133404 () Bool)

(declare-fun lt!2075445 () List!58031)

(assert (=> b!5015664 (= e!3133404 (or (not (= (_2!34844 lt!2074993) Nil!57907)) (= lt!2075445 (t!370399 (_1!34844 lt!2074993)))))))

(declare-fun b!5015663 () Bool)

(declare-fun res!2138791 () Bool)

(assert (=> b!5015663 (=> (not res!2138791) (not e!3133404))))

(assert (=> b!5015663 (= res!2138791 (= (size!38500 lt!2075445) (+ (size!38500 (t!370399 (_1!34844 lt!2074993))) (size!38500 (_2!34844 lt!2074993)))))))

(declare-fun b!5015662 () Bool)

(declare-fun e!3133405 () List!58031)

(assert (=> b!5015662 (= e!3133405 (Cons!57907 (h!64355 (t!370399 (_1!34844 lt!2074993))) (++!12657 (t!370399 (t!370399 (_1!34844 lt!2074993))) (_2!34844 lt!2074993))))))

(declare-fun d!1614915 () Bool)

(assert (=> d!1614915 e!3133404))

(declare-fun res!2138790 () Bool)

(assert (=> d!1614915 (=> (not res!2138790) (not e!3133404))))

(assert (=> d!1614915 (= res!2138790 (= (content!10267 lt!2075445) ((_ map or) (content!10267 (t!370399 (_1!34844 lt!2074993))) (content!10267 (_2!34844 lt!2074993)))))))

(assert (=> d!1614915 (= lt!2075445 e!3133405)))

(declare-fun c!856923 () Bool)

(assert (=> d!1614915 (= c!856923 ((_ is Nil!57907) (t!370399 (_1!34844 lt!2074993))))))

(assert (=> d!1614915 (= (++!12657 (t!370399 (_1!34844 lt!2074993)) (_2!34844 lt!2074993)) lt!2075445)))

(declare-fun b!5015661 () Bool)

(assert (=> b!5015661 (= e!3133405 (_2!34844 lt!2074993))))

(assert (= (and d!1614915 c!856923) b!5015661))

(assert (= (and d!1614915 (not c!856923)) b!5015662))

(assert (= (and d!1614915 res!2138790) b!5015663))

(assert (= (and b!5015663 res!2138791) b!5015664))

(declare-fun m!6050474 () Bool)

(assert (=> b!5015663 m!6050474))

(assert (=> b!5015663 m!6050070))

(assert (=> b!5015663 m!6050046))

(declare-fun m!6050476 () Bool)

(assert (=> b!5015662 m!6050476))

(declare-fun m!6050478 () Bool)

(assert (=> d!1614915 m!6050478))

(declare-fun m!6050480 () Bool)

(assert (=> d!1614915 m!6050480))

(assert (=> d!1614915 m!6050054))

(assert (=> b!5015153 d!1614915))

(declare-fun b!5015666 () Bool)

(declare-fun e!3133406 () List!58031)

(declare-fun e!3133407 () List!58031)

(assert (=> b!5015666 (= e!3133406 e!3133407)))

(declare-fun c!856925 () Bool)

(assert (=> b!5015666 (= c!856925 ((_ is Leaf!25441) (c!856663 (_1!34843 lt!2075011))))))

(declare-fun b!5015668 () Bool)

(assert (=> b!5015668 (= e!3133407 (++!12657 (list!18651 (left!42334 (c!856663 (_1!34843 lt!2075011)))) (list!18651 (right!42664 (c!856663 (_1!34843 lt!2075011))))))))

(declare-fun b!5015667 () Bool)

(assert (=> b!5015667 (= e!3133407 (list!18653 (xs!18654 (c!856663 (_1!34843 lt!2075011)))))))

(declare-fun d!1614917 () Bool)

(declare-fun c!856924 () Bool)

(assert (=> d!1614917 (= c!856924 ((_ is Empty!15328) (c!856663 (_1!34843 lt!2075011))))))

(assert (=> d!1614917 (= (list!18651 (c!856663 (_1!34843 lt!2075011))) e!3133406)))

(declare-fun b!5015665 () Bool)

(assert (=> b!5015665 (= e!3133406 Nil!57907)))

(assert (= (and d!1614917 c!856924) b!5015665))

(assert (= (and d!1614917 (not c!856924)) b!5015666))

(assert (= (and b!5015666 c!856925) b!5015667))

(assert (= (and b!5015666 (not c!856925)) b!5015668))

(declare-fun m!6050482 () Bool)

(assert (=> b!5015668 m!6050482))

(declare-fun m!6050484 () Bool)

(assert (=> b!5015668 m!6050484))

(assert (=> b!5015668 m!6050482))

(assert (=> b!5015668 m!6050484))

(declare-fun m!6050486 () Bool)

(assert (=> b!5015668 m!6050486))

(declare-fun m!6050488 () Bool)

(assert (=> b!5015667 m!6050488))

(assert (=> d!1614633 d!1614917))

(declare-fun d!1614919 () Bool)

(assert (=> d!1614919 (isPrefix!5362 lt!2075000 lt!2075000)))

(declare-fun lt!2075448 () Unit!149127)

(declare-fun choose!37109 (List!58031 List!58031) Unit!149127)

(assert (=> d!1614919 (= lt!2075448 (choose!37109 lt!2075000 lt!2075000))))

(assert (=> d!1614919 (= (lemmaIsPrefixRefl!3635 lt!2075000 lt!2075000) lt!2075448)))

(declare-fun bs!1186926 () Bool)

(assert (= bs!1186926 d!1614919))

(assert (=> bs!1186926 m!6049894))

(declare-fun m!6050490 () Bool)

(assert (=> bs!1186926 m!6050490))

(assert (=> bm!350271 d!1614919))

(assert (=> b!5014830 d!1614859))

(declare-fun c!856926 () Bool)

(declare-fun d!1614921 () Bool)

(assert (=> d!1614921 (= c!856926 (isEmpty!31376 (tail!9878 (take!668 (drop!2472 lt!2075001 lt!2074995) lt!2075008))))))

(declare-fun e!3133408 () Bool)

(assert (=> d!1614921 (= (matchZipper!577 (derivationStepZipper!640 z!4183 (head!10745 (take!668 (drop!2472 lt!2075001 lt!2074995) lt!2075008))) (tail!9878 (take!668 (drop!2472 lt!2075001 lt!2074995) lt!2075008))) e!3133408)))

(declare-fun b!5015669 () Bool)

(assert (=> b!5015669 (= e!3133408 (nullableZipper!891 (derivationStepZipper!640 z!4183 (head!10745 (take!668 (drop!2472 lt!2075001 lt!2074995) lt!2075008)))))))

(declare-fun b!5015670 () Bool)

(assert (=> b!5015670 (= e!3133408 (matchZipper!577 (derivationStepZipper!640 (derivationStepZipper!640 z!4183 (head!10745 (take!668 (drop!2472 lt!2075001 lt!2074995) lt!2075008))) (head!10745 (tail!9878 (take!668 (drop!2472 lt!2075001 lt!2074995) lt!2075008)))) (tail!9878 (tail!9878 (take!668 (drop!2472 lt!2075001 lt!2074995) lt!2075008)))))))

(assert (= (and d!1614921 c!856926) b!5015669))

(assert (= (and d!1614921 (not c!856926)) b!5015670))

(assert (=> d!1614921 m!6050024))

(declare-fun m!6050492 () Bool)

(assert (=> d!1614921 m!6050492))

(assert (=> b!5015669 m!6050022))

(declare-fun m!6050494 () Bool)

(assert (=> b!5015669 m!6050494))

(assert (=> b!5015670 m!6050024))

(declare-fun m!6050496 () Bool)

(assert (=> b!5015670 m!6050496))

(assert (=> b!5015670 m!6050022))

(assert (=> b!5015670 m!6050496))

(declare-fun m!6050498 () Bool)

(assert (=> b!5015670 m!6050498))

(assert (=> b!5015670 m!6050024))

(declare-fun m!6050500 () Bool)

(assert (=> b!5015670 m!6050500))

(assert (=> b!5015670 m!6050498))

(assert (=> b!5015670 m!6050500))

(declare-fun m!6050502 () Bool)

(assert (=> b!5015670 m!6050502))

(assert (=> b!5015117 d!1614921))

(declare-fun d!1614923 () Bool)

(assert (=> d!1614923 true))

(declare-fun lambda!248609 () Int)

(declare-fun flatMap!284 ((InoxSet Context!6468) Int) (InoxSet Context!6468))

(assert (=> d!1614923 (= (derivationStepZipper!640 z!4183 (head!10745 (take!668 (drop!2472 lt!2075001 lt!2074995) lt!2075008))) (flatMap!284 z!4183 lambda!248609))))

(declare-fun bs!1186927 () Bool)

(assert (= bs!1186927 d!1614923))

(declare-fun m!6050504 () Bool)

(assert (=> bs!1186927 m!6050504))

(assert (=> b!5015117 d!1614923))

(declare-fun d!1614925 () Bool)

(assert (=> d!1614925 (= (head!10745 (take!668 (drop!2472 lt!2075001 lt!2074995) lt!2075008)) (h!64355 (take!668 (drop!2472 lt!2075001 lt!2074995) lt!2075008)))))

(assert (=> b!5015117 d!1614925))

(declare-fun d!1614927 () Bool)

(assert (=> d!1614927 (= (tail!9878 (take!668 (drop!2472 lt!2075001 lt!2074995) lt!2075008)) (t!370399 (take!668 (drop!2472 lt!2075001 lt!2074995) lt!2075008)))))

(assert (=> b!5015117 d!1614927))

(declare-fun b!5015673 () Bool)

(declare-fun res!2138792 () Bool)

(declare-fun e!3133413 () Bool)

(assert (=> b!5015673 (=> (not res!2138792) (not e!3133413))))

(declare-fun call!350333 () Bool)

(assert (=> b!5015673 (= res!2138792 call!350333)))

(declare-fun e!3133410 () Bool)

(assert (=> b!5015673 (= e!3133410 e!3133413)))

(declare-fun b!5015674 () Bool)

(declare-fun e!3133415 () Bool)

(assert (=> b!5015674 (= e!3133415 call!350333)))

(declare-fun b!5015675 () Bool)

(declare-fun e!3133411 () Bool)

(declare-fun e!3133409 () Bool)

(assert (=> b!5015675 (= e!3133411 e!3133409)))

(declare-fun res!2138793 () Bool)

(assert (=> b!5015675 (= res!2138793 (not (nullable!4696 (reg!14138 (ite c!856672 (reg!14138 r!12727) (ite c!856673 (regOne!28131 r!12727) (regTwo!28130 r!12727)))))))))

(assert (=> b!5015675 (=> (not res!2138793) (not e!3133409))))

(declare-fun b!5015677 () Bool)

(declare-fun res!2138794 () Bool)

(declare-fun e!3133412 () Bool)

(assert (=> b!5015677 (=> res!2138794 e!3133412)))

(assert (=> b!5015677 (= res!2138794 (not ((_ is Concat!22602) (ite c!856672 (reg!14138 r!12727) (ite c!856673 (regOne!28131 r!12727) (regTwo!28130 r!12727))))))))

(assert (=> b!5015677 (= e!3133410 e!3133412)))

(declare-fun b!5015678 () Bool)

(declare-fun call!350335 () Bool)

(assert (=> b!5015678 (= e!3133409 call!350335)))

(declare-fun b!5015679 () Bool)

(assert (=> b!5015679 (= e!3133412 e!3133415)))

(declare-fun res!2138795 () Bool)

(assert (=> b!5015679 (=> (not res!2138795) (not e!3133415))))

(declare-fun call!350334 () Bool)

(assert (=> b!5015679 (= res!2138795 call!350334)))

(declare-fun b!5015680 () Bool)

(assert (=> b!5015680 (= e!3133413 call!350334)))

(declare-fun c!856929 () Bool)

(declare-fun c!856930 () Bool)

(declare-fun bm!350328 () Bool)

(assert (=> bm!350328 (= call!350335 (validRegex!6106 (ite c!856929 (reg!14138 (ite c!856672 (reg!14138 r!12727) (ite c!856673 (regOne!28131 r!12727) (regTwo!28130 r!12727)))) (ite c!856930 (regOne!28131 (ite c!856672 (reg!14138 r!12727) (ite c!856673 (regOne!28131 r!12727) (regTwo!28130 r!12727)))) (regTwo!28130 (ite c!856672 (reg!14138 r!12727) (ite c!856673 (regOne!28131 r!12727) (regTwo!28130 r!12727))))))))))

(declare-fun b!5015681 () Bool)

(declare-fun e!3133414 () Bool)

(assert (=> b!5015681 (= e!3133414 e!3133411)))

(assert (=> b!5015681 (= c!856929 ((_ is Star!13809) (ite c!856672 (reg!14138 r!12727) (ite c!856673 (regOne!28131 r!12727) (regTwo!28130 r!12727)))))))

(declare-fun bm!350329 () Bool)

(assert (=> bm!350329 (= call!350333 call!350335)))

(declare-fun bm!350330 () Bool)

(assert (=> bm!350330 (= call!350334 (validRegex!6106 (ite c!856930 (regTwo!28131 (ite c!856672 (reg!14138 r!12727) (ite c!856673 (regOne!28131 r!12727) (regTwo!28130 r!12727)))) (regOne!28130 (ite c!856672 (reg!14138 r!12727) (ite c!856673 (regOne!28131 r!12727) (regTwo!28130 r!12727)))))))))

(declare-fun b!5015676 () Bool)

(assert (=> b!5015676 (= e!3133411 e!3133410)))

(assert (=> b!5015676 (= c!856930 ((_ is Union!13809) (ite c!856672 (reg!14138 r!12727) (ite c!856673 (regOne!28131 r!12727) (regTwo!28130 r!12727)))))))

(declare-fun d!1614929 () Bool)

(declare-fun res!2138796 () Bool)

(assert (=> d!1614929 (=> res!2138796 e!3133414)))

(assert (=> d!1614929 (= res!2138796 ((_ is ElementMatch!13809) (ite c!856672 (reg!14138 r!12727) (ite c!856673 (regOne!28131 r!12727) (regTwo!28130 r!12727)))))))

(assert (=> d!1614929 (= (validRegex!6106 (ite c!856672 (reg!14138 r!12727) (ite c!856673 (regOne!28131 r!12727) (regTwo!28130 r!12727)))) e!3133414)))

(assert (= (and d!1614929 (not res!2138796)) b!5015681))

(assert (= (and b!5015681 c!856929) b!5015675))

(assert (= (and b!5015681 (not c!856929)) b!5015676))

(assert (= (and b!5015675 res!2138793) b!5015678))

(assert (= (and b!5015676 c!856930) b!5015673))

(assert (= (and b!5015676 (not c!856930)) b!5015677))

(assert (= (and b!5015673 res!2138792) b!5015680))

(assert (= (and b!5015677 (not res!2138794)) b!5015679))

(assert (= (and b!5015679 res!2138795) b!5015674))

(assert (= (or b!5015680 b!5015679) bm!350330))

(assert (= (or b!5015673 b!5015674) bm!350329))

(assert (= (or b!5015678 bm!350329) bm!350328))

(declare-fun m!6050506 () Bool)

(assert (=> b!5015675 m!6050506))

(declare-fun m!6050508 () Bool)

(assert (=> bm!350328 m!6050508))

(declare-fun m!6050510 () Bool)

(assert (=> bm!350330 m!6050510))

(assert (=> bm!350221 d!1614929))

(declare-fun d!1614931 () Bool)

(declare-fun lt!2075449 () Int)

(assert (=> d!1614931 (>= lt!2075449 0)))

(declare-fun e!3133416 () Int)

(assert (=> d!1614931 (= lt!2075449 e!3133416)))

(declare-fun c!856931 () Bool)

(assert (=> d!1614931 (= c!856931 ((_ is Nil!57907) lt!2075309))))

(assert (=> d!1614931 (= (size!38500 lt!2075309) lt!2075449)))

(declare-fun b!5015682 () Bool)

(assert (=> b!5015682 (= e!3133416 0)))

(declare-fun b!5015683 () Bool)

(assert (=> b!5015683 (= e!3133416 (+ 1 (size!38500 (t!370399 lt!2075309))))))

(assert (= (and d!1614931 c!856931) b!5015682))

(assert (= (and d!1614931 (not c!856931)) b!5015683))

(declare-fun m!6050512 () Bool)

(assert (=> b!5015683 m!6050512))

(assert (=> b!5015110 d!1614931))

(declare-fun d!1614933 () Bool)

(declare-fun c!856932 () Bool)

(assert (=> d!1614933 (= c!856932 ((_ is Node!15328) (left!42334 (c!856663 input!5597))))))

(declare-fun e!3133417 () Bool)

(assert (=> d!1614933 (= (inv!76116 (left!42334 (c!856663 input!5597))) e!3133417)))

(declare-fun b!5015684 () Bool)

(assert (=> b!5015684 (= e!3133417 (inv!76119 (left!42334 (c!856663 input!5597))))))

(declare-fun b!5015685 () Bool)

(declare-fun e!3133418 () Bool)

(assert (=> b!5015685 (= e!3133417 e!3133418)))

(declare-fun res!2138797 () Bool)

(assert (=> b!5015685 (= res!2138797 (not ((_ is Leaf!25441) (left!42334 (c!856663 input!5597)))))))

(assert (=> b!5015685 (=> res!2138797 e!3133418)))

(declare-fun b!5015686 () Bool)

(assert (=> b!5015686 (= e!3133418 (inv!76120 (left!42334 (c!856663 input!5597))))))

(assert (= (and d!1614933 c!856932) b!5015684))

(assert (= (and d!1614933 (not c!856932)) b!5015685))

(assert (= (and b!5015685 (not res!2138797)) b!5015686))

(declare-fun m!6050514 () Bool)

(assert (=> b!5015684 m!6050514))

(declare-fun m!6050516 () Bool)

(assert (=> b!5015686 m!6050516))

(assert (=> b!5015334 d!1614933))

(declare-fun d!1614935 () Bool)

(declare-fun c!856933 () Bool)

(assert (=> d!1614935 (= c!856933 ((_ is Node!15328) (right!42664 (c!856663 input!5597))))))

(declare-fun e!3133419 () Bool)

(assert (=> d!1614935 (= (inv!76116 (right!42664 (c!856663 input!5597))) e!3133419)))

(declare-fun b!5015687 () Bool)

(assert (=> b!5015687 (= e!3133419 (inv!76119 (right!42664 (c!856663 input!5597))))))

(declare-fun b!5015688 () Bool)

(declare-fun e!3133420 () Bool)

(assert (=> b!5015688 (= e!3133419 e!3133420)))

(declare-fun res!2138798 () Bool)

(assert (=> b!5015688 (= res!2138798 (not ((_ is Leaf!25441) (right!42664 (c!856663 input!5597)))))))

(assert (=> b!5015688 (=> res!2138798 e!3133420)))

(declare-fun b!5015689 () Bool)

(assert (=> b!5015689 (= e!3133420 (inv!76120 (right!42664 (c!856663 input!5597))))))

(assert (= (and d!1614935 c!856933) b!5015687))

(assert (= (and d!1614935 (not c!856933)) b!5015688))

(assert (= (and b!5015688 (not res!2138798)) b!5015689))

(declare-fun m!6050518 () Bool)

(assert (=> b!5015687 m!6050518))

(declare-fun m!6050520 () Bool)

(assert (=> b!5015689 m!6050520))

(assert (=> b!5015334 d!1614935))

(declare-fun d!1614937 () Bool)

(declare-fun res!2138803 () Bool)

(declare-fun e!3133425 () Bool)

(assert (=> d!1614937 (=> res!2138803 e!3133425)))

(assert (=> d!1614937 (= res!2138803 ((_ is Nil!57909) lt!2075069))))

(assert (=> d!1614937 (= (noDuplicate!1039 lt!2075069) e!3133425)))

(declare-fun b!5015694 () Bool)

(declare-fun e!3133426 () Bool)

(assert (=> b!5015694 (= e!3133425 e!3133426)))

(declare-fun res!2138804 () Bool)

(assert (=> b!5015694 (=> (not res!2138804) (not e!3133426))))

(declare-fun contains!19559 (List!58033 Context!6468) Bool)

(assert (=> b!5015694 (= res!2138804 (not (contains!19559 (t!370401 lt!2075069) (h!64357 lt!2075069))))))

(declare-fun b!5015695 () Bool)

(assert (=> b!5015695 (= e!3133426 (noDuplicate!1039 (t!370401 lt!2075069)))))

(assert (= (and d!1614937 (not res!2138803)) b!5015694))

(assert (= (and b!5015694 res!2138804) b!5015695))

(declare-fun m!6050522 () Bool)

(assert (=> b!5015694 m!6050522))

(declare-fun m!6050524 () Bool)

(assert (=> b!5015695 m!6050524))

(assert (=> d!1614647 d!1614937))

(declare-fun d!1614939 () Bool)

(declare-fun e!3133433 () Bool)

(assert (=> d!1614939 e!3133433))

(declare-fun res!2138809 () Bool)

(assert (=> d!1614939 (=> (not res!2138809) (not e!3133433))))

(declare-fun res!2138810 () List!58033)

(assert (=> d!1614939 (= res!2138809 (noDuplicate!1039 res!2138810))))

(declare-fun e!3133434 () Bool)

(assert (=> d!1614939 e!3133434))

(assert (=> d!1614939 (= (choose!37094 z!4183) res!2138810)))

(declare-fun b!5015703 () Bool)

(declare-fun e!3133435 () Bool)

(declare-fun tp!1406514 () Bool)

(assert (=> b!5015703 (= e!3133435 tp!1406514)))

(declare-fun b!5015702 () Bool)

(declare-fun tp!1406513 () Bool)

(assert (=> b!5015702 (= e!3133434 (and (inv!76117 (h!64357 res!2138810)) e!3133435 tp!1406513))))

(declare-fun b!5015704 () Bool)

(assert (=> b!5015704 (= e!3133433 (= (content!10268 res!2138810) z!4183))))

(assert (= b!5015702 b!5015703))

(assert (= (and d!1614939 ((_ is Cons!57909) res!2138810)) b!5015702))

(assert (= (and d!1614939 res!2138809) b!5015704))

(declare-fun m!6050526 () Bool)

(assert (=> d!1614939 m!6050526))

(declare-fun m!6050528 () Bool)

(assert (=> b!5015702 m!6050528))

(declare-fun m!6050530 () Bool)

(assert (=> b!5015704 m!6050530))

(assert (=> d!1614647 d!1614939))

(declare-fun b!5015707 () Bool)

(declare-fun e!3133438 () Bool)

(assert (=> b!5015707 (= e!3133438 (isPrefix!5362 (tail!9878 lt!2075000) (tail!9878 lt!2075000)))))

(declare-fun b!5015706 () Bool)

(declare-fun res!2138814 () Bool)

(assert (=> b!5015706 (=> (not res!2138814) (not e!3133438))))

(assert (=> b!5015706 (= res!2138814 (= (head!10745 lt!2075000) (head!10745 lt!2075000)))))

(declare-fun b!5015708 () Bool)

(declare-fun e!3133437 () Bool)

(assert (=> b!5015708 (= e!3133437 (>= (size!38500 lt!2075000) (size!38500 lt!2075000)))))

(declare-fun b!5015705 () Bool)

(declare-fun e!3133436 () Bool)

(assert (=> b!5015705 (= e!3133436 e!3133438)))

(declare-fun res!2138813 () Bool)

(assert (=> b!5015705 (=> (not res!2138813) (not e!3133438))))

(assert (=> b!5015705 (= res!2138813 (not ((_ is Nil!57907) lt!2075000)))))

(declare-fun d!1614941 () Bool)

(assert (=> d!1614941 e!3133437))

(declare-fun res!2138811 () Bool)

(assert (=> d!1614941 (=> res!2138811 e!3133437)))

(declare-fun lt!2075450 () Bool)

(assert (=> d!1614941 (= res!2138811 (not lt!2075450))))

(assert (=> d!1614941 (= lt!2075450 e!3133436)))

(declare-fun res!2138812 () Bool)

(assert (=> d!1614941 (=> res!2138812 e!3133436)))

(assert (=> d!1614941 (= res!2138812 ((_ is Nil!57907) lt!2075000))))

(assert (=> d!1614941 (= (isPrefix!5362 lt!2075000 lt!2075000) lt!2075450)))

(assert (= (and d!1614941 (not res!2138812)) b!5015705))

(assert (= (and b!5015705 res!2138813) b!5015706))

(assert (= (and b!5015706 res!2138814) b!5015707))

(assert (= (and d!1614941 (not res!2138811)) b!5015708))

(assert (=> b!5015707 m!6049850))

(assert (=> b!5015707 m!6049850))

(assert (=> b!5015707 m!6049850))

(assert (=> b!5015707 m!6049850))

(declare-fun m!6050532 () Bool)

(assert (=> b!5015707 m!6050532))

(assert (=> b!5015706 m!6049878))

(assert (=> b!5015706 m!6049878))

(assert (=> b!5015708 m!6049502))

(assert (=> b!5015708 m!6049502))

(assert (=> bm!350268 d!1614941))

(declare-fun d!1614943 () Bool)

(declare-fun lt!2075451 () Int)

(assert (=> d!1614943 (>= lt!2075451 0)))

(declare-fun e!3133439 () Int)

(assert (=> d!1614943 (= lt!2075451 e!3133439)))

(declare-fun c!856934 () Bool)

(assert (=> d!1614943 (= c!856934 ((_ is Nil!57907) lt!2074991))))

(assert (=> d!1614943 (= (size!38500 lt!2074991) lt!2075451)))

(declare-fun b!5015709 () Bool)

(assert (=> b!5015709 (= e!3133439 0)))

(declare-fun b!5015710 () Bool)

(assert (=> b!5015710 (= e!3133439 (+ 1 (size!38500 (t!370399 lt!2074991))))))

(assert (= (and d!1614943 c!856934) b!5015709))

(assert (= (and d!1614943 (not c!856934)) b!5015710))

(declare-fun m!6050534 () Bool)

(assert (=> b!5015710 m!6050534))

(assert (=> b!5014825 d!1614943))

(assert (=> b!5014825 d!1614797))

(assert (=> b!5015194 d!1614867))

(assert (=> b!5015194 d!1614869))

(declare-fun d!1614945 () Bool)

(assert (=> d!1614945 (= (isEmpty!31376 (take!668 (drop!2472 lt!2075001 lt!2074995) lt!2075008)) ((_ is Nil!57907) (take!668 (drop!2472 lt!2075001 lt!2074995) lt!2075008)))))

(assert (=> d!1614719 d!1614945))

(assert (=> b!5014728 d!1614717))

(declare-fun b!5015712 () Bool)

(declare-fun e!3133440 () List!58031)

(declare-fun e!3133441 () List!58031)

(assert (=> b!5015712 (= e!3133440 e!3133441)))

(declare-fun c!856936 () Bool)

(assert (=> b!5015712 (= c!856936 ((_ is Leaf!25441) (c!856663 totalInput!1012)))))

(declare-fun b!5015714 () Bool)

(assert (=> b!5015714 (= e!3133441 (++!12657 (list!18651 (left!42334 (c!856663 totalInput!1012))) (list!18651 (right!42664 (c!856663 totalInput!1012)))))))

(declare-fun b!5015713 () Bool)

(assert (=> b!5015713 (= e!3133441 (list!18653 (xs!18654 (c!856663 totalInput!1012))))))

(declare-fun d!1614947 () Bool)

(declare-fun c!856935 () Bool)

(assert (=> d!1614947 (= c!856935 ((_ is Empty!15328) (c!856663 totalInput!1012)))))

(assert (=> d!1614947 (= (list!18651 (c!856663 totalInput!1012)) e!3133440)))

(declare-fun b!5015711 () Bool)

(assert (=> b!5015711 (= e!3133440 Nil!57907)))

(assert (= (and d!1614947 c!856935) b!5015711))

(assert (= (and d!1614947 (not c!856935)) b!5015712))

(assert (= (and b!5015712 c!856936) b!5015713))

(assert (= (and b!5015712 (not c!856936)) b!5015714))

(declare-fun m!6050536 () Bool)

(assert (=> b!5015714 m!6050536))

(declare-fun m!6050538 () Bool)

(assert (=> b!5015714 m!6050538))

(assert (=> b!5015714 m!6050536))

(assert (=> b!5015714 m!6050538))

(declare-fun m!6050540 () Bool)

(assert (=> b!5015714 m!6050540))

(assert (=> b!5015713 m!6050268))

(assert (=> d!1614605 d!1614947))

(declare-fun bs!1186928 () Bool)

(declare-fun d!1614949 () Bool)

(assert (= bs!1186928 (and d!1614949 d!1614923)))

(declare-fun lambda!248610 () Int)

(assert (=> bs!1186928 (= (= (apply!14008 totalInput!1012 lt!2074995) (head!10745 (take!668 (drop!2472 lt!2075001 lt!2074995) lt!2075008))) (= lambda!248610 lambda!248609))))

(assert (=> d!1614949 true))

(assert (=> d!1614949 (= (derivationStepZipper!640 z!4183 (apply!14008 totalInput!1012 lt!2074995)) (flatMap!284 z!4183 lambda!248610))))

(declare-fun bs!1186929 () Bool)

(assert (= bs!1186929 d!1614949))

(declare-fun m!6050542 () Bool)

(assert (=> bs!1186929 m!6050542))

(assert (=> b!5014855 d!1614949))

(declare-fun d!1614951 () Bool)

(declare-fun lt!2075454 () C!27868)

(declare-fun apply!14011 (List!58031 Int) C!27868)

(assert (=> d!1614951 (= lt!2075454 (apply!14011 (list!18650 totalInput!1012) lt!2074995))))

(declare-fun apply!14012 (Conc!15328 Int) C!27868)

(assert (=> d!1614951 (= lt!2075454 (apply!14012 (c!856663 totalInput!1012) lt!2074995))))

(declare-fun e!3133444 () Bool)

(assert (=> d!1614951 e!3133444))

(declare-fun res!2138817 () Bool)

(assert (=> d!1614951 (=> (not res!2138817) (not e!3133444))))

(assert (=> d!1614951 (= res!2138817 (<= 0 lt!2074995))))

(assert (=> d!1614951 (= (apply!14008 totalInput!1012 lt!2074995) lt!2075454)))

(declare-fun b!5015717 () Bool)

(assert (=> b!5015717 (= e!3133444 (< lt!2074995 (size!38501 totalInput!1012)))))

(assert (= (and d!1614951 res!2138817) b!5015717))

(assert (=> d!1614951 m!6049574))

(assert (=> d!1614951 m!6049574))

(declare-fun m!6050544 () Bool)

(assert (=> d!1614951 m!6050544))

(declare-fun m!6050546 () Bool)

(assert (=> d!1614951 m!6050546))

(assert (=> b!5015717 m!6049538))

(assert (=> b!5014855 d!1614951))

(declare-fun b!5015718 () Bool)

(declare-fun e!3133449 () Bool)

(assert (=> b!5015718 (= e!3133449 (lostCauseZipper!837 lt!2075081))))

(declare-fun b!5015719 () Bool)

(declare-fun e!3133447 () Int)

(declare-fun lt!2075456 () Int)

(assert (=> b!5015719 (= e!3133447 (+ 1 lt!2075456))))

(declare-fun b!5015720 () Bool)

(declare-fun e!3133445 () Bool)

(assert (=> b!5015720 (= e!3133445 (<= (+ lt!2074995 1) (size!38501 totalInput!1012)))))

(declare-fun d!1614953 () Bool)

(declare-fun lt!2075455 () Int)

(assert (=> d!1614953 (and (>= lt!2075455 0) (<= lt!2075455 (- lt!2074996 (+ lt!2074995 1))))))

(declare-fun e!3133446 () Int)

(assert (=> d!1614953 (= lt!2075455 e!3133446)))

(declare-fun c!856939 () Bool)

(assert (=> d!1614953 (= c!856939 e!3133449)))

(declare-fun res!2138819 () Bool)

(assert (=> d!1614953 (=> res!2138819 e!3133449)))

(assert (=> d!1614953 (= res!2138819 (= (+ lt!2074995 1) lt!2074996))))

(assert (=> d!1614953 e!3133445))

(declare-fun res!2138818 () Bool)

(assert (=> d!1614953 (=> (not res!2138818) (not e!3133445))))

(assert (=> d!1614953 (= res!2138818 (>= (+ lt!2074995 1) 0))))

(assert (=> d!1614953 (= (findLongestMatchInnerZipperFastV2!149 lt!2075081 (+ lt!2074995 1) totalInput!1012 lt!2074996) lt!2075455)))

(declare-fun b!5015721 () Bool)

(assert (=> b!5015721 (= e!3133446 0)))

(declare-fun b!5015722 () Bool)

(declare-fun e!3133448 () Int)

(assert (=> b!5015722 (= e!3133448 1)))

(declare-fun b!5015723 () Bool)

(declare-fun c!856937 () Bool)

(declare-fun lt!2075457 () (InoxSet Context!6468))

(assert (=> b!5015723 (= c!856937 (nullableZipper!891 lt!2075457))))

(assert (=> b!5015723 (= e!3133447 e!3133448)))

(declare-fun b!5015724 () Bool)

(assert (=> b!5015724 (= e!3133448 0)))

(declare-fun b!5015725 () Bool)

(assert (=> b!5015725 (= e!3133446 e!3133447)))

(assert (=> b!5015725 (= lt!2075457 (derivationStepZipper!640 lt!2075081 (apply!14008 totalInput!1012 (+ lt!2074995 1))))))

(assert (=> b!5015725 (= lt!2075456 (findLongestMatchInnerZipperFastV2!149 lt!2075457 (+ lt!2074995 1 1) totalInput!1012 lt!2074996))))

(declare-fun c!856938 () Bool)

(assert (=> b!5015725 (= c!856938 (> lt!2075456 0))))

(assert (= (and d!1614953 res!2138818) b!5015720))

(assert (= (and d!1614953 (not res!2138819)) b!5015718))

(assert (= (and d!1614953 c!856939) b!5015721))

(assert (= (and d!1614953 (not c!856939)) b!5015725))

(assert (= (and b!5015725 c!856938) b!5015719))

(assert (= (and b!5015725 (not c!856938)) b!5015723))

(assert (= (and b!5015723 c!856937) b!5015722))

(assert (= (and b!5015723 (not c!856937)) b!5015724))

(declare-fun m!6050548 () Bool)

(assert (=> b!5015718 m!6050548))

(assert (=> b!5015720 m!6049538))

(declare-fun m!6050550 () Bool)

(assert (=> b!5015723 m!6050550))

(declare-fun m!6050552 () Bool)

(assert (=> b!5015725 m!6050552))

(assert (=> b!5015725 m!6050552))

(declare-fun m!6050554 () Bool)

(assert (=> b!5015725 m!6050554))

(declare-fun m!6050556 () Bool)

(assert (=> b!5015725 m!6050556))

(assert (=> b!5014855 d!1614953))

(declare-fun b!5015728 () Bool)

(declare-fun e!3133452 () Bool)

(assert (=> b!5015728 (= e!3133452 (isPrefix!5362 (tail!9878 (tail!9878 (_1!34844 lt!2074993))) (tail!9878 (tail!9878 lt!2075013))))))

(declare-fun b!5015727 () Bool)

(declare-fun res!2138823 () Bool)

(assert (=> b!5015727 (=> (not res!2138823) (not e!3133452))))

(assert (=> b!5015727 (= res!2138823 (= (head!10745 (tail!9878 (_1!34844 lt!2074993))) (head!10745 (tail!9878 lt!2075013))))))

(declare-fun b!5015729 () Bool)

(declare-fun e!3133451 () Bool)

(assert (=> b!5015729 (= e!3133451 (>= (size!38500 (tail!9878 lt!2075013)) (size!38500 (tail!9878 (_1!34844 lt!2074993)))))))

(declare-fun b!5015726 () Bool)

(declare-fun e!3133450 () Bool)

(assert (=> b!5015726 (= e!3133450 e!3133452)))

(declare-fun res!2138822 () Bool)

(assert (=> b!5015726 (=> (not res!2138822) (not e!3133452))))

(assert (=> b!5015726 (= res!2138822 (not ((_ is Nil!57907) (tail!9878 lt!2075013))))))

(declare-fun d!1614955 () Bool)

(assert (=> d!1614955 e!3133451))

(declare-fun res!2138820 () Bool)

(assert (=> d!1614955 (=> res!2138820 e!3133451)))

(declare-fun lt!2075458 () Bool)

(assert (=> d!1614955 (= res!2138820 (not lt!2075458))))

(assert (=> d!1614955 (= lt!2075458 e!3133450)))

(declare-fun res!2138821 () Bool)

(assert (=> d!1614955 (=> res!2138821 e!3133450)))

(assert (=> d!1614955 (= res!2138821 ((_ is Nil!57907) (tail!9878 (_1!34844 lt!2074993))))))

(assert (=> d!1614955 (= (isPrefix!5362 (tail!9878 (_1!34844 lt!2074993)) (tail!9878 lt!2075013)) lt!2075458)))

(assert (= (and d!1614955 (not res!2138821)) b!5015726))

(assert (= (and b!5015726 res!2138822) b!5015727))

(assert (= (and b!5015727 res!2138823) b!5015728))

(assert (= (and d!1614955 (not res!2138820)) b!5015729))

(assert (=> b!5015728 m!6049974))

(declare-fun m!6050558 () Bool)

(assert (=> b!5015728 m!6050558))

(assert (=> b!5015728 m!6049976))

(declare-fun m!6050560 () Bool)

(assert (=> b!5015728 m!6050560))

(assert (=> b!5015728 m!6050558))

(assert (=> b!5015728 m!6050560))

(declare-fun m!6050562 () Bool)

(assert (=> b!5015728 m!6050562))

(assert (=> b!5015727 m!6049974))

(declare-fun m!6050564 () Bool)

(assert (=> b!5015727 m!6050564))

(assert (=> b!5015727 m!6049976))

(declare-fun m!6050566 () Bool)

(assert (=> b!5015727 m!6050566))

(assert (=> b!5015729 m!6049976))

(declare-fun m!6050568 () Bool)

(assert (=> b!5015729 m!6050568))

(assert (=> b!5015729 m!6049974))

(declare-fun m!6050570 () Bool)

(assert (=> b!5015729 m!6050570))

(assert (=> b!5015081 d!1614955))

(declare-fun d!1614957 () Bool)

(assert (=> d!1614957 (= (tail!9878 (_1!34844 lt!2074993)) (t!370399 (_1!34844 lt!2074993)))))

(assert (=> b!5015081 d!1614957))

(declare-fun d!1614959 () Bool)

(assert (=> d!1614959 (= (tail!9878 lt!2075013) (t!370399 lt!2075013))))

(assert (=> b!5015081 d!1614959))

(declare-fun d!1614961 () Bool)

(declare-fun res!2138824 () Bool)

(declare-fun e!3133453 () Bool)

(assert (=> d!1614961 (=> (not res!2138824) (not e!3133453))))

(assert (=> d!1614961 (= res!2138824 (= (csize!30886 (c!856663 totalInput!1012)) (+ (size!38502 (left!42334 (c!856663 totalInput!1012))) (size!38502 (right!42664 (c!856663 totalInput!1012))))))))

(assert (=> d!1614961 (= (inv!76119 (c!856663 totalInput!1012)) e!3133453)))

(declare-fun b!5015730 () Bool)

(declare-fun res!2138825 () Bool)

(assert (=> b!5015730 (=> (not res!2138825) (not e!3133453))))

(assert (=> b!5015730 (= res!2138825 (and (not (= (left!42334 (c!856663 totalInput!1012)) Empty!15328)) (not (= (right!42664 (c!856663 totalInput!1012)) Empty!15328))))))

(declare-fun b!5015731 () Bool)

(declare-fun res!2138826 () Bool)

(assert (=> b!5015731 (=> (not res!2138826) (not e!3133453))))

(assert (=> b!5015731 (= res!2138826 (= (cheight!15539 (c!856663 totalInput!1012)) (+ (max!0 (height!2037 (left!42334 (c!856663 totalInput!1012))) (height!2037 (right!42664 (c!856663 totalInput!1012)))) 1)))))

(declare-fun b!5015732 () Bool)

(assert (=> b!5015732 (= e!3133453 (<= 0 (cheight!15539 (c!856663 totalInput!1012))))))

(assert (= (and d!1614961 res!2138824) b!5015730))

(assert (= (and b!5015730 res!2138825) b!5015731))

(assert (= (and b!5015731 res!2138826) b!5015732))

(declare-fun m!6050572 () Bool)

(assert (=> d!1614961 m!6050572))

(declare-fun m!6050574 () Bool)

(assert (=> d!1614961 m!6050574))

(declare-fun m!6050576 () Bool)

(assert (=> b!5015731 m!6050576))

(declare-fun m!6050578 () Bool)

(assert (=> b!5015731 m!6050578))

(assert (=> b!5015731 m!6050576))

(assert (=> b!5015731 m!6050578))

(declare-fun m!6050580 () Bool)

(assert (=> b!5015731 m!6050580))

(assert (=> b!5015113 d!1614961))

(assert (=> b!5015190 d!1614861))

(declare-fun bs!1186930 () Bool)

(declare-fun d!1614963 () Bool)

(assert (= bs!1186930 (and d!1614963 d!1614743)))

(declare-fun lambda!248611 () Int)

(assert (=> bs!1186930 (= lambda!248611 lambda!248602)))

(assert (=> d!1614963 (= (inv!76117 setElem!28487) (forall!13378 (exprs!3734 setElem!28487) lambda!248611))))

(declare-fun bs!1186931 () Bool)

(assert (= bs!1186931 d!1614963))

(declare-fun m!6050582 () Bool)

(assert (=> bs!1186931 m!6050582))

(assert (=> setNonEmpty!28487 d!1614963))

(declare-fun d!1614965 () Bool)

(declare-fun c!856940 () Bool)

(assert (=> d!1614965 (= c!856940 ((_ is Nil!57907) lt!2075314))))

(declare-fun e!3133454 () (InoxSet C!27868))

(assert (=> d!1614965 (= (content!10267 lt!2075314) e!3133454)))

(declare-fun b!5015733 () Bool)

(assert (=> b!5015733 (= e!3133454 ((as const (Array C!27868 Bool)) false))))

(declare-fun b!5015734 () Bool)

(assert (=> b!5015734 (= e!3133454 ((_ map or) (store ((as const (Array C!27868 Bool)) false) (h!64355 lt!2075314) true) (content!10267 (t!370399 lt!2075314))))))

(assert (= (and d!1614965 c!856940) b!5015733))

(assert (= (and d!1614965 (not c!856940)) b!5015734))

(declare-fun m!6050584 () Bool)

(assert (=> b!5015734 m!6050584))

(declare-fun m!6050586 () Bool)

(assert (=> b!5015734 m!6050586))

(assert (=> d!1614725 d!1614965))

(declare-fun d!1614967 () Bool)

(declare-fun c!856941 () Bool)

(assert (=> d!1614967 (= c!856941 ((_ is Nil!57907) (_1!34844 lt!2074993)))))

(declare-fun e!3133455 () (InoxSet C!27868))

(assert (=> d!1614967 (= (content!10267 (_1!34844 lt!2074993)) e!3133455)))

(declare-fun b!5015735 () Bool)

(assert (=> b!5015735 (= e!3133455 ((as const (Array C!27868 Bool)) false))))

(declare-fun b!5015736 () Bool)

(assert (=> b!5015736 (= e!3133455 ((_ map or) (store ((as const (Array C!27868 Bool)) false) (h!64355 (_1!34844 lt!2074993)) true) (content!10267 (t!370399 (_1!34844 lt!2074993)))))))

(assert (= (and d!1614967 c!856941) b!5015735))

(assert (= (and d!1614967 (not c!856941)) b!5015736))

(declare-fun m!6050588 () Bool)

(assert (=> b!5015736 m!6050588))

(assert (=> b!5015736 m!6050480))

(assert (=> d!1614725 d!1614967))

(declare-fun d!1614969 () Bool)

(declare-fun c!856942 () Bool)

(assert (=> d!1614969 (= c!856942 ((_ is Nil!57907) (_2!34844 lt!2074993)))))

(declare-fun e!3133456 () (InoxSet C!27868))

(assert (=> d!1614969 (= (content!10267 (_2!34844 lt!2074993)) e!3133456)))

(declare-fun b!5015737 () Bool)

(assert (=> b!5015737 (= e!3133456 ((as const (Array C!27868 Bool)) false))))

(declare-fun b!5015738 () Bool)

(assert (=> b!5015738 (= e!3133456 ((_ map or) (store ((as const (Array C!27868 Bool)) false) (h!64355 (_2!34844 lt!2074993)) true) (content!10267 (t!370399 (_2!34844 lt!2074993)))))))

(assert (= (and d!1614969 c!856942) b!5015737))

(assert (= (and d!1614969 (not c!856942)) b!5015738))

(declare-fun m!6050590 () Bool)

(assert (=> b!5015738 m!6050590))

(declare-fun m!6050592 () Bool)

(assert (=> b!5015738 m!6050592))

(assert (=> d!1614725 d!1614969))

(assert (=> b!5015214 d!1614859))

(declare-fun d!1614971 () Bool)

(declare-fun e!3133459 () Bool)

(assert (=> d!1614971 e!3133459))

(declare-fun res!2138829 () Bool)

(assert (=> d!1614971 (=> res!2138829 e!3133459)))

(assert (=> d!1614971 (= res!2138829 (= lt!2075006 (_1!34844 lt!2074993)))))

(assert (=> d!1614971 true))

(declare-fun _$93!70 () Unit!149127)

(assert (=> d!1614971 (= (choose!37105 r!12727 lt!2075000 (_1!34844 lt!2074993) lt!2075006) _$93!70)))

(declare-fun b!5015741 () Bool)

(assert (=> b!5015741 (= e!3133459 (not (matchR!6773 r!12727 lt!2075006)))))

(assert (= (and d!1614971 (not res!2138829)) b!5015741))

(assert (=> b!5015741 m!6049558))

(assert (=> d!1614769 d!1614971))

(assert (=> d!1614769 d!1614611))

(declare-fun b!5015744 () Bool)

(declare-fun e!3133462 () Bool)

(assert (=> b!5015744 (= e!3133462 (isPrefix!5362 (tail!9878 (tail!9878 (take!668 lt!2075001 lt!2074995))) (tail!9878 (tail!9878 lt!2075001))))))

(declare-fun b!5015743 () Bool)

(declare-fun res!2138833 () Bool)

(assert (=> b!5015743 (=> (not res!2138833) (not e!3133462))))

(assert (=> b!5015743 (= res!2138833 (= (head!10745 (tail!9878 (take!668 lt!2075001 lt!2074995))) (head!10745 (tail!9878 lt!2075001))))))

(declare-fun b!5015745 () Bool)

(declare-fun e!3133461 () Bool)

(assert (=> b!5015745 (= e!3133461 (>= (size!38500 (tail!9878 lt!2075001)) (size!38500 (tail!9878 (take!668 lt!2075001 lt!2074995)))))))

(declare-fun b!5015742 () Bool)

(declare-fun e!3133460 () Bool)

(assert (=> b!5015742 (= e!3133460 e!3133462)))

(declare-fun res!2138832 () Bool)

(assert (=> b!5015742 (=> (not res!2138832) (not e!3133462))))

(assert (=> b!5015742 (= res!2138832 (not ((_ is Nil!57907) (tail!9878 lt!2075001))))))

(declare-fun d!1614973 () Bool)

(assert (=> d!1614973 e!3133461))

(declare-fun res!2138830 () Bool)

(assert (=> d!1614973 (=> res!2138830 e!3133461)))

(declare-fun lt!2075459 () Bool)

(assert (=> d!1614973 (= res!2138830 (not lt!2075459))))

(assert (=> d!1614973 (= lt!2075459 e!3133460)))

(declare-fun res!2138831 () Bool)

(assert (=> d!1614973 (=> res!2138831 e!3133460)))

(assert (=> d!1614973 (= res!2138831 ((_ is Nil!57907) (tail!9878 (take!668 lt!2075001 lt!2074995))))))

(assert (=> d!1614973 (= (isPrefix!5362 (tail!9878 (take!668 lt!2075001 lt!2074995)) (tail!9878 lt!2075001)) lt!2075459)))

(assert (= (and d!1614973 (not res!2138831)) b!5015742))

(assert (= (and b!5015742 res!2138832) b!5015743))

(assert (= (and b!5015743 res!2138833) b!5015744))

(assert (= (and d!1614973 (not res!2138830)) b!5015745))

(assert (=> b!5015744 m!6049994))

(declare-fun m!6050594 () Bool)

(assert (=> b!5015744 m!6050594))

(assert (=> b!5015744 m!6049996))

(declare-fun m!6050596 () Bool)

(assert (=> b!5015744 m!6050596))

(assert (=> b!5015744 m!6050594))

(assert (=> b!5015744 m!6050596))

(declare-fun m!6050598 () Bool)

(assert (=> b!5015744 m!6050598))

(assert (=> b!5015743 m!6049994))

(declare-fun m!6050600 () Bool)

(assert (=> b!5015743 m!6050600))

(assert (=> b!5015743 m!6049996))

(declare-fun m!6050602 () Bool)

(assert (=> b!5015743 m!6050602))

(assert (=> b!5015745 m!6049996))

(declare-fun m!6050604 () Bool)

(assert (=> b!5015745 m!6050604))

(assert (=> b!5015745 m!6049994))

(declare-fun m!6050606 () Bool)

(assert (=> b!5015745 m!6050606))

(assert (=> b!5015090 d!1614973))

(declare-fun d!1614975 () Bool)

(assert (=> d!1614975 (= (tail!9878 (take!668 lt!2075001 lt!2074995)) (t!370399 (take!668 lt!2075001 lt!2074995)))))

(assert (=> b!5015090 d!1614975))

(declare-fun d!1614977 () Bool)

(assert (=> d!1614977 (= (tail!9878 lt!2075001) (t!370399 lt!2075001))))

(assert (=> b!5015090 d!1614977))

(assert (=> bm!350277 d!1614807))

(declare-fun d!1614979 () Bool)

(declare-fun res!2138838 () Bool)

(declare-fun e!3133467 () Bool)

(assert (=> d!1614979 (=> res!2138838 e!3133467)))

(assert (=> d!1614979 (= res!2138838 ((_ is Nil!57908) (exprs!3734 setElem!28484)))))

(assert (=> d!1614979 (= (forall!13378 (exprs!3734 setElem!28484) lambda!248602) e!3133467)))

(declare-fun b!5015750 () Bool)

(declare-fun e!3133468 () Bool)

(assert (=> b!5015750 (= e!3133467 e!3133468)))

(declare-fun res!2138839 () Bool)

(assert (=> b!5015750 (=> (not res!2138839) (not e!3133468))))

(declare-fun dynLambda!23522 (Int Regex!13809) Bool)

(assert (=> b!5015750 (= res!2138839 (dynLambda!23522 lambda!248602 (h!64356 (exprs!3734 setElem!28484))))))

(declare-fun b!5015751 () Bool)

(assert (=> b!5015751 (= e!3133468 (forall!13378 (t!370400 (exprs!3734 setElem!28484)) lambda!248602))))

(assert (= (and d!1614979 (not res!2138838)) b!5015750))

(assert (= (and b!5015750 res!2138839) b!5015751))

(declare-fun b_lambda!198665 () Bool)

(assert (=> (not b_lambda!198665) (not b!5015750)))

(declare-fun m!6050608 () Bool)

(assert (=> b!5015750 m!6050608))

(declare-fun m!6050610 () Bool)

(assert (=> b!5015751 m!6050610))

(assert (=> d!1614743 d!1614979))

(assert (=> b!5014735 d!1614601))

(declare-fun b!5015753 () Bool)

(declare-fun e!3133469 () List!58031)

(declare-fun e!3133470 () List!58031)

(assert (=> b!5015753 (= e!3133469 e!3133470)))

(declare-fun c!856944 () Bool)

(assert (=> b!5015753 (= c!856944 ((_ is Leaf!25441) (c!856663 (_2!34843 lt!2075011))))))

(declare-fun b!5015755 () Bool)

(assert (=> b!5015755 (= e!3133470 (++!12657 (list!18651 (left!42334 (c!856663 (_2!34843 lt!2075011)))) (list!18651 (right!42664 (c!856663 (_2!34843 lt!2075011))))))))

(declare-fun b!5015754 () Bool)

(assert (=> b!5015754 (= e!3133470 (list!18653 (xs!18654 (c!856663 (_2!34843 lt!2075011)))))))

(declare-fun d!1614981 () Bool)

(declare-fun c!856943 () Bool)

(assert (=> d!1614981 (= c!856943 ((_ is Empty!15328) (c!856663 (_2!34843 lt!2075011))))))

(assert (=> d!1614981 (= (list!18651 (c!856663 (_2!34843 lt!2075011))) e!3133469)))

(declare-fun b!5015752 () Bool)

(assert (=> b!5015752 (= e!3133469 Nil!57907)))

(assert (= (and d!1614981 c!856943) b!5015752))

(assert (= (and d!1614981 (not c!856943)) b!5015753))

(assert (= (and b!5015753 c!856944) b!5015754))

(assert (= (and b!5015753 (not c!856944)) b!5015755))

(declare-fun m!6050612 () Bool)

(assert (=> b!5015755 m!6050612))

(declare-fun m!6050614 () Bool)

(assert (=> b!5015755 m!6050614))

(assert (=> b!5015755 m!6050612))

(assert (=> b!5015755 m!6050614))

(declare-fun m!6050616 () Bool)

(assert (=> b!5015755 m!6050616))

(declare-fun m!6050618 () Bool)

(assert (=> b!5015754 m!6050618))

(assert (=> d!1614635 d!1614981))

(declare-fun d!1614983 () Bool)

(assert (=> d!1614983 (= (isEmpty!31376 lt!2075006) ((_ is Nil!57907) lt!2075006))))

(assert (=> bm!350281 d!1614983))

(declare-fun d!1614985 () Bool)

(assert (=> d!1614985 (= (inv!76123 (xs!18654 (c!856663 totalInput!1012))) (<= (size!38500 (innerList!15416 (xs!18654 (c!856663 totalInput!1012)))) 2147483647))))

(declare-fun bs!1186932 () Bool)

(assert (= bs!1186932 d!1614985))

(declare-fun m!6050620 () Bool)

(assert (=> bs!1186932 m!6050620))

(assert (=> b!5015379 d!1614985))

(declare-fun d!1614987 () Bool)

(assert (=> d!1614987 (= (isEmpty!31376 (tail!9878 (_1!34844 lt!2074993))) ((_ is Nil!57907) (tail!9878 (_1!34844 lt!2074993))))))

(assert (=> b!5015302 d!1614987))

(assert (=> b!5015302 d!1614957))

(declare-fun b!5015768 () Bool)

(declare-fun e!3133476 () Bool)

(declare-fun e!3133475 () Bool)

(assert (=> b!5015768 (= e!3133476 e!3133475)))

(declare-fun res!2138853 () Bool)

(assert (=> b!5015768 (=> (not res!2138853) (not e!3133475))))

(assert (=> b!5015768 (= res!2138853 (<= (- 1) (- (height!2037 (left!42334 (c!856663 input!5597))) (height!2037 (right!42664 (c!856663 input!5597))))))))

(declare-fun b!5015769 () Bool)

(assert (=> b!5015769 (= e!3133475 (not (isEmpty!31378 (right!42664 (c!856663 input!5597)))))))

(declare-fun b!5015770 () Bool)

(declare-fun res!2138854 () Bool)

(assert (=> b!5015770 (=> (not res!2138854) (not e!3133475))))

(assert (=> b!5015770 (= res!2138854 (isBalanced!4279 (left!42334 (c!856663 input!5597))))))

(declare-fun b!5015771 () Bool)

(declare-fun res!2138857 () Bool)

(assert (=> b!5015771 (=> (not res!2138857) (not e!3133475))))

(assert (=> b!5015771 (= res!2138857 (not (isEmpty!31378 (left!42334 (c!856663 input!5597)))))))

(declare-fun d!1614989 () Bool)

(declare-fun res!2138855 () Bool)

(assert (=> d!1614989 (=> res!2138855 e!3133476)))

(assert (=> d!1614989 (= res!2138855 (not ((_ is Node!15328) (c!856663 input!5597))))))

(assert (=> d!1614989 (= (isBalanced!4279 (c!856663 input!5597)) e!3133476)))

(declare-fun b!5015772 () Bool)

(declare-fun res!2138852 () Bool)

(assert (=> b!5015772 (=> (not res!2138852) (not e!3133475))))

(assert (=> b!5015772 (= res!2138852 (isBalanced!4279 (right!42664 (c!856663 input!5597))))))

(declare-fun b!5015773 () Bool)

(declare-fun res!2138856 () Bool)

(assert (=> b!5015773 (=> (not res!2138856) (not e!3133475))))

(assert (=> b!5015773 (= res!2138856 (<= (- (height!2037 (left!42334 (c!856663 input!5597))) (height!2037 (right!42664 (c!856663 input!5597)))) 1))))

(assert (= (and d!1614989 (not res!2138855)) b!5015768))

(assert (= (and b!5015768 res!2138853) b!5015773))

(assert (= (and b!5015773 res!2138856) b!5015770))

(assert (= (and b!5015770 res!2138854) b!5015772))

(assert (= (and b!5015772 res!2138852) b!5015771))

(assert (= (and b!5015771 res!2138857) b!5015769))

(declare-fun m!6050622 () Bool)

(assert (=> b!5015770 m!6050622))

(declare-fun m!6050624 () Bool)

(assert (=> b!5015772 m!6050624))

(declare-fun m!6050626 () Bool)

(assert (=> b!5015771 m!6050626))

(declare-fun m!6050628 () Bool)

(assert (=> b!5015769 m!6050628))

(assert (=> b!5015773 m!6050410))

(assert (=> b!5015773 m!6050412))

(assert (=> b!5015768 m!6050410))

(assert (=> b!5015768 m!6050412))

(assert (=> d!1614615 d!1614989))

(declare-fun d!1614991 () Bool)

(declare-fun c!856945 () Bool)

(assert (=> d!1614991 (= c!856945 ((_ is Nil!57907) lt!2075309))))

(declare-fun e!3133477 () (InoxSet C!27868))

(assert (=> d!1614991 (= (content!10267 lt!2075309) e!3133477)))

(declare-fun b!5015774 () Bool)

(assert (=> b!5015774 (= e!3133477 ((as const (Array C!27868 Bool)) false))))

(declare-fun b!5015775 () Bool)

(assert (=> b!5015775 (= e!3133477 ((_ map or) (store ((as const (Array C!27868 Bool)) false) (h!64355 lt!2075309) true) (content!10267 (t!370399 lt!2075309))))))

(assert (= (and d!1614991 c!856945) b!5015774))

(assert (= (and d!1614991 (not c!856945)) b!5015775))

(declare-fun m!6050630 () Bool)

(assert (=> b!5015775 m!6050630))

(declare-fun m!6050632 () Bool)

(assert (=> b!5015775 m!6050632))

(assert (=> d!1614715 d!1614991))

(declare-fun d!1614993 () Bool)

(declare-fun c!856946 () Bool)

(assert (=> d!1614993 (= c!856946 ((_ is Nil!57907) lt!2075001))))

(declare-fun e!3133478 () (InoxSet C!27868))

(assert (=> d!1614993 (= (content!10267 lt!2075001) e!3133478)))

(declare-fun b!5015776 () Bool)

(assert (=> b!5015776 (= e!3133478 ((as const (Array C!27868 Bool)) false))))

(declare-fun b!5015777 () Bool)

(assert (=> b!5015777 (= e!3133478 ((_ map or) (store ((as const (Array C!27868 Bool)) false) (h!64355 lt!2075001) true) (content!10267 (t!370399 lt!2075001))))))

(assert (= (and d!1614993 c!856946) b!5015776))

(assert (= (and d!1614993 (not c!856946)) b!5015777))

(declare-fun m!6050634 () Bool)

(assert (=> b!5015777 m!6050634))

(assert (=> b!5015777 m!6050332))

(assert (=> d!1614715 d!1614993))

(declare-fun d!1614995 () Bool)

(declare-fun lt!2075460 () Int)

(assert (=> d!1614995 (>= lt!2075460 0)))

(declare-fun e!3133479 () Int)

(assert (=> d!1614995 (= lt!2075460 e!3133479)))

(declare-fun c!856947 () Bool)

(assert (=> d!1614995 (= c!856947 ((_ is Nil!57907) lt!2075310))))

(assert (=> d!1614995 (= (size!38500 lt!2075310) lt!2075460)))

(declare-fun b!5015778 () Bool)

(assert (=> b!5015778 (= e!3133479 0)))

(declare-fun b!5015779 () Bool)

(assert (=> b!5015779 (= e!3133479 (+ 1 (size!38500 (t!370399 lt!2075310))))))

(assert (= (and d!1614995 c!856947) b!5015778))

(assert (= (and d!1614995 (not c!856947)) b!5015779))

(declare-fun m!6050636 () Bool)

(assert (=> b!5015779 m!6050636))

(assert (=> b!5015122 d!1614995))

(declare-fun b!5015782 () Bool)

(declare-fun e!3133482 () Bool)

(assert (=> b!5015782 (= e!3133482 (isPrefix!5362 (tail!9878 Nil!57907) (tail!9878 (++!12657 Nil!57907 lt!2075000))))))

(declare-fun b!5015781 () Bool)

(declare-fun res!2138861 () Bool)

(assert (=> b!5015781 (=> (not res!2138861) (not e!3133482))))

(assert (=> b!5015781 (= res!2138861 (= (head!10745 Nil!57907) (head!10745 (++!12657 Nil!57907 lt!2075000))))))

(declare-fun b!5015783 () Bool)

(declare-fun e!3133481 () Bool)

(assert (=> b!5015783 (= e!3133481 (>= (size!38500 (++!12657 Nil!57907 lt!2075000)) (size!38500 Nil!57907)))))

(declare-fun b!5015780 () Bool)

(declare-fun e!3133480 () Bool)

(assert (=> b!5015780 (= e!3133480 e!3133482)))

(declare-fun res!2138860 () Bool)

(assert (=> b!5015780 (=> (not res!2138860) (not e!3133482))))

(assert (=> b!5015780 (= res!2138860 (not ((_ is Nil!57907) (++!12657 Nil!57907 lt!2075000))))))

(declare-fun d!1614997 () Bool)

(assert (=> d!1614997 e!3133481))

(declare-fun res!2138858 () Bool)

(assert (=> d!1614997 (=> res!2138858 e!3133481)))

(declare-fun lt!2075461 () Bool)

(assert (=> d!1614997 (= res!2138858 (not lt!2075461))))

(assert (=> d!1614997 (= lt!2075461 e!3133480)))

(declare-fun res!2138859 () Bool)

(assert (=> d!1614997 (=> res!2138859 e!3133480)))

(assert (=> d!1614997 (= res!2138859 ((_ is Nil!57907) Nil!57907))))

(assert (=> d!1614997 (= (isPrefix!5362 Nil!57907 (++!12657 Nil!57907 lt!2075000)) lt!2075461)))

(assert (= (and d!1614997 (not res!2138859)) b!5015780))

(assert (= (and b!5015780 res!2138860) b!5015781))

(assert (= (and b!5015781 res!2138861) b!5015782))

(assert (= (and d!1614997 (not res!2138858)) b!5015783))

(declare-fun m!6050638 () Bool)

(assert (=> b!5015782 m!6050638))

(assert (=> b!5015782 m!6049858))

(declare-fun m!6050640 () Bool)

(assert (=> b!5015782 m!6050640))

(assert (=> b!5015782 m!6050638))

(assert (=> b!5015782 m!6050640))

(declare-fun m!6050642 () Bool)

(assert (=> b!5015782 m!6050642))

(declare-fun m!6050644 () Bool)

(assert (=> b!5015781 m!6050644))

(assert (=> b!5015781 m!6049858))

(declare-fun m!6050646 () Bool)

(assert (=> b!5015781 m!6050646))

(assert (=> b!5015783 m!6049858))

(declare-fun m!6050648 () Bool)

(assert (=> b!5015783 m!6050648))

(assert (=> b!5015783 m!6049490))

(assert (=> d!1614659 d!1614997))

(declare-fun d!1614999 () Bool)

(declare-fun lt!2075465 () List!58031)

(assert (=> d!1614999 (= (++!12657 Nil!57907 lt!2075465) lt!2075000)))

(declare-fun e!3133485 () List!58031)

(assert (=> d!1614999 (= lt!2075465 e!3133485)))

(declare-fun c!856950 () Bool)

(assert (=> d!1614999 (= c!856950 ((_ is Cons!57907) Nil!57907))))

(assert (=> d!1614999 (>= (size!38500 lt!2075000) (size!38500 Nil!57907))))

(assert (=> d!1614999 (= (getSuffix!3152 lt!2075000 Nil!57907) lt!2075465)))

(declare-fun b!5015788 () Bool)

(assert (=> b!5015788 (= e!3133485 (getSuffix!3152 (tail!9878 lt!2075000) (t!370399 Nil!57907)))))

(declare-fun b!5015789 () Bool)

(assert (=> b!5015789 (= e!3133485 lt!2075000)))

(assert (= (and d!1614999 c!856950) b!5015788))

(assert (= (and d!1614999 (not c!856950)) b!5015789))

(declare-fun m!6050652 () Bool)

(assert (=> d!1614999 m!6050652))

(assert (=> d!1614999 m!6049502))

(assert (=> d!1614999 m!6049490))

(assert (=> b!5015788 m!6049850))

(assert (=> b!5015788 m!6049850))

(declare-fun m!6050654 () Bool)

(assert (=> b!5015788 m!6050654))

(assert (=> d!1614659 d!1614999))

(declare-fun d!1615005 () Bool)

(declare-fun lostCauseFct!300 (Regex!13809) Bool)

(assert (=> d!1615005 (= (lostCause!1196 r!12727) (lostCauseFct!300 r!12727))))

(declare-fun bs!1186934 () Bool)

(assert (= bs!1186934 d!1615005))

(declare-fun m!6050668 () Bool)

(assert (=> bs!1186934 m!6050668))

(assert (=> d!1614659 d!1615005))

(declare-fun b!5015797 () Bool)

(declare-fun e!3133489 () Bool)

(declare-fun lt!2075467 () List!58031)

(assert (=> b!5015797 (= e!3133489 (or (not (= (_2!34844 lt!2075269) Nil!57907)) (= lt!2075467 (_1!34844 lt!2075269))))))

(declare-fun b!5015796 () Bool)

(declare-fun res!2138867 () Bool)

(assert (=> b!5015796 (=> (not res!2138867) (not e!3133489))))

(assert (=> b!5015796 (= res!2138867 (= (size!38500 lt!2075467) (+ (size!38500 (_1!34844 lt!2075269)) (size!38500 (_2!34844 lt!2075269)))))))

(declare-fun b!5015795 () Bool)

(declare-fun e!3133490 () List!58031)

(assert (=> b!5015795 (= e!3133490 (Cons!57907 (h!64355 (_1!34844 lt!2075269)) (++!12657 (t!370399 (_1!34844 lt!2075269)) (_2!34844 lt!2075269))))))

(declare-fun d!1615009 () Bool)

(assert (=> d!1615009 e!3133489))

(declare-fun res!2138866 () Bool)

(assert (=> d!1615009 (=> (not res!2138866) (not e!3133489))))

(assert (=> d!1615009 (= res!2138866 (= (content!10267 lt!2075467) ((_ map or) (content!10267 (_1!34844 lt!2075269)) (content!10267 (_2!34844 lt!2075269)))))))

(assert (=> d!1615009 (= lt!2075467 e!3133490)))

(declare-fun c!856951 () Bool)

(assert (=> d!1615009 (= c!856951 ((_ is Nil!57907) (_1!34844 lt!2075269)))))

(assert (=> d!1615009 (= (++!12657 (_1!34844 lt!2075269) (_2!34844 lt!2075269)) lt!2075467)))

(declare-fun b!5015794 () Bool)

(assert (=> b!5015794 (= e!3133490 (_2!34844 lt!2075269))))

(assert (= (and d!1615009 c!856951) b!5015794))

(assert (= (and d!1615009 (not c!856951)) b!5015795))

(assert (= (and d!1615009 res!2138866) b!5015796))

(assert (= (and b!5015796 res!2138867) b!5015797))

(declare-fun m!6050670 () Bool)

(assert (=> b!5015796 m!6050670))

(assert (=> b!5015796 m!6049898))

(declare-fun m!6050672 () Bool)

(assert (=> b!5015796 m!6050672))

(declare-fun m!6050674 () Bool)

(assert (=> b!5015795 m!6050674))

(declare-fun m!6050676 () Bool)

(assert (=> d!1615009 m!6050676))

(declare-fun m!6050678 () Bool)

(assert (=> d!1615009 m!6050678))

(declare-fun m!6050680 () Bool)

(assert (=> d!1615009 m!6050680))

(assert (=> d!1614659 d!1615009))

(declare-fun b!5015801 () Bool)

(declare-fun e!3133491 () Bool)

(declare-fun lt!2075468 () List!58031)

(assert (=> b!5015801 (= e!3133491 (or (not (= lt!2075000 Nil!57907)) (= lt!2075468 Nil!57907)))))

(declare-fun b!5015800 () Bool)

(declare-fun res!2138869 () Bool)

(assert (=> b!5015800 (=> (not res!2138869) (not e!3133491))))

(assert (=> b!5015800 (= res!2138869 (= (size!38500 lt!2075468) (+ (size!38500 Nil!57907) (size!38500 lt!2075000))))))

(declare-fun b!5015799 () Bool)

(declare-fun e!3133492 () List!58031)

(assert (=> b!5015799 (= e!3133492 (Cons!57907 (h!64355 Nil!57907) (++!12657 (t!370399 Nil!57907) lt!2075000)))))

(declare-fun d!1615011 () Bool)

(assert (=> d!1615011 e!3133491))

(declare-fun res!2138868 () Bool)

(assert (=> d!1615011 (=> (not res!2138868) (not e!3133491))))

(assert (=> d!1615011 (= res!2138868 (= (content!10267 lt!2075468) ((_ map or) (content!10267 Nil!57907) (content!10267 lt!2075000))))))

(assert (=> d!1615011 (= lt!2075468 e!3133492)))

(declare-fun c!856952 () Bool)

(assert (=> d!1615011 (= c!856952 ((_ is Nil!57907) Nil!57907))))

(assert (=> d!1615011 (= (++!12657 Nil!57907 lt!2075000) lt!2075468)))

(declare-fun b!5015798 () Bool)

(assert (=> b!5015798 (= e!3133492 lt!2075000)))

(assert (= (and d!1615011 c!856952) b!5015798))

(assert (= (and d!1615011 (not c!856952)) b!5015799))

(assert (= (and d!1615011 res!2138868) b!5015800))

(assert (= (and b!5015800 res!2138869) b!5015801))

(declare-fun m!6050682 () Bool)

(assert (=> b!5015800 m!6050682))

(assert (=> b!5015800 m!6049490))

(assert (=> b!5015800 m!6049502))

(declare-fun m!6050684 () Bool)

(assert (=> b!5015799 m!6050684))

(declare-fun m!6050686 () Bool)

(assert (=> d!1615011 m!6050686))

(declare-fun m!6050688 () Bool)

(assert (=> d!1615011 m!6050688))

(declare-fun m!6050690 () Bool)

(assert (=> d!1615011 m!6050690))

(assert (=> d!1614659 d!1615011))

(declare-fun d!1615013 () Bool)

(assert (=> d!1615013 (= lt!2075000 lt!2075274)))

(declare-fun lt!2075471 () Unit!149127)

(declare-fun choose!37110 (List!58031 List!58031 List!58031 List!58031 List!58031) Unit!149127)

(assert (=> d!1615013 (= lt!2075471 (choose!37110 Nil!57907 lt!2075000 Nil!57907 lt!2075274 lt!2075000))))

(assert (=> d!1615013 (isPrefix!5362 Nil!57907 lt!2075000)))

(assert (=> d!1615013 (= (lemmaSamePrefixThenSameSuffix!2566 Nil!57907 lt!2075000 Nil!57907 lt!2075274 lt!2075000) lt!2075471)))

(declare-fun bs!1186936 () Bool)

(assert (= bs!1186936 d!1615013))

(declare-fun m!6050694 () Bool)

(assert (=> bs!1186936 m!6050694))

(declare-fun m!6050696 () Bool)

(assert (=> bs!1186936 m!6050696))

(assert (=> d!1614659 d!1615013))

(declare-fun d!1615017 () Bool)

(assert (=> d!1615017 (isPrefix!5362 Nil!57907 (++!12657 Nil!57907 lt!2075000))))

(declare-fun lt!2075472 () Unit!149127)

(assert (=> d!1615017 (= lt!2075472 (choose!37095 Nil!57907 lt!2075000))))

(assert (=> d!1615017 (= (lemmaConcatTwoListThenFirstIsPrefix!3460 Nil!57907 lt!2075000) lt!2075472)))

(declare-fun bs!1186937 () Bool)

(assert (= bs!1186937 d!1615017))

(assert (=> bs!1186937 m!6049858))

(assert (=> bs!1186937 m!6049858))

(assert (=> bs!1186937 m!6049860))

(declare-fun m!6050698 () Bool)

(assert (=> bs!1186937 m!6050698))

(assert (=> d!1614659 d!1615017))

(assert (=> d!1614659 d!1614611))

(declare-fun b!5015802 () Bool)

(declare-fun e!3133499 () Bool)

(assert (=> b!5015802 (= e!3133499 (= (head!10745 (tail!9878 (_1!34844 lt!2074989))) (c!856664 (derivativeStep!3987 r!12727 (head!10745 (_1!34844 lt!2074989))))))))

(declare-fun b!5015803 () Bool)

(declare-fun e!3133497 () Bool)

(declare-fun lt!2075473 () Bool)

(declare-fun call!350336 () Bool)

(assert (=> b!5015803 (= e!3133497 (= lt!2075473 call!350336))))

(declare-fun b!5015804 () Bool)

(declare-fun e!3133495 () Bool)

(declare-fun e!3133493 () Bool)

(assert (=> b!5015804 (= e!3133495 e!3133493)))

(declare-fun res!2138871 () Bool)

(assert (=> b!5015804 (=> (not res!2138871) (not e!3133493))))

(assert (=> b!5015804 (= res!2138871 (not lt!2075473))))

(declare-fun b!5015805 () Bool)

(declare-fun e!3133494 () Bool)

(assert (=> b!5015805 (= e!3133494 (matchR!6773 (derivativeStep!3987 (derivativeStep!3987 r!12727 (head!10745 (_1!34844 lt!2074989))) (head!10745 (tail!9878 (_1!34844 lt!2074989)))) (tail!9878 (tail!9878 (_1!34844 lt!2074989)))))))

(declare-fun bm!350331 () Bool)

(assert (=> bm!350331 (= call!350336 (isEmpty!31376 (tail!9878 (_1!34844 lt!2074989))))))

(declare-fun b!5015806 () Bool)

(declare-fun e!3133496 () Bool)

(assert (=> b!5015806 (= e!3133493 e!3133496)))

(declare-fun res!2138873 () Bool)

(assert (=> b!5015806 (=> res!2138873 e!3133496)))

(assert (=> b!5015806 (= res!2138873 call!350336)))

(declare-fun b!5015807 () Bool)

(declare-fun e!3133498 () Bool)

(assert (=> b!5015807 (= e!3133497 e!3133498)))

(declare-fun c!856953 () Bool)

(assert (=> b!5015807 (= c!856953 ((_ is EmptyLang!13809) (derivativeStep!3987 r!12727 (head!10745 (_1!34844 lt!2074989)))))))

(declare-fun d!1615019 () Bool)

(assert (=> d!1615019 e!3133497))

(declare-fun c!856954 () Bool)

(assert (=> d!1615019 (= c!856954 ((_ is EmptyExpr!13809) (derivativeStep!3987 r!12727 (head!10745 (_1!34844 lt!2074989)))))))

(assert (=> d!1615019 (= lt!2075473 e!3133494)))

(declare-fun c!856955 () Bool)

(assert (=> d!1615019 (= c!856955 (isEmpty!31376 (tail!9878 (_1!34844 lt!2074989))))))

(assert (=> d!1615019 (validRegex!6106 (derivativeStep!3987 r!12727 (head!10745 (_1!34844 lt!2074989))))))

(assert (=> d!1615019 (= (matchR!6773 (derivativeStep!3987 r!12727 (head!10745 (_1!34844 lt!2074989))) (tail!9878 (_1!34844 lt!2074989))) lt!2075473)))

(declare-fun b!5015808 () Bool)

(assert (=> b!5015808 (= e!3133494 (nullable!4696 (derivativeStep!3987 r!12727 (head!10745 (_1!34844 lt!2074989)))))))

(declare-fun b!5015809 () Bool)

(declare-fun res!2138875 () Bool)

(assert (=> b!5015809 (=> res!2138875 e!3133495)))

(assert (=> b!5015809 (= res!2138875 (not ((_ is ElementMatch!13809) (derivativeStep!3987 r!12727 (head!10745 (_1!34844 lt!2074989))))))))

(assert (=> b!5015809 (= e!3133498 e!3133495)))

(declare-fun b!5015810 () Bool)

(declare-fun res!2138872 () Bool)

(assert (=> b!5015810 (=> res!2138872 e!3133495)))

(assert (=> b!5015810 (= res!2138872 e!3133499)))

(declare-fun res!2138877 () Bool)

(assert (=> b!5015810 (=> (not res!2138877) (not e!3133499))))

(assert (=> b!5015810 (= res!2138877 lt!2075473)))

(declare-fun b!5015811 () Bool)

(declare-fun res!2138876 () Bool)

(assert (=> b!5015811 (=> res!2138876 e!3133496)))

(assert (=> b!5015811 (= res!2138876 (not (isEmpty!31376 (tail!9878 (tail!9878 (_1!34844 lt!2074989))))))))

(declare-fun b!5015812 () Bool)

(declare-fun res!2138874 () Bool)

(assert (=> b!5015812 (=> (not res!2138874) (not e!3133499))))

(assert (=> b!5015812 (= res!2138874 (isEmpty!31376 (tail!9878 (tail!9878 (_1!34844 lt!2074989)))))))

(declare-fun b!5015813 () Bool)

(assert (=> b!5015813 (= e!3133498 (not lt!2075473))))

(declare-fun b!5015814 () Bool)

(assert (=> b!5015814 (= e!3133496 (not (= (head!10745 (tail!9878 (_1!34844 lt!2074989))) (c!856664 (derivativeStep!3987 r!12727 (head!10745 (_1!34844 lt!2074989)))))))))

(declare-fun b!5015815 () Bool)

(declare-fun res!2138870 () Bool)

(assert (=> b!5015815 (=> (not res!2138870) (not e!3133499))))

(assert (=> b!5015815 (= res!2138870 (not call!350336))))

(assert (= (and d!1615019 c!856955) b!5015808))

(assert (= (and d!1615019 (not c!856955)) b!5015805))

(assert (= (and d!1615019 c!856954) b!5015803))

(assert (= (and d!1615019 (not c!856954)) b!5015807))

(assert (= (and b!5015807 c!856953) b!5015813))

(assert (= (and b!5015807 (not c!856953)) b!5015809))

(assert (= (and b!5015809 (not res!2138875)) b!5015810))

(assert (= (and b!5015810 res!2138877) b!5015815))

(assert (= (and b!5015815 res!2138870) b!5015812))

(assert (= (and b!5015812 res!2138874) b!5015802))

(assert (= (and b!5015810 (not res!2138872)) b!5015804))

(assert (= (and b!5015804 res!2138871) b!5015806))

(assert (= (and b!5015806 (not res!2138873)) b!5015811))

(assert (= (and b!5015811 (not res!2138876)) b!5015814))

(assert (= (or b!5015803 b!5015806 b!5015815) bm!350331))

(assert (=> b!5015808 m!6050062))

(declare-fun m!6050700 () Bool)

(assert (=> b!5015808 m!6050700))

(assert (=> b!5015814 m!6050058))

(declare-fun m!6050702 () Bool)

(assert (=> b!5015814 m!6050702))

(assert (=> b!5015812 m!6050058))

(declare-fun m!6050704 () Bool)

(assert (=> b!5015812 m!6050704))

(assert (=> b!5015812 m!6050704))

(declare-fun m!6050706 () Bool)

(assert (=> b!5015812 m!6050706))

(assert (=> bm!350331 m!6050058))

(assert (=> bm!350331 m!6050060))

(assert (=> b!5015802 m!6050058))

(assert (=> b!5015802 m!6050702))

(assert (=> b!5015811 m!6050058))

(assert (=> b!5015811 m!6050704))

(assert (=> b!5015811 m!6050704))

(assert (=> b!5015811 m!6050706))

(assert (=> b!5015805 m!6050058))

(assert (=> b!5015805 m!6050702))

(assert (=> b!5015805 m!6050062))

(assert (=> b!5015805 m!6050702))

(declare-fun m!6050708 () Bool)

(assert (=> b!5015805 m!6050708))

(assert (=> b!5015805 m!6050058))

(assert (=> b!5015805 m!6050704))

(assert (=> b!5015805 m!6050708))

(assert (=> b!5015805 m!6050704))

(declare-fun m!6050710 () Bool)

(assert (=> b!5015805 m!6050710))

(assert (=> d!1615019 m!6050058))

(assert (=> d!1615019 m!6050060))

(assert (=> d!1615019 m!6050062))

(declare-fun m!6050712 () Bool)

(assert (=> d!1615019 m!6050712))

(assert (=> b!5015187 d!1615019))

(declare-fun bm!350332 () Bool)

(declare-fun call!350338 () Regex!13809)

(declare-fun call!350340 () Regex!13809)

(assert (=> bm!350332 (= call!350338 call!350340)))

(declare-fun b!5015816 () Bool)

(declare-fun e!3133500 () Regex!13809)

(declare-fun e!3133502 () Regex!13809)

(assert (=> b!5015816 (= e!3133500 e!3133502)))

(declare-fun c!856960 () Bool)

(assert (=> b!5015816 (= c!856960 ((_ is Star!13809) r!12727))))

(declare-fun b!5015817 () Bool)

(declare-fun e!3133504 () Regex!13809)

(assert (=> b!5015817 (= e!3133504 (ite (= (head!10745 (_1!34844 lt!2074989)) (c!856664 r!12727)) EmptyExpr!13809 EmptyLang!13809))))

(declare-fun d!1615021 () Bool)

(declare-fun lt!2075474 () Regex!13809)

(assert (=> d!1615021 (validRegex!6106 lt!2075474)))

(declare-fun e!3133501 () Regex!13809)

(assert (=> d!1615021 (= lt!2075474 e!3133501)))

(declare-fun c!856958 () Bool)

(assert (=> d!1615021 (= c!856958 (or ((_ is EmptyExpr!13809) r!12727) ((_ is EmptyLang!13809) r!12727)))))

(assert (=> d!1615021 (validRegex!6106 r!12727)))

(assert (=> d!1615021 (= (derivativeStep!3987 r!12727 (head!10745 (_1!34844 lt!2074989))) lt!2075474)))

(declare-fun b!5015818 () Bool)

(assert (=> b!5015818 (= e!3133501 e!3133504)))

(declare-fun c!856956 () Bool)

(assert (=> b!5015818 (= c!856956 ((_ is ElementMatch!13809) r!12727))))

(declare-fun call!350339 () Regex!13809)

(declare-fun b!5015819 () Bool)

(declare-fun e!3133503 () Regex!13809)

(declare-fun call!350337 () Regex!13809)

(assert (=> b!5015819 (= e!3133503 (Union!13809 (Concat!22602 call!350339 (regTwo!28130 r!12727)) call!350337))))

(declare-fun b!5015820 () Bool)

(assert (=> b!5015820 (= e!3133500 (Union!13809 call!350340 call!350339))))

(declare-fun c!856957 () Bool)

(declare-fun c!856959 () Bool)

(declare-fun bm!350333 () Bool)

(assert (=> bm!350333 (= call!350340 (derivativeStep!3987 (ite c!856959 (regOne!28131 r!12727) (ite c!856960 (reg!14138 r!12727) (ite c!856957 (regTwo!28130 r!12727) (regOne!28130 r!12727)))) (head!10745 (_1!34844 lt!2074989))))))

(declare-fun b!5015821 () Bool)

(assert (=> b!5015821 (= e!3133502 (Concat!22602 call!350338 r!12727))))

(declare-fun b!5015822 () Bool)

(assert (=> b!5015822 (= e!3133503 (Union!13809 (Concat!22602 call!350337 (regTwo!28130 r!12727)) EmptyLang!13809))))

(declare-fun b!5015823 () Bool)

(assert (=> b!5015823 (= c!856959 ((_ is Union!13809) r!12727))))

(assert (=> b!5015823 (= e!3133504 e!3133500)))

(declare-fun bm!350334 () Bool)

(assert (=> bm!350334 (= call!350337 call!350338)))

(declare-fun b!5015824 () Bool)

(assert (=> b!5015824 (= c!856957 (nullable!4696 (regOne!28130 r!12727)))))

(assert (=> b!5015824 (= e!3133502 e!3133503)))

(declare-fun bm!350335 () Bool)

(assert (=> bm!350335 (= call!350339 (derivativeStep!3987 (ite c!856959 (regTwo!28131 r!12727) (regOne!28130 r!12727)) (head!10745 (_1!34844 lt!2074989))))))

(declare-fun b!5015825 () Bool)

(assert (=> b!5015825 (= e!3133501 EmptyLang!13809)))

(assert (= (and d!1615021 c!856958) b!5015825))

(assert (= (and d!1615021 (not c!856958)) b!5015818))

(assert (= (and b!5015818 c!856956) b!5015817))

(assert (= (and b!5015818 (not c!856956)) b!5015823))

(assert (= (and b!5015823 c!856959) b!5015820))

(assert (= (and b!5015823 (not c!856959)) b!5015816))

(assert (= (and b!5015816 c!856960) b!5015821))

(assert (= (and b!5015816 (not c!856960)) b!5015824))

(assert (= (and b!5015824 c!856957) b!5015819))

(assert (= (and b!5015824 (not c!856957)) b!5015822))

(assert (= (or b!5015819 b!5015822) bm!350334))

(assert (= (or b!5015821 bm!350334) bm!350332))

(assert (= (or b!5015820 bm!350332) bm!350333))

(assert (= (or b!5015820 b!5015819) bm!350335))

(declare-fun m!6050714 () Bool)

(assert (=> d!1615021 m!6050714))

(assert (=> d!1615021 m!6049528))

(assert (=> bm!350333 m!6050056))

(declare-fun m!6050716 () Bool)

(assert (=> bm!350333 m!6050716))

(assert (=> b!5015824 m!6050276))

(assert (=> bm!350335 m!6050056))

(declare-fun m!6050718 () Bool)

(assert (=> bm!350335 m!6050718))

(assert (=> b!5015187 d!1615021))

(assert (=> b!5015187 d!1614803))

(assert (=> b!5015187 d!1614869))

(declare-fun b!5015826 () Bool)

(declare-fun e!3133506 () Bool)

(declare-fun e!3133505 () Bool)

(assert (=> b!5015826 (= e!3133506 e!3133505)))

(declare-fun res!2138879 () Bool)

(assert (=> b!5015826 (=> (not res!2138879) (not e!3133505))))

(assert (=> b!5015826 (= res!2138879 (<= (- 1) (- (height!2037 (left!42334 (c!856663 totalInput!1012))) (height!2037 (right!42664 (c!856663 totalInput!1012))))))))

(declare-fun b!5015827 () Bool)

(assert (=> b!5015827 (= e!3133505 (not (isEmpty!31378 (right!42664 (c!856663 totalInput!1012)))))))

(declare-fun b!5015828 () Bool)

(declare-fun res!2138880 () Bool)

(assert (=> b!5015828 (=> (not res!2138880) (not e!3133505))))

(assert (=> b!5015828 (= res!2138880 (isBalanced!4279 (left!42334 (c!856663 totalInput!1012))))))

(declare-fun b!5015829 () Bool)

(declare-fun res!2138883 () Bool)

(assert (=> b!5015829 (=> (not res!2138883) (not e!3133505))))

(assert (=> b!5015829 (= res!2138883 (not (isEmpty!31378 (left!42334 (c!856663 totalInput!1012)))))))

(declare-fun d!1615023 () Bool)

(declare-fun res!2138881 () Bool)

(assert (=> d!1615023 (=> res!2138881 e!3133506)))

(assert (=> d!1615023 (= res!2138881 (not ((_ is Node!15328) (c!856663 totalInput!1012))))))

(assert (=> d!1615023 (= (isBalanced!4279 (c!856663 totalInput!1012)) e!3133506)))

(declare-fun b!5015830 () Bool)

(declare-fun res!2138878 () Bool)

(assert (=> b!5015830 (=> (not res!2138878) (not e!3133505))))

(assert (=> b!5015830 (= res!2138878 (isBalanced!4279 (right!42664 (c!856663 totalInput!1012))))))

(declare-fun b!5015831 () Bool)

(declare-fun res!2138882 () Bool)

(assert (=> b!5015831 (=> (not res!2138882) (not e!3133505))))

(assert (=> b!5015831 (= res!2138882 (<= (- (height!2037 (left!42334 (c!856663 totalInput!1012))) (height!2037 (right!42664 (c!856663 totalInput!1012)))) 1))))

(assert (= (and d!1615023 (not res!2138881)) b!5015826))

(assert (= (and b!5015826 res!2138879) b!5015831))

(assert (= (and b!5015831 res!2138882) b!5015828))

(assert (= (and b!5015828 res!2138880) b!5015830))

(assert (= (and b!5015830 res!2138878) b!5015829))

(assert (= (and b!5015829 res!2138883) b!5015827))

(declare-fun m!6050720 () Bool)

(assert (=> b!5015828 m!6050720))

(declare-fun m!6050722 () Bool)

(assert (=> b!5015830 m!6050722))

(declare-fun m!6050724 () Bool)

(assert (=> b!5015829 m!6050724))

(declare-fun m!6050726 () Bool)

(assert (=> b!5015827 m!6050726))

(assert (=> b!5015831 m!6050576))

(assert (=> b!5015831 m!6050578))

(assert (=> b!5015826 m!6050576))

(assert (=> b!5015826 m!6050578))

(assert (=> d!1614617 d!1615023))

(assert (=> d!1614735 d!1614983))

(assert (=> d!1614735 d!1614611))

(declare-fun d!1615025 () Bool)

(declare-fun lt!2075478 () Int)

(assert (=> d!1615025 (>= lt!2075478 0)))

(declare-fun e!3133507 () Int)

(assert (=> d!1615025 (= lt!2075478 e!3133507)))

(declare-fun c!856961 () Bool)

(assert (=> d!1615025 (= c!856961 ((_ is Nil!57907) lt!2075313))))

(assert (=> d!1615025 (= (size!38500 lt!2075313) lt!2075478)))

(declare-fun b!5015832 () Bool)

(assert (=> b!5015832 (= e!3133507 0)))

(declare-fun b!5015833 () Bool)

(assert (=> b!5015833 (= e!3133507 (+ 1 (size!38500 (t!370399 lt!2075313))))))

(assert (= (and d!1615025 c!856961) b!5015832))

(assert (= (and d!1615025 (not c!856961)) b!5015833))

(declare-fun m!6050732 () Bool)

(assert (=> b!5015833 m!6050732))

(assert (=> b!5015148 d!1615025))

(declare-fun d!1615029 () Bool)

(declare-fun c!856962 () Bool)

(assert (=> d!1615029 (= c!856962 (isEmpty!31376 (tail!9878 lt!2075006)))))

(declare-fun e!3133508 () Bool)

(assert (=> d!1615029 (= (matchZipper!577 (derivationStepZipper!640 z!4183 (head!10745 lt!2075006)) (tail!9878 lt!2075006)) e!3133508)))

(declare-fun b!5015834 () Bool)

(assert (=> b!5015834 (= e!3133508 (nullableZipper!891 (derivationStepZipper!640 z!4183 (head!10745 lt!2075006))))))

(declare-fun b!5015835 () Bool)

(assert (=> b!5015835 (= e!3133508 (matchZipper!577 (derivationStepZipper!640 (derivationStepZipper!640 z!4183 (head!10745 lt!2075006)) (head!10745 (tail!9878 lt!2075006))) (tail!9878 (tail!9878 lt!2075006))))))

(assert (= (and d!1615029 c!856962) b!5015834))

(assert (= (and d!1615029 (not c!856962)) b!5015835))

(assert (=> d!1615029 m!6049690))

(assert (=> d!1615029 m!6050074))

(assert (=> b!5015834 m!6049706))

(declare-fun m!6050734 () Bool)

(assert (=> b!5015834 m!6050734))

(assert (=> b!5015835 m!6049690))

(assert (=> b!5015835 m!6050422))

(assert (=> b!5015835 m!6049706))

(assert (=> b!5015835 m!6050422))

(declare-fun m!6050736 () Bool)

(assert (=> b!5015835 m!6050736))

(assert (=> b!5015835 m!6049690))

(assert (=> b!5015835 m!6050416))

(assert (=> b!5015835 m!6050736))

(assert (=> b!5015835 m!6050416))

(declare-fun m!6050738 () Bool)

(assert (=> b!5015835 m!6050738))

(assert (=> b!5014831 d!1615029))

(declare-fun bs!1186939 () Bool)

(declare-fun d!1615031 () Bool)

(assert (= bs!1186939 (and d!1615031 d!1614923)))

(declare-fun lambda!248612 () Int)

(assert (=> bs!1186939 (= (= (head!10745 lt!2075006) (head!10745 (take!668 (drop!2472 lt!2075001 lt!2074995) lt!2075008))) (= lambda!248612 lambda!248609))))

(declare-fun bs!1186940 () Bool)

(assert (= bs!1186940 (and d!1615031 d!1614949)))

(assert (=> bs!1186940 (= (= (head!10745 lt!2075006) (apply!14008 totalInput!1012 lt!2074995)) (= lambda!248612 lambda!248610))))

(assert (=> d!1615031 true))

(assert (=> d!1615031 (= (derivationStepZipper!640 z!4183 (head!10745 lt!2075006)) (flatMap!284 z!4183 lambda!248612))))

(declare-fun bs!1186941 () Bool)

(assert (= bs!1186941 d!1615031))

(declare-fun m!6050740 () Bool)

(assert (=> bs!1186941 m!6050740))

(assert (=> b!5014831 d!1615031))

(assert (=> b!5014831 d!1614829))

(assert (=> b!5014831 d!1614835))

(declare-fun d!1615033 () Bool)

(declare-fun lt!2075479 () Int)

(assert (=> d!1615033 (>= lt!2075479 0)))

(declare-fun e!3133509 () Int)

(assert (=> d!1615033 (= lt!2075479 e!3133509)))

(declare-fun c!856963 () Bool)

(assert (=> d!1615033 (= c!856963 ((_ is Nil!57907) lt!2075314))))

(assert (=> d!1615033 (= (size!38500 lt!2075314) lt!2075479)))

(declare-fun b!5015836 () Bool)

(assert (=> b!5015836 (= e!3133509 0)))

(declare-fun b!5015837 () Bool)

(assert (=> b!5015837 (= e!3133509 (+ 1 (size!38500 (t!370399 lt!2075314))))))

(assert (= (and d!1615033 c!856963) b!5015836))

(assert (= (and d!1615033 (not c!856963)) b!5015837))

(declare-fun m!6050742 () Bool)

(assert (=> b!5015837 m!6050742))

(assert (=> b!5015154 d!1615033))

(assert (=> b!5015154 d!1614731))

(declare-fun d!1615035 () Bool)

(declare-fun lt!2075480 () Int)

(assert (=> d!1615035 (>= lt!2075480 0)))

(declare-fun e!3133510 () Int)

(assert (=> d!1615035 (= lt!2075480 e!3133510)))

(declare-fun c!856964 () Bool)

(assert (=> d!1615035 (= c!856964 ((_ is Nil!57907) (_2!34844 lt!2074993)))))

(assert (=> d!1615035 (= (size!38500 (_2!34844 lt!2074993)) lt!2075480)))

(declare-fun b!5015838 () Bool)

(assert (=> b!5015838 (= e!3133510 0)))

(declare-fun b!5015839 () Bool)

(assert (=> b!5015839 (= e!3133510 (+ 1 (size!38500 (t!370399 (_2!34844 lt!2074993)))))))

(assert (= (and d!1615035 c!856964) b!5015838))

(assert (= (and d!1615035 (not c!856964)) b!5015839))

(declare-fun m!6050744 () Bool)

(assert (=> b!5015839 m!6050744))

(assert (=> b!5015154 d!1615035))

(assert (=> b!5015200 d!1614829))

(assert (=> b!5015015 d!1614913))

(declare-fun b!5015843 () Bool)

(declare-fun e!3133511 () Bool)

(declare-fun lt!2075481 () List!58031)

(assert (=> b!5015843 (= e!3133511 (or (not (= (Cons!57907 lt!2075252 Nil!57907) Nil!57907)) (= lt!2075481 Nil!57907)))))

(declare-fun b!5015842 () Bool)

(declare-fun res!2138885 () Bool)

(assert (=> b!5015842 (=> (not res!2138885) (not e!3133511))))

(assert (=> b!5015842 (= res!2138885 (= (size!38500 lt!2075481) (+ (size!38500 Nil!57907) (size!38500 (Cons!57907 lt!2075252 Nil!57907)))))))

(declare-fun b!5015841 () Bool)

(declare-fun e!3133512 () List!58031)

(assert (=> b!5015841 (= e!3133512 (Cons!57907 (h!64355 Nil!57907) (++!12657 (t!370399 Nil!57907) (Cons!57907 lt!2075252 Nil!57907))))))

(declare-fun d!1615037 () Bool)

(assert (=> d!1615037 e!3133511))

(declare-fun res!2138884 () Bool)

(assert (=> d!1615037 (=> (not res!2138884) (not e!3133511))))

(assert (=> d!1615037 (= res!2138884 (= (content!10267 lt!2075481) ((_ map or) (content!10267 Nil!57907) (content!10267 (Cons!57907 lt!2075252 Nil!57907)))))))

(assert (=> d!1615037 (= lt!2075481 e!3133512)))

(declare-fun c!856965 () Bool)

(assert (=> d!1615037 (= c!856965 ((_ is Nil!57907) Nil!57907))))

(assert (=> d!1615037 (= (++!12657 Nil!57907 (Cons!57907 lt!2075252 Nil!57907)) lt!2075481)))

(declare-fun b!5015840 () Bool)

(assert (=> b!5015840 (= e!3133512 (Cons!57907 lt!2075252 Nil!57907))))

(assert (= (and d!1615037 c!856965) b!5015840))

(assert (= (and d!1615037 (not c!856965)) b!5015841))

(assert (= (and d!1615037 res!2138884) b!5015842))

(assert (= (and b!5015842 res!2138885) b!5015843))

(declare-fun m!6050746 () Bool)

(assert (=> b!5015842 m!6050746))

(assert (=> b!5015842 m!6049490))

(declare-fun m!6050748 () Bool)

(assert (=> b!5015842 m!6050748))

(declare-fun m!6050750 () Bool)

(assert (=> b!5015841 m!6050750))

(declare-fun m!6050752 () Bool)

(assert (=> d!1615037 m!6050752))

(assert (=> d!1615037 m!6050688))

(declare-fun m!6050754 () Bool)

(assert (=> d!1615037 m!6050754))

(assert (=> b!5015015 d!1615037))

(declare-fun b!5015847 () Bool)

(declare-fun e!3133513 () Bool)

(declare-fun lt!2075482 () List!58031)

(assert (=> b!5015847 (= e!3133513 (or (not (= (Cons!57907 (head!10745 lt!2075000) Nil!57907) Nil!57907)) (= lt!2075482 Nil!57907)))))

(declare-fun b!5015846 () Bool)

(declare-fun res!2138887 () Bool)

(assert (=> b!5015846 (=> (not res!2138887) (not e!3133513))))

(assert (=> b!5015846 (= res!2138887 (= (size!38500 lt!2075482) (+ (size!38500 Nil!57907) (size!38500 (Cons!57907 (head!10745 lt!2075000) Nil!57907)))))))

(declare-fun b!5015845 () Bool)

(declare-fun e!3133514 () List!58031)

(assert (=> b!5015845 (= e!3133514 (Cons!57907 (h!64355 Nil!57907) (++!12657 (t!370399 Nil!57907) (Cons!57907 (head!10745 lt!2075000) Nil!57907))))))

(declare-fun d!1615039 () Bool)

(assert (=> d!1615039 e!3133513))

(declare-fun res!2138886 () Bool)

(assert (=> d!1615039 (=> (not res!2138886) (not e!3133513))))

(assert (=> d!1615039 (= res!2138886 (= (content!10267 lt!2075482) ((_ map or) (content!10267 Nil!57907) (content!10267 (Cons!57907 (head!10745 lt!2075000) Nil!57907)))))))

(assert (=> d!1615039 (= lt!2075482 e!3133514)))

(declare-fun c!856966 () Bool)

(assert (=> d!1615039 (= c!856966 ((_ is Nil!57907) Nil!57907))))

(assert (=> d!1615039 (= (++!12657 Nil!57907 (Cons!57907 (head!10745 lt!2075000) Nil!57907)) lt!2075482)))

(declare-fun b!5015844 () Bool)

(assert (=> b!5015844 (= e!3133514 (Cons!57907 (head!10745 lt!2075000) Nil!57907))))

(assert (= (and d!1615039 c!856966) b!5015844))

(assert (= (and d!1615039 (not c!856966)) b!5015845))

(assert (= (and d!1615039 res!2138886) b!5015846))

(assert (= (and b!5015846 res!2138887) b!5015847))

(declare-fun m!6050756 () Bool)

(assert (=> b!5015846 m!6050756))

(assert (=> b!5015846 m!6049490))

(declare-fun m!6050758 () Bool)

(assert (=> b!5015846 m!6050758))

(declare-fun m!6050760 () Bool)

(assert (=> b!5015845 m!6050760))

(declare-fun m!6050762 () Bool)

(assert (=> d!1615039 m!6050762))

(assert (=> d!1615039 m!6050688))

(declare-fun m!6050764 () Bool)

(assert (=> d!1615039 m!6050764))

(assert (=> b!5015015 d!1615039))

(declare-fun d!1615041 () Bool)

(assert (=> d!1615041 (= (head!10745 (getSuffix!3152 lt!2075000 Nil!57907)) (h!64355 (getSuffix!3152 lt!2075000 Nil!57907)))))

(assert (=> b!5015015 d!1615041))

(declare-fun lt!2075483 () List!58031)

(declare-fun e!3133515 () Bool)

(declare-fun b!5015851 () Bool)

(assert (=> b!5015851 (= e!3133515 (or (not (= lt!2075261 Nil!57907)) (= lt!2075483 (++!12657 Nil!57907 (Cons!57907 lt!2075252 Nil!57907)))))))

(declare-fun b!5015850 () Bool)

(declare-fun res!2138889 () Bool)

(assert (=> b!5015850 (=> (not res!2138889) (not e!3133515))))

(assert (=> b!5015850 (= res!2138889 (= (size!38500 lt!2075483) (+ (size!38500 (++!12657 Nil!57907 (Cons!57907 lt!2075252 Nil!57907))) (size!38500 lt!2075261))))))

(declare-fun b!5015849 () Bool)

(declare-fun e!3133516 () List!58031)

(assert (=> b!5015849 (= e!3133516 (Cons!57907 (h!64355 (++!12657 Nil!57907 (Cons!57907 lt!2075252 Nil!57907))) (++!12657 (t!370399 (++!12657 Nil!57907 (Cons!57907 lt!2075252 Nil!57907))) lt!2075261)))))

(declare-fun d!1615043 () Bool)

(assert (=> d!1615043 e!3133515))

(declare-fun res!2138888 () Bool)

(assert (=> d!1615043 (=> (not res!2138888) (not e!3133515))))

(assert (=> d!1615043 (= res!2138888 (= (content!10267 lt!2075483) ((_ map or) (content!10267 (++!12657 Nil!57907 (Cons!57907 lt!2075252 Nil!57907))) (content!10267 lt!2075261))))))

(assert (=> d!1615043 (= lt!2075483 e!3133516)))

(declare-fun c!856967 () Bool)

(assert (=> d!1615043 (= c!856967 ((_ is Nil!57907) (++!12657 Nil!57907 (Cons!57907 lt!2075252 Nil!57907))))))

(assert (=> d!1615043 (= (++!12657 (++!12657 Nil!57907 (Cons!57907 lt!2075252 Nil!57907)) lt!2075261) lt!2075483)))

(declare-fun b!5015848 () Bool)

(assert (=> b!5015848 (= e!3133516 lt!2075261)))

(assert (= (and d!1615043 c!856967) b!5015848))

(assert (= (and d!1615043 (not c!856967)) b!5015849))

(assert (= (and d!1615043 res!2138888) b!5015850))

(assert (= (and b!5015850 res!2138889) b!5015851))

(declare-fun m!6050766 () Bool)

(assert (=> b!5015850 m!6050766))

(assert (=> b!5015850 m!6049882))

(declare-fun m!6050768 () Bool)

(assert (=> b!5015850 m!6050768))

(declare-fun m!6050770 () Bool)

(assert (=> b!5015850 m!6050770))

(declare-fun m!6050772 () Bool)

(assert (=> b!5015849 m!6050772))

(declare-fun m!6050774 () Bool)

(assert (=> d!1615043 m!6050774))

(assert (=> d!1615043 m!6049882))

(declare-fun m!6050776 () Bool)

(assert (=> d!1615043 m!6050776))

(declare-fun m!6050778 () Bool)

(assert (=> d!1615043 m!6050778))

(assert (=> b!5015015 d!1615043))

(assert (=> b!5015015 d!1614655))

(declare-fun b!5015859 () Bool)

(declare-fun e!3133519 () Bool)

(declare-fun lt!2075486 () List!58031)

(assert (=> b!5015859 (= e!3133519 (or (not (= (Cons!57907 (head!10745 (getSuffix!3152 lt!2075000 Nil!57907)) Nil!57907) Nil!57907)) (= lt!2075486 Nil!57907)))))

(declare-fun b!5015858 () Bool)

(declare-fun res!2138891 () Bool)

(assert (=> b!5015858 (=> (not res!2138891) (not e!3133519))))

(assert (=> b!5015858 (= res!2138891 (= (size!38500 lt!2075486) (+ (size!38500 Nil!57907) (size!38500 (Cons!57907 (head!10745 (getSuffix!3152 lt!2075000 Nil!57907)) Nil!57907)))))))

(declare-fun b!5015857 () Bool)

(declare-fun e!3133520 () List!58031)

(assert (=> b!5015857 (= e!3133520 (Cons!57907 (h!64355 Nil!57907) (++!12657 (t!370399 Nil!57907) (Cons!57907 (head!10745 (getSuffix!3152 lt!2075000 Nil!57907)) Nil!57907))))))

(declare-fun d!1615045 () Bool)

(assert (=> d!1615045 e!3133519))

(declare-fun res!2138890 () Bool)

(assert (=> d!1615045 (=> (not res!2138890) (not e!3133519))))

(assert (=> d!1615045 (= res!2138890 (= (content!10267 lt!2075486) ((_ map or) (content!10267 Nil!57907) (content!10267 (Cons!57907 (head!10745 (getSuffix!3152 lt!2075000 Nil!57907)) Nil!57907)))))))

(assert (=> d!1615045 (= lt!2075486 e!3133520)))

(declare-fun c!856970 () Bool)

(assert (=> d!1615045 (= c!856970 ((_ is Nil!57907) Nil!57907))))

(assert (=> d!1615045 (= (++!12657 Nil!57907 (Cons!57907 (head!10745 (getSuffix!3152 lt!2075000 Nil!57907)) Nil!57907)) lt!2075486)))

(declare-fun b!5015856 () Bool)

(assert (=> b!5015856 (= e!3133520 (Cons!57907 (head!10745 (getSuffix!3152 lt!2075000 Nil!57907)) Nil!57907))))

(assert (= (and d!1615045 c!856970) b!5015856))

(assert (= (and d!1615045 (not c!856970)) b!5015857))

(assert (= (and d!1615045 res!2138890) b!5015858))

(assert (= (and b!5015858 res!2138891) b!5015859))

(declare-fun m!6050780 () Bool)

(assert (=> b!5015858 m!6050780))

(assert (=> b!5015858 m!6049490))

(declare-fun m!6050782 () Bool)

(assert (=> b!5015858 m!6050782))

(declare-fun m!6050784 () Bool)

(assert (=> b!5015857 m!6050784))

(declare-fun m!6050786 () Bool)

(assert (=> d!1615045 m!6050786))

(assert (=> d!1615045 m!6050688))

(declare-fun m!6050788 () Bool)

(assert (=> d!1615045 m!6050788))

(assert (=> b!5015015 d!1615045))

(assert (=> b!5015015 d!1614999))

(declare-fun d!1615047 () Bool)

(assert (=> d!1615047 (<= (size!38500 Nil!57907) (size!38500 lt!2075000))))

(declare-fun lt!2075490 () Unit!149127)

(declare-fun choose!37112 (List!58031 List!58031) Unit!149127)

(assert (=> d!1615047 (= lt!2075490 (choose!37112 Nil!57907 lt!2075000))))

(assert (=> d!1615047 (isPrefix!5362 Nil!57907 lt!2075000)))

(assert (=> d!1615047 (= (lemmaIsPrefixThenSmallerEqSize!823 Nil!57907 lt!2075000) lt!2075490)))

(declare-fun bs!1186942 () Bool)

(assert (= bs!1186942 d!1615047))

(assert (=> bs!1186942 m!6049490))

(assert (=> bs!1186942 m!6049502))

(declare-fun m!6050790 () Bool)

(assert (=> bs!1186942 m!6050790))

(assert (=> bs!1186942 m!6050696))

(assert (=> b!5015015 d!1615047))

(declare-fun d!1615049 () Bool)

(assert (=> d!1615049 (= (head!10745 lt!2075000) (h!64355 lt!2075000))))

(assert (=> b!5015015 d!1615049))

(declare-fun d!1615051 () Bool)

(assert (=> d!1615051 (isPrefix!5362 (++!12657 Nil!57907 (Cons!57907 (head!10745 (getSuffix!3152 lt!2075000 Nil!57907)) Nil!57907)) lt!2075000)))

(declare-fun lt!2075495 () Unit!149127)

(declare-fun choose!37113 (List!58031 List!58031) Unit!149127)

(assert (=> d!1615051 (= lt!2075495 (choose!37113 Nil!57907 lt!2075000))))

(assert (=> d!1615051 (isPrefix!5362 Nil!57907 lt!2075000)))

(assert (=> d!1615051 (= (lemmaAddHeadSuffixToPrefixStillPrefix!897 Nil!57907 lt!2075000) lt!2075495)))

(declare-fun bs!1186943 () Bool)

(assert (= bs!1186943 d!1615051))

(assert (=> bs!1186943 m!6049866))

(assert (=> bs!1186943 m!6049874))

(assert (=> bs!1186943 m!6049880))

(assert (=> bs!1186943 m!6050696))

(assert (=> bs!1186943 m!6049880))

(assert (=> bs!1186943 m!6049892))

(assert (=> bs!1186943 m!6049866))

(declare-fun m!6050818 () Bool)

(assert (=> bs!1186943 m!6050818))

(assert (=> b!5015015 d!1615051))

(declare-fun d!1615059 () Bool)

(assert (=> d!1615059 (= (++!12657 (++!12657 Nil!57907 (Cons!57907 lt!2075252 Nil!57907)) lt!2075261) lt!2075000)))

(declare-fun lt!2075498 () Unit!149127)

(declare-fun choose!37114 (List!58031 C!27868 List!58031 List!58031) Unit!149127)

(assert (=> d!1615059 (= lt!2075498 (choose!37114 Nil!57907 lt!2075252 lt!2075261 lt!2075000))))

(assert (=> d!1615059 (= (++!12657 Nil!57907 (Cons!57907 lt!2075252 lt!2075261)) lt!2075000)))

(assert (=> d!1615059 (= (lemmaMoveElementToOtherListKeepsConcatEq!1508 Nil!57907 lt!2075252 lt!2075261 lt!2075000) lt!2075498)))

(declare-fun bs!1186944 () Bool)

(assert (= bs!1186944 d!1615059))

(assert (=> bs!1186944 m!6049882))

(assert (=> bs!1186944 m!6049882))

(assert (=> bs!1186944 m!6049888))

(declare-fun m!6050820 () Bool)

(assert (=> bs!1186944 m!6050820))

(declare-fun m!6050822 () Bool)

(assert (=> bs!1186944 m!6050822))

(assert (=> b!5015015 d!1615059))

(assert (=> b!5015015 d!1614709))

(declare-fun b!5015872 () Bool)

(declare-fun e!3133528 () Bool)

(assert (=> b!5015872 (= e!3133528 (isPrefix!5362 (tail!9878 (++!12657 Nil!57907 (Cons!57907 (head!10745 (getSuffix!3152 lt!2075000 Nil!57907)) Nil!57907))) (tail!9878 lt!2075000)))))

(declare-fun b!5015871 () Bool)

(declare-fun res!2138899 () Bool)

(assert (=> b!5015871 (=> (not res!2138899) (not e!3133528))))

(assert (=> b!5015871 (= res!2138899 (= (head!10745 (++!12657 Nil!57907 (Cons!57907 (head!10745 (getSuffix!3152 lt!2075000 Nil!57907)) Nil!57907))) (head!10745 lt!2075000)))))

(declare-fun b!5015873 () Bool)

(declare-fun e!3133527 () Bool)

(assert (=> b!5015873 (= e!3133527 (>= (size!38500 lt!2075000) (size!38500 (++!12657 Nil!57907 (Cons!57907 (head!10745 (getSuffix!3152 lt!2075000 Nil!57907)) Nil!57907)))))))

(declare-fun b!5015870 () Bool)

(declare-fun e!3133526 () Bool)

(assert (=> b!5015870 (= e!3133526 e!3133528)))

(declare-fun res!2138898 () Bool)

(assert (=> b!5015870 (=> (not res!2138898) (not e!3133528))))

(assert (=> b!5015870 (= res!2138898 (not ((_ is Nil!57907) lt!2075000)))))

(declare-fun d!1615061 () Bool)

(assert (=> d!1615061 e!3133527))

(declare-fun res!2138896 () Bool)

(assert (=> d!1615061 (=> res!2138896 e!3133527)))

(declare-fun lt!2075499 () Bool)

(assert (=> d!1615061 (= res!2138896 (not lt!2075499))))

(assert (=> d!1615061 (= lt!2075499 e!3133526)))

(declare-fun res!2138897 () Bool)

(assert (=> d!1615061 (=> res!2138897 e!3133526)))

(assert (=> d!1615061 (= res!2138897 ((_ is Nil!57907) (++!12657 Nil!57907 (Cons!57907 (head!10745 (getSuffix!3152 lt!2075000 Nil!57907)) Nil!57907))))))

(assert (=> d!1615061 (= (isPrefix!5362 (++!12657 Nil!57907 (Cons!57907 (head!10745 (getSuffix!3152 lt!2075000 Nil!57907)) Nil!57907)) lt!2075000) lt!2075499)))

(assert (= (and d!1615061 (not res!2138897)) b!5015870))

(assert (= (and b!5015870 res!2138898) b!5015871))

(assert (= (and b!5015871 res!2138899) b!5015872))

(assert (= (and d!1615061 (not res!2138896)) b!5015873))

(assert (=> b!5015872 m!6049880))

(declare-fun m!6050824 () Bool)

(assert (=> b!5015872 m!6050824))

(assert (=> b!5015872 m!6049850))

(assert (=> b!5015872 m!6050824))

(assert (=> b!5015872 m!6049850))

(declare-fun m!6050826 () Bool)

(assert (=> b!5015872 m!6050826))

(assert (=> b!5015871 m!6049880))

(declare-fun m!6050828 () Bool)

(assert (=> b!5015871 m!6050828))

(assert (=> b!5015871 m!6049878))

(assert (=> b!5015873 m!6049502))

(assert (=> b!5015873 m!6049880))

(declare-fun m!6050830 () Bool)

(assert (=> b!5015873 m!6050830))

(assert (=> b!5015015 d!1615061))

(declare-fun b!5015874 () Bool)

(declare-fun e!3133529 () List!58031)

(assert (=> b!5015874 (= e!3133529 Nil!57907)))

(declare-fun b!5015875 () Bool)

(declare-fun e!3133532 () Int)

(assert (=> b!5015875 (= e!3133532 (size!38500 (t!370399 lt!2075001)))))

(declare-fun b!5015876 () Bool)

(declare-fun e!3133531 () Int)

(assert (=> b!5015876 (= e!3133531 0)))

(declare-fun b!5015877 () Bool)

(assert (=> b!5015877 (= e!3133532 (- lt!2074995 1))))

(declare-fun b!5015878 () Bool)

(declare-fun e!3133530 () Bool)

(declare-fun lt!2075500 () List!58031)

(assert (=> b!5015878 (= e!3133530 (= (size!38500 lt!2075500) e!3133531))))

(declare-fun c!856976 () Bool)

(assert (=> b!5015878 (= c!856976 (<= (- lt!2074995 1) 0))))

(declare-fun d!1615063 () Bool)

(assert (=> d!1615063 e!3133530))

(declare-fun res!2138900 () Bool)

(assert (=> d!1615063 (=> (not res!2138900) (not e!3133530))))

(assert (=> d!1615063 (= res!2138900 (= ((_ map implies) (content!10267 lt!2075500) (content!10267 (t!370399 lt!2075001))) ((as const (InoxSet C!27868)) true)))))

(assert (=> d!1615063 (= lt!2075500 e!3133529)))

(declare-fun c!856974 () Bool)

(assert (=> d!1615063 (= c!856974 (or ((_ is Nil!57907) (t!370399 lt!2075001)) (<= (- lt!2074995 1) 0)))))

(assert (=> d!1615063 (= (take!668 (t!370399 lt!2075001) (- lt!2074995 1)) lt!2075500)))

(declare-fun b!5015879 () Bool)

(assert (=> b!5015879 (= e!3133529 (Cons!57907 (h!64355 (t!370399 lt!2075001)) (take!668 (t!370399 (t!370399 lt!2075001)) (- (- lt!2074995 1) 1))))))

(declare-fun b!5015880 () Bool)

(assert (=> b!5015880 (= e!3133531 e!3133532)))

(declare-fun c!856975 () Bool)

(assert (=> b!5015880 (= c!856975 (>= (- lt!2074995 1) (size!38500 (t!370399 lt!2075001))))))

(assert (= (and d!1615063 c!856974) b!5015874))

(assert (= (and d!1615063 (not c!856974)) b!5015879))

(assert (= (and d!1615063 res!2138900) b!5015878))

(assert (= (and b!5015878 c!856976) b!5015876))

(assert (= (and b!5015878 (not c!856976)) b!5015880))

(assert (= (and b!5015880 c!856975) b!5015875))

(assert (= (and b!5015880 (not c!856975)) b!5015877))

(declare-fun m!6050832 () Bool)

(assert (=> b!5015879 m!6050832))

(assert (=> b!5015875 m!6050254))

(declare-fun m!6050834 () Bool)

(assert (=> b!5015878 m!6050834))

(declare-fun m!6050836 () Bool)

(assert (=> d!1615063 m!6050836))

(assert (=> d!1615063 m!6050332))

(assert (=> b!5015880 m!6050254))

(assert (=> b!5015111 d!1615063))

(declare-fun d!1615065 () Bool)

(declare-fun c!856977 () Bool)

(assert (=> d!1615065 (= c!856977 (isEmpty!31376 (tail!9878 (_1!34844 lt!2074993))))))

(declare-fun e!3133533 () Bool)

(assert (=> d!1615065 (= (matchZipper!577 (derivationStepZipper!640 z!4183 (head!10745 (_1!34844 lt!2074993))) (tail!9878 (_1!34844 lt!2074993))) e!3133533)))

(declare-fun b!5015881 () Bool)

(assert (=> b!5015881 (= e!3133533 (nullableZipper!891 (derivationStepZipper!640 z!4183 (head!10745 (_1!34844 lt!2074993)))))))

(declare-fun b!5015882 () Bool)

(assert (=> b!5015882 (= e!3133533 (matchZipper!577 (derivationStepZipper!640 (derivationStepZipper!640 z!4183 (head!10745 (_1!34844 lt!2074993))) (head!10745 (tail!9878 (_1!34844 lt!2074993)))) (tail!9878 (tail!9878 (_1!34844 lt!2074993)))))))

(assert (= (and d!1615065 c!856977) b!5015881))

(assert (= (and d!1615065 (not c!856977)) b!5015882))

(assert (=> d!1615065 m!6049974))

(assert (=> d!1615065 m!6050180))

(assert (=> b!5015881 m!6050084))

(declare-fun m!6050838 () Bool)

(assert (=> b!5015881 m!6050838))

(assert (=> b!5015882 m!6049974))

(assert (=> b!5015882 m!6050564))

(assert (=> b!5015882 m!6050084))

(assert (=> b!5015882 m!6050564))

(declare-fun m!6050840 () Bool)

(assert (=> b!5015882 m!6050840))

(assert (=> b!5015882 m!6049974))

(assert (=> b!5015882 m!6050558))

(assert (=> b!5015882 m!6050840))

(assert (=> b!5015882 m!6050558))

(declare-fun m!6050842 () Bool)

(assert (=> b!5015882 m!6050842))

(assert (=> b!5015215 d!1615065))

(declare-fun bs!1186945 () Bool)

(declare-fun d!1615067 () Bool)

(assert (= bs!1186945 (and d!1615067 d!1614923)))

(declare-fun lambda!248613 () Int)

(assert (=> bs!1186945 (= (= (head!10745 (_1!34844 lt!2074993)) (head!10745 (take!668 (drop!2472 lt!2075001 lt!2074995) lt!2075008))) (= lambda!248613 lambda!248609))))

(declare-fun bs!1186946 () Bool)

(assert (= bs!1186946 (and d!1615067 d!1614949)))

(assert (=> bs!1186946 (= (= (head!10745 (_1!34844 lt!2074993)) (apply!14008 totalInput!1012 lt!2074995)) (= lambda!248613 lambda!248610))))

(declare-fun bs!1186947 () Bool)

(assert (= bs!1186947 (and d!1615067 d!1615031)))

(assert (=> bs!1186947 (= (= (head!10745 (_1!34844 lt!2074993)) (head!10745 lt!2075006)) (= lambda!248613 lambda!248612))))

(assert (=> d!1615067 true))

(assert (=> d!1615067 (= (derivationStepZipper!640 z!4183 (head!10745 (_1!34844 lt!2074993))) (flatMap!284 z!4183 lambda!248613))))

(declare-fun bs!1186948 () Bool)

(assert (= bs!1186948 d!1615067))

(declare-fun m!6050844 () Bool)

(assert (=> bs!1186948 m!6050844))

(assert (=> b!5015215 d!1615067))

(assert (=> b!5015215 d!1614863))

(assert (=> b!5015215 d!1614957))

(assert (=> b!5015212 d!1614829))

(declare-fun d!1615069 () Bool)

(declare-fun lt!2075501 () Int)

(assert (=> d!1615069 (>= lt!2075501 0)))

(declare-fun e!3133534 () Int)

(assert (=> d!1615069 (= lt!2075501 e!3133534)))

(declare-fun c!856978 () Bool)

(assert (=> d!1615069 (= c!856978 ((_ is Nil!57907) lt!2075013))))

(assert (=> d!1615069 (= (size!38500 lt!2075013) lt!2075501)))

(declare-fun b!5015883 () Bool)

(assert (=> b!5015883 (= e!3133534 0)))

(declare-fun b!5015884 () Bool)

(assert (=> b!5015884 (= e!3133534 (+ 1 (size!38500 (t!370399 lt!2075013))))))

(assert (= (and d!1615069 c!856978) b!5015883))

(assert (= (and d!1615069 (not c!856978)) b!5015884))

(declare-fun m!6050846 () Bool)

(assert (=> b!5015884 m!6050846))

(assert (=> b!5015082 d!1615069))

(assert (=> b!5015082 d!1614731))

(declare-fun d!1615071 () Bool)

(assert (=> d!1615071 (= (inv!76123 (xs!18654 (c!856663 input!5597))) (<= (size!38500 (innerList!15416 (xs!18654 (c!856663 input!5597)))) 2147483647))))

(declare-fun bs!1186949 () Bool)

(assert (= bs!1186949 d!1615071))

(declare-fun m!6050848 () Bool)

(assert (=> bs!1186949 m!6050848))

(assert (=> b!5015335 d!1615071))

(declare-fun b!5015888 () Bool)

(declare-fun lt!2075502 () List!58031)

(declare-fun e!3133535 () Bool)

(assert (=> b!5015888 (= e!3133535 (or (not (= lt!2075014 Nil!57907)) (= lt!2075502 (t!370399 lt!2075006))))))

(declare-fun b!5015887 () Bool)

(declare-fun res!2138902 () Bool)

(assert (=> b!5015887 (=> (not res!2138902) (not e!3133535))))

(assert (=> b!5015887 (= res!2138902 (= (size!38500 lt!2075502) (+ (size!38500 (t!370399 lt!2075006)) (size!38500 lt!2075014))))))

(declare-fun b!5015886 () Bool)

(declare-fun e!3133536 () List!58031)

(assert (=> b!5015886 (= e!3133536 (Cons!57907 (h!64355 (t!370399 lt!2075006)) (++!12657 (t!370399 (t!370399 lt!2075006)) lt!2075014)))))

(declare-fun d!1615073 () Bool)

(assert (=> d!1615073 e!3133535))

(declare-fun res!2138901 () Bool)

(assert (=> d!1615073 (=> (not res!2138901) (not e!3133535))))

(assert (=> d!1615073 (= res!2138901 (= (content!10267 lt!2075502) ((_ map or) (content!10267 (t!370399 lt!2075006)) (content!10267 lt!2075014))))))

(assert (=> d!1615073 (= lt!2075502 e!3133536)))

(declare-fun c!856979 () Bool)

(assert (=> d!1615073 (= c!856979 ((_ is Nil!57907) (t!370399 lt!2075006)))))

(assert (=> d!1615073 (= (++!12657 (t!370399 lt!2075006) lt!2075014) lt!2075502)))

(declare-fun b!5015885 () Bool)

(assert (=> b!5015885 (= e!3133536 lt!2075014)))

(assert (= (and d!1615073 c!856979) b!5015885))

(assert (= (and d!1615073 (not c!856979)) b!5015886))

(assert (= (and d!1615073 res!2138901) b!5015887))

(assert (= (and b!5015887 res!2138902) b!5015888))

(declare-fun m!6050850 () Bool)

(assert (=> b!5015887 m!6050850))

(assert (=> b!5015887 m!6050250))

(assert (=> b!5015887 m!6049664))

(declare-fun m!6050852 () Bool)

(assert (=> b!5015886 m!6050852))

(declare-fun m!6050854 () Bool)

(assert (=> d!1615073 m!6050854))

(assert (=> d!1615073 m!6050320))

(assert (=> d!1615073 m!6049672))

(assert (=> b!5014808 d!1615073))

(declare-fun d!1615077 () Bool)

(declare-fun res!2138903 () Bool)

(declare-fun e!3133537 () Bool)

(assert (=> d!1615077 (=> (not res!2138903) (not e!3133537))))

(assert (=> d!1615077 (= res!2138903 (<= (size!38500 (list!18653 (xs!18654 (c!856663 input!5597)))) 512))))

(assert (=> d!1615077 (= (inv!76120 (c!856663 input!5597)) e!3133537)))

(declare-fun b!5015889 () Bool)

(declare-fun res!2138904 () Bool)

(assert (=> b!5015889 (=> (not res!2138904) (not e!3133537))))

(assert (=> b!5015889 (= res!2138904 (= (csize!30887 (c!856663 input!5597)) (size!38500 (list!18653 (xs!18654 (c!856663 input!5597))))))))

(declare-fun b!5015890 () Bool)

(assert (=> b!5015890 (= e!3133537 (and (> (csize!30887 (c!856663 input!5597)) 0) (<= (csize!30887 (c!856663 input!5597)) 512)))))

(assert (= (and d!1615077 res!2138903) b!5015889))

(assert (= (and b!5015889 res!2138904) b!5015890))

(assert (=> d!1615077 m!6050462))

(assert (=> d!1615077 m!6050462))

(declare-fun m!6050856 () Bool)

(assert (=> d!1615077 m!6050856))

(assert (=> b!5015889 m!6050462))

(assert (=> b!5015889 m!6050462))

(assert (=> b!5015889 m!6050856))

(assert (=> b!5014753 d!1615077))

(assert (=> d!1614739 d!1614609))

(assert (=> b!5015077 d!1614637))

(declare-fun d!1615079 () Bool)

(declare-fun lt!2075503 () Int)

(assert (=> d!1615079 (>= lt!2075503 0)))

(declare-fun e!3133538 () Int)

(assert (=> d!1615079 (= lt!2075503 e!3133538)))

(declare-fun c!856980 () Bool)

(assert (=> d!1615079 (= c!856980 ((_ is Nil!57907) (list!18650 totalInput!1012)))))

(assert (=> d!1615079 (= (size!38500 (list!18650 totalInput!1012)) lt!2075503)))

(declare-fun b!5015891 () Bool)

(assert (=> b!5015891 (= e!3133538 0)))

(declare-fun b!5015892 () Bool)

(assert (=> b!5015892 (= e!3133538 (+ 1 (size!38500 (t!370399 (list!18650 totalInput!1012)))))))

(assert (= (and d!1615079 c!856980) b!5015891))

(assert (= (and d!1615079 (not c!856980)) b!5015892))

(declare-fun m!6050858 () Bool)

(assert (=> b!5015892 m!6050858))

(assert (=> d!1614637 d!1615079))

(assert (=> d!1614637 d!1614605))

(declare-fun d!1615081 () Bool)

(declare-fun lt!2075504 () Int)

(assert (=> d!1615081 (= lt!2075504 (size!38500 (list!18651 (c!856663 totalInput!1012))))))

(assert (=> d!1615081 (= lt!2075504 (ite ((_ is Empty!15328) (c!856663 totalInput!1012)) 0 (ite ((_ is Leaf!25441) (c!856663 totalInput!1012)) (csize!30887 (c!856663 totalInput!1012)) (csize!30886 (c!856663 totalInput!1012)))))))

(assert (=> d!1615081 (= (size!38502 (c!856663 totalInput!1012)) lt!2075504)))

(declare-fun bs!1186951 () Bool)

(assert (= bs!1186951 d!1615081))

(assert (=> bs!1186951 m!6049586))

(assert (=> bs!1186951 m!6049586))

(declare-fun m!6050862 () Bool)

(assert (=> bs!1186951 m!6050862))

(assert (=> d!1614637 d!1615081))

(declare-fun bs!1186953 () Bool)

(declare-fun d!1615083 () Bool)

(assert (= bs!1186953 (and d!1615083 d!1614793)))

(declare-fun lambda!248626 () Int)

(assert (=> bs!1186953 (not (= lambda!248626 lambda!248605))))

(declare-fun bs!1186954 () Bool)

(assert (= bs!1186954 (and d!1615083 d!1614859)))

(assert (=> bs!1186954 (not (= lambda!248626 lambda!248606))))

(declare-fun bs!1186955 () Bool)

(declare-fun b!5015927 () Bool)

(assert (= bs!1186955 (and b!5015927 d!1614793)))

(declare-fun lambda!248627 () Int)

(assert (=> bs!1186955 (not (= lambda!248627 lambda!248605))))

(declare-fun bs!1186956 () Bool)

(assert (= bs!1186956 (and b!5015927 d!1614859)))

(assert (=> bs!1186956 (not (= lambda!248627 lambda!248606))))

(declare-fun bs!1186957 () Bool)

(assert (= bs!1186957 (and b!5015927 d!1615083)))

(assert (=> bs!1186957 (not (= lambda!248627 lambda!248626))))

(declare-fun bs!1186958 () Bool)

(declare-fun b!5015928 () Bool)

(assert (= bs!1186958 (and b!5015928 d!1614793)))

(declare-fun lambda!248628 () Int)

(assert (=> bs!1186958 (not (= lambda!248628 lambda!248605))))

(declare-fun bs!1186959 () Bool)

(assert (= bs!1186959 (and b!5015928 d!1614859)))

(assert (=> bs!1186959 (not (= lambda!248628 lambda!248606))))

(declare-fun bs!1186960 () Bool)

(assert (= bs!1186960 (and b!5015928 d!1615083)))

(assert (=> bs!1186960 (not (= lambda!248628 lambda!248626))))

(declare-fun bs!1186961 () Bool)

(assert (= bs!1186961 (and b!5015928 b!5015927)))

(assert (=> bs!1186961 (= lambda!248628 lambda!248627)))

(declare-fun bm!350342 () Bool)

(declare-fun call!350347 () List!58033)

(assert (=> bm!350342 (= call!350347 (toList!8094 z!4183))))

(declare-fun e!3133560 () Unit!149127)

(declare-fun Unit!149141 () Unit!149127)

(assert (=> b!5015927 (= e!3133560 Unit!149141)))

(declare-fun lt!2075527 () List!58033)

(assert (=> b!5015927 (= lt!2075527 call!350347)))

(declare-fun lt!2075524 () Unit!149127)

(declare-fun lemmaNotForallThenExists!252 (List!58033 Int) Unit!149127)

(assert (=> b!5015927 (= lt!2075524 (lemmaNotForallThenExists!252 lt!2075527 lambda!248626))))

(declare-fun call!350346 () Bool)

(assert (=> b!5015927 call!350346))

(declare-fun lt!2075531 () Unit!149127)

(assert (=> b!5015927 (= lt!2075531 lt!2075524)))

(declare-fun lt!2075530 () Bool)

(declare-datatypes ((Option!14582 0))(
  ( (None!14581) (Some!14581 (v!50582 List!58031)) )
))
(declare-fun isEmpty!31379 (Option!14582) Bool)

(declare-fun getLanguageWitness!715 ((InoxSet Context!6468)) Option!14582)

(assert (=> d!1615083 (= lt!2075530 (isEmpty!31379 (getLanguageWitness!715 z!4183)))))

(declare-fun forall!13379 ((InoxSet Context!6468) Int) Bool)

(assert (=> d!1615083 (= lt!2075530 (forall!13379 z!4183 lambda!248626))))

(declare-fun lt!2075528 () Unit!149127)

(assert (=> d!1615083 (= lt!2075528 e!3133560)))

(declare-fun c!857002 () Bool)

(assert (=> d!1615083 (= c!857002 (not (forall!13379 z!4183 lambda!248626)))))

(assert (=> d!1615083 (= (lostCauseZipper!837 z!4183) lt!2075530)))

(declare-fun Unit!149142 () Unit!149127)

(assert (=> b!5015928 (= e!3133560 Unit!149142)))

(declare-fun lt!2075526 () List!58033)

(assert (=> b!5015928 (= lt!2075526 call!350347)))

(declare-fun lt!2075529 () Unit!149127)

(declare-fun lemmaForallThenNotExists!235 (List!58033 Int) Unit!149127)

(assert (=> b!5015928 (= lt!2075529 (lemmaForallThenNotExists!235 lt!2075526 lambda!248626))))

(assert (=> b!5015928 (not call!350346)))

(declare-fun lt!2075525 () Unit!149127)

(assert (=> b!5015928 (= lt!2075525 lt!2075529)))

(declare-fun bm!350341 () Bool)

(declare-fun exists!1368 (List!58033 Int) Bool)

(assert (=> bm!350341 (= call!350346 (exists!1368 (ite c!857002 lt!2075527 lt!2075526) (ite c!857002 lambda!248627 lambda!248628)))))

(assert (= (and d!1615083 c!857002) b!5015927))

(assert (= (and d!1615083 (not c!857002)) b!5015928))

(assert (= (or b!5015927 b!5015928) bm!350341))

(assert (= (or b!5015927 b!5015928) bm!350342))

(declare-fun m!6050878 () Bool)

(assert (=> bm!350341 m!6050878))

(declare-fun m!6050880 () Bool)

(assert (=> b!5015927 m!6050880))

(assert (=> bm!350342 m!6049570))

(declare-fun m!6050882 () Bool)

(assert (=> b!5015928 m!6050882))

(declare-fun m!6050884 () Bool)

(assert (=> d!1615083 m!6050884))

(assert (=> d!1615083 m!6050884))

(declare-fun m!6050886 () Bool)

(assert (=> d!1615083 m!6050886))

(declare-fun m!6050888 () Bool)

(assert (=> d!1615083 m!6050888))

(assert (=> d!1615083 m!6050888))

(assert (=> b!5014848 d!1615083))

(assert (=> b!5015091 d!1614807))

(declare-fun d!1615089 () Bool)

(declare-fun lt!2075532 () Int)

(assert (=> d!1615089 (>= lt!2075532 0)))

(declare-fun e!3133563 () Int)

(assert (=> d!1615089 (= lt!2075532 e!3133563)))

(declare-fun c!857005 () Bool)

(assert (=> d!1615089 (= c!857005 ((_ is Nil!57907) (take!668 lt!2075001 lt!2074995)))))

(assert (=> d!1615089 (= (size!38500 (take!668 lt!2075001 lt!2074995)) lt!2075532)))

(declare-fun b!5015933 () Bool)

(assert (=> b!5015933 (= e!3133563 0)))

(declare-fun b!5015934 () Bool)

(assert (=> b!5015934 (= e!3133563 (+ 1 (size!38500 (t!370399 (take!668 lt!2075001 lt!2074995)))))))

(assert (= (and d!1615089 c!857005) b!5015933))

(assert (= (and d!1615089 (not c!857005)) b!5015934))

(declare-fun m!6050890 () Bool)

(assert (=> b!5015934 m!6050890))

(assert (=> b!5015091 d!1615089))

(assert (=> bm!350265 d!1615049))

(assert (=> b!5015107 d!1614807))

(declare-fun b!5015935 () Bool)

(declare-fun e!3133570 () Bool)

(assert (=> b!5015935 (= e!3133570 (= (head!10745 (_1!34844 (findLongestMatchInner!1998 r!12727 Nil!57907 (size!38500 Nil!57907) lt!2075000 lt!2075000 (size!38500 lt!2075000)))) (c!856664 r!12727)))))

(declare-fun b!5015936 () Bool)

(declare-fun e!3133568 () Bool)

(declare-fun lt!2075533 () Bool)

(declare-fun call!350354 () Bool)

(assert (=> b!5015936 (= e!3133568 (= lt!2075533 call!350354))))

(declare-fun b!5015937 () Bool)

(declare-fun e!3133566 () Bool)

(declare-fun e!3133564 () Bool)

(assert (=> b!5015937 (= e!3133566 e!3133564)))

(declare-fun res!2138914 () Bool)

(assert (=> b!5015937 (=> (not res!2138914) (not e!3133564))))

(assert (=> b!5015937 (= res!2138914 (not lt!2075533))))

(declare-fun b!5015938 () Bool)

(declare-fun e!3133565 () Bool)

(assert (=> b!5015938 (= e!3133565 (matchR!6773 (derivativeStep!3987 r!12727 (head!10745 (_1!34844 (findLongestMatchInner!1998 r!12727 Nil!57907 (size!38500 Nil!57907) lt!2075000 lt!2075000 (size!38500 lt!2075000))))) (tail!9878 (_1!34844 (findLongestMatchInner!1998 r!12727 Nil!57907 (size!38500 Nil!57907) lt!2075000 lt!2075000 (size!38500 lt!2075000))))))))

(declare-fun bm!350349 () Bool)

(assert (=> bm!350349 (= call!350354 (isEmpty!31376 (_1!34844 (findLongestMatchInner!1998 r!12727 Nil!57907 (size!38500 Nil!57907) lt!2075000 lt!2075000 (size!38500 lt!2075000)))))))

(declare-fun b!5015939 () Bool)

(declare-fun e!3133567 () Bool)

(assert (=> b!5015939 (= e!3133564 e!3133567)))

(declare-fun res!2138916 () Bool)

(assert (=> b!5015939 (=> res!2138916 e!3133567)))

(assert (=> b!5015939 (= res!2138916 call!350354)))

(declare-fun b!5015940 () Bool)

(declare-fun e!3133569 () Bool)

(assert (=> b!5015940 (= e!3133568 e!3133569)))

(declare-fun c!857006 () Bool)

(assert (=> b!5015940 (= c!857006 ((_ is EmptyLang!13809) r!12727))))

(declare-fun d!1615091 () Bool)

(assert (=> d!1615091 e!3133568))

(declare-fun c!857007 () Bool)

(assert (=> d!1615091 (= c!857007 ((_ is EmptyExpr!13809) r!12727))))

(assert (=> d!1615091 (= lt!2075533 e!3133565)))

(declare-fun c!857008 () Bool)

(assert (=> d!1615091 (= c!857008 (isEmpty!31376 (_1!34844 (findLongestMatchInner!1998 r!12727 Nil!57907 (size!38500 Nil!57907) lt!2075000 lt!2075000 (size!38500 lt!2075000)))))))

(assert (=> d!1615091 (validRegex!6106 r!12727)))

(assert (=> d!1615091 (= (matchR!6773 r!12727 (_1!34844 (findLongestMatchInner!1998 r!12727 Nil!57907 (size!38500 Nil!57907) lt!2075000 lt!2075000 (size!38500 lt!2075000)))) lt!2075533)))

(declare-fun b!5015941 () Bool)

(assert (=> b!5015941 (= e!3133565 (nullable!4696 r!12727))))

(declare-fun b!5015942 () Bool)

(declare-fun res!2138918 () Bool)

(assert (=> b!5015942 (=> res!2138918 e!3133566)))

(assert (=> b!5015942 (= res!2138918 (not ((_ is ElementMatch!13809) r!12727)))))

(assert (=> b!5015942 (= e!3133569 e!3133566)))

(declare-fun b!5015943 () Bool)

(declare-fun res!2138915 () Bool)

(assert (=> b!5015943 (=> res!2138915 e!3133566)))

(assert (=> b!5015943 (= res!2138915 e!3133570)))

(declare-fun res!2138920 () Bool)

(assert (=> b!5015943 (=> (not res!2138920) (not e!3133570))))

(assert (=> b!5015943 (= res!2138920 lt!2075533)))

(declare-fun b!5015944 () Bool)

(declare-fun res!2138919 () Bool)

(assert (=> b!5015944 (=> res!2138919 e!3133567)))

(assert (=> b!5015944 (= res!2138919 (not (isEmpty!31376 (tail!9878 (_1!34844 (findLongestMatchInner!1998 r!12727 Nil!57907 (size!38500 Nil!57907) lt!2075000 lt!2075000 (size!38500 lt!2075000)))))))))

(declare-fun b!5015945 () Bool)

(declare-fun res!2138917 () Bool)

(assert (=> b!5015945 (=> (not res!2138917) (not e!3133570))))

(assert (=> b!5015945 (= res!2138917 (isEmpty!31376 (tail!9878 (_1!34844 (findLongestMatchInner!1998 r!12727 Nil!57907 (size!38500 Nil!57907) lt!2075000 lt!2075000 (size!38500 lt!2075000))))))))

(declare-fun b!5015946 () Bool)

(assert (=> b!5015946 (= e!3133569 (not lt!2075533))))

(declare-fun b!5015947 () Bool)

(assert (=> b!5015947 (= e!3133567 (not (= (head!10745 (_1!34844 (findLongestMatchInner!1998 r!12727 Nil!57907 (size!38500 Nil!57907) lt!2075000 lt!2075000 (size!38500 lt!2075000)))) (c!856664 r!12727))))))

(declare-fun b!5015948 () Bool)

(declare-fun res!2138913 () Bool)

(assert (=> b!5015948 (=> (not res!2138913) (not e!3133570))))

(assert (=> b!5015948 (= res!2138913 (not call!350354))))

(assert (= (and d!1615091 c!857008) b!5015941))

(assert (= (and d!1615091 (not c!857008)) b!5015938))

(assert (= (and d!1615091 c!857007) b!5015936))

(assert (= (and d!1615091 (not c!857007)) b!5015940))

(assert (= (and b!5015940 c!857006) b!5015946))

(assert (= (and b!5015940 (not c!857006)) b!5015942))

(assert (= (and b!5015942 (not res!2138918)) b!5015943))

(assert (= (and b!5015943 res!2138920) b!5015948))

(assert (= (and b!5015948 res!2138913) b!5015945))

(assert (= (and b!5015945 res!2138917) b!5015935))

(assert (= (and b!5015943 (not res!2138915)) b!5015937))

(assert (= (and b!5015937 res!2138914) b!5015939))

(assert (= (and b!5015939 (not res!2138916)) b!5015944))

(assert (= (and b!5015944 (not res!2138919)) b!5015947))

(assert (= (or b!5015936 b!5015939 b!5015948) bm!350349))

(assert (=> b!5015941 m!6049868))

(declare-fun m!6050892 () Bool)

(assert (=> b!5015947 m!6050892))

(declare-fun m!6050894 () Bool)

(assert (=> b!5015945 m!6050894))

(assert (=> b!5015945 m!6050894))

(declare-fun m!6050896 () Bool)

(assert (=> b!5015945 m!6050896))

(assert (=> bm!350349 m!6049986))

(assert (=> b!5015935 m!6050892))

(assert (=> b!5015944 m!6050894))

(assert (=> b!5015944 m!6050894))

(assert (=> b!5015944 m!6050896))

(assert (=> b!5015938 m!6050892))

(assert (=> b!5015938 m!6050892))

(declare-fun m!6050898 () Bool)

(assert (=> b!5015938 m!6050898))

(assert (=> b!5015938 m!6050894))

(assert (=> b!5015938 m!6050898))

(assert (=> b!5015938 m!6050894))

(declare-fun m!6050900 () Bool)

(assert (=> b!5015938 m!6050900))

(assert (=> d!1615091 m!6049986))

(assert (=> d!1615091 m!6049528))

(assert (=> b!5015085 d!1615091))

(assert (=> b!5015085 d!1614659))

(assert (=> b!5015085 d!1614709))

(assert (=> b!5015085 d!1614655))

(declare-fun d!1615093 () Bool)

(assert (=> d!1615093 (= (sizeTr!407 lt!2075000 lt!2075043) (+ (size!38500 lt!2075000) lt!2075043))))

(declare-fun lt!2075536 () Unit!149127)

(declare-fun choose!37116 (List!58031 Int) Unit!149127)

(assert (=> d!1615093 (= lt!2075536 (choose!37116 lt!2075000 lt!2075043))))

(assert (=> d!1615093 (= (lemmaSizeTrEqualsSize!406 lt!2075000 lt!2075043) lt!2075536)))

(declare-fun bs!1186962 () Bool)

(assert (= bs!1186962 d!1615093))

(assert (=> bs!1186962 m!6049638))

(assert (=> bs!1186962 m!6049502))

(declare-fun m!6050902 () Bool)

(assert (=> bs!1186962 m!6050902))

(assert (=> d!1614619 d!1615093))

(assert (=> d!1614619 d!1614655))

(declare-fun d!1615095 () Bool)

(declare-fun c!857011 () Bool)

(assert (=> d!1615095 (= c!857011 ((_ is Nil!57907) lt!2075000))))

(declare-fun e!3133573 () Int)

(assert (=> d!1615095 (= (sizeTr!407 lt!2075000 lt!2075043) e!3133573)))

(declare-fun b!5015953 () Bool)

(assert (=> b!5015953 (= e!3133573 lt!2075043)))

(declare-fun b!5015954 () Bool)

(assert (=> b!5015954 (= e!3133573 (sizeTr!407 (t!370399 lt!2075000) (+ lt!2075043 1)))))

(assert (= (and d!1615095 c!857011) b!5015953))

(assert (= (and d!1615095 (not c!857011)) b!5015954))

(declare-fun m!6050904 () Bool)

(assert (=> b!5015954 m!6050904))

(assert (=> d!1614619 d!1615095))

(declare-fun d!1615097 () Bool)

(declare-fun lt!2075537 () Int)

(assert (=> d!1615097 (>= lt!2075537 0)))

(declare-fun e!3133574 () Int)

(assert (=> d!1615097 (= lt!2075537 e!3133574)))

(declare-fun c!857012 () Bool)

(assert (=> d!1615097 (= c!857012 ((_ is Nil!57907) lt!2075047))))

(assert (=> d!1615097 (= (size!38500 lt!2075047) lt!2075537)))

(declare-fun b!5015955 () Bool)

(assert (=> b!5015955 (= e!3133574 0)))

(declare-fun b!5015956 () Bool)

(assert (=> b!5015956 (= e!3133574 (+ 1 (size!38500 (t!370399 lt!2075047))))))

(assert (= (and d!1615097 c!857012) b!5015955))

(assert (= (and d!1615097 (not c!857012)) b!5015956))

(declare-fun m!6050906 () Bool)

(assert (=> b!5015956 m!6050906))

(assert (=> d!1614619 d!1615097))

(declare-fun b!5015960 () Bool)

(declare-fun e!3133575 () Bool)

(declare-fun lt!2075538 () List!58031)

(assert (=> b!5015960 (= e!3133575 (or (not (= (_2!34844 lt!2075048) Nil!57907)) (= lt!2075538 (_1!34844 lt!2075048))))))

(declare-fun b!5015959 () Bool)

(declare-fun res!2138922 () Bool)

(assert (=> b!5015959 (=> (not res!2138922) (not e!3133575))))

(assert (=> b!5015959 (= res!2138922 (= (size!38500 lt!2075538) (+ (size!38500 (_1!34844 lt!2075048)) (size!38500 (_2!34844 lt!2075048)))))))

(declare-fun b!5015958 () Bool)

(declare-fun e!3133576 () List!58031)

(assert (=> b!5015958 (= e!3133576 (Cons!57907 (h!64355 (_1!34844 lt!2075048)) (++!12657 (t!370399 (_1!34844 lt!2075048)) (_2!34844 lt!2075048))))))

(declare-fun d!1615099 () Bool)

(assert (=> d!1615099 e!3133575))

(declare-fun res!2138921 () Bool)

(assert (=> d!1615099 (=> (not res!2138921) (not e!3133575))))

(assert (=> d!1615099 (= res!2138921 (= (content!10267 lt!2075538) ((_ map or) (content!10267 (_1!34844 lt!2075048)) (content!10267 (_2!34844 lt!2075048)))))))

(assert (=> d!1615099 (= lt!2075538 e!3133576)))

(declare-fun c!857013 () Bool)

(assert (=> d!1615099 (= c!857013 ((_ is Nil!57907) (_1!34844 lt!2075048)))))

(assert (=> d!1615099 (= (++!12657 (_1!34844 lt!2075048) (_2!34844 lt!2075048)) lt!2075538)))

(declare-fun b!5015957 () Bool)

(assert (=> b!5015957 (= e!3133576 (_2!34844 lt!2075048))))

(assert (= (and d!1615099 c!857013) b!5015957))

(assert (= (and d!1615099 (not c!857013)) b!5015958))

(assert (= (and d!1615099 res!2138921) b!5015959))

(assert (= (and b!5015959 res!2138922) b!5015960))

(declare-fun m!6050908 () Bool)

(assert (=> b!5015959 m!6050908))

(declare-fun m!6050910 () Bool)

(assert (=> b!5015959 m!6050910))

(declare-fun m!6050912 () Bool)

(assert (=> b!5015959 m!6050912))

(declare-fun m!6050914 () Bool)

(assert (=> b!5015958 m!6050914))

(declare-fun m!6050916 () Bool)

(assert (=> d!1615099 m!6050916))

(declare-fun m!6050918 () Bool)

(assert (=> d!1615099 m!6050918))

(declare-fun m!6050920 () Bool)

(assert (=> d!1615099 m!6050920))

(assert (=> d!1614619 d!1615099))

(declare-fun d!1615101 () Bool)

(assert (=> d!1615101 (= (sizeTr!407 lt!2075047 lt!2075046) (+ (size!38500 lt!2075047) lt!2075046))))

(declare-fun lt!2075539 () Unit!149127)

(assert (=> d!1615101 (= lt!2075539 (choose!37116 lt!2075047 lt!2075046))))

(assert (=> d!1615101 (= (lemmaSizeTrEqualsSize!406 lt!2075047 lt!2075046) lt!2075539)))

(declare-fun bs!1186963 () Bool)

(assert (= bs!1186963 d!1615101))

(assert (=> bs!1186963 m!6049634))

(assert (=> bs!1186963 m!6049632))

(declare-fun m!6050922 () Bool)

(assert (=> bs!1186963 m!6050922))

(assert (=> d!1614619 d!1615101))

(declare-fun b!5015961 () Bool)

(declare-fun e!3133577 () tuple2!63082)

(assert (=> b!5015961 (= e!3133577 (tuple2!63083 Nil!57907 lt!2075000))))

(declare-fun b!5015962 () Bool)

(declare-fun e!3133583 () tuple2!63082)

(declare-fun lt!2075543 () tuple2!63082)

(assert (=> b!5015962 (= e!3133583 lt!2075543)))

(declare-fun b!5015963 () Bool)

(declare-fun e!3133578 () tuple2!63082)

(declare-fun call!350363 () tuple2!63082)

(assert (=> b!5015963 (= e!3133578 call!350363)))

(declare-fun bm!350352 () Bool)

(declare-fun call!350362 () List!58031)

(assert (=> bm!350352 (= call!350362 (tail!9878 lt!2075000))))

(declare-fun b!5015964 () Bool)

(declare-fun e!3133584 () tuple2!63082)

(assert (=> b!5015964 (= e!3133584 (tuple2!63083 Nil!57907 lt!2075000))))

(declare-fun b!5015965 () Bool)

(declare-fun e!3133579 () Bool)

(declare-fun lt!2075557 () tuple2!63082)

(assert (=> b!5015965 (= e!3133579 (>= (size!38500 (_1!34844 lt!2075557)) (size!38500 Nil!57907)))))

(declare-fun b!5015967 () Bool)

(declare-fun e!3133581 () Bool)

(assert (=> b!5015967 (= e!3133581 e!3133579)))

(declare-fun res!2138923 () Bool)

(assert (=> b!5015967 (=> res!2138923 e!3133579)))

(assert (=> b!5015967 (= res!2138923 (isEmpty!31376 (_1!34844 lt!2075557)))))

(declare-fun b!5015968 () Bool)

(declare-fun e!3133580 () Unit!149127)

(declare-fun Unit!149143 () Unit!149127)

(assert (=> b!5015968 (= e!3133580 Unit!149143)))

(declare-fun lt!2075559 () Unit!149127)

(declare-fun call!350361 () Unit!149127)

(assert (=> b!5015968 (= lt!2075559 call!350361)))

(declare-fun call!350358 () Bool)

(assert (=> b!5015968 call!350358))

(declare-fun lt!2075558 () Unit!149127)

(assert (=> b!5015968 (= lt!2075558 lt!2075559)))

(declare-fun lt!2075546 () Unit!149127)

(declare-fun call!350359 () Unit!149127)

(assert (=> b!5015968 (= lt!2075546 call!350359)))

(assert (=> b!5015968 (= lt!2075000 Nil!57907)))

(declare-fun lt!2075552 () Unit!149127)

(assert (=> b!5015968 (= lt!2075552 lt!2075546)))

(assert (=> b!5015968 false))

(declare-fun bm!350353 () Bool)

(declare-fun call!350360 () C!27868)

(assert (=> bm!350353 (= call!350360 (head!10745 lt!2075000))))

(declare-fun bm!350354 () Bool)

(declare-fun call!350357 () Regex!13809)

(assert (=> bm!350354 (= call!350357 (derivativeStep!3987 r!12727 call!350360))))

(declare-fun bm!350355 () Bool)

(declare-fun lt!2075545 () List!58031)

(assert (=> bm!350355 (= call!350363 (findLongestMatchInner!1998 call!350357 lt!2075545 (+ 0 1) call!350362 lt!2075000 (sizeTr!407 lt!2075000 0)))))

(declare-fun bm!350356 () Bool)

(assert (=> bm!350356 (= call!350358 (isPrefix!5362 lt!2075000 lt!2075000))))

(declare-fun b!5015969 () Bool)

(declare-fun c!857019 () Bool)

(declare-fun call!350364 () Bool)

(assert (=> b!5015969 (= c!857019 call!350364)))

(declare-fun lt!2075547 () Unit!149127)

(declare-fun lt!2075548 () Unit!149127)

(assert (=> b!5015969 (= lt!2075547 lt!2075548)))

(declare-fun lt!2075540 () C!27868)

(declare-fun lt!2075549 () List!58031)

(assert (=> b!5015969 (= (++!12657 (++!12657 Nil!57907 (Cons!57907 lt!2075540 Nil!57907)) lt!2075549) lt!2075000)))

(assert (=> b!5015969 (= lt!2075548 (lemmaMoveElementToOtherListKeepsConcatEq!1508 Nil!57907 lt!2075540 lt!2075549 lt!2075000))))

(assert (=> b!5015969 (= lt!2075549 (tail!9878 lt!2075000))))

(assert (=> b!5015969 (= lt!2075540 (head!10745 lt!2075000))))

(declare-fun lt!2075564 () Unit!149127)

(declare-fun lt!2075553 () Unit!149127)

(assert (=> b!5015969 (= lt!2075564 lt!2075553)))

(assert (=> b!5015969 (isPrefix!5362 (++!12657 Nil!57907 (Cons!57907 (head!10745 (getSuffix!3152 lt!2075000 Nil!57907)) Nil!57907)) lt!2075000)))

(assert (=> b!5015969 (= lt!2075553 (lemmaAddHeadSuffixToPrefixStillPrefix!897 Nil!57907 lt!2075000))))

(declare-fun lt!2075550 () Unit!149127)

(declare-fun lt!2075541 () Unit!149127)

(assert (=> b!5015969 (= lt!2075550 lt!2075541)))

(assert (=> b!5015969 (= lt!2075541 (lemmaAddHeadSuffixToPrefixStillPrefix!897 Nil!57907 lt!2075000))))

(assert (=> b!5015969 (= lt!2075545 (++!12657 Nil!57907 (Cons!57907 (head!10745 lt!2075000) Nil!57907)))))

(declare-fun lt!2075567 () Unit!149127)

(assert (=> b!5015969 (= lt!2075567 e!3133580)))

(declare-fun c!857017 () Bool)

(assert (=> b!5015969 (= c!857017 (= (size!38500 Nil!57907) (size!38500 lt!2075000)))))

(declare-fun lt!2075554 () Unit!149127)

(declare-fun lt!2075565 () Unit!149127)

(assert (=> b!5015969 (= lt!2075554 lt!2075565)))

(assert (=> b!5015969 (<= (size!38500 Nil!57907) (size!38500 lt!2075000))))

(assert (=> b!5015969 (= lt!2075565 (lemmaIsPrefixThenSmallerEqSize!823 Nil!57907 lt!2075000))))

(declare-fun e!3133582 () tuple2!63082)

(assert (=> b!5015969 (= e!3133582 e!3133578)))

(declare-fun b!5015970 () Bool)

(assert (=> b!5015970 (= e!3133578 e!3133583)))

(assert (=> b!5015970 (= lt!2075543 call!350363)))

(declare-fun c!857018 () Bool)

(assert (=> b!5015970 (= c!857018 (isEmpty!31376 (_1!34844 lt!2075543)))))

(declare-fun bm!350357 () Bool)

(assert (=> bm!350357 (= call!350359 (lemmaIsPrefixSameLengthThenSameList!1283 lt!2075000 Nil!57907 lt!2075000))))

(declare-fun b!5015971 () Bool)

(declare-fun c!857014 () Bool)

(assert (=> b!5015971 (= c!857014 call!350364)))

(declare-fun lt!2075566 () Unit!149127)

(declare-fun lt!2075556 () Unit!149127)

(assert (=> b!5015971 (= lt!2075566 lt!2075556)))

(assert (=> b!5015971 (= lt!2075000 Nil!57907)))

(assert (=> b!5015971 (= lt!2075556 call!350359)))

(declare-fun lt!2075544 () Unit!149127)

(declare-fun lt!2075561 () Unit!149127)

(assert (=> b!5015971 (= lt!2075544 lt!2075561)))

(assert (=> b!5015971 call!350358))

(assert (=> b!5015971 (= lt!2075561 call!350361)))

(assert (=> b!5015971 (= e!3133582 e!3133577)))

(declare-fun b!5015972 () Bool)

(assert (=> b!5015972 (= e!3133577 (tuple2!63083 Nil!57907 Nil!57907))))

(declare-fun b!5015973 () Bool)

(assert (=> b!5015973 (= e!3133584 e!3133582)))

(declare-fun c!857015 () Bool)

(assert (=> b!5015973 (= c!857015 (= 0 (sizeTr!407 lt!2075000 0)))))

(declare-fun bm!350358 () Bool)

(assert (=> bm!350358 (= call!350364 (nullable!4696 r!12727))))

(declare-fun d!1615103 () Bool)

(assert (=> d!1615103 e!3133581))

(declare-fun res!2138924 () Bool)

(assert (=> d!1615103 (=> (not res!2138924) (not e!3133581))))

(assert (=> d!1615103 (= res!2138924 (= (++!12657 (_1!34844 lt!2075557) (_2!34844 lt!2075557)) lt!2075000))))

(assert (=> d!1615103 (= lt!2075557 e!3133584)))

(declare-fun c!857016 () Bool)

(assert (=> d!1615103 (= c!857016 (lostCause!1196 r!12727))))

(declare-fun lt!2075560 () Unit!149127)

(declare-fun Unit!149144 () Unit!149127)

(assert (=> d!1615103 (= lt!2075560 Unit!149144)))

(assert (=> d!1615103 (= (getSuffix!3152 lt!2075000 Nil!57907) lt!2075000)))

(declare-fun lt!2075555 () Unit!149127)

(declare-fun lt!2075542 () Unit!149127)

(assert (=> d!1615103 (= lt!2075555 lt!2075542)))

(declare-fun lt!2075562 () List!58031)

(assert (=> d!1615103 (= lt!2075000 lt!2075562)))

(assert (=> d!1615103 (= lt!2075542 (lemmaSamePrefixThenSameSuffix!2566 Nil!57907 lt!2075000 Nil!57907 lt!2075562 lt!2075000))))

(assert (=> d!1615103 (= lt!2075562 (getSuffix!3152 lt!2075000 Nil!57907))))

(declare-fun lt!2075551 () Unit!149127)

(declare-fun lt!2075563 () Unit!149127)

(assert (=> d!1615103 (= lt!2075551 lt!2075563)))

(assert (=> d!1615103 (isPrefix!5362 Nil!57907 (++!12657 Nil!57907 lt!2075000))))

(assert (=> d!1615103 (= lt!2075563 (lemmaConcatTwoListThenFirstIsPrefix!3460 Nil!57907 lt!2075000))))

(assert (=> d!1615103 (validRegex!6106 r!12727)))

(assert (=> d!1615103 (= (findLongestMatchInner!1998 r!12727 Nil!57907 0 lt!2075000 lt!2075000 (sizeTr!407 lt!2075000 0)) lt!2075557)))

(declare-fun b!5015966 () Bool)

(assert (=> b!5015966 (= e!3133583 (tuple2!63083 Nil!57907 lt!2075000))))

(declare-fun bm!350359 () Bool)

(assert (=> bm!350359 (= call!350361 (lemmaIsPrefixRefl!3635 lt!2075000 lt!2075000))))

(declare-fun b!5015974 () Bool)

(declare-fun Unit!149145 () Unit!149127)

(assert (=> b!5015974 (= e!3133580 Unit!149145)))

(assert (= (and d!1615103 c!857016) b!5015964))

(assert (= (and d!1615103 (not c!857016)) b!5015973))

(assert (= (and b!5015973 c!857015) b!5015971))

(assert (= (and b!5015973 (not c!857015)) b!5015969))

(assert (= (and b!5015971 c!857014) b!5015972))

(assert (= (and b!5015971 (not c!857014)) b!5015961))

(assert (= (and b!5015969 c!857017) b!5015968))

(assert (= (and b!5015969 (not c!857017)) b!5015974))

(assert (= (and b!5015969 c!857019) b!5015970))

(assert (= (and b!5015969 (not c!857019)) b!5015963))

(assert (= (and b!5015970 c!857018) b!5015966))

(assert (= (and b!5015970 (not c!857018)) b!5015962))

(assert (= (or b!5015970 b!5015963) bm!350353))

(assert (= (or b!5015970 b!5015963) bm!350352))

(assert (= (or b!5015970 b!5015963) bm!350354))

(assert (= (or b!5015970 b!5015963) bm!350355))

(assert (= (or b!5015971 b!5015969) bm!350358))

(assert (= (or b!5015971 b!5015968) bm!350356))

(assert (= (or b!5015971 b!5015968) bm!350357))

(assert (= (or b!5015971 b!5015968) bm!350359))

(assert (= (and d!1615103 res!2138924) b!5015967))

(assert (= (and b!5015967 (not res!2138923)) b!5015965))

(assert (=> bm!350352 m!6049850))

(declare-fun m!6050924 () Bool)

(assert (=> b!5015967 m!6050924))

(declare-fun m!6050926 () Bool)

(assert (=> d!1615103 m!6050926))

(declare-fun m!6050928 () Bool)

(assert (=> d!1615103 m!6050928))

(assert (=> d!1615103 m!6049858))

(assert (=> d!1615103 m!6049528))

(assert (=> d!1615103 m!6049858))

(assert (=> d!1615103 m!6049860))

(assert (=> d!1615103 m!6049862))

(assert (=> d!1615103 m!6049864))

(assert (=> d!1615103 m!6049866))

(assert (=> bm!350358 m!6049868))

(declare-fun m!6050930 () Bool)

(assert (=> bm!350354 m!6050930))

(assert (=> bm!350355 m!6049624))

(declare-fun m!6050932 () Bool)

(assert (=> bm!350355 m!6050932))

(assert (=> b!5015969 m!6049490))

(assert (=> b!5015969 m!6049866))

(assert (=> b!5015969 m!6049874))

(assert (=> b!5015969 m!6049850))

(assert (=> b!5015969 m!6049876))

(assert (=> b!5015969 m!6049878))

(assert (=> b!5015969 m!6049880))

(declare-fun m!6050934 () Bool)

(assert (=> b!5015969 m!6050934))

(declare-fun m!6050936 () Bool)

(assert (=> b!5015969 m!6050936))

(assert (=> b!5015969 m!6049886))

(assert (=> b!5015969 m!6050934))

(declare-fun m!6050938 () Bool)

(assert (=> b!5015969 m!6050938))

(assert (=> b!5015969 m!6049890))

(assert (=> b!5015969 m!6049880))

(assert (=> b!5015969 m!6049892))

(assert (=> b!5015969 m!6049866))

(assert (=> b!5015969 m!6049502))

(assert (=> bm!350353 m!6049878))

(assert (=> bm!350356 m!6049894))

(assert (=> bm!350359 m!6049896))

(declare-fun m!6050942 () Bool)

(assert (=> b!5015965 m!6050942))

(assert (=> b!5015965 m!6049490))

(declare-fun m!6050944 () Bool)

(assert (=> b!5015970 m!6050944))

(assert (=> bm!350357 m!6049902))

(assert (=> d!1614619 d!1615103))

(declare-fun d!1615105 () Bool)

(declare-fun c!857025 () Bool)

(assert (=> d!1615105 (= c!857025 ((_ is Nil!57907) lt!2075047))))

(declare-fun e!3133590 () Int)

(assert (=> d!1615105 (= (sizeTr!407 lt!2075047 lt!2075046) e!3133590)))

(declare-fun b!5015985 () Bool)

(assert (=> b!5015985 (= e!3133590 lt!2075046)))

(declare-fun b!5015986 () Bool)

(assert (=> b!5015986 (= e!3133590 (sizeTr!407 (t!370399 lt!2075047) (+ lt!2075046 1)))))

(assert (= (and d!1615105 c!857025) b!5015985))

(assert (= (and d!1615105 (not c!857025)) b!5015986))

(declare-fun m!6050952 () Bool)

(assert (=> b!5015986 m!6050952))

(assert (=> d!1614619 d!1615105))

(declare-fun d!1615109 () Bool)

(declare-fun c!857026 () Bool)

(assert (=> d!1615109 (= c!857026 ((_ is Nil!57907) lt!2075000))))

(declare-fun e!3133591 () Int)

(assert (=> d!1615109 (= (sizeTr!407 lt!2075000 0) e!3133591)))

(declare-fun b!5015987 () Bool)

(assert (=> b!5015987 (= e!3133591 0)))

(declare-fun b!5015988 () Bool)

(assert (=> b!5015988 (= e!3133591 (sizeTr!407 (t!370399 lt!2075000) (+ 0 1)))))

(assert (= (and d!1615109 c!857026) b!5015987))

(assert (= (and d!1615109 (not c!857026)) b!5015988))

(declare-fun m!6050954 () Bool)

(assert (=> b!5015988 m!6050954))

(assert (=> d!1614619 d!1615109))

(assert (=> d!1614619 d!1614611))

(assert (=> b!5015119 d!1614847))

(assert (=> b!5015184 d!1614803))

(declare-fun d!1615111 () Bool)

(declare-fun lt!2075569 () Int)

(assert (=> d!1615111 (>= lt!2075569 0)))

(declare-fun e!3133592 () Int)

(assert (=> d!1615111 (= lt!2075569 e!3133592)))

(declare-fun c!857027 () Bool)

(assert (=> d!1615111 (= c!857027 ((_ is Nil!57907) (_1!34844 lt!2075269)))))

(assert (=> d!1615111 (= (size!38500 (_1!34844 lt!2075269)) lt!2075569)))

(declare-fun b!5015989 () Bool)

(assert (=> b!5015989 (= e!3133592 0)))

(declare-fun b!5015990 () Bool)

(assert (=> b!5015990 (= e!3133592 (+ 1 (size!38500 (t!370399 (_1!34844 lt!2075269)))))))

(assert (= (and d!1615111 c!857027) b!5015989))

(assert (= (and d!1615111 (not c!857027)) b!5015990))

(declare-fun m!6050956 () Bool)

(assert (=> b!5015990 m!6050956))

(assert (=> b!5015011 d!1615111))

(assert (=> b!5015011 d!1614709))

(declare-fun b!5015991 () Bool)

(declare-fun e!3133593 () List!58031)

(assert (=> b!5015991 (= e!3133593 Nil!57907)))

(declare-fun b!5015992 () Bool)

(declare-fun e!3133596 () Int)

(assert (=> b!5015992 (= e!3133596 (size!38500 (t!370399 (drop!2472 lt!2075001 lt!2074995))))))

(declare-fun b!5015993 () Bool)

(declare-fun e!3133595 () Int)

(assert (=> b!5015993 (= e!3133595 0)))

(declare-fun b!5015994 () Bool)

(assert (=> b!5015994 (= e!3133596 (- lt!2075008 1))))

(declare-fun b!5015995 () Bool)

(declare-fun e!3133594 () Bool)

(declare-fun lt!2075570 () List!58031)

(assert (=> b!5015995 (= e!3133594 (= (size!38500 lt!2075570) e!3133595))))

(declare-fun c!857030 () Bool)

(assert (=> b!5015995 (= c!857030 (<= (- lt!2075008 1) 0))))

(declare-fun d!1615113 () Bool)

(assert (=> d!1615113 e!3133594))

(declare-fun res!2138925 () Bool)

(assert (=> d!1615113 (=> (not res!2138925) (not e!3133594))))

(assert (=> d!1615113 (= res!2138925 (= ((_ map implies) (content!10267 lt!2075570) (content!10267 (t!370399 (drop!2472 lt!2075001 lt!2074995)))) ((as const (InoxSet C!27868)) true)))))

(assert (=> d!1615113 (= lt!2075570 e!3133593)))

(declare-fun c!857028 () Bool)

(assert (=> d!1615113 (= c!857028 (or ((_ is Nil!57907) (t!370399 (drop!2472 lt!2075001 lt!2074995))) (<= (- lt!2075008 1) 0)))))

(assert (=> d!1615113 (= (take!668 (t!370399 (drop!2472 lt!2075001 lt!2074995)) (- lt!2075008 1)) lt!2075570)))

(declare-fun b!5015996 () Bool)

(assert (=> b!5015996 (= e!3133593 (Cons!57907 (h!64355 (t!370399 (drop!2472 lt!2075001 lt!2074995))) (take!668 (t!370399 (t!370399 (drop!2472 lt!2075001 lt!2074995))) (- (- lt!2075008 1) 1))))))

(declare-fun b!5015997 () Bool)

(assert (=> b!5015997 (= e!3133595 e!3133596)))

(declare-fun c!857029 () Bool)

(assert (=> b!5015997 (= c!857029 (>= (- lt!2075008 1) (size!38500 (t!370399 (drop!2472 lt!2075001 lt!2074995)))))))

(assert (= (and d!1615113 c!857028) b!5015991))

(assert (= (and d!1615113 (not c!857028)) b!5015996))

(assert (= (and d!1615113 res!2138925) b!5015995))

(assert (= (and b!5015995 c!857030) b!5015993))

(assert (= (and b!5015995 (not c!857030)) b!5015997))

(assert (= (and b!5015997 c!857029) b!5015992))

(assert (= (and b!5015997 (not c!857029)) b!5015994))

(declare-fun m!6050958 () Bool)

(assert (=> b!5015996 m!6050958))

(assert (=> b!5015992 m!6050312))

(declare-fun m!6050960 () Bool)

(assert (=> b!5015995 m!6050960))

(declare-fun m!6050962 () Bool)

(assert (=> d!1615113 m!6050962))

(assert (=> d!1615113 m!6050436))

(assert (=> b!5015997 m!6050312))

(assert (=> b!5015123 d!1615113))

(assert (=> bm!350280 d!1614713))

(assert (=> d!1614651 d!1614983))

(assert (=> b!5015303 d!1614987))

(assert (=> b!5015303 d!1614957))

(declare-fun b!5015998 () Bool)

(declare-fun res!2138926 () Bool)

(declare-fun e!3133601 () Bool)

(assert (=> b!5015998 (=> (not res!2138926) (not e!3133601))))

(declare-fun call!350369 () Bool)

(assert (=> b!5015998 (= res!2138926 call!350369)))

(declare-fun e!3133598 () Bool)

(assert (=> b!5015998 (= e!3133598 e!3133601)))

(declare-fun b!5015999 () Bool)

(declare-fun e!3133603 () Bool)

(assert (=> b!5015999 (= e!3133603 call!350369)))

(declare-fun b!5016000 () Bool)

(declare-fun e!3133599 () Bool)

(declare-fun e!3133597 () Bool)

(assert (=> b!5016000 (= e!3133599 e!3133597)))

(declare-fun res!2138927 () Bool)

(assert (=> b!5016000 (= res!2138927 (not (nullable!4696 (reg!14138 lt!2075066))))))

(assert (=> b!5016000 (=> (not res!2138927) (not e!3133597))))

(declare-fun b!5016002 () Bool)

(declare-fun res!2138928 () Bool)

(declare-fun e!3133600 () Bool)

(assert (=> b!5016002 (=> res!2138928 e!3133600)))

(assert (=> b!5016002 (= res!2138928 (not ((_ is Concat!22602) lt!2075066)))))

(assert (=> b!5016002 (= e!3133598 e!3133600)))

(declare-fun b!5016003 () Bool)

(declare-fun call!350371 () Bool)

(assert (=> b!5016003 (= e!3133597 call!350371)))

(declare-fun b!5016004 () Bool)

(assert (=> b!5016004 (= e!3133600 e!3133603)))

(declare-fun res!2138929 () Bool)

(assert (=> b!5016004 (=> (not res!2138929) (not e!3133603))))

(declare-fun call!350370 () Bool)

(assert (=> b!5016004 (= res!2138929 call!350370)))

(declare-fun b!5016005 () Bool)

(assert (=> b!5016005 (= e!3133601 call!350370)))

(declare-fun c!857032 () Bool)

(declare-fun bm!350364 () Bool)

(declare-fun c!857031 () Bool)

(assert (=> bm!350364 (= call!350371 (validRegex!6106 (ite c!857031 (reg!14138 lt!2075066) (ite c!857032 (regOne!28131 lt!2075066) (regTwo!28130 lt!2075066)))))))

(declare-fun b!5016006 () Bool)

(declare-fun e!3133602 () Bool)

(assert (=> b!5016006 (= e!3133602 e!3133599)))

(assert (=> b!5016006 (= c!857031 ((_ is Star!13809) lt!2075066))))

(declare-fun bm!350365 () Bool)

(assert (=> bm!350365 (= call!350369 call!350371)))

(declare-fun bm!350366 () Bool)

(assert (=> bm!350366 (= call!350370 (validRegex!6106 (ite c!857032 (regTwo!28131 lt!2075066) (regOne!28130 lt!2075066))))))

(declare-fun b!5016001 () Bool)

(assert (=> b!5016001 (= e!3133599 e!3133598)))

(assert (=> b!5016001 (= c!857032 ((_ is Union!13809) lt!2075066))))

(declare-fun d!1615119 () Bool)

(declare-fun res!2138930 () Bool)

(assert (=> d!1615119 (=> res!2138930 e!3133602)))

(assert (=> d!1615119 (= res!2138930 ((_ is ElementMatch!13809) lt!2075066))))

(assert (=> d!1615119 (= (validRegex!6106 lt!2075066) e!3133602)))

(assert (= (and d!1615119 (not res!2138930)) b!5016006))

(assert (= (and b!5016006 c!857031) b!5016000))

(assert (= (and b!5016006 (not c!857031)) b!5016001))

(assert (= (and b!5016000 res!2138927) b!5016003))

(assert (= (and b!5016001 c!857032) b!5015998))

(assert (= (and b!5016001 (not c!857032)) b!5016002))

(assert (= (and b!5015998 res!2138926) b!5016005))

(assert (= (and b!5016002 (not res!2138928)) b!5016004))

(assert (= (and b!5016004 res!2138929) b!5015999))

(assert (= (or b!5016005 b!5016004) bm!350366))

(assert (= (or b!5015998 b!5015999) bm!350365))

(assert (= (or b!5016003 bm!350365) bm!350364))

(declare-fun m!6050964 () Bool)

(assert (=> b!5016000 m!6050964))

(declare-fun m!6050966 () Bool)

(assert (=> bm!350364 m!6050966))

(declare-fun m!6050968 () Bool)

(assert (=> bm!350366 m!6050968))

(assert (=> d!1614645 d!1615119))

(declare-fun bs!1186965 () Bool)

(declare-fun d!1615121 () Bool)

(assert (= bs!1186965 (and d!1615121 d!1614743)))

(declare-fun lambda!248631 () Int)

(assert (=> bs!1186965 (= lambda!248631 lambda!248602)))

(declare-fun bs!1186966 () Bool)

(assert (= bs!1186966 (and d!1615121 d!1614963)))

(assert (=> bs!1186966 (= lambda!248631 lambda!248611)))

(declare-fun b!5016061 () Bool)

(declare-fun e!3133635 () Regex!13809)

(assert (=> b!5016061 (= e!3133635 (Union!13809 (h!64356 (unfocusZipperList!103 lt!2075003)) (generalisedUnion!590 (t!370400 (unfocusZipperList!103 lt!2075003)))))))

(declare-fun b!5016062 () Bool)

(declare-fun e!3133634 () Bool)

(declare-fun isEmpty!31380 (List!58032) Bool)

(assert (=> b!5016062 (= e!3133634 (isEmpty!31380 (t!370400 (unfocusZipperList!103 lt!2075003))))))

(declare-fun b!5016063 () Bool)

(assert (=> b!5016063 (= e!3133635 EmptyLang!13809)))

(declare-fun b!5016064 () Bool)

(declare-fun e!3133633 () Bool)

(declare-fun e!3133632 () Bool)

(assert (=> b!5016064 (= e!3133633 e!3133632)))

(declare-fun c!857055 () Bool)

(declare-fun tail!9879 (List!58032) List!58032)

(assert (=> b!5016064 (= c!857055 (isEmpty!31380 (tail!9879 (unfocusZipperList!103 lt!2075003))))))

(declare-fun e!3133637 () Bool)

(assert (=> d!1615121 e!3133637))

(declare-fun res!2138946 () Bool)

(assert (=> d!1615121 (=> (not res!2138946) (not e!3133637))))

(declare-fun lt!2075574 () Regex!13809)

(assert (=> d!1615121 (= res!2138946 (validRegex!6106 lt!2075574))))

(declare-fun e!3133636 () Regex!13809)

(assert (=> d!1615121 (= lt!2075574 e!3133636)))

(declare-fun c!857054 () Bool)

(assert (=> d!1615121 (= c!857054 e!3133634)))

(declare-fun res!2138945 () Bool)

(assert (=> d!1615121 (=> (not res!2138945) (not e!3133634))))

(assert (=> d!1615121 (= res!2138945 ((_ is Cons!57908) (unfocusZipperList!103 lt!2075003)))))

(assert (=> d!1615121 (forall!13378 (unfocusZipperList!103 lt!2075003) lambda!248631)))

(assert (=> d!1615121 (= (generalisedUnion!590 (unfocusZipperList!103 lt!2075003)) lt!2075574)))

(declare-fun b!5016065 () Bool)

(assert (=> b!5016065 (= e!3133637 e!3133633)))

(declare-fun c!857053 () Bool)

(assert (=> b!5016065 (= c!857053 (isEmpty!31380 (unfocusZipperList!103 lt!2075003)))))

(declare-fun b!5016066 () Bool)

(assert (=> b!5016066 (= e!3133636 e!3133635)))

(declare-fun c!857056 () Bool)

(assert (=> b!5016066 (= c!857056 ((_ is Cons!57908) (unfocusZipperList!103 lt!2075003)))))

(declare-fun b!5016067 () Bool)

(declare-fun isUnion!163 (Regex!13809) Bool)

(assert (=> b!5016067 (= e!3133632 (isUnion!163 lt!2075574))))

(declare-fun b!5016068 () Bool)

(declare-fun head!10746 (List!58032) Regex!13809)

(assert (=> b!5016068 (= e!3133632 (= lt!2075574 (head!10746 (unfocusZipperList!103 lt!2075003))))))

(declare-fun b!5016069 () Bool)

(assert (=> b!5016069 (= e!3133636 (h!64356 (unfocusZipperList!103 lt!2075003)))))

(declare-fun b!5016070 () Bool)

(declare-fun isEmptyLang!731 (Regex!13809) Bool)

(assert (=> b!5016070 (= e!3133633 (isEmptyLang!731 lt!2075574))))

(assert (= (and d!1615121 res!2138945) b!5016062))

(assert (= (and d!1615121 c!857054) b!5016069))

(assert (= (and d!1615121 (not c!857054)) b!5016066))

(assert (= (and b!5016066 c!857056) b!5016061))

(assert (= (and b!5016066 (not c!857056)) b!5016063))

(assert (= (and d!1615121 res!2138946) b!5016065))

(assert (= (and b!5016065 c!857053) b!5016070))

(assert (= (and b!5016065 (not c!857053)) b!5016064))

(assert (= (and b!5016064 c!857055) b!5016068))

(assert (= (and b!5016064 (not c!857055)) b!5016067))

(declare-fun m!6051014 () Bool)

(assert (=> b!5016062 m!6051014))

(assert (=> b!5016064 m!6049680))

(declare-fun m!6051018 () Bool)

(assert (=> b!5016064 m!6051018))

(assert (=> b!5016064 m!6051018))

(declare-fun m!6051020 () Bool)

(assert (=> b!5016064 m!6051020))

(declare-fun m!6051022 () Bool)

(assert (=> d!1615121 m!6051022))

(assert (=> d!1615121 m!6049680))

(declare-fun m!6051024 () Bool)

(assert (=> d!1615121 m!6051024))

(assert (=> b!5016065 m!6049680))

(declare-fun m!6051026 () Bool)

(assert (=> b!5016065 m!6051026))

(declare-fun m!6051028 () Bool)

(assert (=> b!5016070 m!6051028))

(assert (=> b!5016068 m!6049680))

(declare-fun m!6051030 () Bool)

(assert (=> b!5016068 m!6051030))

(declare-fun m!6051032 () Bool)

(assert (=> b!5016061 m!6051032))

(declare-fun m!6051034 () Bool)

(assert (=> b!5016067 m!6051034))

(assert (=> d!1614645 d!1615121))

(declare-fun bs!1186967 () Bool)

(declare-fun d!1615147 () Bool)

(assert (= bs!1186967 (and d!1615147 d!1614743)))

(declare-fun lambda!248634 () Int)

(assert (=> bs!1186967 (= lambda!248634 lambda!248602)))

(declare-fun bs!1186968 () Bool)

(assert (= bs!1186968 (and d!1615147 d!1614963)))

(assert (=> bs!1186968 (= lambda!248634 lambda!248611)))

(declare-fun bs!1186969 () Bool)

(assert (= bs!1186969 (and d!1615147 d!1615121)))

(assert (=> bs!1186969 (= lambda!248634 lambda!248631)))

(declare-fun lt!2075583 () List!58032)

(assert (=> d!1615147 (forall!13378 lt!2075583 lambda!248634)))

(declare-fun e!3133656 () List!58032)

(assert (=> d!1615147 (= lt!2075583 e!3133656)))

(declare-fun c!857072 () Bool)

(assert (=> d!1615147 (= c!857072 ((_ is Cons!57909) lt!2075003))))

(assert (=> d!1615147 (= (unfocusZipperList!103 lt!2075003) lt!2075583)))

(declare-fun b!5016104 () Bool)

(declare-fun generalisedConcat!349 (List!58032) Regex!13809)

(assert (=> b!5016104 (= e!3133656 (Cons!57908 (generalisedConcat!349 (exprs!3734 (h!64357 lt!2075003))) (unfocusZipperList!103 (t!370401 lt!2075003))))))

(declare-fun b!5016105 () Bool)

(assert (=> b!5016105 (= e!3133656 Nil!57908)))

(assert (= (and d!1615147 c!857072) b!5016104))

(assert (= (and d!1615147 (not c!857072)) b!5016105))

(declare-fun m!6051064 () Bool)

(assert (=> d!1615147 m!6051064))

(declare-fun m!6051066 () Bool)

(assert (=> b!5016104 m!6051066))

(declare-fun m!6051068 () Bool)

(assert (=> b!5016104 m!6051068))

(assert (=> d!1614645 d!1615147))

(declare-fun b!5016108 () Bool)

(declare-fun e!3133659 () Bool)

(assert (=> b!5016108 (= e!3133659 (isPrefix!5362 (tail!9878 lt!2075006) (tail!9878 (++!12657 lt!2075006 lt!2075014))))))

(declare-fun b!5016107 () Bool)

(declare-fun res!2138953 () Bool)

(assert (=> b!5016107 (=> (not res!2138953) (not e!3133659))))

(assert (=> b!5016107 (= res!2138953 (= (head!10745 lt!2075006) (head!10745 (++!12657 lt!2075006 lt!2075014))))))

(declare-fun b!5016109 () Bool)

(declare-fun e!3133658 () Bool)

(assert (=> b!5016109 (= e!3133658 (>= (size!38500 (++!12657 lt!2075006 lt!2075014)) (size!38500 lt!2075006)))))

(declare-fun b!5016106 () Bool)

(declare-fun e!3133657 () Bool)

(assert (=> b!5016106 (= e!3133657 e!3133659)))

(declare-fun res!2138952 () Bool)

(assert (=> b!5016106 (=> (not res!2138952) (not e!3133659))))

(assert (=> b!5016106 (= res!2138952 (not ((_ is Nil!57907) (++!12657 lt!2075006 lt!2075014))))))

(declare-fun d!1615157 () Bool)

(assert (=> d!1615157 e!3133658))

(declare-fun res!2138950 () Bool)

(assert (=> d!1615157 (=> res!2138950 e!3133658)))

(declare-fun lt!2075584 () Bool)

(assert (=> d!1615157 (= res!2138950 (not lt!2075584))))

(assert (=> d!1615157 (= lt!2075584 e!3133657)))

(declare-fun res!2138951 () Bool)

(assert (=> d!1615157 (=> res!2138951 e!3133657)))

(assert (=> d!1615157 (= res!2138951 ((_ is Nil!57907) lt!2075006))))

(assert (=> d!1615157 (= (isPrefix!5362 lt!2075006 (++!12657 lt!2075006 lt!2075014)) lt!2075584)))

(assert (= (and d!1615157 (not res!2138951)) b!5016106))

(assert (= (and b!5016106 res!2138952) b!5016107))

(assert (= (and b!5016107 res!2138953) b!5016108))

(assert (= (and d!1615157 (not res!2138950)) b!5016109))

(assert (=> b!5016108 m!6049690))

(assert (=> b!5016108 m!6049542))

(declare-fun m!6051070 () Bool)

(assert (=> b!5016108 m!6051070))

(assert (=> b!5016108 m!6049690))

(assert (=> b!5016108 m!6051070))

(declare-fun m!6051072 () Bool)

(assert (=> b!5016108 m!6051072))

(assert (=> b!5016107 m!6049696))

(assert (=> b!5016107 m!6049542))

(declare-fun m!6051074 () Bool)

(assert (=> b!5016107 m!6051074))

(assert (=> b!5016109 m!6049542))

(declare-fun m!6051076 () Bool)

(assert (=> b!5016109 m!6051076))

(assert (=> b!5016109 m!6049662))

(assert (=> d!1614657 d!1615157))

(assert (=> d!1614657 d!1614641))

(declare-fun d!1615159 () Bool)

(assert (=> d!1615159 (isPrefix!5362 lt!2075006 (++!12657 lt!2075006 lt!2075014))))

(assert (=> d!1615159 true))

(declare-fun _$46!1972 () Unit!149127)

(assert (=> d!1615159 (= (choose!37095 lt!2075006 lt!2075014) _$46!1972)))

(declare-fun bs!1186970 () Bool)

(assert (= bs!1186970 d!1615159))

(assert (=> bs!1186970 m!6049542))

(assert (=> bs!1186970 m!6049542))

(assert (=> bs!1186970 m!6049722))

(assert (=> d!1614657 d!1615159))

(declare-fun b!5016112 () Bool)

(declare-fun e!3133662 () Bool)

(assert (=> b!5016112 (= e!3133662 (isPrefix!5362 (tail!9878 (_1!34844 lt!2074993)) (tail!9878 (++!12657 (_1!34844 lt!2074993) (_2!34844 lt!2074993)))))))

(declare-fun b!5016111 () Bool)

(declare-fun res!2138957 () Bool)

(assert (=> b!5016111 (=> (not res!2138957) (not e!3133662))))

(assert (=> b!5016111 (= res!2138957 (= (head!10745 (_1!34844 lt!2074993)) (head!10745 (++!12657 (_1!34844 lt!2074993) (_2!34844 lt!2074993)))))))

(declare-fun b!5016113 () Bool)

(declare-fun e!3133661 () Bool)

(assert (=> b!5016113 (= e!3133661 (>= (size!38500 (++!12657 (_1!34844 lt!2074993) (_2!34844 lt!2074993))) (size!38500 (_1!34844 lt!2074993))))))

(declare-fun b!5016110 () Bool)

(declare-fun e!3133660 () Bool)

(assert (=> b!5016110 (= e!3133660 e!3133662)))

(declare-fun res!2138956 () Bool)

(assert (=> b!5016110 (=> (not res!2138956) (not e!3133662))))

(assert (=> b!5016110 (= res!2138956 (not ((_ is Nil!57907) (++!12657 (_1!34844 lt!2074993) (_2!34844 lt!2074993)))))))

(declare-fun d!1615161 () Bool)

(assert (=> d!1615161 e!3133661))

(declare-fun res!2138954 () Bool)

(assert (=> d!1615161 (=> res!2138954 e!3133661)))

(declare-fun lt!2075585 () Bool)

(assert (=> d!1615161 (= res!2138954 (not lt!2075585))))

(assert (=> d!1615161 (= lt!2075585 e!3133660)))

(declare-fun res!2138955 () Bool)

(assert (=> d!1615161 (=> res!2138955 e!3133660)))

(assert (=> d!1615161 (= res!2138955 ((_ is Nil!57907) (_1!34844 lt!2074993)))))

(assert (=> d!1615161 (= (isPrefix!5362 (_1!34844 lt!2074993) (++!12657 (_1!34844 lt!2074993) (_2!34844 lt!2074993))) lt!2075585)))

(assert (= (and d!1615161 (not res!2138955)) b!5016110))

(assert (= (and b!5016110 res!2138956) b!5016111))

(assert (= (and b!5016111 res!2138957) b!5016112))

(assert (= (and d!1615161 (not res!2138954)) b!5016113))

(assert (=> b!5016112 m!6049974))

(assert (=> b!5016112 m!6049484))

(declare-fun m!6051078 () Bool)

(assert (=> b!5016112 m!6051078))

(assert (=> b!5016112 m!6049974))

(assert (=> b!5016112 m!6051078))

(declare-fun m!6051080 () Bool)

(assert (=> b!5016112 m!6051080))

(assert (=> b!5016111 m!6049980))

(assert (=> b!5016111 m!6049484))

(declare-fun m!6051082 () Bool)

(assert (=> b!5016111 m!6051082))

(assert (=> b!5016113 m!6049484))

(declare-fun m!6051084 () Bool)

(assert (=> b!5016113 m!6051084))

(assert (=> b!5016113 m!6049564))

(assert (=> d!1614703 d!1615161))

(assert (=> d!1614703 d!1614725))

(declare-fun d!1615163 () Bool)

(assert (=> d!1615163 (isPrefix!5362 (_1!34844 lt!2074993) (++!12657 (_1!34844 lt!2074993) (_2!34844 lt!2074993)))))

(assert (=> d!1615163 true))

(declare-fun _$46!1973 () Unit!149127)

(assert (=> d!1615163 (= (choose!37095 (_1!34844 lt!2074993) (_2!34844 lt!2074993)) _$46!1973)))

(declare-fun bs!1186971 () Bool)

(assert (= bs!1186971 d!1615163))

(assert (=> bs!1186971 m!6049484))

(assert (=> bs!1186971 m!6049484))

(assert (=> bs!1186971 m!6049970))

(assert (=> d!1614703 d!1615163))

(declare-fun d!1615165 () Bool)

(declare-fun c!857073 () Bool)

(assert (=> d!1615165 (= c!857073 ((_ is Nil!57907) lt!2075313))))

(declare-fun e!3133663 () (InoxSet C!27868))

(assert (=> d!1615165 (= (content!10267 lt!2075313) e!3133663)))

(declare-fun b!5016114 () Bool)

(assert (=> b!5016114 (= e!3133663 ((as const (Array C!27868 Bool)) false))))

(declare-fun b!5016115 () Bool)

(assert (=> b!5016115 (= e!3133663 ((_ map or) (store ((as const (Array C!27868 Bool)) false) (h!64355 lt!2075313) true) (content!10267 (t!370399 lt!2075313))))))

(assert (= (and d!1615165 c!857073) b!5016114))

(assert (= (and d!1615165 (not c!857073)) b!5016115))

(declare-fun m!6051086 () Bool)

(assert (=> b!5016115 m!6051086))

(declare-fun m!6051088 () Bool)

(assert (=> b!5016115 m!6051088))

(assert (=> d!1614723 d!1615165))

(assert (=> d!1614723 d!1614993))

(declare-fun b!5016116 () Bool)

(declare-fun e!3133670 () Bool)

(assert (=> b!5016116 (= e!3133670 (= (head!10745 (tail!9878 (_1!34844 lt!2074993))) (c!856664 (derivativeStep!3987 r!12727 (head!10745 (_1!34844 lt!2074993))))))))

(declare-fun b!5016117 () Bool)

(declare-fun e!3133668 () Bool)

(declare-fun lt!2075586 () Bool)

(declare-fun call!350377 () Bool)

(assert (=> b!5016117 (= e!3133668 (= lt!2075586 call!350377))))

(declare-fun b!5016118 () Bool)

(declare-fun e!3133666 () Bool)

(declare-fun e!3133664 () Bool)

(assert (=> b!5016118 (= e!3133666 e!3133664)))

(declare-fun res!2138959 () Bool)

(assert (=> b!5016118 (=> (not res!2138959) (not e!3133664))))

(assert (=> b!5016118 (= res!2138959 (not lt!2075586))))

(declare-fun b!5016119 () Bool)

(declare-fun e!3133665 () Bool)

(assert (=> b!5016119 (= e!3133665 (matchR!6773 (derivativeStep!3987 (derivativeStep!3987 r!12727 (head!10745 (_1!34844 lt!2074993))) (head!10745 (tail!9878 (_1!34844 lt!2074993)))) (tail!9878 (tail!9878 (_1!34844 lt!2074993)))))))

(declare-fun bm!350372 () Bool)

(assert (=> bm!350372 (= call!350377 (isEmpty!31376 (tail!9878 (_1!34844 lt!2074993))))))

(declare-fun b!5016120 () Bool)

(declare-fun e!3133667 () Bool)

(assert (=> b!5016120 (= e!3133664 e!3133667)))

(declare-fun res!2138961 () Bool)

(assert (=> b!5016120 (=> res!2138961 e!3133667)))

(assert (=> b!5016120 (= res!2138961 call!350377)))

(declare-fun b!5016121 () Bool)

(declare-fun e!3133669 () Bool)

(assert (=> b!5016121 (= e!3133668 e!3133669)))

(declare-fun c!857074 () Bool)

(assert (=> b!5016121 (= c!857074 ((_ is EmptyLang!13809) (derivativeStep!3987 r!12727 (head!10745 (_1!34844 lt!2074993)))))))

(declare-fun d!1615167 () Bool)

(assert (=> d!1615167 e!3133668))

(declare-fun c!857075 () Bool)

(assert (=> d!1615167 (= c!857075 ((_ is EmptyExpr!13809) (derivativeStep!3987 r!12727 (head!10745 (_1!34844 lt!2074993)))))))

(assert (=> d!1615167 (= lt!2075586 e!3133665)))

(declare-fun c!857076 () Bool)

(assert (=> d!1615167 (= c!857076 (isEmpty!31376 (tail!9878 (_1!34844 lt!2074993))))))

(assert (=> d!1615167 (validRegex!6106 (derivativeStep!3987 r!12727 (head!10745 (_1!34844 lt!2074993))))))

(assert (=> d!1615167 (= (matchR!6773 (derivativeStep!3987 r!12727 (head!10745 (_1!34844 lt!2074993))) (tail!9878 (_1!34844 lt!2074993))) lt!2075586)))

(declare-fun b!5016122 () Bool)

(assert (=> b!5016122 (= e!3133665 (nullable!4696 (derivativeStep!3987 r!12727 (head!10745 (_1!34844 lt!2074993)))))))

(declare-fun b!5016123 () Bool)

(declare-fun res!2138963 () Bool)

(assert (=> b!5016123 (=> res!2138963 e!3133666)))

(assert (=> b!5016123 (= res!2138963 (not ((_ is ElementMatch!13809) (derivativeStep!3987 r!12727 (head!10745 (_1!34844 lt!2074993))))))))

(assert (=> b!5016123 (= e!3133669 e!3133666)))

(declare-fun b!5016124 () Bool)

(declare-fun res!2138960 () Bool)

(assert (=> b!5016124 (=> res!2138960 e!3133666)))

(assert (=> b!5016124 (= res!2138960 e!3133670)))

(declare-fun res!2138965 () Bool)

(assert (=> b!5016124 (=> (not res!2138965) (not e!3133670))))

(assert (=> b!5016124 (= res!2138965 lt!2075586)))

(declare-fun b!5016125 () Bool)

(declare-fun res!2138964 () Bool)

(assert (=> b!5016125 (=> res!2138964 e!3133667)))

(assert (=> b!5016125 (= res!2138964 (not (isEmpty!31376 (tail!9878 (tail!9878 (_1!34844 lt!2074993))))))))

(declare-fun b!5016126 () Bool)

(declare-fun res!2138962 () Bool)

(assert (=> b!5016126 (=> (not res!2138962) (not e!3133670))))

(assert (=> b!5016126 (= res!2138962 (isEmpty!31376 (tail!9878 (tail!9878 (_1!34844 lt!2074993)))))))

(declare-fun b!5016127 () Bool)

(assert (=> b!5016127 (= e!3133669 (not lt!2075586))))

(declare-fun b!5016128 () Bool)

(assert (=> b!5016128 (= e!3133667 (not (= (head!10745 (tail!9878 (_1!34844 lt!2074993))) (c!856664 (derivativeStep!3987 r!12727 (head!10745 (_1!34844 lt!2074993)))))))))

(declare-fun b!5016129 () Bool)

(declare-fun res!2138958 () Bool)

(assert (=> b!5016129 (=> (not res!2138958) (not e!3133670))))

(assert (=> b!5016129 (= res!2138958 (not call!350377))))

(assert (= (and d!1615167 c!857076) b!5016122))

(assert (= (and d!1615167 (not c!857076)) b!5016119))

(assert (= (and d!1615167 c!857075) b!5016117))

(assert (= (and d!1615167 (not c!857075)) b!5016121))

(assert (= (and b!5016121 c!857074) b!5016127))

(assert (= (and b!5016121 (not c!857074)) b!5016123))

(assert (= (and b!5016123 (not res!2138963)) b!5016124))

(assert (= (and b!5016124 res!2138965) b!5016129))

(assert (= (and b!5016129 res!2138958) b!5016126))

(assert (= (and b!5016126 res!2138962) b!5016116))

(assert (= (and b!5016124 (not res!2138960)) b!5016118))

(assert (= (and b!5016118 res!2138959) b!5016120))

(assert (= (and b!5016120 (not res!2138961)) b!5016125))

(assert (= (and b!5016125 (not res!2138964)) b!5016128))

(assert (= (or b!5016117 b!5016120 b!5016129) bm!350372))

(assert (=> b!5016122 m!6050182))

(declare-fun m!6051090 () Bool)

(assert (=> b!5016122 m!6051090))

(assert (=> b!5016128 m!6049974))

(assert (=> b!5016128 m!6050564))

(assert (=> b!5016126 m!6049974))

(assert (=> b!5016126 m!6050558))

(assert (=> b!5016126 m!6050558))

(declare-fun m!6051092 () Bool)

(assert (=> b!5016126 m!6051092))

(assert (=> bm!350372 m!6049974))

(assert (=> bm!350372 m!6050180))

(assert (=> b!5016116 m!6049974))

(assert (=> b!5016116 m!6050564))

(assert (=> b!5016125 m!6049974))

(assert (=> b!5016125 m!6050558))

(assert (=> b!5016125 m!6050558))

(assert (=> b!5016125 m!6051092))

(assert (=> b!5016119 m!6049974))

(assert (=> b!5016119 m!6050564))

(assert (=> b!5016119 m!6050182))

(assert (=> b!5016119 m!6050564))

(declare-fun m!6051094 () Bool)

(assert (=> b!5016119 m!6051094))

(assert (=> b!5016119 m!6049974))

(assert (=> b!5016119 m!6050558))

(assert (=> b!5016119 m!6051094))

(assert (=> b!5016119 m!6050558))

(declare-fun m!6051096 () Bool)

(assert (=> b!5016119 m!6051096))

(assert (=> d!1615167 m!6049974))

(assert (=> d!1615167 m!6050180))

(assert (=> d!1615167 m!6050182))

(declare-fun m!6051098 () Bool)

(assert (=> d!1615167 m!6051098))

(assert (=> b!5015296 d!1615167))

(declare-fun bm!350373 () Bool)

(declare-fun call!350379 () Regex!13809)

(declare-fun call!350381 () Regex!13809)

(assert (=> bm!350373 (= call!350379 call!350381)))

(declare-fun b!5016130 () Bool)

(declare-fun e!3133671 () Regex!13809)

(declare-fun e!3133673 () Regex!13809)

(assert (=> b!5016130 (= e!3133671 e!3133673)))

(declare-fun c!857081 () Bool)

(assert (=> b!5016130 (= c!857081 ((_ is Star!13809) r!12727))))

(declare-fun b!5016131 () Bool)

(declare-fun e!3133675 () Regex!13809)

(assert (=> b!5016131 (= e!3133675 (ite (= (head!10745 (_1!34844 lt!2074993)) (c!856664 r!12727)) EmptyExpr!13809 EmptyLang!13809))))

(declare-fun d!1615169 () Bool)

(declare-fun lt!2075587 () Regex!13809)

(assert (=> d!1615169 (validRegex!6106 lt!2075587)))

(declare-fun e!3133672 () Regex!13809)

(assert (=> d!1615169 (= lt!2075587 e!3133672)))

(declare-fun c!857079 () Bool)

(assert (=> d!1615169 (= c!857079 (or ((_ is EmptyExpr!13809) r!12727) ((_ is EmptyLang!13809) r!12727)))))

(assert (=> d!1615169 (validRegex!6106 r!12727)))

(assert (=> d!1615169 (= (derivativeStep!3987 r!12727 (head!10745 (_1!34844 lt!2074993))) lt!2075587)))

(declare-fun b!5016132 () Bool)

(assert (=> b!5016132 (= e!3133672 e!3133675)))

(declare-fun c!857077 () Bool)

(assert (=> b!5016132 (= c!857077 ((_ is ElementMatch!13809) r!12727))))

(declare-fun call!350378 () Regex!13809)

(declare-fun e!3133674 () Regex!13809)

(declare-fun call!350380 () Regex!13809)

(declare-fun b!5016133 () Bool)

(assert (=> b!5016133 (= e!3133674 (Union!13809 (Concat!22602 call!350380 (regTwo!28130 r!12727)) call!350378))))

(declare-fun b!5016134 () Bool)

(assert (=> b!5016134 (= e!3133671 (Union!13809 call!350381 call!350380))))

(declare-fun c!857080 () Bool)

(declare-fun bm!350374 () Bool)

(declare-fun c!857078 () Bool)

(assert (=> bm!350374 (= call!350381 (derivativeStep!3987 (ite c!857080 (regOne!28131 r!12727) (ite c!857081 (reg!14138 r!12727) (ite c!857078 (regTwo!28130 r!12727) (regOne!28130 r!12727)))) (head!10745 (_1!34844 lt!2074993))))))

(declare-fun b!5016135 () Bool)

(assert (=> b!5016135 (= e!3133673 (Concat!22602 call!350379 r!12727))))

(declare-fun b!5016136 () Bool)

(assert (=> b!5016136 (= e!3133674 (Union!13809 (Concat!22602 call!350378 (regTwo!28130 r!12727)) EmptyLang!13809))))

(declare-fun b!5016137 () Bool)

(assert (=> b!5016137 (= c!857080 ((_ is Union!13809) r!12727))))

(assert (=> b!5016137 (= e!3133675 e!3133671)))

(declare-fun bm!350375 () Bool)

(assert (=> bm!350375 (= call!350378 call!350379)))

(declare-fun b!5016138 () Bool)

(assert (=> b!5016138 (= c!857078 (nullable!4696 (regOne!28130 r!12727)))))

(assert (=> b!5016138 (= e!3133673 e!3133674)))

(declare-fun bm!350376 () Bool)

(assert (=> bm!350376 (= call!350380 (derivativeStep!3987 (ite c!857080 (regTwo!28131 r!12727) (regOne!28130 r!12727)) (head!10745 (_1!34844 lt!2074993))))))

(declare-fun b!5016139 () Bool)

(assert (=> b!5016139 (= e!3133672 EmptyLang!13809)))

(assert (= (and d!1615169 c!857079) b!5016139))

(assert (= (and d!1615169 (not c!857079)) b!5016132))

(assert (= (and b!5016132 c!857077) b!5016131))

(assert (= (and b!5016132 (not c!857077)) b!5016137))

(assert (= (and b!5016137 c!857080) b!5016134))

(assert (= (and b!5016137 (not c!857080)) b!5016130))

(assert (= (and b!5016130 c!857081) b!5016135))

(assert (= (and b!5016130 (not c!857081)) b!5016138))

(assert (= (and b!5016138 c!857078) b!5016133))

(assert (= (and b!5016138 (not c!857078)) b!5016136))

(assert (= (or b!5016133 b!5016136) bm!350375))

(assert (= (or b!5016135 bm!350375) bm!350373))

(assert (= (or b!5016134 bm!350373) bm!350374))

(assert (= (or b!5016134 b!5016133) bm!350376))

(declare-fun m!6051100 () Bool)

(assert (=> d!1615169 m!6051100))

(assert (=> d!1615169 m!6049528))

(assert (=> bm!350374 m!6049980))

(declare-fun m!6051102 () Bool)

(assert (=> bm!350374 m!6051102))

(assert (=> b!5016138 m!6050276))

(assert (=> bm!350376 m!6049980))

(declare-fun m!6051104 () Bool)

(assert (=> bm!350376 m!6051104))

(assert (=> b!5015296 d!1615169))

(assert (=> b!5015296 d!1614863))

(assert (=> b!5015296 d!1614957))

(declare-fun d!1615171 () Bool)

(declare-fun lt!2075588 () Int)

(assert (=> d!1615171 (>= lt!2075588 0)))

(declare-fun e!3133676 () Int)

(assert (=> d!1615171 (= lt!2075588 e!3133676)))

(declare-fun c!857082 () Bool)

(assert (=> d!1615171 (= c!857082 ((_ is Nil!57907) (list!18650 (_1!34843 lt!2075011))))))

(assert (=> d!1615171 (= (size!38500 (list!18650 (_1!34843 lt!2075011))) lt!2075588)))

(declare-fun b!5016140 () Bool)

(assert (=> b!5016140 (= e!3133676 0)))

(declare-fun b!5016141 () Bool)

(assert (=> b!5016141 (= e!3133676 (+ 1 (size!38500 (t!370399 (list!18650 (_1!34843 lt!2075011))))))))

(assert (= (and d!1615171 c!857082) b!5016140))

(assert (= (and d!1615171 (not c!857082)) b!5016141))

(declare-fun m!6051106 () Bool)

(assert (=> b!5016141 m!6051106))

(assert (=> d!1614737 d!1615171))

(assert (=> d!1614737 d!1614633))

(declare-fun d!1615173 () Bool)

(declare-fun lt!2075589 () Int)

(assert (=> d!1615173 (= lt!2075589 (size!38500 (list!18651 (c!856663 (_1!34843 lt!2075011)))))))

(assert (=> d!1615173 (= lt!2075589 (ite ((_ is Empty!15328) (c!856663 (_1!34843 lt!2075011))) 0 (ite ((_ is Leaf!25441) (c!856663 (_1!34843 lt!2075011))) (csize!30887 (c!856663 (_1!34843 lt!2075011))) (csize!30886 (c!856663 (_1!34843 lt!2075011))))))))

(assert (=> d!1615173 (= (size!38502 (c!856663 (_1!34843 lt!2075011))) lt!2075589)))

(declare-fun bs!1186972 () Bool)

(assert (= bs!1186972 d!1615173))

(assert (=> bs!1186972 m!6049640))

(assert (=> bs!1186972 m!6049640))

(declare-fun m!6051108 () Bool)

(assert (=> bs!1186972 m!6051108))

(assert (=> d!1614737 d!1615173))

(assert (=> b!5015299 d!1614861))

(assert (=> d!1614639 d!1614605))

(assert (=> d!1614639 d!1614607))

(assert (=> d!1614639 d!1614643))

(declare-fun d!1615175 () Bool)

(assert (=> d!1615175 (= (list!18650 (_1!34843 lt!2075058)) (list!18651 (c!856663 (_1!34843 lt!2075058))))))

(declare-fun bs!1186973 () Bool)

(assert (= bs!1186973 d!1615175))

(declare-fun m!6051110 () Bool)

(assert (=> bs!1186973 m!6051110))

(assert (=> d!1614639 d!1615175))

(assert (=> d!1614639 d!1614637))

(declare-fun d!1615177 () Bool)

(declare-fun e!3133677 () Bool)

(assert (=> d!1615177 e!3133677))

(declare-fun res!2138966 () Bool)

(assert (=> d!1615177 (=> res!2138966 e!3133677)))

(declare-fun lt!2075590 () Bool)

(assert (=> d!1615177 (= res!2138966 (not lt!2075590))))

(assert (=> d!1615177 (= lt!2075590 (= (list!18650 input!5597) (drop!2472 (list!18650 totalInput!1012) (- (size!38500 (list!18650 totalInput!1012)) (size!38500 (list!18650 input!5597))))))))

(assert (=> d!1615177 (= (isSuffix!1375 (list!18650 input!5597) (list!18650 totalInput!1012)) lt!2075590)))

(declare-fun b!5016142 () Bool)

(assert (=> b!5016142 (= e!3133677 (>= (size!38500 (list!18650 totalInput!1012)) (size!38500 (list!18650 input!5597))))))

(assert (= (and d!1615177 (not res!2138966)) b!5016142))

(assert (=> d!1615177 m!6049574))

(assert (=> d!1615177 m!6049644))

(assert (=> d!1615177 m!6049576))

(assert (=> d!1615177 m!6049674))

(assert (=> d!1615177 m!6049574))

(declare-fun m!6051112 () Bool)

(assert (=> d!1615177 m!6051112))

(assert (=> b!5016142 m!6049574))

(assert (=> b!5016142 m!6049644))

(assert (=> b!5016142 m!6049576))

(assert (=> b!5016142 m!6049674))

(assert (=> d!1614639 d!1615177))

(declare-fun b!5016148 () Bool)

(declare-fun e!3133680 () Bool)

(declare-fun lt!2075591 () List!58031)

(assert (=> b!5016148 (= e!3133680 (or (not (= (list!18650 (_2!34843 lt!2075058)) Nil!57907)) (= lt!2075591 (list!18650 (_1!34843 lt!2075058)))))))

(declare-fun b!5016147 () Bool)

(declare-fun res!2138970 () Bool)

(assert (=> b!5016147 (=> (not res!2138970) (not e!3133680))))

(assert (=> b!5016147 (= res!2138970 (= (size!38500 lt!2075591) (+ (size!38500 (list!18650 (_1!34843 lt!2075058))) (size!38500 (list!18650 (_2!34843 lt!2075058))))))))

(declare-fun b!5016146 () Bool)

(declare-fun e!3133681 () List!58031)

(assert (=> b!5016146 (= e!3133681 (Cons!57907 (h!64355 (list!18650 (_1!34843 lt!2075058))) (++!12657 (t!370399 (list!18650 (_1!34843 lt!2075058))) (list!18650 (_2!34843 lt!2075058)))))))

(declare-fun d!1615179 () Bool)

(assert (=> d!1615179 e!3133680))

(declare-fun res!2138969 () Bool)

(assert (=> d!1615179 (=> (not res!2138969) (not e!3133680))))

(assert (=> d!1615179 (= res!2138969 (= (content!10267 lt!2075591) ((_ map or) (content!10267 (list!18650 (_1!34843 lt!2075058))) (content!10267 (list!18650 (_2!34843 lt!2075058))))))))

(assert (=> d!1615179 (= lt!2075591 e!3133681)))

(declare-fun c!857083 () Bool)

(assert (=> d!1615179 (= c!857083 ((_ is Nil!57907) (list!18650 (_1!34843 lt!2075058))))))

(assert (=> d!1615179 (= (++!12657 (list!18650 (_1!34843 lt!2075058)) (list!18650 (_2!34843 lt!2075058))) lt!2075591)))

(declare-fun b!5016145 () Bool)

(assert (=> b!5016145 (= e!3133681 (list!18650 (_2!34843 lt!2075058)))))

(assert (= (and d!1615179 c!857083) b!5016145))

(assert (= (and d!1615179 (not c!857083)) b!5016146))

(assert (= (and d!1615179 res!2138969) b!5016147))

(assert (= (and b!5016147 res!2138970) b!5016148))

(declare-fun m!6051114 () Bool)

(assert (=> b!5016147 m!6051114))

(assert (=> b!5016147 m!6049648))

(declare-fun m!6051116 () Bool)

(assert (=> b!5016147 m!6051116))

(assert (=> b!5016147 m!6049650))

(declare-fun m!6051118 () Bool)

(assert (=> b!5016147 m!6051118))

(assert (=> b!5016146 m!6049650))

(declare-fun m!6051120 () Bool)

(assert (=> b!5016146 m!6051120))

(declare-fun m!6051122 () Bool)

(assert (=> d!1615179 m!6051122))

(assert (=> d!1615179 m!6049648))

(declare-fun m!6051124 () Bool)

(assert (=> d!1615179 m!6051124))

(assert (=> d!1615179 m!6049650))

(declare-fun m!6051126 () Bool)

(assert (=> d!1615179 m!6051126))

(assert (=> d!1614639 d!1615179))

(declare-fun d!1615181 () Bool)

(assert (=> d!1615181 (= (list!18650 (_2!34843 lt!2075058)) (list!18651 (c!856663 (_2!34843 lt!2075058))))))

(declare-fun bs!1186974 () Bool)

(assert (= bs!1186974 d!1615181))

(declare-fun m!6051128 () Bool)

(assert (=> bs!1186974 m!6051128))

(assert (=> d!1614639 d!1615181))

(declare-fun d!1615183 () Bool)

(declare-fun e!3133699 () Bool)

(assert (=> d!1615183 e!3133699))

(declare-fun res!2138982 () Bool)

(assert (=> d!1615183 (=> (not res!2138982) (not e!3133699))))

(declare-fun lt!2075602 () tuple2!63080)

(assert (=> d!1615183 (= res!2138982 (isBalanced!4279 (c!856663 (_1!34843 lt!2075602))))))

(declare-datatypes ((tuple2!63086 0))(
  ( (tuple2!63087 (_1!34846 Conc!15328) (_2!34846 Conc!15328)) )
))
(declare-fun lt!2075603 () tuple2!63086)

(assert (=> d!1615183 (= lt!2075602 (tuple2!63081 (BalanceConc!30087 (_1!34846 lt!2075603)) (BalanceConc!30087 (_2!34846 lt!2075603))))))

(declare-fun splitAt!463 (Conc!15328 Int) tuple2!63086)

(assert (=> d!1615183 (= lt!2075603 (splitAt!463 (c!856663 input!5597) (findLongestMatchInnerZipperFastV2!149 z!4183 (- lt!2075059 (size!38501 input!5597)) totalInput!1012 lt!2075059)))))

(assert (=> d!1615183 (isBalanced!4279 (c!856663 input!5597))))

(assert (=> d!1615183 (= (splitAt!460 input!5597 (findLongestMatchInnerZipperFastV2!149 z!4183 (- lt!2075059 (size!38501 input!5597)) totalInput!1012 lt!2075059)) lt!2075602)))

(declare-fun b!5016179 () Bool)

(declare-fun res!2138981 () Bool)

(assert (=> b!5016179 (=> (not res!2138981) (not e!3133699))))

(assert (=> b!5016179 (= res!2138981 (isBalanced!4279 (c!856663 (_2!34843 lt!2075602))))))

(declare-fun b!5016180 () Bool)

(declare-fun splitAtIndex!167 (List!58031 Int) tuple2!63082)

(assert (=> b!5016180 (= e!3133699 (= (tuple2!63083 (list!18650 (_1!34843 lt!2075602)) (list!18650 (_2!34843 lt!2075602))) (splitAtIndex!167 (list!18650 input!5597) (findLongestMatchInnerZipperFastV2!149 z!4183 (- lt!2075059 (size!38501 input!5597)) totalInput!1012 lt!2075059))))))

(assert (= (and d!1615183 res!2138982) b!5016179))

(assert (= (and b!5016179 res!2138981) b!5016180))

(declare-fun m!6051154 () Bool)

(assert (=> d!1615183 m!6051154))

(assert (=> d!1615183 m!6049654))

(declare-fun m!6051156 () Bool)

(assert (=> d!1615183 m!6051156))

(assert (=> d!1615183 m!6049596))

(declare-fun m!6051158 () Bool)

(assert (=> b!5016179 m!6051158))

(declare-fun m!6051160 () Bool)

(assert (=> b!5016180 m!6051160))

(declare-fun m!6051162 () Bool)

(assert (=> b!5016180 m!6051162))

(assert (=> b!5016180 m!6049576))

(assert (=> b!5016180 m!6049576))

(assert (=> b!5016180 m!6049654))

(declare-fun m!6051168 () Bool)

(assert (=> b!5016180 m!6051168))

(assert (=> d!1614639 d!1615183))

(declare-fun b!5016185 () Bool)

(declare-fun e!3133707 () Bool)

(assert (=> b!5016185 (= e!3133707 (lostCauseZipper!837 z!4183))))

(declare-fun b!5016186 () Bool)

(declare-fun e!3133705 () Int)

(declare-fun lt!2075606 () Int)

(assert (=> b!5016186 (= e!3133705 (+ 1 lt!2075606))))

(declare-fun b!5016187 () Bool)

(declare-fun e!3133703 () Bool)

(assert (=> b!5016187 (= e!3133703 (<= (- lt!2075059 (size!38501 input!5597)) (size!38501 totalInput!1012)))))

(declare-fun d!1615195 () Bool)

(declare-fun lt!2075605 () Int)

(assert (=> d!1615195 (and (>= lt!2075605 0) (<= lt!2075605 (- lt!2075059 (- lt!2075059 (size!38501 input!5597)))))))

(declare-fun e!3133704 () Int)

(assert (=> d!1615195 (= lt!2075605 e!3133704)))

(declare-fun c!857097 () Bool)

(assert (=> d!1615195 (= c!857097 e!3133707)))

(declare-fun res!2138988 () Bool)

(assert (=> d!1615195 (=> res!2138988 e!3133707)))

(assert (=> d!1615195 (= res!2138988 (= (- lt!2075059 (size!38501 input!5597)) lt!2075059))))

(assert (=> d!1615195 e!3133703))

(declare-fun res!2138987 () Bool)

(assert (=> d!1615195 (=> (not res!2138987) (not e!3133703))))

(assert (=> d!1615195 (= res!2138987 (>= (- lt!2075059 (size!38501 input!5597)) 0))))

(assert (=> d!1615195 (= (findLongestMatchInnerZipperFastV2!149 z!4183 (- lt!2075059 (size!38501 input!5597)) totalInput!1012 lt!2075059) lt!2075605)))

(declare-fun b!5016188 () Bool)

(assert (=> b!5016188 (= e!3133704 0)))

(declare-fun b!5016189 () Bool)

(declare-fun e!3133706 () Int)

(assert (=> b!5016189 (= e!3133706 1)))

(declare-fun b!5016190 () Bool)

(declare-fun c!857095 () Bool)

(declare-fun lt!2075607 () (InoxSet Context!6468))

(assert (=> b!5016190 (= c!857095 (nullableZipper!891 lt!2075607))))

(assert (=> b!5016190 (= e!3133705 e!3133706)))

(declare-fun b!5016191 () Bool)

(assert (=> b!5016191 (= e!3133706 0)))

(declare-fun b!5016192 () Bool)

(assert (=> b!5016192 (= e!3133704 e!3133705)))

(assert (=> b!5016192 (= lt!2075607 (derivationStepZipper!640 z!4183 (apply!14008 totalInput!1012 (- lt!2075059 (size!38501 input!5597)))))))

(assert (=> b!5016192 (= lt!2075606 (findLongestMatchInnerZipperFastV2!149 lt!2075607 (+ (- lt!2075059 (size!38501 input!5597)) 1) totalInput!1012 lt!2075059))))

(declare-fun c!857096 () Bool)

(assert (=> b!5016192 (= c!857096 (> lt!2075606 0))))

(assert (= (and d!1615195 res!2138987) b!5016187))

(assert (= (and d!1615195 (not res!2138988)) b!5016185))

(assert (= (and d!1615195 c!857097) b!5016188))

(assert (= (and d!1615195 (not c!857097)) b!5016192))

(assert (= (and b!5016192 c!857096) b!5016186))

(assert (= (and b!5016192 (not c!857096)) b!5016190))

(assert (= (and b!5016190 c!857095) b!5016189))

(assert (= (and b!5016190 (not c!857095)) b!5016191))

(assert (=> b!5016185 m!6049710))

(assert (=> b!5016187 m!6049538))

(declare-fun m!6051176 () Bool)

(assert (=> b!5016190 m!6051176))

(declare-fun m!6051178 () Bool)

(assert (=> b!5016192 m!6051178))

(assert (=> b!5016192 m!6051178))

(declare-fun m!6051182 () Bool)

(assert (=> b!5016192 m!6051182))

(declare-fun m!6051184 () Bool)

(assert (=> b!5016192 m!6051184))

(assert (=> d!1614639 d!1615195))

(declare-fun e!3133711 () Bool)

(assert (=> b!5015395 (= tp!1406447 e!3133711)))

(declare-fun b!5016200 () Bool)

(declare-fun tp!1406519 () Bool)

(declare-fun tp!1406518 () Bool)

(assert (=> b!5016200 (= e!3133711 (and tp!1406519 tp!1406518))))

(declare-fun b!5016199 () Bool)

(declare-fun tp!1406515 () Bool)

(assert (=> b!5016199 (= e!3133711 tp!1406515)))

(declare-fun b!5016197 () Bool)

(assert (=> b!5016197 (= e!3133711 tp_is_empty!36615)))

(declare-fun b!5016198 () Bool)

(declare-fun tp!1406517 () Bool)

(declare-fun tp!1406516 () Bool)

(assert (=> b!5016198 (= e!3133711 (and tp!1406517 tp!1406516))))

(assert (= (and b!5015395 ((_ is ElementMatch!13809) (regOne!28130 (regTwo!28130 r!12727)))) b!5016197))

(assert (= (and b!5015395 ((_ is Concat!22602) (regOne!28130 (regTwo!28130 r!12727)))) b!5016198))

(assert (= (and b!5015395 ((_ is Star!13809) (regOne!28130 (regTwo!28130 r!12727)))) b!5016199))

(assert (= (and b!5015395 ((_ is Union!13809) (regOne!28130 (regTwo!28130 r!12727)))) b!5016200))

(declare-fun e!3133712 () Bool)

(assert (=> b!5015395 (= tp!1406446 e!3133712)))

(declare-fun b!5016204 () Bool)

(declare-fun tp!1406524 () Bool)

(declare-fun tp!1406523 () Bool)

(assert (=> b!5016204 (= e!3133712 (and tp!1406524 tp!1406523))))

(declare-fun b!5016203 () Bool)

(declare-fun tp!1406520 () Bool)

(assert (=> b!5016203 (= e!3133712 tp!1406520)))

(declare-fun b!5016201 () Bool)

(assert (=> b!5016201 (= e!3133712 tp_is_empty!36615)))

(declare-fun b!5016202 () Bool)

(declare-fun tp!1406522 () Bool)

(declare-fun tp!1406521 () Bool)

(assert (=> b!5016202 (= e!3133712 (and tp!1406522 tp!1406521))))

(assert (= (and b!5015395 ((_ is ElementMatch!13809) (regTwo!28130 (regTwo!28130 r!12727)))) b!5016201))

(assert (= (and b!5015395 ((_ is Concat!22602) (regTwo!28130 (regTwo!28130 r!12727)))) b!5016202))

(assert (= (and b!5015395 ((_ is Star!13809) (regTwo!28130 (regTwo!28130 r!12727)))) b!5016203))

(assert (= (and b!5015395 ((_ is Union!13809) (regTwo!28130 (regTwo!28130 r!12727)))) b!5016204))

(declare-fun b!5016205 () Bool)

(declare-fun tp!1406526 () Bool)

(declare-fun e!3133713 () Bool)

(declare-fun tp!1406527 () Bool)

(assert (=> b!5016205 (= e!3133713 (and (inv!76116 (left!42334 (left!42334 (c!856663 input!5597)))) tp!1406526 (inv!76116 (right!42664 (left!42334 (c!856663 input!5597)))) tp!1406527))))

(declare-fun b!5016207 () Bool)

(declare-fun e!3133714 () Bool)

(declare-fun tp!1406525 () Bool)

(assert (=> b!5016207 (= e!3133714 tp!1406525)))

(declare-fun b!5016206 () Bool)

(assert (=> b!5016206 (= e!3133713 (and (inv!76123 (xs!18654 (left!42334 (c!856663 input!5597)))) e!3133714))))

(assert (=> b!5015334 (= tp!1406398 (and (inv!76116 (left!42334 (c!856663 input!5597))) e!3133713))))

(assert (= (and b!5015334 ((_ is Node!15328) (left!42334 (c!856663 input!5597)))) b!5016205))

(assert (= b!5016206 b!5016207))

(assert (= (and b!5015334 ((_ is Leaf!25441) (left!42334 (c!856663 input!5597)))) b!5016206))

(declare-fun m!6051192 () Bool)

(assert (=> b!5016205 m!6051192))

(declare-fun m!6051194 () Bool)

(assert (=> b!5016205 m!6051194))

(declare-fun m!6051196 () Bool)

(assert (=> b!5016206 m!6051196))

(assert (=> b!5015334 m!6050208))

(declare-fun e!3133715 () Bool)

(declare-fun b!5016208 () Bool)

(declare-fun tp!1406529 () Bool)

(declare-fun tp!1406530 () Bool)

(assert (=> b!5016208 (= e!3133715 (and (inv!76116 (left!42334 (right!42664 (c!856663 input!5597)))) tp!1406529 (inv!76116 (right!42664 (right!42664 (c!856663 input!5597)))) tp!1406530))))

(declare-fun b!5016210 () Bool)

(declare-fun e!3133716 () Bool)

(declare-fun tp!1406528 () Bool)

(assert (=> b!5016210 (= e!3133716 tp!1406528)))

(declare-fun b!5016209 () Bool)

(assert (=> b!5016209 (= e!3133715 (and (inv!76123 (xs!18654 (right!42664 (c!856663 input!5597)))) e!3133716))))

(assert (=> b!5015334 (= tp!1406399 (and (inv!76116 (right!42664 (c!856663 input!5597))) e!3133715))))

(assert (= (and b!5015334 ((_ is Node!15328) (right!42664 (c!856663 input!5597)))) b!5016208))

(assert (= b!5016209 b!5016210))

(assert (= (and b!5015334 ((_ is Leaf!25441) (right!42664 (c!856663 input!5597)))) b!5016209))

(declare-fun m!6051198 () Bool)

(assert (=> b!5016208 m!6051198))

(declare-fun m!6051200 () Bool)

(assert (=> b!5016208 m!6051200))

(declare-fun m!6051202 () Bool)

(assert (=> b!5016209 m!6051202))

(assert (=> b!5015334 m!6050210))

(declare-fun e!3133718 () Bool)

(assert (=> b!5015388 (= tp!1406435 e!3133718)))

(declare-fun b!5016216 () Bool)

(declare-fun tp!1406535 () Bool)

(declare-fun tp!1406534 () Bool)

(assert (=> b!5016216 (= e!3133718 (and tp!1406535 tp!1406534))))

(declare-fun b!5016215 () Bool)

(declare-fun tp!1406531 () Bool)

(assert (=> b!5016215 (= e!3133718 tp!1406531)))

(declare-fun b!5016213 () Bool)

(assert (=> b!5016213 (= e!3133718 tp_is_empty!36615)))

(declare-fun b!5016214 () Bool)

(declare-fun tp!1406533 () Bool)

(declare-fun tp!1406532 () Bool)

(assert (=> b!5016214 (= e!3133718 (and tp!1406533 tp!1406532))))

(assert (= (and b!5015388 ((_ is ElementMatch!13809) (reg!14138 (reg!14138 r!12727)))) b!5016213))

(assert (= (and b!5015388 ((_ is Concat!22602) (reg!14138 (reg!14138 r!12727)))) b!5016214))

(assert (= (and b!5015388 ((_ is Star!13809) (reg!14138 (reg!14138 r!12727)))) b!5016215))

(assert (= (and b!5015388 ((_ is Union!13809) (reg!14138 (reg!14138 r!12727)))) b!5016216))

(declare-fun b!5016230 () Bool)

(declare-fun e!3133728 () Bool)

(declare-fun tp!1406538 () Bool)

(assert (=> b!5016230 (= e!3133728 (and tp_is_empty!36615 tp!1406538))))

(assert (=> b!5015336 (= tp!1406397 e!3133728)))

(assert (= (and b!5015336 ((_ is Cons!57907) (innerList!15416 (xs!18654 (c!856663 input!5597))))) b!5016230))

(declare-fun e!3133729 () Bool)

(assert (=> b!5015376 (= tp!1406421 e!3133729)))

(declare-fun b!5016234 () Bool)

(declare-fun tp!1406543 () Bool)

(declare-fun tp!1406542 () Bool)

(assert (=> b!5016234 (= e!3133729 (and tp!1406543 tp!1406542))))

(declare-fun b!5016233 () Bool)

(declare-fun tp!1406539 () Bool)

(assert (=> b!5016233 (= e!3133729 tp!1406539)))

(declare-fun b!5016231 () Bool)

(assert (=> b!5016231 (= e!3133729 tp_is_empty!36615)))

(declare-fun b!5016232 () Bool)

(declare-fun tp!1406541 () Bool)

(declare-fun tp!1406540 () Bool)

(assert (=> b!5016232 (= e!3133729 (and tp!1406541 tp!1406540))))

(assert (= (and b!5015376 ((_ is ElementMatch!13809) (reg!14138 (regTwo!28131 r!12727)))) b!5016231))

(assert (= (and b!5015376 ((_ is Concat!22602) (reg!14138 (regTwo!28131 r!12727)))) b!5016232))

(assert (= (and b!5015376 ((_ is Star!13809) (reg!14138 (regTwo!28131 r!12727)))) b!5016233))

(assert (= (and b!5015376 ((_ is Union!13809) (reg!14138 (regTwo!28131 r!12727)))) b!5016234))

(declare-fun e!3133730 () Bool)

(assert (=> b!5015389 (= tp!1406439 e!3133730)))

(declare-fun b!5016238 () Bool)

(declare-fun tp!1406548 () Bool)

(declare-fun tp!1406547 () Bool)

(assert (=> b!5016238 (= e!3133730 (and tp!1406548 tp!1406547))))

(declare-fun b!5016237 () Bool)

(declare-fun tp!1406544 () Bool)

(assert (=> b!5016237 (= e!3133730 tp!1406544)))

(declare-fun b!5016235 () Bool)

(assert (=> b!5016235 (= e!3133730 tp_is_empty!36615)))

(declare-fun b!5016236 () Bool)

(declare-fun tp!1406546 () Bool)

(declare-fun tp!1406545 () Bool)

(assert (=> b!5016236 (= e!3133730 (and tp!1406546 tp!1406545))))

(assert (= (and b!5015389 ((_ is ElementMatch!13809) (regOne!28131 (reg!14138 r!12727)))) b!5016235))

(assert (= (and b!5015389 ((_ is Concat!22602) (regOne!28131 (reg!14138 r!12727)))) b!5016236))

(assert (= (and b!5015389 ((_ is Star!13809) (regOne!28131 (reg!14138 r!12727)))) b!5016237))

(assert (= (and b!5015389 ((_ is Union!13809) (regOne!28131 (reg!14138 r!12727)))) b!5016238))

(declare-fun e!3133731 () Bool)

(assert (=> b!5015389 (= tp!1406438 e!3133731)))

(declare-fun b!5016242 () Bool)

(declare-fun tp!1406553 () Bool)

(declare-fun tp!1406552 () Bool)

(assert (=> b!5016242 (= e!3133731 (and tp!1406553 tp!1406552))))

(declare-fun b!5016241 () Bool)

(declare-fun tp!1406549 () Bool)

(assert (=> b!5016241 (= e!3133731 tp!1406549)))

(declare-fun b!5016239 () Bool)

(assert (=> b!5016239 (= e!3133731 tp_is_empty!36615)))

(declare-fun b!5016240 () Bool)

(declare-fun tp!1406551 () Bool)

(declare-fun tp!1406550 () Bool)

(assert (=> b!5016240 (= e!3133731 (and tp!1406551 tp!1406550))))

(assert (= (and b!5015389 ((_ is ElementMatch!13809) (regTwo!28131 (reg!14138 r!12727)))) b!5016239))

(assert (= (and b!5015389 ((_ is Concat!22602) (regTwo!28131 (reg!14138 r!12727)))) b!5016240))

(assert (= (and b!5015389 ((_ is Star!13809) (regTwo!28131 (reg!14138 r!12727)))) b!5016241))

(assert (= (and b!5015389 ((_ is Union!13809) (regTwo!28131 (reg!14138 r!12727)))) b!5016242))

(declare-fun e!3133732 () Bool)

(assert (=> b!5015396 (= tp!1406445 e!3133732)))

(declare-fun b!5016246 () Bool)

(declare-fun tp!1406558 () Bool)

(declare-fun tp!1406557 () Bool)

(assert (=> b!5016246 (= e!3133732 (and tp!1406558 tp!1406557))))

(declare-fun b!5016245 () Bool)

(declare-fun tp!1406554 () Bool)

(assert (=> b!5016245 (= e!3133732 tp!1406554)))

(declare-fun b!5016243 () Bool)

(assert (=> b!5016243 (= e!3133732 tp_is_empty!36615)))

(declare-fun b!5016244 () Bool)

(declare-fun tp!1406556 () Bool)

(declare-fun tp!1406555 () Bool)

(assert (=> b!5016244 (= e!3133732 (and tp!1406556 tp!1406555))))

(assert (= (and b!5015396 ((_ is ElementMatch!13809) (reg!14138 (regTwo!28130 r!12727)))) b!5016243))

(assert (= (and b!5015396 ((_ is Concat!22602) (reg!14138 (regTwo!28130 r!12727)))) b!5016244))

(assert (= (and b!5015396 ((_ is Star!13809) (reg!14138 (regTwo!28130 r!12727)))) b!5016245))

(assert (= (and b!5015396 ((_ is Union!13809) (reg!14138 (regTwo!28130 r!12727)))) b!5016246))

(declare-fun e!3133736 () Bool)

(assert (=> b!5015387 (= tp!1406437 e!3133736)))

(declare-fun b!5016250 () Bool)

(declare-fun tp!1406563 () Bool)

(declare-fun tp!1406562 () Bool)

(assert (=> b!5016250 (= e!3133736 (and tp!1406563 tp!1406562))))

(declare-fun b!5016249 () Bool)

(declare-fun tp!1406559 () Bool)

(assert (=> b!5016249 (= e!3133736 tp!1406559)))

(declare-fun b!5016247 () Bool)

(assert (=> b!5016247 (= e!3133736 tp_is_empty!36615)))

(declare-fun b!5016248 () Bool)

(declare-fun tp!1406561 () Bool)

(declare-fun tp!1406560 () Bool)

(assert (=> b!5016248 (= e!3133736 (and tp!1406561 tp!1406560))))

(assert (= (and b!5015387 ((_ is ElementMatch!13809) (regOne!28130 (reg!14138 r!12727)))) b!5016247))

(assert (= (and b!5015387 ((_ is Concat!22602) (regOne!28130 (reg!14138 r!12727)))) b!5016248))

(assert (= (and b!5015387 ((_ is Star!13809) (regOne!28130 (reg!14138 r!12727)))) b!5016249))

(assert (= (and b!5015387 ((_ is Union!13809) (regOne!28130 (reg!14138 r!12727)))) b!5016250))

(declare-fun e!3133742 () Bool)

(assert (=> b!5015387 (= tp!1406436 e!3133742)))

(declare-fun b!5016268 () Bool)

(declare-fun tp!1406568 () Bool)

(declare-fun tp!1406567 () Bool)

(assert (=> b!5016268 (= e!3133742 (and tp!1406568 tp!1406567))))

(declare-fun b!5016267 () Bool)

(declare-fun tp!1406564 () Bool)

(assert (=> b!5016267 (= e!3133742 tp!1406564)))

(declare-fun b!5016265 () Bool)

(assert (=> b!5016265 (= e!3133742 tp_is_empty!36615)))

(declare-fun b!5016266 () Bool)

(declare-fun tp!1406566 () Bool)

(declare-fun tp!1406565 () Bool)

(assert (=> b!5016266 (= e!3133742 (and tp!1406566 tp!1406565))))

(assert (= (and b!5015387 ((_ is ElementMatch!13809) (regTwo!28130 (reg!14138 r!12727)))) b!5016265))

(assert (= (and b!5015387 ((_ is Concat!22602) (regTwo!28130 (reg!14138 r!12727)))) b!5016266))

(assert (= (and b!5015387 ((_ is Star!13809) (regTwo!28130 (reg!14138 r!12727)))) b!5016267))

(assert (= (and b!5015387 ((_ is Union!13809) (regTwo!28130 (reg!14138 r!12727)))) b!5016268))

(declare-fun e!3133743 () Bool)

(assert (=> b!5015375 (= tp!1406423 e!3133743)))

(declare-fun b!5016272 () Bool)

(declare-fun tp!1406573 () Bool)

(declare-fun tp!1406572 () Bool)

(assert (=> b!5016272 (= e!3133743 (and tp!1406573 tp!1406572))))

(declare-fun b!5016271 () Bool)

(declare-fun tp!1406569 () Bool)

(assert (=> b!5016271 (= e!3133743 tp!1406569)))

(declare-fun b!5016269 () Bool)

(assert (=> b!5016269 (= e!3133743 tp_is_empty!36615)))

(declare-fun b!5016270 () Bool)

(declare-fun tp!1406571 () Bool)

(declare-fun tp!1406570 () Bool)

(assert (=> b!5016270 (= e!3133743 (and tp!1406571 tp!1406570))))

(assert (= (and b!5015375 ((_ is ElementMatch!13809) (regOne!28130 (regTwo!28131 r!12727)))) b!5016269))

(assert (= (and b!5015375 ((_ is Concat!22602) (regOne!28130 (regTwo!28131 r!12727)))) b!5016270))

(assert (= (and b!5015375 ((_ is Star!13809) (regOne!28130 (regTwo!28131 r!12727)))) b!5016271))

(assert (= (and b!5015375 ((_ is Union!13809) (regOne!28130 (regTwo!28131 r!12727)))) b!5016272))

(declare-fun e!3133744 () Bool)

(assert (=> b!5015375 (= tp!1406422 e!3133744)))

(declare-fun b!5016276 () Bool)

(declare-fun tp!1406578 () Bool)

(declare-fun tp!1406577 () Bool)

(assert (=> b!5016276 (= e!3133744 (and tp!1406578 tp!1406577))))

(declare-fun b!5016275 () Bool)

(declare-fun tp!1406574 () Bool)

(assert (=> b!5016275 (= e!3133744 tp!1406574)))

(declare-fun b!5016273 () Bool)

(assert (=> b!5016273 (= e!3133744 tp_is_empty!36615)))

(declare-fun b!5016274 () Bool)

(declare-fun tp!1406576 () Bool)

(declare-fun tp!1406575 () Bool)

(assert (=> b!5016274 (= e!3133744 (and tp!1406576 tp!1406575))))

(assert (= (and b!5015375 ((_ is ElementMatch!13809) (regTwo!28130 (regTwo!28131 r!12727)))) b!5016273))

(assert (= (and b!5015375 ((_ is Concat!22602) (regTwo!28130 (regTwo!28131 r!12727)))) b!5016274))

(assert (= (and b!5015375 ((_ is Star!13809) (regTwo!28130 (regTwo!28131 r!12727)))) b!5016275))

(assert (= (and b!5015375 ((_ is Union!13809) (regTwo!28130 (regTwo!28131 r!12727)))) b!5016276))

(declare-fun e!3133745 () Bool)

(assert (=> b!5015397 (= tp!1406449 e!3133745)))

(declare-fun b!5016280 () Bool)

(declare-fun tp!1406583 () Bool)

(declare-fun tp!1406582 () Bool)

(assert (=> b!5016280 (= e!3133745 (and tp!1406583 tp!1406582))))

(declare-fun b!5016279 () Bool)

(declare-fun tp!1406579 () Bool)

(assert (=> b!5016279 (= e!3133745 tp!1406579)))

(declare-fun b!5016277 () Bool)

(assert (=> b!5016277 (= e!3133745 tp_is_empty!36615)))

(declare-fun b!5016278 () Bool)

(declare-fun tp!1406581 () Bool)

(declare-fun tp!1406580 () Bool)

(assert (=> b!5016278 (= e!3133745 (and tp!1406581 tp!1406580))))

(assert (= (and b!5015397 ((_ is ElementMatch!13809) (regOne!28131 (regTwo!28130 r!12727)))) b!5016277))

(assert (= (and b!5015397 ((_ is Concat!22602) (regOne!28131 (regTwo!28130 r!12727)))) b!5016278))

(assert (= (and b!5015397 ((_ is Star!13809) (regOne!28131 (regTwo!28130 r!12727)))) b!5016279))

(assert (= (and b!5015397 ((_ is Union!13809) (regOne!28131 (regTwo!28130 r!12727)))) b!5016280))

(declare-fun e!3133746 () Bool)

(assert (=> b!5015397 (= tp!1406448 e!3133746)))

(declare-fun b!5016284 () Bool)

(declare-fun tp!1406588 () Bool)

(declare-fun tp!1406587 () Bool)

(assert (=> b!5016284 (= e!3133746 (and tp!1406588 tp!1406587))))

(declare-fun b!5016283 () Bool)

(declare-fun tp!1406584 () Bool)

(assert (=> b!5016283 (= e!3133746 tp!1406584)))

(declare-fun b!5016281 () Bool)

(assert (=> b!5016281 (= e!3133746 tp_is_empty!36615)))

(declare-fun b!5016282 () Bool)

(declare-fun tp!1406586 () Bool)

(declare-fun tp!1406585 () Bool)

(assert (=> b!5016282 (= e!3133746 (and tp!1406586 tp!1406585))))

(assert (= (and b!5015397 ((_ is ElementMatch!13809) (regTwo!28131 (regTwo!28130 r!12727)))) b!5016281))

(assert (= (and b!5015397 ((_ is Concat!22602) (regTwo!28131 (regTwo!28130 r!12727)))) b!5016282))

(assert (= (and b!5015397 ((_ is Star!13809) (regTwo!28131 (regTwo!28130 r!12727)))) b!5016283))

(assert (= (and b!5015397 ((_ is Union!13809) (regTwo!28131 (regTwo!28130 r!12727)))) b!5016284))

(declare-fun condSetEmpty!28491 () Bool)

(assert (=> setNonEmpty!28487 (= condSetEmpty!28491 (= setRest!28487 ((as const (Array Context!6468 Bool)) false)))))

(declare-fun setRes!28491 () Bool)

(assert (=> setNonEmpty!28487 (= tp!1406404 setRes!28491)))

(declare-fun setIsEmpty!28491 () Bool)

(assert (=> setIsEmpty!28491 setRes!28491))

(declare-fun setNonEmpty!28491 () Bool)

(declare-fun tp!1406589 () Bool)

(declare-fun setElem!28491 () Context!6468)

(declare-fun e!3133747 () Bool)

(assert (=> setNonEmpty!28491 (= setRes!28491 (and tp!1406589 (inv!76117 setElem!28491) e!3133747))))

(declare-fun setRest!28491 () (InoxSet Context!6468))

(assert (=> setNonEmpty!28491 (= setRest!28487 ((_ map or) (store ((as const (Array Context!6468 Bool)) false) setElem!28491 true) setRest!28491))))

(declare-fun b!5016285 () Bool)

(declare-fun tp!1406590 () Bool)

(assert (=> b!5016285 (= e!3133747 tp!1406590)))

(assert (= (and setNonEmpty!28487 condSetEmpty!28491) setIsEmpty!28491))

(assert (= (and setNonEmpty!28487 (not condSetEmpty!28491)) setNonEmpty!28491))

(assert (= setNonEmpty!28491 b!5016285))

(declare-fun m!6051212 () Bool)

(assert (=> setNonEmpty!28491 m!6051212))

(declare-fun e!3133748 () Bool)

(assert (=> b!5015372 (= tp!1406416 e!3133748)))

(declare-fun b!5016289 () Bool)

(declare-fun tp!1406595 () Bool)

(declare-fun tp!1406594 () Bool)

(assert (=> b!5016289 (= e!3133748 (and tp!1406595 tp!1406594))))

(declare-fun b!5016288 () Bool)

(declare-fun tp!1406591 () Bool)

(assert (=> b!5016288 (= e!3133748 tp!1406591)))

(declare-fun b!5016286 () Bool)

(assert (=> b!5016286 (= e!3133748 tp_is_empty!36615)))

(declare-fun b!5016287 () Bool)

(declare-fun tp!1406593 () Bool)

(declare-fun tp!1406592 () Bool)

(assert (=> b!5016287 (= e!3133748 (and tp!1406593 tp!1406592))))

(assert (= (and b!5015372 ((_ is ElementMatch!13809) (reg!14138 (regOne!28131 r!12727)))) b!5016286))

(assert (= (and b!5015372 ((_ is Concat!22602) (reg!14138 (regOne!28131 r!12727)))) b!5016287))

(assert (= (and b!5015372 ((_ is Star!13809) (reg!14138 (regOne!28131 r!12727)))) b!5016288))

(assert (= (and b!5015372 ((_ is Union!13809) (reg!14138 (regOne!28131 r!12727)))) b!5016289))

(declare-fun e!3133749 () Bool)

(assert (=> b!5015385 (= tp!1406433 e!3133749)))

(declare-fun b!5016293 () Bool)

(declare-fun tp!1406600 () Bool)

(declare-fun tp!1406599 () Bool)

(assert (=> b!5016293 (= e!3133749 (and tp!1406600 tp!1406599))))

(declare-fun b!5016292 () Bool)

(declare-fun tp!1406596 () Bool)

(assert (=> b!5016292 (= e!3133749 tp!1406596)))

(declare-fun b!5016290 () Bool)

(assert (=> b!5016290 (= e!3133749 tp_is_empty!36615)))

(declare-fun b!5016291 () Bool)

(declare-fun tp!1406598 () Bool)

(declare-fun tp!1406597 () Bool)

(assert (=> b!5016291 (= e!3133749 (and tp!1406598 tp!1406597))))

(assert (= (and b!5015385 ((_ is ElementMatch!13809) (h!64356 (exprs!3734 setElem!28484)))) b!5016290))

(assert (= (and b!5015385 ((_ is Concat!22602) (h!64356 (exprs!3734 setElem!28484)))) b!5016291))

(assert (= (and b!5015385 ((_ is Star!13809) (h!64356 (exprs!3734 setElem!28484)))) b!5016292))

(assert (= (and b!5015385 ((_ is Union!13809) (h!64356 (exprs!3734 setElem!28484)))) b!5016293))

(declare-fun b!5016294 () Bool)

(declare-fun e!3133750 () Bool)

(declare-fun tp!1406601 () Bool)

(declare-fun tp!1406602 () Bool)

(assert (=> b!5016294 (= e!3133750 (and tp!1406601 tp!1406602))))

(assert (=> b!5015385 (= tp!1406434 e!3133750)))

(assert (= (and b!5015385 ((_ is Cons!57908) (t!370400 (exprs!3734 setElem!28484)))) b!5016294))

(declare-fun e!3133751 () Bool)

(assert (=> b!5015373 (= tp!1406420 e!3133751)))

(declare-fun b!5016298 () Bool)

(declare-fun tp!1406607 () Bool)

(declare-fun tp!1406606 () Bool)

(assert (=> b!5016298 (= e!3133751 (and tp!1406607 tp!1406606))))

(declare-fun b!5016297 () Bool)

(declare-fun tp!1406603 () Bool)

(assert (=> b!5016297 (= e!3133751 tp!1406603)))

(declare-fun b!5016295 () Bool)

(assert (=> b!5016295 (= e!3133751 tp_is_empty!36615)))

(declare-fun b!5016296 () Bool)

(declare-fun tp!1406605 () Bool)

(declare-fun tp!1406604 () Bool)

(assert (=> b!5016296 (= e!3133751 (and tp!1406605 tp!1406604))))

(assert (= (and b!5015373 ((_ is ElementMatch!13809) (regOne!28131 (regOne!28131 r!12727)))) b!5016295))

(assert (= (and b!5015373 ((_ is Concat!22602) (regOne!28131 (regOne!28131 r!12727)))) b!5016296))

(assert (= (and b!5015373 ((_ is Star!13809) (regOne!28131 (regOne!28131 r!12727)))) b!5016297))

(assert (= (and b!5015373 ((_ is Union!13809) (regOne!28131 (regOne!28131 r!12727)))) b!5016298))

(declare-fun e!3133752 () Bool)

(assert (=> b!5015373 (= tp!1406419 e!3133752)))

(declare-fun b!5016302 () Bool)

(declare-fun tp!1406612 () Bool)

(declare-fun tp!1406611 () Bool)

(assert (=> b!5016302 (= e!3133752 (and tp!1406612 tp!1406611))))

(declare-fun b!5016301 () Bool)

(declare-fun tp!1406608 () Bool)

(assert (=> b!5016301 (= e!3133752 tp!1406608)))

(declare-fun b!5016299 () Bool)

(assert (=> b!5016299 (= e!3133752 tp_is_empty!36615)))

(declare-fun b!5016300 () Bool)

(declare-fun tp!1406610 () Bool)

(declare-fun tp!1406609 () Bool)

(assert (=> b!5016300 (= e!3133752 (and tp!1406610 tp!1406609))))

(assert (= (and b!5015373 ((_ is ElementMatch!13809) (regTwo!28131 (regOne!28131 r!12727)))) b!5016299))

(assert (= (and b!5015373 ((_ is Concat!22602) (regTwo!28131 (regOne!28131 r!12727)))) b!5016300))

(assert (= (and b!5015373 ((_ is Star!13809) (regTwo!28131 (regOne!28131 r!12727)))) b!5016301))

(assert (= (and b!5015373 ((_ is Union!13809) (regTwo!28131 (regOne!28131 r!12727)))) b!5016302))

(declare-fun b!5016303 () Bool)

(declare-fun e!3133753 () Bool)

(declare-fun tp!1406613 () Bool)

(declare-fun tp!1406614 () Bool)

(assert (=> b!5016303 (= e!3133753 (and tp!1406613 tp!1406614))))

(assert (=> b!5015355 (= tp!1406405 e!3133753)))

(assert (= (and b!5015355 ((_ is Cons!57908) (exprs!3734 setElem!28487))) b!5016303))

(declare-fun e!3133754 () Bool)

(assert (=> b!5015391 (= tp!1406442 e!3133754)))

(declare-fun b!5016307 () Bool)

(declare-fun tp!1406619 () Bool)

(declare-fun tp!1406618 () Bool)

(assert (=> b!5016307 (= e!3133754 (and tp!1406619 tp!1406618))))

(declare-fun b!5016306 () Bool)

(declare-fun tp!1406615 () Bool)

(assert (=> b!5016306 (= e!3133754 tp!1406615)))

(declare-fun b!5016304 () Bool)

(assert (=> b!5016304 (= e!3133754 tp_is_empty!36615)))

(declare-fun b!5016305 () Bool)

(declare-fun tp!1406617 () Bool)

(declare-fun tp!1406616 () Bool)

(assert (=> b!5016305 (= e!3133754 (and tp!1406617 tp!1406616))))

(assert (= (and b!5015391 ((_ is ElementMatch!13809) (regOne!28130 (regOne!28130 r!12727)))) b!5016304))

(assert (= (and b!5015391 ((_ is Concat!22602) (regOne!28130 (regOne!28130 r!12727)))) b!5016305))

(assert (= (and b!5015391 ((_ is Star!13809) (regOne!28130 (regOne!28130 r!12727)))) b!5016306))

(assert (= (and b!5015391 ((_ is Union!13809) (regOne!28130 (regOne!28130 r!12727)))) b!5016307))

(declare-fun e!3133755 () Bool)

(assert (=> b!5015391 (= tp!1406441 e!3133755)))

(declare-fun b!5016311 () Bool)

(declare-fun tp!1406624 () Bool)

(declare-fun tp!1406623 () Bool)

(assert (=> b!5016311 (= e!3133755 (and tp!1406624 tp!1406623))))

(declare-fun b!5016310 () Bool)

(declare-fun tp!1406620 () Bool)

(assert (=> b!5016310 (= e!3133755 tp!1406620)))

(declare-fun b!5016308 () Bool)

(assert (=> b!5016308 (= e!3133755 tp_is_empty!36615)))

(declare-fun b!5016309 () Bool)

(declare-fun tp!1406622 () Bool)

(declare-fun tp!1406621 () Bool)

(assert (=> b!5016309 (= e!3133755 (and tp!1406622 tp!1406621))))

(assert (= (and b!5015391 ((_ is ElementMatch!13809) (regTwo!28130 (regOne!28130 r!12727)))) b!5016308))

(assert (= (and b!5015391 ((_ is Concat!22602) (regTwo!28130 (regOne!28130 r!12727)))) b!5016309))

(assert (= (and b!5015391 ((_ is Star!13809) (regTwo!28130 (regOne!28130 r!12727)))) b!5016310))

(assert (= (and b!5015391 ((_ is Union!13809) (regTwo!28130 (regOne!28130 r!12727)))) b!5016311))

(declare-fun tp!1406626 () Bool)

(declare-fun tp!1406627 () Bool)

(declare-fun e!3133756 () Bool)

(declare-fun b!5016312 () Bool)

(assert (=> b!5016312 (= e!3133756 (and (inv!76116 (left!42334 (left!42334 (c!856663 totalInput!1012)))) tp!1406626 (inv!76116 (right!42664 (left!42334 (c!856663 totalInput!1012)))) tp!1406627))))

(declare-fun b!5016314 () Bool)

(declare-fun e!3133757 () Bool)

(declare-fun tp!1406625 () Bool)

(assert (=> b!5016314 (= e!3133757 tp!1406625)))

(declare-fun b!5016313 () Bool)

(assert (=> b!5016313 (= e!3133756 (and (inv!76123 (xs!18654 (left!42334 (c!856663 totalInput!1012)))) e!3133757))))

(assert (=> b!5015378 (= tp!1406427 (and (inv!76116 (left!42334 (c!856663 totalInput!1012))) e!3133756))))

(assert (= (and b!5015378 ((_ is Node!15328) (left!42334 (c!856663 totalInput!1012)))) b!5016312))

(assert (= b!5016313 b!5016314))

(assert (= (and b!5015378 ((_ is Leaf!25441) (left!42334 (c!856663 totalInput!1012)))) b!5016313))

(declare-fun m!6051266 () Bool)

(assert (=> b!5016312 m!6051266))

(declare-fun m!6051270 () Bool)

(assert (=> b!5016312 m!6051270))

(declare-fun m!6051272 () Bool)

(assert (=> b!5016313 m!6051272))

(assert (=> b!5015378 m!6050216))

(declare-fun tp!1406630 () Bool)

(declare-fun b!5016315 () Bool)

(declare-fun e!3133758 () Bool)

(declare-fun tp!1406629 () Bool)

(assert (=> b!5016315 (= e!3133758 (and (inv!76116 (left!42334 (right!42664 (c!856663 totalInput!1012)))) tp!1406629 (inv!76116 (right!42664 (right!42664 (c!856663 totalInput!1012)))) tp!1406630))))

(declare-fun b!5016317 () Bool)

(declare-fun e!3133759 () Bool)

(declare-fun tp!1406628 () Bool)

(assert (=> b!5016317 (= e!3133759 tp!1406628)))

(declare-fun b!5016316 () Bool)

(assert (=> b!5016316 (= e!3133758 (and (inv!76123 (xs!18654 (right!42664 (c!856663 totalInput!1012)))) e!3133759))))

(assert (=> b!5015378 (= tp!1406428 (and (inv!76116 (right!42664 (c!856663 totalInput!1012))) e!3133758))))

(assert (= (and b!5015378 ((_ is Node!15328) (right!42664 (c!856663 totalInput!1012)))) b!5016315))

(assert (= b!5016316 b!5016317))

(assert (= (and b!5015378 ((_ is Leaf!25441) (right!42664 (c!856663 totalInput!1012)))) b!5016316))

(declare-fun m!6051274 () Bool)

(assert (=> b!5016315 m!6051274))

(declare-fun m!6051276 () Bool)

(assert (=> b!5016315 m!6051276))

(declare-fun m!6051278 () Bool)

(assert (=> b!5016316 m!6051278))

(assert (=> b!5015378 m!6050218))

(declare-fun e!3133763 () Bool)

(assert (=> b!5015371 (= tp!1406418 e!3133763)))

(declare-fun b!5016325 () Bool)

(declare-fun tp!1406635 () Bool)

(declare-fun tp!1406634 () Bool)

(assert (=> b!5016325 (= e!3133763 (and tp!1406635 tp!1406634))))

(declare-fun b!5016324 () Bool)

(declare-fun tp!1406631 () Bool)

(assert (=> b!5016324 (= e!3133763 tp!1406631)))

(declare-fun b!5016322 () Bool)

(assert (=> b!5016322 (= e!3133763 tp_is_empty!36615)))

(declare-fun b!5016323 () Bool)

(declare-fun tp!1406633 () Bool)

(declare-fun tp!1406632 () Bool)

(assert (=> b!5016323 (= e!3133763 (and tp!1406633 tp!1406632))))

(assert (= (and b!5015371 ((_ is ElementMatch!13809) (regOne!28130 (regOne!28131 r!12727)))) b!5016322))

(assert (= (and b!5015371 ((_ is Concat!22602) (regOne!28130 (regOne!28131 r!12727)))) b!5016323))

(assert (= (and b!5015371 ((_ is Star!13809) (regOne!28130 (regOne!28131 r!12727)))) b!5016324))

(assert (= (and b!5015371 ((_ is Union!13809) (regOne!28130 (regOne!28131 r!12727)))) b!5016325))

(declare-fun e!3133764 () Bool)

(assert (=> b!5015371 (= tp!1406417 e!3133764)))

(declare-fun b!5016329 () Bool)

(declare-fun tp!1406640 () Bool)

(declare-fun tp!1406639 () Bool)

(assert (=> b!5016329 (= e!3133764 (and tp!1406640 tp!1406639))))

(declare-fun b!5016328 () Bool)

(declare-fun tp!1406636 () Bool)

(assert (=> b!5016328 (= e!3133764 tp!1406636)))

(declare-fun b!5016326 () Bool)

(assert (=> b!5016326 (= e!3133764 tp_is_empty!36615)))

(declare-fun b!5016327 () Bool)

(declare-fun tp!1406638 () Bool)

(declare-fun tp!1406637 () Bool)

(assert (=> b!5016327 (= e!3133764 (and tp!1406638 tp!1406637))))

(assert (= (and b!5015371 ((_ is ElementMatch!13809) (regTwo!28130 (regOne!28131 r!12727)))) b!5016326))

(assert (= (and b!5015371 ((_ is Concat!22602) (regTwo!28130 (regOne!28131 r!12727)))) b!5016327))

(assert (= (and b!5015371 ((_ is Star!13809) (regTwo!28130 (regOne!28131 r!12727)))) b!5016328))

(assert (= (and b!5015371 ((_ is Union!13809) (regTwo!28130 (regOne!28131 r!12727)))) b!5016329))

(declare-fun e!3133765 () Bool)

(assert (=> b!5015393 (= tp!1406444 e!3133765)))

(declare-fun b!5016333 () Bool)

(declare-fun tp!1406645 () Bool)

(declare-fun tp!1406644 () Bool)

(assert (=> b!5016333 (= e!3133765 (and tp!1406645 tp!1406644))))

(declare-fun b!5016332 () Bool)

(declare-fun tp!1406641 () Bool)

(assert (=> b!5016332 (= e!3133765 tp!1406641)))

(declare-fun b!5016330 () Bool)

(assert (=> b!5016330 (= e!3133765 tp_is_empty!36615)))

(declare-fun b!5016331 () Bool)

(declare-fun tp!1406643 () Bool)

(declare-fun tp!1406642 () Bool)

(assert (=> b!5016331 (= e!3133765 (and tp!1406643 tp!1406642))))

(assert (= (and b!5015393 ((_ is ElementMatch!13809) (regOne!28131 (regOne!28130 r!12727)))) b!5016330))

(assert (= (and b!5015393 ((_ is Concat!22602) (regOne!28131 (regOne!28130 r!12727)))) b!5016331))

(assert (= (and b!5015393 ((_ is Star!13809) (regOne!28131 (regOne!28130 r!12727)))) b!5016332))

(assert (= (and b!5015393 ((_ is Union!13809) (regOne!28131 (regOne!28130 r!12727)))) b!5016333))

(declare-fun e!3133767 () Bool)

(assert (=> b!5015393 (= tp!1406443 e!3133767)))

(declare-fun b!5016339 () Bool)

(declare-fun tp!1406650 () Bool)

(declare-fun tp!1406649 () Bool)

(assert (=> b!5016339 (= e!3133767 (and tp!1406650 tp!1406649))))

(declare-fun b!5016338 () Bool)

(declare-fun tp!1406646 () Bool)

(assert (=> b!5016338 (= e!3133767 tp!1406646)))

(declare-fun b!5016336 () Bool)

(assert (=> b!5016336 (= e!3133767 tp_is_empty!36615)))

(declare-fun b!5016337 () Bool)

(declare-fun tp!1406648 () Bool)

(declare-fun tp!1406647 () Bool)

(assert (=> b!5016337 (= e!3133767 (and tp!1406648 tp!1406647))))

(assert (= (and b!5015393 ((_ is ElementMatch!13809) (regTwo!28131 (regOne!28130 r!12727)))) b!5016336))

(assert (= (and b!5015393 ((_ is Concat!22602) (regTwo!28131 (regOne!28130 r!12727)))) b!5016337))

(assert (= (and b!5015393 ((_ is Star!13809) (regTwo!28131 (regOne!28130 r!12727)))) b!5016338))

(assert (= (and b!5015393 ((_ is Union!13809) (regTwo!28131 (regOne!28130 r!12727)))) b!5016339))

(declare-fun b!5016340 () Bool)

(declare-fun e!3133768 () Bool)

(declare-fun tp!1406651 () Bool)

(assert (=> b!5016340 (= e!3133768 (and tp_is_empty!36615 tp!1406651))))

(assert (=> b!5015380 (= tp!1406426 e!3133768)))

(assert (= (and b!5015380 ((_ is Cons!57907) (innerList!15416 (xs!18654 (c!856663 totalInput!1012))))) b!5016340))

(declare-fun e!3133769 () Bool)

(assert (=> b!5015392 (= tp!1406440 e!3133769)))

(declare-fun b!5016344 () Bool)

(declare-fun tp!1406656 () Bool)

(declare-fun tp!1406655 () Bool)

(assert (=> b!5016344 (= e!3133769 (and tp!1406656 tp!1406655))))

(declare-fun b!5016343 () Bool)

(declare-fun tp!1406652 () Bool)

(assert (=> b!5016343 (= e!3133769 tp!1406652)))

(declare-fun b!5016341 () Bool)

(assert (=> b!5016341 (= e!3133769 tp_is_empty!36615)))

(declare-fun b!5016342 () Bool)

(declare-fun tp!1406654 () Bool)

(declare-fun tp!1406653 () Bool)

(assert (=> b!5016342 (= e!3133769 (and tp!1406654 tp!1406653))))

(assert (= (and b!5015392 ((_ is ElementMatch!13809) (reg!14138 (regOne!28130 r!12727)))) b!5016341))

(assert (= (and b!5015392 ((_ is Concat!22602) (reg!14138 (regOne!28130 r!12727)))) b!5016342))

(assert (= (and b!5015392 ((_ is Star!13809) (reg!14138 (regOne!28130 r!12727)))) b!5016343))

(assert (= (and b!5015392 ((_ is Union!13809) (reg!14138 (regOne!28130 r!12727)))) b!5016344))

(declare-fun e!3133770 () Bool)

(assert (=> b!5015377 (= tp!1406425 e!3133770)))

(declare-fun b!5016348 () Bool)

(declare-fun tp!1406661 () Bool)

(declare-fun tp!1406660 () Bool)

(assert (=> b!5016348 (= e!3133770 (and tp!1406661 tp!1406660))))

(declare-fun b!5016347 () Bool)

(declare-fun tp!1406657 () Bool)

(assert (=> b!5016347 (= e!3133770 tp!1406657)))

(declare-fun b!5016345 () Bool)

(assert (=> b!5016345 (= e!3133770 tp_is_empty!36615)))

(declare-fun b!5016346 () Bool)

(declare-fun tp!1406659 () Bool)

(declare-fun tp!1406658 () Bool)

(assert (=> b!5016346 (= e!3133770 (and tp!1406659 tp!1406658))))

(assert (= (and b!5015377 ((_ is ElementMatch!13809) (regOne!28131 (regTwo!28131 r!12727)))) b!5016345))

(assert (= (and b!5015377 ((_ is Concat!22602) (regOne!28131 (regTwo!28131 r!12727)))) b!5016346))

(assert (= (and b!5015377 ((_ is Star!13809) (regOne!28131 (regTwo!28131 r!12727)))) b!5016347))

(assert (= (and b!5015377 ((_ is Union!13809) (regOne!28131 (regTwo!28131 r!12727)))) b!5016348))

(declare-fun e!3133771 () Bool)

(assert (=> b!5015377 (= tp!1406424 e!3133771)))

(declare-fun b!5016352 () Bool)

(declare-fun tp!1406666 () Bool)

(declare-fun tp!1406665 () Bool)

(assert (=> b!5016352 (= e!3133771 (and tp!1406666 tp!1406665))))

(declare-fun b!5016351 () Bool)

(declare-fun tp!1406662 () Bool)

(assert (=> b!5016351 (= e!3133771 tp!1406662)))

(declare-fun b!5016349 () Bool)

(assert (=> b!5016349 (= e!3133771 tp_is_empty!36615)))

(declare-fun b!5016350 () Bool)

(declare-fun tp!1406664 () Bool)

(declare-fun tp!1406663 () Bool)

(assert (=> b!5016350 (= e!3133771 (and tp!1406664 tp!1406663))))

(assert (= (and b!5015377 ((_ is ElementMatch!13809) (regTwo!28131 (regTwo!28131 r!12727)))) b!5016349))

(assert (= (and b!5015377 ((_ is Concat!22602) (regTwo!28131 (regTwo!28131 r!12727)))) b!5016350))

(assert (= (and b!5015377 ((_ is Star!13809) (regTwo!28131 (regTwo!28131 r!12727)))) b!5016351))

(assert (= (and b!5015377 ((_ is Union!13809) (regTwo!28131 (regTwo!28131 r!12727)))) b!5016352))

(declare-fun b_lambda!198667 () Bool)

(assert (= b_lambda!198665 (or d!1614743 b_lambda!198667)))

(declare-fun bs!1186977 () Bool)

(declare-fun d!1615221 () Bool)

(assert (= bs!1186977 (and d!1615221 d!1614743)))

(assert (=> bs!1186977 (= (dynLambda!23522 lambda!248602 (h!64356 (exprs!3734 setElem!28484))) (validRegex!6106 (h!64356 (exprs!3734 setElem!28484))))))

(declare-fun m!6051296 () Bool)

(assert (=> bs!1186977 m!6051296))

(assert (=> b!5015750 d!1615221))

(check-sat (not b!5015824) (not b!5015799) (not d!1615101) (not b!5016122) (not b!5015826) (not b!5015710) (not b!5015788) (not d!1615067) (not b!5015875) (not b!5015615) (not d!1614961) (not b!5015572) (not b!5015777) (not d!1614827) (not bm!350376) (not b!5016233) (not b!5016331) (not b!5015772) (not b!5016242) (not b!5016206) (not b!5015694) (not b!5016232) (not b!5016266) (not b!5015640) (not b!5015871) (not b!5016346) (not b!5016200) (not b!5016328) (not b!5016327) (not b!5015857) (not d!1615065) (not b!5015520) (not b!5016000) (not b!5015841) (not b!5016234) (not b!5016284) (not d!1614841) (not b!5015741) (not b!5015954) (not b!5015525) (not bm!350313) (not bm!350358) (not bm!350359) (not b!5016301) (not b!5015567) (not b!5015725) (not b!5015842) (not b!5016291) (not b!5015612) (not b!5016246) (not d!1614985) (not b!5015927) (not b!5016333) (not b!5015944) (not d!1614857) (not b!5016244) (not b!5016271) (not b!5015779) (not b!5015551) (not b!5016325) (not b!5015814) (not b!5015653) (not b!5015704) (not d!1614919) (not b!5015935) (not d!1615009) (not d!1615113) (not b!5016348) (not b!5016337) (not b!5015687) (not b!5015683) (not b!5015464) (not d!1615013) (not b!5015531) (not b!5016279) (not b!5015540) (not b_lambda!198667) (not b!5015879) (not b!5015884) (not b!5015889) (not b!5016112) (not b!5015802) (not b!5015771) (not b!5015967) (not b!5016302) (not bm!350364) (not b!5015941) (not b!5015830) (not b!5015652) (not b!5015624) (not b!5016062) (not d!1614843) (not b!5015969) (not b!5015812) (not b!5016187) (not d!1615167) (not b!5015717) (not b!5016316) (not b!5015669) (not bm!350356) (not b!5015559) (not b!5016323) (not b!5016185) (not d!1615121) (not b!5016141) (not b!5016300) (not b!5016307) (not b!5015621) (not b!5016198) (not b!5016278) (not b!5015811) (not d!1614877) (not b!5016238) (not b!5015745) (not d!1614881) (not b!5016208) (not b!5015988) (not b!5016245) (not b!5015990) (not bm!350352) (not bm!350328) (not d!1614899) (not b!5016283) (not bm!350309) (not b!5016146) (not b!5016268) (not b!5016338) (not bm!350310) (not bm!350372) (not b!5016216) (not b!5015873) (not b!5016274) (not d!1615071) (not d!1615099) (not d!1615077) (not b!5016332) (not b!5016324) (not b!5016305) (not d!1615031) (not b!5015996) (not b!5016352) (not b!5016342) (not b!5015934) (not d!1614811) (not b!5016179) (not bm!350319) (not b!5016267) (not b!5015727) (not d!1615047) (not b!5015849) (not b!5015858) (not b!5015965) (not b!5015887) (not b!5016344) (not d!1615073) (not b!5015714) (not bm!350317) (not b!5015462) (not b!5015532) (not b!5016292) (not b!5015850) (not b!5016210) (not b!5015675) (not d!1614823) (not b!5016329) (not d!1615083) (not b!5015837) (not bm!350355) (not bm!350349) (not bm!350322) (not bm!350341) (not b!5015831) (not b!5016347) (not b!5015743) (not d!1614871) (not b!5015872) (not b!5015800) (not d!1614949) (not b!5015970) (not d!1614921) (not b!5015754) (not b!5016311) (not bm!350306) (not d!1614855) (not b!5015781) (not b!5016276) (not b!5016289) (not b!5016294) (not b!5016350) tp_is_empty!36615 (not b!5016306) (not d!1614837) (not b!5016125) (not b!5015782) (not b!5016207) (not b!5015835) (not b!5015538) (not b!5015770) (not d!1615021) (not bs!1186977) (not b!5016064) (not b!5016180) (not d!1615163) (not bm!350314) (not b!5016339) (not b!5015783) (not b!5015549) (not b!5015938) (not b!5016317) (not b!5016315) (not b!5016249) (not b!5015744) (not b!5015728) (not b!5015729) (not b!5015530) (not b!5015627) (not b!5015956) (not b!5015795) (not b!5015591) (not b!5015689) (not b!5015521) (not b!5016116) (not d!1614963) (not b!5015667) (not b!5015468) (not b!5015947) (not b!5016236) (not bm!350374) (not b!5015471) (not bm!350335) (not b!5015569) (not b!5015882) (not b!5016313) (not b!5015945) (not b!5016293) (not b!5016310) (not b!5016314) (not b!5015484) (not b!5016199) (not b!5016280) (not b!5016282) (not d!1615173) (not d!1615045) (not b!5016303) (not b!5015561) (not b!5015610) (not b!5016203) (not b!5016288) (not bm!350323) (not b!5015517) (not b!5015995) (not b!5016272) (not b!5016108) (not d!1615039) (not b!5016061) (not d!1615017) (not b!5015827) (not bm!350327) (not b!5015986) (not b!5015769) (not b!5016190) (not b!5015713) (not b!5016285) (not b!5016111) (not bm!350342) (not b!5015708) (not b!5015605) (not b!5016107) (not d!1614859) (not b!5015736) (not b!5015773) (not b!5015723) (not d!1615103) (not d!1614813) (not b!5015834) (not b!5015805) (not b!5015702) (not b!5015738) (not d!1615147) (not b!5015755) (not b!5016343) (not b!5015881) (not b!5016298) (not d!1615019) (not b!5016138) (not b!5015466) (not b!5015751) (not b!5015660) (not b!5015651) (not b!5015720) (not d!1615059) (not d!1614845) (not bm!350366) (not d!1615175) (not d!1614817) (not b!5016065) (not b!5016275) (not d!1615037) (not b!5015768) (not d!1614875) (not b!5016230) (not b!5016209) (not b!5016270) (not bm!350318) (not b!5015655) (not d!1615183) (not b!5016115) (not b!5015707) (not b!5015625) (not b!5016297) (not d!1615169) (not b!5016296) (not b!5015602) (not b!5015618) (not d!1615159) (not b!5016128) (not b!5016240) (not b!5015808) (not b!5015523) (not b!5016215) (not b!5015477) (not bm!350331) (not d!1614901) (not d!1614883) (not b!5015846) (not b!5016241) (not d!1615091) (not b!5015829) (not bm!350321) (not b!5016250) (not b!5016309) (not b!5015958) (not b!5015731) (not b!5016104) (not d!1615051) (not b!5015718) (not b!5015662) (not b!5016192) (not b!5015553) (not d!1614793) (not b!5016351) (not b!5015514) (not b!5015775) (not b!5015892) (not d!1614939) (not b!5015684) (not b!5015607) (not bm!350354) (not setNonEmpty!28491) (not bm!350325) (not d!1615063) (not b!5015571) (not b!5015839) (not b!5015686) (not bm!350330) (not b!5016126) (not b!5016340) (not b!5015378) (not b!5015528) (not b!5015796) (not bm!350315) (not bm!350308) (not b!5015606) (not b!5015656) (not b!5016142) (not bm!350333) (not b!5015637) (not b!5015522) (not b!5016067) (not b!5016113) (not b!5015663) (not b!5015668) (not b!5015734) (not d!1615011) (not b!5015997) (not b!5015543) (not b!5016147) (not b!5015833) (not b!5015845) (not b!5016205) (not d!1615081) (not d!1614923) (not b!5015878) (not b!5016312) (not b!5015992) (not b!5015928) (not d!1615177) (not b!5015334) (not bm!350311) (not b!5015593) (not b!5016109) (not d!1614951) (not d!1614825) (not b!5016068) (not b!5015579) (not d!1615179) (not b!5016237) (not d!1614915) (not b!5016119) (not b!5015670) (not b!5016248) (not b!5016204) (not b!5016070) (not d!1614889) (not b!5016287) (not b!5015828) (not d!1615043) (not bm!350312) (not d!1614861) (not d!1615093) (not b!5015706) (not d!1615029) (not b!5015695) (not b!5016202) (not d!1615181) (not b!5015658) (not d!1615005) (not d!1614999) (not bm!350353) (not b!5015886) (not b!5016214) (not b!5015479) (not b!5015703) (not bm!350357) (not bm!350316) (not b!5015959) (not b!5015880) (not b!5015614))
(check-sat)
