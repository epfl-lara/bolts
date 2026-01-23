; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!695520 () Bool)

(assert start!695520)

(declare-fun b!7137318 () Bool)

(declare-fun e!4289446 () Bool)

(declare-fun tp!1967942 () Bool)

(declare-fun tp!1967940 () Bool)

(assert (=> b!7137318 (= e!4289446 (and tp!1967942 tp!1967940))))

(declare-fun b!7137319 () Bool)

(declare-fun res!2912247 () Bool)

(declare-fun e!4289443 () Bool)

(assert (=> b!7137319 (=> res!2912247 e!4289443)))

(declare-datatypes ((C!36540 0))(
  ( (C!36541 (val!28218 Int)) )
))
(declare-datatypes ((Regex!18133 0))(
  ( (ElementMatch!18133 (c!1331014 C!36540)) (Concat!26978 (regOne!36778 Regex!18133) (regTwo!36778 Regex!18133)) (EmptyExpr!18133) (Star!18133 (reg!18462 Regex!18133)) (EmptyLang!18133) (Union!18133 (regOne!36779 Regex!18133) (regTwo!36779 Regex!18133)) )
))
(declare-datatypes ((List!69344 0))(
  ( (Nil!69220) (Cons!69220 (h!75668 Regex!18133) (t!383361 List!69344)) )
))
(declare-fun lt!2566169 () List!69344)

(declare-fun lambda!433877 () Int)

(declare-fun exists!3887 (List!69344 Int) Bool)

(assert (=> b!7137319 (= res!2912247 (exists!3887 lt!2566169 lambda!433877))))

(declare-fun setIsEmpty!52399 () Bool)

(declare-fun setRes!52399 () Bool)

(assert (=> setIsEmpty!52399 setRes!52399))

(declare-datatypes ((Context!14254 0))(
  ( (Context!14255 (exprs!7627 List!69344)) )
))
(declare-fun setElem!52399 () Context!14254)

(declare-fun setNonEmpty!52399 () Bool)

(declare-fun e!4289441 () Bool)

(declare-fun tp!1967941 () Bool)

(declare-fun inv!88396 (Context!14254) Bool)

