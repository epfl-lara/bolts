; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!530226 () Bool)

(assert start!530226)

(declare-fun setIsEmpty!28588 () Bool)

(declare-fun setRes!28588 () Bool)

(assert (=> setIsEmpty!28588 setRes!28588))

(declare-fun b!5018684 () Bool)

(declare-fun res!2140180 () Bool)

(declare-fun e!3135249 () Bool)

(assert (=> b!5018684 (=> (not res!2140180) (not e!3135249))))

(declare-fun knownSize!24 () Int)

(assert (=> b!5018684 (= res!2140180 (and (not (= knownSize!24 0)) (> knownSize!24 0)))))

(declare-fun b!5018685 () Bool)

(declare-fun res!2140183 () Bool)

(assert (=> b!5018685 (=> (not res!2140183) (not e!3135249))))

(declare-fun from!1212 () Int)

(declare-fun lt!2077184 () Int)

(assert (=> b!5018685 (= res!2140183 (not (= from!1212 lt!2077184)))))

(declare-fun b!5018686 () Bool)

(declare-fun res!2140181 () Bool)

(assert (=> b!5018686 (=> (not res!2140181) (not e!3135249))))

(declare-datatypes ((C!27928 0))(
  ( (C!27929 (val!23330 Int)) )
))
(declare-datatypes ((List!58102 0))(
  ( (Nil!57978) (Cons!57978 (h!64426 C!27928) (t!370478 List!58102)) )
))
(declare-fun lt!2077178 () List!58102)

(declare-fun size!38562 (List!58102) Int)

(assert (=> b!5018686 (= res!2140181 (= (size!38562 lt!2077178) knownSize!24))))

(declare-fun b!5018687 () Bool)

(declare-fun e!3135248 () Bool)

(declare-fun tp!1407390 () Bool)

(assert (=> b!5018687 (= e!3135248 tp!1407390)))

(declare-fun b!5018688 () Bool)

(declare-fun e!3135253 () Bool)

(declare-datatypes ((IArray!30777 0))(
  ( (IArray!30778 (innerList!15446 List!58102)) )
))
(declare-datatypes ((Conc!15358 0))(
  ( (Node!15358 (left!42383 Conc!15358) (right!42713 Conc!15358) (csize!30946 Int) (cheight!15569 Int)) (Leaf!25486 (xs!18684 IArray!30777) (csize!30947 Int)) (Empty!15358) )
))
(declare-datatypes ((BalanceConc!30146 0))(
  ( (BalanceConc!30147 (c!857473 Conc!15358)) )
))
(declare-fun totalInput!1125 () BalanceConc!30146)

(declare-fun tp!1407392 () Bool)

(declare-fun inv!76263 (Conc!15358) Bool)

(assert (=> b!5018688 (= e!3135253 (and (inv!76263 (c!857473 totalInput!1125)) tp!1407392))))

(declare-fun b!5018689 () Bool)

(declare-fun e!3135250 () Bool)

(assert (=> b!5018689 (= e!3135249 (not e!3135250))))

(declare-fun res!2140185 () Bool)

(assert (=> b!5018689 (=> res!2140185 e!3135250)))

(assert (=> b!5018689 (= res!2140185 (or (< (+ 1 from!1212) 0) (> (+ 1 from!1212) lt!2077184) (< (- knownSize!24 1) 0) (> (- knownSize!24 1) (- lt!2077184 (+ 1 from!1212)))))))

(declare-fun lt!2077181 () C!27928)

(declare-fun lt!2077179 () List!58102)

(declare-fun lt!2077186 () List!58102)

(declare-fun take!698 (List!58102 Int) List!58102)

(assert (=> b!5018689 (= (Cons!57978 lt!2077181 lt!2077186) (take!698 lt!2077179 (+ 1 (- knownSize!24 1))))))

(declare-fun lt!2077185 () List!58102)

(assert (=> b!5018689 (= lt!2077186 (take!698 lt!2077185 (- knownSize!24 1)))))

(declare-fun lt!2077187 () List!58102)

(declare-datatypes ((Unit!149191 0))(
  ( (Unit!149192) )
))
(declare-fun lt!2077188 () Unit!149191)

(declare-fun lemmaDropTakeAddOneLeft!58 (List!58102 Int Int) Unit!149191)

(assert (=> b!5018689 (= lt!2077188 (lemmaDropTakeAddOneLeft!58 lt!2077187 from!1212 (- knownSize!24 1)))))

(declare-fun lt!2077183 () Int)

(assert (=> b!5018689 (= (Cons!57978 lt!2077181 (take!698 lt!2077185 lt!2077183)) (take!698 lt!2077179 (+ 1 lt!2077183)))))

(declare-fun drop!2502 (List!58102 Int) List!58102)

