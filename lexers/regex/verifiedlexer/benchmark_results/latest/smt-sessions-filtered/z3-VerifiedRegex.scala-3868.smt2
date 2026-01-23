; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!213602 () Bool)

(assert start!213602)

(declare-fun b!2199926 () Bool)

(declare-fun e!1405851 () Bool)

(assert (=> b!2199926 (= e!1405851 false)))

(declare-datatypes ((Unit!38733 0))(
  ( (Unit!38734) )
))
(declare-fun lt!822918 () Unit!38733)

(declare-fun e!1405852 () Unit!38733)

(assert (=> b!2199926 (= lt!822918 e!1405852)))

(declare-fun c!350857 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!12552 0))(
  ( (C!12553 (val!7262 Int)) )
))
(declare-datatypes ((Regex!6203 0))(
  ( (ElementMatch!6203 (c!350858 C!12552)) (Concat!10505 (regOne!12918 Regex!6203) (regTwo!12918 Regex!6203)) (EmptyExpr!6203) (Star!6203 (reg!6532 Regex!6203)) (EmptyLang!6203) (Union!6203 (regOne!12919 Regex!6203) (regTwo!12919 Regex!6203)) )
))
(declare-datatypes ((List!25700 0))(
  ( (Nil!25616) (Cons!25616 (h!31017 Regex!6203) (t!198318 List!25700)) )
))
(declare-datatypes ((Context!3546 0))(
  ( (Context!3547 (exprs!2273 List!25700)) )
))
(declare-fun z!3888 () (InoxSet Context!3546))

(declare-fun lostCauseZipper!313 ((InoxSet Context!3546)) Bool)

(assert (=> b!2199926 (= c!350857 (lostCauseZipper!313 z!3888))))

(declare-fun b!2199927 () Bool)

(declare-fun e!1405850 () Bool)

(assert (=> b!2199927 (= e!1405850 (lostCauseZipper!313 z!3888))))

(declare-fun b!2199928 () Bool)

(declare-fun e!1405849 () Bool)

(declare-fun tp!684642 () Bool)

(assert (=> b!2199928 (= e!1405849 tp!684642)))

(declare-fun b!2199929 () Bool)

(declare-fun res!945548 () Bool)

(assert (=> b!2199929 (=> (not res!945548) (not e!1405851))))

(assert (=> b!2199929 (= res!945548 e!1405850)))

(declare-fun res!945549 () Bool)

(assert (=> b!2199929 (=> res!945549 e!1405850)))

(declare-fun from!1082 () Int)

(declare-fun lt!822916 () Int)

(assert (=> b!2199929 (= res!945549 (= from!1082 lt!822916))))

(declare-fun b!2199930 () Bool)

(declare-fun res!945547 () Bool)

(assert (=> b!2199930 (=> (not res!945547) (not e!1405851))))

(declare-fun e!1405848 () Bool)

(assert (=> b!2199930 (= res!945547 e!1405848)))

(declare-fun res!945544 () Bool)

(assert (=> b!2199930 (=> res!945544 e!1405848)))

(declare-fun nullableZipper!483 ((InoxSet Context!3546)) Bool)

(assert (=> b!2199930 (= res!945544 (not (nullableZipper!483 z!3888)))))

(declare-fun b!2199931 () Bool)

(declare-fun e!1405854 () Bool)

(declare-fun e!1405855 () Bool)

(assert (=> b!2199931 (= e!1405854 e!1405855)))

(declare-fun res!945542 () Bool)

(assert (=> b!2199931 (=> (not res!945542) (not e!1405855))))

(declare-fun knownSize!10 () Int)

(assert (=> b!2199931 (= res!945542 (and (<= from!1082 lt!822916) (>= knownSize!10 0) (<= knownSize!10 (- lt!822916 from!1082))))))

