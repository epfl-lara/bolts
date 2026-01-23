; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!538400 () Bool)

(assert start!538400)

(declare-fun b!5105955 () Bool)

(declare-fun res!2173384 () Bool)

(declare-fun e!3184577 () Bool)

(assert (=> b!5105955 (=> (not res!2173384) (not e!3184577))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!28432 0))(
  ( (C!28433 (val!23868 Int)) )
))
(declare-datatypes ((Regex!14083 0))(
  ( (ElementMatch!14083 (c!877079 C!28432)) (Concat!22928 (regOne!28678 Regex!14083) (regTwo!28678 Regex!14083)) (EmptyExpr!14083) (Star!14083 (reg!14412 Regex!14083)) (EmptyLang!14083) (Union!14083 (regOne!28679 Regex!14083) (regTwo!28679 Regex!14083)) )
))
(declare-datatypes ((List!59036 0))(
  ( (Nil!58912) (Cons!58912 (h!65360 Regex!14083) (t!372037 List!59036)) )
))
(declare-datatypes ((Context!6934 0))(
  ( (Context!6935 (exprs!3967 List!59036)) )
))
(declare-fun baseZ!39 () (InoxSet Context!6934))

(declare-datatypes ((List!59037 0))(
  ( (Nil!58913) (Cons!58913 (h!65361 C!28432) (t!372038 List!59037)) )
))
(declare-fun bigger!41 () List!59037)

(declare-fun matchZipper!753 ((InoxSet Context!6934) List!59037) Bool)

(assert (=> b!5105955 (= res!2173384 (matchZipper!753 baseZ!39 bigger!41))))

(declare-fun b!5105956 () Bool)

(declare-fun e!3184581 () Bool)

(assert (=> b!5105956 (= e!3184577 (not e!3184581))))

(declare-fun res!2173385 () Bool)

(assert (=> b!5105956 (=> res!2173385 e!3184581)))

(declare-fun getSuffix!3172 (List!59037 List!59037) List!59037)

(assert (=> b!5105956 (= res!2173385 (not (matchZipper!753 baseZ!39 (getSuffix!3172 bigger!41 Nil!58913))))))

(declare-fun isPrefix!5488 (List!59037 List!59037) Bool)

(assert (=> b!5105956 (isPrefix!5488 Nil!58913 bigger!41)))

(declare-datatypes ((Unit!149956 0))(
  ( (Unit!149957) )
))
(declare-fun lt!2101671 () Unit!149956)

(declare-fun input!5723 () List!59037)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!641 (List!59037 List!59037 List!59037) Unit!149956)

(assert (=> b!5105956 (= lt!2101671 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!641 bigger!41 Nil!58913 input!5723))))

(declare-fun b!5105957 () Bool)

(declare-fun e!3184579 () Bool)

(declare-fun tp_is_empty!37439 () Bool)

(declare-fun tp!1424321 () Bool)

(assert (=> b!5105957 (= e!3184579 (and tp_is_empty!37439 tp!1424321))))

(declare-fun res!2173387 () Bool)

(declare-fun e!3184575 () Bool)

(assert (=> start!538400 (=> (not res!2173387) (not e!3184575))))

(declare-fun returnP!41 () List!59037)

(assert (=> start!538400 (= res!2173387 (isPrefix!5488 returnP!41 input!5723))))

(assert (=> start!538400 e!3184575))

(declare-fun e!3184580 () Bool)

(assert (=> start!538400 e!3184580))

(declare-fun e!3184576 () Bool)

(assert (=> start!538400 e!3184576))

(assert (=> start!538400 e!3184579))

(declare-fun condSetEmpty!29362 () Bool)

(assert (=> start!538400 (= condSetEmpty!29362 (= baseZ!39 ((as const (Array Context!6934 Bool)) false)))))

(declare-fun setRes!29362 () Bool)

(assert (=> start!538400 setRes!29362))

(declare-fun b!5105958 () Bool)

(declare-fun tp!1424320 () Bool)

(assert (=> b!5105958 (= e!3184576 (and tp_is_empty!37439 tp!1424320))))

(declare-fun b!5105959 () Bool)

(declare-fun tp!1424319 () Bool)

(assert (=> b!5105959 (= e!3184580 (and tp_is_empty!37439 tp!1424319))))

(declare-fun b!5105960 () Bool)

(declare-fun res!2173388 () Bool)

(assert (=> b!5105960 (=> (not res!2173388) (not e!3184577))))

(declare-fun lt!2101669 () Int)

(declare-fun lt!2101670 () Int)

(assert (=> b!5105960 (= res!2173388 (not (= lt!2101669 lt!2101670)))))

(declare-fun b!5105961 () Bool)

(declare-fun res!2173390 () Bool)

(assert (=> b!5105961 (=> (not res!2173390) (not e!3184577))))

(assert (=> b!5105961 (= res!2173390 (isPrefix!5488 Nil!58913 input!5723))))

(declare-fun b!5105962 () Bool)

(declare-fun e!3184578 () Bool)

(assert (=> b!5105962 (= e!3184575 e!3184578)))

(declare-fun res!2173386 () Bool)

(assert (=> b!5105962 (=> (not res!2173386) (not e!3184578))))

(assert (=> b!5105962 (= res!2173386 (>= lt!2101669 lt!2101670))))

(declare-fun size!39389 (List!59037) Int)

(assert (=> b!5105962 (= lt!2101670 (size!39389 returnP!41))))

(assert (=> b!5105962 (= lt!2101669 (size!39389 bigger!41))))

(declare-fun setElem!29362 () Context!6934)

(declare-fun tp!1424317 () Bool)

(declare-fun e!3184574 () Bool)

