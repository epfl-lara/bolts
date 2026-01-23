; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!272452 () Bool)

(assert start!272452)

(declare-fun b!2813463 () Bool)

(declare-fun e!1779257 () Bool)

(assert (=> b!2813463 (= e!1779257 true)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!16760 0))(
  ( (C!16761 (val!10360 Int)) )
))
(declare-datatypes ((Regex!8297 0))(
  ( (ElementMatch!8297 (c!455895 C!16760)) (Concat!13437 (regOne!17106 Regex!8297) (regTwo!17106 Regex!8297)) (EmptyExpr!8297) (Star!8297 (reg!8626 Regex!8297)) (EmptyLang!8297) (Union!8297 (regOne!17107 Regex!8297) (regTwo!17107 Regex!8297)) )
))
(declare-datatypes ((List!33020 0))(
  ( (Nil!32896) (Cons!32896 (h!38316 Regex!8297) (t!229994 List!33020)) )
))
(declare-datatypes ((Context!4926 0))(
  ( (Context!4927 (exprs!2963 List!33020)) )
))
(declare-fun z!592 () (InoxSet Context!4926))

(declare-datatypes ((List!33021 0))(
  ( (Nil!32897) (Cons!32897 (h!38317 C!16760) (t!229995 List!33021)) )
))
(declare-datatypes ((IArray!20393 0))(
  ( (IArray!20394 (innerList!10254 List!33021)) )
))
(declare-datatypes ((Conc!10194 0))(
  ( (Node!10194 (left!24814 Conc!10194) (right!25144 Conc!10194) (csize!20618 Int) (cheight!10405 Int)) (Leaf!15531 (xs!13306 IArray!20393) (csize!20619 Int)) (Empty!10194) )
))
(declare-datatypes ((BalanceConc!20026 0))(
  ( (BalanceConc!20027 (c!455896 Conc!10194)) )
))
(declare-fun input!3732 () BalanceConc!20026)

(declare-fun i!1825 () Int)

(declare-fun lt!1005284 () Bool)

(declare-fun matchZipperSequence!32 ((InoxSet Context!4926) BalanceConc!20026 Int) Bool)

(assert (=> b!2813463 (= lt!1005284 (matchZipperSequence!32 z!592 input!3732 i!1825))))

(declare-fun lt!1005278 () Bool)

(declare-fun lt!1005277 () List!33021)

(declare-fun matchZipper!387 ((InoxSet Context!4926) List!33021) Bool)

(assert (=> b!2813463 (= lt!1005278 (matchZipper!387 z!592 lt!1005277))))

(declare-fun tp!898422 () Bool)

(declare-fun setElem!24723 () Context!4926)

(declare-fun setNonEmpty!24723 () Bool)

(declare-fun e!1779256 () Bool)

(declare-fun setRes!24723 () Bool)

(declare-fun inv!44696 (Context!4926) Bool)

(assert (=> setNonEmpty!24723 (= setRes!24723 (and tp!898422 (inv!44696 setElem!24723) e!1779256))))

(declare-fun setRest!24723 () (InoxSet Context!4926))

(assert (=> setNonEmpty!24723 (= z!592 ((_ map or) (store ((as const (Array Context!4926 Bool)) false) setElem!24723 true) setRest!24723))))

(declare-fun b!2813464 () Bool)

(declare-fun e!1779255 () Bool)

(declare-fun e!1779258 () Bool)

(assert (=> b!2813464 (= e!1779255 e!1779258)))

(declare-fun res!1171178 () Bool)

(assert (=> b!2813464 (=> (not res!1171178) (not e!1779258))))

(declare-fun lt!1005276 () Int)

(assert (=> b!2813464 (= res!1171178 (and (<= i!1825 lt!1005276) (not (= i!1825 lt!1005276))))))

(declare-fun size!25634 (BalanceConc!20026) Int)

(assert (=> b!2813464 (= lt!1005276 (size!25634 input!3732))))

(declare-fun b!2813465 () Bool)

(declare-fun e!1779259 () Bool)

(declare-fun tp!898421 () Bool)

(declare-fun inv!44697 (Conc!10194) Bool)

(assert (=> b!2813465 (= e!1779259 (and (inv!44697 (c!455896 input!3732)) tp!898421))))

(declare-fun res!1171176 () Bool)

(assert (=> start!272452 (=> (not res!1171176) (not e!1779255))))

(assert (=> start!272452 (= res!1171176 (>= i!1825 0))))

(assert (=> start!272452 e!1779255))

(assert (=> start!272452 true))

(declare-fun inv!44698 (BalanceConc!20026) Bool)

(assert (=> start!272452 (and (inv!44698 input!3732) e!1779259)))

(declare-fun condSetEmpty!24723 () Bool)

(assert (=> start!272452 (= condSetEmpty!24723 (= z!592 ((as const (Array Context!4926 Bool)) false)))))

(assert (=> start!272452 setRes!24723))

(declare-fun b!2813466 () Bool)

(declare-fun tp!898420 () Bool)

(assert (=> b!2813466 (= e!1779256 tp!898420)))

(declare-fun setIsEmpty!24723 () Bool)

(assert (=> setIsEmpty!24723 setRes!24723))

(declare-fun b!2813467 () Bool)

(assert (=> b!2813467 (= e!1779258 (not e!1779257))))

(declare-fun res!1171177 () Bool)

(assert (=> b!2813467 (=> res!1171177 e!1779257)))

(declare-fun lt!1005274 () C!16760)

(declare-fun lt!1005275 () List!33021)

(declare-fun $colon$colon!575 (List!33021 C!16760) List!33021)

