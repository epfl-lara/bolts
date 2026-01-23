; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!660960 () Bool)

(assert start!660960)

(declare-fun b!6840404 () Bool)

(declare-fun e!4125468 () Bool)

(declare-fun tp_is_empty!42571 () Bool)

(declare-fun tp!1873071 () Bool)

(assert (=> b!6840404 (= e!4125468 (and tp_is_empty!42571 tp!1873071))))

(declare-fun tp!1873064 () Bool)

(declare-fun b!6840405 () Bool)

(declare-datatypes ((C!33588 0))(
  ( (C!33589 (val!26496 Int)) )
))
(declare-datatypes ((Regex!16659 0))(
  ( (ElementMatch!16659 (c!1273539 C!33588)) (Concat!25504 (regOne!33830 Regex!16659) (regTwo!33830 Regex!16659)) (EmptyExpr!16659) (Star!16659 (reg!16988 Regex!16659)) (EmptyLang!16659) (Union!16659 (regOne!33831 Regex!16659) (regTwo!33831 Regex!16659)) )
))
(declare-datatypes ((List!66276 0))(
  ( (Nil!66152) (Cons!66152 (h!72600 Regex!16659) (t!380019 List!66276)) )
))
(declare-datatypes ((Context!12086 0))(
  ( (Context!12087 (exprs!6543 List!66276)) )
))
(declare-datatypes ((List!66277 0))(
  ( (Nil!66153) (Cons!66153 (h!72601 Context!12086) (t!380020 List!66277)) )
))
(declare-fun zl!343 () List!66277)

(declare-fun e!4125471 () Bool)

(declare-fun e!4125467 () Bool)

(declare-fun inv!84894 (Context!12086) Bool)

(assert (=> b!6840405 (= e!4125467 (and (inv!84894 (h!72601 zl!343)) e!4125471 tp!1873064))))

(declare-fun b!6840406 () Bool)

(declare-fun res!2792881 () Bool)

(declare-fun e!4125469 () Bool)

(assert (=> b!6840406 (=> res!2792881 e!4125469)))

(declare-datatypes ((List!66278 0))(
  ( (Nil!66154) (Cons!66154 (h!72602 C!33588) (t!380021 List!66278)) )
))
(declare-fun s!2326 () List!66278)

(get-info :version)

(assert (=> b!6840406 (= res!2792881 (or (not ((_ is Cons!66153) zl!343)) (not ((_ is Nil!66154) s!2326))))))

(declare-fun b!6840407 () Bool)

(declare-fun e!4125473 () Bool)

(declare-fun tp!1873067 () Bool)

(declare-fun tp!1873069 () Bool)

(assert (=> b!6840407 (= e!4125473 (and tp!1873067 tp!1873069))))

(declare-fun tp!1873063 () Bool)

(declare-fun e!4125472 () Bool)

(declare-fun setRes!46997 () Bool)

(declare-fun setElem!46997 () Context!12086)

(declare-fun setNonEmpty!46997 () Bool)

(assert (=> setNonEmpty!46997 (= setRes!46997 (and tp!1873063 (inv!84894 setElem!46997) e!4125472))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!12086))

(declare-fun setRest!46997 () (InoxSet Context!12086))

(assert (=> setNonEmpty!46997 (= z!1189 ((_ map or) (store ((as const (Array Context!12086 Bool)) false) setElem!46997 true) setRest!46997))))

(declare-fun b!6840408 () Bool)

(declare-fun e!4125466 () Bool)

(assert (=> b!6840408 (= e!4125466 (not e!4125469))))

(declare-fun res!2792882 () Bool)

(assert (=> b!6840408 (=> res!2792882 e!4125469)))

(declare-fun e!4125470 () Bool)

(assert (=> b!6840408 (= res!2792882 e!4125470)))

(declare-fun res!2792884 () Bool)

(assert (=> b!6840408 (=> (not res!2792884) (not e!4125470))))

(assert (=> b!6840408 (= res!2792884 ((_ is Cons!66153) zl!343))))

(declare-fun r!7292 () Regex!16659)

(declare-fun matchR!8842 (Regex!16659 List!66278) Bool)

(declare-fun matchRSpec!3760 (Regex!16659 List!66278) Bool)

(assert (=> b!6840408 (= (matchR!8842 r!7292 s!2326) (matchRSpec!3760 r!7292 s!2326))))

(declare-datatypes ((Unit!160017 0))(
  ( (Unit!160018) )
))
(declare-fun lt!2455206 () Unit!160017)

(declare-fun mainMatchTheorem!3760 (Regex!16659 List!66278) Unit!160017)

(assert (=> b!6840408 (= lt!2455206 (mainMatchTheorem!3760 r!7292 s!2326))))

(declare-fun b!6840409 () Bool)

(declare-fun res!2792879 () Bool)

(assert (=> b!6840409 (=> (not res!2792879) (not e!4125466))))

(declare-fun unfocusZipper!2401 (List!66277) Regex!16659)

(assert (=> b!6840409 (= res!2792879 (= r!7292 (unfocusZipper!2401 zl!343)))))

(declare-fun b!6840410 () Bool)

