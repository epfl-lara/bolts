; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!726450 () Bool)

(assert start!726450)

(declare-fun b!7505266 () Bool)

(declare-fun e!4475009 () Bool)

(declare-fun tp!2178629 () Bool)

(assert (=> b!7505266 (= e!4475009 tp!2178629)))

(declare-fun b!7505267 () Bool)

(declare-fun res!3011006 () Bool)

(declare-fun e!4475010 () Bool)

(assert (=> b!7505267 (=> res!3011006 e!4475010)))

(declare-fun testedPSize!164 () Int)

(declare-fun totalInputSize!226 () Int)

(assert (=> b!7505267 (= res!3011006 (not (= testedPSize!164 totalInputSize!226)))))

(declare-fun res!3011009 () Bool)

(declare-fun e!4475012 () Bool)

(assert (=> start!726450 (=> (not res!3011009) (not e!4475012))))

(declare-datatypes ((C!39724 0))(
  ( (C!39725 (val!30260 Int)) )
))
(declare-datatypes ((List!72491 0))(
  ( (Nil!72367) (Cons!72367 (h!78815 C!39724) (t!387060 List!72491)) )
))
(declare-fun lt!2634452 () List!72491)

(declare-fun totalInput!779 () List!72491)

(assert (=> start!726450 (= res!3011009 (= lt!2634452 totalInput!779))))

(declare-fun testedP!204 () List!72491)

(declare-fun testedSuffix!164 () List!72491)

(declare-fun ++!17328 (List!72491 List!72491) List!72491)

(assert (=> start!726450 (= lt!2634452 (++!17328 testedP!204 testedSuffix!164))))

(assert (=> start!726450 e!4475012))

(declare-fun e!4475008 () Bool)

(assert (=> start!726450 e!4475008))

(assert (=> start!726450 true))

(declare-fun e!4475004 () Bool)

(assert (=> start!726450 e!4475004))

(declare-fun e!4475011 () Bool)

(assert (=> start!726450 e!4475011))

(declare-fun condSetEmpty!56970 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!19699 0))(
  ( (ElementMatch!19699 (c!1385576 C!39724)) (Concat!28544 (regOne!39910 Regex!19699) (regTwo!39910 Regex!19699)) (EmptyExpr!19699) (Star!19699 (reg!20028 Regex!19699)) (EmptyLang!19699) (Union!19699 (regOne!39911 Regex!19699) (regTwo!39911 Regex!19699)) )
))
(declare-datatypes ((List!72492 0))(
  ( (Nil!72368) (Cons!72368 (h!78816 Regex!19699) (t!387061 List!72492)) )
))
(declare-datatypes ((Context!16902 0))(
  ( (Context!16903 (exprs!8951 List!72492)) )
))
(declare-fun z!3716 () (InoxSet Context!16902))

(assert (=> start!726450 (= condSetEmpty!56970 (= z!3716 ((as const (Array Context!16902 Bool)) false)))))

(declare-fun setRes!56970 () Bool)

(assert (=> start!726450 setRes!56970))

(declare-fun b!7505268 () Bool)

(declare-fun e!4475006 () Bool)

(declare-fun e!4475005 () Bool)

(assert (=> b!7505268 (= e!4475006 e!4475005)))

(declare-fun res!3011007 () Bool)

(assert (=> b!7505268 (=> (not res!3011007) (not e!4475005))))

(declare-fun lt!2634449 () Int)

(assert (=> b!7505268 (= res!3011007 (= totalInputSize!226 lt!2634449))))

(declare-fun size!42270 (List!72491) Int)

(assert (=> b!7505268 (= lt!2634449 (size!42270 totalInput!779))))

(declare-fun b!7505269 () Bool)

(declare-fun e!4475007 () Bool)

(assert (=> b!7505269 (= e!4475005 (not e!4475007))))

(declare-fun res!3011005 () Bool)

(assert (=> b!7505269 (=> res!3011005 e!4475007)))

(declare-fun isPrefix!5993 (List!72491 List!72491) Bool)

(assert (=> b!7505269 (= res!3011005 (not (isPrefix!5993 testedP!204 totalInput!779)))))

(assert (=> b!7505269 (isPrefix!5993 testedP!204 lt!2634452)))

(declare-datatypes ((Unit!166352 0))(
  ( (Unit!166353) )
))
(declare-fun lt!2634450 () Unit!166352)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3706 (List!72491 List!72491) Unit!166352)

(assert (=> b!7505269 (= lt!2634450 (lemmaConcatTwoListThenFirstIsPrefix!3706 testedP!204 testedSuffix!164))))

(declare-fun b!7505270 () Bool)

(assert (=> b!7505270 (= e!4475007 e!4475010)))

(declare-fun res!3011010 () Bool)

(assert (=> b!7505270 (=> res!3011010 e!4475010)))

(declare-fun lostCauseZipper!1387 ((InoxSet Context!16902)) Bool)

(assert (=> b!7505270 (= res!3011010 (lostCauseZipper!1387 z!3716))))

(declare-fun lt!2634447 () List!72491)

(assert (=> b!7505270 (and (= testedSuffix!164 lt!2634447) (= lt!2634447 testedSuffix!164))))

(declare-fun lt!2634451 () Unit!166352)

