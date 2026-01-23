; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!530206 () Bool)

(assert start!530206)

(declare-fun b!5018398 () Bool)

(declare-fun res!2139956 () Bool)

(declare-fun e!3135088 () Bool)

(assert (=> b!5018398 (=> (not res!2139956) (not e!3135088))))

(declare-datatypes ((C!27908 0))(
  ( (C!27909 (val!23320 Int)) )
))
(declare-datatypes ((List!58082 0))(
  ( (Nil!57958) (Cons!57958 (h!64406 C!27908) (t!370458 List!58082)) )
))
(declare-fun lt!2076953 () List!58082)

(declare-fun knownSize!24 () Int)

(declare-fun size!38542 (List!58082) Int)

(assert (=> b!5018398 (= res!2139956 (= (size!38542 lt!2076953) knownSize!24))))

(declare-fun b!5018399 () Bool)

(declare-fun res!2139951 () Bool)

(assert (=> b!5018399 (=> (not res!2139951) (not e!3135088))))

(declare-fun from!1212 () Int)

(declare-fun lt!2076952 () Int)

(assert (=> b!5018399 (= res!2139951 (not (= from!1212 lt!2076952)))))

(declare-fun b!5018400 () Bool)

(declare-fun e!3135090 () Bool)

(assert (=> b!5018400 (= e!3135090 e!3135088)))

(declare-fun res!2139954 () Bool)

(assert (=> b!5018400 (=> (not res!2139954) (not e!3135088))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!13829 0))(
  ( (ElementMatch!13829 (c!857453 C!27908)) (Concat!22622 (regOne!28170 Regex!13829) (regTwo!28170 Regex!13829)) (EmptyExpr!13829) (Star!13829 (reg!14158 Regex!13829)) (EmptyLang!13829) (Union!13829 (regOne!28171 Regex!13829) (regTwo!28171 Regex!13829)) )
))
(declare-datatypes ((List!58083 0))(
  ( (Nil!57959) (Cons!57959 (h!64407 Regex!13829) (t!370459 List!58083)) )
))
(declare-datatypes ((Context!6508 0))(
  ( (Context!6509 (exprs!3754 List!58083)) )
))
(declare-fun z!4710 () (InoxSet Context!6508))

(declare-fun matchZipper!597 ((InoxSet Context!6508) List!58082) Bool)

(assert (=> b!5018400 (= res!2139954 (matchZipper!597 z!4710 lt!2076953))))

(declare-datatypes ((IArray!30757 0))(
  ( (IArray!30758 (innerList!15436 List!58082)) )
))
(declare-datatypes ((Conc!15348 0))(
  ( (Node!15348 (left!42368 Conc!15348) (right!42698 Conc!15348) (csize!30926 Int) (cheight!15559 Int)) (Leaf!25471 (xs!18674 IArray!30757) (csize!30927 Int)) (Empty!15348) )
))
(declare-datatypes ((BalanceConc!30126 0))(
  ( (BalanceConc!30127 (c!857454 Conc!15348)) )
))
(declare-fun totalInput!1125 () BalanceConc!30126)

(declare-fun take!688 (List!58082 Int) List!58082)

(declare-fun drop!2492 (List!58082 Int) List!58082)

(declare-fun list!18676 (BalanceConc!30126) List!58082)

(assert (=> b!5018400 (= lt!2076953 (take!688 (drop!2492 (list!18676 totalInput!1125) from!1212) knownSize!24))))

(declare-fun res!2139952 () Bool)

(declare-fun e!3135091 () Bool)

(assert (=> start!530206 (=> (not res!2139952) (not e!3135091))))

(assert (=> start!530206 (= res!2139952 (>= from!1212 0))))

(assert (=> start!530206 e!3135091))

(assert (=> start!530206 true))

(declare-fun e!3135089 () Bool)

(declare-fun inv!76218 (BalanceConc!30126) Bool)

(assert (=> start!530206 (and (inv!76218 totalInput!1125) e!3135089)))

(declare-fun condSetEmpty!28558 () Bool)

(assert (=> start!530206 (= condSetEmpty!28558 (= z!4710 ((as const (Array Context!6508 Bool)) false)))))

(declare-fun setRes!28558 () Bool)

(assert (=> start!530206 setRes!28558))

(declare-fun b!5018401 () Bool)

(declare-fun res!2139953 () Bool)

(assert (=> b!5018401 (=> (not res!2139953) (not e!3135088))))

(assert (=> b!5018401 (= res!2139953 (and (not (= knownSize!24 0)) (> knownSize!24 0)))))

(declare-fun setIsEmpty!28558 () Bool)

