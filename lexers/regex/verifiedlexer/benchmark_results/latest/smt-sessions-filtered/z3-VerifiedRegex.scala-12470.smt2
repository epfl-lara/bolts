; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!694792 () Bool)

(assert start!694792)

(declare-fun b!7131979 () Bool)

(declare-fun res!2910040 () Bool)

(declare-fun e!4286056 () Bool)

(assert (=> b!7131979 (=> (not res!2910040) (not e!4286056))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!36416 0))(
  ( (C!36417 (val!28134 Int)) )
))
(declare-datatypes ((Regex!18073 0))(
  ( (ElementMatch!18073 (c!1330275 C!36416)) (Concat!26918 (regOne!36658 Regex!18073) (regTwo!36658 Regex!18073)) (EmptyExpr!18073) (Star!18073 (reg!18402 Regex!18073)) (EmptyLang!18073) (Union!18073 (regOne!36659 Regex!18073) (regTwo!36659 Regex!18073)) )
))
(declare-datatypes ((List!69200 0))(
  ( (Nil!69076) (Cons!69076 (h!75524 Regex!18073) (t!383177 List!69200)) )
))
(declare-datatypes ((Context!14134 0))(
  ( (Context!14135 (exprs!7567 List!69200)) )
))
(declare-fun z2!457 () (InoxSet Context!14134))

(declare-datatypes ((List!69201 0))(
  ( (Nil!69077) (Cons!69077 (h!75525 C!36416) (t!383178 List!69201)) )
))
(declare-fun s2!1615 () List!69201)

(declare-fun matchZipper!3329 ((InoxSet Context!14134) List!69201) Bool)

(assert (=> b!7131979 (= res!2910040 (matchZipper!3329 z2!457 s2!1615))))

(declare-fun setRes!52102 () Bool)

(declare-fun tp!1965516 () Bool)

(declare-fun setElem!52103 () Context!14134)

(declare-fun setNonEmpty!52102 () Bool)

(declare-fun e!4286054 () Bool)

(declare-fun inv!88210 (Context!14134) Bool)

(assert (=> setNonEmpty!52102 (= setRes!52102 (and tp!1965516 (inv!88210 setElem!52103) e!4286054))))

(declare-fun setRest!52103 () (InoxSet Context!14134))

(assert (=> setNonEmpty!52102 (= z2!457 ((_ map or) (store ((as const (Array Context!14134 Bool)) false) setElem!52103 true) setRest!52103))))

(declare-fun b!7131980 () Bool)

(declare-fun res!2910043 () Bool)

(assert (=> b!7131980 (=> (not res!2910043) (not e!4286056))))

(declare-fun z1!538 () (InoxSet Context!14134))

(declare-fun s1!1678 () List!69201)

(assert (=> b!7131980 (= res!2910043 (matchZipper!3329 z1!538 s1!1678))))

(declare-fun b!7131981 () Bool)

(declare-fun tp!1965512 () Bool)

(assert (=> b!7131981 (= e!4286054 tp!1965512)))

(declare-fun b!7131982 () Bool)

(declare-fun e!4286059 () Bool)

(declare-fun tp_is_empty!45747 () Bool)

(declare-fun tp!1965517 () Bool)

(assert (=> b!7131982 (= e!4286059 (and tp_is_empty!45747 tp!1965517))))

(declare-fun setIsEmpty!52102 () Bool)

(assert (=> setIsEmpty!52102 setRes!52102))

(declare-fun b!7131983 () Bool)

(declare-fun e!4286058 () Bool)

(assert (=> b!7131983 (= e!4286056 e!4286058)))

(declare-fun res!2910042 () Bool)

(assert (=> b!7131983 (=> (not res!2910042) (not e!4286058))))

(declare-datatypes ((tuple2!68380 0))(
  ( (tuple2!68381 (_1!37493 List!69201) (_2!37493 List!69201)) )
))
(declare-datatypes ((Option!17022 0))(
  ( (None!17021) (Some!17021 (v!53515 tuple2!68380)) )
))
(declare-fun lt!2564929 () Option!17022)

(declare-fun isDefined!13719 (Option!17022) Bool)

(assert (=> b!7131983 (= res!2910042 (isDefined!13719 lt!2564929))))

(assert (=> b!7131983 (= lt!2564929 (Some!17021 (tuple2!68381 s1!1678 s2!1615)))))

(declare-fun b!7131984 () Bool)

(declare-fun e!4286052 () Bool)

(declare-fun tp!1965515 () Bool)

(assert (=> b!7131984 (= e!4286052 (and tp_is_empty!45747 tp!1965515))))

(declare-fun res!2910044 () Bool)

(assert (=> start!694792 (=> (not res!2910044) (not e!4286056))))

(declare-fun s!7358 () List!69201)

(declare-fun ++!16211 (List!69201 List!69201) List!69201)

(assert (=> start!694792 (= res!2910044 (= (++!16211 s1!1678 s2!1615) s!7358))))

(assert (=> start!694792 e!4286056))

(declare-fun condSetEmpty!52102 () Bool)

