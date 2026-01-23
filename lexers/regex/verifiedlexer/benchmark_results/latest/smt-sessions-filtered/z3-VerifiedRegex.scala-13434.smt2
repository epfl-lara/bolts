; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!726550 () Bool)

(assert start!726550)

(declare-fun b!7505783 () Bool)

(declare-fun e!4475376 () Bool)

(declare-fun lt!2634781 () Int)

(declare-fun lt!2634785 () Int)

(assert (=> b!7505783 (= e!4475376 (= lt!2634781 lt!2634785))))

(declare-datatypes ((C!39736 0))(
  ( (C!39737 (val!30266 Int)) )
))
(declare-datatypes ((List!72507 0))(
  ( (Nil!72383) (Cons!72383 (h!78831 C!39736) (t!387076 List!72507)) )
))
(declare-fun totalInput!779 () List!72507)

(declare-fun isPrefix!5999 (List!72507 List!72507) Bool)

(assert (=> b!7505783 (isPrefix!5999 totalInput!779 totalInput!779)))

(declare-datatypes ((Unit!166372 0))(
  ( (Unit!166373) )
))
(declare-fun lt!2634788 () Unit!166372)

(declare-fun lemmaIsPrefixRefl!3838 (List!72507 List!72507) Unit!166372)

(assert (=> b!7505783 (= lt!2634788 (lemmaIsPrefixRefl!3838 totalInput!779 totalInput!779))))

(declare-fun b!7505784 () Bool)

(declare-fun e!4475372 () Bool)

(declare-fun tp_is_empty!49751 () Bool)

(declare-fun tp!2178786 () Bool)

(assert (=> b!7505784 (= e!4475372 (and tp_is_empty!49751 tp!2178786))))

(declare-fun b!7505785 () Bool)

(declare-fun res!3011270 () Bool)

(declare-fun e!4475373 () Bool)

(assert (=> b!7505785 (=> res!3011270 e!4475373)))

(declare-fun testedPSize!164 () Int)

(declare-fun totalInputSize!226 () Int)

(assert (=> b!7505785 (= res!3011270 (= testedPSize!164 totalInputSize!226))))

(declare-fun b!7505786 () Bool)

(declare-fun e!4475379 () Bool)

(declare-fun tp!2178787 () Bool)

(assert (=> b!7505786 (= e!4475379 tp!2178787)))

(declare-fun b!7505787 () Bool)

(declare-fun e!4475375 () Bool)

(assert (=> b!7505787 (= e!4475375 e!4475373)))

(declare-fun res!3011272 () Bool)

(assert (=> b!7505787 (=> res!3011272 e!4475373)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!19705 0))(
  ( (ElementMatch!19705 (c!1385680 C!39736)) (Concat!28550 (regOne!39922 Regex!19705) (regTwo!39922 Regex!19705)) (EmptyExpr!19705) (Star!19705 (reg!20034 Regex!19705)) (EmptyLang!19705) (Union!19705 (regOne!39923 Regex!19705) (regTwo!39923 Regex!19705)) )
))
(declare-datatypes ((List!72508 0))(
  ( (Nil!72384) (Cons!72384 (h!78832 Regex!19705) (t!387077 List!72508)) )
))
(declare-datatypes ((Context!16914 0))(
  ( (Context!16915 (exprs!8957 List!72508)) )
))
(declare-fun z!3716 () (InoxSet Context!16914))

(declare-fun lostCauseZipper!1393 ((InoxSet Context!16914)) Bool)

(assert (=> b!7505787 (= res!3011272 (lostCauseZipper!1393 z!3716))))

(declare-fun testedSuffix!164 () List!72507)

(declare-fun lt!2634782 () List!72507)

(assert (=> b!7505787 (and (= testedSuffix!164 lt!2634782) (= lt!2634782 testedSuffix!164))))

(declare-fun testedP!204 () List!72507)

(declare-fun lt!2634783 () Unit!166372)

