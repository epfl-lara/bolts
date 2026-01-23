; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!541642 () Bool)

(assert start!541642)

(declare-fun bs!1194650 () Bool)

(declare-fun b!5127993 () Bool)

(declare-fun b!5127997 () Bool)

(assert (= bs!1194650 (and b!5127993 b!5127997)))

(declare-fun lambda!252316 () Int)

(declare-fun lambda!252315 () Int)

(assert (=> bs!1194650 (not (= lambda!252316 lambda!252315))))

(declare-fun bs!1194651 () Bool)

(declare-fun b!5127999 () Bool)

(assert (= bs!1194651 (and b!5127999 b!5127997)))

(declare-fun lambda!252317 () Int)

(assert (=> bs!1194651 (not (= lambda!252317 lambda!252315))))

(declare-fun bs!1194652 () Bool)

(assert (= bs!1194652 (and b!5127999 b!5127993)))

(assert (=> bs!1194652 (not (= lambda!252317 lambda!252316))))

(declare-fun b!5127990 () Bool)

(declare-fun e!3198077 () Bool)

(declare-fun e!3198078 () Bool)

(assert (=> b!5127990 (= e!3198077 e!3198078)))

(declare-fun res!2183308 () Bool)

(assert (=> b!5127990 (=> res!2183308 e!3198078)))

(declare-datatypes ((C!28836 0))(
  ( (C!28837 (val!24070 Int)) )
))
(declare-datatypes ((Regex!14285 0))(
  ( (ElementMatch!14285 (c!881793 C!28836)) (Concat!23130 (regOne!29082 Regex!14285) (regTwo!29082 Regex!14285)) (EmptyExpr!14285) (Star!14285 (reg!14614 Regex!14285)) (EmptyLang!14285) (Union!14285 (regOne!29083 Regex!14285) (regTwo!29083 Regex!14285)) )
))
(declare-datatypes ((List!59506 0))(
  ( (Nil!59382) (Cons!59382 (h!65830 Regex!14285) (t!372533 List!59506)) )
))
(declare-datatypes ((Context!7338 0))(
  ( (Context!7339 (exprs!4169 List!59506)) )
))
(declare-fun lt!2114977 () Context!7338)

(declare-fun lt!2114976 () Regex!14285)

(declare-fun contains!19609 (List!59506 Regex!14285) Bool)

(assert (=> b!5127990 (= res!2183308 (not (contains!19609 (exprs!4169 lt!2114977) lt!2114976)))))

(declare-fun getWitness!692 (List!59506 Int) Regex!14285)

(assert (=> b!5127990 (= lt!2114976 (getWitness!692 (exprs!4169 lt!2114977) lambda!252317))))

(declare-fun setNonEmpty!30812 () Bool)

(declare-fun tp!1430664 () Bool)

(declare-fun setElem!30812 () Context!7338)

(declare-fun e!3198076 () Bool)

(declare-fun setRes!30812 () Bool)

(declare-fun inv!78893 (Context!7338) Bool)

