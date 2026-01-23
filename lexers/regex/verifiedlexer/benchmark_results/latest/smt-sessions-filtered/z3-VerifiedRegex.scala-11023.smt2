; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!571978 () Bool)

(assert start!571978)

(declare-fun b!5462505 () Bool)

(declare-fun e!3382463 () Bool)

(declare-fun tp_is_empty!39839 () Bool)

(declare-fun tp!1502406 () Bool)

(assert (=> b!5462505 (= e!3382463 (and tp_is_empty!39839 tp!1502406))))

(declare-fun setRes!35743 () Bool)

(declare-fun setNonEmpty!35743 () Bool)

(declare-datatypes ((C!30856 0))(
  ( (C!30857 (val!25130 Int)) )
))
(declare-datatypes ((Regex!15293 0))(
  ( (ElementMatch!15293 (c!954579 C!30856)) (Concat!24138 (regOne!31098 Regex!15293) (regTwo!31098 Regex!15293)) (EmptyExpr!15293) (Star!15293 (reg!15622 Regex!15293)) (EmptyLang!15293) (Union!15293 (regOne!31099 Regex!15293) (regTwo!31099 Regex!15293)) )
))
(declare-datatypes ((List!62178 0))(
  ( (Nil!62054) (Cons!62054 (h!68502 Regex!15293) (t!375407 List!62178)) )
))
(declare-datatypes ((Context!9354 0))(
  ( (Context!9355 (exprs!5177 List!62178)) )
))
(declare-fun setElem!35743 () Context!9354)

(declare-fun e!3382461 () Bool)

(declare-fun tp!1502413 () Bool)

(declare-fun inv!81479 (Context!9354) Bool)

(assert (=> setNonEmpty!35743 (= setRes!35743 (and tp!1502413 (inv!81479 setElem!35743) e!3382461))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!9354))

(declare-fun setRest!35743 () (InoxSet Context!9354))

(assert (=> setNonEmpty!35743 (= z!1189 ((_ map or) (store ((as const (Array Context!9354 Bool)) false) setElem!35743 true) setRest!35743))))

(declare-fun setIsEmpty!35743 () Bool)

(assert (=> setIsEmpty!35743 setRes!35743))

(declare-fun b!5462506 () Bool)

(declare-fun e!3382464 () Bool)

(declare-fun e!3382462 () Bool)

(assert (=> b!5462506 (= e!3382464 (not e!3382462))))

(declare-fun res!2326919 () Bool)

(assert (=> b!5462506 (=> res!2326919 e!3382462)))

(declare-datatypes ((List!62179 0))(
  ( (Nil!62055) (Cons!62055 (h!68503 Context!9354) (t!375408 List!62179)) )
))
(declare-fun zl!343 () List!62179)

(get-info :version)

(assert (=> b!5462506 (= res!2326919 (not ((_ is Cons!62055) zl!343)))))

(declare-fun r!7292 () Regex!15293)

(declare-datatypes ((List!62180 0))(
  ( (Nil!62056) (Cons!62056 (h!68504 C!30856) (t!375409 List!62180)) )
))
(declare-fun s!2326 () List!62180)

(declare-fun matchR!7478 (Regex!15293 List!62180) Bool)

(declare-fun matchRSpec!2396 (Regex!15293 List!62180) Bool)

(assert (=> b!5462506 (= (matchR!7478 r!7292 s!2326) (matchRSpec!2396 r!7292 s!2326))))

(declare-datatypes ((Unit!155036 0))(
  ( (Unit!155037) )
))
(declare-fun lt!2232731 () Unit!155036)

(declare-fun mainMatchTheorem!2396 (Regex!15293 List!62180) Unit!155036)

(assert (=> b!5462506 (= lt!2232731 (mainMatchTheorem!2396 r!7292 s!2326))))

(declare-fun res!2326924 () Bool)

(assert (=> start!571978 (=> (not res!2326924) (not e!3382464))))

(declare-fun validRegex!7029 (Regex!15293) Bool)

(assert (=> start!571978 (= res!2326924 (validRegex!7029 r!7292))))

(assert (=> start!571978 e!3382464))

(declare-fun e!3382458 () Bool)

(assert (=> start!571978 e!3382458))

(declare-fun condSetEmpty!35743 () Bool)

(assert (=> start!571978 (= condSetEmpty!35743 (= z!1189 ((as const (Array Context!9354 Bool)) false)))))

(assert (=> start!571978 setRes!35743))

(declare-fun e!3382459 () Bool)

(assert (=> start!571978 e!3382459))

(assert (=> start!571978 e!3382463))

(declare-fun b!5462507 () Bool)

(declare-fun res!2326921 () Bool)

(assert (=> b!5462507 (=> res!2326921 e!3382462)))

(declare-fun isEmpty!34041 (List!62179) Bool)

(assert (=> b!5462507 (= res!2326921 (not (isEmpty!34041 (t!375408 zl!343))))))

(declare-fun b!5462508 () Bool)

(declare-fun res!2326918 () Bool)

(assert (=> b!5462508 (=> res!2326918 e!3382462)))

(declare-fun generalisedUnion!1222 (List!62178) Regex!15293)

(declare-fun unfocusZipperList!735 (List!62179) List!62178)

(assert (=> b!5462508 (= res!2326918 (not (= r!7292 (generalisedUnion!1222 (unfocusZipperList!735 zl!343)))))))

(declare-fun b!5462509 () Bool)

(declare-fun res!2326920 () Bool)

(assert (=> b!5462509 (=> (not res!2326920) (not e!3382464))))

(declare-fun unfocusZipper!1035 (List!62179) Regex!15293)