(declare-datatypes ((List!25701 0))(
  ( (Nil!25617) (Cons!25617 (h!31018 C!12552) (t!198319 List!25701)) )
))
(declare-datatypes ((IArray!16683 0))(
  ( (IArray!16684 (innerList!8399 List!25701)) )
))
(declare-datatypes ((Conc!8339 0))(
  ( (Node!8339 (left!19675 Conc!8339) (right!20005 Conc!8339) (csize!16908 Int) (cheight!8550 Int)) (Leaf!12208 (xs!11281 IArray!16683) (csize!16909 Int)) (Empty!8339) )
))
(declare-datatypes ((BalanceConc!16440 0))(
  ( (BalanceConc!16441 (c!350859 Conc!8339)) )
))
(declare-fun totalInput!891 () BalanceConc!16440)

(declare-fun size!19968 (BalanceConc!16440) Int)

(assert (=> b!2199931 (= lt!822916 (size!19968 totalInput!891))))

(declare-fun b!2199932 () Bool)

(declare-fun lastNullablePos!161 () Int)

(assert (=> b!2199932 (= e!1405848 (= lastNullablePos!161 (- from!1082 1)))))

(declare-fun res!945545 () Bool)

(assert (=> start!213602 (=> (not res!945545) (not e!1405854))))

(assert (=> start!213602 (= res!945545 (>= from!1082 0))))

(assert (=> start!213602 e!1405854))

(assert (=> start!213602 true))

(declare-fun e!1405853 () Bool)

(declare-fun inv!34372 (BalanceConc!16440) Bool)

(assert (=> start!213602 (and (inv!34372 totalInput!891) e!1405853)))

(declare-fun condSetEmpty!18912 () Bool)

(assert (=> start!213602 (= condSetEmpty!18912 (= z!3888 ((as const (Array Context!3546 Bool)) false)))))

(declare-fun setRes!18912 () Bool)

(assert (=> start!213602 setRes!18912))

(declare-fun b!2199933 () Bool)

(declare-fun tp!684640 () Bool)

(declare-fun inv!34373 (Conc!8339) Bool)

(assert (=> b!2199933 (= e!1405853 (and (inv!34373 (c!350859 totalInput!891)) tp!684640))))

(declare-fun setElem!18912 () Context!3546)

(declare-fun tp!684641 () Bool)

(declare-fun setNonEmpty!18912 () Bool)

(declare-fun inv!34374 (Context!3546) Bool)

(assert (=> setNonEmpty!18912 (= setRes!18912 (and tp!684641 (inv!34374 setElem!18912) e!1405849))))

(declare-fun setRest!18912 () (InoxSet Context!3546))

(assert (=> setNonEmpty!18912 (= z!3888 ((_ map or) (store ((as const (Array Context!3546 Bool)) false) setElem!18912 true) setRest!18912))))

(declare-fun b!2199934 () Bool)

(declare-fun Unit!38735 () Unit!38733)

(assert (=> b!2199934 (= e!1405852 Unit!38735)))

(declare-fun lt!822917 () Unit!38733)

(declare-fun lt!822915 () List!25701)

(declare-fun lemmaLostCauseCannotMatch!23 ((InoxSet Context!3546) List!25701) Unit!38733)

(assert (=> b!2199934 (= lt!822917 (lemmaLostCauseCannotMatch!23 z!3888 lt!822915))))

(assert (=> b!2199934 false))

(declare-fun b!2199935 () Bool)

(declare-fun Unit!38736 () Unit!38733)

(assert (=> b!2199935 (= e!1405852 Unit!38736)))

(declare-fun b!2199936 () Bool)

(declare-fun res!945550 () Bool)

(assert (=> b!2199936 (=> (not res!945550) (not e!1405851))))

(assert (=> b!2199936 (= res!945550 (and (not (= knownSize!10 0)) (> knownSize!10 0)))))

(declare-fun setIsEmpty!18912 () Bool)

(assert (=> setIsEmpty!18912 setRes!18912))

(declare-fun b!2199937 () Bool)

(declare-fun res!945546 () Bool)

