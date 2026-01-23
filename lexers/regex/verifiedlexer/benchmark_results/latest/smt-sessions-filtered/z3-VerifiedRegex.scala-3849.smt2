; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!213102 () Bool)

(assert start!213102)

(declare-fun b!2195633 () Bool)

(declare-fun e!1403177 () Bool)

(declare-fun e!1403175 () Bool)

(assert (=> b!2195633 (= e!1403177 e!1403175)))

(declare-fun res!943834 () Bool)

(assert (=> b!2195633 (=> (not res!943834) (not e!1403175))))

(declare-fun lt!821280 () Int)

(declare-fun lastNullablePos!193 () Int)

(declare-fun from!1114 () Int)

(assert (=> b!2195633 (= res!943834 (and (<= from!1114 lt!821280) (>= lastNullablePos!193 (- 1)) (< lastNullablePos!193 from!1114)))))

(declare-datatypes ((C!12476 0))(
  ( (C!12477 (val!7224 Int)) )
))
(declare-datatypes ((List!25616 0))(
  ( (Nil!25532) (Cons!25532 (h!30933 C!12476) (t!198222 List!25616)) )
))
(declare-datatypes ((IArray!16607 0))(
  ( (IArray!16608 (innerList!8361 List!25616)) )
))
(declare-datatypes ((Conc!8301 0))(
  ( (Node!8301 (left!19602 Conc!8301) (right!19932 Conc!8301) (csize!16832 Int) (cheight!8512 Int)) (Leaf!12151 (xs!11243 IArray!16607) (csize!16833 Int)) (Empty!8301) )
))
(declare-datatypes ((BalanceConc!16364 0))(
  ( (BalanceConc!16365 (c!349660 Conc!8301)) )
))
(declare-fun totalInput!923 () BalanceConc!16364)

(declare-fun size!19911 (BalanceConc!16364) Int)

(assert (=> b!2195633 (= lt!821280 (size!19911 totalInput!923))))

(declare-fun b!2195634 () Bool)

(declare-fun e!1403172 () Bool)

(declare-fun e!1403176 () Bool)

(assert (=> b!2195634 (= e!1403172 e!1403176)))

(declare-fun res!943839 () Bool)

(assert (=> b!2195634 (=> res!943839 e!1403176)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!6165 0))(
  ( (ElementMatch!6165 (c!349661 C!12476)) (Concat!10467 (regOne!12842 Regex!6165) (regTwo!12842 Regex!6165)) (EmptyExpr!6165) (Star!6165 (reg!6494 Regex!6165)) (EmptyLang!6165) (Union!6165 (regOne!12843 Regex!6165) (regTwo!12843 Regex!6165)) )
))
(declare-datatypes ((List!25617 0))(
  ( (Nil!25533) (Cons!25533 (h!30934 Regex!6165) (t!198223 List!25617)) )
))
(declare-datatypes ((Context!3470 0))(
  ( (Context!3471 (exprs!2235 List!25617)) )
))
(declare-fun z!3955 () (InoxSet Context!3470))

(declare-fun lt!821279 () List!25616)

(declare-fun matchZipper!261 ((InoxSet Context!3470) List!25616) Bool)

(assert (=> b!2195634 (= res!943839 (not (matchZipper!261 z!3955 lt!821279)))))

(declare-fun lt!821289 () C!12476)

(declare-fun lt!821284 () List!25616)

(assert (=> b!2195634 (= lt!821279 (Cons!25532 lt!821289 lt!821284))))

(declare-fun b!2195635 () Bool)

(declare-fun e!1403168 () Int)

(assert (=> b!2195635 (= e!1403168 from!1114)))

(declare-fun b!2195636 () Bool)

(declare-fun e!1403169 () Bool)

(declare-fun tp!683931 () Bool)

(declare-fun inv!34180 (Conc!8301) Bool)

(assert (=> b!2195636 (= e!1403169 (and (inv!34180 (c!349660 totalInput!923)) tp!683931))))

(declare-fun b!2195637 () Bool)

(declare-fun e!1403174 () Bool)

(assert (=> b!2195637 (= e!1403174 e!1403172)))

