; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!726358 () Bool)

(assert start!726358)

(declare-fun b!7504560 () Bool)

(declare-fun res!3010700 () Bool)

(declare-fun e!4474502 () Bool)

(assert (=> b!7504560 (=> (not res!3010700) (not e!4474502))))

(declare-fun testedPSize!164 () Int)

(declare-datatypes ((C!39696 0))(
  ( (C!39697 (val!30246 Int)) )
))
(declare-datatypes ((List!72469 0))(
  ( (Nil!72345) (Cons!72345 (h!78793 C!39696) (t!387038 List!72469)) )
))
(declare-fun testedP!204 () List!72469)

(declare-fun size!42256 (List!72469) Int)

(assert (=> b!7504560 (= res!3010700 (= testedPSize!164 (size!42256 testedP!204)))))

(declare-fun b!7504561 () Bool)

(declare-fun res!3010699 () Bool)

(assert (=> b!7504561 (=> (not res!3010699) (not e!4474502))))

(declare-fun totalInputSize!226 () Int)

(declare-fun totalInput!779 () List!72469)

(assert (=> b!7504561 (= res!3010699 (= totalInputSize!226 (size!42256 totalInput!779)))))

(declare-fun b!7504562 () Bool)

(declare-fun e!4474503 () Bool)

(declare-fun tp_is_empty!49711 () Bool)

(declare-fun tp!2178407 () Bool)

(assert (=> b!7504562 (= e!4474503 (and tp_is_empty!49711 tp!2178407))))

(declare-fun b!7504563 () Bool)

(declare-fun e!4474498 () Bool)

(declare-fun e!4474501 () Bool)

(assert (=> b!7504563 (= e!4474498 e!4474501)))

(declare-fun res!3010697 () Bool)

(assert (=> b!7504563 (=> res!3010697 e!4474501)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!19693 0))(
  ( (ElementMatch!19693 (c!1385462 C!39696)) (Concat!28538 (regOne!39898 Regex!19693) (regTwo!39898 Regex!19693)) (EmptyExpr!19693) (Star!19693 (reg!20022 Regex!19693)) (EmptyLang!19693) (Union!19693 (regOne!39899 Regex!19693) (regTwo!39899 Regex!19693)) )
))
(declare-datatypes ((List!72470 0))(
  ( (Nil!72346) (Cons!72346 (h!78794 Regex!19693) (t!387039 List!72470)) )
))
(declare-datatypes ((Context!16890 0))(
  ( (Context!16891 (exprs!8945 List!72470)) )
))
(declare-fun z!3716 () (InoxSet Context!16890))

(declare-fun lostCauseZipper!1381 ((InoxSet Context!16890)) Bool)

(assert (=> b!7504563 (= res!3010697 (lostCauseZipper!1381 z!3716))))

(declare-fun testedSuffix!164 () List!72469)

(declare-fun lt!2634098 () List!72469)

(assert (=> b!7504563 (and (= testedSuffix!164 lt!2634098) (= lt!2634098 testedSuffix!164))))

(declare-datatypes ((Unit!166320 0))(
  ( (Unit!166321) )
))
(declare-fun lt!2634099 () Unit!166320)

(declare-fun lemmaSamePrefixThenSameSuffix!2784 (List!72469 List!72469 List!72469 List!72469 List!72469) Unit!166320)

(assert (=> b!7504563 (= lt!2634099 (lemmaSamePrefixThenSameSuffix!2784 testedP!204 testedSuffix!164 testedP!204 lt!2634098 totalInput!779))))

(declare-fun getSuffix!3481 (List!72469 List!72469) List!72469)

(assert (=> b!7504563 (= lt!2634098 (getSuffix!3481 totalInput!779 testedP!204))))

(declare-fun res!3010696 () Bool)

(assert (=> start!726358 (=> (not res!3010696) (not e!4474502))))

(declare-fun lt!2634097 () List!72469)

(assert (=> start!726358 (= res!3010696 (= lt!2634097 totalInput!779))))

(declare-fun ++!17314 (List!72469 List!72469) List!72469)

(assert (=> start!726358 (= lt!2634097 (++!17314 testedP!204 testedSuffix!164))))

(assert (=> start!726358 e!4474502))

(assert (=> start!726358 e!4474503))

(assert (=> start!726358 true))

(declare-fun e!4474499 () Bool)

(assert (=> start!726358 e!4474499))

(declare-fun e!4474500 () Bool)

(assert (=> start!726358 e!4474500))

(declare-fun condSetEmpty!56946 () Bool)

(assert (=> start!726358 (= condSetEmpty!56946 (= z!3716 ((as const (Array Context!16890 Bool)) false)))))

(declare-fun setRes!56946 () Bool)

(assert (=> start!726358 setRes!56946))

(declare-fun b!7504564 () Bool)

(declare-fun res!3010698 () Bool)

(assert (=> b!7504564 (=> res!3010698 e!4474501)))

(assert (=> b!7504564 (= res!3010698 (not (= testedPSize!164 totalInputSize!226)))))

(declare-fun b!7504565 () Bool)

(assert (=> b!7504565 (= e!4474501 (= testedP!204 totalInput!779))))

(assert (=> b!7504565 (= totalInput!779 testedP!204)))