(assert (=> b!2199937 (=> (not res!945546) (not e!1405851))))

(declare-fun isEmpty!14611 (BalanceConc!16440) Bool)

(assert (=> b!2199937 (= res!945546 (not (isEmpty!14611 totalInput!891)))))

(declare-fun b!2199938 () Bool)

(declare-fun res!945551 () Bool)

(assert (=> b!2199938 (=> (not res!945551) (not e!1405851))))

(assert (=> b!2199938 (= res!945551 (and (>= lastNullablePos!161 (- 1)) (< lastNullablePos!161 from!1082)))))

(declare-fun b!2199939 () Bool)

(assert (=> b!2199939 (= e!1405855 e!1405851)))

(declare-fun res!945543 () Bool)

(assert (=> b!2199939 (=> (not res!945543) (not e!1405851))))

(declare-fun matchZipper!289 ((InoxSet Context!3546) List!25701) Bool)

(assert (=> b!2199939 (= res!945543 (matchZipper!289 z!3888 lt!822915))))

(declare-fun take!381 (List!25701 Int) List!25701)

(declare-fun drop!1391 (List!25701 Int) List!25701)

(declare-fun list!9861 (BalanceConc!16440) List!25701)

(assert (=> b!2199939 (= lt!822915 (take!381 (drop!1391 (list!9861 totalInput!891) from!1082) knownSize!10))))

(assert (= (and start!213602 res!945545) b!2199931))

(assert (= (and b!2199931 res!945542) b!2199939))

(assert (= (and b!2199939 res!945543) b!2199938))

(assert (= (and b!2199938 res!945551) b!2199930))

(assert (= (and b!2199930 (not res!945544)) b!2199932))

(assert (= (and b!2199930 res!945547) b!2199937))

(assert (= (and b!2199937 res!945546) b!2199936))

(assert (= (and b!2199936 res!945550) b!2199929))

(assert (= (and b!2199929 (not res!945549)) b!2199927))

(assert (= (and b!2199929 res!945548) b!2199926))

(assert (= (and b!2199926 c!350857) b!2199934))

(assert (= (and b!2199926 (not c!350857)) b!2199935))

(assert (= start!213602 b!2199933))

(assert (= (and start!213602 condSetEmpty!18912) setIsEmpty!18912))

(assert (= (and start!213602 (not condSetEmpty!18912)) setNonEmpty!18912))

(assert (= setNonEmpty!18912 b!2199928))

(declare-fun m!2642711 () Bool)

(assert (=> b!2199939 m!2642711))

(declare-fun m!2642713 () Bool)

(assert (=> b!2199939 m!2642713))

(assert (=> b!2199939 m!2642713))

(declare-fun m!2642715 () Bool)

(assert (=> b!2199939 m!2642715))

(assert (=> b!2199939 m!2642715))

(declare-fun m!2642717 () Bool)

(assert (=> b!2199939 m!2642717))

(declare-fun m!2642719 () Bool)

(assert (=> b!2199931 m!2642719))

(declare-fun m!2642721 () Bool)

(assert (=> b!2199937 m!2642721))

(declare-fun m!2642723 () Bool)

(assert (=> start!213602 m!2642723))

(declare-fun m!2642725 () Bool)

(assert (=> b!2199934 m!2642725))

(declare-fun m!2642727 () Bool)

(assert (=> setNonEmpty!18912 m!2642727))

(declare-fun m!2642729 () Bool)

(assert (=> b!2199927 m!2642729))

(declare-fun m!2642731 () Bool)

(assert (=> b!2199930 m!2642731))

(assert (=> b!2199926 m!2642729))

(declare-fun m!2642733 () Bool)

(assert (=> b!2199933 m!2642733))

(check-sat (not b!2199939) (not b!2199930) (not start!213602) (not b!2199928) (not b!2199926) (not b!2199934) (not b!2199927) (not b!2199931) (not b!2199933) (not setNonEmpty!18912) (not b!2199937))
(check-sat)
