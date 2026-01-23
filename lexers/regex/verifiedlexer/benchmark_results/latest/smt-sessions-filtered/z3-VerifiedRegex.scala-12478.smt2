; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!694824 () Bool)

(assert start!694824)

(declare-fun b!7132434 () Bool)

(declare-fun e!4286418 () Bool)

(declare-fun e!4286411 () Bool)

(assert (=> b!7132434 (= e!4286418 e!4286411)))

(declare-fun res!2910260 () Bool)

(assert (=> b!7132434 (=> res!2910260 e!4286411)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!36448 0))(
  ( (C!36449 (val!28150 Int)) )
))
(declare-datatypes ((Regex!18089 0))(
  ( (ElementMatch!18089 (c!1330291 C!36448)) (Concat!26934 (regOne!36690 Regex!18089) (regTwo!36690 Regex!18089)) (EmptyExpr!18089) (Star!18089 (reg!18418 Regex!18089)) (EmptyLang!18089) (Union!18089 (regOne!36691 Regex!18089) (regTwo!36691 Regex!18089)) )
))
(declare-datatypes ((List!69232 0))(
  ( (Nil!69108) (Cons!69108 (h!75556 Regex!18089) (t!383209 List!69232)) )
))
(declare-datatypes ((Context!14166 0))(
  ( (Context!14167 (exprs!7583 List!69232)) )
))
(declare-fun z1!538 () (InoxSet Context!14166))

(declare-datatypes ((List!69233 0))(
  ( (Nil!69109) (Cons!69109 (h!75557 C!36448) (t!383210 List!69233)) )
))
(declare-datatypes ((tuple2!68400 0))(
  ( (tuple2!68401 (_1!37503 List!69233) (_2!37503 List!69233)) )
))
(declare-fun lt!2565023 () tuple2!68400)

(declare-fun matchZipper!3345 ((InoxSet Context!14166) List!69233) Bool)

(assert (=> b!7132434 (= res!2910260 (not (matchZipper!3345 z1!538 (_1!37503 lt!2565023))))))

(declare-datatypes ((Option!17032 0))(
  ( (None!17031) (Some!17031 (v!53525 tuple2!68400)) )
))
(declare-fun lt!2565024 () Option!17032)

(declare-fun get!24270 (Option!17032) tuple2!68400)

(assert (=> b!7132434 (= lt!2565023 (get!24270 lt!2565024))))

(declare-fun e!4286415 () Bool)

(declare-fun setRes!52198 () Bool)

(declare-fun tp!1965848 () Bool)

(declare-fun setElem!52198 () Context!14166)

(declare-fun setNonEmpty!52198 () Bool)

(declare-fun inv!88250 (Context!14166) Bool)

(assert (=> setNonEmpty!52198 (= setRes!52198 (and tp!1965848 (inv!88250 setElem!52198) e!4286415))))

(declare-fun z2!457 () (InoxSet Context!14166))

(declare-fun setRest!52198 () (InoxSet Context!14166))

(assert (=> setNonEmpty!52198 (= z2!457 ((_ map or) (store ((as const (Array Context!14166 Bool)) false) setElem!52198 true) setRest!52198))))

(declare-fun b!7132436 () Bool)

(declare-fun tp!1965847 () Bool)

(assert (=> b!7132436 (= e!4286415 tp!1965847)))

(declare-fun setIsEmpty!52198 () Bool)

(assert (=> setIsEmpty!52198 setRes!52198))

(declare-fun b!7132437 () Bool)

(declare-fun e!4286417 () Bool)

(assert (=> b!7132437 (= e!4286417 (not e!4286418))))

(declare-fun res!2910257 () Bool)

(assert (=> b!7132437 (=> res!2910257 e!4286418)))

(declare-fun isDefined!13723 (Option!17032) Bool)

(assert (=> b!7132437 (= res!2910257 (not (isDefined!13723 lt!2565024)))))

(declare-fun s2!1615 () List!69233)

(declare-fun lt!2565026 () List!69233)

(declare-fun s!7358 () List!69233)

