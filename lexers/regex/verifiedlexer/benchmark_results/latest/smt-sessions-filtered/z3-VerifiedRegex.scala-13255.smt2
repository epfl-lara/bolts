; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!721200 () Bool)

(assert start!721200)

(declare-fun b!7406196 () Bool)

(assert (=> b!7406196 true))

(declare-fun b!7406186 () Bool)

(declare-fun e!4429628 () Bool)

(declare-fun tp!2118510 () Bool)

(assert (=> b!7406186 (= e!4429628 tp!2118510)))

(declare-fun res!2981900 () Bool)

(declare-fun e!4429623 () Bool)

(assert (=> start!721200 (=> (not res!2981900) (not e!4429623))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!39044 0))(
  ( (C!39045 (val!29896 Int)) )
))
(declare-datatypes ((Regex!19385 0))(
  ( (ElementMatch!19385 (c!1374660 C!39044)) (Concat!28230 (regOne!39282 Regex!19385) (regTwo!39282 Regex!19385)) (EmptyExpr!19385) (Star!19385 (reg!19714 Regex!19385)) (EmptyLang!19385) (Union!19385 (regOne!39283 Regex!19385) (regTwo!39283 Regex!19385)) )
))
(declare-datatypes ((List!71953 0))(
  ( (Nil!71829) (Cons!71829 (h!78277 Regex!19385) (t!386512 List!71953)) )
))
(declare-datatypes ((Context!16650 0))(
  ( (Context!16651 (exprs!8825 List!71953)) )
))
(declare-fun z!3451 () (InoxSet Context!16650))

(declare-fun c!10532 () Context!16650)

(assert (=> start!721200 (= res!2981900 (= z!3451 (store ((as const (Array Context!16650 Bool)) false) c!10532 true)))))

(assert (=> start!721200 e!4429623))

(declare-fun condSetEmpty!56108 () Bool)

(assert (=> start!721200 (= condSetEmpty!56108 (= z!3451 ((as const (Array Context!16650 Bool)) false)))))

(declare-fun setRes!56108 () Bool)

(assert (=> start!721200 setRes!56108))

(declare-fun e!4429626 () Bool)

(declare-fun inv!91823 (Context!16650) Bool)

(assert (=> start!721200 (and (inv!91823 c!10532) e!4429626)))

(declare-fun tp_is_empty!49033 () Bool)

(assert (=> start!721200 tp_is_empty!49033))

(declare-fun e!4429627 () Bool)

(assert (=> start!721200 e!4429627))

(declare-fun b!7406187 () Bool)

(declare-fun res!2981898 () Bool)

(assert (=> b!7406187 (=> (not res!2981898) (not e!4429623))))

(declare-fun isEmpty!41025 (List!71953) Bool)

(assert (=> b!7406187 (= res!2981898 (not (isEmpty!41025 (exprs!8825 c!10532))))))

(declare-fun b!7406188 () Bool)

(declare-datatypes ((Unit!165665 0))(
  ( (Unit!165666) )
))
(declare-fun e!4429629 () Unit!165665)

(declare-fun Unit!165667 () Unit!165665)

(assert (=> b!7406188 (= e!4429629 Unit!165667)))

(declare-fun b!7406189 () Bool)

(declare-fun e!4429625 () Bool)

(declare-fun tp!2118509 () Bool)

(assert (=> b!7406189 (= e!4429625 tp!2118509)))

(declare-fun b!7406190 () Bool)

(declare-fun res!2981904 () Bool)

(assert (=> b!7406190 (=> (not res!2981904) (not e!4429623))))

(declare-datatypes ((List!71954 0))(
  ( (Nil!71830) (Cons!71830 (h!78278 C!39044) (t!386513 List!71954)) )
))
(declare-fun s!7927 () List!71954)

(declare-fun a!2228 () C!39044)

(get-info :version)

(assert (=> b!7406190 (= res!2981904 (and (or (not ((_ is Cons!71830) s!7927)) (not (= (h!78278 s!7927) a!2228))) ((_ is Cons!71830) s!7927) (not (= (h!78278 s!7927) a!2228))))))

(declare-fun b!7406191 () Bool)

(declare-fun e!4429624 () Bool)

(assert (=> b!7406191 (= e!4429624 false)))

(declare-fun setNonEmpty!56108 () Bool)

(declare-fun setElem!56108 () Context!16650)

(declare-fun tp!2118511 () Bool)

(assert (=> setNonEmpty!56108 (= setRes!56108 (and tp!2118511 (inv!91823 setElem!56108) e!4429628))))

(declare-fun setRest!56108 () (InoxSet Context!16650))

(assert (=> setNonEmpty!56108 (= z!3451 ((_ map or) (store ((as const (Array Context!16650 Bool)) false) setElem!56108 true) setRest!56108))))

(declare-fun b!7406192 () Bool)

(declare-fun res!2981902 () Bool)

(assert (=> b!7406192 (=> (not res!2981902) (not e!4429623))))

(declare-fun tail!14792 (List!71953) List!71953)

(assert (=> b!7406192 (= res!2981902 (isEmpty!41025 (tail!14792 (exprs!8825 c!10532))))))

(declare-fun b!7406193 () Bool)

(declare-fun e!4429622 () Bool)

(declare-fun lt!2618146 () Bool)

(assert (=> b!7406193 (= e!4429622 (not lt!2618146))))

(declare-fun lt!2618145 () Unit!165665)

(assert (=> b!7406193 (= lt!2618145 e!4429629)))

(declare-fun c!1374659 () Bool)

(assert (=> b!7406193 (= c!1374659 (not lt!2618146))))

