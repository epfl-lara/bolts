; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!701484 () Bool)

(assert start!701484)

(declare-fun b!7230955 () Bool)

(assert (=> b!7230955 true))

(declare-fun b!7230954 () Bool)

(declare-fun e!4334830 () Bool)

(declare-fun tp!2033798 () Bool)

(assert (=> b!7230954 (= e!4334830 tp!2033798)))

(declare-fun res!2933785 () Bool)

(declare-fun e!4334832 () Bool)

(assert (=> start!701484 (=> (not res!2933785) (not e!4334832))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!37256 0))(
  ( (C!37257 (val!28576 Int)) )
))
(declare-datatypes ((Regex!18491 0))(
  ( (ElementMatch!18491 (c!1341493 C!37256)) (Concat!27336 (regOne!37494 Regex!18491) (regTwo!37494 Regex!18491)) (EmptyExpr!18491) (Star!18491 (reg!18820 Regex!18491)) (EmptyLang!18491) (Union!18491 (regOne!37495 Regex!18491) (regTwo!37495 Regex!18491)) )
))
(declare-datatypes ((List!70081 0))(
  ( (Nil!69957) (Cons!69957 (h!76405 Regex!18491) (t!384130 List!70081)) )
))
(declare-datatypes ((Context!14862 0))(
  ( (Context!14863 (exprs!7931 List!70081)) )
))
(declare-fun lt!2573264 () (InoxSet Context!14862))

(declare-datatypes ((List!70082 0))(
  ( (Nil!69958) (Cons!69958 (h!76406 C!37256) (t!384131 List!70082)) )
))
(declare-fun s1!1971 () List!70082)

(declare-fun matchZipper!3401 ((InoxSet Context!14862) List!70082) Bool)

(assert (=> start!701484 (= res!2933785 (matchZipper!3401 lt!2573264 s1!1971))))

(declare-fun ct1!232 () Context!14862)

(assert (=> start!701484 (= lt!2573264 (store ((as const (Array Context!14862 Bool)) false) ct1!232 true))))

(assert (=> start!701484 e!4334832))

(declare-fun inv!89237 (Context!14862) Bool)

(assert (=> start!701484 (and (inv!89237 ct1!232) e!4334830)))

(declare-fun e!4334829 () Bool)

(assert (=> start!701484 e!4334829))

(declare-fun e!4334834 () Bool)

(assert (=> start!701484 e!4334834))

(declare-fun ct2!328 () Context!14862)

(declare-fun e!4334826 () Bool)

(assert (=> start!701484 (and (inv!89237 ct2!328) e!4334826)))

(declare-fun e!4334833 () Bool)

(declare-fun e!4334827 () Bool)

(assert (=> b!7230955 (= e!4334833 (not e!4334827))))

(declare-fun res!2933787 () Bool)

(assert (=> b!7230955 (=> res!2933787 e!4334827)))

(declare-fun lt!2573267 () (InoxSet Context!14862))

(declare-fun lambda!439261 () Int)

(declare-fun exists!4125 ((InoxSet Context!14862) Int) Bool)

(assert (=> b!7230955 (= res!2933787 (not (exists!4125 lt!2573267 lambda!439261)))))

(declare-datatypes ((List!70083 0))(
  ( (Nil!69959) (Cons!69959 (h!76407 Context!14862) (t!384132 List!70083)) )
))
(declare-fun lt!2573263 () List!70083)

(declare-fun exists!4126 (List!70083 Int) Bool)

(assert (=> b!7230955 (exists!4126 lt!2573263 lambda!439261)))

(declare-datatypes ((Unit!163517 0))(
  ( (Unit!163518) )
))
(declare-fun lt!2573269 () Unit!163517)

(declare-fun lemmaZipperMatchesExistsMatchingContext!634 (List!70083 List!70082) Unit!163517)

(assert (=> b!7230955 (= lt!2573269 (lemmaZipperMatchesExistsMatchingContext!634 lt!2573263 (t!384131 s1!1971)))))

(declare-fun toList!11348 ((InoxSet Context!14862)) List!70083)

(assert (=> b!7230955 (= lt!2573263 (toList!11348 lt!2573267))))

(declare-fun b!7230956 () Bool)

(declare-fun tp!2033797 () Bool)

