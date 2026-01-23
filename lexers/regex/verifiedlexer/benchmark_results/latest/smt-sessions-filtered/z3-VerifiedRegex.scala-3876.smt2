; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!213634 () Bool)

(assert start!213634)

(declare-fun b!2200521 () Bool)

(declare-fun res!945994 () Bool)

(declare-fun e!1406153 () Bool)

(assert (=> b!2200521 (=> (not res!945994) (not e!1406153))))

(declare-fun lastNullablePos!161 () Int)

(declare-fun from!1082 () Int)

(assert (=> b!2200521 (= res!945994 (and (>= lastNullablePos!161 (- 1)) (< lastNullablePos!161 from!1082)))))

(declare-fun b!2200522 () Bool)

(declare-fun res!945993 () Bool)

(assert (=> b!2200522 (=> (not res!945993) (not e!1406153))))

(declare-fun e!1406150 () Bool)

(assert (=> b!2200522 (= res!945993 e!1406150)))

(declare-fun res!945995 () Bool)

(assert (=> b!2200522 (=> res!945995 e!1406150)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!12584 0))(
  ( (C!12585 (val!7278 Int)) )
))
(declare-datatypes ((Regex!6219 0))(
  ( (ElementMatch!6219 (c!350914 C!12584)) (Concat!10521 (regOne!12950 Regex!6219) (regTwo!12950 Regex!6219)) (EmptyExpr!6219) (Star!6219 (reg!6548 Regex!6219)) (EmptyLang!6219) (Union!6219 (regOne!12951 Regex!6219) (regTwo!12951 Regex!6219)) )
))
(declare-datatypes ((List!25732 0))(
  ( (Nil!25648) (Cons!25648 (h!31049 Regex!6219) (t!198350 List!25732)) )
))
(declare-datatypes ((Context!3578 0))(
  ( (Context!3579 (exprs!2289 List!25732)) )
))
(declare-fun z!3888 () (InoxSet Context!3578))

(declare-fun nullableZipper!499 ((InoxSet Context!3578)) Bool)

(assert (=> b!2200522 (= res!945995 (not (nullableZipper!499 z!3888)))))

(declare-fun res!945997 () Bool)

(declare-fun e!1406155 () Bool)

(assert (=> start!213634 (=> (not res!945997) (not e!1406155))))

(assert (=> start!213634 (= res!945997 (>= from!1082 0))))

(assert (=> start!213634 e!1406155))

(assert (=> start!213634 true))

(declare-datatypes ((List!25733 0))(
  ( (Nil!25649) (Cons!25649 (h!31050 C!12584) (t!198351 List!25733)) )
))
(declare-datatypes ((IArray!16715 0))(
  ( (IArray!16716 (innerList!8415 List!25733)) )
))
(declare-datatypes ((Conc!8355 0))(
  ( (Node!8355 (left!19699 Conc!8355) (right!20029 Conc!8355) (csize!16940 Int) (cheight!8566 Int)) (Leaf!12232 (xs!11297 IArray!16715) (csize!16941 Int)) (Empty!8355) )
))
(declare-datatypes ((BalanceConc!16472 0))(
  ( (BalanceConc!16473 (c!350915 Conc!8355)) )
))
(declare-fun totalInput!891 () BalanceConc!16472)

(declare-fun e!1406151 () Bool)

(declare-fun inv!34444 (BalanceConc!16472) Bool)

(assert (=> start!213634 (and (inv!34444 totalInput!891) e!1406151)))

(declare-fun condSetEmpty!18960 () Bool)

(assert (=> start!213634 (= condSetEmpty!18960 (= z!3888 ((as const (Array Context!3578 Bool)) false)))))

(declare-fun setRes!18960 () Bool)

(assert (=> start!213634 setRes!18960))

(declare-fun b!2200523 () Bool)

(declare-fun tp!684785 () Bool)

(declare-fun inv!34445 (Conc!8355) Bool)

(assert (=> b!2200523 (= e!1406151 (and (inv!34445 (c!350915 totalInput!891)) tp!684785))))

(declare-fun b!2200524 () Bool)

(declare-fun e!1406152 () Int)

(assert (=> b!2200524 (= e!1406152 from!1082)))

(declare-fun setIsEmpty!18960 () Bool)

(assert (=> setIsEmpty!18960 setRes!18960))

(declare-fun b!2200525 () Bool)

(declare-fun e!1406154 () Bool)