(assert (=> b!5462509 (= res!2326920 (= r!7292 (unfocusZipper!1035 zl!343)))))

(declare-fun b!5462510 () Bool)

(declare-fun res!2326923 () Bool)

(assert (=> b!5462510 (=> (not res!2326923) (not e!3382464))))

(declare-fun toList!9077 ((InoxSet Context!9354)) List!62179)

(assert (=> b!5462510 (= res!2326923 (= (toList!9077 z!1189) zl!343))))

(declare-fun b!5462511 () Bool)

(declare-fun res!2326922 () Bool)

(assert (=> b!5462511 (=> res!2326922 e!3382462)))

(assert (=> b!5462511 (= res!2326922 (not ((_ is Cons!62054) (exprs!5177 (h!68503 zl!343)))))))

(declare-fun b!5462512 () Bool)

(assert (=> b!5462512 (= e!3382458 tp_is_empty!39839)))

(declare-fun b!5462513 () Bool)

(declare-fun tp!1502407 () Bool)

(declare-fun tp!1502410 () Bool)

(assert (=> b!5462513 (= e!3382458 (and tp!1502407 tp!1502410))))

(declare-fun b!5462514 () Bool)

(assert (=> b!5462514 (= e!3382462 true)))

(declare-fun b!5462515 () Bool)

(declare-fun tp!1502404 () Bool)

(declare-fun tp!1502405 () Bool)

(assert (=> b!5462515 (= e!3382458 (and tp!1502404 tp!1502405))))

(declare-fun b!5462516 () Bool)

(declare-fun tp!1502409 () Bool)

(assert (=> b!5462516 (= e!3382461 tp!1502409)))

(declare-fun b!5462517 () Bool)

(declare-fun tp!1502408 () Bool)

(declare-fun e!3382460 () Bool)

(assert (=> b!5462517 (= e!3382459 (and (inv!81479 (h!68503 zl!343)) e!3382460 tp!1502408))))

(declare-fun b!5462518 () Bool)

(declare-fun res!2326917 () Bool)

(assert (=> b!5462518 (=> res!2326917 e!3382462)))

(declare-fun generalisedConcat!962 (List!62178) Regex!15293)

(assert (=> b!5462518 (= res!2326917 (not (= r!7292 (generalisedConcat!962 (exprs!5177 (h!68503 zl!343))))))))

(declare-fun b!5462519 () Bool)

(declare-fun tp!1502411 () Bool)

(assert (=> b!5462519 (= e!3382460 tp!1502411)))

(declare-fun b!5462520 () Bool)

(declare-fun tp!1502412 () Bool)

(assert (=> b!5462520 (= e!3382458 tp!1502412)))

(assert (= (and start!571978 res!2326924) b!5462510))

(assert (= (and b!5462510 res!2326923) b!5462509))

(assert (= (and b!5462509 res!2326920) b!5462506))

(assert (= (and b!5462506 (not res!2326919)) b!5462507))

(assert (= (and b!5462507 (not res!2326921)) b!5462518))

(assert (= (and b!5462518 (not res!2326917)) b!5462511))

(assert (= (and b!5462511 (not res!2326922)) b!5462508))

(assert (= (and b!5462508 (not res!2326918)) b!5462514))

(assert (= (and start!571978 ((_ is ElementMatch!15293) r!7292)) b!5462512))

(assert (= (and start!571978 ((_ is Concat!24138) r!7292)) b!5462515))

(assert (= (and start!571978 ((_ is Star!15293) r!7292)) b!5462520))

(assert (= (and start!571978 ((_ is Union!15293) r!7292)) b!5462513))

(assert (= (and start!571978 condSetEmpty!35743) setIsEmpty!35743))

(assert (= (and start!571978 (not condSetEmpty!35743)) setNonEmpty!35743))

(assert (= setNonEmpty!35743 b!5462516))

(assert (= b!5462517 b!5462519))

(assert (= (and start!571978 ((_ is Cons!62055) zl!343)) b!5462517))

(assert (= (and start!571978 ((_ is Cons!62056) s!2326)) b!5462505))

(declare-fun m!6483800 () Bool)

(assert (=> start!571978 m!6483800))

(declare-fun m!6483802 () Bool)

(assert (=> b!5462506 m!6483802))

(declare-fun m!6483804 () Bool)

(assert (=> b!5462506 m!6483804))

(declare-fun m!6483806 () Bool)

(assert (=> b!5462506 m!6483806))

(declare-fun m!6483808 () Bool)

(assert (=> b!5462517 m!6483808))

(declare-fun m!6483810 () Bool)

(assert (=> b!5462509 m!6483810))

(declare-fun m!6483812 () Bool)

(assert (=> b!5462508 m!6483812))

(assert (=> b!5462508 m!6483812))

(declare-fun m!6483814 () Bool)

(assert (=> b!5462508 m!6483814))

(declare-fun m!6483816 () Bool)

(assert (=> b!5462507 m!6483816))

(declare-fun m!6483818 () Bool)

(assert (=> b!5462518 m!6483818))

(declare-fun m!6483820 () Bool)

(assert (=> b!5462510 m!6483820))

(declare-fun m!6483822 () Bool)

(assert (=> setNonEmpty!35743 m!6483822))

(check-sat (not b!5462513) (not b!5462510) (not b!5462505) (not b!5462518) tp_is_empty!39839 (not b!5462515) (not b!5462517) (not start!571978) (not b!5462519) (not b!5462506) (not b!5462516) (not b!5462509) (not setNonEmpty!35743) (not b!5462520) (not b!5462508) (not b!5462507))
(check-sat)
