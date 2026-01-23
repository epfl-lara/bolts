; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!541646 () Bool)

(assert start!541646)

(declare-fun bs!1194658 () Bool)

(declare-fun b!5128058 () Bool)

(declare-fun b!5128052 () Bool)

(assert (= bs!1194658 (and b!5128058 b!5128052)))

(declare-fun lambda!252356 () Int)

(declare-fun lambda!252355 () Int)

(assert (=> bs!1194658 (not (= lambda!252356 lambda!252355))))

(declare-fun bs!1194659 () Bool)

(declare-fun b!5128059 () Bool)

(assert (= bs!1194659 (and b!5128059 b!5128052)))

(declare-fun lambda!252357 () Int)

(assert (=> bs!1194659 (not (= lambda!252357 lambda!252355))))

(declare-fun bs!1194660 () Bool)

(assert (= bs!1194660 (and b!5128059 b!5128058)))

(assert (=> bs!1194660 (not (= lambda!252357 lambda!252356))))

(declare-fun setRes!30818 () Bool)

(declare-fun e!3198105 () Bool)

(declare-fun tp!1430677 () Bool)

(declare-datatypes ((C!28840 0))(
  ( (C!28841 (val!24072 Int)) )
))
(declare-datatypes ((Regex!14287 0))(
  ( (ElementMatch!14287 (c!881803 C!28840)) (Concat!23132 (regOne!29086 Regex!14287) (regTwo!29086 Regex!14287)) (EmptyExpr!14287) (Star!14287 (reg!14616 Regex!14287)) (EmptyLang!14287) (Union!14287 (regOne!29087 Regex!14287) (regTwo!29087 Regex!14287)) )
))
(declare-datatypes ((List!59508 0))(
  ( (Nil!59384) (Cons!59384 (h!65832 Regex!14287) (t!372535 List!59508)) )
))
(declare-datatypes ((Context!7342 0))(
  ( (Context!7343 (exprs!4171 List!59508)) )
))
(declare-fun setElem!30818 () Context!7342)

(declare-fun setNonEmpty!30818 () Bool)

(declare-fun inv!78898 (Context!7342) Bool)