(declare-fun tp!684786 () Bool)

(assert (=> b!2200525 (= e!1406154 tp!684786)))

(declare-fun b!2200526 () Bool)

(declare-fun e!1406149 () Bool)

(assert (=> b!2200526 (= e!1406149 e!1406153)))

(declare-fun res!945998 () Bool)

(assert (=> b!2200526 (=> (not res!945998) (not e!1406153))))

(declare-fun lt!823092 () List!25733)

(declare-fun matchZipper!305 ((InoxSet Context!3578) List!25733) Bool)

(assert (=> b!2200526 (= res!945998 (matchZipper!305 z!3888 lt!823092))))

(declare-fun lt!823098 () List!25733)

(declare-fun knownSize!10 () Int)

(declare-fun take!397 (List!25733 Int) List!25733)

(assert (=> b!2200526 (= lt!823092 (take!397 lt!823098 knownSize!10))))

(declare-fun lt!823097 () List!25733)

(declare-fun drop!1407 (List!25733 Int) List!25733)

(assert (=> b!2200526 (= lt!823098 (drop!1407 lt!823097 from!1082))))

(declare-fun list!9877 (BalanceConc!16472) List!25733)

(assert (=> b!2200526 (= lt!823097 (list!9877 totalInput!891))))

(declare-fun b!2200527 () Bool)

(assert (=> b!2200527 (= e!1406152 lastNullablePos!161)))

(declare-fun b!2200528 () Bool)

(assert (=> b!2200528 (= e!1406150 (= lastNullablePos!161 (- from!1082 1)))))

(declare-fun b!2200529 () Bool)

(assert (=> b!2200529 (= e!1406153 (not (not (= lt!823092 Nil!25649))))))

(declare-fun apply!6296 (List!25733 Int) C!12584)

(assert (=> b!2200529 (= (Cons!25649 (apply!6296 lt!823097 from!1082) (take!397 (drop!1407 lt!823097 (+ 1 from!1082)) (- knownSize!10 1))) (take!397 lt!823098 (+ 1 (- knownSize!10 1))))))

(declare-datatypes ((Unit!38747 0))(
  ( (Unit!38748) )
))
(declare-fun lt!823095 () Unit!38747)

(declare-fun lemmaDropTakeAddOneLeft!26 (List!25733 Int Int) Unit!38747)

(assert (=> b!2200529 (= lt!823095 (lemmaDropTakeAddOneLeft!26 lt!823097 from!1082 (- knownSize!10 1)))))

(declare-fun lt!823094 () (InoxSet Context!3578))

(declare-fun lt!823096 () Int)

(declare-fun lt!823093 () Int)

(declare-fun furthestNullablePosition!371 ((InoxSet Context!3578) Int BalanceConc!16472 Int Int) Int)

(assert (=> b!2200529 (= lt!823096 (furthestNullablePosition!371 lt!823094 (+ 1 from!1082) totalInput!891 lt!823093 e!1406152))))

(declare-fun c!350913 () Bool)

(assert (=> b!2200529 (= c!350913 (nullableZipper!499 lt!823094))))

(declare-fun derivationStepZipper!277 ((InoxSet Context!3578) C!12584) (InoxSet Context!3578))

(declare-fun apply!6297 (BalanceConc!16472 Int) C!12584)

(assert (=> b!2200529 (= lt!823094 (derivationStepZipper!277 z!3888 (apply!6297 totalInput!891 from!1082)))))

(declare-fun b!2200530 () Bool)

(assert (=> b!2200530 (= e!1406155 e!1406149)))

(declare-fun res!946001 () Bool)

(assert (=> b!2200530 (=> (not res!946001) (not e!1406149))))

(assert (=> b!2200530 (= res!946001 (and (<= from!1082 lt!823093) (>= knownSize!10 0) (<= knownSize!10 (- lt!823093 from!1082))))))

(declare-fun size!19986 (BalanceConc!16472) Int)

(assert (=> b!2200530 (= lt!823093 (size!19986 totalInput!891))))

(declare-fun setNonEmpty!18960 () Bool)

(declare-fun setElem!18960 () Context!3578)

(declare-fun tp!684784 () Bool)

(declare-fun inv!34446 (Context!3578) Bool)

(assert (=> setNonEmpty!18960 (= setRes!18960 (and tp!684784 (inv!34446 setElem!18960) e!1406154))))

(declare-fun setRest!18960 () (InoxSet Context!3578))