(declare-fun res!943833 () Bool)

(assert (=> b!2195637 (=> res!943833 e!1403172)))

(declare-fun lt!821281 () (InoxSet Context!3470))

(assert (=> b!2195637 (= res!943833 (not (matchZipper!261 lt!821281 lt!821284)))))

(declare-fun lt!821285 () Int)

(declare-fun lt!821286 () List!25616)

(declare-fun take!353 (List!25616 Int) List!25616)

(declare-fun drop!1363 (List!25616 Int) List!25616)

(assert (=> b!2195637 (= lt!821284 (take!353 (drop!1363 lt!821286 (+ 1 from!1114)) lt!821285))))

(declare-fun list!9823 (BalanceConc!16364) List!25616)

(assert (=> b!2195637 (= lt!821286 (list!9823 totalInput!923))))

(declare-fun lt!821276 () Int)

(declare-fun lt!821292 () Int)

(declare-fun b!2195638 () Bool)

(declare-fun lt!821277 () List!25616)

(assert (=> b!2195638 (= e!1403176 (or (not (= lt!821279 lt!821277)) (= (+ 1 (- lt!821292 from!1114)) lt!821276)))))

(declare-fun lt!821291 () C!12476)

(assert (=> b!2195638 (= (Cons!25532 lt!821291 lt!821284) lt!821277)))

(assert (=> b!2195638 (= lt!821277 (take!353 (drop!1363 lt!821286 from!1114) lt!821276))))

(declare-fun lt!821290 () Int)

(assert (=> b!2195638 (= lt!821276 (+ 2 lt!821290))))

(declare-fun apply!6234 (List!25616 Int) C!12476)

(assert (=> b!2195638 (= lt!821291 (apply!6234 lt!821286 from!1114))))

(declare-datatypes ((Unit!38661 0))(
  ( (Unit!38662) )
))
(declare-fun lt!821278 () Unit!38661)

(declare-fun lemmaDropTakeAddOneLeft!18 (List!25616 Int Int) Unit!38661)

(assert (=> b!2195638 (= lt!821278 (lemmaDropTakeAddOneLeft!18 lt!821286 from!1114 lt!821285))))

(declare-fun b!2195639 () Bool)

(declare-fun res!943831 () Bool)

(assert (=> b!2195639 (=> (not res!943831) (not e!1403175))))

(declare-fun e!1403167 () Bool)

(assert (=> b!2195639 (= res!943831 e!1403167)))

(declare-fun res!943840 () Bool)

(assert (=> b!2195639 (=> res!943840 e!1403167)))

(declare-fun nullableZipper!445 ((InoxSet Context!3470)) Bool)

(assert (=> b!2195639 (= res!943840 (not (nullableZipper!445 z!3955)))))

(declare-fun b!2195640 () Bool)

(declare-fun res!943837 () Bool)

(assert (=> b!2195640 (=> (not res!943837) (not e!1403175))))

(assert (=> b!2195640 (= res!943837 (not (= from!1114 lt!821280)))))

(declare-fun b!2195641 () Bool)

(declare-fun res!943832 () Bool)

(assert (=> b!2195641 (=> (not res!943832) (not e!1403175))))

(declare-fun lostCauseZipper!283 ((InoxSet Context!3470)) Bool)

(assert (=> b!2195641 (= res!943832 (not (lostCauseZipper!283 z!3955)))))

(declare-fun b!2195642 () Bool)

(assert (=> b!2195642 (= e!1403167 (= lastNullablePos!193 (- from!1114 1)))))

(declare-fun b!2195643 () Bool)

(declare-fun e!1403170 () Bool)

(assert (=> b!2195643 (= e!1403170 (matchZipper!261 lt!821281 (take!353 (drop!1363 (list!9823 totalInput!923) (+ 1 from!1114)) lt!821285)))))

(declare-fun b!2195644 () Bool)

(declare-fun e!1403171 () Bool)

(assert (=> b!2195644 (= e!1403171 (not e!1403174))))

(declare-fun res!943841 () Bool)

(assert (=> b!2195644 (=> res!943841 e!1403174)))

(declare-fun lt!821287 () Bool)