(assert (=> b!7230956 (= e!4334826 tp!2033797)))

(declare-fun b!7230957 () Bool)

(declare-fun e!4334831 () Bool)

(assert (=> b!7230957 (= e!4334831 (not (= (exprs!7931 ct1!232) Nil!69957)))))

(declare-fun b!7230958 () Bool)

(declare-fun e!4334828 () Bool)

(assert (=> b!7230958 (= e!4334832 e!4334828)))

(declare-fun res!2933790 () Bool)

(assert (=> b!7230958 (=> (not res!2933790) (not e!4334828))))

(get-info :version)

(assert (=> b!7230958 (= res!2933790 (and (not ((_ is Nil!69957) (exprs!7931 ct1!232))) ((_ is Cons!69958) s1!1971)))))

(declare-fun lt!2573259 () List!70081)

(declare-fun ++!16282 (List!70081 List!70081) List!70081)

(assert (=> b!7230958 (= lt!2573259 (++!16282 (exprs!7931 ct1!232) (exprs!7931 ct2!328)))))

(declare-fun lt!2573268 () Unit!163517)

(declare-fun lambda!439260 () Int)

(declare-fun lemmaConcatPreservesForall!1300 (List!70081 List!70081 Int) Unit!163517)

(assert (=> b!7230958 (= lt!2573268 (lemmaConcatPreservesForall!1300 (exprs!7931 ct1!232) (exprs!7931 ct2!328) lambda!439260))))

(declare-fun b!7230959 () Bool)

(declare-fun res!2933788 () Bool)

(assert (=> b!7230959 (=> (not res!2933788) (not e!4334832))))

(declare-fun s2!1849 () List!70082)

(assert (=> b!7230959 (= res!2933788 (matchZipper!3401 (store ((as const (Array Context!14862 Bool)) false) ct2!328 true) s2!1849))))

(declare-fun b!7230960 () Bool)

(declare-fun tp_is_empty!46447 () Bool)

(declare-fun tp!2033799 () Bool)

(assert (=> b!7230960 (= e!4334834 (and tp_is_empty!46447 tp!2033799))))

(declare-fun b!7230961 () Bool)

(declare-fun tp!2033800 () Bool)

(assert (=> b!7230961 (= e!4334829 (and tp_is_empty!46447 tp!2033800))))

(declare-fun b!7230962 () Bool)

(assert (=> b!7230962 (= e!4334827 e!4334831)))

(declare-fun res!2933789 () Bool)

(assert (=> b!7230962 (=> res!2933789 e!4334831)))

(declare-fun isEmpty!40318 (List!70081) Bool)

(assert (=> b!7230962 (= res!2933789 (isEmpty!40318 (exprs!7931 ct1!232)))))

(declare-fun lt!2573262 () (InoxSet Context!14862))

(declare-fun derivationStepZipperUp!2365 (Context!14862 C!37256) (InoxSet Context!14862))

(assert (=> b!7230962 (= lt!2573262 (derivationStepZipperUp!2365 ct1!232 (h!76406 s1!1971)))))

(declare-fun lt!2573260 () Context!14862)

(declare-fun lt!2573266 () Unit!163517)

(assert (=> b!7230962 (= lt!2573266 (lemmaConcatPreservesForall!1300 (exprs!7931 lt!2573260) (exprs!7931 ct2!328) lambda!439260))))

(declare-fun ++!16283 (List!70082 List!70082) List!70082)

(assert (=> b!7230962 (matchZipper!3401 (store ((as const (Array Context!14862 Bool)) false) (Context!14863 (++!16282 (exprs!7931 lt!2573260) (exprs!7931 ct2!328))) true) (++!16283 (t!384131 s1!1971) s2!1849))))

(declare-fun lt!2573265 () Unit!163517)

(assert (=> b!7230962 (= lt!2573265 (lemmaConcatPreservesForall!1300 (exprs!7931 lt!2573260) (exprs!7931 ct2!328) lambda!439260))))

(declare-fun lt!2573261 () Unit!163517)

(declare-fun lemmaConcatenateContextMatchesConcatOfStrings!282 (Context!14862 Context!14862 List!70082 List!70082) Unit!163517)