(declare-fun setNonEmpty!29362 () Bool)

(declare-fun inv!78388 (Context!6934) Bool)

(assert (=> setNonEmpty!29362 (= setRes!29362 (and tp!1424317 (inv!78388 setElem!29362) e!3184574))))

(declare-fun setRest!29362 () (InoxSet Context!6934))

(assert (=> setNonEmpty!29362 (= baseZ!39 ((_ map or) (store ((as const (Array Context!6934 Bool)) false) setElem!29362 true) setRest!29362))))

(declare-fun b!5105963 () Bool)

(assert (=> b!5105963 (= e!3184581 true)))

(declare-fun lt!2101668 () (InoxSet Context!6934))

(declare-fun derivationZipper!2 ((InoxSet Context!6934) List!59037) (InoxSet Context!6934))

(assert (=> b!5105963 (= lt!2101668 (derivationZipper!2 baseZ!39 Nil!58913))))

(declare-fun b!5105964 () Bool)

(assert (=> b!5105964 (= e!3184578 e!3184577)))

(declare-fun res!2173391 () Bool)

(assert (=> b!5105964 (=> (not res!2173391) (not e!3184577))))

(declare-fun lt!2101672 () Int)

(declare-datatypes ((tuple2!63552 0))(
  ( (tuple2!63553 (_1!35079 List!59037) (_2!35079 List!59037)) )
))
(declare-fun findLongestMatchInnerZipper!157 ((InoxSet Context!6934) List!59037 Int List!59037 List!59037 Int) tuple2!63552)

(assert (=> b!5105964 (= res!2173391 (= (_1!35079 (findLongestMatchInnerZipper!157 baseZ!39 Nil!58913 lt!2101672 input!5723 input!5723 (size!39389 input!5723))) returnP!41))))

(assert (=> b!5105964 (= lt!2101672 (size!39389 Nil!58913))))

(declare-fun b!5105965 () Bool)

(declare-fun res!2173392 () Bool)

(assert (=> b!5105965 (=> (not res!2173392) (not e!3184575))))

(assert (=> b!5105965 (= res!2173392 (isPrefix!5488 bigger!41 input!5723))))

(declare-fun b!5105966 () Bool)

(declare-fun tp!1424318 () Bool)

(assert (=> b!5105966 (= e!3184574 tp!1424318)))

(declare-fun setIsEmpty!29362 () Bool)

(assert (=> setIsEmpty!29362 setRes!29362))

(declare-fun b!5105967 () Bool)

(declare-fun res!2173389 () Bool)

(assert (=> b!5105967 (=> (not res!2173389) (not e!3184577))))

(assert (=> b!5105967 (= res!2173389 (>= lt!2101669 lt!2101672))))

(assert (= (and start!538400 res!2173387) b!5105965))

(assert (= (and b!5105965 res!2173392) b!5105962))

(assert (= (and b!5105962 res!2173386) b!5105964))

(assert (= (and b!5105964 res!2173391) b!5105960))

(assert (= (and b!5105960 res!2173388) b!5105955))

(assert (= (and b!5105955 res!2173384) b!5105961))

(assert (= (and b!5105961 res!2173390) b!5105967))

(assert (= (and b!5105967 res!2173389) b!5105956))

(assert (= (and b!5105956 (not res!2173385)) b!5105963))

(get-info :version)

(assert (= (and start!538400 ((_ is Cons!58913) returnP!41)) b!5105959))

(assert (= (and start!538400 ((_ is Cons!58913) input!5723)) b!5105958))

(assert (= (and start!538400 ((_ is Cons!58913) bigger!41)) b!5105957))

(assert (= (and start!538400 condSetEmpty!29362) setIsEmpty!29362))

(assert (= (and start!538400 (not condSetEmpty!29362)) setNonEmpty!29362))

(assert (= setNonEmpty!29362 b!5105966))

(declare-fun m!6163312 () Bool)

(assert (=> b!5105961 m!6163312))

(declare-fun m!6163314 () Bool)

(assert (=> b!5105955 m!6163314))

(declare-fun m!6163316 () Bool)

(assert (=> b!5105962 m!6163316))

(declare-fun m!6163318 () Bool)

(assert (=> b!5105962 m!6163318))

(declare-fun m!6163320 () Bool)

(assert (=> b!5105964 m!6163320))

(assert (=> b!5105964 m!6163320))

(declare-fun m!6163322 () Bool)

(assert (=> b!5105964 m!6163322))

(declare-fun m!6163324 () Bool)

(assert (=> b!5105964 m!6163324))

(declare-fun m!6163326 () Bool)

(assert (=> setNonEmpty!29362 m!6163326))

(declare-fun m!6163328 () Bool)

(assert (=> start!538400 m!6163328))

(declare-fun m!6163330 () Bool)

(assert (=> b!5105956 m!6163330))

(assert (=> b!5105956 m!6163330))

(declare-fun m!6163332 () Bool)

(assert (=> b!5105956 m!6163332))

(declare-fun m!6163334 () Bool)

(assert (=> b!5105956 m!6163334))

(declare-fun m!6163336 () Bool)

(assert (=> b!5105956 m!6163336))

(declare-fun m!6163338 () Bool)

(assert (=> b!5105965 m!6163338))

(declare-fun m!6163340 () Bool)

(assert (=> b!5105963 m!6163340))

(check-sat (not b!5105959) (not b!5105955) (not b!5105958) (not b!5105966) (not b!5105965) (not b!5105962) (not setNonEmpty!29362) (not b!5105961) (not b!5105964) (not b!5105963) (not start!538400) tp_is_empty!37439 (not b!5105957) (not b!5105956))
(check-sat)
