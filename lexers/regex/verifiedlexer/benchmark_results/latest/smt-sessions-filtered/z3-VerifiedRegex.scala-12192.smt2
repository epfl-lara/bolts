; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!686560 () Bool)

(assert start!686560)

(declare-fun b!7069233 () Bool)

(assert (=> b!7069233 true))

(declare-fun b!7069226 () Bool)

(assert (=> b!7069226 true))

(declare-fun b!7069236 () Bool)

(assert (=> b!7069236 true))

(declare-fun e!4249990 () Bool)

(declare-fun e!4249994 () Bool)

(assert (=> b!7069226 (= e!4249990 e!4249994)))

(declare-fun res!2886810 () Bool)

(assert (=> b!7069226 (=> res!2886810 e!4249994)))

(declare-datatypes ((C!35532 0))(
  ( (C!35533 (val!27468 Int)) )
))
(declare-datatypes ((Regex!17631 0))(
  ( (ElementMatch!17631 (c!1318486 C!35532)) (Concat!26476 (regOne!35774 Regex!17631) (regTwo!35774 Regex!17631)) (EmptyExpr!17631) (Star!17631 (reg!17960 Regex!17631)) (EmptyLang!17631) (Union!17631 (regOne!35775 Regex!17631) (regTwo!35775 Regex!17631)) )
))
(declare-datatypes ((List!68419 0))(
  ( (Nil!68295) (Cons!68295 (h!74743 Regex!17631) (t!382202 List!68419)) )
))
(declare-datatypes ((Context!13254 0))(
  ( (Context!13255 (exprs!7127 List!68419)) )
))
(declare-fun lt!2543527 () Context!13254)

(declare-fun lt!2543526 () Context!13254)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z1!570 () (InoxSet Context!13254))

(declare-fun lt!2543506 () Context!13254)

(assert (=> b!7069226 (= res!2886810 (or (not (= lt!2543526 lt!2543506)) (not (select z1!570 lt!2543527))))))

(declare-fun ct2!306 () Context!13254)

(declare-fun ++!15748 (List!68419 List!68419) List!68419)

(assert (=> b!7069226 (= lt!2543526 (Context!13255 (++!15748 (exprs!7127 lt!2543527) (exprs!7127 ct2!306))))))

(declare-fun lambda!424779 () Int)

(declare-datatypes ((Unit!161972 0))(
  ( (Unit!161973) )
))
(declare-fun lt!2543503 () Unit!161972)

(declare-fun lemmaConcatPreservesForall!942 (List!68419 List!68419 Int) Unit!161972)

(assert (=> b!7069226 (= lt!2543503 (lemmaConcatPreservesForall!942 (exprs!7127 lt!2543527) (exprs!7127 ct2!306) lambda!424779))))

(declare-fun lambda!424778 () Int)

(declare-fun mapPost2!460 ((InoxSet Context!13254) Int Context!13254) Context!13254)

(assert (=> b!7069226 (= lt!2543527 (mapPost2!460 z1!570 lambda!424778 lt!2543506))))

(declare-fun b!7069227 () Bool)

(declare-fun e!4250002 () Bool)

(declare-fun e!4249996 () Bool)

(assert (=> b!7069227 (= e!4250002 e!4249996)))

(declare-fun res!2886821 () Bool)

(assert (=> b!7069227 (=> res!2886821 e!4249996)))

(declare-fun lt!2543522 () (InoxSet Context!13254))

(declare-fun lt!2543531 () (InoxSet Context!13254))

(assert (=> b!7069227 (= res!2886821 (not (= lt!2543522 lt!2543531)))))

(declare-fun lt!2543510 () (InoxSet Context!13254))

(declare-fun lt!2543500 () (InoxSet Context!13254))

(assert (=> b!7069227 (= lt!2543531 ((_ map or) lt!2543510 lt!2543500))))

(declare-fun lt!2543509 () Context!13254)

(declare-datatypes ((List!68420 0))(
  ( (Nil!68296) (Cons!68296 (h!74744 C!35532) (t!382203 List!68420)) )
))
(declare-fun s!7408 () List!68420)

(declare-fun derivationStepZipperUp!2215 (Context!13254 C!35532) (InoxSet Context!13254))

(assert (=> b!7069227 (= lt!2543500 (derivationStepZipperUp!2215 lt!2543509 (h!74744 s!7408)))))

