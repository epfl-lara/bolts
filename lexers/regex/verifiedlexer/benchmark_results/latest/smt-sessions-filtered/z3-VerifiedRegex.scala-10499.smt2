; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!541650 () Bool)

(assert start!541650)

(declare-fun bs!1194666 () Bool)

(declare-fun b!5128114 () Bool)

(declare-fun b!5128115 () Bool)

(assert (= bs!1194666 (and b!5128114 b!5128115)))

(declare-fun lambda!252396 () Int)

(declare-fun lambda!252395 () Int)

(assert (=> bs!1194666 (not (= lambda!252396 lambda!252395))))

(declare-fun bs!1194667 () Bool)

(declare-fun b!5128117 () Bool)

(assert (= bs!1194667 (and b!5128117 b!5128115)))

(declare-fun lambda!252397 () Int)

(assert (=> bs!1194667 (not (= lambda!252397 lambda!252395))))

(declare-fun bs!1194668 () Bool)

(assert (= bs!1194668 (and b!5128117 b!5128114)))

(assert (=> bs!1194668 (not (= lambda!252397 lambda!252396))))

(declare-fun b!5128110 () Bool)

(declare-fun e!3198135 () Bool)

(declare-fun e!3198136 () Bool)

(assert (=> b!5128110 (= e!3198135 e!3198136)))

(declare-fun res!2183414 () Bool)

(assert (=> b!5128110 (=> (not res!2183414) (not e!3198136))))

(declare-datatypes ((C!28844 0))(
  ( (C!28845 (val!24074 Int)) )
))
(declare-datatypes ((Regex!14289 0))(
  ( (ElementMatch!14289 (c!881813 C!28844)) (Concat!23134 (regOne!29090 Regex!14289) (regTwo!29090 Regex!14289)) (EmptyExpr!14289) (Star!14289 (reg!14618 Regex!14289)) (EmptyLang!14289) (Union!14289 (regOne!29091 Regex!14289) (regTwo!29091 Regex!14289)) )
))
(declare-datatypes ((List!59510 0))(
  ( (Nil!59386) (Cons!59386 (h!65834 Regex!14289) (t!372537 List!59510)) )
))
(declare-datatypes ((Context!7346 0))(
  ( (Context!7347 (exprs!4173 List!59510)) )
))
(declare-fun lt!2115031 () Context!7346)

(declare-fun nullableContext!10 (Context!7346) Bool)