(declare-fun findConcatSeparationZippers!540 ((InoxSet Context!14166) (InoxSet Context!14166) List!69233 List!69233 List!69233) Option!17032)

(assert (=> b!7132437 (= lt!2565024 (findConcatSeparationZippers!540 z1!538 z2!457 lt!2565026 (t!383210 s2!1615) s!7358))))

(declare-fun ++!16227 (List!69233 List!69233) List!69233)

(assert (=> b!7132437 (= (++!16227 lt!2565026 (t!383210 s2!1615)) s!7358)))

(declare-fun s1!1678 () List!69233)

(assert (=> b!7132437 (= lt!2565026 (++!16227 s1!1678 (Cons!69109 (h!75557 s2!1615) Nil!69109)))))

(declare-datatypes ((Unit!163039 0))(
  ( (Unit!163040) )
))
(declare-fun lt!2565025 () Unit!163039)

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3035 (List!69233 C!36448 List!69233 List!69233) Unit!163039)

(assert (=> b!7132437 (= lt!2565025 (lemmaMoveElementToOtherListKeepsConcatEq!3035 s1!1678 (h!75557 s2!1615) (t!383210 s2!1615) s!7358))))

(declare-fun b!7132438 () Bool)

(declare-fun e!4286413 () Bool)

(declare-fun tp!1965853 () Bool)

(assert (=> b!7132438 (= e!4286413 tp!1965853)))

(declare-fun setIsEmpty!52199 () Bool)

(declare-fun setRes!52199 () Bool)

(assert (=> setIsEmpty!52199 setRes!52199))

(declare-fun b!7132439 () Bool)

(declare-fun res!2910256 () Bool)

(assert (=> b!7132439 (=> (not res!2910256) (not e!4286417))))

(declare-fun e!4286414 () Bool)

(assert (=> b!7132439 (= res!2910256 e!4286414)))

(declare-fun res!2910261 () Bool)

(assert (=> b!7132439 (=> res!2910261 e!4286414)))

(assert (=> b!7132439 (= res!2910261 (not (matchZipper!3345 z1!538 s1!1678)))))

(declare-fun setElem!52199 () Context!14166)

(declare-fun tp!1965850 () Bool)

(declare-fun setNonEmpty!52199 () Bool)

(assert (=> setNonEmpty!52199 (= setRes!52199 (and tp!1965850 (inv!88250 setElem!52199) e!4286413))))

(declare-fun setRest!52199 () (InoxSet Context!14166))

(assert (=> setNonEmpty!52199 (= z1!538 ((_ map or) (store ((as const (Array Context!14166 Bool)) false) setElem!52199 true) setRest!52199))))

(declare-fun b!7132440 () Bool)

(declare-fun res!2910259 () Bool)

(assert (=> b!7132440 (=> (not res!2910259) (not e!4286417))))

(get-info :version)

(assert (=> b!7132440 (= res!2910259 (not ((_ is Nil!69109) s2!1615)))))

(declare-fun b!7132441 () Bool)

(assert (=> b!7132441 (= e!4286411 true)))

(declare-fun res!2910258 () Bool)

(assert (=> start!694824 (=> (not res!2910258) (not e!4286417))))

(assert (=> start!694824 (= res!2910258 (= (++!16227 s1!1678 s2!1615) s!7358))))

(assert (=> start!694824 e!4286417))

(declare-fun condSetEmpty!52198 () Bool)

(assert (=> start!694824 (= condSetEmpty!52198 (= z2!457 ((as const (Array Context!14166 Bool)) false)))))

(assert (=> start!694824 setRes!52198))

(declare-fun e!4286412 () Bool)

(assert (=> start!694824 e!4286412))

(declare-fun condSetEmpty!52199 () Bool)

(assert (=> start!694824 (= condSetEmpty!52199 (= z1!538 ((as const (Array Context!14166 Bool)) false)))))

(assert (=> start!694824 setRes!52199))

(declare-fun e!4286416 () Bool)

(assert (=> start!694824 e!4286416))

