; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!688812 () Bool)

(assert start!688812)

(declare-fun b!7081087 () Bool)

(assert (=> b!7081087 true))

(declare-fun b!7081079 () Bool)

(assert (=> b!7081079 true))

(declare-fun b!7081086 () Bool)

(assert (=> b!7081086 true))

(declare-fun res!2892569 () Bool)

(declare-fun e!4257099 () Bool)

(assert (=> start!688812 (=> (not res!2892569) (not e!4257099))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!35656 0))(
  ( (C!35657 (val!27530 Int)) )
))
(declare-datatypes ((Regex!17693 0))(
  ( (ElementMatch!17693 (c!1321634 C!35656)) (Concat!26538 (regOne!35898 Regex!17693) (regTwo!35898 Regex!17693)) (EmptyExpr!17693) (Star!17693 (reg!18022 Regex!17693)) (EmptyLang!17693) (Union!17693 (regOne!35899 Regex!17693) (regTwo!35899 Regex!17693)) )
))
(declare-datatypes ((List!68605 0))(
  ( (Nil!68481) (Cons!68481 (h!74929 Regex!17693) (t!382390 List!68605)) )
))
(declare-datatypes ((Context!13378 0))(
  ( (Context!13379 (exprs!7189 List!68605)) )
))
(declare-fun lt!2552544 () (InoxSet Context!13378))

(declare-datatypes ((List!68606 0))(
  ( (Nil!68482) (Cons!68482 (h!74930 C!35656) (t!382391 List!68606)) )
))
(declare-fun s!7408 () List!68606)

(declare-fun matchZipper!3233 ((InoxSet Context!13378) List!68606) Bool)

(assert (=> start!688812 (= res!2892569 (matchZipper!3233 lt!2552544 s!7408))))

(declare-fun z1!570 () (InoxSet Context!13378))

(declare-fun ct2!306 () Context!13378)

(declare-fun appendTo!814 ((InoxSet Context!13378) Context!13378) (InoxSet Context!13378))

(assert (=> start!688812 (= lt!2552544 (appendTo!814 z1!570 ct2!306))))

(assert (=> start!688812 e!4257099))

(declare-fun condSetEmpty!50509 () Bool)

(assert (=> start!688812 (= condSetEmpty!50509 (= z1!570 ((as const (Array Context!13378 Bool)) false)))))

(declare-fun setRes!50509 () Bool)

(assert (=> start!688812 setRes!50509))

(declare-fun e!4257100 () Bool)

(declare-fun inv!87091 (Context!13378) Bool)

(assert (=> start!688812 (and (inv!87091 ct2!306) e!4257100)))

(declare-fun e!4257098 () Bool)

(assert (=> start!688812 e!4257098))

(declare-fun b!7081076 () Bool)

(declare-fun tp_is_empty!44611 () Bool)

(declare-fun tp!1943534 () Bool)

(assert (=> b!7081076 (= e!4257098 (and tp_is_empty!44611 tp!1943534))))

(declare-fun b!7081077 () Bool)

(declare-fun res!2892570 () Bool)

(declare-fun e!4257101 () Bool)

(assert (=> b!7081077 (=> res!2892570 e!4257101)))

(assert (=> b!7081077 (= res!2892570 (not (matchZipper!3233 (store ((as const (Array Context!13378 Bool)) false) ct2!306 true) s!7408)))))

(declare-fun b!7081078 () Bool)

(declare-fun e!4257095 () Bool)

(declare-fun tp!1943533 () Bool)

(assert (=> b!7081078 (= e!4257095 tp!1943533)))

(declare-fun e!4257102 () Bool)

(declare-fun e!4257096 () Bool)

(assert (=> b!7081079 (= e!4257102 e!4257096)))

(declare-fun res!2892562 () Bool)

(assert (=> b!7081079 (=> res!2892562 e!4257096)))

(declare-fun lt!2552548 () Context!13378)

(declare-fun lt!2552541 () Context!13378)

(declare-fun lt!2552539 () Context!13378)

(assert (=> b!7081079 (= res!2892562 (or (not (= lt!2552541 lt!2552548)) (not (select z1!570 lt!2552539))))))