(assert (=> b!5128110 (= res!2183414 (nullableContext!10 lt!2115031))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1113 () (InoxSet Context!7346))

(declare-fun lambda!252394 () Int)

(declare-fun getWitness!700 ((InoxSet Context!7346) Int) Context!7346)

(assert (=> b!5128110 (= lt!2115031 (getWitness!700 z!1113 lambda!252394))))

(declare-fun b!5128111 () Bool)

(declare-fun res!2183408 () Bool)

(declare-fun e!3198138 () Bool)

(assert (=> b!5128111 (=> res!2183408 e!3198138)))

(declare-fun lt!2115032 () Regex!14289)

(declare-fun lostCause!1228 (Regex!14289) Bool)

(assert (=> b!5128111 (= res!2183408 (not (lostCause!1228 lt!2115032)))))

(declare-fun b!5128112 () Bool)

(declare-fun res!2183416 () Bool)

(assert (=> b!5128112 (=> (not res!2183416) (not e!3198135))))

(declare-fun exists!1542 ((InoxSet Context!7346) Int) Bool)

(assert (=> b!5128112 (= res!2183416 (exists!1542 z!1113 lambda!252394))))

(declare-fun res!2183415 () Bool)

(assert (=> start!541650 (=> (not res!2183415) (not e!3198135))))

(declare-fun nullableZipper!1074 ((InoxSet Context!7346)) Bool)

(assert (=> start!541650 (= res!2183415 (nullableZipper!1074 z!1113))))

(assert (=> start!541650 e!3198135))

(declare-fun condSetEmpty!30824 () Bool)

(assert (=> start!541650 (= condSetEmpty!30824 (= z!1113 ((as const (Array Context!7346 Bool)) false)))))

(declare-fun setRes!30824 () Bool)

(assert (=> start!541650 setRes!30824))

(declare-fun b!5128113 () Bool)

(assert (=> b!5128113 (= e!3198138 true)))

(declare-datatypes ((Unit!150585 0))(
  ( (Unit!150586) )
))
(declare-fun lt!2115030 () Unit!150585)

(declare-fun forallContained!4591 (List!59510 Int Regex!14289) Unit!150585)

(assert (=> b!5128113 (= lt!2115030 (forallContained!4591 (exprs!4173 lt!2115031) lambda!252395 lt!2115032))))

(declare-fun lt!2115029 () Unit!150585)

(assert (=> b!5128113 (= lt!2115029 (forallContained!4591 (exprs!4173 lt!2115031) lambda!252396 lt!2115032))))

(declare-fun e!3198137 () Bool)

(declare-fun setNonEmpty!30824 () Bool)

(declare-fun setElem!30824 () Context!7346)

(declare-fun tp!1430688 () Bool)

(declare-fun inv!78903 (Context!7346) Bool)

(assert (=> setNonEmpty!30824 (= setRes!30824 (and tp!1430688 (inv!78903 setElem!30824) e!3198137))))

(declare-fun setRest!30824 () (InoxSet Context!7346))

(assert (=> setNonEmpty!30824 (= z!1113 ((_ map or) (store ((as const (Array Context!7346 Bool)) false) setElem!30824 true) setRest!30824))))

(declare-fun res!2183411 () Bool)

(declare-fun e!3198139 () Bool)

(assert (=> b!5128114 (=> res!2183411 e!3198139)))

(declare-fun forall!13680 (List!59510 Int) Bool)

(assert (=> b!5128114 (= res!2183411 (not (forall!13680 (exprs!4173 lt!2115031) lambda!252396)))))

(declare-fun setIsEmpty!30824 () Bool)

(assert (=> setIsEmpty!30824 setRes!30824))

(assert (=> b!5128115 (= e!3198136 (not e!3198139))))

(declare-fun res!2183410 () Bool)

(assert (=> b!5128115 (=> res!2183410 e!3198139)))

(assert (=> b!5128115 (= res!2183410 (not (select z!1113 lt!2115031)))))

(assert (=> b!5128115 (forall!13680 (exprs!4173 lt!2115031) lambda!252395)))

(declare-fun lt!2115028 () Unit!150585)

(declare-fun lemmaContextForallValidExprs!8 (Context!7346 List!59510) Unit!150585)

(assert (=> b!5128115 (= lt!2115028 (lemmaContextForallValidExprs!8 lt!2115031 (exprs!4173 lt!2115031)))))

(declare-fun b!5128116 () Bool)

(assert (=> b!5128116 (= e!3198139 e!3198138)))

(declare-fun res!2183412 () Bool)

(assert (=> b!5128116 (=> res!2183412 e!3198138)))

(declare-fun contains!19613 (List!59510 Regex!14289) Bool)

(assert (=> b!5128116 (= res!2183412 (not (contains!19613 (exprs!4173 lt!2115031) lt!2115032)))))

(declare-fun getWitness!701 (List!59510 Int) Regex!14289)

(assert (=> b!5128116 (= lt!2115032 (getWitness!701 (exprs!4173 lt!2115031) lambda!252397))))

(declare-fun res!2183409 () Bool)

(assert (=> b!5128117 (=> res!2183409 e!3198139)))

(declare-fun exists!1543 (List!59510 Int) Bool)

(assert (=> b!5128117 (= res!2183409 (not (exists!1543 (exprs!4173 lt!2115031) lambda!252397)))))

(declare-fun b!5128118 () Bool)

(declare-fun res!2183413 () Bool)

(assert (=> b!5128118 (=> res!2183413 e!3198139)))

(declare-fun lostCause!1229 (Context!7346) Bool)

(assert (=> b!5128118 (= res!2183413 (not (lostCause!1229 lt!2115031)))))

(declare-fun b!5128119 () Bool)

(declare-fun tp!1430689 () Bool)

(assert (=> b!5128119 (= e!3198137 tp!1430689)))

(assert (= (and start!541650 res!2183415) b!5128112))

(assert (= (and b!5128112 res!2183416) b!5128110))

(assert (= (and b!5128110 res!2183414) b!5128115))

(assert (= (and b!5128115 (not res!2183410)) b!5128114))

(assert (= (and b!5128114 (not res!2183411)) b!5128118))

(assert (= (and b!5128118 (not res!2183413)) b!5128117))

(assert (= (and b!5128117 (not res!2183409)) b!5128116))

(assert (= (and b!5128116 (not res!2183412)) b!5128111))

(assert (= (and b!5128111 (not res!2183408)) b!5128113))

(assert (= (and start!541650 condSetEmpty!30824) setIsEmpty!30824))

(assert (= (and start!541650 (not condSetEmpty!30824)) setNonEmpty!30824))

(assert (= setNonEmpty!30824 b!5128119))

(declare-fun m!6192294 () Bool)

(assert (=> setNonEmpty!30824 m!6192294))

(declare-fun m!6192296 () Bool)

(assert (=> b!5128116 m!6192296))

(declare-fun m!6192298 () Bool)

(assert (=> b!5128116 m!6192298))

(declare-fun m!6192300 () Bool)

(assert (=> b!5128114 m!6192300))

(declare-fun m!6192302 () Bool)

(assert (=> b!5128112 m!6192302))

(declare-fun m!6192304 () Bool)

(assert (=> b!5128115 m!6192304))

(declare-fun m!6192306 () Bool)

(assert (=> b!5128115 m!6192306))

(declare-fun m!6192308 () Bool)

(assert (=> b!5128115 m!6192308))

(declare-fun m!6192310 () Bool)

(assert (=> b!5128113 m!6192310))

(declare-fun m!6192312 () Bool)

(assert (=> b!5128113 m!6192312))

(declare-fun m!6192314 () Bool)

(assert (=> b!5128118 m!6192314))

(declare-fun m!6192316 () Bool)

(assert (=> b!5128110 m!6192316))

(declare-fun m!6192318 () Bool)

(assert (=> b!5128110 m!6192318))

(declare-fun m!6192320 () Bool)

(assert (=> b!5128111 m!6192320))

(declare-fun m!6192322 () Bool)

(assert (=> start!541650 m!6192322))

(declare-fun m!6192324 () Bool)

(assert (=> b!5128117 m!6192324))

(check-sat (not b!5128112) (not b!5128113) (not b!5128116) (not b!5128115) (not b!5128117) (not b!5128110) (not b!5128114) (not start!541650) (not setNonEmpty!30824) (not b!5128118) (not b!5128119) (not b!5128111))
(check-sat)
