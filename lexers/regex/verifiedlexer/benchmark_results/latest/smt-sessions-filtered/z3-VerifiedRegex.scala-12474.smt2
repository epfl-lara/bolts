; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!694808 () Bool)

(assert start!694808)

(declare-fun b!7132197 () Bool)

(declare-fun e!4286227 () Bool)

(declare-fun tp_is_empty!45763 () Bool)

(declare-fun tp!1965685 () Bool)

(assert (=> b!7132197 (= e!4286227 (and tp_is_empty!45763 tp!1965685))))

(declare-fun b!7132198 () Bool)

(declare-fun e!4286230 () Bool)

(assert (=> b!7132198 (= e!4286230 false)))

(declare-datatypes ((C!36432 0))(
  ( (C!36433 (val!28142 Int)) )
))
(declare-datatypes ((List!69216 0))(
  ( (Nil!69092) (Cons!69092 (h!75540 C!36432) (t!383193 List!69216)) )
))
(declare-fun lt!2564954 () List!69216)

(declare-fun s1!1678 () List!69216)

(declare-fun s2!1615 () List!69216)

(declare-fun ++!16219 (List!69216 List!69216) List!69216)

(assert (=> b!7132198 (= lt!2564954 (++!16219 s1!1678 s2!1615))))

(declare-fun b!7132199 () Bool)

(declare-fun res!2910139 () Bool)

(assert (=> b!7132199 (=> (not res!2910139) (not e!4286230))))

(declare-fun e!4286233 () Bool)

(assert (=> b!7132199 (= res!2910139 e!4286233)))

(declare-fun res!2910140 () Bool)

(assert (=> b!7132199 (=> res!2910140 e!4286233)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!18081 0))(
  ( (ElementMatch!18081 (c!1330283 C!36432)) (Concat!26926 (regOne!36674 Regex!18081) (regTwo!36674 Regex!18081)) (EmptyExpr!18081) (Star!18081 (reg!18410 Regex!18081)) (EmptyLang!18081) (Union!18081 (regOne!36675 Regex!18081) (regTwo!36675 Regex!18081)) )
))
(declare-datatypes ((List!69217 0))(
  ( (Nil!69093) (Cons!69093 (h!75541 Regex!18081) (t!383194 List!69217)) )
))
(declare-datatypes ((Context!14150 0))(
  ( (Context!14151 (exprs!7575 List!69217)) )
))
(declare-fun z1!538 () (InoxSet Context!14150))

(declare-fun matchZipper!3337 ((InoxSet Context!14150) List!69216) Bool)

(assert (=> b!7132199 (= res!2910140 (not (matchZipper!3337 z1!538 s1!1678)))))

(declare-fun b!7132200 () Bool)

(declare-fun e!4286228 () Bool)

(declare-fun tp!1965679 () Bool)

(assert (=> b!7132200 (= e!4286228 (and tp_is_empty!45763 tp!1965679))))

(declare-fun res!2910141 () Bool)

(assert (=> start!694808 (=> (not res!2910141) (not e!4286230))))

(declare-fun s!7358 () List!69216)

(assert (=> start!694808 (= res!2910141 (= (++!16219 s1!1678 s2!1615) s!7358))))

(assert (=> start!694808 e!4286230))

(declare-fun condSetEmpty!52151 () Bool)

(declare-fun z2!457 () (InoxSet Context!14150))

(assert (=> start!694808 (= condSetEmpty!52151 (= z2!457 ((as const (Array Context!14150 Bool)) false)))))

(declare-fun setRes!52150 () Bool)

(assert (=> start!694808 setRes!52150))

(declare-fun e!4286229 () Bool)

(assert (=> start!694808 e!4286229))

(declare-fun condSetEmpty!52150 () Bool)

(assert (=> start!694808 (= condSetEmpty!52150 (= z1!538 ((as const (Array Context!14150 Bool)) false)))))

(declare-fun setRes!52151 () Bool)

(assert (=> start!694808 setRes!52151))

(assert (=> start!694808 e!4286227))

(assert (=> start!694808 e!4286228))

(declare-fun setElem!52150 () Context!14150)

(declare-fun e!4286232 () Bool)

(declare-fun setNonEmpty!52150 () Bool)