(assert (=> b!2813467 (= res!1171177 (not (= lt!1005277 ($colon$colon!575 lt!1005275 lt!1005274))))))

(declare-fun dropList!990 (BalanceConc!20026 Int) List!33021)

(assert (=> b!2813467 (= lt!1005277 (dropList!990 input!3732 i!1825))))

(declare-fun lt!1005280 () List!33021)

(declare-fun lt!1005281 () List!33021)

(declare-fun tail!4446 (List!33021) List!33021)

(declare-fun drop!1768 (List!33021 Int) List!33021)

(assert (=> b!2813467 (= (tail!4446 lt!1005280) (drop!1768 lt!1005281 (+ 1 i!1825)))))

(declare-datatypes ((Unit!46892 0))(
  ( (Unit!46893) )
))
(declare-fun lt!1005282 () Unit!46892)

(declare-fun lemmaDropTail!862 (List!33021 Int) Unit!46892)

(assert (=> b!2813467 (= lt!1005282 (lemmaDropTail!862 lt!1005281 i!1825))))

(declare-fun head!6221 (List!33021) C!16760)

(declare-fun apply!7668 (List!33021 Int) C!16760)

(assert (=> b!2813467 (= (head!6221 lt!1005280) (apply!7668 lt!1005281 i!1825))))

(assert (=> b!2813467 (= lt!1005280 (drop!1768 lt!1005281 i!1825))))

(declare-fun lt!1005283 () Unit!46892)

(declare-fun lemmaDropApply!972 (List!33021 Int) Unit!46892)

(assert (=> b!2813467 (= lt!1005283 (lemmaDropApply!972 lt!1005281 i!1825))))

(declare-fun list!12325 (BalanceConc!20026) List!33021)

(assert (=> b!2813467 (= lt!1005281 (list!12325 input!3732))))

(declare-fun lt!1005285 () (InoxSet Context!4926))

(assert (=> b!2813467 (= (matchZipper!387 lt!1005285 lt!1005275) (matchZipperSequence!32 lt!1005285 input!3732 (+ 1 i!1825)))))

(assert (=> b!2813467 (= lt!1005275 (dropList!990 input!3732 (+ 1 i!1825)))))

(declare-fun lt!1005279 () Unit!46892)

(declare-fun lemmaMatchZipperSequenceEquivalent!28 ((InoxSet Context!4926) BalanceConc!20026 Int) Unit!46892)

(assert (=> b!2813467 (= lt!1005279 (lemmaMatchZipperSequenceEquivalent!28 lt!1005285 input!3732 (+ 1 i!1825)))))

(declare-fun derivationStepZipper!393 ((InoxSet Context!4926) C!16760) (InoxSet Context!4926))

(assert (=> b!2813467 (= lt!1005285 (derivationStepZipper!393 z!592 lt!1005274))))

(declare-fun apply!7669 (BalanceConc!20026 Int) C!16760)

(assert (=> b!2813467 (= lt!1005274 (apply!7669 input!3732 i!1825))))

(assert (= (and start!272452 res!1171176) b!2813464))

(assert (= (and b!2813464 res!1171178) b!2813467))

(assert (= (and b!2813467 (not res!1171177)) b!2813463))

(assert (= start!272452 b!2813465))

(assert (= (and start!272452 condSetEmpty!24723) setIsEmpty!24723))

(assert (= (and start!272452 (not condSetEmpty!24723)) setNonEmpty!24723))

(assert (= setNonEmpty!24723 b!2813466))

(declare-fun m!3244025 () Bool)

(assert (=> start!272452 m!3244025))

(declare-fun m!3244027 () Bool)

(assert (=> b!2813467 m!3244027))

(declare-fun m!3244029 () Bool)

(assert (=> b!2813467 m!3244029))

(declare-fun m!3244031 () Bool)

(assert (=> b!2813467 m!3244031))

(declare-fun m!3244033 () Bool)

(assert (=> b!2813467 m!3244033))

(declare-fun m!3244035 () Bool)

(assert (=> b!2813467 m!3244035))

(declare-fun m!3244037 () Bool)

(assert (=> b!2813467 m!3244037))

(declare-fun m!3244039 () Bool)

(assert (=> b!2813467 m!3244039))

(declare-fun m!3244041 () Bool)

(assert (=> b!2813467 m!3244041))

(declare-fun m!3244043 () Bool)

(assert (=> b!2813467 m!3244043))

(declare-fun m!3244045 () Bool)

(assert (=> b!2813467 m!3244045))

(declare-fun m!3244047 () Bool)

(assert (=> b!2813467 m!3244047))

(declare-fun m!3244049 () Bool)

(assert (=> b!2813467 m!3244049))

(declare-fun m!3244051 () Bool)

(assert (=> b!2813467 m!3244051))

(declare-fun m!3244053 () Bool)

(assert (=> b!2813467 m!3244053))

(declare-fun m!3244055 () Bool)

(assert (=> b!2813467 m!3244055))

(declare-fun m!3244057 () Bool)

(assert (=> b!2813467 m!3244057))

(declare-fun m!3244059 () Bool)

(assert (=> setNonEmpty!24723 m!3244059))

(declare-fun m!3244061 () Bool)

(assert (=> b!2813463 m!3244061))

(declare-fun m!3244063 () Bool)

(assert (=> b!2813463 m!3244063))

(declare-fun m!3244065 () Bool)

(assert (=> b!2813465 m!3244065))

(declare-fun m!3244067 () Bool)

(assert (=> b!2813464 m!3244067))

(check-sat (not start!272452) (not b!2813467) (not b!2813466) (not b!2813465) (not b!2813464) (not setNonEmpty!24723) (not b!2813463))
(check-sat)
