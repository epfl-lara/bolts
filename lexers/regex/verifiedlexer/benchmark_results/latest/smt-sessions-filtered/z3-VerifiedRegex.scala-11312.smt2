; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!596632 () Bool)

(assert start!596632)

(declare-fun e!3573524 () Bool)

(declare-fun b!5823112 () Bool)

(declare-datatypes ((C!32012 0))(
  ( (C!32013 (val!25708 Int)) )
))
(declare-datatypes ((Regex!15871 0))(
  ( (ElementMatch!15871 (c!1031913 C!32012)) (Concat!24716 (regOne!32254 Regex!15871) (regTwo!32254 Regex!15871)) (EmptyExpr!15871) (Star!15871 (reg!16200 Regex!15871)) (EmptyLang!15871) (Union!15871 (regOne!32255 Regex!15871) (regTwo!32255 Regex!15871)) )
))
(declare-datatypes ((List!63912 0))(
  ( (Nil!63788) (Cons!63788 (h!70236 Regex!15871) (t!377267 List!63912)) )
))
(declare-datatypes ((Context!10510 0))(
  ( (Context!10511 (exprs!5755 List!63912)) )
))
(declare-datatypes ((List!63913 0))(
  ( (Nil!63789) (Cons!63789 (h!70237 Context!10510) (t!377268 List!63913)) )
))
(declare-fun zl!343 () List!63913)

(declare-fun e!3573531 () Bool)

(declare-fun tp!1607360 () Bool)

(declare-fun inv!82924 (Context!10510) Bool)

(assert (=> b!5823112 (= e!3573524 (and (inv!82924 (h!70237 zl!343)) e!3573531 tp!1607360))))

(declare-fun b!5823113 () Bool)

(declare-fun res!2455240 () Bool)

(declare-fun e!3573530 () Bool)

(assert (=> b!5823113 (=> res!2455240 e!3573530)))

(declare-fun r!7292 () Regex!15871)

(declare-fun generalisedUnion!1715 (List!63912) Regex!15871)

(declare-fun unfocusZipperList!1292 (List!63913) List!63912)

(assert (=> b!5823113 (= res!2455240 (not (= r!7292 (generalisedUnion!1715 (unfocusZipperList!1292 zl!343)))))))

(declare-fun b!5823114 () Bool)

(declare-fun e!3573526 () Bool)

(declare-fun e!3573529 () Bool)

(assert (=> b!5823114 (= e!3573526 e!3573529)))

(declare-fun res!2455234 () Bool)

(assert (=> b!5823114 (=> (not res!2455234) (not e!3573529))))

(declare-fun lt!2302431 () List!63913)

(assert (=> b!5823114 (= res!2455234 (= lt!2302431 zl!343))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!10510))

(declare-fun toList!9655 ((InoxSet Context!10510)) List!63913)

(assert (=> b!5823114 (= lt!2302431 (toList!9655 z!1189))))

(declare-fun setIsEmpty!39346 () Bool)

(declare-fun setRes!39346 () Bool)

(assert (=> setIsEmpty!39346 setRes!39346))

(declare-fun b!5823115 () Bool)

(declare-fun e!3573525 () Bool)

(declare-fun tp_is_empty!40995 () Bool)

(declare-fun tp!1607359 () Bool)

(assert (=> b!5823115 (= e!3573525 (and tp_is_empty!40995 tp!1607359))))

(declare-fun b!5823116 () Bool)

(assert (=> b!5823116 (= e!3573529 (not e!3573530))))

(declare-fun res!2455241 () Bool)

(assert (=> b!5823116 (=> res!2455241 e!3573530)))

(get-info :version)

(assert (=> b!5823116 (= res!2455241 (not ((_ is Cons!63789) zl!343)))))

(declare-datatypes ((List!63914 0))(
  ( (Nil!63790) (Cons!63790 (h!70238 C!32012) (t!377269 List!63914)) )
))
(declare-fun s!2326 () List!63914)

(declare-fun matchR!8054 (Regex!15871 List!63914) Bool)