(declare-fun lemmaSamePrefixThenSameSuffix!2798 (List!72507 List!72507 List!72507 List!72507 List!72507) Unit!166372)

(assert (=> b!7505787 (= lt!2634783 (lemmaSamePrefixThenSameSuffix!2798 testedP!204 testedSuffix!164 testedP!204 lt!2634782 totalInput!779))))

(declare-fun getSuffix!3499 (List!72507 List!72507) List!72507)

(assert (=> b!7505787 (= lt!2634782 (getSuffix!3499 totalInput!779 testedP!204))))

(declare-fun b!7505788 () Bool)

(declare-fun e!4475378 () Bool)

(assert (=> b!7505788 (= e!4475378 (not e!4475375))))

(declare-fun res!3011266 () Bool)

(assert (=> b!7505788 (=> res!3011266 e!4475375)))

(assert (=> b!7505788 (= res!3011266 (not (isPrefix!5999 testedP!204 totalInput!779)))))

(declare-fun lt!2634786 () List!72507)

(assert (=> b!7505788 (isPrefix!5999 testedP!204 lt!2634786)))

(declare-fun lt!2634784 () Unit!166372)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3712 (List!72507 List!72507) Unit!166372)

(assert (=> b!7505788 (= lt!2634784 (lemmaConcatTwoListThenFirstIsPrefix!3712 testedP!204 testedSuffix!164))))

(declare-fun b!7505789 () Bool)

(declare-fun e!4475374 () Bool)

(declare-fun tp!2178785 () Bool)

(assert (=> b!7505789 (= e!4475374 (and tp_is_empty!49751 tp!2178785))))

(declare-fun setIsEmpty!57000 () Bool)

(declare-fun setRes!57000 () Bool)

(assert (=> setIsEmpty!57000 setRes!57000))

(declare-fun b!7505790 () Bool)

(declare-fun e!4475377 () Bool)

(assert (=> b!7505790 (= e!4475377 e!4475378)))

(declare-fun res!3011267 () Bool)

(assert (=> b!7505790 (=> (not res!3011267) (not e!4475378))))

(assert (=> b!7505790 (= res!3011267 (= totalInputSize!226 lt!2634781))))

(declare-fun size!42276 (List!72507) Int)

(assert (=> b!7505790 (= lt!2634781 (size!42276 totalInput!779))))

(declare-fun b!7505791 () Bool)

(declare-fun e!4475380 () Bool)

(declare-fun tp!2178784 () Bool)

(assert (=> b!7505791 (= e!4475380 (and tp_is_empty!49751 tp!2178784))))

(declare-fun b!7505792 () Bool)

(assert (=> b!7505792 (= e!4475373 e!4475376)))

(declare-fun res!3011269 () Bool)

(assert (=> b!7505792 (=> res!3011269 e!4475376)))

(assert (=> b!7505792 (= res!3011269 (not (= lt!2634785 lt!2634781)))))

(assert (=> b!7505792 (<= lt!2634785 lt!2634781)))

(declare-fun lt!2634787 () Unit!166372)

(declare-fun lemmaIsPrefixThenSmallerEqSize!986 (List!72507 List!72507) Unit!166372)

(assert (=> b!7505792 (= lt!2634787 (lemmaIsPrefixThenSmallerEqSize!986 testedP!204 totalInput!779))))

(declare-fun b!7505793 () Bool)

(declare-fun e!4475371 () Bool)

(assert (=> b!7505793 (= e!4475371 e!4475377)))

(declare-fun res!3011271 () Bool)

(assert (=> b!7505793 (=> (not res!3011271) (not e!4475377))))

(assert (=> b!7505793 (= res!3011271 (= testedPSize!164 lt!2634785))))

(assert (=> b!7505793 (= lt!2634785 (size!42276 testedP!204))))

(declare-fun setElem!57000 () Context!16914)

(declare-fun tp!2178783 () Bool)