(declare-fun ++!15856 (List!68605 List!68605) List!68605)

(assert (=> b!7081079 (= lt!2552541 (Context!13379 (++!15856 (exprs!7189 lt!2552539) (exprs!7189 ct2!306))))))

(declare-fun lambda!427900 () Int)

(declare-datatypes ((Unit!162097 0))(
  ( (Unit!162098) )
))
(declare-fun lt!2552543 () Unit!162097)

(declare-fun lemmaConcatPreservesForall!1004 (List!68605 List!68605 Int) Unit!162097)

(assert (=> b!7081079 (= lt!2552543 (lemmaConcatPreservesForall!1004 (exprs!7189 lt!2552539) (exprs!7189 ct2!306) lambda!427900))))

(declare-fun lambda!427899 () Int)

(declare-fun mapPost2!522 ((InoxSet Context!13378) Int Context!13378) Context!13378)

(assert (=> b!7081079 (= lt!2552539 (mapPost2!522 z1!570 lambda!427899 lt!2552548))))

(declare-fun setNonEmpty!50509 () Bool)

(declare-fun tp!1943536 () Bool)

(declare-fun setElem!50509 () Context!13378)

(assert (=> setNonEmpty!50509 (= setRes!50509 (and tp!1943536 (inv!87091 setElem!50509) e!4257095))))

(declare-fun setRest!50509 () (InoxSet Context!13378))

(assert (=> setNonEmpty!50509 (= z1!570 ((_ map or) (store ((as const (Array Context!13378 Bool)) false) setElem!50509 true) setRest!50509))))

(declare-fun setIsEmpty!50509 () Bool)

(assert (=> setIsEmpty!50509 setRes!50509))

(declare-fun b!7081080 () Bool)

(declare-fun res!2892566 () Bool)

(assert (=> b!7081080 (=> (not res!2892566) (not e!4257099))))

(get-info :version)

(assert (=> b!7081080 (= res!2892566 ((_ is Cons!68482) s!7408))))

(declare-fun b!7081081 () Bool)

(declare-fun e!4257097 () Bool)

(assert (=> b!7081081 (= e!4257096 e!4257097)))

(declare-fun res!2892565 () Bool)

(assert (=> b!7081081 (=> res!2892565 e!4257097)))

(declare-fun lt!2552553 () (InoxSet Context!13378))

(declare-fun lt!2552550 () (InoxSet Context!13378))

(assert (=> b!7081081 (= res!2892565 (not (= lt!2552553 lt!2552550)))))

(assert (=> b!7081081 (= lt!2552553 (store ((as const (Array Context!13378 Bool)) false) lt!2552541 true))))

(declare-fun lt!2552542 () Unit!162097)

(assert (=> b!7081081 (= lt!2552542 (lemmaConcatPreservesForall!1004 (exprs!7189 lt!2552539) (exprs!7189 ct2!306) lambda!427900))))

(declare-fun b!7081082 () Bool)

(assert (=> b!7081082 (= e!4257101 true)))

(declare-fun lt!2552554 () (InoxSet Context!13378))

(assert (=> b!7081082 (= (matchZipper!3233 lt!2552554 Nil!68482) true)))

(declare-fun lt!2552552 () Unit!162097)

(declare-fun lemmaZipperOfEmptyContextMatchesEmptyString!24 ((InoxSet Context!13378) List!68606) Unit!162097)

(assert (=> b!7081082 (= lt!2552552 (lemmaZipperOfEmptyContextMatchesEmptyString!24 lt!2552554 Nil!68482))))

(assert (=> b!7081082 (= lt!2552554 (store ((as const (Array Context!13378 Bool)) false) lt!2552539 true))))

(declare-fun b!7081083 () Bool)

(declare-fun tp!1943535 () Bool)

(assert (=> b!7081083 (= e!4257100 tp!1943535)))

(declare-fun b!7081084 () Bool)

(declare-fun res!2892564 () Bool)

(declare-fun e!4257094 () Bool)

(assert (=> b!7081084 (=> res!2892564 e!4257094)))