(assert (=> b!2195644 (= res!943841 lt!821287)))

(assert (=> b!2195644 e!1403170))

(declare-fun res!943838 () Bool)

(assert (=> b!2195644 (=> res!943838 e!1403170)))

(assert (=> b!2195644 (= res!943838 lt!821287)))

(assert (=> b!2195644 (= lt!821287 (<= lt!821285 0))))

(assert (=> b!2195644 (= lt!821285 (+ 1 lt!821290))))

(declare-fun lt!821283 () Int)

(assert (=> b!2195644 (= lt!821290 (- lt!821283 (+ 1 from!1114)))))

(declare-fun lt!821288 () Int)

(declare-fun lt!821282 () Unit!38661)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmptyRecV3!164 ((InoxSet Context!3470) Int BalanceConc!16364 Int) Unit!38661)

(assert (=> b!2195644 (= lt!821282 (longestMatchIsAcceptedByMatchOrIsEmptyRecV3!164 lt!821281 (+ 1 from!1114) totalInput!923 lt!821288))))

(declare-fun res!943835 () Bool)

(assert (=> start!213102 (=> (not res!943835) (not e!1403177))))

(assert (=> start!213102 (= res!943835 (>= from!1114 0))))

(assert (=> start!213102 e!1403177))

(assert (=> start!213102 true))

(declare-fun inv!34181 (BalanceConc!16364) Bool)

(assert (=> start!213102 (and (inv!34181 totalInput!923) e!1403169)))

(declare-fun condSetEmpty!18764 () Bool)

(assert (=> start!213102 (= condSetEmpty!18764 (= z!3955 ((as const (Array Context!3470 Bool)) false)))))

(declare-fun setRes!18764 () Bool)

(assert (=> start!213102 setRes!18764))

(declare-fun setElem!18764 () Context!3470)

(declare-fun tp!683930 () Bool)

(declare-fun setNonEmpty!18764 () Bool)

(declare-fun e!1403173 () Bool)

(declare-fun inv!34182 (Context!3470) Bool)

(assert (=> setNonEmpty!18764 (= setRes!18764 (and tp!683930 (inv!34182 setElem!18764) e!1403173))))

(declare-fun setRest!18764 () (InoxSet Context!3470))

(assert (=> setNonEmpty!18764 (= z!3955 ((_ map or) (store ((as const (Array Context!3470 Bool)) false) setElem!18764 true) setRest!18764))))

(declare-fun b!2195645 () Bool)

(assert (=> b!2195645 (= e!1403168 lastNullablePos!193)))

(declare-fun b!2195646 () Bool)

(assert (=> b!2195646 (= e!1403175 e!1403171)))

(declare-fun res!943836 () Bool)

(assert (=> b!2195646 (=> (not res!943836) (not e!1403171))))

(assert (=> b!2195646 (= res!943836 (= lt!821292 lt!821283))))

(declare-fun furthestNullablePosition!335 ((InoxSet Context!3470) Int BalanceConc!16364 Int Int) Int)

(assert (=> b!2195646 (= lt!821283 (furthestNullablePosition!335 lt!821281 (+ 1 from!1114) totalInput!923 lt!821280 lt!821288))))

(assert (=> b!2195646 (= lt!821292 (furthestNullablePosition!335 z!3955 from!1114 totalInput!923 lt!821280 lastNullablePos!193))))

(assert (=> b!2195646 (= lt!821288 e!1403168)))

(declare-fun c!349659 () Bool)

(assert (=> b!2195646 (= c!349659 (nullableZipper!445 lt!821281))))

(declare-fun derivationStepZipper!239 ((InoxSet Context!3470) C!12476) (InoxSet Context!3470))

(assert (=> b!2195646 (= lt!821281 (derivationStepZipper!239 z!3955 lt!821289))))

(declare-fun apply!6235 (BalanceConc!16364 Int) C!12476)

(assert (=> b!2195646 (= lt!821289 (apply!6235 totalInput!923 from!1114))))

(declare-fun b!2195647 () Bool)

(declare-fun tp!683932 () Bool)

(assert (=> b!2195647 (= e!1403173 tp!683932)))