(declare-fun derivationStepZipperDown!2265 (Regex!17631 Context!13254 C!35532) (InoxSet Context!13254))

(assert (=> b!7069227 (= lt!2543510 (derivationStepZipperDown!2265 (h!74743 (exprs!7127 lt!2543527)) lt!2543509 (h!74744 s!7408)))))

(declare-fun lt!2543520 () List!68419)

(assert (=> b!7069227 (= lt!2543509 (Context!13255 (++!15748 lt!2543520 (exprs!7127 ct2!306))))))

(declare-fun lt!2543534 () Unit!161972)

(assert (=> b!7069227 (= lt!2543534 (lemmaConcatPreservesForall!942 lt!2543520 (exprs!7127 ct2!306) lambda!424779))))

(declare-fun lt!2543533 () Unit!161972)

(assert (=> b!7069227 (= lt!2543533 (lemmaConcatPreservesForall!942 lt!2543520 (exprs!7127 ct2!306) lambda!424779))))

(declare-fun b!7069228 () Bool)

(declare-fun e!4249995 () Bool)

(declare-fun matchZipper!3171 ((InoxSet Context!13254) List!68420) Bool)

(assert (=> b!7069228 (= e!4249995 (matchZipper!3171 lt!2543500 (t!382203 s!7408)))))

(declare-fun b!7069229 () Bool)

(declare-fun e!4249991 () Bool)

(assert (=> b!7069229 (= e!4249991 e!4250002)))

(declare-fun res!2886806 () Bool)

(assert (=> b!7069229 (=> res!2886806 e!4250002)))

(declare-fun nullable!7314 (Regex!17631) Bool)

(assert (=> b!7069229 (= res!2886806 (not (nullable!7314 (h!74743 (exprs!7127 lt!2543527)))))))

(declare-fun lt!2543519 () Context!13254)

(assert (=> b!7069229 (= lt!2543519 (Context!13255 lt!2543520))))

(declare-fun tail!13806 (List!68419) List!68419)

(assert (=> b!7069229 (= lt!2543520 (tail!13806 (exprs!7127 lt!2543527)))))

(declare-fun b!7069230 () Bool)

(declare-fun e!4249993 () Bool)

(declare-fun lt!2543513 () (InoxSet Context!13254))

(assert (=> b!7069230 (= e!4249993 (matchZipper!3171 lt!2543513 (t!382203 s!7408)))))

(declare-fun lt!2543507 () Unit!161972)

(assert (=> b!7069230 (= lt!2543507 (lemmaConcatPreservesForall!942 lt!2543520 (exprs!7127 ct2!306) lambda!424779))))

(assert (=> b!7069230 (= lt!2543510 lt!2543513)))

(declare-fun appendTo!752 ((InoxSet Context!13254) Context!13254) (InoxSet Context!13254))

(assert (=> b!7069230 (= lt!2543513 (appendTo!752 (derivationStepZipperDown!2265 (h!74743 (exprs!7127 lt!2543527)) lt!2543519 (h!74744 s!7408)) ct2!306))))

(declare-fun lt!2543514 () Unit!161972)

(assert (=> b!7069230 (= lt!2543514 (lemmaConcatPreservesForall!942 lt!2543520 (exprs!7127 ct2!306) lambda!424779))))

(declare-fun lt!2543530 () Unit!161972)

(declare-fun lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!102 (Context!13254 Regex!17631 C!35532 Context!13254) Unit!161972)

(assert (=> b!7069230 (= lt!2543530 (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!102 lt!2543519 (h!74743 (exprs!7127 lt!2543527)) (h!74744 s!7408) ct2!306))))

(declare-fun setIsEmpty!50192 () Bool)

(declare-fun setRes!50192 () Bool)

(assert (=> setIsEmpty!50192 setRes!50192))

(declare-fun b!7069231 () Bool)

(declare-fun res!2886819 () Bool)

(assert (=> b!7069231 (=> res!2886819 e!4249991)))

(get-info :version)

(assert (=> b!7069231 (= res!2886819 (not ((_ is Cons!68295) (exprs!7127 lt!2543527))))))

(declare-fun b!7069232 () Bool)

(declare-fun e!4250001 () Bool)

(assert (=> b!7069232 (= e!4250001 e!4249993)))

(declare-fun res!2886805 () Bool)

