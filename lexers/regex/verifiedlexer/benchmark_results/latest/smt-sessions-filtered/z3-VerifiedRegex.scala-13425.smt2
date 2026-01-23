; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!726362 () Bool)

(assert start!726362)

(declare-fun b!7504630 () Bool)

(declare-fun e!4474556 () Bool)

(declare-fun lt!2634162 () Int)

(declare-fun lt!2634157 () Int)

(assert (=> b!7504630 (= e!4474556 (< lt!2634162 lt!2634157))))

(declare-datatypes ((Unit!166326 0))(
  ( (Unit!166327) )
))
(declare-fun lt!2634158 () Unit!166326)

(declare-fun e!4474562 () Unit!166326)

(assert (=> b!7504630 (= lt!2634158 e!4474562)))

(declare-fun c!1385469 () Bool)

(assert (=> b!7504630 (= c!1385469 (= lt!2634162 lt!2634157))))

(assert (=> b!7504630 (<= lt!2634162 lt!2634157)))

(declare-fun lt!2634156 () Unit!166326)

(declare-datatypes ((C!39700 0))(
  ( (C!39701 (val!30248 Int)) )
))
(declare-datatypes ((List!72473 0))(
  ( (Nil!72349) (Cons!72349 (h!78797 C!39700) (t!387042 List!72473)) )
))
(declare-fun testedP!204 () List!72473)

(declare-fun totalInput!779 () List!72473)

(declare-fun lemmaIsPrefixThenSmallerEqSize!984 (List!72473 List!72473) Unit!166326)

(assert (=> b!7504630 (= lt!2634156 (lemmaIsPrefixThenSmallerEqSize!984 testedP!204 totalInput!779))))

(declare-fun b!7504631 () Bool)

(declare-fun e!4474560 () Bool)

(declare-fun e!4474555 () Bool)

(assert (=> b!7504631 (= e!4474560 e!4474555)))

(declare-fun res!3010735 () Bool)

(assert (=> b!7504631 (=> (not res!3010735) (not e!4474555))))

(declare-fun totalInputSize!226 () Int)

(assert (=> b!7504631 (= res!3010735 (= totalInputSize!226 lt!2634157))))

(declare-fun size!42258 (List!72473) Int)

(assert (=> b!7504631 (= lt!2634157 (size!42258 totalInput!779))))

(declare-fun setIsEmpty!56952 () Bool)

(declare-fun setRes!56952 () Bool)

(assert (=> setIsEmpty!56952 setRes!56952))

(declare-fun b!7504632 () Bool)

(declare-fun res!3010732 () Bool)

(assert (=> b!7504632 (=> res!3010732 e!4474556)))

(declare-fun testedPSize!164 () Int)

(assert (=> b!7504632 (= res!3010732 (= testedPSize!164 totalInputSize!226))))

(declare-fun b!7504633 () Bool)

(declare-fun e!4474559 () Bool)

(assert (=> b!7504633 (= e!4474559 e!4474556)))

(declare-fun res!3010733 () Bool)

(assert (=> b!7504633 (=> res!3010733 e!4474556)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!19695 0))(
  ( (ElementMatch!19695 (c!1385470 C!39700)) (Concat!28540 (regOne!39902 Regex!19695) (regTwo!39902 Regex!19695)) (EmptyExpr!19695) (Star!19695 (reg!20024 Regex!19695)) (EmptyLang!19695) (Union!19695 (regOne!39903 Regex!19695) (regTwo!39903 Regex!19695)) )
))
(declare-datatypes ((List!72474 0))(
  ( (Nil!72350) (Cons!72350 (h!78798 Regex!19695) (t!387043 List!72474)) )
))
(declare-datatypes ((Context!16894 0))(
  ( (Context!16895 (exprs!8947 List!72474)) )
))
(declare-fun z!3716 () (InoxSet Context!16894))

(declare-fun lostCauseZipper!1383 ((InoxSet Context!16894)) Bool)

(assert (=> b!7504633 (= res!3010733 (lostCauseZipper!1383 z!3716))))

(declare-fun testedSuffix!164 () List!72473)

(declare-fun lt!2634155 () List!72473)