(declare-fun matchRSpec!2972 (Regex!15871 List!63914) Bool)

(assert (=> b!5823116 (= (matchR!8054 r!7292 s!2326) (matchRSpec!2972 r!7292 s!2326))))

(declare-datatypes ((Unit!157013 0))(
  ( (Unit!157014) )
))
(declare-fun lt!2302432 () Unit!157013)

(declare-fun mainMatchTheorem!2972 (Regex!15871 List!63914) Unit!157013)

(assert (=> b!5823116 (= lt!2302432 (mainMatchTheorem!2972 r!7292 s!2326))))

(declare-fun b!5823117 () Bool)

(declare-fun tp!1607357 () Bool)

(assert (=> b!5823117 (= e!3573531 tp!1607357)))

(declare-fun b!5823119 () Bool)

(declare-fun e!3573527 () Bool)

(assert (=> b!5823119 (= e!3573527 tp_is_empty!40995)))

(declare-fun b!5823120 () Bool)

(declare-fun tp!1607361 () Bool)

(assert (=> b!5823120 (= e!3573527 tp!1607361)))

(declare-fun b!5823121 () Bool)

(declare-fun tp!1607358 () Bool)

(declare-fun tp!1607362 () Bool)

(assert (=> b!5823121 (= e!3573527 (and tp!1607358 tp!1607362))))

(declare-fun b!5823122 () Bool)

(declare-fun e!3573528 () Bool)

(declare-fun tp!1607356 () Bool)

(assert (=> b!5823122 (= e!3573528 tp!1607356)))

(declare-fun b!5823123 () Bool)

(declare-fun unfocusZipper!1613 (List!63913) Regex!15871)

(assert (=> b!5823123 (= e!3573530 (= (unfocusZipper!1613 lt!2302431) EmptyExpr!15871))))

(declare-fun tp!1607363 () Bool)

(declare-fun setNonEmpty!39346 () Bool)

(declare-fun setElem!39346 () Context!10510)

(assert (=> setNonEmpty!39346 (= setRes!39346 (and tp!1607363 (inv!82924 setElem!39346) e!3573528))))

(declare-fun setRest!39346 () (InoxSet Context!10510))

(assert (=> setNonEmpty!39346 (= z!1189 ((_ map or) (store ((as const (Array Context!10510 Bool)) false) setElem!39346 true) setRest!39346))))

(declare-fun b!5823124 () Bool)

(declare-fun res!2455242 () Bool)

(assert (=> b!5823124 (=> res!2455242 e!3573530)))

(assert (=> b!5823124 (= res!2455242 (not ((_ is Cons!63788) (exprs!5755 (h!70237 zl!343)))))))

(declare-fun b!5823125 () Bool)

(declare-fun res!2455235 () Bool)

(assert (=> b!5823125 (=> res!2455235 e!3573530)))

(declare-fun isEmpty!35659 (List!63913) Bool)

(assert (=> b!5823125 (= res!2455235 (not (isEmpty!35659 (t!377268 zl!343))))))

(declare-fun b!5823118 () Bool)

(declare-fun res!2455236 () Bool)

(assert (=> b!5823118 (=> res!2455236 e!3573530)))

(declare-fun generalisedConcat!1468 (List!63912) Regex!15871)

(assert (=> b!5823118 (= res!2455236 (not (= r!7292 (generalisedConcat!1468 (exprs!5755 (h!70237 zl!343))))))))

(declare-fun res!2455238 () Bool)

(assert (=> start!596632 (=> (not res!2455238) (not e!3573526))))

(declare-fun validRegex!7607 (Regex!15871) Bool)

(assert (=> start!596632 (= res!2455238 (validRegex!7607 r!7292))))

(assert (=> start!596632 e!3573526))

(assert (=> start!596632 e!3573527))

(assert (=> start!596632 e!3573525))

(declare-fun condSetEmpty!39346 () Bool)

(assert (=> start!596632 (= condSetEmpty!39346 (= z!1189 ((as const (Array Context!10510 Bool)) false)))))