(assert (=> b!7069232 (=> res!2886805 e!4249993)))

(declare-fun lt!2543508 () Bool)

(assert (=> b!7069232 (= res!2886805 (not lt!2543508))))

(declare-fun lt!2543528 () Unit!161972)

(assert (=> b!7069232 (= lt!2543528 (lemmaConcatPreservesForall!942 lt!2543520 (exprs!7127 ct2!306) lambda!424779))))

(declare-fun lt!2543501 () Unit!161972)

(assert (=> b!7069232 (= lt!2543501 (lemmaConcatPreservesForall!942 lt!2543520 (exprs!7127 ct2!306) lambda!424779))))

(declare-fun e!4249997 () Bool)

(assert (=> b!7069233 (= e!4249997 (not e!4249990))))

(declare-fun res!2886812 () Bool)

(assert (=> b!7069233 (=> res!2886812 e!4249990)))

(declare-fun lt!2543511 () (InoxSet Context!13254))

(assert (=> b!7069233 (= res!2886812 (not (matchZipper!3171 lt!2543511 s!7408)))))

(assert (=> b!7069233 (= lt!2543511 (store ((as const (Array Context!13254 Bool)) false) lt!2543506 true))))

(declare-fun lt!2543502 () (InoxSet Context!13254))

(declare-fun lambda!424777 () Int)

(declare-fun getWitness!1725 ((InoxSet Context!13254) Int) Context!13254)

(assert (=> b!7069233 (= lt!2543506 (getWitness!1725 lt!2543502 lambda!424777))))

(declare-datatypes ((List!68421 0))(
  ( (Nil!68297) (Cons!68297 (h!74745 Context!13254) (t!382204 List!68421)) )
))
(declare-fun lt!2543524 () List!68421)

(declare-fun exists!3668 (List!68421 Int) Bool)

(assert (=> b!7069233 (exists!3668 lt!2543524 lambda!424777)))

(declare-fun lt!2543504 () Unit!161972)

(declare-fun lemmaZipperMatchesExistsMatchingContext!552 (List!68421 List!68420) Unit!161972)

(assert (=> b!7069233 (= lt!2543504 (lemmaZipperMatchesExistsMatchingContext!552 lt!2543524 s!7408))))

(declare-fun toList!10972 ((InoxSet Context!13254)) List!68421)

(assert (=> b!7069233 (= lt!2543524 (toList!10972 lt!2543502))))

(declare-fun b!7069234 () Bool)

(declare-fun e!4249999 () Bool)

(assert (=> b!7069234 (= e!4249999 (not (matchZipper!3171 lt!2543500 (t!382203 s!7408))))))

(declare-fun lt!2543512 () Unit!161972)

(assert (=> b!7069234 (= lt!2543512 (lemmaConcatPreservesForall!942 lt!2543520 (exprs!7127 ct2!306) lambda!424779))))

(declare-fun b!7069235 () Bool)

(declare-fun e!4249992 () Bool)

(declare-fun tp_is_empty!44487 () Bool)

(declare-fun tp!1942005 () Bool)

(assert (=> b!7069235 (= e!4249992 (and tp_is_empty!44487 tp!1942005))))

(declare-fun setElem!50192 () Context!13254)

(declare-fun setNonEmpty!50192 () Bool)

(declare-fun tp!1942007 () Bool)

(declare-fun e!4250003 () Bool)

(declare-fun inv!86936 (Context!13254) Bool)

(assert (=> setNonEmpty!50192 (= setRes!50192 (and tp!1942007 (inv!86936 setElem!50192) e!4250003))))

(declare-fun setRest!50192 () (InoxSet Context!13254))

(assert (=> setNonEmpty!50192 (= z1!570 ((_ map or) (store ((as const (Array Context!13254 Bool)) false) setElem!50192 true) setRest!50192))))

(declare-fun e!4249989 () Bool)

(assert (=> b!7069236 (= e!4249989 e!4249991)))

(declare-fun res!2886814 () Bool)

(assert (=> b!7069236 (=> res!2886814 e!4249991)))

(declare-fun lt!2543515 () (InoxSet Context!13254))

(declare-fun derivationStepZipper!3081 ((InoxSet Context!13254) C!35532) (InoxSet Context!13254))

(assert (=> b!7069236 (= res!2886814 (not (= (derivationStepZipper!3081 lt!2543515 (h!74744 s!7408)) lt!2543522)))))