(declare-fun setIsEmpty!18764 () Bool)

(assert (=> setIsEmpty!18764 setRes!18764))

(assert (= (and start!213102 res!943835) b!2195633))

(assert (= (and b!2195633 res!943834) b!2195639))

(assert (= (and b!2195639 (not res!943840)) b!2195642))

(assert (= (and b!2195639 res!943831) b!2195640))

(assert (= (and b!2195640 res!943837) b!2195641))

(assert (= (and b!2195641 res!943832) b!2195646))

(assert (= (and b!2195646 c!349659) b!2195635))

(assert (= (and b!2195646 (not c!349659)) b!2195645))

(assert (= (and b!2195646 res!943836) b!2195644))

(assert (= (and b!2195644 (not res!943838)) b!2195643))

(assert (= (and b!2195644 (not res!943841)) b!2195637))

(assert (= (and b!2195637 (not res!943833)) b!2195634))

(assert (= (and b!2195634 (not res!943839)) b!2195638))

(assert (= start!213102 b!2195636))

(assert (= (and start!213102 condSetEmpty!18764) setIsEmpty!18764))

(assert (= (and start!213102 (not condSetEmpty!18764)) setNonEmpty!18764))

(assert (= setNonEmpty!18764 b!2195647))

(declare-fun m!2638215 () Bool)

(assert (=> b!2195644 m!2638215))

(declare-fun m!2638217 () Bool)

(assert (=> b!2195646 m!2638217))

(declare-fun m!2638219 () Bool)

(assert (=> b!2195646 m!2638219))

(declare-fun m!2638221 () Bool)

(assert (=> b!2195646 m!2638221))

(declare-fun m!2638223 () Bool)

(assert (=> b!2195646 m!2638223))

(declare-fun m!2638225 () Bool)

(assert (=> b!2195646 m!2638225))

(declare-fun m!2638227 () Bool)

(assert (=> setNonEmpty!18764 m!2638227))

(declare-fun m!2638229 () Bool)

(assert (=> b!2195634 m!2638229))

(declare-fun m!2638231 () Bool)

(assert (=> b!2195636 m!2638231))

(declare-fun m!2638233 () Bool)

(assert (=> b!2195638 m!2638233))

(assert (=> b!2195638 m!2638233))

(declare-fun m!2638235 () Bool)

(assert (=> b!2195638 m!2638235))

(declare-fun m!2638237 () Bool)

(assert (=> b!2195638 m!2638237))

(declare-fun m!2638239 () Bool)

(assert (=> b!2195638 m!2638239))

(declare-fun m!2638241 () Bool)

(assert (=> b!2195637 m!2638241))

(declare-fun m!2638243 () Bool)

(assert (=> b!2195637 m!2638243))

(assert (=> b!2195637 m!2638243))

(declare-fun m!2638245 () Bool)

(assert (=> b!2195637 m!2638245))

(declare-fun m!2638247 () Bool)

(assert (=> b!2195637 m!2638247))

(declare-fun m!2638249 () Bool)

(assert (=> b!2195641 m!2638249))

(declare-fun m!2638251 () Bool)

(assert (=> b!2195639 m!2638251))

(declare-fun m!2638253 () Bool)

(assert (=> b!2195633 m!2638253))

(declare-fun m!2638255 () Bool)

(assert (=> start!213102 m!2638255))

(assert (=> b!2195643 m!2638247))

(assert (=> b!2195643 m!2638247))

(declare-fun m!2638257 () Bool)

(assert (=> b!2195643 m!2638257))

(assert (=> b!2195643 m!2638257))

(declare-fun m!2638259 () Bool)

(assert (=> b!2195643 m!2638259))

(assert (=> b!2195643 m!2638259))

(declare-fun m!2638261 () Bool)

(assert (=> b!2195643 m!2638261))

(check-sat (not b!2195647) (not b!2195639) (not setNonEmpty!18764) (not b!2195638) (not b!2195636) (not b!2195646) (not start!213102) (not b!2195633) (not b!2195634) (not b!2195644) (not b!2195643) (not b!2195637) (not b!2195641))
(check-sat)
