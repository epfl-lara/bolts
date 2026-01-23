; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!541638 () Bool)

(assert start!541638)

(declare-fun bs!1194642 () Bool)

(declare-fun b!5127939 () Bool)

(declare-fun b!5127936 () Bool)

(assert (= bs!1194642 (and b!5127939 b!5127936)))

(declare-fun lambda!252280 () Int)

(declare-fun lambda!252279 () Int)

(assert (=> bs!1194642 (not (= lambda!252280 lambda!252279))))

(declare-fun bs!1194643 () Bool)

(declare-fun b!5127935 () Bool)

(assert (= bs!1194643 (and b!5127935 b!5127936)))

(declare-fun lambda!252281 () Int)

(assert (=> bs!1194643 (not (= lambda!252281 lambda!252279))))

(declare-fun bs!1194644 () Bool)

(assert (= bs!1194644 (and b!5127935 b!5127939)))

(assert (=> bs!1194644 (not (= lambda!252281 lambda!252280))))

(declare-fun b!5127932 () Bool)

(declare-fun e!3198048 () Bool)

(declare-datatypes ((C!28832 0))(
  ( (C!28833 (val!24068 Int)) )
))
(declare-datatypes ((Regex!14283 0))(
  ( (ElementMatch!14283 (c!881783 C!28832)) (Concat!23128 (regOne!29078 Regex!14283) (regTwo!29078 Regex!14283)) (EmptyExpr!14283) (Star!14283 (reg!14612 Regex!14283)) (EmptyLang!14283) (Union!14283 (regOne!29079 Regex!14283) (regTwo!29079 Regex!14283)) )
))
(declare-datatypes ((List!59504 0))(
  ( (Nil!59380) (Cons!59380 (h!65828 Regex!14283) (t!372531 List!59504)) )
))
(declare-datatypes ((Context!7334 0))(
  ( (Context!7335 (exprs!4167 List!59504)) )
))
(declare-fun lt!2114959 () Context!7334)

(declare-fun exists!1530 (List!59504 Int) Bool)

(assert (=> b!5127932 (= e!3198048 (exists!1530 (exprs!4167 lt!2114959) lambda!252281))))

(declare-fun b!5127933 () Bool)

(declare-fun e!3198046 () Bool)

(declare-fun tp!1430652 () Bool)

(assert (=> b!5127933 (= e!3198046 tp!1430652)))

(declare-fun b!5127934 () Bool)

(declare-fun e!3198047 () Bool)

(declare-fun e!3198049 () Bool)

(assert (=> b!5127934 (= e!3198047 e!3198049)))

(declare-fun res!2183252 () Bool)

(assert (=> b!5127934 (=> (not res!2183252) (not e!3198049))))

(declare-fun nullableContext!4 (Context!7334) Bool)