(declare-fun e!4286419 () Bool)

(assert (=> start!694824 e!4286419))

(declare-fun b!7132435 () Bool)

(declare-fun tp_is_empty!45779 () Bool)

(declare-fun tp!1965849 () Bool)

(assert (=> b!7132435 (= e!4286416 (and tp_is_empty!45779 tp!1965849))))

(declare-fun b!7132442 () Bool)

(declare-fun tp!1965851 () Bool)

(assert (=> b!7132442 (= e!4286419 (and tp_is_empty!45779 tp!1965851))))

(declare-fun b!7132443 () Bool)

(declare-fun tp!1965852 () Bool)

(assert (=> b!7132443 (= e!4286412 (and tp_is_empty!45779 tp!1965852))))

(declare-fun b!7132444 () Bool)

(assert (=> b!7132444 (= e!4286414 (not (matchZipper!3345 z2!457 s2!1615)))))

(declare-fun b!7132445 () Bool)

(declare-fun res!2910255 () Bool)

(assert (=> b!7132445 (=> res!2910255 e!4286411)))

(assert (=> b!7132445 (= res!2910255 (not (matchZipper!3345 z2!457 (_2!37503 lt!2565023))))))

(assert (= (and start!694824 res!2910258) b!7132439))

(assert (= (and b!7132439 (not res!2910261)) b!7132444))

(assert (= (and b!7132439 res!2910256) b!7132440))

(assert (= (and b!7132440 res!2910259) b!7132437))

(assert (= (and b!7132437 (not res!2910257)) b!7132434))

(assert (= (and b!7132434 (not res!2910260)) b!7132445))

(assert (= (and b!7132445 (not res!2910255)) b!7132441))

(assert (= (and start!694824 condSetEmpty!52198) setIsEmpty!52198))

(assert (= (and start!694824 (not condSetEmpty!52198)) setNonEmpty!52198))

(assert (= setNonEmpty!52198 b!7132436))

(assert (= (and start!694824 ((_ is Cons!69109) s2!1615)) b!7132443))

(assert (= (and start!694824 condSetEmpty!52199) setIsEmpty!52199))

(assert (= (and start!694824 (not condSetEmpty!52199)) setNonEmpty!52199))

(assert (= setNonEmpty!52199 b!7132438))

(assert (= (and start!694824 ((_ is Cons!69109) s1!1678)) b!7132435))

(assert (= (and start!694824 ((_ is Cons!69109) s!7358)) b!7132442))

(declare-fun m!7849626 () Bool)

(assert (=> b!7132444 m!7849626))

(declare-fun m!7849628 () Bool)

(assert (=> start!694824 m!7849628))

(declare-fun m!7849630 () Bool)

(assert (=> setNonEmpty!52199 m!7849630))

(declare-fun m!7849632 () Bool)

(assert (=> b!7132439 m!7849632))

(declare-fun m!7849634 () Bool)

(assert (=> b!7132434 m!7849634))

(declare-fun m!7849636 () Bool)

(assert (=> b!7132434 m!7849636))

(declare-fun m!7849638 () Bool)

(assert (=> setNonEmpty!52198 m!7849638))

(declare-fun m!7849640 () Bool)

(assert (=> b!7132445 m!7849640))

(declare-fun m!7849642 () Bool)

(assert (=> b!7132437 m!7849642))

(declare-fun m!7849644 () Bool)

(assert (=> b!7132437 m!7849644))

(declare-fun m!7849646 () Bool)

(assert (=> b!7132437 m!7849646))

(declare-fun m!7849648 () Bool)

(assert (=> b!7132437 m!7849648))

(declare-fun m!7849650 () Bool)

(assert (=> b!7132437 m!7849650))

(check-sat tp_is_empty!45779 (not start!694824) (not b!7132438) (not b!7132434) (not b!7132436) (not b!7132444) (not b!7132445) (not b!7132442) (not setNonEmpty!52198) (not b!7132437) (not setNonEmpty!52199) (not b!7132435) (not b!7132439) (not b!7132443))
(check-sat)