(declare-fun lambda!424780 () Int)

(declare-fun flatMap!2557 ((InoxSet Context!13254) Int) (InoxSet Context!13254))

(assert (=> b!7069236 (= (flatMap!2557 lt!2543515 lambda!424780) (derivationStepZipperUp!2215 lt!2543526 (h!74744 s!7408)))))

(declare-fun lt!2543529 () Unit!161972)

(declare-fun lemmaFlatMapOnSingletonSet!2066 ((InoxSet Context!13254) Context!13254 Int) Unit!161972)

(assert (=> b!7069236 (= lt!2543529 (lemmaFlatMapOnSingletonSet!2066 lt!2543515 lt!2543526 lambda!424780))))

(assert (=> b!7069236 (= lt!2543522 (derivationStepZipperUp!2215 lt!2543526 (h!74744 s!7408)))))

(declare-fun lt!2543525 () Unit!161972)

(assert (=> b!7069236 (= lt!2543525 (lemmaConcatPreservesForall!942 (exprs!7127 lt!2543527) (exprs!7127 ct2!306) lambda!424779))))

(declare-fun b!7069237 () Bool)

(assert (=> b!7069237 (= e!4249994 e!4249989)))

(declare-fun res!2886809 () Bool)

(assert (=> b!7069237 (=> res!2886809 e!4249989)))

(assert (=> b!7069237 (= res!2886809 (not (= lt!2543515 lt!2543511)))))

(assert (=> b!7069237 (= lt!2543515 (store ((as const (Array Context!13254 Bool)) false) lt!2543526 true))))

(declare-fun lt!2543517 () Unit!161972)

(assert (=> b!7069237 (= lt!2543517 (lemmaConcatPreservesForall!942 (exprs!7127 lt!2543527) (exprs!7127 ct2!306) lambda!424779))))

(declare-fun res!2886807 () Bool)

(assert (=> start!686560 (=> (not res!2886807) (not e!4249997))))

(assert (=> start!686560 (= res!2886807 (matchZipper!3171 lt!2543502 s!7408))))

(assert (=> start!686560 (= lt!2543502 (appendTo!752 z1!570 ct2!306))))

(assert (=> start!686560 e!4249997))

(declare-fun condSetEmpty!50192 () Bool)

(assert (=> start!686560 (= condSetEmpty!50192 (= z1!570 ((as const (Array Context!13254 Bool)) false)))))

(assert (=> start!686560 setRes!50192))

(declare-fun e!4249998 () Bool)

(assert (=> start!686560 (and (inv!86936 ct2!306) e!4249998)))

(assert (=> start!686560 e!4249992))

(declare-fun b!7069238 () Bool)

(declare-fun tp!1942004 () Bool)

(assert (=> b!7069238 (= e!4249998 tp!1942004)))

(declare-fun b!7069239 () Bool)

(declare-fun e!4250000 () Bool)

(assert (=> b!7069239 (= e!4249996 e!4250000)))

(declare-fun res!2886820 () Bool)

(assert (=> b!7069239 (=> res!2886820 e!4250000)))

(assert (=> b!7069239 (= res!2886820 e!4249999)))

(declare-fun res!2886808 () Bool)

(assert (=> b!7069239 (=> (not res!2886808) (not e!4249999))))

(declare-fun lt!2543516 () Bool)

(assert (=> b!7069239 (= res!2886808 (not (= lt!2543516 lt!2543508)))))

(assert (=> b!7069239 (= lt!2543516 (matchZipper!3171 lt!2543522 (t!382203 s!7408)))))

(declare-fun lt!2543532 () Unit!161972)

(assert (=> b!7069239 (= lt!2543532 (lemmaConcatPreservesForall!942 lt!2543520 (exprs!7127 ct2!306) lambda!424779))))

(assert (=> b!7069239 (= (matchZipper!3171 lt!2543531 (t!382203 s!7408)) e!4249995)))

(declare-fun res!2886811 () Bool)

(assert (=> b!7069239 (=> res!2886811 e!4249995)))

(assert (=> b!7069239 (= res!2886811 lt!2543508)))

(assert (=> b!7069239 (= lt!2543508 (matchZipper!3171 lt!2543510 (t!382203 s!7408)))))

(declare-fun lt!2543521 () Unit!161972)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1644 ((InoxSet Context!13254) (InoxSet Context!13254) List!68420) Unit!161972)