(assert (=> start!596632 setRes!39346))

(assert (=> start!596632 e!3573524))

(declare-fun b!5823126 () Bool)

(declare-fun res!2455239 () Bool)

(assert (=> b!5823126 (=> res!2455239 e!3573530)))

(assert (=> b!5823126 (= res!2455239 (not ((_ is EmptyExpr!15871) r!7292)))))

(declare-fun b!5823127 () Bool)

(declare-fun res!2455237 () Bool)

(assert (=> b!5823127 (=> (not res!2455237) (not e!3573529))))

(assert (=> b!5823127 (= res!2455237 (= r!7292 (unfocusZipper!1613 zl!343)))))

(declare-fun b!5823128 () Bool)

(declare-fun tp!1607364 () Bool)

(declare-fun tp!1607355 () Bool)

(assert (=> b!5823128 (= e!3573527 (and tp!1607364 tp!1607355))))

(assert (= (and start!596632 res!2455238) b!5823114))

(assert (= (and b!5823114 res!2455234) b!5823127))

(assert (= (and b!5823127 res!2455237) b!5823116))

(assert (= (and b!5823116 (not res!2455241)) b!5823125))

(assert (= (and b!5823125 (not res!2455235)) b!5823118))

(assert (= (and b!5823118 (not res!2455236)) b!5823124))

(assert (= (and b!5823124 (not res!2455242)) b!5823113))

(assert (= (and b!5823113 (not res!2455240)) b!5823126))

(assert (= (and b!5823126 (not res!2455239)) b!5823123))

(assert (= (and start!596632 ((_ is ElementMatch!15871) r!7292)) b!5823119))

(assert (= (and start!596632 ((_ is Concat!24716) r!7292)) b!5823121))

(assert (= (and start!596632 ((_ is Star!15871) r!7292)) b!5823120))

(assert (= (and start!596632 ((_ is Union!15871) r!7292)) b!5823128))

(assert (= (and start!596632 ((_ is Cons!63790) s!2326)) b!5823115))

(assert (= (and start!596632 condSetEmpty!39346) setIsEmpty!39346))

(assert (= (and start!596632 (not condSetEmpty!39346)) setNonEmpty!39346))

(assert (= setNonEmpty!39346 b!5823122))

(assert (= b!5823112 b!5823117))

(assert (= (and start!596632 ((_ is Cons!63789) zl!343)) b!5823112))

(declare-fun m!6757138 () Bool)

(assert (=> b!5823127 m!6757138))

(declare-fun m!6757140 () Bool)

(assert (=> b!5823113 m!6757140))

(assert (=> b!5823113 m!6757140))

(declare-fun m!6757142 () Bool)

(assert (=> b!5823113 m!6757142))

(declare-fun m!6757144 () Bool)

(assert (=> b!5823118 m!6757144))

(declare-fun m!6757146 () Bool)

(assert (=> b!5823125 m!6757146))

(declare-fun m!6757148 () Bool)

(assert (=> b!5823112 m!6757148))

(declare-fun m!6757150 () Bool)

(assert (=> b!5823123 m!6757150))

(declare-fun m!6757152 () Bool)

(assert (=> b!5823116 m!6757152))

(declare-fun m!6757154 () Bool)

(assert (=> b!5823116 m!6757154))

(declare-fun m!6757156 () Bool)

(assert (=> b!5823116 m!6757156))

(declare-fun m!6757158 () Bool)

(assert (=> b!5823114 m!6757158))

(declare-fun m!6757160 () Bool)

(assert (=> setNonEmpty!39346 m!6757160))

(declare-fun m!6757162 () Bool)

(assert (=> start!596632 m!6757162))

(check-sat (not b!5823123) (not b!5823116) (not b!5823128) tp_is_empty!40995 (not setNonEmpty!39346) (not b!5823121) (not b!5823115) (not start!596632) (not b!5823112) (not b!5823113) (not b!5823114) (not b!5823118) (not b!5823120) (not b!5823117) (not b!5823127) (not b!5823125) (not b!5823122))
(check-sat)