(assert (=> b!5018689 (= lt!2077185 (drop!2502 lt!2077187 (+ 1 from!1212)))))

(declare-fun apply!14031 (List!58102 Int) C!27928)

(assert (=> b!5018689 (= lt!2077181 (apply!14031 lt!2077187 from!1212))))

(declare-fun lt!2077182 () Unit!149191)

(assert (=> b!5018689 (= lt!2077182 (lemmaDropTakeAddOneLeft!58 lt!2077187 from!1212 lt!2077183))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!13839 0))(
  ( (ElementMatch!13839 (c!857474 C!27928)) (Concat!22632 (regOne!28190 Regex!13839) (regTwo!28190 Regex!13839)) (EmptyExpr!13839) (Star!13839 (reg!14168 Regex!13839)) (EmptyLang!13839) (Union!13839 (regOne!28191 Regex!13839) (regTwo!28191 Regex!13839)) )
))
(declare-datatypes ((List!58103 0))(
  ( (Nil!57979) (Cons!57979 (h!64427 Regex!13839) (t!370479 List!58103)) )
))
(declare-datatypes ((Context!6528 0))(
  ( (Context!6529 (exprs!3764 List!58103)) )
))
(declare-fun lt!2077180 () (InoxSet Context!6528))

(declare-fun findLongestMatchInnerZipperFastV2!167 ((InoxSet Context!6528) Int BalanceConc!30146 Int) Int)

(assert (=> b!5018689 (= lt!2077183 (findLongestMatchInnerZipperFastV2!167 lt!2077180 (+ 1 from!1212) totalInput!1125 lt!2077184))))

(declare-fun z!4710 () (InoxSet Context!6528))

(declare-fun derivationStepZipper!651 ((InoxSet Context!6528) C!27928) (InoxSet Context!6528))

(declare-fun apply!14032 (BalanceConc!30146 Int) C!27928)

(assert (=> b!5018689 (= lt!2077180 (derivationStepZipper!651 z!4710 (apply!14032 totalInput!1125 from!1212)))))

(declare-fun b!5018690 () Bool)

(assert (=> b!5018690 (= e!3135250 true)))

(assert (=> b!5018690 (>= lt!2077183 (- knownSize!24 1))))

(declare-fun lt!2077177 () Unit!149191)

(declare-fun lemmaKnownAcceptedStringThenFromSmallPAtLeastThatV2!6 ((InoxSet Context!6528) Int BalanceConc!30146 Int) Unit!149191)

(assert (=> b!5018690 (= lt!2077177 (lemmaKnownAcceptedStringThenFromSmallPAtLeastThatV2!6 lt!2077180 (+ 1 from!1212) totalInput!1125 (- knownSize!24 1)))))

(declare-fun setElem!28588 () Context!6528)

(declare-fun tp!1407391 () Bool)

(declare-fun setNonEmpty!28588 () Bool)

(declare-fun inv!76264 (Context!6528) Bool)

(assert (=> setNonEmpty!28588 (= setRes!28588 (and tp!1407391 (inv!76264 setElem!28588) e!3135248))))

(declare-fun setRest!28588 () (InoxSet Context!6528))

(assert (=> setNonEmpty!28588 (= z!4710 ((_ map or) (store ((as const (Array Context!6528 Bool)) false) setElem!28588 true) setRest!28588))))

(declare-fun b!5018691 () Bool)

(declare-fun res!2140182 () Bool)

(assert (=> b!5018691 (=> (not res!2140182) (not e!3135249))))

(declare-fun lostCauseZipper!858 ((InoxSet Context!6528)) Bool)

(assert (=> b!5018691 (= res!2140182 (not (lostCauseZipper!858 z!4710)))))

(declare-fun res!2140177 () Bool)

(declare-fun e!3135252 () Bool)

(assert (=> start!530226 (=> (not res!2140177) (not e!3135252))))

(assert (=> start!530226 (= res!2140177 (>= from!1212 0))))

(assert (=> start!530226 e!3135252))

(assert (=> start!530226 true))

(declare-fun inv!76265 (BalanceConc!30146) Bool)

(assert (=> start!530226 (and (inv!76265 totalInput!1125) e!3135253)))

(declare-fun condSetEmpty!28588 () Bool)

(assert (=> start!530226 (= condSetEmpty!28588 (= z!4710 ((as const (Array Context!6528 Bool)) false)))))

(assert (=> start!530226 setRes!28588))

(declare-fun b!5018692 () Bool)

(declare-fun res!2140184 () Bool)

(assert (=> b!5018692 (=> res!2140184 e!3135250)))

(declare-fun matchZipper!607 ((InoxSet Context!6528) List!58102) Bool)

(assert (=> b!5018692 (= res!2140184 (not (matchZipper!607 lt!2077180 lt!2077186)))))