(declare-fun tp!1965684 () Bool)

(declare-fun inv!88230 (Context!14150) Bool)

(assert (=> setNonEmpty!52150 (= setRes!52150 (and tp!1965684 (inv!88230 setElem!52150) e!4286232))))

(declare-fun setRest!52150 () (InoxSet Context!14150))

(assert (=> setNonEmpty!52150 (= z2!457 ((_ map or) (store ((as const (Array Context!14150 Bool)) false) setElem!52150 true) setRest!52150))))

(declare-fun b!7132201 () Bool)

(declare-fun tp!1965682 () Bool)

(assert (=> b!7132201 (= e!4286229 (and tp_is_empty!45763 tp!1965682))))

(declare-fun setIsEmpty!52150 () Bool)

(assert (=> setIsEmpty!52150 setRes!52150))

(declare-fun b!7132202 () Bool)

(declare-fun tp!1965680 () Bool)

(assert (=> b!7132202 (= e!4286232 tp!1965680)))

(declare-fun setNonEmpty!52151 () Bool)

(declare-fun tp!1965683 () Bool)

(declare-fun setElem!52151 () Context!14150)

(declare-fun e!4286231 () Bool)

(assert (=> setNonEmpty!52151 (= setRes!52151 (and tp!1965683 (inv!88230 setElem!52151) e!4286231))))

(declare-fun setRest!52151 () (InoxSet Context!14150))

(assert (=> setNonEmpty!52151 (= z1!538 ((_ map or) (store ((as const (Array Context!14150 Bool)) false) setElem!52151 true) setRest!52151))))

(declare-fun b!7132203 () Bool)

(assert (=> b!7132203 (= e!4286233 (not (matchZipper!3337 z2!457 s2!1615)))))

(declare-fun setIsEmpty!52151 () Bool)

(assert (=> setIsEmpty!52151 setRes!52151))

(declare-fun b!7132204 () Bool)

(declare-fun tp!1965681 () Bool)

(assert (=> b!7132204 (= e!4286231 tp!1965681)))

(declare-fun b!7132205 () Bool)

(declare-fun res!2910138 () Bool)

(assert (=> b!7132205 (=> (not res!2910138) (not e!4286230))))

(get-info :version)

(assert (=> b!7132205 (= res!2910138 (not ((_ is Nil!69092) s2!1615)))))

(assert (= (and start!694808 res!2910141) b!7132199))

(assert (= (and b!7132199 (not res!2910140)) b!7132203))

(assert (= (and b!7132199 res!2910139) b!7132205))

(assert (= (and b!7132205 res!2910138) b!7132198))

(assert (= (and start!694808 condSetEmpty!52151) setIsEmpty!52150))

(assert (= (and start!694808 (not condSetEmpty!52151)) setNonEmpty!52150))

(assert (= setNonEmpty!52150 b!7132202))

(assert (= (and start!694808 ((_ is Cons!69092) s2!1615)) b!7132201))

(assert (= (and start!694808 condSetEmpty!52150) setIsEmpty!52151))

(assert (= (and start!694808 (not condSetEmpty!52150)) setNonEmpty!52151))

(assert (= setNonEmpty!52151 b!7132204))

(assert (= (and start!694808 ((_ is Cons!69092) s1!1678)) b!7132197))

(assert (= (and start!694808 ((_ is Cons!69092) s!7358)) b!7132200))

(declare-fun m!7849474 () Bool)

(assert (=> setNonEmpty!52151 m!7849474))

(declare-fun m!7849476 () Bool)

(assert (=> setNonEmpty!52150 m!7849476))

(declare-fun m!7849478 () Bool)

(assert (=> b!7132199 m!7849478))

(declare-fun m!7849480 () Bool)

(assert (=> start!694808 m!7849480))

(assert (=> b!7132198 m!7849480))

(declare-fun m!7849482 () Bool)

(assert (=> b!7132203 m!7849482))

(check-sat (not b!7132199) (not setNonEmpty!52150) (not b!7132198) (not b!7132203) (not b!7132201) (not setNonEmpty!52151) (not b!7132204) tp_is_empty!45763 (not b!7132200) (not b!7132197) (not start!694808) (not b!7132202))
(check-sat)