(declare-fun lt!2618147 () (InoxSet Context!16650))

(assert (=> b!7406193 (= lt!2618146 (= lt!2618147 ((as const (Array Context!16650 Bool)) false)))))

(declare-fun b!7406194 () Bool)

(declare-fun tp!2118507 () Bool)

(assert (=> b!7406194 (= e!4429626 tp!2118507)))

(declare-fun setIsEmpty!56108 () Bool)

(assert (=> setIsEmpty!56108 setRes!56108))

(declare-fun b!7406195 () Bool)

(declare-fun res!2981903 () Bool)

(assert (=> b!7406195 (=> (not res!2981903) (not e!4429623))))

(declare-fun head!15156 (List!71953) Regex!19385)

(assert (=> b!7406195 (= res!2981903 (= (head!15156 (exprs!8825 c!10532)) (ElementMatch!19385 a!2228)))))

(declare-fun Unit!165668 () Unit!165665)

(assert (=> b!7406196 (= e!4429629 Unit!165668)))

(declare-fun empty!3511 () Context!16650)

(assert (=> b!7406196 (and (inv!91823 empty!3511) e!4429625)))

(assert (=> b!7406196 true))

(declare-fun res!2981901 () Bool)

(declare-fun lambda!459376 () Int)

(declare-fun flatMapPost!198 ((InoxSet Context!16650) Int Context!16650) Context!16650)

(declare-datatypes ((List!71955 0))(
  ( (Nil!71831) (Cons!71831 (h!78279 Context!16650) (t!386514 List!71955)) )
))
(declare-fun head!15157 (List!71955) Context!16650)

(declare-fun toList!11746 ((InoxSet Context!16650)) List!71955)

(assert (=> b!7406196 (= res!2981901 (= (flatMapPost!198 z!3451 lambda!459376 (head!15157 (toList!11746 lt!2618147))) empty!3511))))

(assert (=> b!7406196 (=> (not res!2981901) (not e!4429624))))

(assert (=> b!7406196 e!4429624))

(declare-fun b!7406197 () Bool)

(declare-fun tp!2118508 () Bool)

(assert (=> b!7406197 (= e!4429627 (and tp_is_empty!49033 tp!2118508))))

(declare-fun b!7406198 () Bool)

(assert (=> b!7406198 (= e!4429623 e!4429622)))

(declare-fun res!2981899 () Bool)

(assert (=> b!7406198 (=> (not res!2981899) (not e!4429622))))

(declare-fun derivationStepZipperUp!2791 (Context!16650 C!39044) (InoxSet Context!16650))

(assert (=> b!7406198 (= res!2981899 (= (derivationStepZipperUp!2791 c!10532 (h!78278 s!7927)) ((as const (Array Context!16650 Bool)) false)))))

(declare-fun derivationStepZipper!3667 ((InoxSet Context!16650) C!39044) (InoxSet Context!16650))

(assert (=> b!7406198 (= lt!2618147 (derivationStepZipper!3667 z!3451 (h!78278 s!7927)))))

(assert (= (and start!721200 res!2981900) b!7406187))

(assert (= (and b!7406187 res!2981898) b!7406195))

(assert (= (and b!7406195 res!2981903) b!7406192))

(assert (= (and b!7406192 res!2981902) b!7406190))

(assert (= (and b!7406190 res!2981904) b!7406198))

(assert (= (and b!7406198 res!2981899) b!7406193))

(assert (= (and b!7406193 c!1374659) b!7406196))

(assert (= (and b!7406193 (not c!1374659)) b!7406188))

(assert (= b!7406196 b!7406189))

(assert (= (and b!7406196 res!2981901) b!7406191))

(assert (= (and start!721200 condSetEmpty!56108) setIsEmpty!56108))

(assert (= (and start!721200 (not condSetEmpty!56108)) setNonEmpty!56108))

(assert (= setNonEmpty!56108 b!7406186))

(assert (= start!721200 b!7406194))

(assert (= (and start!721200 ((_ is Cons!71830) s!7927)) b!7406197))

(declare-fun m!8041928 () Bool)

(assert (=> b!7406195 m!8041928))

(declare-fun m!8041930 () Bool)

(assert (=> b!7406192 m!8041930))

(assert (=> b!7406192 m!8041930))

(declare-fun m!8041932 () Bool)

(assert (=> b!7406192 m!8041932))

(declare-fun m!8041934 () Bool)

(assert (=> b!7406187 m!8041934))

(declare-fun m!8041936 () Bool)

(assert (=> b!7406198 m!8041936))

(declare-fun m!8041938 () Bool)

(assert (=> b!7406198 m!8041938))

(declare-fun m!8041940 () Bool)

(assert (=> setNonEmpty!56108 m!8041940))

(declare-fun m!8041942 () Bool)

(assert (=> b!7406196 m!8041942))

(declare-fun m!8041944 () Bool)

(assert (=> b!7406196 m!8041944))

(assert (=> b!7406196 m!8041944))

(declare-fun m!8041946 () Bool)

(assert (=> b!7406196 m!8041946))

(assert (=> b!7406196 m!8041946))

(declare-fun m!8041948 () Bool)

(assert (=> b!7406196 m!8041948))

(declare-fun m!8041950 () Bool)

(assert (=> start!721200 m!8041950))

(declare-fun m!8041952 () Bool)

(assert (=> start!721200 m!8041952))

(check-sat (not b!7406189) (not b!7406195) tp_is_empty!49033 (not b!7406194) (not b!7406192) (not b!7406187) (not b!7406196) (not b!7406186) (not start!721200) (not b!7406198) (not setNonEmpty!56108) (not b!7406197))
(check-sat)