(assert (=> b!7230962 (= lt!2573261 (lemmaConcatenateContextMatchesConcatOfStrings!282 lt!2573260 ct2!328 (t!384131 s1!1971) s2!1849))))

(declare-fun getWitness!2003 ((InoxSet Context!14862) Int) Context!14862)

(assert (=> b!7230962 (= lt!2573260 (getWitness!2003 lt!2573267 lambda!439261))))

(declare-fun b!7230963 () Bool)

(assert (=> b!7230963 (= e!4334828 e!4334833)))

(declare-fun res!2933786 () Bool)

(assert (=> b!7230963 (=> (not res!2933786) (not e!4334833))))

(assert (=> b!7230963 (= res!2933786 (matchZipper!3401 lt!2573267 (t!384131 s1!1971)))))

(declare-fun derivationStepZipper!3283 ((InoxSet Context!14862) C!37256) (InoxSet Context!14862))

(assert (=> b!7230963 (= lt!2573267 (derivationStepZipper!3283 lt!2573264 (h!76406 s1!1971)))))

(assert (= (and start!701484 res!2933785) b!7230959))

(assert (= (and b!7230959 res!2933788) b!7230958))

(assert (= (and b!7230958 res!2933790) b!7230963))

(assert (= (and b!7230963 res!2933786) b!7230955))

(assert (= (and b!7230955 (not res!2933787)) b!7230962))

(assert (= (and b!7230962 (not res!2933789)) b!7230957))

(assert (= start!701484 b!7230954))

(assert (= (and start!701484 ((_ is Cons!69958) s1!1971)) b!7230961))

(assert (= (and start!701484 ((_ is Cons!69958) s2!1849)) b!7230960))

(assert (= start!701484 b!7230956))

(declare-fun m!7899602 () Bool)

(assert (=> b!7230962 m!7899602))

(assert (=> b!7230962 m!7899602))

(declare-fun m!7899604 () Bool)

(assert (=> b!7230962 m!7899604))

(declare-fun m!7899606 () Bool)

(assert (=> b!7230962 m!7899606))

(declare-fun m!7899608 () Bool)

(assert (=> b!7230962 m!7899608))

(declare-fun m!7899610 () Bool)

(assert (=> b!7230962 m!7899610))

(declare-fun m!7899612 () Bool)

(assert (=> b!7230962 m!7899612))

(declare-fun m!7899614 () Bool)

(assert (=> b!7230962 m!7899614))

(assert (=> b!7230962 m!7899604))

(declare-fun m!7899616 () Bool)

(assert (=> b!7230962 m!7899616))

(declare-fun m!7899618 () Bool)

(assert (=> b!7230962 m!7899618))

(assert (=> b!7230962 m!7899616))

(declare-fun m!7899620 () Bool)

(assert (=> b!7230955 m!7899620))

(declare-fun m!7899622 () Bool)

(assert (=> b!7230955 m!7899622))

(declare-fun m!7899624 () Bool)

(assert (=> b!7230955 m!7899624))

(declare-fun m!7899626 () Bool)

(assert (=> b!7230955 m!7899626))

(declare-fun m!7899628 () Bool)

(assert (=> start!701484 m!7899628))

(declare-fun m!7899630 () Bool)

(assert (=> start!701484 m!7899630))

(declare-fun m!7899632 () Bool)

(assert (=> start!701484 m!7899632))

(declare-fun m!7899634 () Bool)

(assert (=> start!701484 m!7899634))

(declare-fun m!7899636 () Bool)

(assert (=> b!7230958 m!7899636))

(declare-fun m!7899638 () Bool)

(assert (=> b!7230958 m!7899638))

(declare-fun m!7899640 () Bool)

(assert (=> b!7230959 m!7899640))

(assert (=> b!7230959 m!7899640))

(declare-fun m!7899642 () Bool)

(assert (=> b!7230959 m!7899642))

(declare-fun m!7899644 () Bool)

(assert (=> b!7230963 m!7899644))

(declare-fun m!7899646 () Bool)

(assert (=> b!7230963 m!7899646))

(check-sat (not start!701484) (not b!7230955) (not b!7230959) (not b!7230958) (not b!7230960) (not b!7230954) tp_is_empty!46447 (not b!7230963) (not b!7230961) (not b!7230962) (not b!7230956))
(check-sat)