(declare-fun lt!2634101 () Unit!166320)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1482 (List!72469 List!72469 List!72469) Unit!166320)

(assert (=> b!7504565 (= lt!2634101 (lemmaIsPrefixSameLengthThenSameList!1482 totalInput!779 testedP!204 totalInput!779))))

(declare-fun isPrefix!5981 (List!72469 List!72469) Bool)

(assert (=> b!7504565 (isPrefix!5981 totalInput!779 totalInput!779)))

(declare-fun lt!2634102 () Unit!166320)

(declare-fun lemmaIsPrefixRefl!3828 (List!72469 List!72469) Unit!166320)

(assert (=> b!7504565 (= lt!2634102 (lemmaIsPrefixRefl!3828 totalInput!779 totalInput!779))))

(declare-fun b!7504566 () Bool)

(declare-fun tp!2178405 () Bool)

(assert (=> b!7504566 (= e!4474500 (and tp_is_empty!49711 tp!2178405))))

(declare-fun b!7504567 () Bool)

(declare-fun e!4474504 () Bool)

(declare-fun tp!2178406 () Bool)

(assert (=> b!7504567 (= e!4474504 tp!2178406)))

(declare-fun b!7504568 () Bool)

(declare-fun tp!2178404 () Bool)

(assert (=> b!7504568 (= e!4474499 (and tp_is_empty!49711 tp!2178404))))

(declare-fun b!7504569 () Bool)

(assert (=> b!7504569 (= e!4474502 (not e!4474498))))

(declare-fun res!3010695 () Bool)

(assert (=> b!7504569 (=> res!3010695 e!4474498)))

(assert (=> b!7504569 (= res!3010695 (not (isPrefix!5981 testedP!204 totalInput!779)))))

(assert (=> b!7504569 (isPrefix!5981 testedP!204 lt!2634097)))

(declare-fun lt!2634100 () Unit!166320)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3694 (List!72469 List!72469) Unit!166320)

(assert (=> b!7504569 (= lt!2634100 (lemmaConcatTwoListThenFirstIsPrefix!3694 testedP!204 testedSuffix!164))))

(declare-fun tp!2178403 () Bool)

(declare-fun setNonEmpty!56946 () Bool)

(declare-fun setElem!56946 () Context!16890)

(declare-fun inv!92450 (Context!16890) Bool)

(assert (=> setNonEmpty!56946 (= setRes!56946 (and tp!2178403 (inv!92450 setElem!56946) e!4474504))))

(declare-fun setRest!56946 () (InoxSet Context!16890))

(assert (=> setNonEmpty!56946 (= z!3716 ((_ map or) (store ((as const (Array Context!16890 Bool)) false) setElem!56946 true) setRest!56946))))

(declare-fun setIsEmpty!56946 () Bool)

(assert (=> setIsEmpty!56946 setRes!56946))

(assert (= (and start!726358 res!3010696) b!7504560))

(assert (= (and b!7504560 res!3010700) b!7504561))

(assert (= (and b!7504561 res!3010699) b!7504569))

(assert (= (and b!7504569 (not res!3010695)) b!7504563))

(assert (= (and b!7504563 (not res!3010697)) b!7504564))

(assert (= (and b!7504564 (not res!3010698)) b!7504565))

(get-info :version)

(assert (= (and start!726358 ((_ is Cons!72345) testedSuffix!164)) b!7504562))

(assert (= (and start!726358 ((_ is Cons!72345) totalInput!779)) b!7504568))

(assert (= (and start!726358 ((_ is Cons!72345) testedP!204)) b!7504566))

(assert (= (and start!726358 condSetEmpty!56946) setIsEmpty!56946))

(assert (= (and start!726358 (not condSetEmpty!56946)) setNonEmpty!56946))

(assert (= setNonEmpty!56946 b!7504567))

(declare-fun m!8086908 () Bool)

(assert (=> b!7504563 m!8086908))

(declare-fun m!8086910 () Bool)

(assert (=> b!7504563 m!8086910))

(declare-fun m!8086912 () Bool)

(assert (=> b!7504563 m!8086912))

(declare-fun m!8086914 () Bool)

(assert (=> setNonEmpty!56946 m!8086914))

(declare-fun m!8086916 () Bool)

(assert (=> start!726358 m!8086916))

(declare-fun m!8086918 () Bool)

(assert (=> b!7504565 m!8086918))

(declare-fun m!8086920 () Bool)

(assert (=> b!7504565 m!8086920))

(declare-fun m!8086922 () Bool)

(assert (=> b!7504565 m!8086922))

(declare-fun m!8086924 () Bool)

(assert (=> b!7504560 m!8086924))

(declare-fun m!8086926 () Bool)

(assert (=> b!7504561 m!8086926))

(declare-fun m!8086928 () Bool)

(assert (=> b!7504569 m!8086928))

(declare-fun m!8086930 () Bool)

(assert (=> b!7504569 m!8086930))

(declare-fun m!8086932 () Bool)

(assert (=> b!7504569 m!8086932))

(check-sat (not b!7504565) (not b!7504569) (not b!7504566) (not b!7504563) (not b!7504562) (not start!726358) (not b!7504561) (not b!7504560) (not setNonEmpty!56946) (not b!7504567) tp_is_empty!49711 (not b!7504568))
(check-sat)