(assert (=> setIsEmpty!28558 setRes!28558))

(declare-fun b!5018402 () Bool)

(assert (=> b!5018402 (= e!3135088 (or (< (+ 1 from!1212) 0) (> (+ 1 from!1212) lt!2076952)))))

(declare-fun lt!2076954 () C!27908)

(declare-fun apply!14016 (BalanceConc!30126 Int) C!27908)

(assert (=> b!5018402 (= lt!2076954 (apply!14016 totalInput!1125 from!1212))))

(declare-fun b!5018403 () Bool)

(declare-fun res!2139955 () Bool)

(assert (=> b!5018403 (=> (not res!2139955) (not e!3135088))))

(declare-fun lostCauseZipper!848 ((InoxSet Context!6508)) Bool)

(assert (=> b!5018403 (= res!2139955 (not (lostCauseZipper!848 z!4710)))))

(declare-fun b!5018404 () Bool)

(declare-fun e!3135087 () Bool)

(declare-fun tp!1407300 () Bool)

(assert (=> b!5018404 (= e!3135087 tp!1407300)))

(declare-fun b!5018405 () Bool)

(declare-fun tp!1407302 () Bool)

(declare-fun inv!76219 (Conc!15348) Bool)

(assert (=> b!5018405 (= e!3135089 (and (inv!76219 (c!857454 totalInput!1125)) tp!1407302))))

(declare-fun setNonEmpty!28558 () Bool)

(declare-fun setElem!28558 () Context!6508)

(declare-fun tp!1407301 () Bool)

(declare-fun inv!76220 (Context!6508) Bool)

(assert (=> setNonEmpty!28558 (= setRes!28558 (and tp!1407301 (inv!76220 setElem!28558) e!3135087))))

(declare-fun setRest!28558 () (InoxSet Context!6508))

(assert (=> setNonEmpty!28558 (= z!4710 ((_ map or) (store ((as const (Array Context!6508 Bool)) false) setElem!28558 true) setRest!28558))))

(declare-fun b!5018406 () Bool)

(assert (=> b!5018406 (= e!3135091 e!3135090)))

(declare-fun res!2139957 () Bool)

(assert (=> b!5018406 (=> (not res!2139957) (not e!3135090))))

(assert (=> b!5018406 (= res!2139957 (and (<= from!1212 lt!2076952) (>= knownSize!24 0) (<= knownSize!24 (- lt!2076952 from!1212))))))

(declare-fun size!38543 (BalanceConc!30126) Int)

(assert (=> b!5018406 (= lt!2076952 (size!38543 totalInput!1125))))

(assert (= (and start!530206 res!2139952) b!5018406))

(assert (= (and b!5018406 res!2139957) b!5018400))

(assert (= (and b!5018400 res!2139954) b!5018401))

(assert (= (and b!5018401 res!2139953) b!5018398))

(assert (= (and b!5018398 res!2139956) b!5018403))

(assert (= (and b!5018403 res!2139955) b!5018399))

(assert (= (and b!5018399 res!2139951) b!5018402))

(assert (= start!530206 b!5018405))

(assert (= (and start!530206 condSetEmpty!28558) setIsEmpty!28558))

(assert (= (and start!530206 (not condSetEmpty!28558)) setNonEmpty!28558))

(assert (= setNonEmpty!28558 b!5018404))

(declare-fun m!6053656 () Bool)

(assert (=> b!5018400 m!6053656))

(declare-fun m!6053658 () Bool)

(assert (=> b!5018400 m!6053658))

(assert (=> b!5018400 m!6053658))

(declare-fun m!6053660 () Bool)

(assert (=> b!5018400 m!6053660))

(assert (=> b!5018400 m!6053660))

(declare-fun m!6053662 () Bool)

(assert (=> b!5018400 m!6053662))

(declare-fun m!6053664 () Bool)

(assert (=> b!5018402 m!6053664))

(declare-fun m!6053666 () Bool)

(assert (=> b!5018398 m!6053666))

(declare-fun m!6053668 () Bool)

(assert (=> b!5018405 m!6053668))

(declare-fun m!6053670 () Bool)

(assert (=> b!5018403 m!6053670))

(declare-fun m!6053672 () Bool)

(assert (=> b!5018406 m!6053672))

(declare-fun m!6053674 () Bool)

(assert (=> start!530206 m!6053674))

(declare-fun m!6053676 () Bool)

(assert (=> setNonEmpty!28558 m!6053676))

(check-sat (not b!5018398) (not b!5018405) (not b!5018402) (not b!5018400) (not b!5018406) (not setNonEmpty!28558) (not b!5018404) (not b!5018403) (not start!530206))
(check-sat)