(assert (=> b!7504633 (and (= testedSuffix!164 lt!2634155) (= lt!2634155 testedSuffix!164))))

(declare-fun lt!2634154 () Unit!166326)

(declare-fun lemmaSamePrefixThenSameSuffix!2786 (List!72473 List!72473 List!72473 List!72473 List!72473) Unit!166326)

(assert (=> b!7504633 (= lt!2634154 (lemmaSamePrefixThenSameSuffix!2786 testedP!204 testedSuffix!164 testedP!204 lt!2634155 totalInput!779))))

(declare-fun getSuffix!3483 (List!72473 List!72473) List!72473)

(assert (=> b!7504633 (= lt!2634155 (getSuffix!3483 totalInput!779 testedP!204))))

(declare-fun b!7504634 () Bool)

(declare-fun Unit!166328 () Unit!166326)

(assert (=> b!7504634 (= e!4474562 Unit!166328)))

(declare-fun b!7504635 () Bool)

(declare-fun e!4474557 () Bool)

(declare-fun tp_is_empty!49715 () Bool)

(declare-fun tp!2178433 () Bool)

(assert (=> b!7504635 (= e!4474557 (and tp_is_empty!49715 tp!2178433))))

(declare-fun res!3010734 () Bool)

(declare-fun e!4474558 () Bool)

(assert (=> start!726362 (=> (not res!3010734) (not e!4474558))))

(declare-fun lt!2634160 () List!72473)

(assert (=> start!726362 (= res!3010734 (= lt!2634160 totalInput!779))))

(declare-fun ++!17316 (List!72473 List!72473) List!72473)

(assert (=> start!726362 (= lt!2634160 (++!17316 testedP!204 testedSuffix!164))))

(assert (=> start!726362 e!4474558))

(declare-fun e!4474561 () Bool)

(assert (=> start!726362 e!4474561))

(assert (=> start!726362 true))

(declare-fun e!4474563 () Bool)

(assert (=> start!726362 e!4474563))

(assert (=> start!726362 e!4474557))

(declare-fun condSetEmpty!56952 () Bool)

(assert (=> start!726362 (= condSetEmpty!56952 (= z!3716 ((as const (Array Context!16894 Bool)) false)))))

(assert (=> start!726362 setRes!56952))

(declare-fun b!7504636 () Bool)

(declare-fun tp!2178437 () Bool)

(assert (=> b!7504636 (= e!4474563 (and tp_is_empty!49715 tp!2178437))))

(declare-fun b!7504637 () Bool)

(declare-fun e!4474564 () Bool)

(declare-fun tp!2178435 () Bool)

(assert (=> b!7504637 (= e!4474564 tp!2178435)))

(declare-fun b!7504638 () Bool)

(declare-fun tp!2178434 () Bool)

(assert (=> b!7504638 (= e!4474561 (and tp_is_empty!49715 tp!2178434))))

(declare-fun tp!2178436 () Bool)

(declare-fun setNonEmpty!56952 () Bool)

(declare-fun setElem!56952 () Context!16894)

(declare-fun inv!92455 (Context!16894) Bool)

(assert (=> setNonEmpty!56952 (= setRes!56952 (and tp!2178436 (inv!92455 setElem!56952) e!4474564))))

(declare-fun setRest!56952 () (InoxSet Context!16894))

(assert (=> setNonEmpty!56952 (= z!3716 ((_ map or) (store ((as const (Array Context!16894 Bool)) false) setElem!56952 true) setRest!56952))))

(declare-fun b!7504639 () Bool)

(assert (=> b!7504639 (= e!4474558 e!4474560)))

(declare-fun res!3010736 () Bool)

(assert (=> b!7504639 (=> (not res!3010736) (not e!4474560))))

(assert (=> b!7504639 (= res!3010736 (= testedPSize!164 lt!2634162))))

(assert (=> b!7504639 (= lt!2634162 (size!42258 testedP!204))))

(declare-fun b!7504640 () Bool)

(declare-fun Unit!166329 () Unit!166326)

(assert (=> b!7504640 (= e!4474562 Unit!166329)))

(declare-fun lt!2634159 () Unit!166326)