(declare-fun lt!2455205 () List!66277)

(assert (=> b!6840410 (= e!4125469 (= r!7292 (unfocusZipper!2401 lt!2455205)))))

(declare-fun setIsEmpty!46997 () Bool)

(assert (=> setIsEmpty!46997 setRes!46997))

(declare-fun b!6840411 () Bool)

(declare-fun tp!1873065 () Bool)

(assert (=> b!6840411 (= e!4125471 tp!1873065)))

(declare-fun b!6840412 () Bool)

(declare-fun tp!1873066 () Bool)

(assert (=> b!6840412 (= e!4125473 tp!1873066)))

(declare-fun b!6840413 () Bool)

(declare-fun tp!1873062 () Bool)

(assert (=> b!6840413 (= e!4125472 tp!1873062)))

(declare-fun b!6840414 () Bool)

(declare-fun e!4125474 () Bool)

(assert (=> b!6840414 (= e!4125474 e!4125466)))

(declare-fun res!2792883 () Bool)

(assert (=> b!6840414 (=> (not res!2792883) (not e!4125466))))

(assert (=> b!6840414 (= res!2792883 (= lt!2455205 zl!343))))

(declare-fun toList!10443 ((InoxSet Context!12086)) List!66277)

(assert (=> b!6840414 (= lt!2455205 (toList!10443 z!1189))))

(declare-fun b!6840416 () Bool)

(assert (=> b!6840416 (= e!4125473 tp_is_empty!42571)))

(declare-fun b!6840417 () Bool)

(declare-fun isEmpty!38539 (List!66277) Bool)

(assert (=> b!6840417 (= e!4125470 (isEmpty!38539 (t!380020 zl!343)))))

(declare-fun b!6840415 () Bool)

(declare-fun tp!1873070 () Bool)

(declare-fun tp!1873068 () Bool)

(assert (=> b!6840415 (= e!4125473 (and tp!1873070 tp!1873068))))

(declare-fun res!2792880 () Bool)

(assert (=> start!660960 (=> (not res!2792880) (not e!4125474))))

(declare-fun validRegex!8395 (Regex!16659) Bool)

(assert (=> start!660960 (= res!2792880 (validRegex!8395 r!7292))))

(assert (=> start!660960 e!4125474))

(assert (=> start!660960 e!4125473))

(assert (=> start!660960 e!4125468))

(declare-fun condSetEmpty!46997 () Bool)

(assert (=> start!660960 (= condSetEmpty!46997 (= z!1189 ((as const (Array Context!12086 Bool)) false)))))

(assert (=> start!660960 setRes!46997))

(assert (=> start!660960 e!4125467))

(assert (= (and start!660960 res!2792880) b!6840414))

(assert (= (and b!6840414 res!2792883) b!6840409))

(assert (= (and b!6840409 res!2792879) b!6840408))

(assert (= (and b!6840408 res!2792884) b!6840417))

(assert (= (and b!6840408 (not res!2792882)) b!6840406))

(assert (= (and b!6840406 (not res!2792881)) b!6840410))

(assert (= (and start!660960 ((_ is ElementMatch!16659) r!7292)) b!6840416))

(assert (= (and start!660960 ((_ is Concat!25504) r!7292)) b!6840415))

(assert (= (and start!660960 ((_ is Star!16659) r!7292)) b!6840412))

(assert (= (and start!660960 ((_ is Union!16659) r!7292)) b!6840407))

(assert (= (and start!660960 ((_ is Cons!66154) s!2326)) b!6840404))

(assert (= (and start!660960 condSetEmpty!46997) setIsEmpty!46997))

(assert (= (and start!660960 (not condSetEmpty!46997)) setNonEmpty!46997))

(assert (= setNonEmpty!46997 b!6840413))

(assert (= b!6840405 b!6840411))

(assert (= (and start!660960 ((_ is Cons!66153) zl!343)) b!6840405))

(declare-fun m!7583648 () Bool)

(assert (=> b!6840410 m!7583648))

(declare-fun m!7583650 () Bool)

(assert (=> b!6840409 m!7583650))

(declare-fun m!7583652 () Bool)

(assert (=> setNonEmpty!46997 m!7583652))

(declare-fun m!7583654 () Bool)

(assert (=> b!6840414 m!7583654))

(declare-fun m!7583656 () Bool)

(assert (=> b!6840405 m!7583656))

(declare-fun m!7583658 () Bool)

(assert (=> start!660960 m!7583658))

(declare-fun m!7583660 () Bool)

(assert (=> b!6840417 m!7583660))

(declare-fun m!7583662 () Bool)

(assert (=> b!6840408 m!7583662))

(declare-fun m!7583664 () Bool)

(assert (=> b!6840408 m!7583664))

(declare-fun m!7583666 () Bool)

(assert (=> b!6840408 m!7583666))

(check-sat (not setNonEmpty!46997) (not b!6840407) tp_is_empty!42571 (not b!6840412) (not b!6840405) (not b!6840413) (not b!6840415) (not b!6840417) (not b!6840408) (not b!6840411) (not b!6840414) (not b!6840404) (not b!6840409) (not b!6840410) (not start!660960))
(check-sat)