(assert (=> b!7081084 (= res!2892564 ((_ is Cons!68481) (exprs!7189 lt!2552539)))))

(declare-fun b!7081085 () Bool)

(declare-fun res!2892567 () Bool)

(assert (=> b!7081085 (=> res!2892567 e!4257102)))

(assert (=> b!7081085 (= res!2892567 (not (select lt!2552544 lt!2552548)))))

(assert (=> b!7081086 (= e!4257097 e!4257094)))

(declare-fun res!2892561 () Bool)

(assert (=> b!7081086 (=> res!2892561 e!4257094)))

(declare-fun lt!2552545 () (InoxSet Context!13378))

(declare-fun derivationStepZipper!3143 ((InoxSet Context!13378) C!35656) (InoxSet Context!13378))

(assert (=> b!7081086 (= res!2892561 (not (= (derivationStepZipper!3143 lt!2552553 (h!74930 s!7408)) lt!2552545)))))

(declare-fun lambda!427901 () Int)

(declare-fun flatMap!2619 ((InoxSet Context!13378) Int) (InoxSet Context!13378))

(declare-fun derivationStepZipperUp!2277 (Context!13378 C!35656) (InoxSet Context!13378))

(assert (=> b!7081086 (= (flatMap!2619 lt!2552553 lambda!427901) (derivationStepZipperUp!2277 lt!2552541 (h!74930 s!7408)))))

(declare-fun lt!2552546 () Unit!162097)

(declare-fun lemmaFlatMapOnSingletonSet!2128 ((InoxSet Context!13378) Context!13378 Int) Unit!162097)

(assert (=> b!7081086 (= lt!2552546 (lemmaFlatMapOnSingletonSet!2128 lt!2552553 lt!2552541 lambda!427901))))

(assert (=> b!7081086 (= lt!2552545 (derivationStepZipperUp!2277 lt!2552541 (h!74930 s!7408)))))

(declare-fun lt!2552551 () Unit!162097)

(assert (=> b!7081086 (= lt!2552551 (lemmaConcatPreservesForall!1004 (exprs!7189 lt!2552539) (exprs!7189 ct2!306) lambda!427900))))

(assert (=> b!7081087 (= e!4257099 (not e!4257102))))

(declare-fun res!2892568 () Bool)

(assert (=> b!7081087 (=> res!2892568 e!4257102)))

(assert (=> b!7081087 (= res!2892568 (not (matchZipper!3233 lt!2552550 s!7408)))))

(assert (=> b!7081087 (= lt!2552550 (store ((as const (Array Context!13378 Bool)) false) lt!2552548 true))))

(declare-fun lambda!427898 () Int)

(declare-fun getWitness!1822 ((InoxSet Context!13378) Int) Context!13378)

(assert (=> b!7081087 (= lt!2552548 (getWitness!1822 lt!2552544 lambda!427898))))

(declare-datatypes ((List!68607 0))(
  ( (Nil!68483) (Cons!68483 (h!74931 Context!13378) (t!382392 List!68607)) )
))
(declare-fun lt!2552549 () List!68607)

(declare-fun exists!3777 (List!68607 Int) Bool)

(assert (=> b!7081087 (exists!3777 lt!2552549 lambda!427898)))

(declare-fun lt!2552540 () Unit!162097)

(declare-fun lemmaZipperMatchesExistsMatchingContext!614 (List!68607 List!68606) Unit!162097)

(assert (=> b!7081087 (= lt!2552540 (lemmaZipperMatchesExistsMatchingContext!614 lt!2552549 s!7408))))

(declare-fun toList!11034 ((InoxSet Context!13378)) List!68607)

(assert (=> b!7081087 (= lt!2552549 (toList!11034 lt!2552544))))

(declare-fun b!7081088 () Bool)

(assert (=> b!7081088 (= e!4257094 e!4257101)))

(declare-fun res!2892563 () Bool)

(assert (=> b!7081088 (=> res!2892563 e!4257101)))

(assert (=> b!7081088 (= res!2892563 (not (= lt!2552541 ct2!306)))))

(declare-fun lt!2552547 () Unit!162097)