(declare-fun setNonEmpty!57000 () Bool)

(declare-fun inv!92492 (Context!16914) Bool)

(assert (=> setNonEmpty!57000 (= setRes!57000 (and tp!2178783 (inv!92492 setElem!57000) e!4475379))))

(declare-fun setRest!57000 () (InoxSet Context!16914))

(assert (=> setNonEmpty!57000 (= z!3716 ((_ map or) (store ((as const (Array Context!16914 Bool)) false) setElem!57000 true) setRest!57000))))

(declare-fun res!3011268 () Bool)

(assert (=> start!726550 (=> (not res!3011268) (not e!4475371))))

(assert (=> start!726550 (= res!3011268 (= lt!2634786 totalInput!779))))

(declare-fun ++!17334 (List!72507 List!72507) List!72507)

(assert (=> start!726550 (= lt!2634786 (++!17334 testedP!204 testedSuffix!164))))

(assert (=> start!726550 e!4475371))

(assert (=> start!726550 e!4475380))

(assert (=> start!726550 true))

(assert (=> start!726550 e!4475372))

(assert (=> start!726550 e!4475374))

(declare-fun condSetEmpty!57000 () Bool)

(assert (=> start!726550 (= condSetEmpty!57000 (= z!3716 ((as const (Array Context!16914 Bool)) false)))))

(assert (=> start!726550 setRes!57000))

(assert (= (and start!726550 res!3011268) b!7505793))

(assert (= (and b!7505793 res!3011271) b!7505790))

(assert (= (and b!7505790 res!3011267) b!7505788))

(assert (= (and b!7505788 (not res!3011266)) b!7505787))

(assert (= (and b!7505787 (not res!3011272)) b!7505785))

(assert (= (and b!7505785 (not res!3011270)) b!7505792))

(assert (= (and b!7505792 (not res!3011269)) b!7505783))

(get-info :version)

(assert (= (and start!726550 ((_ is Cons!72383) testedSuffix!164)) b!7505791))

(assert (= (and start!726550 ((_ is Cons!72383) totalInput!779)) b!7505784))

(assert (= (and start!726550 ((_ is Cons!72383) testedP!204)) b!7505789))

(assert (= (and start!726550 condSetEmpty!57000) setIsEmpty!57000))

(assert (= (and start!726550 (not condSetEmpty!57000)) setNonEmpty!57000))

(assert (= setNonEmpty!57000 b!7505786))

(declare-fun m!8088000 () Bool)

(assert (=> b!7505783 m!8088000))

(declare-fun m!8088002 () Bool)

(assert (=> b!7505783 m!8088002))

(declare-fun m!8088004 () Bool)

(assert (=> b!7505788 m!8088004))

(declare-fun m!8088006 () Bool)

(assert (=> b!7505788 m!8088006))

(declare-fun m!8088008 () Bool)

(assert (=> b!7505788 m!8088008))

(declare-fun m!8088010 () Bool)

(assert (=> b!7505792 m!8088010))

(declare-fun m!8088012 () Bool)

(assert (=> b!7505793 m!8088012))

(declare-fun m!8088014 () Bool)

(assert (=> setNonEmpty!57000 m!8088014))

(declare-fun m!8088016 () Bool)

(assert (=> start!726550 m!8088016))

(declare-fun m!8088018 () Bool)

(assert (=> b!7505787 m!8088018))

(declare-fun m!8088020 () Bool)

(assert (=> b!7505787 m!8088020))

(declare-fun m!8088022 () Bool)

(assert (=> b!7505787 m!8088022))

(declare-fun m!8088024 () Bool)

(assert (=> b!7505790 m!8088024))

(check-sat (not b!7505792) (not setNonEmpty!57000) (not b!7505791) (not start!726550) (not b!7505793) (not b!7505790) (not b!7505789) (not b!7505783) (not b!7505787) (not b!7505784) (not b!7505786) tp_is_empty!49751 (not b!7505788))
(check-sat)