(assert (=> b!7069239 (= lt!2543521 (lemmaZipperConcatMatchesSameAsBothZippers!1644 lt!2543510 lt!2543500 (t!382203 s!7408)))))

(declare-fun lt!2543523 () Unit!161972)

(assert (=> b!7069239 (= lt!2543523 (lemmaConcatPreservesForall!942 lt!2543520 (exprs!7127 ct2!306) lambda!424779))))

(declare-fun lt!2543518 () Unit!161972)

(assert (=> b!7069239 (= lt!2543518 (lemmaConcatPreservesForall!942 lt!2543520 (exprs!7127 ct2!306) lambda!424779))))

(declare-fun b!7069240 () Bool)

(declare-fun res!2886813 () Bool)

(assert (=> b!7069240 (=> res!2886813 e!4249991)))

(declare-fun isEmpty!39856 (List!68419) Bool)

(assert (=> b!7069240 (= res!2886813 (isEmpty!39856 (exprs!7127 lt!2543527)))))

(declare-fun b!7069241 () Bool)

(declare-fun res!2886818 () Bool)

(assert (=> b!7069241 (=> res!2886818 e!4249990)))

(assert (=> b!7069241 (= res!2886818 (not (select lt!2543502 lt!2543506)))))

(declare-fun b!7069242 () Bool)

(declare-fun res!2886817 () Bool)

(assert (=> b!7069242 (=> (not res!2886817) (not e!4249997))))

(assert (=> b!7069242 (= res!2886817 ((_ is Cons!68296) s!7408))))

(declare-fun b!7069243 () Bool)

(declare-fun res!2886816 () Bool)

(assert (=> b!7069243 (=> res!2886816 e!4250000)))

(assert (=> b!7069243 (= res!2886816 (not lt!2543516))))

(declare-fun b!7069244 () Bool)

(declare-fun tp!1942006 () Bool)

(assert (=> b!7069244 (= e!4250003 tp!1942006)))

(declare-fun b!7069245 () Bool)

(assert (=> b!7069245 (= e!4250000 e!4250001)))

(declare-fun res!2886815 () Bool)

(assert (=> b!7069245 (=> res!2886815 e!4250001)))

(assert (=> b!7069245 (= res!2886815 (matchZipper!3171 lt!2543500 (t!382203 s!7408)))))

(declare-fun lt!2543505 () Unit!161972)

(assert (=> b!7069245 (= lt!2543505 (lemmaConcatPreservesForall!942 lt!2543520 (exprs!7127 ct2!306) lambda!424779))))

(assert (= (and start!686560 res!2886807) b!7069242))

(assert (= (and b!7069242 res!2886817) b!7069233))

(assert (= (and b!7069233 (not res!2886812)) b!7069241))

(assert (= (and b!7069241 (not res!2886818)) b!7069226))

(assert (= (and b!7069226 (not res!2886810)) b!7069237))

(assert (= (and b!7069237 (not res!2886809)) b!7069236))

(assert (= (and b!7069236 (not res!2886814)) b!7069231))

(assert (= (and b!7069231 (not res!2886819)) b!7069240))

(assert (= (and b!7069240 (not res!2886813)) b!7069229))

(assert (= (and b!7069229 (not res!2886806)) b!7069227))

(assert (= (and b!7069227 (not res!2886821)) b!7069239))

(assert (= (and b!7069239 (not res!2886811)) b!7069228))

(assert (= (and b!7069239 res!2886808) b!7069234))

(assert (= (and b!7069239 (not res!2886820)) b!7069243))

(assert (= (and b!7069243 (not res!2886816)) b!7069245))

(assert (= (and b!7069245 (not res!2886815)) b!7069232))

(assert (= (and b!7069232 (not res!2886805)) b!7069230))

(assert (= (and start!686560 condSetEmpty!50192) setIsEmpty!50192))

(assert (= (and start!686560 (not condSetEmpty!50192)) setNonEmpty!50192))

(assert (= setNonEmpty!50192 b!7069244))

(assert (= start!686560 b!7069238))

(assert (= (and start!686560 ((_ is Cons!68296) s!7408)) b!7069235))

(declare-fun m!7793922 () Bool)

(assert (=> b!7069240 m!7793922))

(declare-fun m!7793924 () Bool)

(assert (=> b!7069229 m!7793924))