(assert (=> b!7081088 (= lt!2552547 (lemmaConcatPreservesForall!1004 (exprs!7189 lt!2552539) (exprs!7189 ct2!306) lambda!427900))))

(assert (= (and start!688812 res!2892569) b!7081080))

(assert (= (and b!7081080 res!2892566) b!7081087))

(assert (= (and b!7081087 (not res!2892568)) b!7081085))

(assert (= (and b!7081085 (not res!2892567)) b!7081079))

(assert (= (and b!7081079 (not res!2892562)) b!7081081))

(assert (= (and b!7081081 (not res!2892565)) b!7081086))

(assert (= (and b!7081086 (not res!2892561)) b!7081084))

(assert (= (and b!7081084 (not res!2892564)) b!7081088))

(assert (= (and b!7081088 (not res!2892563)) b!7081077))

(assert (= (and b!7081077 (not res!2892570)) b!7081082))

(assert (= (and start!688812 condSetEmpty!50509) setIsEmpty!50509))

(assert (= (and start!688812 (not condSetEmpty!50509)) setNonEmpty!50509))

(assert (= setNonEmpty!50509 b!7081078))

(assert (= start!688812 b!7081083))

(assert (= (and start!688812 ((_ is Cons!68482) s!7408)) b!7081076))

(declare-fun m!7812030 () Bool)

(assert (=> b!7081086 m!7812030))

(declare-fun m!7812032 () Bool)

(assert (=> b!7081086 m!7812032))

(declare-fun m!7812034 () Bool)

(assert (=> b!7081086 m!7812034))

(declare-fun m!7812036 () Bool)

(assert (=> b!7081086 m!7812036))

(declare-fun m!7812038 () Bool)

(assert (=> b!7081086 m!7812038))

(assert (=> b!7081088 m!7812030))

(declare-fun m!7812040 () Bool)

(assert (=> b!7081081 m!7812040))

(assert (=> b!7081081 m!7812030))

(declare-fun m!7812042 () Bool)

(assert (=> b!7081087 m!7812042))

(declare-fun m!7812044 () Bool)

(assert (=> b!7081087 m!7812044))

(declare-fun m!7812046 () Bool)

(assert (=> b!7081087 m!7812046))

(declare-fun m!7812048 () Bool)

(assert (=> b!7081087 m!7812048))

(declare-fun m!7812050 () Bool)

(assert (=> b!7081087 m!7812050))

(declare-fun m!7812052 () Bool)

(assert (=> b!7081087 m!7812052))

(declare-fun m!7812054 () Bool)

(assert (=> b!7081077 m!7812054))

(assert (=> b!7081077 m!7812054))

(declare-fun m!7812056 () Bool)

(assert (=> b!7081077 m!7812056))

(declare-fun m!7812058 () Bool)

(assert (=> start!688812 m!7812058))

(declare-fun m!7812060 () Bool)

(assert (=> start!688812 m!7812060))

(declare-fun m!7812062 () Bool)

(assert (=> start!688812 m!7812062))

(declare-fun m!7812064 () Bool)

(assert (=> b!7081085 m!7812064))

(declare-fun m!7812066 () Bool)

(assert (=> b!7081082 m!7812066))

(declare-fun m!7812068 () Bool)

(assert (=> b!7081082 m!7812068))

(declare-fun m!7812070 () Bool)

(assert (=> b!7081082 m!7812070))

(declare-fun m!7812072 () Bool)

(assert (=> setNonEmpty!50509 m!7812072))

(declare-fun m!7812074 () Bool)

(assert (=> b!7081079 m!7812074))

(declare-fun m!7812076 () Bool)

(assert (=> b!7081079 m!7812076))

(assert (=> b!7081079 m!7812030))

(declare-fun m!7812078 () Bool)

(assert (=> b!7081079 m!7812078))

(check-sat (not b!7081079) (not setNonEmpty!50509) (not b!7081077) (not b!7081088) (not start!688812) (not b!7081076) (not b!7081087) (not b!7081081) (not b!7081086) (not b!7081082) (not b!7081078) tp_is_empty!44611 (not b!7081083))
(check-sat)