(assert (=> b!5127934 (= res!2183252 (nullableContext!4 lt!2114959))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1113 () (InoxSet Context!7334))

(declare-fun lambda!252278 () Int)

(declare-fun getWitness!689 ((InoxSet Context!7334) Int) Context!7334)

(assert (=> b!5127934 (= lt!2114959 (getWitness!689 z!1113 lambda!252278))))

(declare-fun setElem!30806 () Context!7334)

(declare-fun setNonEmpty!30806 () Bool)

(declare-fun tp!1430653 () Bool)

(declare-fun setRes!30806 () Bool)

(declare-fun inv!78888 (Context!7334) Bool)

(assert (=> setNonEmpty!30806 (= setRes!30806 (and tp!1430653 (inv!78888 setElem!30806) e!3198046))))

(declare-fun setRest!30806 () (InoxSet Context!7334))

(assert (=> setNonEmpty!30806 (= z!1113 ((_ map or) (store ((as const (Array Context!7334 Bool)) false) setElem!30806 true) setRest!30806))))

(declare-fun res!2183249 () Bool)

(assert (=> b!5127935 (=> res!2183249 e!3198048)))

(assert (=> b!5127935 (= res!2183249 (not (exists!1530 (exprs!4167 lt!2114959) lambda!252281)))))

(assert (=> b!5127936 (= e!3198049 (not e!3198048))))

(declare-fun res!2183251 () Bool)

(assert (=> b!5127936 (=> res!2183251 e!3198048)))

(assert (=> b!5127936 (= res!2183251 (not (select z!1113 lt!2114959)))))

(declare-fun forall!13674 (List!59504 Int) Bool)

(assert (=> b!5127936 (forall!13674 (exprs!4167 lt!2114959) lambda!252279)))

(declare-datatypes ((Unit!150573 0))(
  ( (Unit!150574) )
))
(declare-fun lt!2114960 () Unit!150573)

(declare-fun lemmaContextForallValidExprs!2 (Context!7334 List!59504) Unit!150573)

(assert (=> b!5127936 (= lt!2114960 (lemmaContextForallValidExprs!2 lt!2114959 (exprs!4167 lt!2114959)))))

(declare-fun setIsEmpty!30806 () Bool)

(assert (=> setIsEmpty!30806 setRes!30806))

(declare-fun res!2183254 () Bool)

(assert (=> start!541638 (=> (not res!2183254) (not e!3198047))))

(declare-fun nullableZipper!1068 ((InoxSet Context!7334)) Bool)

(assert (=> start!541638 (= res!2183254 (nullableZipper!1068 z!1113))))

(assert (=> start!541638 e!3198047))

(declare-fun condSetEmpty!30806 () Bool)

(assert (=> start!541638 (= condSetEmpty!30806 (= z!1113 ((as const (Array Context!7334 Bool)) false)))))

(assert (=> start!541638 setRes!30806))

(declare-fun b!5127937 () Bool)

(declare-fun res!2183253 () Bool)

(assert (=> b!5127937 (=> (not res!2183253) (not e!3198047))))

(declare-fun exists!1531 ((InoxSet Context!7334) Int) Bool)

(assert (=> b!5127937 (= res!2183253 (exists!1531 z!1113 lambda!252278))))

(declare-fun b!5127938 () Bool)

(declare-fun res!2183248 () Bool)

(assert (=> b!5127938 (=> res!2183248 e!3198048)))

(declare-fun lostCause!1217 (Context!7334) Bool)

(assert (=> b!5127938 (= res!2183248 (not (lostCause!1217 lt!2114959)))))

(declare-fun res!2183250 () Bool)

(assert (=> b!5127939 (=> res!2183250 e!3198048)))

(assert (=> b!5127939 (= res!2183250 (not (forall!13674 (exprs!4167 lt!2114959) lambda!252280)))))

(assert (= (and start!541638 res!2183254) b!5127937))

(assert (= (and b!5127937 res!2183253) b!5127934))

(assert (= (and b!5127934 res!2183252) b!5127936))

(assert (= (and b!5127936 (not res!2183251)) b!5127939))

(assert (= (and b!5127939 (not res!2183250)) b!5127938))

(assert (= (and b!5127938 (not res!2183248)) b!5127935))

(assert (= (and b!5127935 (not res!2183249)) b!5127932))

(assert (= (and start!541638 condSetEmpty!30806) setIsEmpty!30806))

(assert (= (and start!541638 (not condSetEmpty!30806)) setNonEmpty!30806))

(assert (= setNonEmpty!30806 b!5127933))

(declare-fun m!6192124 () Bool)

(assert (=> b!5127936 m!6192124))

(declare-fun m!6192126 () Bool)

(assert (=> b!5127936 m!6192126))

(declare-fun m!6192128 () Bool)

(assert (=> b!5127936 m!6192128))

(declare-fun m!6192130 () Bool)

(assert (=> b!5127937 m!6192130))

(declare-fun m!6192132 () Bool)

(assert (=> b!5127938 m!6192132))

(declare-fun m!6192134 () Bool)

(assert (=> b!5127932 m!6192134))

(declare-fun m!6192136 () Bool)

(assert (=> start!541638 m!6192136))

(assert (=> b!5127935 m!6192134))

(declare-fun m!6192138 () Bool)

(assert (=> setNonEmpty!30806 m!6192138))

(declare-fun m!6192140 () Bool)

(assert (=> b!5127934 m!6192140))

(declare-fun m!6192142 () Bool)

(assert (=> b!5127934 m!6192142))

(declare-fun m!6192144 () Bool)

(assert (=> b!5127939 m!6192144))

(check-sat (not b!5127937) (not b!5127933) (not b!5127934) (not start!541638) (not b!5127938) (not setNonEmpty!30806) (not b!5127932) (not b!5127939) (not b!5127935) (not b!5127936))
(check-sat)