(assert (=> start!694792 (= condSetEmpty!52102 (= z2!457 ((as const (Array Context!14134 Bool)) false)))))

(assert (=> start!694792 setRes!52102))

(declare-fun e!4286057 () Bool)

(assert (=> start!694792 e!4286057))

(declare-fun condSetEmpty!52103 () Bool)

(assert (=> start!694792 (= condSetEmpty!52103 (= z1!538 ((as const (Array Context!14134 Bool)) false)))))

(declare-fun setRes!52103 () Bool)

(assert (=> start!694792 setRes!52103))

(assert (=> start!694792 e!4286052))

(assert (=> start!694792 e!4286059))

(declare-fun setIsEmpty!52103 () Bool)

(assert (=> setIsEmpty!52103 setRes!52103))

(declare-fun b!7131985 () Bool)

(declare-fun e!4286053 () Bool)

(assert (=> b!7131985 (= e!4286053 false)))

(declare-fun b!7131986 () Bool)

(declare-fun res!2910041 () Bool)

(assert (=> b!7131986 (=> (not res!2910041) (not e!4286053))))

(declare-fun lt!2564930 () tuple2!68380)

(assert (=> b!7131986 (= res!2910041 (matchZipper!3329 z2!457 (_2!37493 lt!2564930)))))

(declare-fun b!7131987 () Bool)

(declare-fun tp!1965514 () Bool)

(assert (=> b!7131987 (= e!4286057 (and tp_is_empty!45747 tp!1965514))))

(declare-fun b!7131988 () Bool)

(declare-fun e!4286055 () Bool)

(declare-fun tp!1965513 () Bool)

(assert (=> b!7131988 (= e!4286055 tp!1965513)))

(declare-fun tp!1965511 () Bool)

(declare-fun setElem!52102 () Context!14134)

(declare-fun setNonEmpty!52103 () Bool)

(assert (=> setNonEmpty!52103 (= setRes!52103 (and tp!1965511 (inv!88210 setElem!52102) e!4286055))))

(declare-fun setRest!52102 () (InoxSet Context!14134))

(assert (=> setNonEmpty!52103 (= z1!538 ((_ map or) (store ((as const (Array Context!14134 Bool)) false) setElem!52102 true) setRest!52102))))

(declare-fun b!7131989 () Bool)

(assert (=> b!7131989 (= e!4286058 e!4286053)))

(declare-fun res!2910045 () Bool)

(assert (=> b!7131989 (=> (not res!2910045) (not e!4286053))))

(assert (=> b!7131989 (= res!2910045 (matchZipper!3329 z1!538 (_1!37493 lt!2564930)))))

(declare-fun get!24254 (Option!17022) tuple2!68380)

(assert (=> b!7131989 (= lt!2564930 (get!24254 lt!2564929))))

(assert (= (and start!694792 res!2910044) b!7131980))

(assert (= (and b!7131980 res!2910043) b!7131979))

(assert (= (and b!7131979 res!2910040) b!7131983))

(assert (= (and b!7131983 res!2910042) b!7131989))

(assert (= (and b!7131989 res!2910045) b!7131986))

(assert (= (and b!7131986 res!2910041) b!7131985))

(assert (= (and start!694792 condSetEmpty!52102) setIsEmpty!52102))

(assert (= (and start!694792 (not condSetEmpty!52102)) setNonEmpty!52102))

(assert (= setNonEmpty!52102 b!7131981))

(get-info :version)

(assert (= (and start!694792 ((_ is Cons!69077) s2!1615)) b!7131987))

(assert (= (and start!694792 condSetEmpty!52103) setIsEmpty!52103))

(assert (= (and start!694792 (not condSetEmpty!52103)) setNonEmpty!52103))

(assert (= setNonEmpty!52103 b!7131988))

(assert (= (and start!694792 ((_ is Cons!69077) s1!1678)) b!7131984))

(assert (= (and start!694792 ((_ is Cons!69077) s!7358)) b!7131982))

(declare-fun m!7849366 () Bool)

(assert (=> b!7131979 m!7849366))

(declare-fun m!7849368 () Bool)

(assert (=> b!7131983 m!7849368))

(declare-fun m!7849370 () Bool)

(assert (=> setNonEmpty!52103 m!7849370))

(declare-fun m!7849372 () Bool)

(assert (=> start!694792 m!7849372))

(declare-fun m!7849374 () Bool)

(assert (=> b!7131989 m!7849374))

(declare-fun m!7849376 () Bool)

(assert (=> b!7131989 m!7849376))

(declare-fun m!7849378 () Bool)

(assert (=> b!7131980 m!7849378))

(declare-fun m!7849380 () Bool)

(assert (=> b!7131986 m!7849380))

(declare-fun m!7849382 () Bool)

(assert (=> setNonEmpty!52102 m!7849382))

(check-sat (not b!7131981) (not setNonEmpty!52102) (not b!7131989) tp_is_empty!45747 (not b!7131984) (not b!7131983) (not b!7131987) (not setNonEmpty!52103) (not b!7131980) (not b!7131979) (not b!7131982) (not b!7131986) (not b!7131988) (not start!694792))
(check-sat)