(declare-fun lemmaSamePrefixThenSameSuffix!2792 (List!72491 List!72491 List!72491 List!72491 List!72491) Unit!166352)

(assert (=> b!7505270 (= lt!2634451 (lemmaSamePrefixThenSameSuffix!2792 testedP!204 testedSuffix!164 testedP!204 lt!2634447 totalInput!779))))

(declare-fun getSuffix!3493 (List!72491 List!72491) List!72491)

(assert (=> b!7505270 (= lt!2634447 (getSuffix!3493 totalInput!779 testedP!204))))

(declare-fun setElem!56970 () Context!16902)

(declare-fun setNonEmpty!56970 () Bool)

(declare-fun tp!2178628 () Bool)

(declare-fun inv!92477 (Context!16902) Bool)

(assert (=> setNonEmpty!56970 (= setRes!56970 (and tp!2178628 (inv!92477 setElem!56970) e!4475009))))

(declare-fun setRest!56970 () (InoxSet Context!16902))

(assert (=> setNonEmpty!56970 (= z!3716 ((_ map or) (store ((as const (Array Context!16902 Bool)) false) setElem!56970 true) setRest!56970))))

(declare-fun b!7505271 () Bool)

(declare-fun lt!2634448 () Int)

(assert (=> b!7505271 (= e!4475010 (= lt!2634449 lt!2634448))))

(assert (=> b!7505271 (isPrefix!5993 totalInput!779 totalInput!779)))

(declare-fun lt!2634446 () Unit!166352)

(declare-fun lemmaIsPrefixRefl!3832 (List!72491 List!72491) Unit!166352)

(assert (=> b!7505271 (= lt!2634446 (lemmaIsPrefixRefl!3832 totalInput!779 totalInput!779))))

(declare-fun b!7505272 () Bool)

(assert (=> b!7505272 (= e!4475012 e!4475006)))

(declare-fun res!3011008 () Bool)

(assert (=> b!7505272 (=> (not res!3011008) (not e!4475006))))

(assert (=> b!7505272 (= res!3011008 (= testedPSize!164 lt!2634448))))

(assert (=> b!7505272 (= lt!2634448 (size!42270 testedP!204))))

(declare-fun b!7505273 () Bool)

(declare-fun tp_is_empty!49739 () Bool)

(declare-fun tp!2178627 () Bool)

(assert (=> b!7505273 (= e!4475004 (and tp_is_empty!49739 tp!2178627))))

(declare-fun b!7505274 () Bool)

(declare-fun tp!2178625 () Bool)

(assert (=> b!7505274 (= e!4475008 (and tp_is_empty!49739 tp!2178625))))

(declare-fun b!7505275 () Bool)

(declare-fun tp!2178626 () Bool)

(assert (=> b!7505275 (= e!4475011 (and tp_is_empty!49739 tp!2178626))))

(declare-fun setIsEmpty!56970 () Bool)

(assert (=> setIsEmpty!56970 setRes!56970))

(assert (= (and start!726450 res!3011009) b!7505272))

(assert (= (and b!7505272 res!3011008) b!7505268))

(assert (= (and b!7505268 res!3011007) b!7505269))

(assert (= (and b!7505269 (not res!3011005)) b!7505270))

(assert (= (and b!7505270 (not res!3011010)) b!7505267))

(assert (= (and b!7505267 (not res!3011006)) b!7505271))

(get-info :version)

(assert (= (and start!726450 ((_ is Cons!72367) testedSuffix!164)) b!7505274))

(assert (= (and start!726450 ((_ is Cons!72367) totalInput!779)) b!7505273))

(assert (= (and start!726450 ((_ is Cons!72367) testedP!204)) b!7505275))

(assert (= (and start!726450 condSetEmpty!56970) setIsEmpty!56970))

(assert (= (and start!726450 (not condSetEmpty!56970)) setNonEmpty!56970))

(assert (= setNonEmpty!56970 b!7505266))

(declare-fun m!8087502 () Bool)

(assert (=> b!7505268 m!8087502))

(declare-fun m!8087504 () Bool)

(assert (=> setNonEmpty!56970 m!8087504))

(declare-fun m!8087506 () Bool)

(assert (=> b!7505272 m!8087506))

(declare-fun m!8087508 () Bool)

(assert (=> b!7505270 m!8087508))

(declare-fun m!8087510 () Bool)

(assert (=> b!7505270 m!8087510))

(declare-fun m!8087512 () Bool)

(assert (=> b!7505270 m!8087512))

(declare-fun m!8087514 () Bool)

(assert (=> b!7505269 m!8087514))

(declare-fun m!8087516 () Bool)

(assert (=> b!7505269 m!8087516))

(declare-fun m!8087518 () Bool)

(assert (=> b!7505269 m!8087518))

(declare-fun m!8087520 () Bool)

(assert (=> b!7505271 m!8087520))

(declare-fun m!8087522 () Bool)

(assert (=> b!7505271 m!8087522))

(declare-fun m!8087524 () Bool)

(assert (=> start!726450 m!8087524))

(check-sat (not start!726450) (not b!7505272) (not b!7505269) tp_is_empty!49739 (not b!7505275) (not setNonEmpty!56970) (not b!7505273) (not b!7505271) (not b!7505274) (not b!7505268) (not b!7505270) (not b!7505266))
(check-sat)