(assert (=> setNonEmpty!30818 (= setRes!30818 (and tp!1430677 (inv!78898 setElem!30818) e!3198105))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1113 () (InoxSet Context!7342))

(declare-fun setRest!30818 () (InoxSet Context!7342))

(assert (=> setNonEmpty!30818 (= z!1113 ((_ map or) (store ((as const (Array Context!7342 Bool)) false) setElem!30818 true) setRest!30818))))

(declare-fun b!5128050 () Bool)

(declare-fun e!3198107 () Bool)

(declare-fun e!3198106 () Bool)

(assert (=> b!5128050 (= e!3198107 e!3198106)))

(declare-fun res!2183360 () Bool)

(assert (=> b!5128050 (=> (not res!2183360) (not e!3198106))))

(declare-fun lt!2115002 () Context!7342)

(declare-fun nullableContext!8 (Context!7342) Bool)

(assert (=> b!5128050 (= res!2183360 (nullableContext!8 lt!2115002))))

(declare-fun lambda!252354 () Int)

(declare-fun getWitness!696 ((InoxSet Context!7342) Int) Context!7342)

(assert (=> b!5128050 (= lt!2115002 (getWitness!696 z!1113 lambda!252354))))

(declare-fun b!5128051 () Bool)

(declare-fun res!2183354 () Bool)

(assert (=> b!5128051 (=> (not res!2183354) (not e!3198107))))

(declare-fun exists!1538 ((InoxSet Context!7342) Int) Bool)

(assert (=> b!5128051 (= res!2183354 (exists!1538 z!1113 lambda!252354))))

(declare-fun res!2183362 () Bool)

(assert (=> start!541646 (=> (not res!2183362) (not e!3198107))))

(declare-fun nullableZipper!1072 ((InoxSet Context!7342)) Bool)

(assert (=> start!541646 (= res!2183362 (nullableZipper!1072 z!1113))))

(assert (=> start!541646 e!3198107))

(declare-fun condSetEmpty!30818 () Bool)

(assert (=> start!541646 (= condSetEmpty!30818 (= z!1113 ((as const (Array Context!7342 Bool)) false)))))

(assert (=> start!541646 setRes!30818))

(declare-fun e!3198108 () Bool)

(assert (=> b!5128052 (= e!3198106 (not e!3198108))))

(declare-fun res!2183357 () Bool)

(assert (=> b!5128052 (=> res!2183357 e!3198108)))

(assert (=> b!5128052 (= res!2183357 (not (select z!1113 lt!2115002)))))

(declare-fun forall!13678 (List!59508 Int) Bool)

(assert (=> b!5128052 (forall!13678 (exprs!4171 lt!2115002) lambda!252355)))

(declare-datatypes ((Unit!150581 0))(
  ( (Unit!150582) )
))
(declare-fun lt!2114999 () Unit!150581)

(declare-fun lemmaContextForallValidExprs!6 (Context!7342 List!59508) Unit!150581)

(assert (=> b!5128052 (= lt!2114999 (lemmaContextForallValidExprs!6 lt!2115002 (exprs!4171 lt!2115002)))))

(declare-fun b!5128053 () Bool)

(declare-fun e!3198109 () Bool)

(assert (=> b!5128053 (= e!3198108 e!3198109)))

(declare-fun res!2183356 () Bool)

(assert (=> b!5128053 (=> res!2183356 e!3198109)))

(declare-fun lt!2115000 () Regex!14287)

(declare-fun contains!19611 (List!59508 Regex!14287) Bool)

(assert (=> b!5128053 (= res!2183356 (not (contains!19611 (exprs!4171 lt!2115002) lt!2115000)))))

(declare-fun getWitness!697 (List!59508 Int) Regex!14287)

(assert (=> b!5128053 (= lt!2115000 (getWitness!697 (exprs!4171 lt!2115002) lambda!252357))))

(declare-fun setIsEmpty!30818 () Bool)

(assert (=> setIsEmpty!30818 setRes!30818))

(declare-fun b!5128054 () Bool)

(declare-fun res!2183355 () Bool)

(assert (=> b!5128054 (=> res!2183355 e!3198109)))

(declare-fun lostCause!1224 (Regex!14287) Bool)

(assert (=> b!5128054 (= res!2183355 (not (lostCause!1224 lt!2115000)))))

(declare-fun b!5128055 () Bool)

(assert (=> b!5128055 (= e!3198109 (forall!13678 (exprs!4171 lt!2115002) lambda!252355))))

(declare-fun lt!2115001 () Unit!150581)

(declare-fun forallContained!4589 (List!59508 Int Regex!14287) Unit!150581)

(assert (=> b!5128055 (= lt!2115001 (forallContained!4589 (exprs!4171 lt!2115002) lambda!252356 lt!2115000))))

(declare-fun b!5128056 () Bool)

(declare-fun res!2183361 () Bool)

(assert (=> b!5128056 (=> res!2183361 e!3198108)))

(declare-fun lostCause!1225 (Context!7342) Bool)

(assert (=> b!5128056 (= res!2183361 (not (lostCause!1225 lt!2115002)))))

(declare-fun b!5128057 () Bool)

(declare-fun tp!1430676 () Bool)

(assert (=> b!5128057 (= e!3198105 tp!1430676)))

(declare-fun res!2183359 () Bool)

(assert (=> b!5128058 (=> res!2183359 e!3198108)))

(assert (=> b!5128058 (= res!2183359 (not (forall!13678 (exprs!4171 lt!2115002) lambda!252356)))))

(declare-fun res!2183358 () Bool)

(assert (=> b!5128059 (=> res!2183358 e!3198108)))

(declare-fun exists!1539 (List!59508 Int) Bool)

(assert (=> b!5128059 (= res!2183358 (not (exists!1539 (exprs!4171 lt!2115002) lambda!252357)))))

(assert (= (and start!541646 res!2183362) b!5128051))

(assert (= (and b!5128051 res!2183354) b!5128050))

(assert (= (and b!5128050 res!2183360) b!5128052))

(assert (= (and b!5128052 (not res!2183357)) b!5128058))

(assert (= (and b!5128058 (not res!2183359)) b!5128056))

(assert (= (and b!5128056 (not res!2183361)) b!5128059))

(assert (= (and b!5128059 (not res!2183358)) b!5128053))

(assert (= (and b!5128053 (not res!2183356)) b!5128054))

(assert (= (and b!5128054 (not res!2183355)) b!5128055))

(assert (= (and start!541646 condSetEmpty!30818) setIsEmpty!30818))

(assert (= (and start!541646 (not condSetEmpty!30818)) setNonEmpty!30818))

(assert (= setNonEmpty!30818 b!5128057))

(declare-fun m!6192232 () Bool)

(assert (=> b!5128053 m!6192232))

(declare-fun m!6192234 () Bool)

(assert (=> b!5128053 m!6192234))

(declare-fun m!6192236 () Bool)

(assert (=> setNonEmpty!30818 m!6192236))

(declare-fun m!6192238 () Bool)

(assert (=> b!5128059 m!6192238))

(declare-fun m!6192240 () Bool)

(assert (=> b!5128055 m!6192240))

(declare-fun m!6192242 () Bool)

(assert (=> b!5128055 m!6192242))

(declare-fun m!6192244 () Bool)

(assert (=> start!541646 m!6192244))

(declare-fun m!6192246 () Bool)

(assert (=> b!5128051 m!6192246))

(declare-fun m!6192248 () Bool)

(assert (=> b!5128054 m!6192248))

(declare-fun m!6192250 () Bool)

(assert (=> b!5128050 m!6192250))

(declare-fun m!6192252 () Bool)

(assert (=> b!5128050 m!6192252))

(declare-fun m!6192254 () Bool)

(assert (=> b!5128058 m!6192254))

(declare-fun m!6192256 () Bool)

(assert (=> b!5128052 m!6192256))

(assert (=> b!5128052 m!6192240))

(declare-fun m!6192258 () Bool)

(assert (=> b!5128052 m!6192258))

(declare-fun m!6192260 () Bool)

(assert (=> b!5128056 m!6192260))

(check-sat (not b!5128053) (not b!5128051) (not b!5128057) (not b!5128052) (not b!5128058) (not b!5128054) (not start!541646) (not b!5128055) (not b!5128056) (not b!5128050) (not b!5128059) (not setNonEmpty!30818))
(check-sat)