(assert (=> setNonEmpty!52399 (= setRes!52399 (and tp!1967941 (inv!88396 setElem!52399) e!4289441))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!3189 () (InoxSet Context!14254))

(declare-fun setRest!52399 () (InoxSet Context!14254))

(assert (=> setNonEmpty!52399 (= z!3189 ((_ map or) (store ((as const (Array Context!14254 Bool)) false) setElem!52399 true) setRest!52399))))

(declare-fun b!7137320 () Bool)

(declare-fun e!4289445 () Bool)

(declare-fun e!4289444 () Bool)

(assert (=> b!7137320 (= e!4289445 e!4289444)))

(declare-fun res!2912251 () Bool)

(assert (=> b!7137320 (=> (not res!2912251) (not e!4289444))))

(declare-fun r!11483 () Regex!18133)

(declare-datatypes ((List!69345 0))(
  ( (Nil!69221) (Cons!69221 (h!75669 Context!14254) (t!383362 List!69345)) )
))
(declare-fun lt!2566172 () List!69345)

(declare-fun unfocusZipper!2481 (List!69345) Regex!18133)

(assert (=> b!7137320 (= res!2912251 (= r!11483 (unfocusZipper!2481 lt!2566172)))))

(declare-fun toList!11164 ((InoxSet Context!14254)) List!69345)

(assert (=> b!7137320 (= lt!2566172 (toList!11164 z!3189))))

(declare-fun b!7137321 () Bool)

(declare-fun e!4289442 () Bool)

(assert (=> b!7137321 (= e!4289442 (not e!4289443))))

(declare-fun res!2912249 () Bool)

(assert (=> b!7137321 (=> res!2912249 e!4289443)))

(declare-fun lt!2566170 () Bool)

(assert (=> b!7137321 (= res!2912249 (not (= lt!2566170 (exists!3887 lt!2566169 lambda!433877))))))

(assert (=> b!7137321 (= lt!2566170 (exists!3887 lt!2566169 lambda!433877))))

(declare-fun lt!2566171 () Regex!18133)

(declare-fun nullable!7653 (Regex!18133) Bool)

(assert (=> b!7137321 (= lt!2566170 (nullable!7653 lt!2566171))))

(declare-datatypes ((Unit!163125 0))(
  ( (Unit!163126) )
))
(declare-fun lt!2566168 () Unit!163125)

(declare-fun nullableGenUnionSpec!22 (Regex!18133 List!69344) Unit!163125)

(assert (=> b!7137321 (= lt!2566168 (nullableGenUnionSpec!22 lt!2566171 lt!2566169))))

(declare-fun b!7137322 () Bool)

(declare-fun lambda!433878 () Int)

(declare-fun exists!3888 ((InoxSet Context!14254) Int) Bool)

(assert (=> b!7137322 (= e!4289443 (exists!3888 z!3189 lambda!433878))))

(declare-fun b!7137324 () Bool)

(declare-fun tp!1967944 () Bool)

(assert (=> b!7137324 (= e!4289441 tp!1967944)))

(declare-fun b!7137325 () Bool)

(declare-fun res!2912250 () Bool)

(assert (=> b!7137325 (=> res!2912250 e!4289443)))

(assert (=> b!7137325 (= res!2912250 lt!2566170)))

(declare-fun b!7137326 () Bool)

(declare-fun tp!1967943 () Bool)

(declare-fun tp!1967939 () Bool)

(assert (=> b!7137326 (= e!4289446 (and tp!1967943 tp!1967939))))

(declare-fun b!7137327 () Bool)

(declare-fun tp!1967945 () Bool)

(assert (=> b!7137327 (= e!4289446 tp!1967945)))

(declare-fun b!7137328 () Bool)

(declare-fun tp_is_empty!45903 () Bool)

(assert (=> b!7137328 (= e!4289446 tp_is_empty!45903)))

(declare-fun b!7137329 () Bool)

(assert (=> b!7137329 (= e!4289444 e!4289442)))

(declare-fun res!2912246 () Bool)

(assert (=> b!7137329 (=> (not res!2912246) (not e!4289442))))

(assert (=> b!7137329 (= res!2912246 (= r!11483 lt!2566171))))

(declare-fun generalisedUnion!2638 (List!69344) Regex!18133)

(assert (=> b!7137329 (= lt!2566171 (generalisedUnion!2638 lt!2566169))))

(declare-fun unfocusZipperList!2174 (List!69345) List!69344)

(assert (=> b!7137329 (= lt!2566169 (unfocusZipperList!2174 lt!2566172))))

(declare-fun res!2912248 () Bool)

(assert (=> start!695520 (=> (not res!2912248) (not e!4289445))))

(declare-fun validRegex!9300 (Regex!18133) Bool)

(assert (=> start!695520 (= res!2912248 (validRegex!9300 r!11483))))

(assert (=> start!695520 e!4289445))

(assert (=> start!695520 e!4289446))

(declare-fun condSetEmpty!52399 () Bool)

(assert (=> start!695520 (= condSetEmpty!52399 (= z!3189 ((as const (Array Context!14254 Bool)) false)))))

(assert (=> start!695520 setRes!52399))

(declare-fun b!7137323 () Bool)

(declare-fun res!2912245 () Bool)

(assert (=> b!7137323 (=> res!2912245 e!4289443)))

(assert (=> b!7137323 (= res!2912245 (not (exists!3888 z!3189 lambda!433878)))))

(assert (= (and start!695520 res!2912248) b!7137320))

(assert (= (and b!7137320 res!2912251) b!7137329))

(assert (= (and b!7137329 res!2912246) b!7137321))

(assert (= (and b!7137321 (not res!2912249)) b!7137325))

(assert (= (and b!7137325 (not res!2912250)) b!7137319))

(assert (= (and b!7137319 (not res!2912247)) b!7137323))

(assert (= (and b!7137323 (not res!2912245)) b!7137322))

(get-info :version)

(assert (= (and start!695520 ((_ is ElementMatch!18133) r!11483)) b!7137328))

(assert (= (and start!695520 ((_ is Concat!26978) r!11483)) b!7137326))

(assert (= (and start!695520 ((_ is Star!18133) r!11483)) b!7137327))

(assert (= (and start!695520 ((_ is Union!18133) r!11483)) b!7137318))

(assert (= (and start!695520 condSetEmpty!52399) setIsEmpty!52399))

(assert (= (and start!695520 (not condSetEmpty!52399)) setNonEmpty!52399))

(assert (= setNonEmpty!52399 b!7137324))

(declare-fun m!7853146 () Bool)

(assert (=> start!695520 m!7853146))

(declare-fun m!7853148 () Bool)

(assert (=> b!7137321 m!7853148))

(assert (=> b!7137321 m!7853148))

(declare-fun m!7853150 () Bool)

(assert (=> b!7137321 m!7853150))

(declare-fun m!7853152 () Bool)

(assert (=> b!7137321 m!7853152))

(assert (=> b!7137319 m!7853148))

(declare-fun m!7853154 () Bool)

(assert (=> b!7137320 m!7853154))

(declare-fun m!7853156 () Bool)

(assert (=> b!7137320 m!7853156))

(declare-fun m!7853158 () Bool)

(assert (=> b!7137322 m!7853158))

(declare-fun m!7853160 () Bool)

(assert (=> b!7137329 m!7853160))

(declare-fun m!7853162 () Bool)

(assert (=> b!7137329 m!7853162))

(declare-fun m!7853164 () Bool)

(assert (=> setNonEmpty!52399 m!7853164))

(assert (=> b!7137323 m!7853158))

(check-sat (not b!7137324) (not b!7137327) (not start!695520) (not b!7137320) (not b!7137321) (not b!7137318) (not b!7137329) (not b!7137319) (not b!7137322) (not b!7137323) (not setNonEmpty!52399) (not b!7137326) tp_is_empty!45903)
(check-sat)