(assert (=> setNonEmpty!30812 (= setRes!30812 (and tp!1430664 (inv!78893 setElem!30812) e!3198076))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1113 () (InoxSet Context!7338))

(declare-fun setRest!30812 () (InoxSet Context!7338))

(assert (=> setNonEmpty!30812 (= z!1113 ((_ map or) (store ((as const (Array Context!7338 Bool)) false) setElem!30812 true) setRest!30812))))

(declare-fun b!5127991 () Bool)

(declare-fun forall!13676 (List!59506 Int) Bool)

(assert (=> b!5127991 (= e!3198078 (forall!13676 (exprs!4169 lt!2114977) lambda!252316))))

(declare-fun b!5127992 () Bool)

(declare-fun tp!1430665 () Bool)

(assert (=> b!5127992 (= e!3198076 tp!1430665)))

(declare-fun res!2183305 () Bool)

(assert (=> b!5127993 (=> res!2183305 e!3198077)))

(assert (=> b!5127993 (= res!2183305 (not (forall!13676 (exprs!4169 lt!2114977) lambda!252316)))))

(declare-fun b!5127994 () Bool)

(declare-fun res!2183300 () Bool)

(assert (=> b!5127994 (=> res!2183300 e!3198078)))

(declare-fun lostCause!1220 (Regex!14285) Bool)

(assert (=> b!5127994 (= res!2183300 (not (lostCause!1220 lt!2114976)))))

(declare-fun setIsEmpty!30812 () Bool)

(assert (=> setIsEmpty!30812 setRes!30812))

(declare-fun b!5127995 () Bool)

(declare-fun res!2183302 () Bool)

(declare-fun e!3198079 () Bool)

(assert (=> b!5127995 (=> (not res!2183302) (not e!3198079))))

(declare-fun lambda!252314 () Int)

(declare-fun exists!1534 ((InoxSet Context!7338) Int) Bool)

(assert (=> b!5127995 (= res!2183302 (exists!1534 z!1113 lambda!252314))))

(declare-fun b!5127996 () Bool)

(declare-fun res!2183306 () Bool)

(assert (=> b!5127996 (=> res!2183306 e!3198077)))

(declare-fun lostCause!1221 (Context!7338) Bool)

(assert (=> b!5127996 (= res!2183306 (not (lostCause!1221 lt!2114977)))))

(declare-fun res!2183307 () Bool)

(assert (=> start!541642 (=> (not res!2183307) (not e!3198079))))

(declare-fun nullableZipper!1070 ((InoxSet Context!7338)) Bool)

(assert (=> start!541642 (= res!2183307 (nullableZipper!1070 z!1113))))

(assert (=> start!541642 e!3198079))

(declare-fun condSetEmpty!30812 () Bool)

(assert (=> start!541642 (= condSetEmpty!30812 (= z!1113 ((as const (Array Context!7338 Bool)) false)))))

(assert (=> start!541642 setRes!30812))

(declare-fun e!3198075 () Bool)

(assert (=> b!5127997 (= e!3198075 (not e!3198077))))

(declare-fun res!2183301 () Bool)

(assert (=> b!5127997 (=> res!2183301 e!3198077)))

(assert (=> b!5127997 (= res!2183301 (not (select z!1113 lt!2114977)))))

(assert (=> b!5127997 (forall!13676 (exprs!4169 lt!2114977) lambda!252315)))

(declare-datatypes ((Unit!150577 0))(
  ( (Unit!150578) )
))
(declare-fun lt!2114978 () Unit!150577)

(declare-fun lemmaContextForallValidExprs!4 (Context!7338 List!59506) Unit!150577)

(assert (=> b!5127997 (= lt!2114978 (lemmaContextForallValidExprs!4 lt!2114977 (exprs!4169 lt!2114977)))))

(declare-fun b!5127998 () Bool)

(assert (=> b!5127998 (= e!3198079 e!3198075)))

(declare-fun res!2183304 () Bool)

(assert (=> b!5127998 (=> (not res!2183304) (not e!3198075))))

(declare-fun nullableContext!6 (Context!7338) Bool)

(assert (=> b!5127998 (= res!2183304 (nullableContext!6 lt!2114977))))

(declare-fun getWitness!693 ((InoxSet Context!7338) Int) Context!7338)

(assert (=> b!5127998 (= lt!2114977 (getWitness!693 z!1113 lambda!252314))))

(declare-fun res!2183303 () Bool)

(assert (=> b!5127999 (=> res!2183303 e!3198077)))

(declare-fun exists!1535 (List!59506 Int) Bool)

(assert (=> b!5127999 (= res!2183303 (not (exists!1535 (exprs!4169 lt!2114977) lambda!252317)))))

(assert (= (and start!541642 res!2183307) b!5127995))

(assert (= (and b!5127995 res!2183302) b!5127998))

(assert (= (and b!5127998 res!2183304) b!5127997))

(assert (= (and b!5127997 (not res!2183301)) b!5127993))

(assert (= (and b!5127993 (not res!2183305)) b!5127996))

(assert (= (and b!5127996 (not res!2183306)) b!5127999))

(assert (= (and b!5127999 (not res!2183303)) b!5127990))

(assert (= (and b!5127990 (not res!2183308)) b!5127994))

(assert (= (and b!5127994 (not res!2183300)) b!5127991))

(assert (= (and start!541642 condSetEmpty!30812) setIsEmpty!30812))

(assert (= (and start!541642 (not condSetEmpty!30812)) setNonEmpty!30812))

(assert (= setNonEmpty!30812 b!5127992))

(declare-fun m!6192174 () Bool)

(assert (=> setNonEmpty!30812 m!6192174))

(declare-fun m!6192176 () Bool)

(assert (=> b!5127995 m!6192176))

(declare-fun m!6192178 () Bool)

(assert (=> b!5127994 m!6192178))

(declare-fun m!6192180 () Bool)

(assert (=> b!5127991 m!6192180))

(declare-fun m!6192182 () Bool)

(assert (=> b!5127996 m!6192182))

(declare-fun m!6192184 () Bool)

(assert (=> b!5127990 m!6192184))

(declare-fun m!6192186 () Bool)

(assert (=> b!5127990 m!6192186))

(declare-fun m!6192188 () Bool)

(assert (=> b!5127999 m!6192188))

(declare-fun m!6192190 () Bool)

(assert (=> b!5127997 m!6192190))

(declare-fun m!6192192 () Bool)

(assert (=> b!5127997 m!6192192))

(declare-fun m!6192194 () Bool)

(assert (=> b!5127997 m!6192194))

(assert (=> b!5127993 m!6192180))

(declare-fun m!6192196 () Bool)

(assert (=> start!541642 m!6192196))

(declare-fun m!6192198 () Bool)

(assert (=> b!5127998 m!6192198))

(declare-fun m!6192200 () Bool)

(assert (=> b!5127998 m!6192200))

(check-sat (not b!5127999) (not b!5127993) (not b!5127990) (not setNonEmpty!30812) (not b!5127997) (not start!541642) (not b!5127996) (not b!5127992) (not b!5127998) (not b!5127994) (not b!5127995) (not b!5127991))
(check-sat)