(assert (=> setNonEmpty!18960 (= z!3888 ((_ map or) (store ((as const (Array Context!3578 Bool)) false) setElem!18960 true) setRest!18960))))

(declare-fun b!2200531 () Bool)

(declare-fun res!945996 () Bool)

(assert (=> b!2200531 (=> (not res!945996) (not e!1406153))))

(declare-fun lostCauseZipper!329 ((InoxSet Context!3578)) Bool)

(assert (=> b!2200531 (= res!945996 (not (lostCauseZipper!329 z!3888)))))

(declare-fun b!2200532 () Bool)

(declare-fun res!946000 () Bool)

(assert (=> b!2200532 (=> (not res!946000) (not e!1406153))))

(declare-fun isEmpty!14629 (BalanceConc!16472) Bool)

(assert (=> b!2200532 (= res!946000 (not (isEmpty!14629 totalInput!891)))))

(declare-fun b!2200533 () Bool)

(declare-fun res!945999 () Bool)

(assert (=> b!2200533 (=> (not res!945999) (not e!1406153))))

(assert (=> b!2200533 (= res!945999 (and (not (= knownSize!10 0)) (> knownSize!10 0) (not (= from!1082 lt!823093))))))

(assert (= (and start!213634 res!945997) b!2200530))

(assert (= (and b!2200530 res!946001) b!2200526))

(assert (= (and b!2200526 res!945998) b!2200521))

(assert (= (and b!2200521 res!945994) b!2200522))

(assert (= (and b!2200522 (not res!945995)) b!2200528))

(assert (= (and b!2200522 res!945993) b!2200532))

(assert (= (and b!2200532 res!946000) b!2200533))

(assert (= (and b!2200533 res!945999) b!2200531))

(assert (= (and b!2200531 res!945996) b!2200529))

(assert (= (and b!2200529 c!350913) b!2200524))

(assert (= (and b!2200529 (not c!350913)) b!2200527))

(assert (= start!213634 b!2200523))

(assert (= (and start!213634 condSetEmpty!18960) setIsEmpty!18960))

(assert (= (and start!213634 (not condSetEmpty!18960)) setNonEmpty!18960))

(assert (= setNonEmpty!18960 b!2200525))

(declare-fun m!2643163 () Bool)

(assert (=> b!2200529 m!2643163))

(declare-fun m!2643165 () Bool)

(assert (=> b!2200529 m!2643165))

(declare-fun m!2643167 () Bool)

(assert (=> b!2200529 m!2643167))

(declare-fun m!2643169 () Bool)

(assert (=> b!2200529 m!2643169))

(declare-fun m!2643171 () Bool)

(assert (=> b!2200529 m!2643171))

(assert (=> b!2200529 m!2643167))

(declare-fun m!2643173 () Bool)

(assert (=> b!2200529 m!2643173))

(declare-fun m!2643175 () Bool)

(assert (=> b!2200529 m!2643175))

(declare-fun m!2643177 () Bool)

(assert (=> b!2200529 m!2643177))

(assert (=> b!2200529 m!2643163))

(declare-fun m!2643179 () Bool)

(assert (=> b!2200529 m!2643179))

(declare-fun m!2643181 () Bool)

(assert (=> setNonEmpty!18960 m!2643181))

(declare-fun m!2643183 () Bool)

(assert (=> b!2200531 m!2643183))

(declare-fun m!2643185 () Bool)

(assert (=> b!2200532 m!2643185))

(declare-fun m!2643187 () Bool)

(assert (=> start!213634 m!2643187))

(declare-fun m!2643189 () Bool)

(assert (=> b!2200526 m!2643189))

(declare-fun m!2643191 () Bool)

(assert (=> b!2200526 m!2643191))

(declare-fun m!2643193 () Bool)

(assert (=> b!2200526 m!2643193))

(declare-fun m!2643195 () Bool)

(assert (=> b!2200526 m!2643195))

(declare-fun m!2643197 () Bool)

(assert (=> b!2200530 m!2643197))

(declare-fun m!2643199 () Bool)

(assert (=> b!2200523 m!2643199))

(declare-fun m!2643201 () Bool)

(assert (=> b!2200522 m!2643201))

(check-sat (not b!2200531) (not b!2200525) (not start!213634) (not b!2200532) (not b!2200526) (not b!2200522) (not b!2200530) (not b!2200523) (not b!2200529) (not setNonEmpty!18960))
(check-sat)
