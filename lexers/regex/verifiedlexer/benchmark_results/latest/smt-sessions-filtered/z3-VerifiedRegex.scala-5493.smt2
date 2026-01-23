; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!277682 () Bool)

(assert start!277682)

(declare-fun b!2851193 () Bool)

(declare-fun e!1806571 () Bool)

(declare-fun tp!916082 () Bool)

(assert (=> b!2851193 (= e!1806571 tp!916082)))

(declare-fun tp!916076 () Bool)

(declare-datatypes ((C!17264 0))(
  ( (C!17265 (val!10666 Int)) )
))
(declare-datatypes ((Regex!8541 0))(
  ( (ElementMatch!8541 (c!459732 C!17264)) (Concat!13862 (regOne!17594 Regex!8541) (regTwo!17594 Regex!8541)) (EmptyExpr!8541) (Star!8541 (reg!8870 Regex!8541)) (EmptyLang!8541) (Union!8541 (regOne!17595 Regex!8541) (regTwo!17595 Regex!8541)) )
))
(declare-datatypes ((List!34088 0))(
  ( (Nil!33964) (Cons!33964 (h!39384 Regex!8541) (t!233119 List!34088)) )
))
(declare-datatypes ((Context!5102 0))(
  ( (Context!5103 (exprs!3051 List!34088)) )
))
(declare-fun setElem!25126 () Context!5102)

(declare-fun setRes!25126 () Bool)

(declare-fun setNonEmpty!25126 () Bool)

(declare-fun inv!45989 (Context!5102) Bool)