(declare-fun m!7793926 () Bool)

(assert (=> b!7069229 m!7793926))

(declare-fun m!7793928 () Bool)

(assert (=> b!7069233 m!7793928))

(declare-fun m!7793930 () Bool)

(assert (=> b!7069233 m!7793930))

(declare-fun m!7793932 () Bool)

(assert (=> b!7069233 m!7793932))

(declare-fun m!7793934 () Bool)

(assert (=> b!7069233 m!7793934))

(declare-fun m!7793936 () Bool)

(assert (=> b!7069233 m!7793936))

(declare-fun m!7793938 () Bool)

(assert (=> b!7069233 m!7793938))

(declare-fun m!7793940 () Bool)

(assert (=> b!7069237 m!7793940))

(declare-fun m!7793942 () Bool)

(assert (=> b!7069237 m!7793942))

(declare-fun m!7793944 () Bool)

(assert (=> b!7069239 m!7793944))

(declare-fun m!7793946 () Bool)

(assert (=> b!7069239 m!7793946))

(declare-fun m!7793948 () Bool)

(assert (=> b!7069239 m!7793948))

(assert (=> b!7069239 m!7793948))

(assert (=> b!7069239 m!7793948))

(declare-fun m!7793950 () Bool)

(assert (=> b!7069239 m!7793950))

(declare-fun m!7793952 () Bool)

(assert (=> b!7069239 m!7793952))

(declare-fun m!7793954 () Bool)

(assert (=> b!7069241 m!7793954))

(declare-fun m!7793956 () Bool)

(assert (=> setNonEmpty!50192 m!7793956))

(assert (=> b!7069227 m!7793948))

(declare-fun m!7793958 () Bool)

(assert (=> b!7069227 m!7793958))

(declare-fun m!7793960 () Bool)

(assert (=> b!7069227 m!7793960))

(assert (=> b!7069227 m!7793948))

(declare-fun m!7793962 () Bool)

(assert (=> b!7069227 m!7793962))

(declare-fun m!7793964 () Bool)

(assert (=> b!7069226 m!7793964))

(declare-fun m!7793966 () Bool)

(assert (=> b!7069226 m!7793966))

(assert (=> b!7069226 m!7793942))

(declare-fun m!7793968 () Bool)

(assert (=> b!7069226 m!7793968))

(assert (=> b!7069232 m!7793948))

(assert (=> b!7069232 m!7793948))

(declare-fun m!7793970 () Bool)

(assert (=> b!7069236 m!7793970))

(declare-fun m!7793972 () Bool)

(assert (=> b!7069236 m!7793972))

(declare-fun m!7793974 () Bool)

(assert (=> b!7069236 m!7793974))

(assert (=> b!7069236 m!7793942))

(declare-fun m!7793976 () Bool)

(assert (=> b!7069236 m!7793976))

(declare-fun m!7793978 () Bool)

(assert (=> b!7069234 m!7793978))

(assert (=> b!7069234 m!7793948))

(declare-fun m!7793980 () Bool)

(assert (=> start!686560 m!7793980))

(declare-fun m!7793982 () Bool)

(assert (=> start!686560 m!7793982))

(declare-fun m!7793984 () Bool)

(assert (=> start!686560 m!7793984))

(assert (=> b!7069228 m!7793978))

(assert (=> b!7069230 m!7793948))

(declare-fun m!7793986 () Bool)

(assert (=> b!7069230 m!7793986))

(assert (=> b!7069230 m!7793986))

(declare-fun m!7793988 () Bool)

(assert (=> b!7069230 m!7793988))

(assert (=> b!7069230 m!7793948))

(declare-fun m!7793990 () Bool)

(assert (=> b!7069230 m!7793990))

(declare-fun m!7793992 () Bool)

(assert (=> b!7069230 m!7793992))

(assert (=> b!7069245 m!7793978))

(assert (=> b!7069245 m!7793948))

(check-sat (not b!7069245) (not b!7069232) (not b!7069235) (not b!7069236) (not b!7069228) (not b!7069233) (not b!7069227) (not b!7069244) (not b!7069240) (not b!7069230) (not b!7069229) (not start!686560) tp_is_empty!44487 (not b!7069238) (not b!7069237) (not b!7069239) (not b!7069226) (not setNonEmpty!50192) (not b!7069234))
(check-sat)