(declare-fun b!5018693 () Bool)

(declare-fun e!3135251 () Bool)

(assert (=> b!5018693 (= e!3135252 e!3135251)))

(declare-fun res!2140178 () Bool)

(assert (=> b!5018693 (=> (not res!2140178) (not e!3135251))))

(assert (=> b!5018693 (= res!2140178 (and (<= from!1212 lt!2077184) (>= knownSize!24 0) (<= knownSize!24 (- lt!2077184 from!1212))))))

(declare-fun size!38563 (BalanceConc!30146) Int)

(assert (=> b!5018693 (= lt!2077184 (size!38563 totalInput!1125))))

(declare-fun b!5018694 () Bool)

(assert (=> b!5018694 (= e!3135251 e!3135249)))

(declare-fun res!2140179 () Bool)

(assert (=> b!5018694 (=> (not res!2140179) (not e!3135249))))

(assert (=> b!5018694 (= res!2140179 (matchZipper!607 z!4710 lt!2077178))))

(assert (=> b!5018694 (= lt!2077178 (take!698 lt!2077179 knownSize!24))))

(assert (=> b!5018694 (= lt!2077179 (drop!2502 lt!2077187 from!1212))))

(declare-fun list!18686 (BalanceConc!30146) List!58102)

(assert (=> b!5018694 (= lt!2077187 (list!18686 totalInput!1125))))

(assert (= (and start!530226 res!2140177) b!5018693))

(assert (= (and b!5018693 res!2140178) b!5018694))

(assert (= (and b!5018694 res!2140179) b!5018684))

(assert (= (and b!5018684 res!2140180) b!5018686))

(assert (= (and b!5018686 res!2140181) b!5018691))

(assert (= (and b!5018691 res!2140182) b!5018685))

(assert (= (and b!5018685 res!2140183) b!5018689))

(assert (= (and b!5018689 (not res!2140185)) b!5018692))

(assert (= (and b!5018692 (not res!2140184)) b!5018690))

(assert (= start!530226 b!5018688))

(assert (= (and start!530226 condSetEmpty!28588) setIsEmpty!28588))

(assert (= (and start!530226 (not condSetEmpty!28588)) setNonEmpty!28588))

(assert (= setNonEmpty!28588 b!5018687))

(declare-fun m!6053988 () Bool)

(assert (=> b!5018693 m!6053988))

(declare-fun m!6053990 () Bool)

(assert (=> b!5018688 m!6053990))

(declare-fun m!6053992 () Bool)

(assert (=> setNonEmpty!28588 m!6053992))

(declare-fun m!6053994 () Bool)

(assert (=> b!5018694 m!6053994))

(declare-fun m!6053996 () Bool)

(assert (=> b!5018694 m!6053996))

(declare-fun m!6053998 () Bool)

(assert (=> b!5018694 m!6053998))

(declare-fun m!6054000 () Bool)

(assert (=> b!5018694 m!6054000))

(declare-fun m!6054002 () Bool)

(assert (=> b!5018689 m!6054002))

(declare-fun m!6054004 () Bool)

(assert (=> b!5018689 m!6054004))

(declare-fun m!6054006 () Bool)

(assert (=> b!5018689 m!6054006))

(declare-fun m!6054008 () Bool)

(assert (=> b!5018689 m!6054008))

(declare-fun m!6054010 () Bool)

(assert (=> b!5018689 m!6054010))

(declare-fun m!6054012 () Bool)

(assert (=> b!5018689 m!6054012))

(assert (=> b!5018689 m!6054002))

(declare-fun m!6054014 () Bool)

(assert (=> b!5018689 m!6054014))

(declare-fun m!6054016 () Bool)

(assert (=> b!5018689 m!6054016))

(declare-fun m!6054018 () Bool)

(assert (=> b!5018689 m!6054018))

(declare-fun m!6054020 () Bool)

(assert (=> b!5018689 m!6054020))

(declare-fun m!6054022 () Bool)

(assert (=> b!5018689 m!6054022))

(declare-fun m!6054024 () Bool)

(assert (=> b!5018690 m!6054024))

(declare-fun m!6054026 () Bool)

(assert (=> b!5018691 m!6054026))

(declare-fun m!6054028 () Bool)

(assert (=> start!530226 m!6054028))

(declare-fun m!6054030 () Bool)

(assert (=> b!5018686 m!6054030))

(declare-fun m!6054032 () Bool)

(assert (=> b!5018692 m!6054032))

(check-sat (not b!5018692) (not b!5018689) (not b!5018694) (not b!5018688) (not b!5018691) (not b!5018690) (not setNonEmpty!28588) (not start!530226) (not b!5018686) (not b!5018687) (not b!5018693))
(check-sat)