(assert (=> setNonEmpty!25126 (= setRes!25126 (and tp!916076 (inv!45989 setElem!25126) e!1806571))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!809 () (InoxSet Context!5102))

(declare-fun setRest!25126 () (InoxSet Context!5102))

(assert (=> setNonEmpty!25126 (= z!809 ((_ map or) (store ((as const (Array Context!5102 Bool)) false) setElem!25126 true) setRest!25126))))

(declare-fun b!2851194 () Bool)

(declare-fun e!1806574 () Bool)

(declare-fun tp!916084 () Bool)

(declare-fun tp!916083 () Bool)

(assert (=> b!2851194 (= e!1806574 (and tp!916084 tp!916083))))

(declare-fun b!2851195 () Bool)

(declare-fun e!1806568 () Bool)

(declare-datatypes ((List!34089 0))(
  ( (Nil!33965) (Cons!33965 (h!39385 C!17264) (t!233120 List!34089)) )
))
(declare-fun prefix!862 () List!34089)

(declare-fun prefixMatchZipper!273 ((InoxSet Context!5102) List!34089) Bool)

(assert (=> b!2851195 (= e!1806568 (not (prefixMatchZipper!273 z!809 prefix!862)))))

(declare-fun b!2851196 () Bool)

(declare-fun e!1806566 () Bool)

(assert (=> b!2851196 (= e!1806566 (prefixMatchZipper!273 z!809 prefix!862))))

(declare-fun b!2851197 () Bool)

(declare-fun tp!916077 () Bool)

(declare-fun tp!916079 () Bool)

(assert (=> b!2851197 (= e!1806574 (and tp!916077 tp!916079))))

(declare-fun b!2851198 () Bool)

(declare-fun e!1806572 () Bool)

(declare-fun e!1806569 () Bool)

(assert (=> b!2851198 (= e!1806572 e!1806569)))

(declare-fun res!1185213 () Bool)

(assert (=> b!2851198 (=> (not res!1185213) (not e!1806569))))

(assert (=> b!2851198 (= res!1185213 e!1806568)))

(declare-fun res!1185215 () Bool)

(assert (=> b!2851198 (=> res!1185215 e!1806568)))

(declare-fun lt!1013491 () Bool)

(assert (=> b!2851198 (= res!1185215 lt!1013491)))

(declare-fun r!5723 () Regex!8541)

(declare-fun prefixMatch!849 (Regex!8541 List!34089) Bool)

(assert (=> b!2851198 (= lt!1013491 (prefixMatch!849 r!5723 prefix!862))))

(declare-fun tp!916080 () Bool)

(declare-datatypes ((List!34090 0))(
  ( (Nil!33966) (Cons!33966 (h!39386 Context!5102) (t!233121 List!34090)) )
))
(declare-fun zl!222 () List!34090)

(declare-fun b!2851199 () Bool)

(declare-fun e!1806573 () Bool)

(declare-fun e!1806570 () Bool)

(assert (=> b!2851199 (= e!1806570 (and (inv!45989 (h!39386 zl!222)) e!1806573 tp!916080))))

(declare-fun b!2851200 () Bool)

(declare-fun tp!916078 () Bool)

(assert (=> b!2851200 (= e!1806574 tp!916078)))

(declare-fun b!2851201 () Bool)

(declare-fun tp_is_empty!14819 () Bool)

(assert (=> b!2851201 (= e!1806574 tp_is_empty!14819)))

(declare-fun b!2851203 () Bool)

(declare-fun e!1806567 () Bool)

(declare-fun tp!916081 () Bool)

(assert (=> b!2851203 (= e!1806567 (and tp_is_empty!14819 tp!916081))))

(declare-fun b!2851204 () Bool)

(declare-fun res!1185217 () Bool)

(assert (=> b!2851204 (=> (not res!1185217) (not e!1806572))))

(declare-fun toList!1954 ((InoxSet Context!5102)) List!34090)

(assert (=> b!2851204 (= res!1185217 (= (toList!1954 z!809) zl!222))))

(declare-fun b!2851205 () Bool)

(assert (=> b!2851205 (= e!1806569 false)))

(declare-fun lt!1013490 () Bool)

(assert (=> b!2851205 (= lt!1013490 e!1806566)))

(declare-fun res!1185216 () Bool)

(assert (=> b!2851205 (=> res!1185216 e!1806566)))

(assert (=> b!2851205 (= res!1185216 (not lt!1013491))))

(declare-fun setIsEmpty!25126 () Bool)

(assert (=> setIsEmpty!25126 setRes!25126))

(declare-fun b!2851206 () Bool)

(declare-fun tp!916075 () Bool)

(assert (=> b!2851206 (= e!1806573 tp!916075)))

(declare-fun b!2851202 () Bool)

(declare-fun res!1185218 () Bool)

(assert (=> b!2851202 (=> (not res!1185218) (not e!1806572))))

(declare-fun unfocusZipper!213 (List!34090) Regex!8541)

(assert (=> b!2851202 (= res!1185218 (= r!5723 (unfocusZipper!213 zl!222)))))

(declare-fun res!1185214 () Bool)

(assert (=> start!277682 (=> (not res!1185214) (not e!1806572))))

(declare-fun validRegex!3411 (Regex!8541) Bool)

(assert (=> start!277682 (= res!1185214 (validRegex!3411 r!5723))))

(assert (=> start!277682 e!1806572))

(assert (=> start!277682 e!1806574))

(declare-fun condSetEmpty!25126 () Bool)

(assert (=> start!277682 (= condSetEmpty!25126 (= z!809 ((as const (Array Context!5102 Bool)) false)))))

(assert (=> start!277682 setRes!25126))

(assert (=> start!277682 e!1806570))

(assert (=> start!277682 e!1806567))

(assert (= (and start!277682 res!1185214) b!2851204))

(assert (= (and b!2851204 res!1185217) b!2851202))

(assert (= (and b!2851202 res!1185218) b!2851198))

(assert (= (and b!2851198 (not res!1185215)) b!2851195))

(assert (= (and b!2851198 res!1185213) b!2851205))

(assert (= (and b!2851205 (not res!1185216)) b!2851196))

(get-info :version)

(assert (= (and start!277682 ((_ is ElementMatch!8541) r!5723)) b!2851201))

(assert (= (and start!277682 ((_ is Concat!13862) r!5723)) b!2851197))

(assert (= (and start!277682 ((_ is Star!8541) r!5723)) b!2851200))

(assert (= (and start!277682 ((_ is Union!8541) r!5723)) b!2851194))

(assert (= (and start!277682 condSetEmpty!25126) setIsEmpty!25126))

(assert (= (and start!277682 (not condSetEmpty!25126)) setNonEmpty!25126))

(assert (= setNonEmpty!25126 b!2851193))

(assert (= b!2851199 b!2851206))

(assert (= (and start!277682 ((_ is Cons!33966) zl!222)) b!2851199))

(assert (= (and start!277682 ((_ is Cons!33965) prefix!862)) b!2851203))

(declare-fun m!3276947 () Bool)

(assert (=> b!2851199 m!3276947))

(declare-fun m!3276949 () Bool)

(assert (=> b!2851196 m!3276949))

(declare-fun m!3276951 () Bool)

(assert (=> setNonEmpty!25126 m!3276951))

(declare-fun m!3276953 () Bool)

(assert (=> b!2851202 m!3276953))

(assert (=> b!2851195 m!3276949))

(declare-fun m!3276955 () Bool)

(assert (=> b!2851198 m!3276955))

(declare-fun m!3276957 () Bool)

(assert (=> b!2851204 m!3276957))

(declare-fun m!3276959 () Bool)

(assert (=> start!277682 m!3276959))

(check-sat (not start!277682) (not b!2851206) (not b!2851204) (not b!2851196) tp_is_empty!14819 (not b!2851198) (not b!2851200) (not b!2851195) (not b!2851194) (not b!2851197) (not b!2851203) (not b!2851193) (not b!2851199) (not b!2851202) (not setNonEmpty!25126))
(check-sat)