(declare-fun lemmaIsPrefixRefl!3830 (List!72473 List!72473) Unit!166326)

(assert (=> b!7504640 (= lt!2634159 (lemmaIsPrefixRefl!3830 totalInput!779 totalInput!779))))

(declare-fun isPrefix!5983 (List!72473 List!72473) Bool)

(assert (=> b!7504640 (isPrefix!5983 totalInput!779 totalInput!779)))

(declare-fun lt!2634161 () Unit!166326)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1484 (List!72473 List!72473 List!72473) Unit!166326)

(assert (=> b!7504640 (= lt!2634161 (lemmaIsPrefixSameLengthThenSameList!1484 totalInput!779 testedP!204 totalInput!779))))

(assert (=> b!7504640 false))

(declare-fun b!7504641 () Bool)

(assert (=> b!7504641 (= e!4474555 (not e!4474559))))

(declare-fun res!3010731 () Bool)

(assert (=> b!7504641 (=> res!3010731 e!4474559)))

(assert (=> b!7504641 (= res!3010731 (not (isPrefix!5983 testedP!204 totalInput!779)))))

(assert (=> b!7504641 (isPrefix!5983 testedP!204 lt!2634160)))

(declare-fun lt!2634153 () Unit!166326)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3696 (List!72473 List!72473) Unit!166326)

(assert (=> b!7504641 (= lt!2634153 (lemmaConcatTwoListThenFirstIsPrefix!3696 testedP!204 testedSuffix!164))))

(assert (= (and start!726362 res!3010734) b!7504639))

(assert (= (and b!7504639 res!3010736) b!7504631))

(assert (= (and b!7504631 res!3010735) b!7504641))

(assert (= (and b!7504641 (not res!3010731)) b!7504633))

(assert (= (and b!7504633 (not res!3010733)) b!7504632))

(assert (= (and b!7504632 (not res!3010732)) b!7504630))

(assert (= (and b!7504630 c!1385469) b!7504640))

(assert (= (and b!7504630 (not c!1385469)) b!7504634))

(get-info :version)

(assert (= (and start!726362 ((_ is Cons!72349) testedSuffix!164)) b!7504638))

(assert (= (and start!726362 ((_ is Cons!72349) totalInput!779)) b!7504636))

(assert (= (and start!726362 ((_ is Cons!72349) testedP!204)) b!7504635))

(assert (= (and start!726362 condSetEmpty!56952) setIsEmpty!56952))

(assert (= (and start!726362 (not condSetEmpty!56952)) setNonEmpty!56952))

(assert (= setNonEmpty!56952 b!7504637))

(declare-fun m!8086962 () Bool)

(assert (=> b!7504641 m!8086962))

(declare-fun m!8086964 () Bool)

(assert (=> b!7504641 m!8086964))

(declare-fun m!8086966 () Bool)

(assert (=> b!7504641 m!8086966))

(declare-fun m!8086968 () Bool)

(assert (=> start!726362 m!8086968))

(declare-fun m!8086970 () Bool)

(assert (=> b!7504639 m!8086970))

(declare-fun m!8086972 () Bool)

(assert (=> b!7504633 m!8086972))

(declare-fun m!8086974 () Bool)

(assert (=> b!7504633 m!8086974))

(declare-fun m!8086976 () Bool)

(assert (=> b!7504633 m!8086976))

(declare-fun m!8086978 () Bool)

(assert (=> b!7504631 m!8086978))

(declare-fun m!8086980 () Bool)

(assert (=> b!7504640 m!8086980))

(declare-fun m!8086982 () Bool)

(assert (=> b!7504640 m!8086982))

(declare-fun m!8086984 () Bool)

(assert (=> b!7504640 m!8086984))

(declare-fun m!8086986 () Bool)

(assert (=> setNonEmpty!56952 m!8086986))

(declare-fun m!8086988 () Bool)

(assert (=> b!7504630 m!8086988))

(check-sat (not b!7504640) (not b!7504633) (not b!7504637) (not start!726362) (not b!7504635) tp_is_empty!49715 (not b!7504639) (not setNonEmpty!56952) (not b!7504630) (not b!7504636) (not b!7504641) (not b!7504638) (not b!7504631))
(check-sat)
